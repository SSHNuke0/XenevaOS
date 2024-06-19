; Listing generated by Microsoft (R) Optimizing Compiler Version 19.29.30154.0 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?loader_lock@@3PEAU_spinlock_@@EA		; loader_lock
PUBLIC	?loader_mutex@@3PEAU_mutex_@@EA			; loader_mutex
PUBLIC	?is_loader_busy@@3_NA				; is_loader_busy
_BSS	SEGMENT
?loader_lock@@3PEAU_spinlock_@@EA DQ 01H DUP (?)	; loader_lock
?loader_mutex@@3PEAU_mutex_@@EA DQ 01H DUP (?)		; loader_mutex
?is_loader_busy@@3_NA DB 01H DUP (?)			; is_loader_busy
_BSS	ENDS
msvcjmc	SEGMENT
__95171535_loader@cpp DB 01H
__303BDA61_stdint@h DB 01H
msvcjmc	ENDS
PUBLIC	?AuInitialiseLoader@@YAXXZ			; AuInitialiseLoader
PUBLIC	?AuLoadExecToProcess@@YAHPEAU_au_proc_@@PEADHPEAPEAD@Z ; AuLoadExecToProcess
PUBLIC	?AuProcessEntUser@@YAX_K@Z			; AuProcessEntUser
PUBLIC	?AuLoaderGetMutex@@YAPEAU_mutex_@@XZ		; AuLoaderGetMutex
PUBLIC	?AuIsLoaderBusy@@YA_NXZ				; AuIsLoaderBusy
PUBLIC	??$raw_offset@PEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@@@YAPEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@H@Z ; raw_offset<_IMAGE_NT_HEADERS_PE32PLUS *,_IMAGE_DOS_HEADER_ *>
PUBLIC	??$raw_offset@PEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@@@YAPEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@H@Z ; raw_offset<_IMAGE_SECTION_HEADER *,_IMAGE_OPTIONAL_HEADER_PE32PLUS *>
PUBLIC	__JustMyCode_Default
PUBLIC	??_C@_03JACLIBNI@exe@				; `string'
PUBLIC	??_C@_0CE@NLBHCAEA@?$FLaurora?$FN?3?5non?9executable?5proces@ ; `string'
PUBLIC	??_C@_0BH@OHAAMPLD@No?5File?5found?5?9?$DO?5?$CFs?5?$AN?6@ ; `string'
PUBLIC	??_C@_0L@PMEAHFBD@?1xeldr?4exe@			; `string'
PUBLIC	??_C@_0CD@GHFDEDL@Arguments?5address?5already?5mappe@ ; `string'
EXTRN	?AuPEFileIsDynamicallyLinked@@YA_NPEAX@Z:PROC	; AuPEFileIsDynamicallyLinked
EXTRN	AuVFSOpen:PROC
EXTRN	AuVFSFind:PROC
EXTRN	AuVFSNodeReadBlock:PROC
EXTRN	AuCreateKthread:PROC
EXTRN	AuGetCurrentThread:PROC
EXTRN	AuCreateSpinlock:PROC
EXTRN	AuAcquireSpinlock:PROC
EXTRN	AuReleaseSpinlock:PROC
EXTRN	AuCreateMutex:PROC
EXTRN	strcmp:PROC
EXTRN	strcpy:PROC
EXTRN	strlen:PROC
EXTRN	strchr:PROC
EXTRN	memset:PROC
EXTRN	AuMapPageEx:PROC
EXTRN	AuPmmngrAlloc:PROC
EXTRN	AuPmmngrFree:PROC
EXTRN	P2V:PROC
EXTRN	V2P:PROC
EXTRN	kmalloc:PROC
EXTRN	kfree:PROC
EXTRN	?AuInsertVMArea@@YAXPEAU_au_proc_@@PEAU_vm_area_@@@Z:PROC ; AuInsertVMArea
EXTRN	?AuVMAreaCreate@@YAPEAU_vm_area_@@_K0E0E@Z:PROC	; AuVMAreaCreate
EXTRN	x64_cli:PROC
EXTRN	x64_enter_user:PROC
EXTRN	SeTextOut:PROC
EXTRN	AuTextOut:PROC
EXTRN	__CheckForDebuggerJustMyCode:PROC
EXTRN	?_vfs_debug_on@@3_NA:BYTE			; _vfs_debug_on
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuInitialiseLoader@@YAXXZ DD imagerel $LN3
	DD	imagerel $LN3+73
	DD	imagerel $unwind$?AuInitialiseLoader@@YAXXZ
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuLoadExecToProcess@@YAHPEAU_au_proc_@@PEADHPEAPEAD@Z DD imagerel $LN24
	DD	imagerel $LN24+2034
	DD	imagerel $unwind$?AuLoadExecToProcess@@YAHPEAU_au_proc_@@PEADHPEAPEAD@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuProcessEntUser@@YAX_K@Z DD imagerel $LN30
	DD	imagerel $LN30+576
	DD	imagerel $unwind$?AuProcessEntUser@@YAX_K@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuLoaderGetMutex@@YAPEAU_mutex_@@XZ DD imagerel $LN3
	DD	imagerel $LN3+36
	DD	imagerel $unwind$?AuLoaderGetMutex@@YAPEAU_mutex_@@XZ
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuIsLoaderBusy@@YA_NXZ DD imagerel $LN3
	DD	imagerel $LN3+36
	DD	imagerel $unwind$?AuIsLoaderBusy@@YA_NXZ
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$??$raw_offset@PEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@@@YAPEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@H@Z DD imagerel $LN3
	DD	imagerel $LN3+51
	DD	imagerel $unwind$??$raw_offset@PEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@@@YAPEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@H@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$??$raw_offset@PEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@@@YAPEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@H@Z DD imagerel $LN3
	DD	imagerel $LN3+51
	DD	imagerel $unwind$??$raw_offset@PEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@@@YAPEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@H@Z
pdata	ENDS
;	COMDAT ??_C@_0CD@GHFDEDL@Arguments?5address?5already?5mappe@
CONST	SEGMENT
??_C@_0CD@GHFDEDL@Arguments?5address?5already?5mappe@ DB 'Arguments addre'
	DB	'ss already mapped ', 0aH, 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_0L@PMEAHFBD@?1xeldr?4exe@
CONST	SEGMENT
??_C@_0L@PMEAHFBD@?1xeldr?4exe@ DB '/xeldr.exe', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_0BH@OHAAMPLD@No?5File?5found?5?9?$DO?5?$CFs?5?$AN?6@
CONST	SEGMENT
??_C@_0BH@OHAAMPLD@No?5File?5found?5?9?$DO?5?$CFs?5?$AN?6@ DB 'No File fo'
	DB	'und -> %s ', 0dH, 0aH, 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_0CE@NLBHCAEA@?$FLaurora?$FN?3?5non?9executable?5proces@
CONST	SEGMENT
??_C@_0CE@NLBHCAEA@?$FLaurora?$FN?3?5non?9executable?5proces@ DB '[aurora'
	DB	']: non-executable process ', 0dH, 0aH, 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_03JACLIBNI@exe@
CONST	SEGMENT
??_C@_03JACLIBNI@exe@ DB 'exe', 00H			; `string'
CONST	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$??$raw_offset@PEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@@@YAPEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@H@Z DD 025031301H
	DD	0b20e2313H
	DD	0500aH
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$??$raw_offset@PEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@@@YAPEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@H@Z DD 025031301H
	DD	0b20e2313H
	DD	0500aH
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuIsLoaderBusy@@YA_NXZ DD 025030b01H
	DD	0b206230bH
	DD	05002H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuLoaderGetMutex@@YAPEAU_mutex_@@XZ DD 025030b01H
	DD	0b206230bH
	DD	05002H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuProcessEntUser@@YAX_K@Z DD 025041201H
	DD	010d2312H
	DD	050060014H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuLoadExecToProcess@@YAHPEAU_au_proc_@@PEADHPEAPEAD@Z DD 035042101H
	DD	011c3321H
	DD	05015002eH
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuInitialiseLoader@@YAXXZ DD 025030b01H
	DD	0b206230bH
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
; File E:\Xeneva Project\Aurora\BaseHdr\stdint.h
;	COMDAT ??$raw_offset@PEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@@@YAPEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@H@Z
_TEXT	SEGMENT
p1$ = 80
offset$ = 88
??$raw_offset@PEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@@@YAPEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@H@Z PROC ; raw_offset<_IMAGE_SECTION_HEADER *,_IMAGE_OPTIONAL_HEADER_PE32PLUS *>, COMDAT

