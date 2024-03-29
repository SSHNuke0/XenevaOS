; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?_Registered_dev@@3PEAU_SoundDev_@@EA		; _Registered_dev
PUBLIC	?dsp_first@@3PEAU__au_dsp__@@EA			; dsp_first
PUBLIC	?dsp_last@@3PEAU__au_dsp__@@EA			; dsp_last
PUBLIC	?mixbuf@@3PEAEEA				; mixbuf
PUBLIC	?_audio_started_@@3_NA				; _audio_started_
PUBLIC	?_audio_stopped_@@3_NA				; _audio_stopped_
_BSS	SEGMENT
?_Registered_dev@@3PEAU_SoundDev_@@EA DQ 01H DUP (?)	; _Registered_dev
?dsp_first@@3PEAU__au_dsp__@@EA DQ 01H DUP (?)		; dsp_first
?dsp_last@@3PEAU__au_dsp__@@EA DQ 01H DUP (?)		; dsp_last
?mixbuf@@3PEAEEA DQ 01H DUP (?)				; mixbuf
?_audio_started_@@3_NA DB 01H DUP (?)			; _audio_started_
	ALIGN	4

?_audio_stopped_@@3_NA DB 01H DUP (?)			; _audio_stopped_
_BSS	ENDS
CONST	SEGMENT
$SG3994	DB	'/dev', 00H
	ORG $+3
$SG3999	DB	'sound', 00H
	ORG $+2
$SG4000	DB	'/', 00H
CONST	ENDS
PUBLIC	?AuSoundInitialise@@YAXXZ			; AuSoundInitialise
PUBLIC	AuSoundSetCard
PUBLIC	AuSoundGetBlock
PUBLIC	AuSoundRemoveDSP
PUBLIC	?AuSoundStart@@YAXXZ				; AuSoundStart
PUBLIC	?AuSoundStop@@YAXXZ				; AuSoundStop
PUBLIC	?AuSoundAddDSP@@YAXPEAU__au_dsp__@@@Z		; AuSoundAddDSP
PUBLIC	?AuRemoveDSP@@YAXPEAU__au_dsp__@@@Z		; AuRemoveDSP
PUBLIC	?AuSoundGetDSP@@YAPEAU__au_dsp__@@G@Z		; AuSoundGetDSP
PUBLIC	?AuSoundRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z	; AuSoundRead
PUBLIC	?AuSoundWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z	; AuSoundWrite
PUBLIC	?AuSoundIOControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z	; AuSoundIOControl
EXTRN	?AuCircBufInitialise@@YAPEAU_circ_buf_@@PEAE_K@Z:PROC ; AuCircBufInitialise
EXTRN	?AuCircBufFree@@YAXPEAU_circ_buf_@@@Z:PROC	; AuCircBufFree
EXTRN	?AuCircBufPut@@YAHPEAU_circ_buf_@@E@Z:PROC	; AuCircBufPut
EXTRN	?AuCircBufGet@@YAHPEAU_circ_buf_@@PEAE@Z:PROC	; AuCircBufGet
EXTRN	?CircBufFull@@YA_NPEAU_circ_buf_@@@Z:PROC	; CircBufFull
EXTRN	AuGetCurrentThread:PROC
EXTRN	AuBlockThread:PROC
EXTRN	AuUnblockThread:PROC
EXTRN	AuForceScheduler:PROC
EXTRN	kmalloc:PROC
EXTRN	kfree:PROC
EXTRN	AuPmmngrAlloc:PROC
EXTRN	AuPmmngrFree:PROC
EXTRN	P2V:PROC
EXTRN	V2P:PROC
EXTRN	AuVFSFind:PROC
EXTRN	AuDevFSAddFile:PROC
EXTRN	strcpy:PROC
EXTRN	memset:PROC
EXTRN	x64_cli:PROC
pdata	SEGMENT
$pdata$?AuSoundInitialise@@YAXXZ DD imagerel $LN3
	DD	imagerel $LN3+386
	DD	imagerel $unwind$?AuSoundInitialise@@YAXXZ
$pdata$AuSoundGetBlock DD imagerel $LN25
	DD	imagerel $LN25+488
	DD	imagerel $unwind$AuSoundGetBlock
$pdata$AuSoundRemoveDSP DD imagerel $LN4
	DD	imagerel $LN4+94
	DD	imagerel $unwind$AuSoundRemoveDSP
$pdata$?AuSoundStart@@YAXXZ DD imagerel $LN4
	DD	imagerel $LN4+31
	DD	imagerel $unwind$?AuSoundStart@@YAXXZ
$pdata$?AuSoundStop@@YAXXZ DD imagerel $LN4
	DD	imagerel $LN4+31
	DD	imagerel $unwind$?AuSoundStop@@YAXXZ
$pdata$?AuSoundGetDSP@@YAPEAU__au_dsp__@@G@Z DD imagerel $LN7
	DD	imagerel $LN7+73
	DD	imagerel $unwind$?AuSoundGetDSP@@YAPEAU__au_dsp__@@G@Z
$pdata$?AuSoundWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z DD imagerel $LN9
	DD	imagerel $LN9+220
	DD	imagerel $unwind$?AuSoundWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z
$pdata$?AuSoundIOControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z DD imagerel $LN12
	DD	imagerel $LN12+382
	DD	imagerel $unwind$?AuSoundIOControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?AuSoundInitialise@@YAXXZ DD 010401H
	DD	08204H
$unwind$AuSoundGetBlock DD 010901H
	DD	0c209H
$unwind$AuSoundRemoveDSP DD 010901H
	DD	06209H
$unwind$?AuSoundStart@@YAXXZ DD 010401H
	DD	04204H
$unwind$?AuSoundStop@@YAXXZ DD 010401H
	DD	04204H
$unwind$?AuSoundGetDSP@@YAPEAU__au_dsp__@@G@Z DD 010901H
	DD	02209H
