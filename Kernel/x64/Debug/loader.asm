; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?loader_lock@@3PEAU_spinlock_@@EA		; loader_lock
_BSS	SEGMENT
?loader_lock@@3PEAU_spinlock_@@EA DQ 01H DUP (?)	; loader_lock
_BSS	ENDS
PUBLIC	?AuInitialiseLoader@@YAXXZ			; AuInitialiseLoader
PUBLIC	?AuLoadExecToProcess@@YAXPEAU_au_proc_@@PEADHPEAPEAD@Z ; AuLoadExecToProcess
PUBLIC	?AuProcessEntUser@@YAX_K@Z			; AuProcessEntUser
PUBLIC	??$raw_offset@PEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@@@YAPEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@H@Z ; raw_offset<_IMAGE_NT_HEADERS_PE32PLUS * __ptr64,_IMAGE_DOS_HEADER_ * __ptr64>
PUBLIC	??$raw_offset@PEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@@@YAPEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@H@Z ; raw_offset<_IMAGE_SECTION_HEADER * __ptr64,_IMAGE_OPTIONAL_HEADER_PE32PLUS * __ptr64>
EXTRN	AuVFSOpen:PROC
EXTRN	AuVFSFind:PROC
EXTRN	AuVFSNodeReadBlock:PROC
EXTRN	AuCreateKthread:PROC
EXTRN	strlen:PROC
EXTRN	memset:PROC
EXTRN	AuMapPageEx:PROC
EXTRN	AuPmmngrAlloc:PROC
EXTRN	P2V:PROC
EXTRN	V2P:PROC
EXTRN	kmalloc:PROC
EXTRN	kfree:PROC
EXTRN	?AuInsertVMArea@@YAXPEAU_au_proc_@@PEAU_vm_area_@@@Z:PROC ; AuInsertVMArea
EXTRN	?AuVMAreaCreate@@YAPEAU_vm_area_@@_K0E0E@Z:PROC	; AuVMAreaCreate
EXTRN	x64_cli:PROC
EXTRN	x64_enter_user:PROC
EXTRN	AuCreateSpinlock:PROC
EXTRN	AuAcquireSpinlock:PROC
EXTRN	AuReleaseSpinlock:PROC
pdata	SEGMENT
$pdata$?AuInitialiseLoader@@YAXXZ DD imagerel $LN3
	DD	imagerel $LN3+23
	DD	imagerel $unwind$?AuInitialiseLoader@@YAXXZ
$pdata$?AuLoadExecToProcess@@YAXPEAU_au_proc_@@PEADHPEAPEAD@Z DD imagerel $LN10
	DD	imagerel $LN10+1321
	DD	imagerel $unwind$?AuLoadExecToProcess@@YAXPEAU_au_proc_@@PEADHPEAPEAD@Z
$pdata$?AuProcessEntUser@@YAX_K@Z DD imagerel $LN26
	DD	imagerel $LN26+503
	DD	imagerel $unwind$?AuProcessEntUser@@YAX_K@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?AuInitialiseLoader@@YAXXZ DD 010401H
	DD	04204H
$unwind$?AuLoadExecToProcess@@YAXPEAU_au_proc_@@PEADHPEAPEAD@Z DD 021b01H
	DD	01f011bH
$unwind$?AuProcessEntUser@@YAX_K@Z DD 010901H
	DD	08209H
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\basehdr\stdint.h
;	COMDAT ??$raw_offset@PEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@@@YAPEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@H@Z
_TEXT	SEGMENT
p1$ = 8
offset$ = 16
??$raw_offset@PEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@@@YAPEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@H@Z PROC ; raw_offset<_IMAGE_SECTION_HEADER * __ptr64,_IMAGE_OPTIONAL_HEADER_PE32PLUS * __ptr64>, COMDAT

; 207  : 	{

	mov	DWORD PTR [rsp+16], edx
	mov	QWORD PTR [rsp+8], rcx

; 208  : 		return (T)((size_t)p1 + offset);

	movsxd	rax, DWORD PTR offset$[rsp]
	mov	rcx, QWORD PTR p1$[rsp]
	add	rcx, rax
	mov	rax, rcx

; 209  : 	};

	ret	0
