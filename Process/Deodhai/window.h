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

#ifndef __WINDOW_H__
#define __WINDOW_H__

#include <stdint.h>
#include "deodhai.h"

#define WINDOW_FLAG_MOVABLE (1<<0)
#define WINDOW_FLAG_STATIC  (1<<1)
#define WINDOW_FLAG_ALWAYS_ON_TOP  (1<<2)
#define WINDOW_FLAG_NON_RESIZABLE  (1<<3)

#pragma pack(push,1)
typedef struct _win_info_ {
	Rect rect[256];
	uint32_t rect_count;
	bool dirty;
	bool updateEntireWindow;
	int x;
	int y;
	uint32_t width;
	uint32_t height;
	bool alpha;
}WinSharedInfo;
#pragma pack(pop)

typedef struct _win_ {
	uint8_t flags;
	uint16_t ownerId;
	uint32_t* backBuffer;
	uint32_t* sharedInfo;
	uint16_t shWinKey;
	uint16_t backBufferKey;
	int dragX;
	int dragY;
	int resz_h;
	int resz_b;
	bool markForClose;
	char* title;
	_win_ * next;
	_win_ * prev;
}Window;


/*
* CreateWindow -- create a new window
* @param x -- X position of the window
* @param y -- Y position of the window
* @param w -- Width of the window
* @param h -- Height of the window
* @param flags -- Flags for thr window
* @param ownerId -- process owner id of the window
* @param title -- title of the window
*/
extern Window* CreateWindow(int x, int y, int w, int h, uint8_t flags, uint16_t ownerId, char* title);
#endif