; 207  : 	{

$LN3:
	mov	DWORD PTR [rsp+16], edx
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 96					; 00000060H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__303BDA61_stdint@h
	call	__CheckForDebuggerJustMyCode

; 208  : 		return (T)((size_t)p1 + offset);

	movsxd	rax, DWORD PTR offset$[rbp]
	mov	rcx, QWORD PTR p1$[rbp]
	add	rcx, rax
	mov	rax, rcx

; 209  : 	};

	lea	rsp, QWORD PTR [rbp+64]
	pop	rbp
	ret	0
??$raw_offset@PEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@@@YAPEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@H@Z ENDP ; raw_offset<_IMAGE_SECTION_HEADER *,_IMAGE_OPTIONAL_HEADER_PE32PLUS *>
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\BaseHdr\stdint.h
;	COMDAT ??$raw_offset@PEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@@@YAPEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@H@Z
_TEXT	SEGMENT
p1$ = 80
offset$ = 88
??$raw_offset@PEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@@@YAPEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@H@Z PROC ; raw_offset<_IMAGE_NT_HEADERS_PE32PLUS *,_IMAGE_DOS_HEADER_ *>, COMDAT

; 207  : 	{

$LN3:
	mov	DWORD PTR [rsp+16], edx
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 96					; 00000060H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__303BDA61_stdint@h
	call	__CheckForDebuggerJustMyCode

; 208  : 		return (T)((size_t)p1 + offset);

	movsxd	rax, DWORD PTR offset$[rbp]
	mov	rcx, QWORD PTR p1$[rbp]
	add	rcx, rax
	mov	rax, rcx

; 209  : 	};

	lea	rsp, QWORD PTR [rbp+64]
	pop	rbp
	ret	0
??$raw_offset@PEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@@@YAPEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@H@Z ENDP ; raw_offset<_IMAGE_NT_HEADERS_PE32PLUS *,_IMAGE_DOS_HEADER_ *>
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\loader.cpp
;	COMDAT ?AuIsLoaderBusy@@YA_NXZ
_TEXT	SEGMENT
?AuIsLoaderBusy@@YA_NXZ PROC				; AuIsLoaderBusy, COMDAT

; 297  : bool AuIsLoaderBusy() {

$LN3:
	push	rbp
	sub	rsp, 96					; 00000060H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__95171535_loader@cpp
	call	__CheckForDebuggerJustMyCode

; 298  : 	return is_loader_busy;

	movzx	eax, BYTE PTR ?is_loader_busy@@3_NA	; is_loader_busy

; 299  : }

	lea	rsp, QWORD PTR [rbp+64]
	pop	rbp
	ret	0
?AuIsLoaderBusy@@YA_NXZ ENDP				; AuIsLoaderBusy
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\loader.cpp
;	COMDAT ?AuLoaderGetMutex@@YAPEAU_mutex_@@XZ
_TEXT	SEGMENT
?AuLoaderGetMutex@@YAPEAU_mutex_@@XZ PROC		; AuLoaderGetMutex, COMDAT

; 293  : AuMutex* AuLoaderGetMutex() {

$LN3:
	push	rbp
	sub	rsp, 96					; 00000060H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__95171535_loader@cpp
	call	__CheckForDebuggerJustMyCode

; 294  : 	return loader_mutex;

	mov	rax, QWORD PTR ?loader_mutex@@3PEAU_mutex_@@EA ; loader_mutex

; 295  : }

	lea	rsp, QWORD PTR [rbp+64]
	pop	rbp
	ret	0
?AuLoaderGetMutex@@YAPEAU_mutex_@@XZ ENDP		; AuLoaderGetMutex
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\loader.cpp
;	COMDAT ?AuProcessEntUser@@YAX_K@Z
_TEXT	SEGMENT
t$ = 0
ent$ = 8
argvs$ = 16
i$1 = 24
str$2 = 32
j$3 = 40
i$4 = 44
addr$5 = 48
address$6 = 56
rcx$ = 144
?AuProcessEntUser@@YAX_K@Z PROC				; AuProcessEntUser, COMDAT