??$raw_offset@PEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@@@YAPEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@H@Z ENDP ; raw_offset<_IMAGE_SECTION_HEADER * __ptr64,_IMAGE_OPTIONAL_HEADER_PE32PLUS * __ptr64>
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\basehdr\stdint.h
;	COMDAT ??$raw_offset@PEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@@@YAPEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@H@Z
_TEXT	SEGMENT
p1$ = 8
offset$ = 16
??$raw_offset@PEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@@@YAPEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@H@Z PROC ; raw_offset<_IMAGE_NT_HEADERS_PE32PLUS * __ptr64,_IMAGE_DOS_HEADER_ * __ptr64>, COMDAT

; 207  : 	{

	mov	DWORD PTR [rsp+16], edx
	mov	QWORD PTR [rsp+8], rcx

; 208  : 		return (T)((size_t)p1 + offset);

	movsxd	rax, DWORD PTR offset$[rsp]
	mov	rcx, QWORD PTR p1$[rsp]
	add	rcx, rax
	mov	rax, rcx

; 209  : 	};

	ret	0
??$raw_offset@PEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@@@YAPEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@H@Z ENDP ; raw_offset<_IMAGE_NT_HEADERS_PE32PLUS * __ptr64,_IMAGE_DOS_HEADER_ * __ptr64>
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\loader.cpp
_TEXT	SEGMENT
i$1 = 32
j$2 = 36
ent$ = 40
str$3 = 48
argvs$ = 56
rcx$ = 80
?AuProcessEntUser@@YAX_K@Z PROC				; AuProcessEntUser

; 78   : void AuProcessEntUser(uint64_t rcx) {

$LN26:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 72					; 00000048H

; 79   : 	x64_cli();

	call	x64_cli

; 80   : 	AuUserEntry* ent = (AuUserEntry*)rcx;

	mov	rax, QWORD PTR rcx$[rsp]
	mov	QWORD PTR ent$[rsp], rax

; 81   : 	/* do all arguments passing stuff, arguments
; 82   : 	 * are passed as strings to stack
; 83   : 	 */
; 84   : 	char** argvs = (char**)ent->argvaddr;

	mov	rax, QWORD PTR ent$[rsp]
	mov	rax, QWORD PTR [rax+40]
	mov	QWORD PTR argvs$[rsp], rax

; 85   : 	for (int i = 0; i < ent->num_args; i++) {

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN23@AuProcessE
$LN22@AuProcessE:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN23@AuProcessE:
	mov	rax, QWORD PTR ent$[rsp]
	mov	eax, DWORD PTR [rax+32]
	cmp	DWORD PTR i$1[rsp], eax
	jge	$LN21@AuProcessE

; 86   : 		char* str = ent->argvs[i];

	movsxd	rax, DWORD PTR i$1[rsp]
	mov	rcx, QWORD PTR ent$[rsp]
	mov	rcx, QWORD PTR [rcx+48]
	mov	rax, QWORD PTR [rcx+rax*8]
	mov	QWORD PTR str$3[rsp], rax

; 87   : 		for (int j = strlen(str); j >= 0; j--) {

	mov	rcx, QWORD PTR str$3[rsp]
	call	strlen
	mov	DWORD PTR j$2[rsp], eax
	jmp	SHORT $LN20@AuProcessE
$LN19@AuProcessE:
	mov	eax, DWORD PTR j$2[rsp]
	dec	eax
	mov	DWORD PTR j$2[rsp], eax
$LN20@AuProcessE:
	cmp	DWORD PTR j$2[rsp], 0
	jl	SHORT $LN18@AuProcessE
$LN17@AuProcessE:

; 88   : 			PUSH(ent->rsp, char, str[j]);

	mov	rax, QWORD PTR ent$[rsp]
	mov	rax, QWORD PTR [rax+8]
	dec	rax
	mov	rcx, QWORD PTR ent$[rsp]
	mov	QWORD PTR [rcx+8], rax
$LN14@AuProcessE:
	mov	rax, QWORD PTR ent$[rsp]
	mov	rax, QWORD PTR [rax+8]
	and	rax, 0
	test	rax, rax
	je	SHORT $LN13@AuProcessE
	mov	rax, QWORD PTR ent$[rsp]
	mov	rax, QWORD PTR [rax+8]
	dec	rax
	mov	rcx, QWORD PTR ent$[rsp]
	mov	QWORD PTR [rcx+8], rax
	jmp	SHORT $LN14@AuProcessE
$LN13@AuProcessE:
	movsxd	rax, DWORD PTR j$2[rsp]
	mov	rcx, QWORD PTR ent$[rsp]
	mov	rcx, QWORD PTR [rcx+8]
	mov	rdx, QWORD PTR str$3[rsp]
	movzx	eax, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx], al
	xor	eax, eax
	test	eax, eax
	jne	SHORT $LN17@AuProcessE

; 89   : 		}

	jmp	SHORT $LN19@AuProcessE
$LN18@AuProcessE:

; 90   : 		argvs[i] = (char*)ent->rsp;

	movsxd	rax, DWORD PTR i$1[rsp]
	mov	rcx, QWORD PTR argvs$[rsp]
	mov	rdx, QWORD PTR ent$[rsp]
	mov	rdx, QWORD PTR [rdx+8]
	mov	QWORD PTR [rcx+rax*8], rdx

; 91   : 	}

	jmp	$LN22@AuProcessE