$unwind$?AuSoundWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z DD 011801H
	DD	08218H
$unwind$?AuSoundIOControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z DD 011201H
	DD	0a212H
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\sound\sound.cpp
_TEXT	SEGMENT
tv67 = 32
dsp$1 = 40
_ioctl$ = 48
thr$ = 56
buffer$2 = 64
dsp_$3 = 72
node$ = 96
code$ = 104
arg$ = 112
?AuSoundIOControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z PROC	; AuSoundIOControl

; 222  : int AuSoundIOControl(AuVFSNode* node, int code, void* arg) {

$LN12:
	mov	QWORD PTR [rsp+24], r8
	mov	DWORD PTR [rsp+16], edx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 88					; 00000058H

; 223  : 	AuFileIOControl *_ioctl = (AuFileIOControl*)arg;

	mov	rax, QWORD PTR arg$[rsp]
	mov	QWORD PTR _ioctl$[rsp], rax

; 224  : 	if (_ioctl->syscall_magic != AURORA_SYSCALL_MAGIC)

	mov	rax, QWORD PTR _ioctl$[rsp]
	cmp	DWORD PTR [rax], 86056964		; 05212004H
	je	SHORT $LN9@AuSoundIOC

; 225  : 		return -1;

	mov	eax, -1
	jmp	$LN10@AuSoundIOC
$LN9@AuSoundIOC:

; 226  : 
; 227  : 	AuThread *thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR thr$[rsp], rax

; 228  : 	switch (code)

	mov	eax, DWORD PTR code$[rsp]
	mov	DWORD PTR tv67[rsp], eax
	cmp	DWORD PTR tv67[rsp], 100		; 00000064H
	je	SHORT $LN6@AuSoundIOC
	cmp	DWORD PTR tv67[rsp], 106		; 0000006aH
	je	$LN4@AuSoundIOC
	cmp	DWORD PTR tv67[rsp], 110		; 0000006eH
	je	$LN5@AuSoundIOC
	cmp	DWORD PTR tv67[rsp], 111		; 0000006fH
	je	$LN2@AuSoundIOC
	jmp	$LN1@AuSoundIOC
$LN6@AuSoundIOC:

; 229  : 	{
; 230  : 	case SOUND_REGISTER_SNDPLR: {
; 231  : 									
; 232  : 									AuDSP* dsp = (AuDSP*)kmalloc(sizeof(AuDSP));

	mov	ecx, 43					; 0000002bH
	call	kmalloc
	mov	QWORD PTR dsp$1[rsp], rax

; 233  : 									memset(dsp, 0, sizeof(AuDSP));

	mov	r8d, 43					; 0000002bH
	xor	edx, edx
	mov	rcx, QWORD PTR dsp$1[rsp]
	call	memset

; 234  : 									uint8_t* buffer = (uint8_t*)P2V((size_t)AuPmmngrAlloc());

	call	AuPmmngrAlloc
	mov	rcx, rax
	call	P2V
	mov	QWORD PTR buffer$2[rsp], rax

; 235  : 									memset(buffer, 0, PAGE_SIZE);

	mov	r8d, 4096				; 00001000H
	xor	edx, edx
	mov	rcx, QWORD PTR buffer$2[rsp]
	call	memset

; 236  : 									dsp->buffer = AuCircBufInitialise(buffer, SND_BUFF_SZ);

	mov	edx, 4096				; 00001000H
	mov	rcx, QWORD PTR buffer$2[rsp]
	call	?AuCircBufInitialise@@YAPEAU_circ_buf_@@PEAE_K@Z ; AuCircBufInitialise
	mov	rcx, QWORD PTR dsp$1[rsp]
	mov	QWORD PTR [rcx], rax

; 237  : 									dsp->_dsp_id = thr->id;

	mov	rax, QWORD PTR dsp$1[rsp]
	mov	rcx, QWORD PTR thr$[rsp]
	movzx	ecx, WORD PTR [rcx+301]
	mov	WORD PTR [rax+8], cx

; 238  : 									dsp->SndThread = thr;

	mov	rax, QWORD PTR dsp$1[rsp]
	mov	rcx, QWORD PTR thr$[rsp]
	mov	QWORD PTR [rax+10], rcx

; 239  : 									dsp->sleep_time = _ioctl->uint_1;

	mov	rax, QWORD PTR _ioctl$[rsp]
	mov	eax, DWORD PTR [rax+10]
	mov	rcx, QWORD PTR dsp$1[rsp]
	mov	QWORD PTR [rcx+18], rax

; 240  : 									dsp->available = true;

	mov	rax, QWORD PTR dsp$1[rsp]
	mov	BYTE PTR [rax+26], 1

; 241  : 									AuSoundAddDSP(dsp);

	mov	rcx, QWORD PTR dsp$1[rsp]
	call	?AuSoundAddDSP@@YAXPEAU__au_dsp__@@@Z	; AuSoundAddDSP

; 242  : 									break;

	jmp	SHORT $LN7@AuSoundIOC
$LN5@AuSoundIOC:

; 243  : 	}
; 244  : 	case SOUND_READ_AVAIL: {
; 245  : 							   AuDSP *dsp_ = AuSoundGetDSP(thr->id);

	mov	rax, QWORD PTR thr$[rsp]
	movzx	ecx, WORD PTR [rax+301]
	call	?AuSoundGetDSP@@YAPEAU__au_dsp__@@G@Z	; AuSoundGetDSP
	mov	QWORD PTR dsp_$3[rsp], rax

; 246  : 							   _ioctl->uchar_2 = dsp_->available;

	mov	rax, QWORD PTR _ioctl$[rsp]
	mov	rcx, QWORD PTR dsp_$3[rsp]
	movzx	ecx, BYTE PTR [rcx+26]
	mov	BYTE PTR [rax+5], cl

; 247  : 							   break;

	jmp	SHORT $LN7@AuSoundIOC
$LN4@AuSoundIOC:

; 248  : 
; 249  : 	}
; 250  : 	case SOUND_SET_VOLUME: {
; 251  : 							   if (!_Registered_dev)

	cmp	QWORD PTR ?_Registered_dev@@3PEAU_SoundDev_@@EA, 0 ; _Registered_dev
	jne	SHORT $LN3@AuSoundIOC

; 252  : 								   return -1;

	mov	eax, -1
	jmp	SHORT $LN10@AuSoundIOC
$LN3@AuSoundIOC:

; 253  : 							   _Registered_dev->set_vol(_ioctl->uchar_1);

	mov	rax, QWORD PTR _ioctl$[rsp]
	movzx	ecx, BYTE PTR [rax+4]
	mov	rax, QWORD PTR ?_Registered_dev@@3PEAU_SoundDev_@@EA ; _Registered_dev
	call	QWORD PTR [rax+64]

; 254  : 							   break;

	jmp	SHORT $LN7@AuSoundIOC
$LN2@AuSoundIOC:

; 255  : 	}
; 256  : 	case SOUND_UNREGISTER_SNDPLR:{
; 257  : 									 AuSoundRemoveDSP(thr->id);

	mov	rax, QWORD PTR thr$[rsp]
	movzx	ecx, WORD PTR [rax+301]
	call	AuSoundRemoveDSP
$LN1@AuSoundIOC:
$LN7@AuSoundIOC:

; 258  : 									 break;
; 259  : 
; 260  : 	}
; 261  : 	default:
; 262  : 		break;
; 263  : 	}
; 264  : 	return 0;

	xor	eax, eax
$LN10@AuSoundIOC:

; 265  : }

	add	rsp, 88					; 00000058H
	ret	0
?AuSoundIOControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z ENDP	; AuSoundIOControl
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\sound\sound.cpp
_TEXT	SEGMENT
i$1 = 32
dsp$ = 40
t$ = 48
aligned_buf$ = 56
fsys$ = 80
file$ = 88
buffer$ = 96
length$ = 104
?AuSoundWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z PROC	; AuSoundWrite

; 171  : size_t AuSoundWrite(AuVFSNode* fsys, AuVFSNode* file, uint64_t* buffer, uint32_t length) {

$LN9:
	mov	DWORD PTR [rsp+32], r9d
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 72					; 00000048H

; 172  : 	x64_cli();

	call	x64_cli

; 173  : 	if (!_Registered_dev)

	cmp	QWORD PTR ?_Registered_dev@@3PEAU_SoundDev_@@EA, 0 ; _Registered_dev
	jne	SHORT $LN6@AuSoundWri

; 174  : 		return 0;

	xor	eax, eax
	jmp	$LN7@AuSoundWri
$LN6@AuSoundWri:

; 175  : 	AuThread* t = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR t$[rsp], rax

; 176  : 	AuDSP* dsp = AuSoundGetDSP(t->id);

	mov	rax, QWORD PTR t$[rsp]
	movzx	ecx, WORD PTR [rax+301]
	call	?AuSoundGetDSP@@YAPEAU__au_dsp__@@G@Z	; AuSoundGetDSP
	mov	QWORD PTR dsp$[rsp], rax

; 177  : 	uint8_t *aligned_buf = (uint8_t*)buffer;

	mov	rax, QWORD PTR buffer$[rsp]
	mov	QWORD PTR aligned_buf$[rsp], rax

; 178  : 	
; 179  : 	if (CircBufFull(dsp->buffer)){

	mov	rax, QWORD PTR dsp$[rsp]
	mov	rcx, QWORD PTR [rax]
	call	?CircBufFull@@YA_NPEAU_circ_buf_@@@Z	; CircBufFull
	movzx	eax, al
	test	eax, eax
	je	SHORT $LN5@AuSoundWri

; 180  : 		if (dsp->SndThread->pendingSigCount > 0)

	mov	rax, QWORD PTR dsp$[rsp]
	mov	rax, QWORD PTR [rax+10]
	movzx	eax, BYTE PTR [rax+632]
	test	eax, eax
	jle	SHORT $LN4@AuSoundWri

; 181  : 			return 0;

	xor	eax, eax
	jmp	SHORT $LN7@AuSoundWri
$LN4@AuSoundWri:

; 182  : 		AuBlockThread(dsp->SndThread);

	mov	rax, QWORD PTR dsp$[rsp]
	mov	rcx, QWORD PTR [rax+10]
	call	AuBlockThread

; 183  : 		AuForceScheduler();	

	call	AuForceScheduler
$LN5@AuSoundWri:

; 184  : 	}
; 185  : 	for (int i = 0; i < SND_BUFF_SZ; i++) { //

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN3@AuSoundWri
$LN2@AuSoundWri:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN3@AuSoundWri:
	cmp	DWORD PTR i$1[rsp], 4096		; 00001000H
	jge	SHORT $LN1@AuSoundWri

; 186  : 		AuCircBufPut(dsp->buffer, aligned_buf[i]);

	movsxd	rax, DWORD PTR i$1[rsp]
	mov	rcx, QWORD PTR aligned_buf$[rsp]
	movzx	edx, BYTE PTR [rcx+rax]
	mov	rax, QWORD PTR dsp$[rsp]
	mov	rcx, QWORD PTR [rax]
	call	?AuCircBufPut@@YAHPEAU_circ_buf_@@E@Z	; AuCircBufPut

; 187  : 	}

	jmp	SHORT $LN2@AuSoundWri
$LN1@AuSoundWri:

; 188  : 
; 189  : 	return SND_BUFF_SZ;

	mov	eax, 4096				; 00001000H
$LN7@AuSoundWri:

; 190  : }

	add	rsp, 72					; 00000048H
	ret	0
?AuSoundWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z ENDP	; AuSoundWrite
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\sound\sound.cpp
_TEXT	SEGMENT
fsys$ = 8
file$ = 16
buffer$ = 24
length$ = 32
?AuSoundRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z PROC	; AuSoundRead

; 165  : size_t AuSoundRead(AuVFSNode* fsys, AuVFSNode* file, uint64_t* buffer, uint32_t length) {

	mov	DWORD PTR [rsp+32], r9d
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx

; 166  : 	if (_Registered_dev == NULL)

	cmp	QWORD PTR ?_Registered_dev@@3PEAU_SoundDev_@@EA, 0 ; _Registered_dev
	jne	SHORT $LN1@AuSoundRea

; 167  : 		return -1;

	mov	rax, -1
	jmp	SHORT $LN2@AuSoundRea
$LN1@AuSoundRea:

; 168  : 	return 0;

	xor	eax, eax
$LN2@AuSoundRea:

; 169  : }

	ret	0
?AuSoundRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z ENDP	; AuSoundRead
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\sound\sound.cpp
_TEXT	SEGMENT
dsp$1 = 0
id$ = 32
?AuSoundGetDSP@@YAPEAU__au_dsp__@@G@Z PROC		; AuSoundGetDSP

; 109  : AuDSP* AuSoundGetDSP(uint16_t id) {

$LN7:
	mov	WORD PTR [rsp+8], cx
	sub	rsp, 24

; 110  : 	for (AuDSP* dsp = dsp_first; dsp != NULL; dsp = dsp->next) {

	mov	rax, QWORD PTR ?dsp_first@@3PEAU__au_dsp__@@EA ; dsp_first
	mov	QWORD PTR dsp$1[rsp], rax
	jmp	SHORT $LN4@AuSoundGet
$LN3@AuSoundGet:
	mov	rax, QWORD PTR dsp$1[rsp]
	mov	rax, QWORD PTR [rax+27]
	mov	QWORD PTR dsp$1[rsp], rax
$LN4@AuSoundGet:
	cmp	QWORD PTR dsp$1[rsp], 0
	je	SHORT $LN2@AuSoundGet

; 111  : 		if (dsp->_dsp_id == id)

	mov	rax, QWORD PTR dsp$1[rsp]
	movzx	eax, WORD PTR [rax+8]
	movzx	ecx, WORD PTR id$[rsp]
	cmp	eax, ecx
	jne	SHORT $LN1@AuSoundGet

; 112  : 			return dsp;

	mov	rax, QWORD PTR dsp$1[rsp]
	jmp	SHORT $LN5@AuSoundGet
$LN1@AuSoundGet:

; 113  : 	}

	jmp	SHORT $LN3@AuSoundGet
$LN2@AuSoundGet:

; 114  : 
; 115  : 	return NULL;

	xor	eax, eax
$LN5@AuSoundGet:

; 116  : }

	add	rsp, 24
	ret	0
?AuSoundGetDSP@@YAPEAU__au_dsp__@@G@Z ENDP		; AuSoundGetDSP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\sound\sound.cpp
_TEXT	SEGMENT
dsp$ = 8
?AuRemoveDSP@@YAXPEAU__au_dsp__@@@Z PROC		; AuRemoveDSP

; 90   : void AuRemoveDSP(AuDSP *dsp) {

	mov	QWORD PTR [rsp+8], rcx

; 91   : 	if (dsp_first == NULL)

	cmp	QWORD PTR ?dsp_first@@3PEAU__au_dsp__@@EA, 0 ; dsp_first
	jne	SHORT $LN5@AuRemoveDS

; 92   : 		return;

	jmp	SHORT $LN6@AuRemoveDS
$LN5@AuRemoveDS:

; 93   : 
; 94   : 	if (dsp == dsp_first) {

	mov	rax, QWORD PTR ?dsp_first@@3PEAU__au_dsp__@@EA ; dsp_first
	cmp	QWORD PTR dsp$[rsp], rax
	jne	SHORT $LN4@AuRemoveDS

; 95   : 		dsp_first = dsp_first->next;

	mov	rax, QWORD PTR ?dsp_first@@3PEAU__au_dsp__@@EA ; dsp_first
	mov	rax, QWORD PTR [rax+27]
	mov	QWORD PTR ?dsp_first@@3PEAU__au_dsp__@@EA, rax ; dsp_first

; 96   : 	}
; 97   : 	else {

	jmp	SHORT $LN3@AuRemoveDS
$LN4@AuRemoveDS:

; 98   : 		dsp->prev->next = dsp->next;

	mov	rax, QWORD PTR dsp$[rsp]
	mov	rax, QWORD PTR [rax+35]
	mov	rcx, QWORD PTR dsp$[rsp]
	mov	rcx, QWORD PTR [rcx+27]
	mov	QWORD PTR [rax+27], rcx
$LN3@AuRemoveDS:

; 99   : 	}
; 100  : 
; 101  : 	if (dsp == dsp_last) {

	mov	rax, QWORD PTR ?dsp_last@@3PEAU__au_dsp__@@EA ; dsp_last
	cmp	QWORD PTR dsp$[rsp], rax
	jne	SHORT $LN2@AuRemoveDS

; 102  : 		dsp_last = dsp->prev;

	mov	rax, QWORD PTR dsp$[rsp]
	mov	rax, QWORD PTR [rax+35]
	mov	QWORD PTR ?dsp_last@@3PEAU__au_dsp__@@EA, rax ; dsp_last

; 103  : 	}
; 104  : 	else {

	jmp	SHORT $LN1@AuRemoveDS
$LN2@AuRemoveDS:

; 105  : 		dsp->next->prev = dsp->prev;

	mov	rax, QWORD PTR dsp$[rsp]
	mov	rax, QWORD PTR [rax+27]
	mov	rcx, QWORD PTR dsp$[rsp]
	mov	rcx, QWORD PTR [rcx+35]
	mov	QWORD PTR [rax+35], rcx
$LN1@AuRemoveDS:
$LN6@AuRemoveDS:

; 106  : 	}
; 107  : }

	ret	0
