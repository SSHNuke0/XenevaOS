; Listing generated by Microsoft (R) Optimizing Compiler Version 19.29.30154.0 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?firstBox@@3PEAU_postbox_@@EA			; firstBox
PUBLIC	?lastBox@@3PEAU_postbox_@@EA			; lastBox
PUBLIC	?_PostBoxRootCreated@@3_NA			; _PostBoxRootCreated
_BSS	SEGMENT
?firstBox@@3PEAU_postbox_@@EA DQ 01H DUP (?)		; firstBox
?lastBox@@3PEAU_postbox_@@EA DQ 01H DUP (?)		; lastBox
?_PostBoxRootCreated@@3_NA DB 01H DUP (?)		; _PostBoxRootCreated
_BSS	ENDS
msvcjmc	SEGMENT
__A4F36914_postbox@cpp DB 01H
msvcjmc	ENDS
PUBLIC	?AuIPCPostBoxInitialise@@YAXXZ			; AuIPCPostBoxInitialise
PUBLIC	?PostBoxPutEvent@@YAXPEAU_post_event_@@@Z	; PostBoxPutEvent
PUBLIC	?PostBoxGetEvent@@YAHPEAU_post_event_@@_NPEAU_au_thread_@@@Z ; PostBoxGetEvent
PUBLIC	?PostBoxCreate@@YAX_NG@Z			; PostBoxCreate
PUBLIC	?PostBoxDestroyByID@@YAXG@Z			; PostBoxDestroyByID
PUBLIC	?PostBoxAdvanceIndex@@YAXPEAU_postbox_@@@Z	; PostBoxAdvanceIndex
PUBLIC	?PostBoxRetreat@@YAXPEAU_postbox_@@@Z		; PostBoxRetreat
PUBLIC	?IsPostBoxEmpty@@YA_NPEAU_postbox_@@@Z		; IsPostBoxEmpty
PUBLIC	?IsPostBoxFull@@YA_NPEAU_postbox_@@@Z		; IsPostBoxFull
PUBLIC	?PostBoxDestroy@@YAXPEAU_postbox_@@@Z		; PostBoxDestroy
PUBLIC	?PostBoxIOControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z	; PostBoxIOControl
PUBLIC	__JustMyCode_Default
PUBLIC	??_C@_04PJHBAHNI@?1dev@				; `string'
PUBLIC	??_C@_07PPNFPEAB@postbox@			; `string'
EXTRN	AuGetCurrentThread:PROC
EXTRN	AuUnblockThread:PROC
EXTRN	AuThreadFindByID:PROC
EXTRN	AuThreadFindByIDBlockList:PROC
EXTRN	kmalloc:PROC
EXTRN	kfree:PROC
EXTRN	AuPmmngrAlloc:PROC
EXTRN	AuPmmngrFree:PROC
EXTRN	P2V:PROC
EXTRN	V2P:PROC
EXTRN	strcpy:PROC
EXTRN	memset:PROC
EXTRN	memcpy:PROC
EXTRN	AuVFSFind:PROC
EXTRN	AuDevFSAddFile:PROC
EXTRN	x64_cli:PROC
EXTRN	__CheckForDebuggerJustMyCode:PROC
EXTRN	__ImageBase:BYTE
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuIPCPostBoxInitialise@@YAXXZ DD imagerel $LN3
	DD	imagerel $LN3+175
	DD	imagerel $unwind$?AuIPCPostBoxInitialise@@YAXXZ
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?PostBoxPutEvent@@YAXPEAU_post_event_@@@Z DD imagerel $LN10
	DD	imagerel $LN10+227
	DD	imagerel $unwind$?PostBoxPutEvent@@YAXPEAU_post_event_@@@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?PostBoxGetEvent@@YAHPEAU_post_event_@@_NPEAU_au_thread_@@@Z DD imagerel $LN10
	DD	imagerel $LN10+251
	DD	imagerel $unwind$?PostBoxGetEvent@@YAHPEAU_post_event_@@_NPEAU_au_thread_@@@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?PostBoxCreate@@YAX_NG@Z DD imagerel $LN7
	DD	imagerel $LN7+303
	DD	imagerel $unwind$?PostBoxCreate@@YAX_NG@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?PostBoxDestroyByID@@YAXG@Z DD imagerel $LN8
	DD	imagerel $LN8+117
	DD	imagerel $unwind$?PostBoxDestroyByID@@YAXG@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?PostBoxAdvanceIndex@@YAXPEAU_postbox_@@@Z DD imagerel $LN6
	DD	imagerel $LN6+146
	DD	imagerel $unwind$?PostBoxAdvanceIndex@@YAXPEAU_postbox_@@@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?PostBoxRetreat@@YAXPEAU_postbox_@@@Z DD imagerel $LN3
	DD	imagerel $LN3+70
	DD	imagerel $unwind$?PostBoxRetreat@@YAXPEAU_postbox_@@@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?IsPostBoxEmpty@@YA_NPEAU_postbox_@@@Z DD imagerel $LN5
	DD	imagerel $LN5+81
	DD	imagerel $unwind$?IsPostBoxEmpty@@YA_NPEAU_postbox_@@@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?IsPostBoxFull@@YA_NPEAU_postbox_@@@Z DD imagerel $LN3
	DD	imagerel $LN3+41
	DD	imagerel $unwind$?IsPostBoxFull@@YA_NPEAU_postbox_@@@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?PostBoxDestroy@@YAXPEAU_postbox_@@@Z DD imagerel $LN8
	DD	imagerel $LN8+180
	DD	imagerel $unwind$?PostBoxDestroy@@YAXPEAU_postbox_@@@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?PostBoxIOControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z DD imagerel $LN13
	DD	imagerel $LN13+300
	DD	imagerel $unwind$?PostBoxIOControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z
