/**
* BSD 2-Clause License
*
* Copyright (c) 2022-2023, Manas Kamal Choudhury
* All rights reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions are met:
*
* 1. Redistributions of source code must retain the above copyright notice, this
*    list of conditions and the following disclaimer.
*
* 2. Redistributions in binary form must reproduce the above copyright notice,
*    this list of conditions and the following disclaimer in the documentation
*    and/or other materials provided with the distribution.
*
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
* AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
* IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
* DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
* FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
* DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
* SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
* CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
* OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
* OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*
**/

#include <_xeneva.h>
#include <sys\_keproc.h>
#include <sys\_kefile.h>
#include <sys\mman.h>
#include <stdlib.h>
#include <sys\iocodes.h>
#include <string.h>
#include <chitralekha.h>
#include <stdlib.h>
#include "deodhai.h"

Cursor *arrow;

Cursor* CursorOpen(char* path, uint8_t type) {
	Cursor* cur = (Cursor*)malloc(sizeof(Cursor));
	memset(cur, 0, sizeof(Cursor));
	cur->cursorBack = (uint32_t*)malloc(8192);

	int fd = _KeOpenFile(path, FILE_OPEN_READ_ONLY);
	XEFileStatus stat;
	_KeFileStat(fd, &stat);

	cur->fileBuffer = (uint8_t*)_KeMemMap(NULL, stat.size, 0, 0, 0, 0);
	cur->type = type;
	cur->cursorFD = fd;
	cur->cursorFileSize = stat.size;
	return cur;
}

/* CursorRead -- read the cursor file */
void CursorRead(Cursor* cur) {
	if (!cur)
		return;
	_KeReadFile(cur->cursorFD, cur->fileBuffer, cur->cursorFileSize);

	uint8_t* buffer = (uint8_t*)cur->fileBuffer;

	BMP* bmp = (BMP*)buffer;
	unsigned int offset = bmp->off_bits;

	BMPInfo* info = (BMPInfo*)(buffer + sizeof(BMP));
	int width = info->biWidth;
	int height = info->biHeight;
	int bpp = info->biBitCount;

	void* image_bytes = (void*)(buffer + offset);
	cur->imageData = (uint8_t*)image_bytes;
	cur->width = width;
	cur->height = height;
	cur->bpp = bpp;
}

/*
 * main -- deodhai compositor
 */
int main(int argc, char* arv[]) {
	_KePrint("Deodhai v1.0 running \n");
	ChPrintLibName();

	/* first of all get screen width and screen height */
	XEFileIOControl graphctl;
	memset(&graphctl, 0, sizeof(XEFileIOControl));
	graphctl.syscall_magic = AURORA_SYSCALL_MAGIC;

	
	int ret = 0;
	int screen_w = 0;
	int screen_h = 0;
	
	/* create a demo canvas just for getting the graphics
	 * file descriptor 
	 */
	ChCanvas* canv = ChCreateCanvas(100, 100);

	ret = _KeFileIoControl(canv->graphics_fd, SCREEN_GETWIDTH, &graphctl);
	screen_w = graphctl.uint_1;
	ret = _KeFileIoControl(canv->graphics_fd, SCREEN_GETHEIGHT, &graphctl);
	screen_h = graphctl.uint_1;

	/* now modify the canvas size with screen size */
	canv->canvasWidth = screen_w;
	canv->canvasHeight = screen_h;

	/* now allocate a back buffer with respected canvas size
	 * and fill it with light-black color */
	ChAllocateBuffer(canv);
	ChCanvasFill(canv, canv->canvasWidth, canv->canvasHeight, LIGHTBLACK);
	ChCanvasScreenUpdate(canv, 0, 0, canv->canvasWidth, canv->canvasHeight);

	/* just for impression, play the startup sound */
	int snd = _KeOpenFile("/dev/sound", FILE_OPEN_WRITE);
	XEFileIOControl ioctl;
	memset(&ioctl, 0, sizeof(XEFileIOControl));
	ioctl.uint_1 = 10;
	ioctl.syscall_magic = AURORA_SYSCALL_MAGIC;
	_KeFileIoControl(snd, SOUND_REGISTER_SNDPLR, &ioctl);
	
	int song = _KeOpenFile("/snd.wav", FILE_OPEN_READ_ONLY);
	void* songbuf = malloc(4096);
	memset(songbuf, 0, 4096);
	_KeReadFile(song, songbuf, 4096);
	XEFileStatus fs;
	_KeFileStat(song, &fs);

	bool sleepable = false;
	bool sound_finished = false;


	arrow = CursorOpen("/pointer.bmp", CURSOR_TYPE_POINTER);
	CursorRead(arrow);
	_KePrint("Cursor w -> %d, h -> %d \n", arrow->width, arrow->height);

	while (1) {

		if (!sound_finished) {
			_KeWriteFile(snd, songbuf, 4096);
			_KeReadFile(song, songbuf, 4096);
			_KeFileStat(song, &fs);
			if (fs.eof) {
				_KeCloseFile(song);
				sleepable = true;
				sound_finished = true;
			}
		}
		if (sleepable) {
			_KeProcessSleep(16);
		}
	}
}