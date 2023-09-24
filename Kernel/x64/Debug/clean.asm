; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

CONST	SEGMENT
$SG3998	DB	'cleaning thread -> %x ', 0aH, 00H
$SG4007	DB	'Process cleaned ', 0dH, 0aH, 00H
CONST	ENDS
PUBLIC	?AuProcessClean@@YAXPEAU_au_proc_@@0@Z		; AuProcessClean
PUBLIC	?FreeUserStack@@YAXPEA_K@Z			; FreeUserStack
PUBLIC	?FreeImage@@YAXPEAU_au_proc_@@@Z		; FreeImage
PUBLIC	?AuThreadFree@@YAXPEAU_au_thread_@@@Z		; AuThreadFree
EXTRN	list_remove:PROC
EXTRN	?AuThreadCleanTrash@@YAXPEAU_au_thread_@@@Z:PROC ; AuThreadCleanTrash
EXTRN	?AuRemoveProcess@@YAXPEAU_au_proc_@@0@Z:PROC	; AuRemoveProcess
EXTRN	AuGetPhysicalAddressEx:PROC
EXTRN	AuPmmngrFree:PROC
EXTRN	P2V:PROC
EXTRN	V2P:PROC
EXTRN	?AuRemoveVMArea@@YAXPEAU_au_proc_@@PEAU_vm_area_@@@Z:PROC ; AuRemoveVMArea
EXTRN	?AuVMAreaGet@@YAPEAU_vm_area_@@PEAU_au_proc_@@_K@Z:PROC ; AuVMAreaGet
EXTRN	kfree:PROC
EXTRN	AuTextOut:PROC
EXTRN	SeTextOut:PROC
pdata	SEGMENT
$pdata$?AuProcessClean@@YAXPEAU_au_proc_@@0@Z DD imagerel $LN19
	DD	imagerel $LN19+644
	DD	imagerel $unwind$?AuProcessClean@@YAXPEAU_au_proc_@@0@Z
$pdata$?FreeUserStack@@YAXPEA_K@Z DD imagerel $LN6
	DD	imagerel $LN6+104
	DD	imagerel $unwind$?FreeUserStack@@YAXPEA_K@Z
$pdata$?FreeImage@@YAXPEAU_au_proc_@@@Z DD imagerel $LN7
	DD	imagerel $LN7+190
	DD	imagerel $unwind$?FreeImage@@YAXPEAU_au_proc_@@@Z
$pdata$?AuThreadFree@@YAXPEAU_au_thread_@@@Z DD imagerel $LN3
	DD	imagerel $LN3+109
	DD	imagerel $unwind$?AuThreadFree@@YAXPEAU_au_thread_@@@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?AuProcessClean@@YAXPEAU_au_proc_@@0@Z DD 010e01H
	DD	0e20eH
$unwind$?FreeUserStack@@YAXPEA_K@Z DD 010901H
	DD	08209H
$unwind$?FreeImage@@YAXPEAU_au_proc_@@@Z DD 010901H
	DD	0a209H
$unwind$?AuThreadFree@@YAXPEAU_au_thread_@@@Z DD 010901H
	DD	06209H
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\clean.cpp
_TEXT	SEGMENT
k_stack$ = 32
k_stack_$ = 40
t$ = 64
?AuThreadFree@@YAXPEAU_au_thread_@@@Z PROC		; AuThreadFree

; 81   : void AuThreadFree(AuThread* t) {

$LN3:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 82   : 	kfree(t->fx_state);

	mov	rax, QWORD PTR t$[rsp]
	mov	rcx, QWORD PTR [rax+272]
	call	kfree

; 83   : 	/* free up the kernel stack */
; 84   : 	uint64_t k_stack = t->frame.kern_esp;

	mov	rax, QWORD PTR t$[rsp]
	mov	rax, QWORD PTR [rax+200]
	mov	QWORD PTR k_stack$[rsp], rax

; 85   : 	uint64_t k_stack_ = k_stack - PAGE_SIZE;

	mov	rax, QWORD PTR k_stack$[rsp]
	sub	rax, 4096				; 00001000H
	mov	QWORD PTR k_stack_$[rsp], rax

; 86   : 	AuPmmngrFree((void*)V2P((size_t)k_stack_));

	mov	rcx, QWORD PTR k_stack_$[rsp]
	call	V2P
	mov	rcx, rax
	call	AuPmmngrFree

; 87   : 	kfree(t->uentry);

	mov	rax, QWORD PTR t$[rsp]
	mov	rcx, QWORD PTR [rax+635]
	call	kfree

; 88   : 	kfree(t);

	mov	rcx, QWORD PTR t$[rsp]
	call	kfree

; 89   : }

	add	rsp, 56					; 00000038H
	ret	0
