; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

CONST	SEGMENT
$SG4730	DB	'BootDev HID -> %x, UID -> %x, CID -> %x ', 0dH, 0aH, 00H
CONST	ENDS
PUBLIC	?_AuMain@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z		; _AuMain
EXTRN	?AuConsoleInitialize@@YAXPEAU_KERNEL_BOOT_INFO_@@_N@Z:PROC ; AuConsoleInitialize
EXTRN	?AuConsolePostInitialise@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z:PROC ; AuConsolePostInitialise
EXTRN	?AuPmmngrInitialize@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z:PROC ; AuPmmngrInitialize
EXTRN	?AuVmmngrInitialize@@YAXXZ:PROC			; AuVmmngrInitialize
EXTRN	?AuVmmngrBootFree@@YAXXZ:PROC			; AuVmmngrBootFree
EXTRN	?AuVFSInitialise@@YAXXZ:PROC			; AuVFSInitialise
EXTRN	?AuSchedulerStart@@YAXXZ:PROC			; AuSchedulerStart
EXTRN	?AuSchedulerInitialise@@YAXXZ:PROC		; AuSchedulerInitialise
EXTRN	?AuStartRootProc@@YAXXZ:PROC			; AuStartRootProc
EXTRN	?AuInitialiseSHMMan@@YAXXZ:PROC			; AuInitialiseSHMMan
EXTRN	AuHalInitialise:PROC
EXTRN	AuHalPostInitialise:PROC
EXTRN	x64_cli:PROC
EXTRN	?AuInitialiseSerial@@YAXXZ:PROC			; AuInitialiseSerial
EXTRN	SeTextOut:PROC
EXTRN	AuHeapInitialize:PROC
EXTRN	?AuAHCIInitialise@@YAXXZ:PROC			; AuAHCIInitialise
EXTRN	?AuTTYInitialise@@YAXXZ:PROC			; AuTTYInitialise
EXTRN	?AuPS2MouseInitialise@@YAXXZ:PROC		; AuPS2MouseInitialise
EXTRN	?AuPS2KybrdInitialize@@YAXXZ:PROC		; AuPS2KybrdInitialize
EXTRN	?AuRTCInitialize@@YAXXZ:PROC			; AuRTCInitialize
EXTRN	?AuDrvMngrInitialize@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z:PROC ; AuDrvMngrInitialize
EXTRN	?AuInitialiseLoader@@YAXXZ:PROC			; AuInitialiseLoader
EXTRN	?AuSoundInitialise@@YAXXZ:PROC			; AuSoundInitialise
EXTRN	?AuInitialiseNet@@YAXXZ:PROC			; AuInitialiseNet
EXTRN	?AuIPCPostBoxInitialise@@YAXXZ:PROC		; AuIPCPostBoxInitialise
pdata	SEGMENT
$pdata$?_AuMain@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z DD imagerel $LN5
	DD	imagerel $LN5+215
	DD	imagerel $unwind$?_AuMain@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?_AuMain@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z DD 010901H
	DD	04209H
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\init.cpp
_TEXT	SEGMENT
info$ = 48
?_AuMain@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z PROC		; _AuMain