pdata	ENDS
;	COMDAT ??_C@_07PPNFPEAB@postbox@
CONST	SEGMENT
??_C@_07PPNFPEAB@postbox@ DB 'postbox', 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_04PJHBAHNI@?1dev@
CONST	SEGMENT
??_C@_04PJHBAHNI@?1dev@ DB '/dev', 00H			; `string'
CONST	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?PostBoxIOControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z DD 025041b01H
	DD	0116231bH
	DD	0500f0012H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?PostBoxDestroy@@YAXPEAU_postbox_@@@Z DD 025030f01H
	DD	0b20a230fH
	DD	05006H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?IsPostBoxFull@@YA_NPEAU_postbox_@@@Z DD 025030f01H
	DD	0b20a230fH
	DD	05006H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?IsPostBoxEmpty@@YA_NPEAU_postbox_@@@Z DD 025030f01H
	DD	0d20a230fH
	DD	05006H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?PostBoxRetreat@@YAXPEAU_postbox_@@@Z DD 025030f01H
	DD	0b20a230fH
	DD	05006H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?PostBoxAdvanceIndex@@YAXPEAU_postbox_@@@Z DD 025030f01H
	DD	0d20a230fH
	DD	05006H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?PostBoxDestroyByID@@YAXG@Z DD 025030f01H
	DD	0d20a230fH
	DD	05006H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?PostBoxCreate@@YAX_NG@Z DD 025031301H
	DD	0d20e2313H
	DD	0500aH
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?PostBoxGetEvent@@YAHPEAU_post_event_@@_NPEAU_au_thread_@@@Z DD 025031801H
	DD	0d2132318H
	DD	0500fH
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?PostBoxPutEvent@@YAXPEAU_post_event_@@@Z DD 025031201H
	DD	0f20d2312H
	DD	05006H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuIPCPostBoxInitialise@@YAXXZ DD 025030b01H
	DD	0d206230bH
	DD	05002H
xdata	ENDS
; Function compile flags: /Odt
;	COMDAT __JustMyCode_Default
_TEXT	SEGMENT
__JustMyCode_Default PROC				; COMDAT
	ret	0
__JustMyCode_Default ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Ipc\postbox.cpp
;	COMDAT ?PostBoxIOControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z
_TEXT	SEGMENT
ret_code$ = 0
curr_thr$ = 8
event$1 = 16
e$2 = 24
e$3 = 32
tv66 = 104
file$ = 128
code$ = 136
arg$ = 144
?PostBoxIOControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z PROC	; PostBoxIOControl, COMDAT

; 212  : int PostBoxIOControl(AuVFSNode* file, int code, void* arg) {

$LN13:
	mov	QWORD PTR [rsp+24], r8
	mov	DWORD PTR [rsp+16], edx
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 144				; 00000090H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__A4F36914_postbox@cpp
	call	__CheckForDebuggerJustMyCode

; 213  : 	x64_cli();

	call	x64_cli

; 214  : 	int ret_code = 1;

	mov	DWORD PTR ret_code$[rbp], 1

; 215  : 	AuThread* curr_thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR curr_thr$[rbp], rax

; 216  : 	if (!curr_thr)

	cmp	QWORD PTR curr_thr$[rbp], 0
	jne	SHORT $LN4@PostBoxIOC

; 217  : 		return 0;

	xor	eax, eax
	jmp	$LN1@PostBoxIOC
$LN4@PostBoxIOC:

; 218  : 	switch (code) {

	mov	eax, DWORD PTR code$[rbp]
	mov	DWORD PTR tv66[rbp], eax
	mov	eax, DWORD PTR tv66[rbp]
	sub	eax, 401				; 00000191H
	mov	DWORD PTR tv66[rbp], eax
	cmp	DWORD PTR tv66[rbp], 5
	ja	$LN2@PostBoxIOC
	movsxd	rax, DWORD PTR tv66[rbp]
	lea	rcx, OFFSET FLAT:__ImageBase
	mov	eax, DWORD PTR $LN12@PostBoxIOC[rcx+rax*4]
	add	rax, rcx
	jmp	rax
$LN5@PostBoxIOC:

; 219  : 	case POSTBOX_CREATE: {
; 220  : 							
; 221  : 							 PostBoxCreate(false, curr_thr->id);

	mov	rax, QWORD PTR curr_thr$[rbp]
	movzx	edx, WORD PTR [rax+301]
	xor	ecx, ecx
	call	?PostBoxCreate@@YAX_NG@Z		; PostBoxCreate

; 222  : 							 break;

	jmp	SHORT $LN2@PostBoxIOC
$LN6@PostBoxIOC:

; 223  : 	}
; 224  : 	case POSTBOX_CREATE_ROOT: {
; 225  : 								  PostBoxCreate(true, curr_thr->id);

	mov	rax, QWORD PTR curr_thr$[rbp]
	movzx	edx, WORD PTR [rax+301]
	mov	cl, 1
	call	?PostBoxCreate@@YAX_NG@Z		; PostBoxCreate

; 226  : 								  break;

	jmp	SHORT $LN2@PostBoxIOC
$LN7@PostBoxIOC:

; 227  : 	}
; 228  : 	case POSTBOX_DESTROY: {
; 229  : 							  PostBoxDestroyByID(curr_thr->id);

	mov	rax, QWORD PTR curr_thr$[rbp]
	movzx	ecx, WORD PTR [rax+301]
	call	?PostBoxDestroyByID@@YAXG@Z		; PostBoxDestroyByID

; 230  : 							  break;

	jmp	SHORT $LN2@PostBoxIOC
$LN8@PostBoxIOC:

; 231  : 	}
; 232  : 	case POSTBOX_PUT_EVENT: {
; 233  : 								PostEvent* event = (PostEvent*)arg;

	mov	rax, QWORD PTR arg$[rbp]
	mov	QWORD PTR event$1[rbp], rax

; 234  : 								PostBoxPutEvent(event);

	mov	rcx, QWORD PTR event$1[rbp]
	call	?PostBoxPutEvent@@YAXPEAU_post_event_@@@Z ; PostBoxPutEvent

; 235  : 								break;

	jmp	SHORT $LN2@PostBoxIOC
$LN9@PostBoxIOC:

; 236  : 	}
; 237  : 
; 238  : 	case POSTBOX_GET_EVENT: {
; 239  : 								PostEvent* e = (PostEvent*)arg;

	mov	rax, QWORD PTR arg$[rbp]
	mov	QWORD PTR e$2[rbp], rax

; 240  : 								ret_code = PostBoxGetEvent(e, false, curr_thr);

	mov	r8, QWORD PTR curr_thr$[rbp]
	xor	edx, edx
	mov	rcx, QWORD PTR e$2[rbp]
	call	?PostBoxGetEvent@@YAHPEAU_post_event_@@_NPEAU_au_thread_@@@Z ; PostBoxGetEvent
	mov	DWORD PTR ret_code$[rbp], eax

; 241  : 								break;

	jmp	SHORT $LN2@PostBoxIOC
$LN10@PostBoxIOC:

; 242  : 	}
; 243  : 	case POSTBOX_GET_EVENT_ROOT: {
; 244  : 									 PostEvent* e = (PostEvent*)arg;

	mov	rax, QWORD PTR arg$[rbp]
	mov	QWORD PTR e$3[rbp], rax

; 245  : 									 ret_code = PostBoxGetEvent(e, true, curr_thr);

	mov	r8, QWORD PTR curr_thr$[rbp]
	mov	dl, 1
	mov	rcx, QWORD PTR e$3[rbp]
	call	?PostBoxGetEvent@@YAHPEAU_post_event_@@_NPEAU_au_thread_@@@Z ; PostBoxGetEvent
	mov	DWORD PTR ret_code$[rbp], eax
$LN2@PostBoxIOC:

; 246  : 									 break;
; 247  : 	}
; 248  : 	}
; 249  : 
; 250  : 	return ret_code;

	mov	eax, DWORD PTR ret_code$[rbp]
$LN1@PostBoxIOC:

; 251  : }

	lea	rsp, QWORD PTR [rbp+112]
	pop	rbp
	ret	0
$LN12@PostBoxIOC:
	DD	$LN5@PostBoxIOC
	DD	$LN7@PostBoxIOC
	DD	$LN8@PostBoxIOC
	DD	$LN9@PostBoxIOC
	DD	$LN6@PostBoxIOC
	DD	$LN10@PostBoxIOC
?PostBoxIOControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z ENDP	; PostBoxIOControl
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Ipc\postbox.cpp
;	COMDAT ?PostBoxDestroy@@YAXPEAU_postbox_@@@Z
_TEXT	SEGMENT
box$ = 80
?PostBoxDestroy@@YAXPEAU_postbox_@@@Z PROC		; PostBoxDestroy, COMDAT

; 111  : void PostBoxDestroy(PostBox* box) {

$LN8:
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 96					; 00000060H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__A4F36914_postbox@cpp
	call	__CheckForDebuggerJustMyCode

; 112  : 	if (firstBox == NULL)

	cmp	QWORD PTR ?firstBox@@3PEAU_postbox_@@EA, 0 ; firstBox
	jne	SHORT $LN2@PostBoxDes

; 113  : 		return;

	jmp	$LN1@PostBoxDes
$LN2@PostBoxDes:

; 114  : 
; 115  : 	if (box == firstBox)

	mov	rax, QWORD PTR ?firstBox@@3PEAU_postbox_@@EA ; firstBox
	cmp	QWORD PTR box$[rbp], rax
	jne	SHORT $LN3@PostBoxDes

; 116  : 		firstBox = firstBox->next;

	mov	rax, QWORD PTR ?firstBox@@3PEAU_postbox_@@EA ; firstBox
	mov	rax, QWORD PTR [rax+21]
	mov	QWORD PTR ?firstBox@@3PEAU_postbox_@@EA, rax ; firstBox
	jmp	SHORT $LN4@PostBoxDes
$LN3@PostBoxDes:

; 117  : 	else
; 118  : 		box->prev->next = box->next;

	mov	rax, QWORD PTR box$[rbp]
	mov	rax, QWORD PTR [rax+29]
	mov	rcx, QWORD PTR box$[rbp]
	mov	rcx, QWORD PTR [rcx+21]
	mov	QWORD PTR [rax+21], rcx
$LN4@PostBoxDes:

; 119  : 
; 120  : 	if (box == lastBox) {

	mov	rax, QWORD PTR ?lastBox@@3PEAU_postbox_@@EA ; lastBox
	cmp	QWORD PTR box$[rbp], rax
	jne	SHORT $LN5@PostBoxDes

; 121  : 		lastBox = box->prev;

	mov	rax, QWORD PTR box$[rbp]
	mov	rax, QWORD PTR [rax+29]
	mov	QWORD PTR ?lastBox@@3PEAU_postbox_@@EA, rax ; lastBox

; 122  : 	}

	jmp	SHORT $LN6@PostBoxDes
$LN5@PostBoxDes:

; 123  : 	else {
; 124  : 		box->next->prev = box->prev;

	mov	rax, QWORD PTR box$[rbp]
	mov	rax, QWORD PTR [rax+21]
	mov	rcx, QWORD PTR box$[rbp]
	mov	rcx, QWORD PTR [rcx+29]
	mov	QWORD PTR [rax+29], rcx
$LN6@PostBoxDes:

; 125  : 	}
; 126  : 
; 127  : 	AuPmmngrFree((void*)V2P((size_t)box->address));

	mov	rax, QWORD PTR box$[rbp]
	mov	rcx, QWORD PTR [rax]
	call	V2P
	mov	rcx, rax
	call	AuPmmngrFree

; 128  : 	kfree(box);

	mov	rcx, QWORD PTR box$[rbp]
	call	kfree
$LN1@PostBoxDes:

; 129  : }

	lea	rsp, QWORD PTR [rbp+64]
	pop	rbp
	ret	0
?PostBoxDestroy@@YAXPEAU_postbox_@@@Z ENDP		; PostBoxDestroy
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Ipc\postbox.cpp
;	COMDAT ?IsPostBoxFull@@YA_NPEAU_postbox_@@@Z
_TEXT	SEGMENT
box$ = 80
?IsPostBoxFull@@YA_NPEAU_postbox_@@@Z PROC		; IsPostBoxFull, COMDAT

; 69   : bool IsPostBoxFull(PostBox* box) {

$LN3:
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 96					; 00000060H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__A4F36914_postbox@cpp
	call	__CheckForDebuggerJustMyCode

; 70   : 	return box->full;

	mov	rax, QWORD PTR box$[rbp]
	movzx	eax, BYTE PTR [rax+18]

; 71   : }

	lea	rsp, QWORD PTR [rbp+64]
	pop	rbp
	ret	0
?IsPostBoxFull@@YA_NPEAU_postbox_@@@Z ENDP		; IsPostBoxFull
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Ipc\postbox.cpp
;	COMDAT ?IsPostBoxEmpty@@YA_NPEAU_postbox_@@@Z
_TEXT	SEGMENT
tv70 = 64
box$ = 96
?IsPostBoxEmpty@@YA_NPEAU_postbox_@@@Z PROC		; IsPostBoxEmpty, COMDAT

; 65   : bool IsPostBoxEmpty(PostBox* box) {

$LN5:
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__A4F36914_postbox@cpp
	call	__CheckForDebuggerJustMyCode

; 66   : 	return (!box->full && (box->headIdx == box->tailIdx));

	mov	rax, QWORD PTR box$[rbp]
	movzx	eax, BYTE PTR [rax+18]
	test	eax, eax
	jne	SHORT $LN3@IsPostBoxE
	mov	rax, QWORD PTR box$[rbp]
	mov	rcx, QWORD PTR box$[rbp]
	mov	ecx, DWORD PTR [rcx+14]
	cmp	DWORD PTR [rax+10], ecx
	jne	SHORT $LN3@IsPostBoxE
	mov	DWORD PTR tv70[rbp], 1
	jmp	SHORT $LN4@IsPostBoxE
$LN3@IsPostBoxE:
	mov	DWORD PTR tv70[rbp], 0
$LN4@IsPostBoxE:
	movzx	eax, BYTE PTR tv70[rbp]

; 67   : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
?IsPostBoxEmpty@@YA_NPEAU_postbox_@@@Z ENDP		; IsPostBoxEmpty
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Ipc\postbox.cpp
;	COMDAT ?PostBoxRetreat@@YAXPEAU_postbox_@@@Z
_TEXT	SEGMENT
box$ = 80
?PostBoxRetreat@@YAXPEAU_postbox_@@@Z PROC		; PostBoxRetreat, COMDAT

; 60   : void PostBoxRetreat(PostBox* box) {

$LN3:
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 96					; 00000060H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__A4F36914_postbox@cpp
	call	__CheckForDebuggerJustMyCode

; 61   : 	box->full = false;

	mov	rax, QWORD PTR box$[rbp]
	mov	BYTE PTR [rax+18], 0

; 62   : 	box->tailIdx = (box->tailIdx + 1) % box->size;

	mov	rax, QWORD PTR box$[rbp]
	mov	eax, DWORD PTR [rax+14]
	inc	eax
	mov	rcx, QWORD PTR box$[rbp]
	movzx	ecx, WORD PTR [rcx+19]
	cdq
	idiv	ecx
	mov	eax, edx
	mov	rcx, QWORD PTR box$[rbp]
	mov	DWORD PTR [rcx+14], eax

; 63   : }

	lea	rsp, QWORD PTR [rbp+64]
	pop	rbp
	ret	0
?PostBoxRetreat@@YAXPEAU_postbox_@@@Z ENDP		; PostBoxRetreat
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Ipc\postbox.cpp
;	COMDAT ?PostBoxAdvanceIndex@@YAXPEAU_postbox_@@@Z
_TEXT	SEGMENT
tv83 = 64
box$ = 96
?PostBoxAdvanceIndex@@YAXPEAU_postbox_@@@Z PROC		; PostBoxAdvanceIndex, COMDAT

; 52   : void PostBoxAdvanceIndex(PostBox* box) {

$LN6:
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__A4F36914_postbox@cpp
	call	__CheckForDebuggerJustMyCode

; 53   : 	if (box->full)

	mov	rax, QWORD PTR box$[rbp]
	movzx	eax, BYTE PTR [rax+18]
	test	eax, eax
	je	SHORT $LN2@PostBoxAdv

; 54   : 		box->tailIdx = (box->tailIdx + 1) % box->size;

	mov	rax, QWORD PTR box$[rbp]
	mov	eax, DWORD PTR [rax+14]
	inc	eax
	mov	rcx, QWORD PTR box$[rbp]
	movzx	ecx, WORD PTR [rcx+19]
	cdq
	idiv	ecx
	mov	eax, edx
	mov	rcx, QWORD PTR box$[rbp]
	mov	DWORD PTR [rcx+14], eax
$LN2@PostBoxAdv:

; 55   : 
; 56   : 	box->headIdx = (box->headIdx + 1) % box->size;

	mov	rax, QWORD PTR box$[rbp]
	mov	eax, DWORD PTR [rax+10]
	inc	eax
	mov	rcx, QWORD PTR box$[rbp]
	movzx	ecx, WORD PTR [rcx+19]
	cdq
	idiv	ecx
	mov	eax, edx
	mov	rcx, QWORD PTR box$[rbp]
	mov	DWORD PTR [rcx+10], eax

; 57   : 	box->full = (box->headIdx == box->tailIdx);

	mov	rax, QWORD PTR box$[rbp]
	mov	rcx, QWORD PTR box$[rbp]
	mov	ecx, DWORD PTR [rcx+14]
	cmp	DWORD PTR [rax+10], ecx
	jne	SHORT $LN4@PostBoxAdv
	mov	DWORD PTR tv83[rbp], 1
	jmp	SHORT $LN5@PostBoxAdv
$LN4@PostBoxAdv:
	mov	DWORD PTR tv83[rbp], 0
$LN5@PostBoxAdv:
	mov	rax, QWORD PTR box$[rbp]
	movzx	ecx, BYTE PTR tv83[rbp]
	mov	BYTE PTR [rax+18], cl

; 58   : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
?PostBoxAdvanceIndex@@YAXPEAU_postbox_@@@Z ENDP		; PostBoxAdvanceIndex
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Ipc\postbox.cpp
;	COMDAT ?PostBoxDestroyByID@@YAXG@Z
_TEXT	SEGMENT
destroyable$ = 0
box$1 = 8
id$ = 96
?PostBoxDestroyByID@@YAXG@Z PROC			; PostBoxDestroyByID, COMDAT

; 136  : void PostBoxDestroyByID(uint16_t id) {

$LN8:
	mov	WORD PTR [rsp+8], cx
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__A4F36914_postbox@cpp
	call	__CheckForDebuggerJustMyCode

; 137  : 	PostBox* destroyable = NULL;

	mov	QWORD PTR destroyable$[rbp], 0

; 138  : 	for (PostBox* box = firstBox; box != NULL; box = box->next) {

	mov	rax, QWORD PTR ?firstBox@@3PEAU_postbox_@@EA ; firstBox
	mov	QWORD PTR box$1[rbp], rax
	jmp	SHORT $LN4@PostBoxDes
$LN2@PostBoxDes:
	mov	rax, QWORD PTR box$1[rbp]
	mov	rax, QWORD PTR [rax+21]
	mov	QWORD PTR box$1[rbp], rax
$LN4@PostBoxDes:
	cmp	QWORD PTR box$1[rbp], 0
	je	SHORT $LN3@PostBoxDes

; 139  : 		if (box->ownerID == id){

	mov	rax, QWORD PTR box$1[rbp]
	movzx	eax, WORD PTR [rax+8]
	movzx	ecx, WORD PTR id$[rbp]
	cmp	eax, ecx
	jne	SHORT $LN5@PostBoxDes

; 140  : 			destroyable = box;

	mov	rax, QWORD PTR box$1[rbp]
	mov	QWORD PTR destroyable$[rbp], rax

; 141  : 			break;

	jmp	SHORT $LN3@PostBoxDes
$LN5@PostBoxDes:

; 142  : 		}
; 143  : 	}

	jmp	SHORT $LN2@PostBoxDes
$LN3@PostBoxDes:

; 144  : 
; 145  : 	if (destroyable)

	cmp	QWORD PTR destroyable$[rbp], 0
	je	SHORT $LN6@PostBoxDes

; 146  : 		PostBoxDestroy(destroyable);

	mov	rcx, QWORD PTR destroyable$[rbp]
	call	?PostBoxDestroy@@YAXPEAU_postbox_@@@Z	; PostBoxDestroy
$LN6@PostBoxDes:

; 147  : 	return;
; 148  : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
?PostBoxDestroyByID@@YAXG@Z ENDP			; PostBoxDestroyByID
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Ipc\postbox.cpp
;	COMDAT ?PostBoxCreate@@YAX_NG@Z
_TEXT	SEGMENT
box$ = 0
root$ = 96
tid$ = 104
?PostBoxCreate@@YAX_NG@Z PROC				; PostBoxCreate, COMDAT

; 78   : void PostBoxCreate(bool root, uint16_t tid) {

$LN7:
	mov	WORD PTR [rsp+16], dx
	mov	BYTE PTR [rsp+8], cl
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__A4F36914_postbox@cpp
	call	__CheckForDebuggerJustMyCode

; 79   : 	PostBox* box = (PostBox*)kmalloc(sizeof(PostBox));

	mov	ecx, 37					; 00000025H
	call	kmalloc
	mov	QWORD PTR box$[rbp], rax

; 80   : 	memset(box, 0, sizeof(PostBox));

	mov	r8d, 37					; 00000025H
	xor	edx, edx
	mov	rcx, QWORD PTR box$[rbp]
	call	memset

; 81   : 	box->address = (uint64_t*)P2V((size_t)AuPmmngrAlloc());

	call	AuPmmngrAlloc
	mov	rcx, rax
	call	P2V
	mov	rcx, QWORD PTR box$[rbp]
	mov	QWORD PTR [rcx], rax

; 82   : 	memset(box->address, 0, PAGE_SIZE);

	mov	r8d, 4096				; 00001000H
	xor	edx, edx
	mov	rax, QWORD PTR box$[rbp]
	mov	rcx, QWORD PTR [rax]
	call	memset

; 83   : 
; 84   : 	if (root &&  !_PostBoxRootCreated){

	movzx	eax, BYTE PTR root$[rbp]
	test	eax, eax
	je	SHORT $LN2@PostBoxCre
	movzx	eax, BYTE PTR ?_PostBoxRootCreated@@3_NA ; _PostBoxRootCreated
	test	eax, eax
	jne	SHORT $LN2@PostBoxCre

; 85   : 		box->ownerID = POSTBOX_ROOT_ID;

	mov	eax, 1
	mov	rcx, QWORD PTR box$[rbp]
	mov	WORD PTR [rcx+8], ax

; 86   : 		_PostBoxRootCreated = true;

	mov	BYTE PTR ?_PostBoxRootCreated@@3_NA, 1	; _PostBoxRootCreated

; 87   : 	}

	jmp	SHORT $LN3@PostBoxCre
$LN2@PostBoxCre:

; 88   : 	else {
; 89   : 		box->ownerID = tid;

	mov	rax, QWORD PTR box$[rbp]
	movzx	ecx, WORD PTR tid$[rbp]
	mov	WORD PTR [rax+8], cx
$LN3@PostBoxCre:

; 90   : 	}
; 91   : 
; 92   : 	box->next = NULL;

	mov	rax, QWORD PTR box$[rbp]
	mov	QWORD PTR [rax+21], 0

; 93   : 	box->prev = NULL;

	mov	rax, QWORD PTR box$[rbp]
	mov	QWORD PTR [rax+29], 0

; 94   : 	box->headIdx = 0;

	mov	rax, QWORD PTR box$[rbp]
	mov	DWORD PTR [rax+10], 0

; 95   : 	box->tailIdx = 0;

	mov	rax, QWORD PTR box$[rbp]
	mov	DWORD PTR [rax+14], 0

; 96   : 	box->full = false;

	mov	rax, QWORD PTR box$[rbp]
	mov	BYTE PTR [rax+18], 0

; 97   : 
; 98   : 	box->size = PAGE_SIZE / sizeof(PostEvent);

	mov	eax, 24
	mov	rcx, QWORD PTR box$[rbp]
	mov	WORD PTR [rcx+19], ax

; 99   : 
; 100  : 	if (firstBox == NULL) {

	cmp	QWORD PTR ?firstBox@@3PEAU_postbox_@@EA, 0 ; firstBox
	jne	SHORT $LN4@PostBoxCre

; 101  : 		firstBox = box;

	mov	rax, QWORD PTR box$[rbp]
	mov	QWORD PTR ?firstBox@@3PEAU_postbox_@@EA, rax ; firstBox

; 102  : 		lastBox = box;

	mov	rax, QWORD PTR box$[rbp]
	mov	QWORD PTR ?lastBox@@3PEAU_postbox_@@EA, rax ; lastBox

; 103  : 	}

	jmp	SHORT $LN5@PostBoxCre
$LN4@PostBoxCre:

; 104  : 	else{
; 105  : 		lastBox->next = box;

	mov	rax, QWORD PTR ?lastBox@@3PEAU_postbox_@@EA ; lastBox
	mov	rcx, QWORD PTR box$[rbp]
	mov	QWORD PTR [rax+21], rcx

; 106  : 		box->prev = lastBox;

	mov	rax, QWORD PTR box$[rbp]
	mov	rcx, QWORD PTR ?lastBox@@3PEAU_postbox_@@EA ; lastBox
	mov	QWORD PTR [rax+29], rcx

; 107  : 		lastBox = box;

	mov	rax, QWORD PTR box$[rbp]
	mov	QWORD PTR ?lastBox@@3PEAU_postbox_@@EA, rax ; lastBox
$LN5@PostBoxCre:

; 108  : 	}
; 109  : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
?PostBoxCreate@@YAX_NG@Z ENDP				; PostBoxCreate
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Ipc\postbox.cpp
;	COMDAT ?PostBoxGetEvent@@YAHPEAU_post_event_@@_NPEAU_au_thread_@@@Z
_TEXT	SEGMENT
ret_code$ = 0
owner_id$ = 4
box$1 = 8
event$ = 96
root$ = 104
curr_thread$ = 112
?PostBoxGetEvent@@YAHPEAU_post_event_@@_NPEAU_au_thread_@@@Z PROC ; PostBoxGetEvent, COMDAT

; 182  : int PostBoxGetEvent(PostEvent* event, bool root, AuThread* curr_thread) {

$LN10:
	mov	QWORD PTR [rsp+24], r8
	mov	BYTE PTR [rsp+16], dl
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__A4F36914_postbox@cpp
	call	__CheckForDebuggerJustMyCode

; 183  : 	int ret_code = POSTBOX_NO_EVENT;

	mov	DWORD PTR ret_code$[rbp], -1

; 184  : 	uint16_t owner_id = 0;

	xor	eax, eax
	mov	WORD PTR owner_id$[rbp], ax

; 185  : 	if (root)

	movzx	eax, BYTE PTR root$[rbp]
	test	eax, eax
	je	SHORT $LN5@PostBoxGet

; 186  : 		owner_id = POSTBOX_ROOT_ID;

	mov	eax, 1
	mov	WORD PTR owner_id$[rbp], ax
	jmp	SHORT $LN6@PostBoxGet
$LN5@PostBoxGet:

; 187  : 	else
; 188  : 		owner_id = curr_thread->id;

	mov	rax, QWORD PTR curr_thread$[rbp]
	movzx	eax, WORD PTR [rax+301]
	mov	WORD PTR owner_id$[rbp], ax
$LN6@PostBoxGet:

; 189  : 
; 190  : 	for (PostBox* box = firstBox; box != NULL; box = box->next) {

	mov	rax, QWORD PTR ?firstBox@@3PEAU_postbox_@@EA ; firstBox
	mov	QWORD PTR box$1[rbp], rax
	jmp	SHORT $LN4@PostBoxGet
$LN2@PostBoxGet:
	mov	rax, QWORD PTR box$1[rbp]
	mov	rax, QWORD PTR [rax+21]
	mov	QWORD PTR box$1[rbp], rax
$LN4@PostBoxGet:
	cmp	QWORD PTR box$1[rbp], 0
	je	SHORT $LN3@PostBoxGet

; 191  : 		if (box->ownerID == owner_id) {

	mov	rax, QWORD PTR box$1[rbp]
	movzx	eax, WORD PTR [rax+8]
	movzx	ecx, WORD PTR owner_id$[rbp]
	cmp	eax, ecx
	jne	SHORT $LN7@PostBoxGet

; 192  : 			if (!IsPostBoxEmpty(box)) {

	mov	rcx, QWORD PTR box$1[rbp]
	call	?IsPostBoxEmpty@@YA_NPEAU_postbox_@@@Z	; IsPostBoxEmpty
	movzx	eax, al
	test	eax, eax
	jne	SHORT $LN8@PostBoxGet

; 193  : 				memcpy(event, &box->address[box->tailIdx], sizeof(PostEvent));

	mov	rax, QWORD PTR box$1[rbp]
	movsxd	rax, DWORD PTR [rax+14]
	mov	rcx, QWORD PTR box$1[rbp]
	mov	rcx, QWORD PTR [rcx]
	lea	rax, QWORD PTR [rcx+rax*8]
	mov	r8d, 169				; 000000a9H
	mov	rdx, rax
	mov	rcx, QWORD PTR event$[rbp]
	call	memcpy

; 194  : 				memset(&box->address[box->tailIdx], 0, sizeof(PostEvent));

	mov	rax, QWORD PTR box$1[rbp]
	movsxd	rax, DWORD PTR [rax+14]
	mov	rcx, QWORD PTR box$1[rbp]
	mov	rcx, QWORD PTR [rcx]
	lea	rax, QWORD PTR [rcx+rax*8]
	mov	r8d, 169				; 000000a9H
	xor	edx, edx
	mov	rcx, rax
	call	memset

; 195  : 				PostBoxRetreat(box);

	mov	rcx, QWORD PTR box$1[rbp]
	call	?PostBoxRetreat@@YAXPEAU_postbox_@@@Z	; PostBoxRetreat

; 196  : 				ret_code = 1;

	mov	DWORD PTR ret_code$[rbp], 1
$LN8@PostBoxGet:

; 197  : 			}
; 198  : 			break;

	jmp	SHORT $LN3@PostBoxGet
$LN7@PostBoxGet:

; 199  : 		}
; 200  : 	}

	jmp	$LN2@PostBoxGet
$LN3@PostBoxGet:

; 201  : 
; 202  : 	return ret_code;

	mov	eax, DWORD PTR ret_code$[rbp]

; 203  : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
?PostBoxGetEvent@@YAHPEAU_post_event_@@_NPEAU_au_thread_@@@Z ENDP ; PostBoxGetEvent
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Ipc\postbox.cpp
;	COMDAT ?PostBoxPutEvent@@YAXPEAU_post_event_@@@Z
_TEXT	SEGMENT
owner_id$ = 0
box$1 = 8
thread$ = 16
event$ = 112
?PostBoxPutEvent@@YAXPEAU_post_event_@@@Z PROC		; PostBoxPutEvent, COMDAT

; 154  : void PostBoxPutEvent(PostEvent* event) {

$LN10:
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 128				; 00000080H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__A4F36914_postbox@cpp
	call	__CheckForDebuggerJustMyCode

; 155  : 	uint16_t owner_id = event->to_id;

	mov	rax, QWORD PTR event$[rbp]
	movzx	eax, WORD PTR [rax+1]
	mov	WORD PTR owner_id$[rbp], ax

; 156  : 	for (PostBox* box = firstBox; box != NULL; box = box->next) {

	mov	rax, QWORD PTR ?firstBox@@3PEAU_postbox_@@EA ; firstBox
	mov	QWORD PTR box$1[rbp], rax
	jmp	SHORT $LN4@PostBoxPut
$LN2@PostBoxPut:
	mov	rax, QWORD PTR box$1[rbp]
	mov	rax, QWORD PTR [rax+21]
	mov	QWORD PTR box$1[rbp], rax
$LN4@PostBoxPut:
	cmp	QWORD PTR box$1[rbp], 0
	je	SHORT $LN3@PostBoxPut

; 157  : 		if (box->ownerID == owner_id){

	mov	rax, QWORD PTR box$1[rbp]
	movzx	eax, WORD PTR [rax+8]
	movzx	ecx, WORD PTR owner_id$[rbp]
	cmp	eax, ecx
	jne	SHORT $LN5@PostBoxPut

; 158  : 			if (!IsPostBoxFull(box)) {

	mov	rcx, QWORD PTR box$1[rbp]
	call	?IsPostBoxFull@@YA_NPEAU_postbox_@@@Z	; IsPostBoxFull
	movzx	eax, al
	test	eax, eax
	jne	SHORT $LN6@PostBoxPut

; 159  : 				memcpy(&box->address[box->headIdx], event, sizeof(PostEvent));

	mov	rax, QWORD PTR box$1[rbp]
	movsxd	rax, DWORD PTR [rax+10]
	mov	rcx, QWORD PTR box$1[rbp]
	mov	rcx, QWORD PTR [rcx]
	lea	rax, QWORD PTR [rcx+rax*8]
	mov	r8d, 169				; 000000a9H
	mov	rdx, QWORD PTR event$[rbp]
	mov	rcx, rax
	call	memcpy

; 160  : 				PostBoxAdvanceIndex(box);

	mov	rcx, QWORD PTR box$1[rbp]
	call	?PostBoxAdvanceIndex@@YAXPEAU_postbox_@@@Z ; PostBoxAdvanceIndex
$LN6@PostBoxPut:

; 161  : 			}
; 162  : 			break;

	jmp	SHORT $LN3@PostBoxPut
$LN5@PostBoxPut:

; 163  : 		}
; 164  : 	}

	jmp	SHORT $LN2@PostBoxPut
$LN3@PostBoxPut:

; 165  : 
; 166  : 	AuThread* thread = AuThreadFindByID(owner_id);

	movzx	ecx, WORD PTR owner_id$[rbp]
	call	AuThreadFindByID
	mov	QWORD PTR thread$[rbp], rax

; 167  : 	if (!thread)

	cmp	QWORD PTR thread$[rbp], 0
	jne	SHORT $LN7@PostBoxPut

; 168  : 		thread = AuThreadFindByIDBlockList(owner_id);

	movzx	ecx, WORD PTR owner_id$[rbp]
	call	AuThreadFindByIDBlockList
	mov	QWORD PTR thread$[rbp], rax
$LN7@PostBoxPut:

; 169  : 	if (thread != NULL && thread->state == THREAD_STATE_BLOCKED)

	cmp	QWORD PTR thread$[rbp], 0
	je	SHORT $LN8@PostBoxPut
	mov	rax, QWORD PTR thread$[rbp]
	movzx	eax, BYTE PTR [rax+300]
	cmp	eax, 3
	jne	SHORT $LN8@PostBoxPut

; 170  : 		AuUnblockThread(thread);

	mov	rcx, QWORD PTR thread$[rbp]
	call	AuUnblockThread
$LN8@PostBoxPut:

; 171  : 
; 172  : 	return;
; 173  : }

	lea	rsp, QWORD PTR [rbp+96]
	pop	rbp
	ret	0
?PostBoxPutEvent@@YAXPEAU_post_event_@@@Z ENDP		; PostBoxPutEvent
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Ipc\postbox.cpp
;	COMDAT ?AuIPCPostBoxInitialise@@YAXXZ
_TEXT	SEGMENT
dev$ = 0
node$ = 8
?AuIPCPostBoxInitialise@@YAXXZ PROC			; AuIPCPostBoxInitialise, COMDAT

; 257  : void AuIPCPostBoxInitialise() {

$LN3:
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__A4F36914_postbox@cpp
	call	__CheckForDebuggerJustMyCode

; 258  : 	firstBox = NULL;

	mov	QWORD PTR ?firstBox@@3PEAU_postbox_@@EA, 0 ; firstBox

; 259  : 	lastBox = NULL;

	mov	QWORD PTR ?lastBox@@3PEAU_postbox_@@EA, 0 ; lastBox

; 260  : 	
; 261  : 	/* create the postbox file */
; 262  : 	AuVFSNode* dev = AuVFSFind("/dev");

	lea	rcx, OFFSET FLAT:??_C@_04PJHBAHNI@?1dev@
	call	AuVFSFind
	mov	QWORD PTR dev$[rbp], rax

; 263  : 	AuVFSNode* node = (AuVFSNode*)kmalloc(sizeof(AuVFSNode));

	mov	ecx, 178				; 000000b2H
	call	kmalloc
	mov	QWORD PTR node$[rbp], rax

; 264  : 	memset(node, 0, sizeof(AuVFSNode));

	mov	r8d, 178				; 000000b2H
	xor	edx, edx
	mov	rcx, QWORD PTR node$[rbp]
	call	memset

; 265  : 	strcpy(node->filename, "postbox");

	mov	rax, QWORD PTR node$[rbp]
	lea	rdx, OFFSET FLAT:??_C@_07PPNFPEAB@postbox@
	mov	rcx, rax
	call	strcpy

; 266  : 	node->flags = FS_FLAG_GENERAL | FS_FLAG_DEVICE;

	mov	eax, 12
	mov	rcx, QWORD PTR node$[rbp]
	mov	WORD PTR [rcx+61], ax

; 267  : 	node->iocontrol = PostBoxIOControl;

	mov	rax, QWORD PTR node$[rbp]
	lea	rcx, OFFSET FLAT:?PostBoxIOControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z ; PostBoxIOControl
	mov	QWORD PTR [rax+170], rcx

; 268  : 	AuDevFSAddFile(dev,"/dev",  node);

	mov	r8, QWORD PTR node$[rbp]
	lea	rdx, OFFSET FLAT:??_C@_04PJHBAHNI@?1dev@
	mov	rcx, QWORD PTR dev$[rbp]
	call	AuDevFSAddFile

; 269  : 
; 270  : 	_PostBoxRootCreated = false;

	mov	BYTE PTR ?_PostBoxRootCreated@@3_NA, 0	; _PostBoxRootCreated

; 271  : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
?AuIPCPostBoxInitialise@@YAXXZ ENDP			; AuIPCPostBoxInitialise
_TEXT	ENDS
END