?AuThreadFree@@YAXPEAU_au_thread_@@@Z ENDP		; AuThreadFree
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\clean.cpp
_TEXT	SEGMENT
i$1 = 32
physical_address$2 = 40
tv65 = 48
phys$3 = 56
image_area$ = 64
proc$ = 96
?FreeImage@@YAXPEAU_au_proc_@@@Z PROC			; FreeImage

; 63   : void FreeImage(AuProcess* proc) {

$LN7:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 88					; 00000058H

; 64   : 	/* Unmap the process image */
; 65   : 	for (uint32_t i = 0; i < proc->_image_size_ / 4096 + 1; i++) {

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN4@FreeImage
$LN3@FreeImage:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN4@FreeImage:
	mov	eax, DWORD PTR i$1[rsp]
	mov	QWORD PTR tv65[rsp], rax
	xor	edx, edx
	mov	rcx, QWORD PTR proc$[rsp]
	mov	rax, QWORD PTR [rcx+30]
	mov	ecx, 4096				; 00001000H
	div	rcx
	inc	rax
	mov	rcx, QWORD PTR tv65[rsp]
	cmp	rcx, rax
	jae	SHORT $LN2@FreeImage

; 66   : 		void* phys = AuGetPhysicalAddressEx(proc->cr3, proc->_image_base_ + i * 4096);

	imul	eax, DWORD PTR i$1[rsp], 4096		; 00001000H
	mov	eax, eax
	mov	rcx, QWORD PTR proc$[rsp]
	add	rax, QWORD PTR [rcx+38]
	mov	rdx, rax
	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR [rax+22]
	call	AuGetPhysicalAddressEx
	mov	QWORD PTR phys$3[rsp], rax

; 67   : 		uint64_t physical_address = (uint64_t)V2P((uint64_t)phys);

	mov	rcx, QWORD PTR phys$3[rsp]
	call	V2P
	mov	QWORD PTR physical_address$2[rsp], rax

; 68   : 		if (physical_address != 0)

	cmp	QWORD PTR physical_address$2[rsp], 0
	je	SHORT $LN1@FreeImage

; 69   : 			AuPmmngrFree((void*)physical_address);

	mov	rcx, QWORD PTR physical_address$2[rsp]
	call	AuPmmngrFree
$LN1@FreeImage:

; 70   : 	}

	jmp	SHORT $LN3@FreeImage
$LN2@FreeImage:

; 71   : 
; 72   : 	AuVMArea *image_area = AuVMAreaGet(proc, proc->_image_base_);

	mov	rax, QWORD PTR proc$[rsp]
	mov	rdx, QWORD PTR [rax+38]
	mov	rcx, QWORD PTR proc$[rsp]
	call	?AuVMAreaGet@@YAPEAU_vm_area_@@PEAU_au_proc_@@_K@Z ; AuVMAreaGet
	mov	QWORD PTR image_area$[rsp], rax

; 73   : 	AuRemoveVMArea(proc, image_area);

	mov	rdx, QWORD PTR image_area$[rsp]
	mov	rcx, QWORD PTR proc$[rsp]
	call	?AuRemoveVMArea@@YAXPEAU_au_proc_@@PEAU_vm_area_@@@Z ; AuRemoveVMArea

; 74   : }

	add	rsp, 88					; 00000058H
	ret	0