; 81   : void AuProcessEntUser(uint64_t rcx) {

$LN30:
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 160				; 000000a0H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__95171535_loader@cpp
	call	__CheckForDebuggerJustMyCode

; 82   : 	x64_cli();

	call	x64_cli

; 83   : 	AuThread* t = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR t$[rbp], rax

; 84   : 	AuUserEntry* ent = t->uentry;

	mov	rax, QWORD PTR t$[rbp]
	mov	rax, QWORD PTR [rax+641]
	mov	QWORD PTR ent$[rbp], rax

; 85   : 	/* do all arguments passing stuff, arguments
; 86   : 	 * are passed as strings to stack
; 87   : 	 */
; 88   : 	char** argvs = (char**)ent->argvaddr;

	mov	rax, QWORD PTR ent$[rbp]
	mov	rax, QWORD PTR [rax+36]
	mov	QWORD PTR argvs$[rbp], rax

; 89   : 	for (int i = 0; i < ent->num_args; i++) {

	mov	DWORD PTR i$1[rbp], 0
	jmp	SHORT $LN4@AuProcessE
$LN2@AuProcessE:
	mov	eax, DWORD PTR i$1[rbp]
	inc	eax
	mov	DWORD PTR i$1[rbp], eax
$LN4@AuProcessE:
	mov	rax, QWORD PTR ent$[rbp]
	mov	eax, DWORD PTR [rax+32]
	cmp	DWORD PTR i$1[rbp], eax
	jge	$LN3@AuProcessE

; 90   : 		char* str = ent->argvs[i];

	movsxd	rax, DWORD PTR i$1[rbp]
	mov	rcx, QWORD PTR ent$[rbp]
	mov	rcx, QWORD PTR [rcx+44]
	mov	rax, QWORD PTR [rcx+rax*8]
	mov	QWORD PTR str$2[rbp], rax

; 91   : 		for (int j = strlen(str); j >= 0; j--) {

	mov	rcx, QWORD PTR str$2[rbp]
	call	strlen
	mov	DWORD PTR j$3[rbp], eax
	jmp	SHORT $LN7@AuProcessE
$LN5@AuProcessE:
	mov	eax, DWORD PTR j$3[rbp]
	dec	eax
	mov	DWORD PTR j$3[rbp], eax
$LN7@AuProcessE:
	cmp	DWORD PTR j$3[rbp], 0
	jl	SHORT $LN6@AuProcessE
$LN10@AuProcessE:

; 92   : 			PUSH(ent->rsp, char, str[j]);

	mov	rax, QWORD PTR ent$[rbp]
	mov	rax, QWORD PTR [rax+8]
	dec	rax
	mov	rcx, QWORD PTR ent$[rbp]
	mov	QWORD PTR [rcx+8], rax
$LN11@AuProcessE:
	mov	rax, QWORD PTR ent$[rbp]
	mov	rax, QWORD PTR [rax+8]
	and	rax, 0
	test	rax, rax
	je	SHORT $LN12@AuProcessE
	mov	rax, QWORD PTR ent$[rbp]
	mov	rax, QWORD PTR [rax+8]
	dec	rax
	mov	rcx, QWORD PTR ent$[rbp]
	mov	QWORD PTR [rcx+8], rax
	jmp	SHORT $LN11@AuProcessE
$LN12@AuProcessE:
	movsxd	rax, DWORD PTR j$3[rbp]
	mov	rcx, QWORD PTR ent$[rbp]
	mov	rcx, QWORD PTR [rcx+8]
	mov	rdx, QWORD PTR str$2[rbp]
	movzx	eax, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx], al
	xor	eax, eax
	test	eax, eax
	jne	SHORT $LN10@AuProcessE

; 93   : 		}

	jmp	SHORT $LN5@AuProcessE
$LN6@AuProcessE:

; 94   : 		argvs[i] = (char*)ent->rsp;

	movsxd	rax, DWORD PTR i$1[rbp]
	mov	rcx, QWORD PTR argvs$[rbp]
	mov	rdx, QWORD PTR ent$[rbp]
	mov	rdx, QWORD PTR [rdx+8]
	mov	QWORD PTR [rcx+rax*8], rdx

; 95   : 	}

	jmp	$LN2@AuProcessE
$LN3@AuProcessE:

; 96   : 
; 97   : 	if (ent->argvs){

	mov	rax, QWORD PTR ent$[rbp]
	cmp	QWORD PTR [rax+44], 0
	je	SHORT $LN28@AuProcessE

; 98   : 		for (int i = 0; i < ent->num_args; i++) {

	mov	DWORD PTR i$4[rbp], 0
	jmp	SHORT $LN15@AuProcessE
$LN13@AuProcessE:
	mov	eax, DWORD PTR i$4[rbp]
	inc	eax
	mov	DWORD PTR i$4[rbp], eax
$LN15@AuProcessE:
	mov	rax, QWORD PTR ent$[rbp]
	mov	eax, DWORD PTR [rax+32]
	cmp	DWORD PTR i$4[rbp], eax
	jge	SHORT $LN14@AuProcessE

; 99   : 			uint64_t addr = (uint64_t)ent->argvs[i];

	movsxd	rax, DWORD PTR i$4[rbp]
	mov	rcx, QWORD PTR ent$[rbp]
	mov	rcx, QWORD PTR [rcx+44]
	mov	rax, QWORD PTR [rcx+rax*8]
	mov	QWORD PTR addr$5[rbp], rax

; 100  : 			kfree((void*)addr);

	mov	rcx, QWORD PTR addr$5[rbp]
	call	kfree

; 101  : 		}

	jmp	SHORT $LN13@AuProcessE
$LN14@AuProcessE:

; 102  : 		void* address = (void*)ent->argvs;

	mov	rax, QWORD PTR ent$[rbp]
	mov	rax, QWORD PTR [rax+44]
	mov	QWORD PTR address$6[rbp], rax

; 103  : 		kfree(address);

	mov	rcx, QWORD PTR address$6[rbp]
	call	kfree
$LN28@AuProcessE:
$LN18@AuProcessE:

; 104  : 	}
; 105  : 	
; 106  : 	PUSH(ent->rsp, size_t, (size_t)ent->argvaddr);

	mov	rax, QWORD PTR ent$[rbp]
	mov	rax, QWORD PTR [rax+8]
	sub	rax, 8
	mov	rcx, QWORD PTR ent$[rbp]
	mov	QWORD PTR [rcx+8], rax
$LN19@AuProcessE:
	mov	rax, QWORD PTR ent$[rbp]
	mov	rax, QWORD PTR [rax+8]
	and	rax, 7
	test	rax, rax
	je	SHORT $LN20@AuProcessE
	mov	rax, QWORD PTR ent$[rbp]
	mov	rax, QWORD PTR [rax+8]
	dec	rax
	mov	rcx, QWORD PTR ent$[rbp]
	mov	QWORD PTR [rcx+8], rax
	jmp	SHORT $LN19@AuProcessE
$LN20@AuProcessE:
	mov	rax, QWORD PTR ent$[rbp]
	mov	rax, QWORD PTR [rax+8]
	mov	rcx, QWORD PTR ent$[rbp]
	mov	rcx, QWORD PTR [rcx+36]
	mov	QWORD PTR [rax], rcx
	xor	eax, eax
	test	eax, eax
	jne	SHORT $LN18@AuProcessE
$LN23@AuProcessE:

; 107  : 	PUSH(ent->rsp, size_t, ent->num_args);

	mov	rax, QWORD PTR ent$[rbp]
	mov	rax, QWORD PTR [rax+8]
	sub	rax, 8
	mov	rcx, QWORD PTR ent$[rbp]
	mov	QWORD PTR [rcx+8], rax
$LN24@AuProcessE:
	mov	rax, QWORD PTR ent$[rbp]
	mov	rax, QWORD PTR [rax+8]
	and	rax, 7
	test	rax, rax
	je	SHORT $LN25@AuProcessE
	mov	rax, QWORD PTR ent$[rbp]
	mov	rax, QWORD PTR [rax+8]
	dec	rax
	mov	rcx, QWORD PTR ent$[rbp]
	mov	QWORD PTR [rcx+8], rax
	jmp	SHORT $LN24@AuProcessE
$LN25@AuProcessE:
	mov	rax, QWORD PTR ent$[rbp]
	movsxd	rax, DWORD PTR [rax+32]
	mov	rcx, QWORD PTR ent$[rbp]
	mov	rcx, QWORD PTR [rcx+8]
	mov	QWORD PTR [rcx], rax
	xor	eax, eax
	test	eax, eax
	jne	SHORT $LN23@AuProcessE