; 71   : void _AuMain(KERNEL_BOOT_INFO *info) {

$LN5:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 72   : 	AuConsoleInitialize(info, true);

	mov	dl, 1
	mov	rcx, QWORD PTR info$[rsp]
	call	?AuConsoleInitialize@@YAXPEAU_KERNEL_BOOT_INFO_@@_N@Z ; AuConsoleInitialize

; 73   : 	AuPmmngrInitialize(info);

	mov	rcx, QWORD PTR info$[rsp]
	call	?AuPmmngrInitialize@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z ; AuPmmngrInitialize

; 74   : 	AuVmmngrInitialize();

	call	?AuVmmngrInitialize@@YAXXZ		; AuVmmngrInitialize

; 75   : 	AuHeapInitialize();

	call	AuHeapInitialize

; 76   : 
; 77   : 	AuHalInitialise(info);

	mov	rcx, QWORD PTR info$[rsp]
	call	AuHalInitialise

; 78   : 	AuInitialiseSerial();

	call	?AuInitialiseSerial@@YAXXZ		; AuInitialiseSerial

; 79   : 	AuVFSInitialise();

	call	?AuVFSInitialise@@YAXXZ			; AuVFSInitialise

; 80   : 	SeTextOut("BootDev HID -> %x, UID -> %x, CID -> %x \r\n", info->hid, info->uid, info->cid);

	mov	rax, QWORD PTR info$[rsp]
	mov	r9d, DWORD PTR [rax+178]
	mov	rax, QWORD PTR info$[rsp]
	mov	r8d, DWORD PTR [rax+174]
	mov	rax, QWORD PTR info$[rsp]
	mov	edx, DWORD PTR [rax+170]
	lea	rcx, OFFSET FLAT:$SG4730
	call	SeTextOut

; 81   : 	AuAHCIInitialise();

	call	?AuAHCIInitialise@@YAXXZ		; AuAHCIInitialise

; 82   : 	
; 83   : 	AuConsolePostInitialise(info);

	mov	rcx, QWORD PTR info$[rsp]
	call	?AuConsolePostInitialise@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z ; AuConsolePostInitialise

; 84   : 	/* Here initialize all legacy bus system
; 85   : 	 * like ps2.... using AuLegacyBusInitialize() */
; 86   : 	AuPS2MouseInitialise();

	call	?AuPS2MouseInitialise@@YAXXZ		; AuPS2MouseInitialise

; 87   : 	AuRTCInitialize();

	call	?AuRTCInitialize@@YAXXZ			; AuRTCInitialize

; 88   : 	AuPS2KybrdInitialize();

	call	?AuPS2KybrdInitialize@@YAXXZ		; AuPS2KybrdInitialize

; 89   : 
; 90   : 	/*initialise kernel tty */
; 91   : 	AuTTYInitialise();

	call	?AuTTYInitialise@@YAXXZ			; AuTTYInitialise

; 92   : 
; 93   : 	/* initialise the shared mem man */
; 94   : 	AuInitialiseSHMMan();

	call	?AuInitialiseSHMMan@@YAXXZ		; AuInitialiseSHMMan

; 95   : 
; 96   : 	/* initialise sound service */
; 97   : 	AuSoundInitialise();

	call	?AuSoundInitialise@@YAXXZ		; AuSoundInitialise

; 98   : 
; 99   : 	/* initialise PostBoxIPCManager */
; 100  : 	AuIPCPostBoxInitialise();

	call	?AuIPCPostBoxInitialise@@YAXXZ		; AuIPCPostBoxInitialise

; 101  : 
; 102  : 	/* initialise pre network service*/
; 103  : 	AuInitialiseNet();

	call	?AuInitialiseNet@@YAXXZ			; AuInitialiseNet

; 104  : 
; 105  : 	x64_cli();

	call	x64_cli

; 106  : 	AuSchedulerInitialise();

	call	?AuSchedulerInitialise@@YAXXZ		; AuSchedulerInitialise

; 107  : 	
; 108  : 	/*initialise aurora driver manager*/
; 109  : 	AuDrvMngrInitialize(info);

	mov	rcx, QWORD PTR info$[rsp]
	call	?AuDrvMngrInitialize@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z ; AuDrvMngrInitialize

; 110  : 	
; 111  : 	/* initialise all application processors*/
; 112  : 	AuHalPostInitialise();

	call	AuHalPostInitialise

; 113  : 	
; 114  : 	AuInitialiseLoader();

	call	?AuInitialiseLoader@@YAXXZ		; AuInitialiseLoader

; 115  : 
; 116  : 	/* make the kernel standalone*/
; 117  : 	AuVmmngrBootFree();

	call	?AuVmmngrBootFree@@YAXXZ		; AuVmmngrBootFree

; 118  : 	/* Process initialisation begins here */
; 119  : 	AuStartRootProc();

	call	?AuStartRootProc@@YAXXZ			; AuStartRootProc

; 120  : 	AuSchedulerStart();

	call	?AuSchedulerStart@@YAXXZ		; AuSchedulerStart
$LN2@AuMain:

; 121  : 	for (;;);

	jmp	SHORT $LN2@AuMain

; 122  : }

	add	rsp, 40					; 00000028H
	ret	0
?_AuMain@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z ENDP		; _AuMain
_TEXT	ENDS
END