?FreeImage@@YAXPEAU_au_proc_@@@Z ENDP			; FreeImage
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\clean.cpp
_TEXT	SEGMENT
i$1 = 32
addr$2 = 40
location$ = 48
cr3$ = 80
?FreeUserStack@@YAXPEA_K@Z PROC				; FreeUserStack

; 48   : void FreeUserStack(uint64_t* cr3) {

$LN6:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 72					; 00000048H

; 49   : #define USER_STACK 0x0000700000000000 
; 50   : 	uint64_t location = USER_STACK;

	mov	rax, 123145302310912			; 0000700000000000H
	mov	QWORD PTR location$[rsp], rax

; 51   : 
; 52   : 	for (int i = 0; i < PROCESS_USER_STACK_SZ / 4096; i++) {

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN3@FreeUserSt
$LN2@FreeUserSt:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN3@FreeUserSt:
	cmp	DWORD PTR i$1[rsp], 64			; 00000040H
	jge	SHORT $LN1@FreeUserSt

; 53   : 		void* addr = AuGetPhysicalAddressEx(cr3, + i * 4096);

	imul	eax, DWORD PTR i$1[rsp], 4096		; 00001000H
	cdqe
	mov	rdx, rax
	mov	rcx, QWORD PTR cr3$[rsp]
	call	AuGetPhysicalAddressEx
	mov	QWORD PTR addr$2[rsp], rax

; 54   : 		AuPmmngrFree((void*)V2P((size_t)addr));

	mov	rcx, QWORD PTR addr$2[rsp]
	call	V2P
	mov	rcx, rax
	call	AuPmmngrFree

; 55   : 	}

	jmp	SHORT $LN2@FreeUserSt
$LN1@FreeUserSt:

; 56   : }

	add	rsp, 72					; 00000048H
	ret	0
?FreeUserStack@@YAXPEA_K@Z ENDP				; FreeUserStack
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\clean.cpp
_TEXT	SEGMENT
i$1 = 32
i$2 = 36
i$3 = 40
num_pages$4 = 48
t_$5 = 56
area$6 = 64
phys$7 = 72
phys$8 = 80
id$ = 88
uentry$ = 96
parent$ = 128
killable$ = 136
?AuProcessClean@@YAXPEAU_au_proc_@@0@Z PROC		; AuProcessClean