$LN21@AuProcessE:

; 92   : 
; 93   : 	kfree(ent->argvs);

	mov	rax, QWORD PTR ent$[rsp]
	mov	rcx, QWORD PTR [rax+48]
	call	kfree
$LN12@AuProcessE:

; 94   : 
; 95   : 	PUSH(ent->rsp, size_t, (size_t)ent->argvaddr);

	mov	rax, QWORD PTR ent$[rsp]
	mov	rax, QWORD PTR [rax+8]
	sub	rax, 8
	mov	rcx, QWORD PTR ent$[rsp]
	mov	QWORD PTR [rcx+8], rax
$LN9@AuProcessE:
	mov	rax, QWORD PTR ent$[rsp]
	mov	rax, QWORD PTR [rax+8]
	and	rax, 7
	test	rax, rax
	je	SHORT $LN8@AuProcessE
	mov	rax, QWORD PTR ent$[rsp]
	mov	rax, QWORD PTR [rax+8]
	dec	rax
	mov	rcx, QWORD PTR ent$[rsp]
	mov	QWORD PTR [rcx+8], rax
	jmp	SHORT $LN9@AuProcessE
$LN8@AuProcessE:
	mov	rax, QWORD PTR ent$[rsp]
	mov	rax, QWORD PTR [rax+8]
	mov	rcx, QWORD PTR ent$[rsp]
	mov	rcx, QWORD PTR [rcx+40]
	mov	QWORD PTR [rax], rcx
	xor	eax, eax
	test	eax, eax
	jne	SHORT $LN12@AuProcessE
$LN7@AuProcessE:

; 96   : 	PUSH(ent->rsp, size_t, ent->num_args);

	mov	rax, QWORD PTR ent$[rsp]
	mov	rax, QWORD PTR [rax+8]
	sub	rax, 8
	mov	rcx, QWORD PTR ent$[rsp]
	mov	QWORD PTR [rcx+8], rax
$LN4@AuProcessE:
	mov	rax, QWORD PTR ent$[rsp]
	mov	rax, QWORD PTR [rax+8]
	and	rax, 7
	test	rax, rax
	je	SHORT $LN3@AuProcessE
	mov	rax, QWORD PTR ent$[rsp]
	mov	rax, QWORD PTR [rax+8]
	dec	rax
	mov	rcx, QWORD PTR ent$[rsp]
	mov	QWORD PTR [rcx+8], rax
	jmp	SHORT $LN4@AuProcessE
$LN3@AuProcessE:
	mov	rax, QWORD PTR ent$[rsp]
	movsxd	rax, DWORD PTR [rax+32]
	mov	rcx, QWORD PTR ent$[rsp]
	mov	rcx, QWORD PTR [rcx+8]
	mov	QWORD PTR [rcx], rax
	xor	eax, eax
	test	eax, eax
	jne	SHORT $LN7@AuProcessE