?AuRemoveDSP@@YAXPEAU__au_dsp__@@@Z ENDP		; AuRemoveDSP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\sound\sound.cpp
_TEXT	SEGMENT
dsp$ = 8
?AuSoundAddDSP@@YAXPEAU__au_dsp__@@@Z PROC		; AuSoundAddDSP

; 72   : void AuSoundAddDSP(AuDSP *dsp) {

	mov	QWORD PTR [rsp+8], rcx

; 73   : 	dsp->next = NULL;

	mov	rax, QWORD PTR dsp$[rsp]
	mov	QWORD PTR [rax+27], 0

; 74   : 	dsp->prev = NULL;

	mov	rax, QWORD PTR dsp$[rsp]
	mov	QWORD PTR [rax+35], 0

; 75   : 	if (dsp_first == NULL) {

	cmp	QWORD PTR ?dsp_first@@3PEAU__au_dsp__@@EA, 0 ; dsp_first
	jne	SHORT $LN2@AuSoundAdd

; 76   : 		dsp_first = dsp;

	mov	rax, QWORD PTR dsp$[rsp]
	mov	QWORD PTR ?dsp_first@@3PEAU__au_dsp__@@EA, rax ; dsp_first

; 77   : 		dsp_last = dsp;

	mov	rax, QWORD PTR dsp$[rsp]
	mov	QWORD PTR ?dsp_last@@3PEAU__au_dsp__@@EA, rax ; dsp_last

; 78   : 	}
; 79   : 	else {

	jmp	SHORT $LN1@AuSoundAdd
$LN2@AuSoundAdd:

; 80   : 		dsp_last->next = dsp;

	mov	rax, QWORD PTR ?dsp_last@@3PEAU__au_dsp__@@EA ; dsp_last
	mov	rcx, QWORD PTR dsp$[rsp]
	mov	QWORD PTR [rax+27], rcx

; 81   : 		dsp->prev = dsp_last;

	mov	rax, QWORD PTR dsp$[rsp]
	mov	rcx, QWORD PTR ?dsp_last@@3PEAU__au_dsp__@@EA ; dsp_last
	mov	QWORD PTR [rax+35], rcx

; 82   : 		dsp_last = dsp;

	mov	rax, QWORD PTR dsp$[rsp]
	mov	QWORD PTR ?dsp_last@@3PEAU__au_dsp__@@EA, rax ; dsp_last
$LN1@AuSoundAdd:

; 83   : 	}
; 84   : }

	ret	0
?AuSoundAddDSP@@YAXPEAU__au_dsp__@@@Z ENDP		; AuSoundAddDSP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\sound\sound.cpp
_TEXT	SEGMENT
?AuSoundStop@@YAXXZ PROC				; AuSoundStop

; 215  : void AuSoundStop() {

$LN4:
	sub	rsp, 40					; 00000028H

; 216  : 	if (_Registered_dev == NULL)

	cmp	QWORD PTR ?_Registered_dev@@3PEAU_SoundDev_@@EA, 0 ; _Registered_dev
	jne	SHORT $LN1@AuSoundSto

; 217  : 		return;

	jmp	SHORT $LN2@AuSoundSto
$LN1@AuSoundSto:

; 218  : 	_Registered_dev->stop_output();

	mov	rax, QWORD PTR ?_Registered_dev@@3PEAU_SoundDev_@@EA ; _Registered_dev
	call	QWORD PTR [rax+48]
$LN2@AuSoundSto:

; 219  : }

	add	rsp, 40					; 00000028H
	ret	0
?AuSoundStop@@YAXXZ ENDP				; AuSoundStop
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\sound\sound.cpp
_TEXT	SEGMENT
?AuSoundStart@@YAXXZ PROC				; AuSoundStart

; 206  : void AuSoundStart() {

$LN4:
	sub	rsp, 40					; 00000028H

; 207  : 	if (_Registered_dev == NULL)

	cmp	QWORD PTR ?_Registered_dev@@3PEAU_SoundDev_@@EA, 0 ; _Registered_dev
	jne	SHORT $LN1@AuSoundSta

; 208  : 		return;

	jmp	SHORT $LN2@AuSoundSta
$LN1@AuSoundSta:

; 209  : 	_Registered_dev->start_output();

	mov	rax, QWORD PTR ?_Registered_dev@@3PEAU_SoundDev_@@EA ; _Registered_dev
	call	QWORD PTR [rax+56]
$LN2@AuSoundSta:

; 210  : }

	add	rsp, 40					; 00000028H
	ret	0
?AuSoundStart@@YAXXZ ENDP				; AuSoundStart
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\sound\sound.cpp
_TEXT	SEGMENT
dsp_$ = 32
id$ = 64
AuSoundRemoveDSP PROC