; 108  : 	x64_enter_user(ent->rsp, ent->entrypoint, ent->cs, ent->ss);

	mov	rax, QWORD PTR ent$[rbp]
	mov	r9, QWORD PTR [rax+24]
	mov	rax, QWORD PTR ent$[rbp]
	mov	r8, QWORD PTR [rax+16]
	mov	rax, QWORD PTR ent$[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR ent$[rbp]
	mov	rcx, QWORD PTR [rax+8]
	call	x64_enter_user
$LN26@AuProcessE:

; 109  : 	while (1) {

	xor	eax, eax
	cmp	eax, 1
	je	SHORT $LN27@AuProcessE

; 110  : 	}

	jmp	SHORT $LN26@AuProcessE
$LN27@AuProcessE:

; 111  : }

	lea	rsp, QWORD PTR [rbp+128]
	pop	rbp
	ret	0
?AuProcessEntUser@@YAX_K@Z ENDP				; AuProcessEntUser
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\loader.cpp
;	COMDAT ?AuLoadExecToProcess@@YAHPEAU_au_proc_@@PEADHPEAPEAD@Z
_TEXT	SEGMENT
v_$ = 0
fsys$ = 8
file$ = 16
buf$ = 24
read_bytes$ = 32
dos$ = 40
nt$ = 48
secthdr$ = 56
_image_base_$ = 64
ent$ = 72
cr3$ = 80
char_cnt$1 = 88
i$2 = 92
num_args_$3 = 96
string_len$4 = 100
file__$5 = 104
argvs$6 = 112
i$7 = 120
argpass$8 = 128
i$9 = 136
sect_ld_addr$10 = 144
sect_sz$11 = 152
req_pages$12 = 160
j$13 = 164
block$14 = 168
textarea$ = 176
stack$ = 184
entry$ = 192
num_args$ = 200
argvaddr$ = 208
args$15 = 216
thr$ = 224
tv344 = 296
tv259 = 296
tv346 = 304
proc$ = 336
filename$ = 344
argc$ = 352
argv$ = 360
?AuLoadExecToProcess@@YAHPEAU_au_proc_@@PEADHPEAPEAD@Z PROC ; AuLoadExecToProcess, COMDAT