; 97   : 	x64_enter_user(ent->rsp, ent->entrypoint, ent->cs, ent->ss);

	mov	rax, QWORD PTR ent$[rsp]
	mov	r9, QWORD PTR [rax+24]
	mov	rax, QWORD PTR ent$[rsp]
	mov	r8, QWORD PTR [rax+16]
	mov	rax, QWORD PTR ent$[rsp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR ent$[rsp]
	mov	rcx, QWORD PTR [rax+8]
	call	x64_enter_user
$LN2@AuProcessE:

; 98   : 	while (1) {

	xor	eax, eax
	cmp	eax, 1
	je	SHORT $LN1@AuProcessE

; 99   : 	}

	jmp	SHORT $LN2@AuProcessE
$LN1@AuProcessE:

; 100  : }

	add	rsp, 72					; 00000048H
	ret	0
?AuProcessEntUser@@YAX_K@Z ENDP				; AuProcessEntUser
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\loader.cpp
_TEXT	SEGMENT
entry$ = 48
j$1 = 56
req_pages$2 = 60
nt$ = 64
_image_base_$ = 72
file$ = 80
i$3 = 88
textarea$ = 96
buf$ = 104
thr$ = 112
fsys$ = 120
cr3$ = 128
num_args$ = 136
ent$ = 144
sect_sz$4 = 152
block$5 = 160
secthdr$ = 168
dos$ = 176
tv174 = 184
args$ = 192
tv218 = 200
stack$ = 208
tv220 = 216
sect_ld_addr$6 = 224
read_bytes$ = 232
proc$ = 256
filename$ = 264
argc$ = 272
argv$ = 280
?AuLoadExecToProcess@@YAXPEAU_au_proc_@@PEADHPEAPEAD@Z PROC ; AuLoadExecToProcess