; 304  : void AuSoundRemoveDSP(uint16_t id) {

$LN4:
	mov	WORD PTR [rsp+8], cx
	sub	rsp, 56					; 00000038H

; 305  : 	AuDSP* dsp_ = AuSoundGetDSP(id);

	movzx	ecx, WORD PTR id$[rsp]
	call	?AuSoundGetDSP@@YAPEAU__au_dsp__@@G@Z	; AuSoundGetDSP
	mov	QWORD PTR dsp_$[rsp], rax

; 306  : 	if (dsp_) {

	cmp	QWORD PTR dsp_$[rsp], 0
	je	SHORT $LN1@AuSoundRem

; 307  : 		AuPmmngrFree((void*)V2P((size_t)dsp_->buffer->buffer));

	mov	rax, QWORD PTR dsp_$[rsp]
	mov	rax, QWORD PTR [rax]
	mov	rcx, QWORD PTR [rax]
	call	V2P
	mov	rcx, rax
	call	AuPmmngrFree

; 308  : 		AuCircBufFree(dsp_->buffer);

	mov	rax, QWORD PTR dsp_$[rsp]
	mov	rcx, QWORD PTR [rax]
	call	?AuCircBufFree@@YAXPEAU_circ_buf_@@@Z	; AuCircBufFree

; 309  : 		AuRemoveDSP(dsp_);

	mov	rcx, QWORD PTR dsp_$[rsp]
	call	?AuRemoveDSP@@YAXPEAU__au_dsp__@@@Z	; AuRemoveDSP

; 310  : 		kfree(dsp_);

	mov	rcx, QWORD PTR dsp_$[rsp]
	call	kfree
$LN1@AuSoundRem:

; 311  : 	}
; 312  : }

	add	rsp, 56					; 00000038H
	ret	0
AuSoundRemoveDSP ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\sound\sound.cpp
_TEXT	SEGMENT
i$1 = 32
i$2 = 36
i$3 = 40
i$4 = 44
dsp$5 = 48
mixing_zone$6 = 56
dsp$7 = 64
data_16$8 = 72
hw_buffer$ = 80
buffer$ = 112
AuSoundGetBlock PROC

; 123  : void AuSoundGetBlock(uint64_t *buffer) {

$LN25:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 104				; 00000068H

; 124  : 
; 125  : 	if (dsp_first == NULL)

	cmp	QWORD PTR ?dsp_first@@3PEAU__au_dsp__@@EA, 0 ; dsp_first
	jne	SHORT $LN22@AuSoundGet

; 126  : 		return;

	jmp	$LN23@AuSoundGet
$LN22@AuSoundGet:

; 127  : 	
; 128  : 	if (mixbuf == NULL)

	cmp	QWORD PTR ?mixbuf@@3PEAEEA, 0		; mixbuf
	jne	SHORT $LN21@AuSoundGet

; 129  : 		return;

	jmp	$LN23@AuSoundGet
$LN21@AuSoundGet:

; 130  : 
; 131  : 	int16_t* hw_buffer = (int16_t*)buffer;

	mov	rax, QWORD PTR buffer$[rsp]
	mov	QWORD PTR hw_buffer$[rsp], rax

; 132  : 
; 133  : 	for (int i = 0; i < SND_BUFF_SZ / sizeof(int16_t); i++)

	mov	DWORD PTR i$3[rsp], 0
	jmp	SHORT $LN20@AuSoundGet
$LN19@AuSoundGet:
	mov	eax, DWORD PTR i$3[rsp]
	inc	eax
	mov	DWORD PTR i$3[rsp], eax
$LN20@AuSoundGet:
	movsxd	rax, DWORD PTR i$3[rsp]
	cmp	rax, 2048				; 00000800H
	jae	SHORT $LN18@AuSoundGet

; 134  : 		hw_buffer[i] = 0;

	movsxd	rax, DWORD PTR i$3[rsp]
	xor	ecx, ecx
	mov	rdx, QWORD PTR hw_buffer$[rsp]
	mov	WORD PTR [rdx+rax*2], cx
	jmp	SHORT $LN19@AuSoundGet
$LN18@AuSoundGet:

; 135  : 	
; 136  : 	for (AuDSP* dsp = dsp_first; dsp != NULL; dsp = dsp->next) {

	mov	rax, QWORD PTR ?dsp_first@@3PEAU__au_dsp__@@EA ; dsp_first
	mov	QWORD PTR dsp$7[rsp], rax
	jmp	SHORT $LN17@AuSoundGet
$LN16@AuSoundGet:
	mov	rax, QWORD PTR dsp$7[rsp]
	mov	rax, QWORD PTR [rax+27]
	mov	QWORD PTR dsp$7[rsp], rax
$LN17@AuSoundGet:
	cmp	QWORD PTR dsp$7[rsp], 0
	je	$LN15@AuSoundGet

; 137  : 		uint8_t* mixing_zone = mixbuf;

	mov	rax, QWORD PTR ?mixbuf@@3PEAEEA		; mixbuf
	mov	QWORD PTR mixing_zone$6[rsp], rax

; 138  : 		memset(mixing_zone, 0, SND_BUFF_SZ);

	mov	r8d, 4096				; 00001000H
	xor	edx, edx
	mov	rcx, QWORD PTR mixing_zone$6[rsp]
	call	memset

; 139  : 		for (int i = 0; i < SND_BUFF_SZ; i++){

	mov	DWORD PTR i$4[rsp], 0
	jmp	SHORT $LN14@AuSoundGet
$LN13@AuSoundGet:
	mov	eax, DWORD PTR i$4[rsp]
	inc	eax
	mov	DWORD PTR i$4[rsp], eax
$LN14@AuSoundGet:
	cmp	DWORD PTR i$4[rsp], 4096		; 00001000H
	jge	SHORT $LN12@AuSoundGet

; 140  : 			AuCircBufGet(dsp->buffer, mixing_zone);

	mov	rdx, QWORD PTR mixing_zone$6[rsp]
	mov	rax, QWORD PTR dsp$7[rsp]
	mov	rcx, QWORD PTR [rax]
	call	?AuCircBufGet@@YAHPEAU_circ_buf_@@PEAE@Z ; AuCircBufGet

; 141  : 			mixing_zone++;

	mov	rax, QWORD PTR mixing_zone$6[rsp]
	inc	rax
	mov	QWORD PTR mixing_zone$6[rsp], rax

; 142  : 		}

	jmp	SHORT $LN13@AuSoundGet
$LN12@AuSoundGet:

; 143  : 
; 144  : 		int16_t *data_16 = (int16_t*)mixbuf;

	mov	rax, QWORD PTR ?mixbuf@@3PEAEEA		; mixbuf
	mov	QWORD PTR data_16$8[rsp], rax

; 145  : 
; 146  : 		for (int i = 0; i < SND_BUFF_SZ / sizeof(int16_t); i++)

	mov	DWORD PTR i$2[rsp], 0
	jmp	SHORT $LN11@AuSoundGet
$LN10@AuSoundGet:
	mov	eax, DWORD PTR i$2[rsp]
	inc	eax
	mov	DWORD PTR i$2[rsp], eax
$LN11@AuSoundGet:
	movsxd	rax, DWORD PTR i$2[rsp]
	cmp	rax, 2048				; 00000800H
	jae	SHORT $LN9@AuSoundGet

; 147  : 			data_16[i] /= 2;

	movsxd	rax, DWORD PTR i$2[rsp]
	mov	rcx, QWORD PTR data_16$8[rsp]
	movsx	eax, WORD PTR [rcx+rax*2]
	cdq
	sub	eax, edx
	sar	eax, 1
	movsxd	rcx, DWORD PTR i$2[rsp]
	mov	rdx, QWORD PTR data_16$8[rsp]
	mov	WORD PTR [rdx+rcx*2], ax
	jmp	SHORT $LN10@AuSoundGet
$LN9@AuSoundGet:

; 148  : 
; 149  : 		for (int i = 0; i < SND_BUFF_SZ / sizeof(int16_t); i++){

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN8@AuSoundGet
$LN7@AuSoundGet:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN8@AuSoundGet:
	movsxd	rax, DWORD PTR i$1[rsp]
	cmp	rax, 2048				; 00000800H
	jae	SHORT $LN6@AuSoundGet

; 150  : 			hw_buffer[i] += data_16[i];

	movsxd	rax, DWORD PTR i$1[rsp]
	movsxd	rcx, DWORD PTR i$1[rsp]
	mov	rdx, QWORD PTR data_16$8[rsp]
	movsx	ecx, WORD PTR [rdx+rcx*2]
	mov	rdx, QWORD PTR hw_buffer$[rsp]
	movsx	eax, WORD PTR [rdx+rax*2]
	add	eax, ecx
	movsxd	rcx, DWORD PTR i$1[rsp]
	mov	rdx, QWORD PTR hw_buffer$[rsp]
	mov	WORD PTR [rdx+rcx*2], ax

; 151  : 		}

	jmp	SHORT $LN7@AuSoundGet
$LN6@AuSoundGet:

; 152  : 	}

	jmp	$LN16@AuSoundGet
$LN15@AuSoundGet:

; 153  : 
; 154  : 	for (AuDSP *dsp = dsp_first; dsp != NULL; dsp = dsp->next) {

	mov	rax, QWORD PTR ?dsp_first@@3PEAU__au_dsp__@@EA ; dsp_first
	mov	QWORD PTR dsp$5[rsp], rax
	jmp	SHORT $LN5@AuSoundGet
$LN4@AuSoundGet:
	mov	rax, QWORD PTR dsp$5[rsp]
	mov	rax, QWORD PTR [rax+27]
	mov	QWORD PTR dsp$5[rsp], rax
$LN5@AuSoundGet:
	cmp	QWORD PTR dsp$5[rsp], 0
	je	SHORT $LN3@AuSoundGet

; 155  : 		if (dsp->SndThread) {

	mov	rax, QWORD PTR dsp$5[rsp]
	cmp	QWORD PTR [rax+10], 0
	je	SHORT $LN2@AuSoundGet

; 156  : 			if (dsp->SndThread->pendingSigCount > 0)

	mov	rax, QWORD PTR dsp$5[rsp]
	mov	rax, QWORD PTR [rax+10]
	movzx	eax, BYTE PTR [rax+632]
	test	eax, eax
	jle	SHORT $LN1@AuSoundGet

; 157  : 				return;

	jmp	SHORT $LN23@AuSoundGet
$LN1@AuSoundGet:

; 158  : 			AuUnblockThread(dsp->SndThread);

	mov	rax, QWORD PTR dsp$5[rsp]
	mov	rcx, QWORD PTR [rax+10]
	call	AuUnblockThread
$LN2@AuSoundGet:

; 159  : 		}
; 160  : 	}

	jmp	SHORT $LN4@AuSoundGet
$LN3@AuSoundGet:
$LN23@AuSoundGet:

; 161  : 
; 162  : }

	add	rsp, 104				; 00000068H
	ret	0