; 122  : int AuLoadExecToProcess(AuProcess* proc, char* filename, int argc,char** argv) {

$LN24:
	mov	QWORD PTR [rsp+32], r9
	mov	DWORD PTR [rsp+24], r8d
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 368				; 00000170H
	lea	rbp, QWORD PTR [rsp+48]
	lea	rcx, OFFSET FLAT:__95171535_loader@cpp
	call	__CheckForDebuggerJustMyCode

; 123  : 	AuAcquireSpinlock(loader_lock);

	mov	rcx, QWORD PTR ?loader_lock@@3PEAU_spinlock_@@EA ; loader_lock
	call	AuAcquireSpinlock

; 124  : 	
; 125  : 	/* verify the filename, it can only be '.exe' file no '.dll' or other */
; 126  : 	char* v_ = strchr(filename, '.');

	mov	edx, 46					; 0000002eH
	mov	rcx, QWORD PTR filename$[rbp]
	call	strchr
	mov	QWORD PTR v_$[rbp], rax

; 127  : 	if (v_)

	cmp	QWORD PTR v_$[rbp], 0
	je	SHORT $LN14@AuLoadExec

; 128  : 		v_++;

	mov	rax, QWORD PTR v_$[rbp]
	inc	rax
	mov	QWORD PTR v_$[rbp], rax
$LN14@AuLoadExec:

; 129  : 	if (strcmp(v_, "exe") != 0) {

	lea	rdx, OFFSET FLAT:??_C@_03JACLIBNI@exe@
	mov	rcx, QWORD PTR v_$[rbp]
	call	strcmp
	test	eax, eax
	je	SHORT $LN15@AuLoadExec

; 130  : 		AuReleaseSpinlock(loader_lock);

	mov	rcx, QWORD PTR ?loader_lock@@3PEAU_spinlock_@@EA ; loader_lock
	call	AuReleaseSpinlock

; 131  : 		SeTextOut("[aurora]: non-executable process \r\n");

	lea	rcx, OFFSET FLAT:??_C@_0CE@NLBHCAEA@?$FLaurora?$FN?3?5non?9executable?5proces@
	call	SeTextOut

; 132  : 		return -1;

	mov	eax, -1
	jmp	$LN1@AuLoadExec
$LN15@AuLoadExec:

; 133  : 	}
; 134  : 	AuVFSNode *fsys = AuVFSFind(filename);	

	mov	rcx, QWORD PTR filename$[rbp]
	call	AuVFSFind
	mov	QWORD PTR fsys$[rbp], rax

; 135  : 	_vfs_debug_on = true;

	mov	BYTE PTR ?_vfs_debug_on@@3_NA, 1	; _vfs_debug_on

; 136  : 	AuVFSNode *file = AuVFSOpen(filename);

	mov	rcx, QWORD PTR filename$[rbp]
	call	AuVFSOpen
	mov	QWORD PTR file$[rbp], rax

; 137  : 	
; 138  : 	if (!file) {

	cmp	QWORD PTR file$[rbp], 0
	jne	SHORT $LN16@AuLoadExec

; 139  : 		SeTextOut("No File found -> %s \r\n", filename);

	mov	rdx, QWORD PTR filename$[rbp]
	lea	rcx, OFFSET FLAT:??_C@_0BH@OHAAMPLD@No?5File?5found?5?9?$DO?5?$CFs?5?$AN?6@
	call	SeTextOut

; 140  : 		AuReleaseSpinlock(loader_lock);

	mov	rcx, QWORD PTR ?loader_lock@@3PEAU_spinlock_@@EA ; loader_lock
	call	AuReleaseSpinlock

; 141  : 		return -1;

	mov	eax, -1
	jmp	$LN1@AuLoadExec
$LN16@AuLoadExec:

; 142  : 	}
; 143  : 
; 144  : 	uint64_t* buf = (uint64_t*)P2V((size_t)AuPmmngrAlloc());

	call	AuPmmngrAlloc
	mov	rcx, rax
	call	P2V
	mov	QWORD PTR buf$[rbp], rax

; 145  : 	memset(buf, 0, 4096);

	mov	r8d, 4096				; 00001000H
	xor	edx, edx
	mov	rcx, QWORD PTR buf$[rbp]
	call	memset

; 146  : 	
; 147  : 	
; 148  : 
; 149  : 	size_t read_bytes = AuVFSNodeReadBlock(fsys, file, (uint64_t*)V2P((uint64_t)buf));

	mov	rcx, QWORD PTR buf$[rbp]
	call	V2P
	mov	r8, rax
	mov	rdx, QWORD PTR file$[rbp]
	mov	rcx, QWORD PTR fsys$[rbp]
	call	AuVFSNodeReadBlock
	mov	QWORD PTR read_bytes$[rbp], rax

; 150  : 	
; 151  : 	IMAGE_DOS_HEADER* dos = (IMAGE_DOS_HEADER*)buf;

	mov	rax, QWORD PTR buf$[rbp]
	mov	QWORD PTR dos$[rbp], rax

; 152  : 	PIMAGE_NT_HEADERS nt = raw_offset<PIMAGE_NT_HEADERS>(dos, dos->e_lfanew);

	mov	rax, QWORD PTR dos$[rbp]
	movzx	eax, WORD PTR [rax+60]
	mov	edx, eax
	mov	rcx, QWORD PTR dos$[rbp]
	call	??$raw_offset@PEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@@@YAPEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@H@Z ; raw_offset<_IMAGE_NT_HEADERS_PE32PLUS *,_IMAGE_DOS_HEADER_ *>
	mov	QWORD PTR nt$[rbp], rax

; 153  : 	PSECTION_HEADER secthdr = raw_offset<PSECTION_HEADER>(&nt->OptionalHeader, nt->FileHeader.SizeOfOptionaHeader);

	mov	rax, QWORD PTR nt$[rbp]
	movzx	eax, WORD PTR [rax+20]
	mov	rcx, QWORD PTR nt$[rbp]
	add	rcx, 24
	mov	edx, eax
	call	??$raw_offset@PEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@@@YAPEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@H@Z ; raw_offset<_IMAGE_SECTION_HEADER *,_IMAGE_OPTIONAL_HEADER_PE32PLUS *>
	mov	QWORD PTR secthdr$[rbp], rax

; 154  : 
; 155  : 	uint64_t _image_base_ = nt->OptionalHeader.ImageBase;

	mov	rax, QWORD PTR nt$[rbp]
	mov	rax, QWORD PTR [rax+48]
	mov	QWORD PTR _image_base_$[rbp], rax

; 156  : 	entry ent = (entry)(nt->OptionalHeader.AddressOfEntryPoint + nt->OptionalHeader.ImageBase);

	mov	rax, QWORD PTR nt$[rbp]
	mov	eax, DWORD PTR [rax+40]
	mov	rcx, QWORD PTR nt$[rbp]
	add	rax, QWORD PTR [rcx+48]
	mov	QWORD PTR ent$[rbp], rax

; 157  : 
; 158  : 	uint64_t* cr3 = proc->cr3;

	mov	rax, QWORD PTR proc$[rbp]
	mov	rax, QWORD PTR [rax+24]
	mov	QWORD PTR cr3$[rbp], rax

; 159  : 
; 160  : 	/* check if the binary is dynamically linked */
; 161  : 	if (AuPEFileIsDynamicallyLinked(buf)) {

	mov	rcx, QWORD PTR buf$[rbp]
	call	?AuPEFileIsDynamicallyLinked@@YA_NPEAX@Z ; AuPEFileIsDynamicallyLinked
	movzx	eax, al
	test	eax, eax
	je	$LN17@AuLoadExec

; 162  : 		/* free the current file*/
; 163  : 		kfree(file);

	mov	rcx, QWORD PTR file$[rbp]
	call	kfree

; 164  : 		AuPmmngrFree((void*)V2P((sizeof(buf))));

	mov	ecx, 8
	call	V2P
	mov	rcx, rax
	call	AuPmmngrFree

; 165  : 
; 166  : 		/* now load XELoader process, which'll further
; 167  : 		 * link this dynamic process with its shared
; 168  : 		 * libraries
; 169  : 		 */
; 170  : 		int char_cnt = 0;

	mov	DWORD PTR char_cnt$1[rbp], 0

; 171  : 		for (int i = 0; i < argc; i++){

	mov	DWORD PTR i$2[rbp], 0
	jmp	SHORT $LN4@AuLoadExec
$LN2@AuLoadExec:
	mov	eax, DWORD PTR i$2[rbp]
	inc	eax
	mov	DWORD PTR i$2[rbp], eax
$LN4@AuLoadExec:
	mov	eax, DWORD PTR argc$[rbp]
	cmp	DWORD PTR i$2[rbp], eax
	jge	SHORT $LN3@AuLoadExec

; 172  : 			char_cnt += strlen(argv[i]);

	movsxd	rax, DWORD PTR i$2[rbp]
	mov	rcx, QWORD PTR argv$[rbp]
	mov	rcx, QWORD PTR [rcx+rax*8]
	call	strlen
	movsxd	rcx, DWORD PTR char_cnt$1[rbp]
	add	rcx, rax
	mov	rax, rcx
	mov	DWORD PTR char_cnt$1[rbp], eax

; 173  : 		}

	jmp	SHORT $LN2@AuLoadExec
$LN3@AuLoadExec:

; 174  : 		/* here we allocate extra memories for each strings
; 175  : 		 * because we cannot allocate it to stack, the stack
; 176  : 		 * will get changed once we enter the desired thread
; 177  : 		 */
; 178  : 		int num_args_ = 1 + argc;

	mov	eax, DWORD PTR argc$[rbp]
	inc	eax
	mov	DWORD PTR num_args_$3[rbp], eax

; 179  : 		int string_len = strlen(filename);

	mov	rcx, QWORD PTR filename$[rbp]
	call	strlen
	mov	DWORD PTR string_len$4[rbp], eax

; 180  : 		char* file__ = (char*)kmalloc(string_len);

	mov	ecx, DWORD PTR string_len$4[rbp]
	call	kmalloc
	mov	QWORD PTR file__$5[rbp], rax

; 181  : 		strcpy(file__, filename);

	mov	rdx, QWORD PTR filename$[rbp]
	mov	rcx, QWORD PTR file__$5[rbp]
	call	strcpy

; 182  : 
; 183  : 		/* BUGG: if kmalloc allocates smaller memory below than 15 bytes,
; 184  : 		 * it crashes while freeing the allocated memory, that's why we
; 185  : 		 * allocate memory of size (string_len + char_cnt) * sizeof(char) for
; 186  : 		 * argument array
; 187  : 		 */
; 188  : 		char** argvs = (char**)kmalloc((string_len + char_cnt) * sizeof(char));

	mov	eax, DWORD PTR char_cnt$1[rbp]
	mov	ecx, DWORD PTR string_len$4[rbp]
	add	ecx, eax
	mov	eax, ecx
	mov	ecx, eax
	call	kmalloc
	mov	QWORD PTR argvs$6[rbp], rax

; 189  : 		memset(argvs, 0, (string_len + char_cnt) * sizeof(char));

	mov	eax, DWORD PTR char_cnt$1[rbp]
	mov	ecx, DWORD PTR string_len$4[rbp]
	add	ecx, eax
	mov	eax, ecx
	mov	r8d, eax
	xor	edx, edx
	mov	rcx, QWORD PTR argvs$6[rbp]
	call	memset

; 190  : 		argvs[0] = file__;

	mov	eax, 8
	imul	rax, rax, 0
	mov	rcx, QWORD PTR argvs$6[rbp]
	mov	rdx, QWORD PTR file__$5[rbp]
	mov	QWORD PTR [rcx+rax], rdx

; 191  : 
; 192  : 		for (int i = 0; i < argc; i++){

	mov	DWORD PTR i$7[rbp], 0
	jmp	SHORT $LN7@AuLoadExec
$LN5@AuLoadExec:
	mov	eax, DWORD PTR i$7[rbp]
	inc	eax
	mov	DWORD PTR i$7[rbp], eax
$LN7@AuLoadExec:
	mov	eax, DWORD PTR argc$[rbp]
	cmp	DWORD PTR i$7[rbp], eax
	jge	SHORT $LN6@AuLoadExec

; 193  : 			char* argpass = (char*)kmalloc(strlen(argv[i]));

	movsxd	rax, DWORD PTR i$7[rbp]
	mov	rcx, QWORD PTR argv$[rbp]
	mov	rcx, QWORD PTR [rcx+rax*8]
	call	strlen
	mov	ecx, eax
	call	kmalloc
	mov	QWORD PTR argpass$8[rbp], rax

; 194  : 			memset(argpass, 0, strlen(argv[i]));

	movsxd	rax, DWORD PTR i$7[rbp]
	mov	rcx, QWORD PTR argv$[rbp]
	mov	rcx, QWORD PTR [rcx+rax*8]
	call	strlen
	mov	r8d, eax
	xor	edx, edx
	mov	rcx, QWORD PTR argpass$8[rbp]
	call	memset

; 195  : 			strcpy(argpass, argv[i]);

	movsxd	rax, DWORD PTR i$7[rbp]
	mov	rcx, QWORD PTR argv$[rbp]
	mov	rdx, QWORD PTR [rcx+rax*8]
	mov	rcx, QWORD PTR argpass$8[rbp]
	call	strcpy

; 196  : 			argvs[1 + i] = argpass;

	mov	eax, DWORD PTR i$7[rbp]
	inc	eax
	cdqe
	mov	rcx, QWORD PTR argvs$6[rbp]
	mov	rdx, QWORD PTR argpass$8[rbp]
	mov	QWORD PTR [rcx+rax*8], rdx

; 197  : 		}

	jmp	$LN5@AuLoadExec
$LN6@AuLoadExec:

; 198  : 	
; 199  : 
; 200  : 		if (argc > 0){

	cmp	DWORD PTR argc$[rbp], 0
	jle	SHORT $LN18@AuLoadExec

; 201  : 			kfree(argv);

	mov	rcx, QWORD PTR argv$[rbp]
	call	kfree
$LN18@AuLoadExec:

; 202  : 		}
; 203  : 
; 204  : 		AuReleaseSpinlock(loader_lock);

	mov	rcx, QWORD PTR ?loader_lock@@3PEAU_spinlock_@@EA ; loader_lock
	call	AuReleaseSpinlock

; 205  : 
; 206  : 		/* load the loader */
; 207  : 		return AuLoadExecToProcess(proc, "/xeldr.exe", num_args_, argvs);

	mov	r9, QWORD PTR argvs$6[rbp]
	mov	r8d, DWORD PTR num_args_$3[rbp]
	lea	rdx, OFFSET FLAT:??_C@_0L@PMEAHFBD@?1xeldr?4exe@
	mov	rcx, QWORD PTR proc$[rbp]
	call	?AuLoadExecToProcess@@YAHPEAU_au_proc_@@PEADHPEAPEAD@Z ; AuLoadExecToProcess
	jmp	$LN1@AuLoadExec
$LN17@AuLoadExec:

; 208  : 	}
; 209  : 
; 210  : 	AuMapPageEx(cr3, V2P((size_t)buf), _image_base_, X86_64_PAGING_USER);

	mov	rcx, QWORD PTR buf$[rbp]
	call	V2P
	mov	r9b, 4
	mov	r8, QWORD PTR _image_base_$[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR cr3$[rbp]
	call	AuMapPageEx

; 211  : 
; 212  : 	/* this should be memory mapped, i.e, sections should be
; 213  : 	 * memory mapped
; 214  : 	 */
; 215  : 	for (size_t i = 0; i < nt->FileHeader.NumberOfSections; ++i) {

	mov	QWORD PTR i$9[rbp], 0
	jmp	SHORT $LN10@AuLoadExec
$LN8@AuLoadExec:
	mov	rax, QWORD PTR i$9[rbp]
	inc	rax
	mov	QWORD PTR i$9[rbp], rax
$LN10@AuLoadExec:
	mov	rax, QWORD PTR nt$[rbp]
	movzx	eax, WORD PTR [rax+6]
	cmp	QWORD PTR i$9[rbp], rax
	jae	$LN9@AuLoadExec

; 216  : 		size_t sect_ld_addr = _image_base_ + secthdr[i].VirtualAddress;

	imul	rax, QWORD PTR i$9[rbp], 40		; 00000028H
	mov	rcx, QWORD PTR secthdr$[rbp]
	mov	eax, DWORD PTR [rcx+rax+12]
	mov	rcx, QWORD PTR _image_base_$[rbp]
	add	rcx, rax
	mov	rax, rcx
	mov	QWORD PTR sect_ld_addr$10[rbp], rax

; 217  : 		size_t sect_sz = secthdr[i].VirtualSize;

	imul	rax, QWORD PTR i$9[rbp], 40		; 00000028H
	mov	rcx, QWORD PTR secthdr$[rbp]
	mov	eax, DWORD PTR [rcx+rax+8]
	mov	QWORD PTR sect_sz$11[rbp], rax

; 218  : 		int req_pages = sect_sz / PAGE_SIZE;

	xor	edx, edx
	mov	rax, QWORD PTR sect_sz$11[rbp]
	mov	ecx, 4096				; 00001000H
	div	rcx
	mov	DWORD PTR req_pages$12[rbp], eax

; 219  : 		if ((sect_sz % PAGE_SIZE) != 0)

	xor	edx, edx
	mov	rax, QWORD PTR sect_sz$11[rbp]
	mov	ecx, 4096				; 00001000H
	div	rcx
	mov	rax, rdx
	test	rax, rax
	je	SHORT $LN19@AuLoadExec

; 220  : 			req_pages++;

	mov	eax, DWORD PTR req_pages$12[rbp]
	inc	eax
	mov	DWORD PTR req_pages$12[rbp], eax
$LN19@AuLoadExec:

; 221  : 
; 222  : 		for (int j = 0; j < req_pages; j++) {

	mov	DWORD PTR j$13[rbp], 0
	jmp	SHORT $LN13@AuLoadExec
$LN11@AuLoadExec:
	mov	eax, DWORD PTR j$13[rbp]
	inc	eax
	mov	DWORD PTR j$13[rbp], eax
$LN13@AuLoadExec:
	mov	eax, DWORD PTR req_pages$12[rbp]
	cmp	DWORD PTR j$13[rbp], eax
	jge	SHORT $LN12@AuLoadExec

; 223  : 			uint64_t *block = (uint64_t*)P2V((uint64_t)AuPmmngrAlloc());/*(buf + secthdr[i].PointerToRawData);*/

	call	AuPmmngrAlloc
	mov	rcx, rax
	call	P2V
	mov	QWORD PTR block$14[rbp], rax

; 224  : 			AuVFSNodeReadBlock(fsys, file, (uint64_t*)V2P((size_t)block));

	mov	rcx, QWORD PTR block$14[rbp]
	call	V2P
	mov	r8, rax
	mov	rdx, QWORD PTR file$[rbp]
	mov	rcx, QWORD PTR fsys$[rbp]
	call	AuVFSNodeReadBlock

; 225  : 			AuMapPageEx(cr3, V2P((size_t)block), sect_ld_addr + static_cast<uint64_t>(j) * PAGE_SIZE, X86_64_PAGING_USER);

	movsxd	rax, DWORD PTR j$13[rbp]
	imul	rax, rax, 4096				; 00001000H
	mov	rcx, QWORD PTR sect_ld_addr$10[rbp]
	add	rcx, rax
	mov	rax, rcx
	mov	QWORD PTR tv259[rbp], rax
	mov	rcx, QWORD PTR block$14[rbp]
	call	V2P
	mov	r9b, 4
	mov	rcx, QWORD PTR tv259[rbp]
	mov	r8, rcx
	mov	rdx, rax
	mov	rcx, QWORD PTR cr3$[rbp]
	call	AuMapPageEx

; 226  : 		}

	jmp	$LN11@AuLoadExec
$LN12@AuLoadExec:

; 227  : 	}

	jmp	$LN8@AuLoadExec
$LN9@AuLoadExec:

; 228  : 
; 229  : 	
; 230  : 	/* create a vmarea segment here */
; 231  : 	AuVMArea* textarea = AuVMAreaCreate(_image_base_, VIRT_ADDR_ALIGN(_image_base_ + nt->OptionalHeader.SizeOfImage),

	mov	rax, QWORD PTR nt$[rbp]
	mov	eax, DWORD PTR [rax+80]
	mov	rcx, QWORD PTR _image_base_$[rbp]
	add	rcx, rax
	mov	rax, rcx
	and	rax, -4096				; fffffffffffff000H
	mov	BYTE PTR [rsp+32], 1
	xor	r9d, r9d
	mov	r8b, 5
	mov	rdx, rax
	mov	rcx, QWORD PTR _image_base_$[rbp]
	call	?AuVMAreaCreate@@YAPEAU_vm_area_@@_K0E0E@Z ; AuVMAreaCreate
	mov	QWORD PTR textarea$[rbp], rax

; 232  : 		VM_PRESENT | VM_EXEC,0, VM_TYPE_TEXT);
; 233  : 	textarea->len = textarea->end - textarea->start;

	mov	rax, QWORD PTR textarea$[rbp]
	mov	rcx, QWORD PTR textarea$[rbp]
	mov	rcx, QWORD PTR [rcx]
	mov	rax, QWORD PTR [rax+8]
	sub	rax, rcx
	mov	rcx, QWORD PTR textarea$[rbp]
	mov	QWORD PTR [rcx+16], rax

; 234  : 	textarea->file = 0;

	mov	rax, QWORD PTR textarea$[rbp]
	mov	QWORD PTR [rax+32], 0

; 235  : 	AuInsertVMArea(proc, textarea);

	mov	rdx, QWORD PTR textarea$[rbp]
	mov	rcx, QWORD PTR proc$[rbp]
	call	?AuInsertVMArea@@YAXPEAU_au_proc_@@PEAU_vm_area_@@@Z ; AuInsertVMArea

; 236  : 
; 237  : 
; 238  : 	uint64_t stack = proc->_main_stack_;

	mov	rax, QWORD PTR proc$[rbp]
	mov	rax, QWORD PTR [rax+48]
	mov	QWORD PTR stack$[rbp], rax

; 239  : 
; 240  : 	/* create the user mode entry structure*/
; 241  : 	AuUserEntry *entry = (AuUserEntry*)kmalloc(sizeof(AuUserEntry));

	mov	ecx, 60					; 0000003cH
	call	kmalloc
	mov	QWORD PTR entry$[rbp], rax

; 242  : 	entry->entrypoint = (uint64_t)ent;

	mov	rax, QWORD PTR entry$[rbp]
	mov	rcx, QWORD PTR ent$[rbp]
	mov	QWORD PTR [rax], rcx

; 243  : 	entry->cs = SEGVAL(GDT_ENTRY_USER_CODE, 3);

	mov	rax, QWORD PTR entry$[rbp]
	mov	QWORD PTR [rax+16], 43			; 0000002bH

; 244  : 	entry->ss = SEGVAL(GDT_ENTRY_USER_DATA, 3);

	mov	rax, QWORD PTR entry$[rbp]
	mov	QWORD PTR [rax+24], 35			; 00000023H

; 245  : 	entry->rsp = stack;

	mov	rax, QWORD PTR entry$[rbp]
	mov	rcx, QWORD PTR stack$[rbp]
	mov	QWORD PTR [rax+8], rcx

; 246  : 	entry->stackBase = stack;

	mov	rax, QWORD PTR entry$[rbp]
	mov	rcx, QWORD PTR stack$[rbp]
	mov	QWORD PTR [rax+52], rcx

; 247  : 	int num_args = argc;

	mov	eax, DWORD PTR argc$[rbp]
	mov	DWORD PTR num_args$[rbp], eax

; 248  : 	uint64_t argvaddr = 0;

	mov	QWORD PTR argvaddr$[rbp], 0

; 249  : 	if (num_args) {

	cmp	DWORD PTR num_args$[rbp], 0
	je	SHORT $LN20@AuLoadExec

; 250  : 		/* Allocate a memory for passing arguments */
; 251  : 		char* args = (char*)P2V((size_t)AuPmmngrAlloc());

	call	AuPmmngrAlloc
	mov	rcx, rax
	call	P2V
	mov	QWORD PTR args$15[rbp], rax

; 252  : 		memset(args, 0, PAGE_SIZE);

	mov	r8d, 4096				; 00001000H
	xor	edx, edx
	mov	rcx, QWORD PTR args$15[rbp]
	call	memset

; 253  : 		if (!AuMapPageEx(proc->cr3, (size_t)V2P((size_t)args), 0x4000, X86_64_PAGING_USER)){

	mov	rcx, QWORD PTR args$15[rbp]
	call	V2P
	mov	r9b, 4
	mov	r8d, 16384				; 00004000H
	mov	rdx, rax
	mov	rax, QWORD PTR proc$[rbp]
	mov	rcx, QWORD PTR [rax+24]
	call	AuMapPageEx
	movzx	eax, al
	test	eax, eax
	jne	SHORT $LN21@AuLoadExec

; 254  : 			AuTextOut("Arguments address already mapped \n");

	lea	rcx, OFFSET FLAT:??_C@_0CD@GHFDEDL@Arguments?5address?5already?5mappe@
	call	AuTextOut

; 255  : 			argvaddr = 0;

	mov	QWORD PTR argvaddr$[rbp], 0

; 256  : 		}

	jmp	SHORT $LN22@AuLoadExec
$LN21@AuLoadExec:

; 257  : 		else{
; 258  : 			argvaddr = 0x4000;

	mov	QWORD PTR argvaddr$[rbp], 16384		; 00004000H
$LN22@AuLoadExec:
$LN20@AuLoadExec:

; 259  : 		}
; 260  : 	}
; 261  : 	entry->argvaddr = argvaddr;	

	mov	rax, QWORD PTR entry$[rbp]
	mov	rcx, QWORD PTR argvaddr$[rbp]
	mov	QWORD PTR [rax+36], rcx

; 262  : 	entry->num_args = num_args;

	mov	rax, QWORD PTR entry$[rbp]
	mov	ecx, DWORD PTR num_args$[rbp]
	mov	DWORD PTR [rax+32], ecx

; 263  : 	entry->argvs = argv;

	mov	rax, QWORD PTR entry$[rbp]
	mov	rcx, QWORD PTR argv$[rbp]
	mov	QWORD PTR [rax+44], rcx

; 264  : 	AuThread *thr = AuCreateKthread(AuProcessEntUser, P2V((uint64_t)AuPmmngrAlloc() + 4096), V2P((uint64_t)cr3), proc->name);

	mov	rax, QWORD PTR proc$[rbp]
	add	rax, 4
	mov	QWORD PTR tv344[rbp], rax
	mov	rcx, QWORD PTR cr3$[rbp]
	call	V2P
	mov	QWORD PTR tv346[rbp], rax
	call	AuPmmngrAlloc
	add	rax, 4096				; 00001000H
	mov	rcx, rax
	call	P2V
	mov	rcx, QWORD PTR tv344[rbp]
	mov	r9, rcx
	mov	rcx, QWORD PTR tv346[rbp]
	mov	r8, rcx
	mov	rdx, rax
	lea	rcx, OFFSET FLAT:?AuProcessEntUser@@YAX_K@Z ; AuProcessEntUser
	call	AuCreateKthread
	mov	QWORD PTR thr$[rbp], rax

; 265  : 	thr->frame.rsp -= 32; // just decrease the stack by 32 for arguments passing

	mov	rax, QWORD PTR thr$[rbp]
	mov	rax, QWORD PTR [rax+8]
	sub	rax, 32					; 00000020H
	mov	rcx, QWORD PTR thr$[rbp]
	mov	QWORD PTR [rcx+8], rax

; 266  : 	thr->frame.kern_esp = thr->frame.rsp;

	mov	rax, QWORD PTR thr$[rbp]
	mov	rcx, QWORD PTR thr$[rbp]
	mov	rcx, QWORD PTR [rcx+8]
	mov	QWORD PTR [rax+200], rcx

; 267  : 	thr->uentry = entry;

	mov	rax, QWORD PTR thr$[rbp]
	mov	rcx, QWORD PTR entry$[rbp]
	mov	QWORD PTR [rax+641], rcx

; 268  : 	thr->priviledge |= THREAD_LEVEL_USER | THREAD_LEVEL_MAIN_THREAD | ~THREAD_LEVEL_SUBTHREAD;

	mov	rax, QWORD PTR thr$[rbp]
	movzx	eax, BYTE PTR [rax+311]
	or	eax, -5
	mov	rcx, QWORD PTR thr$[rbp]
	mov	BYTE PTR [rcx+311], al

; 269  : 	proc->main_thread = thr;

	mov	rax, QWORD PTR proc$[rbp]
	mov	rcx, QWORD PTR thr$[rbp]
	mov	QWORD PTR [rax+72], rcx

; 270  : 	proc->num_thread = 1;

	mov	rax, QWORD PTR proc$[rbp]
	mov	BYTE PTR [rax+80], 1

; 271  : 	proc->entry_point = ent;

	mov	rax, QWORD PTR proc$[rbp]
	mov	rcx, QWORD PTR ent$[rbp]
	mov	QWORD PTR [rax+88], rcx

; 272  : 	proc->_image_base_ = _image_base_;

	mov	rax, QWORD PTR proc$[rbp]
	mov	rcx, QWORD PTR _image_base_$[rbp]
	mov	QWORD PTR [rax+40], rcx

; 273  : 	proc->_image_size_ = file->size;

	mov	rax, QWORD PTR file$[rbp]
	mov	eax, DWORD PTR [rax+32]
	mov	rcx, QWORD PTR proc$[rbp]
	mov	QWORD PTR [rcx+32], rax

; 274  : 	proc->state = PROCESS_STATE_READY;

	mov	rax, QWORD PTR proc$[rbp]
	mov	BYTE PTR [rax+20], 2

; 275  : 	proc->file = file;

	mov	rax, QWORD PTR proc$[rbp]
	mov	rcx, QWORD PTR file$[rbp]
	mov	QWORD PTR [rax+1056], rcx

; 276  : 	proc->fsys = fsys;

	mov	rax, QWORD PTR proc$[rbp]
	mov	rcx, QWORD PTR fsys$[rbp]
	mov	QWORD PTR [rax+1064], rcx

; 277  : 	thr->procSlot = proc;

	mov	rax, QWORD PTR thr$[rbp]
	mov	rcx, QWORD PTR proc$[rbp]
	mov	QWORD PTR [rax+649], rcx

; 278  : 	AuReleaseSpinlock(loader_lock);

	mov	rcx, QWORD PTR ?loader_lock@@3PEAU_spinlock_@@EA ; loader_lock
	call	AuReleaseSpinlock

; 279  : 	return 0;

	xor	eax, eax
$LN1@AuLoadExec:

; 280  : }

	lea	rsp, QWORD PTR [rbp+320]
	pop	rbp
	ret	0
?AuLoadExecToProcess@@YAHPEAU_au_proc_@@PEADHPEAPEAD@Z ENDP ; AuLoadExecToProcess
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\loader.cpp
;	COMDAT ?AuInitialiseLoader@@YAXXZ
_TEXT	SEGMENT
?AuInitialiseLoader@@YAXXZ PROC				; AuInitialiseLoader, COMDAT

; 282  : void AuInitialiseLoader() {

$LN3:
	push	rbp
	sub	rsp, 96					; 00000060H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__95171535_loader@cpp
	call	__CheckForDebuggerJustMyCode

; 283  : 	loader_mutex = NULL;

	mov	QWORD PTR ?loader_mutex@@3PEAU_mutex_@@EA, 0 ; loader_mutex

; 284  : 	loader_lock = AuCreateSpinlock(false);

	xor	ecx, ecx
	call	AuCreateSpinlock
	mov	QWORD PTR ?loader_lock@@3PEAU_spinlock_@@EA, rax ; loader_lock

; 285  : 	loader_mutex = AuCreateMutex();

	call	AuCreateMutex
	mov	QWORD PTR ?loader_mutex@@3PEAU_mutex_@@EA, rax ; loader_mutex

; 286  : 	is_loader_busy = false;

	mov	BYTE PTR ?is_loader_busy@@3_NA, 0	; is_loader_busy

; 287  : }

	lea	rsp, QWORD PTR [rbp+64]
	pop	rbp
	ret	0
?AuInitialiseLoader@@YAXXZ ENDP				; AuInitialiseLoader
_TEXT	ENDS
END