; 110  : void AuLoadExecToProcess(AuProcess* proc, char* filename, int argc,char** argv) {

$LN10:
	mov	QWORD PTR [rsp+32], r9
	mov	DWORD PTR [rsp+24], r8d
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 248				; 000000f8H

; 111  : 	x64_cli();

	call	x64_cli

; 112  : 	AuAcquireSpinlock(loader_lock);

	mov	rcx, QWORD PTR ?loader_lock@@3PEAU_spinlock_@@EA ; loader_lock
	call	AuAcquireSpinlock

; 113  : 	AuVFSNode *fsys = AuVFSFind(filename);

	mov	rcx, QWORD PTR filename$[rsp]
	call	AuVFSFind
	mov	QWORD PTR fsys$[rsp], rax

; 114  : 
; 115  : 	AuVFSNode *file = AuVFSOpen(filename);

	mov	rcx, QWORD PTR filename$[rsp]
	call	AuVFSOpen
	mov	QWORD PTR file$[rsp], rax

; 116  : 
; 117  : 	uint64_t* buf = (uint64_t*)P2V((size_t)AuPmmngrAlloc());

	call	AuPmmngrAlloc
	mov	rcx, rax
	call	P2V
	mov	QWORD PTR buf$[rsp], rax

; 118  : 	memset(buf, 0, 4096);

	mov	r8d, 4096				; 00001000H
	xor	edx, edx
	mov	rcx, QWORD PTR buf$[rsp]
	call	memset

; 119  : 
; 120  : 	size_t read_bytes = AuVFSNodeReadBlock(fsys, file, (uint64_t*)V2P((uint64_t)buf));

	mov	rcx, QWORD PTR buf$[rsp]
	call	V2P
	mov	r8, rax
	mov	rdx, QWORD PTR file$[rsp]
	mov	rcx, QWORD PTR fsys$[rsp]
	call	AuVFSNodeReadBlock
	mov	QWORD PTR read_bytes$[rsp], rax

; 121  : 	
; 122  : 	IMAGE_DOS_HEADER* dos = (IMAGE_DOS_HEADER*)buf;

	mov	rax, QWORD PTR buf$[rsp]
	mov	QWORD PTR dos$[rsp], rax

; 123  : 	PIMAGE_NT_HEADERS nt = raw_offset<PIMAGE_NT_HEADERS>(dos, dos->e_lfanew);

	mov	rax, QWORD PTR dos$[rsp]
	movzx	eax, WORD PTR [rax+60]
	mov	edx, eax
	mov	rcx, QWORD PTR dos$[rsp]
	call	??$raw_offset@PEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@@@YAPEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@H@Z ; raw_offset<_IMAGE_NT_HEADERS_PE32PLUS * __ptr64,_IMAGE_DOS_HEADER_ * __ptr64>
	mov	QWORD PTR nt$[rsp], rax

; 124  : 	PSECTION_HEADER secthdr = raw_offset<PSECTION_HEADER>(&nt->OptionalHeader, nt->FileHeader.SizeOfOptionaHeader);

	mov	rax, QWORD PTR nt$[rsp]
	movzx	eax, WORD PTR [rax+20]
	mov	rcx, QWORD PTR nt$[rsp]
	add	rcx, 24
	mov	edx, eax
	call	??$raw_offset@PEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@@@YAPEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@H@Z ; raw_offset<_IMAGE_SECTION_HEADER * __ptr64,_IMAGE_OPTIONAL_HEADER_PE32PLUS * __ptr64>
	mov	QWORD PTR secthdr$[rsp], rax

; 125  : 
; 126  : 	uint64_t _image_base_ = nt->OptionalHeader.ImageBase;

	mov	rax, QWORD PTR nt$[rsp]
	mov	rax, QWORD PTR [rax+48]
	mov	QWORD PTR _image_base_$[rsp], rax

; 127  : 	entry ent = (entry)(nt->OptionalHeader.AddressOfEntryPoint + nt->OptionalHeader.ImageBase);

	mov	rax, QWORD PTR nt$[rsp]
	mov	eax, DWORD PTR [rax+40]
	mov	rcx, QWORD PTR nt$[rsp]
	add	rax, QWORD PTR [rcx+48]
	mov	QWORD PTR ent$[rsp], rax

; 128  : 
; 129  : 	uint64_t* cr3 = proc->cr3;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rax, QWORD PTR [rax+14]
	mov	QWORD PTR cr3$[rsp], rax

; 130  : 
; 131  : 	AuMapPageEx(cr3, V2P((size_t)buf), _image_base_, X86_64_PAGING_USER);

	mov	rcx, QWORD PTR buf$[rsp]
	call	V2P
	mov	r9b, 4
	mov	r8, QWORD PTR _image_base_$[rsp]
	mov	rdx, rax
	mov	rcx, QWORD PTR cr3$[rsp]
	call	AuMapPageEx

; 132  : 	proc->last_load_addr = _image_base_;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR _image_base_$[rsp]
	mov	QWORD PTR [rax+1039], rcx

; 133  : 
; 134  : 	/* this should be memory mapped, i.e, sections should be
; 135  : 	 * memory mapped
; 136  : 	 */
; 137  : 	for (size_t i = 0; i < nt->FileHeader.NumberOfSections; ++i) {

	mov	QWORD PTR i$3[rsp], 0
	jmp	SHORT $LN7@AuLoadExec
$LN6@AuLoadExec:
	mov	rax, QWORD PTR i$3[rsp]
	inc	rax
	mov	QWORD PTR i$3[rsp], rax
$LN7@AuLoadExec:
	mov	rax, QWORD PTR nt$[rsp]
	movzx	eax, WORD PTR [rax+6]
	cmp	QWORD PTR i$3[rsp], rax
	jae	$LN5@AuLoadExec

; 138  : 		size_t sect_ld_addr = _image_base_ + secthdr[i].VirtualAddress;

	imul	rax, QWORD PTR i$3[rsp], 40		; 00000028H
	mov	rcx, QWORD PTR secthdr$[rsp]
	mov	eax, DWORD PTR [rcx+rax+12]
	mov	rcx, QWORD PTR _image_base_$[rsp]
	add	rcx, rax
	mov	rax, rcx
	mov	QWORD PTR sect_ld_addr$6[rsp], rax

; 139  : 		size_t sect_sz = secthdr[i].VirtualSize;

	imul	rax, QWORD PTR i$3[rsp], 40		; 00000028H
	mov	rcx, QWORD PTR secthdr$[rsp]
	mov	eax, DWORD PTR [rcx+rax+8]
	mov	QWORD PTR sect_sz$4[rsp], rax

; 140  : 		int req_pages = sect_sz / PAGE_SIZE;

	xor	edx, edx
	mov	rax, QWORD PTR sect_sz$4[rsp]
	mov	ecx, 4096				; 00001000H
	div	rcx
	mov	DWORD PTR req_pages$2[rsp], eax

; 141  : 		if ((sect_sz % PAGE_SIZE) != 0)

	xor	edx, edx
	mov	rax, QWORD PTR sect_sz$4[rsp]
	mov	ecx, 4096				; 00001000H
	div	rcx
	mov	rax, rdx
	test	rax, rax
	je	SHORT $LN4@AuLoadExec

; 142  : 			req_pages++;

	mov	eax, DWORD PTR req_pages$2[rsp]
	inc	eax
	mov	DWORD PTR req_pages$2[rsp], eax
$LN4@AuLoadExec:

; 143  : 
; 144  : 		for (int j = 0; j < req_pages; j++) {

	mov	DWORD PTR j$1[rsp], 0
	jmp	SHORT $LN3@AuLoadExec
$LN2@AuLoadExec:
	mov	eax, DWORD PTR j$1[rsp]
	inc	eax
	mov	DWORD PTR j$1[rsp], eax
$LN3@AuLoadExec:
	mov	eax, DWORD PTR req_pages$2[rsp]
	cmp	DWORD PTR j$1[rsp], eax
	jge	$LN1@AuLoadExec

; 145  : 			uint64_t *block = (uint64_t*)P2V((uint64_t)AuPmmngrAlloc());/*(buf + secthdr[i].PointerToRawData);*/

	call	AuPmmngrAlloc
	mov	rcx, rax
	call	P2V
	mov	QWORD PTR block$5[rsp], rax

; 146  : 			AuVFSNodeReadBlock(fsys, file, (uint64_t*)V2P((size_t)block));

	mov	rcx, QWORD PTR block$5[rsp]
	call	V2P
	mov	r8, rax
	mov	rdx, QWORD PTR file$[rsp]
	mov	rcx, QWORD PTR fsys$[rsp]
	call	AuVFSNodeReadBlock

; 147  : 			AuMapPageEx(cr3, V2P((size_t)block), sect_ld_addr + j * PAGE_SIZE, X86_64_PAGING_USER);

	imul	eax, DWORD PTR j$1[rsp], 4096		; 00001000H
	cdqe
	mov	rcx, QWORD PTR sect_ld_addr$6[rsp]
	add	rcx, rax
	mov	rax, rcx
	mov	QWORD PTR tv174[rsp], rax
	mov	rcx, QWORD PTR block$5[rsp]
	call	V2P
	mov	r9b, 4
	mov	rcx, QWORD PTR tv174[rsp]
	mov	r8, rcx
	mov	rdx, rax
	mov	rcx, QWORD PTR cr3$[rsp]
	call	AuMapPageEx

; 148  : 		}

	jmp	$LN2@AuLoadExec
$LN1@AuLoadExec:

; 149  : 	}

	jmp	$LN6@AuLoadExec
$LN5@AuLoadExec:

; 150  : 
; 151  : 	
; 152  : 	/* create a vmarea segment here */
; 153  : 	AuVMArea* textarea = AuVMAreaCreate(_image_base_, VIRT_ADDR_ALIGN(_image_base_ + nt->OptionalHeader.SizeOfImage),
; 154  : 		VM_PRESENT | VM_EXEC,0, VM_TYPE_TEXT);

	mov	rax, QWORD PTR nt$[rsp]
	mov	eax, DWORD PTR [rax+80]
	mov	rcx, QWORD PTR _image_base_$[rsp]
	add	rcx, rax
	mov	rax, rcx
	and	rax, -4096				; fffffffffffff000H
	mov	BYTE PTR [rsp+32], 1
	xor	r9d, r9d
	mov	r8b, 5
	mov	rdx, rax
	mov	rcx, QWORD PTR _image_base_$[rsp]
	call	?AuVMAreaCreate@@YAPEAU_vm_area_@@_K0E0E@Z ; AuVMAreaCreate
	mov	QWORD PTR textarea$[rsp], rax

; 155  : 	textarea->len = textarea->end - textarea->start;

	mov	rax, QWORD PTR textarea$[rsp]
	mov	rcx, QWORD PTR textarea$[rsp]
	mov	rcx, QWORD PTR [rcx]
	mov	rax, QWORD PTR [rax+8]
	sub	rax, rcx
	mov	rcx, QWORD PTR textarea$[rsp]
	mov	QWORD PTR [rcx+16], rax

; 156  : 	textarea->file = file;

	mov	rax, QWORD PTR textarea$[rsp]
	mov	rcx, QWORD PTR file$[rsp]
	mov	QWORD PTR [rax+32], rcx

; 157  : 	AuInsertVMArea(proc, textarea);

	mov	rdx, QWORD PTR textarea$[rsp]
	mov	rcx, QWORD PTR proc$[rsp]
	call	?AuInsertVMArea@@YAXPEAU_au_proc_@@PEAU_vm_area_@@@Z ; AuInsertVMArea

; 158  : 
; 159  : 
; 160  : 	uint64_t stack = proc->_main_stack_;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rax, QWORD PTR [rax+38]
	mov	QWORD PTR stack$[rsp], rax

; 161  : 
; 162  : 	/* create the user mode entry structure*/
; 163  : 	AuUserEntry *entry = (AuUserEntry*)kmalloc(sizeof(AuUserEntry));

	mov	ecx, 56					; 00000038H
	call	kmalloc
	mov	QWORD PTR entry$[rsp], rax

; 164  : 	entry->entrypoint = (uint64_t)ent;

	mov	rax, QWORD PTR entry$[rsp]
	mov	rcx, QWORD PTR ent$[rsp]
	mov	QWORD PTR [rax], rcx

; 165  : 	entry->cs = SEGVAL(GDT_ENTRY_USER_CODE, 3);

	mov	rax, QWORD PTR entry$[rsp]
	mov	QWORD PTR [rax+16], 43			; 0000002bH

; 166  : 	entry->ss = SEGVAL(GDT_ENTRY_USER_DATA, 3);

	mov	rax, QWORD PTR entry$[rsp]
	mov	QWORD PTR [rax+24], 35			; 00000023H

; 167  : 	entry->rsp = stack;

	mov	rax, QWORD PTR entry$[rsp]
	mov	rcx, QWORD PTR stack$[rsp]
	mov	QWORD PTR [rax+8], rcx

; 168  : 
; 169  : 	int num_args = argc;

	mov	eax, DWORD PTR argc$[rsp]
	mov	DWORD PTR num_args$[rsp], eax

; 170  : 	
; 171  : 	/* Allocate a memory for passing arguments */
; 172  : 	char* args = (char*)P2V((size_t)AuPmmngrAlloc());

	call	AuPmmngrAlloc
	mov	rcx, rax
	call	P2V
	mov	QWORD PTR args$[rsp], rax

; 173  : 	AuMapPageEx(proc->cr3, (size_t)V2P((size_t)args), 0x4000, X86_64_PAGING_USER);

	mov	rcx, QWORD PTR args$[rsp]
	call	V2P
	mov	r9b, 4
	mov	r8d, 16384				; 00004000H
	mov	rdx, rax
	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR [rax+14]
	call	AuMapPageEx

; 174  : 	entry->argvaddr = 0x4000;	

	mov	rax, QWORD PTR entry$[rsp]
	mov	QWORD PTR [rax+40], 16384		; 00004000H

; 175  : 	entry->num_args = num_args;

	mov	rax, QWORD PTR entry$[rsp]
	mov	ecx, DWORD PTR num_args$[rsp]
	mov	DWORD PTR [rax+32], ecx

; 176  : 	entry->argvs = argv;

	mov	rax, QWORD PTR entry$[rsp]
	mov	rcx, QWORD PTR argv$[rsp]
	mov	QWORD PTR [rax+48], rcx

; 177  : 	
; 178  : 
; 179  : 	AuThread *thr = AuCreateKthread(AuProcessEntUser, P2V((uint64_t)AuPmmngrAlloc() + 4096), V2P((uint64_t)cr3), proc->name);

	mov	rax, QWORD PTR proc$[rsp]
	add	rax, 4
	mov	QWORD PTR tv218[rsp], rax
	mov	rcx, QWORD PTR cr3$[rsp]
	call	V2P
	mov	QWORD PTR tv220[rsp], rax
	call	AuPmmngrAlloc
	add	rax, 4096				; 00001000H
	mov	rcx, rax
	call	P2V
	mov	rcx, QWORD PTR tv218[rsp]
	mov	r9, rcx
	mov	rcx, QWORD PTR tv220[rsp]
	mov	r8, rcx
	mov	rdx, rax
	lea	rcx, OFFSET FLAT:?AuProcessEntUser@@YAX_K@Z ; AuProcessEntUser
	call	AuCreateKthread
	mov	QWORD PTR thr$[rsp], rax

; 180  : 	thr->frame.rcx = (uint64_t)entry;

	mov	rax, QWORD PTR thr$[rsp]
	mov	rcx, QWORD PTR entry$[rsp]
	mov	QWORD PTR [rax+56], rcx

; 181  : 
; 182  : 	thr->uentry = entry;

	mov	rax, QWORD PTR thr$[rsp]
	mov	rcx, QWORD PTR entry$[rsp]
	mov	QWORD PTR [rax+306], rcx

; 183  : 	proc->main_thread = thr;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR thr$[rsp]
	mov	QWORD PTR [rax+46], rcx

; 184  : 	proc->num_thread = 1;

	mov	rax, QWORD PTR proc$[rsp]
	mov	BYTE PTR [rax+54], 1

; 185  : 	proc->entry_point = ent;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR ent$[rsp]
	mov	QWORD PTR [rax+55], rcx

; 186  : 	proc->_image_base_ = _image_base_;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR _image_base_$[rsp]
	mov	QWORD PTR [rax+30], rcx

; 187  : 	proc->_image_size_ = file->size;

	mov	rax, QWORD PTR file$[rsp]
	mov	eax, DWORD PTR [rax+32]
	mov	rcx, QWORD PTR proc$[rsp]
	mov	QWORD PTR [rcx+22], rax

; 188  : 	proc->state = PROCESS_STATE_READY;

	mov	rax, QWORD PTR proc$[rsp]
	mov	BYTE PTR [rax+12], 2

; 189  : 	proc->file = file;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR file$[rsp]
	mov	QWORD PTR [rax+1023], rcx

; 190  : 	proc->fsys = fsys;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR fsys$[rsp]
	mov	QWORD PTR [rax+1031], rcx

; 191  : 	thr->proc_slot = proc;

	mov	rax, QWORD PTR thr$[rsp]
	mov	rcx, QWORD PTR proc$[rsp]
	mov	QWORD PTR [rax+298], rcx

; 192  : 	AuReleaseSpinlock(loader_lock);

	mov	rcx, QWORD PTR ?loader_lock@@3PEAU_spinlock_@@EA ; loader_lock
	call	AuReleaseSpinlock

; 193  : }

	add	rsp, 248				; 000000f8H
	ret	0
?AuLoadExecToProcess@@YAXPEAU_au_proc_@@PEADHPEAPEAD@Z ENDP ; AuLoadExecToProcess
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\loader.cpp
_TEXT	SEGMENT
?AuInitialiseLoader@@YAXXZ PROC				; AuInitialiseLoader

; 195  : void AuInitialiseLoader() {

$LN3:
	sub	rsp, 40					; 00000028H

; 196  : 	loader_lock = AuCreateSpinlock(false);

	xor	ecx, ecx
	call	AuCreateSpinlock
	mov	QWORD PTR ?loader_lock@@3PEAU_spinlock_@@EA, rax ; loader_lock

; 197  : }

	add	rsp, 40					; 00000028H
	ret	0
?AuInitialiseLoader@@YAXXZ ENDP				; AuInitialiseLoader
_TEXT	ENDS
END