AuSoundGetBlock ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\sound\sound.cpp
_TEXT	SEGMENT
dev$ = 8
AuSoundSetCard PROC

; 197  : void AuSoundSetCard(AuSound* dev) {

	mov	QWORD PTR [rsp+8], rcx

; 198  : 	if (_Registered_dev)

	cmp	QWORD PTR ?_Registered_dev@@3PEAU_SoundDev_@@EA, 0 ; _Registered_dev
	je	SHORT $LN1@AuSoundSet

; 199  : 		return;

	jmp	SHORT $LN2@AuSoundSet
$LN1@AuSoundSet:

; 200  : 	_Registered_dev = dev;

	mov	rax, QWORD PTR dev$[rsp]
	mov	QWORD PTR ?_Registered_dev@@3PEAU_SoundDev_@@EA, rax ; _Registered_dev
$LN2@AuSoundSet:

; 201  : }

	ret	0
AuSoundSetCard ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\sound\sound.cpp
_TEXT	SEGMENT
dsp$ = 32
dsp_$ = 40
fsys$ = 48
buffer$ = 56
?AuSoundInitialise@@YAXXZ PROC				; AuSoundInitialise

; 270  : void AuSoundInitialise() {

$LN3:
	sub	rsp, 72					; 00000048H

; 271  : 	AuVFSNode* fsys = AuVFSFind("/dev");

	lea	rcx, OFFSET FLAT:$SG3994
	call	AuVFSFind
	mov	QWORD PTR fsys$[rsp], rax

; 272  : 	AuVFSNode *dsp = (AuVFSNode*)kmalloc(sizeof(AuVFSNode));

	mov	ecx, 192				; 000000c0H
	call	kmalloc
	mov	QWORD PTR dsp$[rsp], rax

; 273  : 	memset(dsp, 0, sizeof(AuVFSNode));

	mov	r8d, 192				; 000000c0H
	xor	edx, edx
	mov	rcx, QWORD PTR dsp$[rsp]
	call	memset

; 274  : 	strcpy(dsp->filename, "sound");

	mov	rax, QWORD PTR dsp$[rsp]
	lea	rdx, OFFSET FLAT:$SG3999
	mov	rcx, rax
	call	strcpy

; 275  : 	dsp->flags =  FS_FLAG_DEVICE;

	mov	eax, 8
	mov	rcx, QWORD PTR dsp$[rsp]
	mov	WORD PTR [rcx+64], ax

; 276  : 	dsp->device = fsys;

	mov	rax, QWORD PTR dsp$[rsp]
	mov	rcx, QWORD PTR fsys$[rsp]
	mov	QWORD PTR [rax+72], rcx

; 277  : 	dsp->read = AuSoundRead;

	mov	rax, QWORD PTR dsp$[rsp]
	lea	rcx, OFFSET FLAT:?AuSoundRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z ; AuSoundRead
	mov	QWORD PTR [rax+104], rcx

; 278  : 	dsp->write = AuSoundWrite;

	mov	rax, QWORD PTR dsp$[rsp]
	lea	rcx, OFFSET FLAT:?AuSoundWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z ; AuSoundWrite
	mov	QWORD PTR [rax+112], rcx

; 279  : 	dsp->iocontrol = AuSoundIOControl;

	mov	rax, QWORD PTR dsp$[rsp]
	lea	rcx, OFFSET FLAT:?AuSoundIOControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z ; AuSoundIOControl
	mov	QWORD PTR [rax+184], rcx

; 280  : 	AuDevFSAddFile(fsys, "/", dsp);

	mov	r8, QWORD PTR dsp$[rsp]
	lea	rdx, OFFSET FLAT:$SG4000
	mov	rcx, QWORD PTR fsys$[rsp]
	call	AuDevFSAddFile

; 281  : 
; 282  : 	dsp_first = NULL;

	mov	QWORD PTR ?dsp_first@@3PEAU__au_dsp__@@EA, 0 ; dsp_first

; 283  : 	dsp_last = NULL;

	mov	QWORD PTR ?dsp_last@@3PEAU__au_dsp__@@EA, 0 ; dsp_last

; 284  : 	_audio_started_ = false;

	mov	BYTE PTR ?_audio_started_@@3_NA, 0	; _audio_started_

; 285  : 	_audio_stopped_ = false;

	mov	BYTE PTR ?_audio_stopped_@@3_NA, 0	; _audio_stopped_

; 286  : 	mixbuf = (uint8_t*)P2V((uint64_t)AuPmmngrAlloc());

	call	AuPmmngrAlloc
	mov	rcx, rax
	call	P2V
	mov	QWORD PTR ?mixbuf@@3PEAEEA, rax		; mixbuf

; 287  : 	memset(mixbuf, 0, PAGE_SIZE);

	mov	r8d, 4096				; 00001000H
	xor	edx, edx
	mov	rcx, QWORD PTR ?mixbuf@@3PEAEEA		; mixbuf
	call	memset

; 288  : 
; 289  : 	AuDSP* dsp_ = (AuDSP*)kmalloc(sizeof(AuDSP));

	mov	ecx, 43					; 0000002bH
	call	kmalloc
	mov	QWORD PTR dsp_$[rsp], rax

; 290  : 	memset(dsp_, 0, sizeof(AuDSP));

	mov	r8d, 43					; 0000002bH
	xor	edx, edx
	mov	rcx, QWORD PTR dsp_$[rsp]
	call	memset

; 291  : 	uint8_t* buffer = (uint8_t*)P2V((size_t)AuPmmngrAlloc());

	call	AuPmmngrAlloc
	mov	rcx, rax
	call	P2V
	mov	QWORD PTR buffer$[rsp], rax

; 292  : 	dsp_->buffer = AuCircBufInitialise(buffer, SND_BUFF_SZ);

	mov	edx, 4096				; 00001000H
	mov	rcx, QWORD PTR buffer$[rsp]
	call	?AuCircBufInitialise@@YAPEAU_circ_buf_@@PEAE_K@Z ; AuCircBufInitialise
	mov	rcx, QWORD PTR dsp_$[rsp]
	mov	QWORD PTR [rcx], rax

; 293  : 	dsp_->_dsp_id = 0;

	xor	eax, eax
	mov	rcx, QWORD PTR dsp_$[rsp]
	mov	WORD PTR [rcx+8], ax

; 294  : 	dsp_->SndThread = 0;

	mov	rax, QWORD PTR dsp_$[rsp]
	mov	QWORD PTR [rax+10], 0

; 295  : 	dsp_->sleep_time = 0;

	mov	rax, QWORD PTR dsp_$[rsp]
	mov	QWORD PTR [rax+18], 0

; 296  : 	dsp_->available = false;

	mov	rax, QWORD PTR dsp_$[rsp]
	mov	BYTE PTR [rax+26], 0

; 297  : 	AuSoundAddDSP(dsp_);

	mov	rcx, QWORD PTR dsp_$[rsp]
	call	?AuSoundAddDSP@@YAXPEAU__au_dsp__@@@Z	; AuSoundAddDSP

; 298  : }

	add	rsp, 72					; 00000048H
	ret	0
?AuSoundInitialise@@YAXXZ ENDP				; AuSoundInitialise
_TEXT	ENDS
END