; 97   : void AuProcessClean(AuProcess* parent, AuProcess* killable) {

$LN19:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 120				; 00000078H

; 98   : 	int id = killable->proc_id;

	mov	rax, QWORD PTR killable$[rsp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR id$[rsp], eax

; 99   : 	
; 100  : 	FreeUserStack(killable->cr3);

	mov	rax, QWORD PTR killable$[rsp]
	mov	rcx, QWORD PTR [rax+22]
	call	?FreeUserStack@@YAXPEA_K@Z		; FreeUserStack

; 101  : 	/* free up shm mappings */
; 102  : 
; 103  : 	/* free up image base + image size*/
; 104  : 	FreeImage(killable);

	mov	rcx, QWORD PTR killable$[rsp]
	call	?FreeImage@@YAXPEAU_au_proc_@@@Z	; FreeImage

; 105  : 
; 106  : 	/* free up vmareas */
; 107  : 	for (int i = 0; i < killable->vmareas->pointer; i++) {

	mov	DWORD PTR i$2[rsp], 0
	jmp	SHORT $LN16@AuProcessC
$LN15@AuProcessC:
	mov	eax, DWORD PTR i$2[rsp]
	inc	eax
	mov	DWORD PTR i$2[rsp], eax
$LN16@AuProcessC:
	mov	rax, QWORD PTR killable$[rsp]
	mov	rax, QWORD PTR [rax+1047]
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR i$2[rsp], eax
	jae	SHORT $LN14@AuProcessC

; 108  : 		AuVMArea* area = (AuVMArea*)list_remove(killable->vmareas, i);

	mov	edx, DWORD PTR i$2[rsp]
	mov	rax, QWORD PTR killable$[rsp]
	mov	rcx, QWORD PTR [rax+1047]
	call	list_remove
	mov	QWORD PTR area$6[rsp], rax

; 109  : 		if (area)

	cmp	QWORD PTR area$6[rsp], 0
	je	SHORT $LN13@AuProcessC

; 110  : 			kfree(area);

	mov	rcx, QWORD PTR area$6[rsp]
	call	kfree
$LN13@AuProcessC:

; 111  : 	}

	jmp	SHORT $LN15@AuProcessC
$LN14@AuProcessC:

; 112  : 	kfree(killable->vmareas);

	mov	rax, QWORD PTR killable$[rsp]
	mov	rcx, QWORD PTR [rax+1047]
	call	kfree

; 113  : 
; 114  : 	/* free up process heap memory */
; 115  : 	if (killable->proc_mem_heap > PROCESS_BREAK_ADDRESS) {

	mov	rax, QWORD PTR killable$[rsp]
	cmp	QWORD PTR [rax+1071], 805306368		; 30000000H
	jbe	$LN12@AuProcessC

; 116  : 		size_t num_pages = (killable->proc_mem_heap - PROCESS_BREAK_ADDRESS) / PAGE_SIZE;

	mov	rax, QWORD PTR killable$[rsp]
	mov	rax, QWORD PTR [rax+1071]
	sub	rax, 805306368				; 30000000H
	xor	edx, edx
	mov	ecx, 4096				; 00001000H
	div	rcx
	mov	QWORD PTR num_pages$4[rsp], rax

; 117  : 		if ((num_pages % PAGE_SIZE) != 0)

	xor	edx, edx
	mov	rax, QWORD PTR num_pages$4[rsp]
	mov	ecx, 4096				; 00001000H
	div	rcx
	mov	rax, rdx
	test	rax, rax
	je	SHORT $LN11@AuProcessC

; 118  : 			num_pages++;

	mov	rax, QWORD PTR num_pages$4[rsp]
	inc	rax
	mov	QWORD PTR num_pages$4[rsp], rax
$LN11@AuProcessC:

; 119  : 		for (int i = 0; i < num_pages; i++) {

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN10@AuProcessC
$LN9@AuProcessC:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN10@AuProcessC:
	movsxd	rax, DWORD PTR i$1[rsp]
	cmp	rax, QWORD PTR num_pages$4[rsp]
	jae	SHORT $LN8@AuProcessC

; 120  : 			void* phys = AuGetPhysicalAddressEx(killable->cr3, PROCESS_BREAK_ADDRESS + i * PAGE_SIZE);

	imul	eax, DWORD PTR i$1[rsp], 4096		; 00001000H
	add	eax, 805306368				; 30000000H
	cdqe
	mov	rdx, rax
	mov	rax, QWORD PTR killable$[rsp]
	mov	rcx, QWORD PTR [rax+22]
	call	AuGetPhysicalAddressEx
	mov	QWORD PTR phys$7[rsp], rax

; 121  : 			if (phys)

	cmp	QWORD PTR phys$7[rsp], 0
	je	SHORT $LN7@AuProcessC

; 122  : 				AuPmmngrFree((void*)V2P((uint64_t)phys));

	mov	rcx, QWORD PTR phys$7[rsp]
	call	V2P
	mov	rcx, rax
	call	AuPmmngrFree
$LN7@AuProcessC:

; 123  : 		}

	jmp	SHORT $LN9@AuProcessC
$LN8@AuProcessC:
$LN12@AuProcessC:

; 124  : 	}
; 125  : 
; 126  : 
; 127  : 	/* finally free up all threads */
; 128  : 	for (int i = 1; i < MAX_THREADS_PER_PROCESS -1 ; i++) {

	mov	DWORD PTR i$3[rsp], 1
	jmp	SHORT $LN6@AuProcessC
$LN5@AuProcessC:
	mov	eax, DWORD PTR i$3[rsp]
	inc	eax
	mov	DWORD PTR i$3[rsp], eax
$LN6@AuProcessC:
	cmp	DWORD PTR i$3[rsp], 59			; 0000003bH
	jge	SHORT $LN4@AuProcessC

; 129  : 		AuThread *t_ = killable->threads[i];

	movsxd	rax, DWORD PTR i$3[rsp]
	mov	rcx, QWORD PTR killable$[rsp]
	mov	rax, QWORD PTR [rcx+rax*8+71]
	mov	QWORD PTR t_$5[rsp], rax

; 130  : 		if (t_) {

	cmp	QWORD PTR t_$5[rsp], 0
	je	SHORT $LN3@AuProcessC

; 131  : 			AuTextOut("cleaning thread -> %x \n", t_);

	mov	rdx, QWORD PTR t_$5[rsp]
	lea	rcx, OFFSET FLAT:$SG3998
	call	AuTextOut

; 132  : 			AuThreadCleanTrash(t_);

	mov	rcx, QWORD PTR t_$5[rsp]
	call	?AuThreadCleanTrash@@YAXPEAU_au_thread_@@@Z ; AuThreadCleanTrash

; 133  : 			AuThreadFree(t_);

	mov	rcx, QWORD PTR t_$5[rsp]
	call	?AuThreadFree@@YAXPEAU_au_thread_@@@Z	; AuThreadFree
$LN3@AuProcessC:

; 134  : 		}
; 135  : 	}

	jmp	SHORT $LN5@AuProcessC
$LN4@AuProcessC:

; 136  : 
; 137  : 	AuUserEntry* uentry = killable->main_thread->uentry;

	mov	rax, QWORD PTR killable$[rsp]
	mov	rax, QWORD PTR [rax+54]
	mov	rax, QWORD PTR [rax+635]
	mov	QWORD PTR uentry$[rsp], rax

; 138  : 	if (uentry->argvaddr != 0) {

	mov	rax, QWORD PTR uentry$[rsp]
	cmp	QWORD PTR [rax+36], 0
	je	SHORT $LN2@AuProcessC

; 139  : 		void* phys = AuGetPhysicalAddressEx(killable->cr3, 0x4000);

	mov	edx, 16384				; 00004000H
	mov	rax, QWORD PTR killable$[rsp]
	mov	rcx, QWORD PTR [rax+22]
	call	AuGetPhysicalAddressEx
	mov	QWORD PTR phys$8[rsp], rax

; 140  : 		if (phys) {

	cmp	QWORD PTR phys$8[rsp], 0
	je	SHORT $LN1@AuProcessC

; 141  : 			AuPmmngrFree((void*)P2V((size_t)phys));

	mov	rcx, QWORD PTR phys$8[rsp]
	call	P2V
	mov	rcx, rax
	call	AuPmmngrFree
$LN1@AuProcessC:
$LN2@AuProcessC:

; 142  : 		}
; 143  : 	}
; 144  : 
; 145  : 	/* clean the main thread externally*/
; 146  : 	AuThreadCleanTrash(killable->main_thread);

	mov	rax, QWORD PTR killable$[rsp]
	mov	rcx, QWORD PTR [rax+54]
	call	?AuThreadCleanTrash@@YAXPEAU_au_thread_@@@Z ; AuThreadCleanTrash

; 147  : 	AuThreadFree(killable->main_thread);

	mov	rax, QWORD PTR killable$[rsp]
	mov	rcx, QWORD PTR [rax+54]
	call	?AuThreadFree@@YAXPEAU_au_thread_@@@Z	; AuThreadFree

; 148  : 
; 149  : 	/* release the process slot */
; 150  : 
; 151  : 	AuPmmngrFree((void*)V2P((size_t)killable->cr3));

	mov	rax, QWORD PTR killable$[rsp]
	mov	rcx, QWORD PTR [rax+22]
	call	V2P
	mov	rcx, rax
	call	AuPmmngrFree

; 152  : 	AuRemoveProcess(0, killable);

	mov	rdx, QWORD PTR killable$[rsp]
	xor	ecx, ecx
	call	?AuRemoveProcess@@YAXPEAU_au_proc_@@0@Z	; AuRemoveProcess

; 153  : 	SeTextOut("Process cleaned \r\n");

	lea	rcx, OFFSET FLAT:$SG4007
	call	SeTextOut

; 154  : }

	add	rsp, 120				; 00000078H
	ret	0
?AuProcessClean@@YAXPEAU_au_proc_@@0@Z ENDP		; AuProcessClean
_TEXT	ENDS
END
