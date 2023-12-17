/**
* BSD 2-Clause License
*
* Copyright (c) 2022, Manas Kamal Choudhury
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

#include <stdint.h>
#include <_xeneva.h>
#include <stdio.h>
#include <sys\_keproc.h>
#include <sys\_kefile.h>
#include <sys\iocodes.h>
#include <chitralekha.h>
#include <widgets\base.h>
#include <widgets\button.h>
#include <keycode.h>
#include <widgets\window.h>
#include <widgets\msgbox.h>
#include <string.h>
#include <widgets\menubar.h>
#include <stdlib.h>

ChitralekhaApp *app;
ChWindow* mainWin;
ChWindow* win2;
jmp_buf jmp;


/*
 * WindowHandleMessage -- handles incoming deodhai messages
 * @param e -- PostBox event message structure
 */
void WindowHandleMessage(PostEvent *e) {
	switch (e->type) {
	/* handle mouse event from deodhai */
	case DEODHAI_REPLY_MOUSE_EVENT:{
									   int handle = e->dword4;
									   ChWindow* mouseWin = ChGetWindowByHandle(mainWin,handle);
									   ChWindowHandleMouse(mouseWin, e->dword, e->dword2, e->dword3);
									   memset(e, 0, sizeof(PostEvent));
									   break;
	}
		/* handle key events from deodhai */
	case DEODHAI_REPLY_KEY_EVENT:{
									 int code = e->dword;
									 char c = ChitralekhaKeyToASCII(code);
									 memset(e, 0, sizeof(PostEvent));
									 break;
	}
	case DEODHAI_REPLY_FOCUS_CHANGED:{
										 int focus_val = e->dword;
										 int handle = e->dword2;
										 ChWindow* focWin = ChGetWindowByHandle(mainWin, handle);
										 ChWindowHandleFocus(focWin, focus_val, handle);
										 memset(e, 0, sizeof(PostEvent));
										 break;
	}
	}
}

void ButtonClicked(ChWidget* wid, ChWindow* win) {
	ChMessageBox* mb = ChCreateMessageBox(mainWin, "Dimpismita", "I LOVE YOU DIMPISMITA++ !!", MSGBOX_TYPE_ONLYCLOSE, MSGBOX_ICON_SUCCESS);
	ChMessageBoxShow(mb);
}

/*
* main -- main entry
*/
int main(int argc, char* argv[]){
	app = ChitralekhaStartApp(argc, argv);
	mainWin = ChCreateWindow(app, WINDOW_FLAG_MOVABLE, "Files", 100, 100, 660, 
		400);

	ChWindowBroadcastIcon(app, "/file.bmp");
	win2 = NULL;

	ChButton* button = ChCreateButton(mainWin->info->width / 2 - 100 / 2, mainWin->info->height / 2 - 75/2, 100, 75, "Click Me !");
	ChWindowAddWidget(mainWin,(ChWidget*)button);
	button->base.ChActionHandler = ButtonClicked;

	ChMenubar* mb = ChCreateMenubar(mainWin);

	ChMenuButton *file = ChCreateMenubutton(mb, "File");
	ChMenubarAddButton(mb, file);
	ChMenuButton *edit = ChCreateMenubutton(mb, "Edit");
	ChMenubarAddButton(mb, edit);
	ChMenuButton *view = ChCreateMenubutton(mb, "View");
	ChMenubarAddButton(mb, view);
	ChMenuButton *help = ChCreateMenubutton(mb, "Help");
	ChMenubarAddButton(mb, help);
	ChWindowAddWidget(mainWin, (ChWidget*)mb);

	ChWindowPaint(mainWin);

	PostEvent e;
	memset(&e, 0, sizeof(PostEvent));

	/* needs to set jmp environment, if a subwindow
	 * get closed it will jump here for continuing
	 * the application
	 */
	setjmp(mainWin->jump);
	while (1) {
		int err = _KeFileIoControl(app->postboxfd, POSTBOX_GET_EVENT, &e);
		WindowHandleMessage(&e);
		if (err == POSTBOX_NO_EVENT)
			_KePauseThread();
	}
}