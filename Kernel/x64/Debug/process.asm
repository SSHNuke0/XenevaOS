; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?proc_first@@3PEAU_au_proc_@@EA			; proc_first
PUBLIC	?proc_last@@3PEAU_au_proc_@@EA			; proc_last
PUBLIC	?root_proc@@3PEAU_au_proc_@@EA			; root_proc
PUBLIC	?process_mutex@@3PEAU_mutex_@@EA		; process_mutex
_BSS	SEGMENT
?proc_first@@3PEAU_au_proc_@@EA DQ 01H DUP (?)		; proc_first
?proc_last@@3PEAU_au_proc_@@EA DQ 01H DUP (?)		; proc_last
?root_proc@@3PEAU_au_proc_@@EA DQ 01H DUP (?)		; root_proc
?process_mutex@@3PEAU_mutex_@@EA DQ 01H DUP (?)		; process_mutex
_BSS	ENDS
_DATA	SEGMENT
pid	DD	01H
_DATA	ENDS
CONST	SEGMENT
$SG4121	DB	'[aurora]: cannot exit root process ', 0dH, 0aH, 00H
	ORG $+2
$SG4134	DB	'Closing file -> %s , address -> %x ', 0dH, 0aH, 00H
	ORG $+2
$SG4045	DB	'_root', 00H
	ORG $+2
$SG4072	DB	'-about', 00H
	ORG $+1
$SG4077	DB	'/init.exe', 00H
CONST	ENDS
PUBLIC	?AuAddProcess@@YAXPEAU_au_proc_@@0@Z		; AuAddProcess
PUBLIC	?AuRemoveProcess@@YAXPEAU_au_proc_@@0@Z		; AuRemoveProcess
PUBLIC	?AuProcessFindPID@@YAPEAU_au_proc_@@H@Z		; AuProcessFindPID
PUBLIC	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindThread
PUBLIC	?CreateUserStack@@YAPEA_KPEA_K@Z		; CreateUserStack
PUBLIC	?AuStartRootProc@@YAXXZ				; AuStartRootProc
PUBLIC	?AuGetRootProcess@@YAPEAU_au_proc_@@XZ		; AuGetRootProcess
PUBLIC	?AuCreateProcessSlot@@YAPEAU_au_proc_@@PEAU1@PEAD@Z ; AuCreateProcessSlot
PUBLIC	?AuProcessExit@@YAXPEAU_au_proc_@@@Z		; AuProcessExit
PUBLIC	?AuProcessGetFileDesc@@YAHPEAU_au_proc_@@@Z	; AuProcessGetFileDesc
PUBLIC	?AuProcessWaitForTermination@@YAXPEAU_au_proc_@@H@Z ; AuProcessWaitForTermination
PUBLIC	?AuProcessGetMutex@@YAPEAU_mutex_@@XZ		; AuProcessGetMutex
PUBLIC	?AuProcessFindByPID@@YAPEAU_au_proc_@@PEAU1@H@Z	; AuProcessFindByPID
PUBLIC	?AuProcessFindByThread@@YAPEAU_au_proc_@@PEAU1@PEAU_au_thread_@@@Z ; AuProcessFindByThread
PUBLIC	?AuAllocateProcessID@@YAHXZ			; AuAllocateProcessID
PUBLIC	?AuCreateRootProc@@YAPEAU_au_proc_@@XZ		; AuCreateRootProc
PUBLIC	?AuGetKillableProcess@@YAPEAU_au_proc_@@XZ	; AuGetKillableProcess
PUBLIC	?AuProcessHeapMemDestroy@@YAXPEAU_au_proc_@@@Z	; AuProcessHeapMemDestroy
EXTRN	initialize_list:PROC
EXTRN	AuSleepThread:PROC
EXTRN	?AuThreadMoveToTrash@@YAXPEAU_au_thread_@@@Z:PROC ; AuThreadMoveToTrash
EXTRN	AuCreateMutex:PROC
EXTRN	AuVmmngrGetPage:PROC
EXTRN	AuMapPageEx:PROC
EXTRN	AuCreateVirtualAddressSpace:PROC
EXTRN	strcpy:PROC
EXTRN	strlen:PROC
EXTRN	memset:PROC
EXTRN	AuPmmngrAlloc:PROC
EXTRN	AuPmmngrFree:PROC
EXTRN	P2V:PROC
EXTRN	V2P:PROC
EXTRN	kmalloc:PROC
EXTRN	kfree:PROC
EXTRN	kmalloc_debug_on:PROC
EXTRN	?UnmapMemMapping@@YAXPEAX_K@Z:PROC		; UnmapMemMapping
EXTRN	x64_cli:PROC
EXTRN	x64_force_sched:PROC
EXTRN	SeTextOut:PROC
EXTRN	?AuLoadExecToProcess@@YAXPEAU_au_proc_@@PEADHPEAPEAD@Z:PROC ; AuLoadExecToProcess
EXTRN	?AuProcessClean@@YAXPEAU_au_proc_@@0@Z:PROC	; AuProcessClean
EXTRN	?AuSHMUnmapAll@@YAXPEAU_au_proc_@@@Z:PROC	; AuSHMUnmapAll
EXTRN	AuSoundRemoveDSP:PROC
EXTRN	?AuSignalRemoveAll@@YAXPEAU_au_thread_@@@Z:PROC	; AuSignalRemoveAll
pdata	SEGMENT
$pdata$?AuRemoveProcess@@YAXPEAU_au_proc_@@0@Z DD imagerel $LN8
	DD	imagerel $LN8+178
	DD	imagerel $unwind$?AuRemoveProcess@@YAXPEAU_au_proc_@@0@Z
$pdata$?AuProcessFindPID@@YAPEAU_au_proc_@@H@Z DD imagerel $LN7
	DD	imagerel $LN7+70
	DD	imagerel $unwind$?AuProcessFindPID@@YAPEAU_au_proc_@@H@Z
$pdata$?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z DD imagerel $LN7
	DD	imagerel $LN7+74
	DD	imagerel $unwind$?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z
$pdata$?CreateUserStack@@YAPEA_KPEA_K@Z DD imagerel $LN6
	DD	imagerel $LN6+146
	DD	imagerel $unwind$?CreateUserStack@@YAPEA_KPEA_K@Z
$pdata$?AuStartRootProc@@YAXXZ DD imagerel $LN3
	DD	imagerel $LN3+205
	DD	imagerel $unwind$?AuStartRootProc@@YAXXZ
$pdata$?AuCreateProcessSlot@@YAPEAU_au_proc_@@PEAU1@PEAD@Z DD imagerel $LN6
	DD	imagerel $LN6+340
	DD	imagerel $unwind$?AuCreateProcessSlot@@YAPEAU_au_proc_@@PEAU1@PEAD@Z
$pdata$?AuProcessExit@@YAXPEAU_au_proc_@@@Z DD imagerel $LN15
	DD	imagerel $LN15+421
	DD	imagerel $unwind$?AuProcessExit@@YAXPEAU_au_proc_@@@Z
$pdata$?AuProcessGetFileDesc@@YAHPEAU_au_proc_@@@Z DD imagerel $LN7
	DD	imagerel $LN7+69
	DD	imagerel $unwind$?AuProcessGetFileDesc@@YAHPEAU_au_proc_@@@Z
$pdata$?AuProcessWaitForTermination@@YAXPEAU_au_proc_@@H@Z DD imagerel $LN8
	DD	imagerel $LN8+105
	DD	imagerel $unwind$?AuProcessWaitForTermination@@YAXPEAU_au_proc_@@H@Z
$pdata$?AuProcessFindByPID@@YAPEAU_au_proc_@@PEAU1@H@Z DD imagerel $LN7
	DD	imagerel $LN7+75
	DD	imagerel $unwind$?AuProcessFindByPID@@YAPEAU_au_proc_@@PEAU1@H@Z
$pdata$?AuProcessFindByThread@@YAPEAU_au_proc_@@PEAU1@PEAU_au_thread_@@@Z DD imagerel $LN7
	DD	imagerel $LN7+79
	DD	imagerel $unwind$?AuProcessFindByThread@@YAPEAU_au_proc_@@PEAU1@PEAU_au_thread_@@@Z
$pdata$?AuAllocateProcessID@@YAHXZ DD imagerel $LN3
	DD	imagerel $LN3+37
	DD	imagerel $unwind$?AuAllocateProcessID@@YAHXZ
$pdata$?AuCreateRootProc@@YAPEAU_au_proc_@@XZ DD imagerel $LN6
	DD	imagerel $LN6+316
	DD	imagerel $unwind$?AuCreateRootProc@@YAPEAU_au_proc_@@XZ
$pdata$?AuGetKillableProcess@@YAPEAU_au_proc_@@XZ DD imagerel $LN7
	DD	imagerel $LN7+69
	DD	imagerel $unwind$?AuGetKillableProcess@@YAPEAU_au_proc_@@XZ
$pdata$?AuProcessHeapMemDestroy@@YAXPEAU_au_proc_@@@Z DD imagerel $LN7
	DD	imagerel $LN7+228
	DD	imagerel $unwind$?AuProcessHeapMemDestroy@@YAXPEAU_au_proc_@@@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?AuRemoveProcess@@YAXPEAU_au_proc_@@0@Z DD 010e01H
	DD	0420eH
$unwind$?AuProcessFindPID@@YAPEAU_au_proc_@@H@Z DD 010801H
	DD	02208H
$unwind$?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z DD 010901H
	DD	02209H
$unwind$?CreateUserStack@@YAPEA_KPEA_K@Z DD 010901H
	DD	08209H
$unwind$?AuStartRootProc@@YAXXZ DD 010401H
	DD	08204H
$unwind$?AuCreateProcessSlot@@YAPEAU_au_proc_@@PEAU1@PEAD@Z DD 010e01H
	DD	0820eH
$unwind$?AuProcessExit@@YAXPEAU_au_proc_@@@Z DD 010901H
	DD	08209H
$unwind$?AuProcessGetFileDesc@@YAHPEAU_au_proc_@@@Z DD 010901H
	DD	02209H
$unwind$?AuProcessWaitForTermination@@YAXPEAU_au_proc_@@H@Z DD 010d01H
	DD	0620dH
$unwind$?AuProcessFindByPID@@YAPEAU_au_proc_@@PEAU1@H@Z DD 010d01H
	DD	0220dH
$unwind$?AuProcessFindByThread@@YAPEAU_au_proc_@@PEAU1@PEAU_au_thread_@@@Z DD 010e01H
	DD	0220eH
$unwind$?AuAllocateProcessID@@YAHXZ DD 010401H
	DD	02204H
$unwind$?AuCreateRootProc@@YAPEAU_au_proc_@@XZ DD 010401H
	DD	08204H
$unwind$?AuGetKillableProcess@@YAPEAU_au_proc_@@XZ DD 010401H
	DD	02204H
$unwind$?AuProcessHeapMemDestroy@@YAXPEAU_au_proc_@@@Z DD 010901H
	DD	0a209H
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\process.cpp
_TEXT	SEGMENT
i$1 = 32
page$2 = 40
phys$3 = 48
proc_mem_diff$ = 56
tv67 = 64
proc$ = 96
?AuProcessHeapMemDestroy@@YAXPEAU_au_proc_@@@Z PROC	; AuProcessHeapMemDestroy

; 351  : void AuProcessHeapMemDestroy(AuProcess* proc) {

$LN7:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 88					; 00000058H

; 352  : 	size_t proc_mem_diff = proc->proc_mem_heap - PROCESS_BREAK_ADDRESS;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rax, QWORD PTR [rax+1071]
	sub	rax, 805306368				; 30000000H
	mov	QWORD PTR proc_mem_diff$[rsp], rax

; 353  : 	for (int i = 0; i < proc_mem_diff / 4096; i++) {

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN4@AuProcessH
$LN3@AuProcessH:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN4@AuProcessH:
	movsxd	rax, DWORD PTR i$1[rsp]
	mov	QWORD PTR tv67[rsp], rax
	xor	edx, edx
	mov	rax, QWORD PTR proc_mem_diff$[rsp]
	mov	ecx, 4096				; 00001000H
	div	rcx
	mov	rcx, QWORD PTR tv67[rsp]
	cmp	rcx, rax
	jae	$LN2@AuProcessH

; 354  : 		AuVPage* page = AuVmmngrGetPage(PROCESS_BREAK_ADDRESS + i * PAGE_SIZE, VIRT_GETPAGE_ONLY_RET, VIRT_GETPAGE_ONLY_RET);

	imul	eax, DWORD PTR i$1[rsp], 4096		; 00001000H
	add	eax, 805306368				; 30000000H
	cdqe
	mov	r8b, 2
	mov	dl, 2
	mov	rcx, rax
	call	AuVmmngrGetPage
	mov	QWORD PTR page$2[rsp], rax

; 355  : 		uint64_t phys = page->bits.page << PAGE_SHIFT;

	mov	rax, QWORD PTR page$2[rsp]
	mov	rax, QWORD PTR [rax]
	shr	rax, 12
	and	rax, 268435455				; 0fffffffH
	shl	rax, 12
	mov	QWORD PTR phys$3[rsp], rax

; 356  : 		if (phys) 

	cmp	QWORD PTR phys$3[rsp], 0
	je	SHORT $LN1@AuProcessH

; 357  : 			AuPmmngrFree((void*)phys);

	mov	rcx, QWORD PTR phys$3[rsp]
	call	AuPmmngrFree
$LN1@AuProcessH:

; 358  : 		page->bits.page = 0;

	mov	rax, QWORD PTR page$2[rsp]
	mov	rcx, -1099511623681			; ffffff0000000fffH
	mov	rax, QWORD PTR [rax]
	and	rax, rcx
	mov	rcx, QWORD PTR page$2[rsp]
	mov	QWORD PTR [rcx], rax

; 359  : 		page->bits.present = 0;

	mov	rax, QWORD PTR page$2[rsp]
	mov	rax, QWORD PTR [rax]
	and	rax, -2
	mov	rcx, QWORD PTR page$2[rsp]
	mov	QWORD PTR [rcx], rax

; 360  : 	}

	jmp	$LN3@AuProcessH
$LN2@AuProcessH:

; 361  : }

	add	rsp, 88					; 00000058H
	ret	0
?AuProcessHeapMemDestroy@@YAXPEAU_au_proc_@@@Z ENDP	; AuProcessHeapMemDestroy
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\process.cpp
_TEXT	SEGMENT
proc_$1 = 0
?AuGetKillableProcess@@YAPEAU_au_proc_@@XZ PROC		; AuGetKillableProcess

; 296  : AuProcess* AuGetKillableProcess() {

$LN7:
	sub	rsp, 24

; 297  : 	for (AuProcess* proc_ = proc_first; proc_ != NULL; proc_ = proc_->next) {

	mov	rax, QWORD PTR ?proc_first@@3PEAU_au_proc_@@EA ; proc_first
	mov	QWORD PTR proc_$1[rsp], rax
	jmp	SHORT $LN4@AuGetKilla
$LN3@AuGetKilla:
	mov	rax, QWORD PTR proc_$1[rsp]
	mov	rax, QWORD PTR [rax+1087]
	mov	QWORD PTR proc_$1[rsp], rax
$LN4@AuGetKilla:
	cmp	QWORD PTR proc_$1[rsp], 0
	je	SHORT $LN2@AuGetKilla

; 298  : 		if (proc_->state & PROCESS_STATE_DIED)

	mov	rax, QWORD PTR proc_$1[rsp]
	movzx	eax, BYTE PTR [rax+20]
	and	eax, 8
	test	eax, eax
	je	SHORT $LN1@AuGetKilla

; 299  : 			return proc_;

	mov	rax, QWORD PTR proc_$1[rsp]
	jmp	SHORT $LN5@AuGetKilla
$LN1@AuGetKilla:

; 300  : 	}

	jmp	SHORT $LN3@AuGetKilla
$LN2@AuGetKilla:

; 301  : 
; 302  : 	return NULL;

	xor	eax, eax
$LN5@AuGetKilla:

; 303  : }

	add	rsp, 24
	ret	0
?AuGetKillableProcess@@YAPEAU_au_proc_@@XZ ENDP		; AuGetKillableProcess
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\process.cpp
_TEXT	SEGMENT
i$1 = 32
proc$ = 40
cr3$ = 48
main_thr_stack$ = 56
?AuCreateRootProc@@YAPEAU_au_proc_@@XZ PROC		; AuCreateRootProc

; 191  : AuProcess* AuCreateRootProc() {

$LN6:
	sub	rsp, 72					; 00000048H

; 192  : 	AuProcess *proc = (AuProcess*)kmalloc(sizeof(AuProcess));

	mov	ecx, 1103				; 0000044fH
	call	kmalloc
	mov	QWORD PTR proc$[rsp], rax

; 193  : 	memset(proc, 0, sizeof(AuProcess));

	mov	r8d, 1103				; 0000044fH
	xor	edx, edx
	mov	rcx, QWORD PTR proc$[rsp]
	call	memset

; 194  : 
; 195  : 	proc->proc_id = AuAllocateProcessID();

	call	?AuAllocateProcessID@@YAHXZ		; AuAllocateProcessID
	mov	rcx, QWORD PTR proc$[rsp]
	mov	DWORD PTR [rcx], eax

; 196  : 	memset(proc->name, 0, 16);

	mov	rax, QWORD PTR proc$[rsp]
	add	rax, 4
	mov	r8d, 16
	xor	edx, edx
	mov	rcx, rax
	call	memset

; 197  : 	strcpy(proc->name, "_root");

	mov	rax, QWORD PTR proc$[rsp]
	add	rax, 4
	lea	rdx, OFFSET FLAT:$SG4045
	mov	rcx, rax
	call	strcpy

; 198  : 
; 199  : 	/* create empty virtual address space */
; 200  : 	uint64_t* cr3 = AuCreateVirtualAddressSpace();

	call	AuCreateVirtualAddressSpace
	mov	QWORD PTR cr3$[rsp], rax

; 201  : 	/* create the process main thread stack */
; 202  : 	uint64_t  main_thr_stack = (uint64_t)CreateUserStack(cr3);

	mov	rcx, QWORD PTR cr3$[rsp]
	call	?CreateUserStack@@YAPEA_KPEA_K@Z	; CreateUserStack
	mov	QWORD PTR main_thr_stack$[rsp], rax

; 203  : 	proc->state = PROCESS_STATE_NOT_READY;

	mov	rax, QWORD PTR proc$[rsp]
	mov	BYTE PTR [rax+20], 1

; 204  : 	proc->cr3 = cr3;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR cr3$[rsp]
	mov	QWORD PTR [rax+22], rcx

; 205  : 	proc->_main_stack_ = main_thr_stack;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR main_thr_stack$[rsp]
	mov	QWORD PTR [rax+46], rcx

; 206  : 	
; 207  : 	proc->vmareas = initialize_list();

	call	initialize_list
	mov	rcx, QWORD PTR proc$[rsp]
	mov	QWORD PTR [rcx+1047], rax

; 208  : 	proc->shmmaps = initialize_list();

	call	initialize_list
	mov	rcx, QWORD PTR proc$[rsp]
	mov	QWORD PTR [rcx+1055], rax

; 209  : 	proc->shm_break = USER_SHARED_MEM_START;

	mov	rax, QWORD PTR proc$[rsp]
	mov	ecx, -2147483648			; 80000000H
	mov	QWORD PTR [rax+1063], rcx

; 210  : 	proc->proc_mem_heap = PROCESS_BREAK_ADDRESS;

	mov	rax, QWORD PTR proc$[rsp]
	mov	QWORD PTR [rax+1071], 805306368		; 30000000H

; 211  : 	proc->proc_mmap_len = 0;

	mov	rax, QWORD PTR proc$[rsp]
	mov	QWORD PTR [rax+1079], 0

; 212  : 	for (int i = 0; i < FILE_DESC_PER_PROCESS; i++)

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN3@AuCreateRo
$LN2@AuCreateRo:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN3@AuCreateRo:
	cmp	DWORD PTR i$1[rsp], 60			; 0000003cH
	jge	SHORT $LN1@AuCreateRo

; 213  : 		proc->fds[i] = 0;

	movsxd	rax, DWORD PTR i$1[rsp]
	mov	rcx, QWORD PTR proc$[rsp]
	mov	QWORD PTR [rcx+rax*8+551], 0
	jmp	SHORT $LN2@AuCreateRo
$LN1@AuCreateRo:

; 214  : 
; 215  : 	/* create the main thread after loading the
; 216  : 	 * image file to process, because just after
; 217  : 	 * creating the thread, scheduler starts
; 218  : 	 * scheduling that thread
; 219  : 	 */
; 220  : 	AuAddProcess(NULL,proc);

	mov	rdx, QWORD PTR proc$[rsp]
	xor	ecx, ecx
	call	?AuAddProcess@@YAXPEAU_au_proc_@@0@Z	; AuAddProcess

; 221  : 	return proc;

	mov	rax, QWORD PTR proc$[rsp]

; 222  : }

	add	rsp, 72					; 00000048H
	ret	0
?AuCreateRootProc@@YAPEAU_au_proc_@@XZ ENDP		; AuCreateRootProc
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\process.cpp
_TEXT	SEGMENT
_pid$ = 0
?AuAllocateProcessID@@YAHXZ PROC			; AuAllocateProcessID

; 182  : int AuAllocateProcessID() {

$LN3:
	sub	rsp, 24

; 183  : 	size_t _pid = pid;

	movsxd	rax, DWORD PTR pid
	mov	QWORD PTR _pid$[rsp], rax

; 184  : 	pid = pid + 1;

	mov	eax, DWORD PTR pid
	inc	eax
	mov	DWORD PTR pid, eax

; 185  : 	return _pid;

	mov	eax, DWORD PTR _pid$[rsp]

; 186  : }

	add	rsp, 24
	ret	0
?AuAllocateProcessID@@YAHXZ ENDP			; AuAllocateProcessID
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\process.cpp
_TEXT	SEGMENT
proc_$1 = 0
proc$ = 32
thread$ = 40
?AuProcessFindByThread@@YAPEAU_au_proc_@@PEAU1@PEAU_au_thread_@@@Z PROC ; AuProcessFindByThread

; 122  : AuProcess* AuProcessFindByThread(AuProcess* proc, AuThread* thread) {

$LN7:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 24

; 123  : 	for (AuProcess *proc_ = proc_first; proc_ != NULL; proc_ = proc_->next) {

	mov	rax, QWORD PTR ?proc_first@@3PEAU_au_proc_@@EA ; proc_first
	mov	QWORD PTR proc_$1[rsp], rax
	jmp	SHORT $LN4@AuProcessF
$LN3@AuProcessF:
	mov	rax, QWORD PTR proc_$1[rsp]
	mov	rax, QWORD PTR [rax+1087]
	mov	QWORD PTR proc_$1[rsp], rax
$LN4@AuProcessF:
	cmp	QWORD PTR proc_$1[rsp], 0
	je	SHORT $LN2@AuProcessF

; 124  : 		if (proc_->main_thread == thread) {

	mov	rax, QWORD PTR proc_$1[rsp]
	mov	rcx, QWORD PTR thread$[rsp]
	cmp	QWORD PTR [rax+54], rcx
	jne	SHORT $LN1@AuProcessF

; 125  : 			return proc_;

	mov	rax, QWORD PTR proc_$1[rsp]
	jmp	SHORT $LN5@AuProcessF
$LN1@AuProcessF:

; 126  : 		}
; 127  : 	}

	jmp	SHORT $LN3@AuProcessF
$LN2@AuProcessF:

; 128  : 
; 129  : 	return NULL;

	xor	eax, eax
$LN5@AuProcessF:

; 130  : }

	add	rsp, 24
	ret	0
?AuProcessFindByThread@@YAPEAU_au_proc_@@PEAU1@PEAU_au_thread_@@@Z ENDP ; AuProcessFindByThread
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\process.cpp
_TEXT	SEGMENT
proc_$1 = 0
proc$ = 32
pid$ = 40
?AuProcessFindByPID@@YAPEAU_au_proc_@@PEAU1@H@Z PROC	; AuProcessFindByPID

; 109  : AuProcess* AuProcessFindByPID(AuProcess* proc, int pid) {

$LN7:
	mov	DWORD PTR [rsp+16], edx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 24

; 110  : 	for (AuProcess *proc_ = proc_first; proc_ != NULL; proc_ = proc_->next) {

	mov	rax, QWORD PTR ?proc_first@@3PEAU_au_proc_@@EA ; proc_first
	mov	QWORD PTR proc_$1[rsp], rax
	jmp	SHORT $LN4@AuProcessF
$LN3@AuProcessF:
	mov	rax, QWORD PTR proc_$1[rsp]
	mov	rax, QWORD PTR [rax+1087]
	mov	QWORD PTR proc_$1[rsp], rax
$LN4@AuProcessF:
	cmp	QWORD PTR proc_$1[rsp], 0
	je	SHORT $LN2@AuProcessF

; 111  : 		if (proc_->proc_id == pid)

	mov	rax, QWORD PTR proc_$1[rsp]
	mov	ecx, DWORD PTR pid$[rsp]
	cmp	DWORD PTR [rax], ecx
	jne	SHORT $LN1@AuProcessF

; 112  : 			return proc_;

	mov	rax, QWORD PTR proc_$1[rsp]
	jmp	SHORT $LN5@AuProcessF
$LN1@AuProcessF:

; 113  : 	}

	jmp	SHORT $LN3@AuProcessF
$LN2@AuProcessF:

; 114  : 	return NULL;

	xor	eax, eax
$LN5@AuProcessF:

; 115  : }

	add	rsp, 24
	ret	0
?AuProcessFindByPID@@YAPEAU_au_proc_@@PEAU1@H@Z ENDP	; AuProcessFindByPID
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\process.cpp
_TEXT	SEGMENT
?AuProcessGetMutex@@YAPEAU_mutex_@@XZ PROC		; AuProcessGetMutex

; 427  : 	return process_mutex;

	mov	rax, QWORD PTR ?process_mutex@@3PEAU_mutex_@@EA ; process_mutex

; 428  : }

	ret	0
?AuProcessGetMutex@@YAPEAU_mutex_@@XZ ENDP		; AuProcessGetMutex
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\process.cpp
_TEXT	SEGMENT
killable$1 = 32
proc$ = 64
pid$ = 72
?AuProcessWaitForTermination@@YAXPEAU_au_proc_@@H@Z PROC ; AuProcessWaitForTermination

; 315  : void AuProcessWaitForTermination(AuProcess *proc, int pid) {

$LN8:
	mov	DWORD PTR [rsp+16], edx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H
$LN5@AuProcessW:

; 316  : 	do {
; 317  : 		AuProcess *killable = AuGetKillableProcess();

	call	?AuGetKillableProcess@@YAPEAU_au_proc_@@XZ ; AuGetKillableProcess
	mov	QWORD PTR killable$1[rsp], rax

; 318  : 
; 319  : 		if (killable) {

	cmp	QWORD PTR killable$1[rsp], 0
	je	SHORT $LN2@AuProcessW

; 320  : 			AuProcessClean(0, killable);

	mov	rdx, QWORD PTR killable$1[rsp]
	xor	ecx, ecx
	call	?AuProcessClean@@YAXPEAU_au_proc_@@0@Z	; AuProcessClean

; 321  : 			killable = NULL;

	mov	QWORD PTR killable$1[rsp], 0
$LN2@AuProcessW:

; 322  : 		}
; 323  : 
; 324  : 
; 325  : 		if (!killable){

	cmp	QWORD PTR killable$1[rsp], 0
	jne	SHORT $LN1@AuProcessW

; 326  : 			//AuBlockThread(proc->main_thread);
; 327  : 			AuSleepThread(proc->main_thread, 1000);

	mov	edx, 1000				; 000003e8H
	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR [rax+54]
	call	AuSleepThread

; 328  : 			proc->state = PROCESS_STATE_SUSPENDED;

	mov	rax, QWORD PTR proc$[rsp]
	mov	BYTE PTR [rax+20], 4

; 329  : 			x64_force_sched();

	call	x64_force_sched
$LN1@AuProcessW:

; 330  : 		}
; 331  : 	} while (1);

	xor	eax, eax
	cmp	eax, 1
	jne	SHORT $LN5@AuProcessW

; 332  : }

	add	rsp, 56					; 00000038H
	ret	0
?AuProcessWaitForTermination@@YAXPEAU_au_proc_@@H@Z ENDP ; AuProcessWaitForTermination
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\process.cpp
_TEXT	SEGMENT
i$1 = 0
proc$ = 32
?AuProcessGetFileDesc@@YAHPEAU_au_proc_@@@Z PROC	; AuProcessGetFileDesc

; 339  : int AuProcessGetFileDesc(AuProcess* proc) {

$LN7:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 24

; 340  : 	for (int i = 0; i < FILE_DESC_PER_PROCESS; i++) {

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN4@AuProcessG
$LN3@AuProcessG:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN4@AuProcessG:
	cmp	DWORD PTR i$1[rsp], 60			; 0000003cH
	jge	SHORT $LN2@AuProcessG

; 341  : 		if (!proc->fds[i])

	movsxd	rax, DWORD PTR i$1[rsp]
	mov	rcx, QWORD PTR proc$[rsp]
	cmp	QWORD PTR [rcx+rax*8+551], 0
	jne	SHORT $LN1@AuProcessG

; 342  : 			return i;

	mov	eax, DWORD PTR i$1[rsp]
	jmp	SHORT $LN5@AuProcessG
$LN1@AuProcessG:

; 343  : 	}

	jmp	SHORT $LN3@AuProcessG
$LN2@AuProcessG:

; 344  : 	return -1;

	mov	eax, -1
$LN5@AuProcessG:

; 345  : }

	add	rsp, 24
	ret	0
?AuProcessGetFileDesc@@YAHPEAU_au_proc_@@@Z ENDP	; AuProcessGetFileDesc
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\process.cpp
_TEXT	SEGMENT
i$1 = 32
i$2 = 36
file$3 = 40
killable$4 = 48
proc$ = 80
?AuProcessExit@@YAXPEAU_au_proc_@@@Z PROC		; AuProcessExit

; 367  : void AuProcessExit(AuProcess* proc) {

$LN15:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 72					; 00000048H

; 368  : 	x64_cli();

	call	x64_cli

; 369  : 	if (proc == root_proc) {

	mov	rax, QWORD PTR ?root_proc@@3PEAU_au_proc_@@EA ; root_proc
	cmp	QWORD PTR proc$[rsp], rax
	jne	SHORT $LN12@AuProcessE

; 370  : 		SeTextOut("[aurora]: cannot exit root process \r\n");

	lea	rcx, OFFSET FLAT:$SG4121
	call	SeTextOut

; 371  : 		return;

	jmp	$LN13@AuProcessE
$LN12@AuProcessE:

; 372  : 	}
; 373  : 
; 374  : 	kmalloc_debug_on(true);

	mov	cl, 1
	call	kmalloc_debug_on

; 375  : 
; 376  : 	proc->state = PROCESS_STATE_DIED;

	mov	rax, QWORD PTR proc$[rsp]
	mov	BYTE PTR [rax+20], 8

; 377  : 
; 378  : 	AuSoundRemoveDSP(proc->main_thread->id);

	mov	rax, QWORD PTR proc$[rsp]
	mov	rax, QWORD PTR [rax+54]
	movzx	ecx, WORD PTR [rax+301]
	call	AuSoundRemoveDSP

; 379  : 
; 380  : 	AuSignalRemoveAll(proc->main_thread);

	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR [rax+54]
	call	?AuSignalRemoveAll@@YAXPEAU_au_thread_@@@Z ; AuSignalRemoveAll

; 381  : 
; 382  : 
; 383  : 	/* mark all the threads as blocked */
; 384  : 	for (int i = 1; i < proc->num_thread - 1; i++) {

	mov	DWORD PTR i$1[rsp], 1
	jmp	SHORT $LN11@AuProcessE
$LN10@AuProcessE:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN11@AuProcessE:
	mov	rax, QWORD PTR proc$[rsp]
	movzx	eax, BYTE PTR [rax+62]
	dec	eax
	cmp	DWORD PTR i$1[rsp], eax
	jge	SHORT $LN9@AuProcessE

; 385  : 		AuThread *killable = proc->threads[i];

	movsxd	rax, DWORD PTR i$1[rsp]
	mov	rcx, QWORD PTR proc$[rsp]
	mov	rax, QWORD PTR [rcx+rax*8+71]
	mov	QWORD PTR killable$4[rsp], rax

; 386  : 		if (killable) {

	cmp	QWORD PTR killable$4[rsp], 0
	je	SHORT $LN8@AuProcessE

; 387  : 			AuSignalRemoveAll(killable);

	mov	rcx, QWORD PTR killable$4[rsp]
	call	?AuSignalRemoveAll@@YAXPEAU_au_thread_@@@Z ; AuSignalRemoveAll

; 388  : 			AuThreadMoveToTrash(killable);

	mov	rcx, QWORD PTR killable$4[rsp]
	call	?AuThreadMoveToTrash@@YAXPEAU_au_thread_@@@Z ; AuThreadMoveToTrash
$LN8@AuProcessE:

; 389  : 		}
; 390  : 	}

	jmp	SHORT $LN10@AuProcessE
$LN9@AuProcessE:

; 391  : 
; 392  : 
; 393  : 	/* here we free almost every possible
; 394  : 	 * data, that we can free
; 395  : 	 */
; 396  : 	for (int i = 0; i < FILE_DESC_PER_PROCESS; i++) {

	mov	DWORD PTR i$2[rsp], 0
	jmp	SHORT $LN7@AuProcessE
$LN6@AuProcessE:
	mov	eax, DWORD PTR i$2[rsp]
	inc	eax
	mov	DWORD PTR i$2[rsp], eax
$LN7@AuProcessE:
	cmp	DWORD PTR i$2[rsp], 60			; 0000003cH
	jge	SHORT $LN5@AuProcessE

; 397  : 		AuVFSNode *file = proc->fds[i];

	movsxd	rax, DWORD PTR i$2[rsp]
	mov	rcx, QWORD PTR proc$[rsp]
	mov	rax, QWORD PTR [rcx+rax*8+551]
	mov	QWORD PTR file$3[rsp], rax

; 398  : 		if (file) {

	cmp	QWORD PTR file$3[rsp], 0
	je	SHORT $LN4@AuProcessE

; 399  : 			SeTextOut("Closing file -> %s , address -> %x \r\n", file->filename, file);

	mov	rax, QWORD PTR file$3[rsp]
	mov	r8, QWORD PTR file$3[rsp]
	mov	rdx, rax
	lea	rcx, OFFSET FLAT:$SG4134
	call	SeTextOut

; 400  : 			if (file->flags & FS_FLAG_DEVICE || file->flags & FS_FLAG_FILE_SYSTEM)

	mov	rax, QWORD PTR file$3[rsp]
	movzx	eax, WORD PTR [rax+61]
	and	eax, 8
	test	eax, eax
	jne	SHORT $LN2@AuProcessE
	mov	rax, QWORD PTR file$3[rsp]
	movzx	eax, WORD PTR [rax+61]
	and	eax, 64					; 00000040H
	test	eax, eax
	je	SHORT $LN3@AuProcessE
$LN2@AuProcessE:

; 401  : 				continue;

	jmp	SHORT $LN6@AuProcessE
$LN3@AuProcessE:

; 402  : 			if (file->flags & FS_FLAG_GENERAL)  {

	mov	rax, QWORD PTR file$3[rsp]
	movzx	eax, WORD PTR [rax+61]
	and	eax, 4
	test	eax, eax
	je	SHORT $LN1@AuProcessE

; 403  : 				
; 404  : 				kfree(file);

	mov	rcx, QWORD PTR file$3[rsp]
	call	kfree
$LN1@AuProcessE:
$LN4@AuProcessE:

; 405  : 			}
; 406  : 		}
; 407  : 	}

	jmp	$LN6@AuProcessE
$LN5@AuProcessE:

; 408  : 
; 409  : 	UnmapMemMapping((void*)PROCESS_MMAP_ADDRESS, proc->proc_mmap_len);

	mov	rax, QWORD PTR proc$[rsp]
	mov	rdx, QWORD PTR [rax+1079]
	mov	ecx, -1073741824			; ffffffffc0000000H
	call	?UnmapMemMapping@@YAXPEAX_K@Z		; UnmapMemMapping

; 410  : 
; 411  : 	/*unmap all shared memory mappings */
; 412  : 	AuSHMUnmapAll(proc);

	mov	rcx, QWORD PTR proc$[rsp]
	call	?AuSHMUnmapAll@@YAXPEAU_au_proc_@@@Z	; AuSHMUnmapAll

; 413  : 
; 414  : 	AuProcessHeapMemDestroy(proc);

	mov	rcx, QWORD PTR proc$[rsp]
	call	?AuProcessHeapMemDestroy@@YAXPEAU_au_proc_@@@Z ; AuProcessHeapMemDestroy

; 415  : 
; 416  : 	kfree(proc->file);

	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR [rax+1031]
	call	kfree

; 417  : 
; 418  : 	AuThreadMoveToTrash(proc->main_thread);

	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR [rax+54]
	call	?AuThreadMoveToTrash@@YAXPEAU_au_thread_@@@Z ; AuThreadMoveToTrash

; 419  : 	
; 420  : 	kmalloc_debug_on(false);

	xor	ecx, ecx
	call	kmalloc_debug_on

; 421  : 
; 422  : 	x64_force_sched();

	call	x64_force_sched
$LN13@AuProcessE:

; 423  : }

	add	rsp, 72					; 00000048H
	ret	0
?AuProcessExit@@YAXPEAU_au_proc_@@@Z ENDP		; AuProcessExit
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\process.cpp
_TEXT	SEGMENT
i$1 = 32
proc$ = 40
cr3$ = 48
main_thr_stack$ = 56
parent$ = 80
name$ = 88
?AuCreateProcessSlot@@YAPEAU_au_proc_@@PEAU1@PEAD@Z PROC ; AuCreateProcessSlot

; 229  : AuProcess* AuCreateProcessSlot(AuProcess* parent, char* name) {

$LN6:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 72					; 00000048H

; 230  : 	AuProcess* proc = (AuProcess*)kmalloc(sizeof(AuProcess));

	mov	ecx, 1103				; 0000044fH
	call	kmalloc
	mov	QWORD PTR proc$[rsp], rax

; 231  : 	memset(proc, 0, sizeof(AuProcess));

	mov	r8d, 1103				; 0000044fH
	xor	edx, edx
	mov	rcx, QWORD PTR proc$[rsp]
	call	memset

; 232  : 
; 233  : 	proc->proc_id = AuAllocateProcessID();

	call	?AuAllocateProcessID@@YAHXZ		; AuAllocateProcessID
	mov	rcx, QWORD PTR proc$[rsp]
	mov	DWORD PTR [rcx], eax

; 234  : 	memset(proc->name, 0, 16);

	mov	rax, QWORD PTR proc$[rsp]
	add	rax, 4
	mov	r8d, 16
	xor	edx, edx
	mov	rcx, rax
	call	memset

; 235  : 	strcpy(proc->name, name);

	mov	rax, QWORD PTR proc$[rsp]
	add	rax, 4
	mov	rdx, QWORD PTR name$[rsp]
	mov	rcx, rax
	call	strcpy

; 236  : 
; 237  : 	/* create empty virtual address space */
; 238  : 	uint64_t* cr3 = AuCreateVirtualAddressSpace();

	call	AuCreateVirtualAddressSpace
	mov	QWORD PTR cr3$[rsp], rax

; 239  : 	/* create the process main thread stack */
; 240  : 	uint64_t  main_thr_stack = (uint64_t)CreateUserStack(cr3);

	mov	rcx, QWORD PTR cr3$[rsp]
	call	?CreateUserStack@@YAPEA_KPEA_K@Z	; CreateUserStack
	mov	QWORD PTR main_thr_stack$[rsp], rax

; 241  : 	proc->state = PROCESS_STATE_NOT_READY;

	mov	rax, QWORD PTR proc$[rsp]
	mov	BYTE PTR [rax+20], 1

; 242  : 	proc->cr3 = cr3;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR cr3$[rsp]
	mov	QWORD PTR [rax+22], rcx

; 243  : 	proc->_main_stack_ = main_thr_stack;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR main_thr_stack$[rsp]
	mov	QWORD PTR [rax+46], rcx

; 244  : 
; 245  : 	proc->vmareas = initialize_list();

	call	initialize_list
	mov	rcx, QWORD PTR proc$[rsp]
	mov	QWORD PTR [rcx+1047], rax

; 246  : 	proc->shmmaps = initialize_list();

	call	initialize_list
	mov	rcx, QWORD PTR proc$[rsp]
	mov	QWORD PTR [rcx+1055], rax

; 247  : 	proc->shm_break = USER_SHARED_MEM_START;

	mov	rax, QWORD PTR proc$[rsp]
	mov	ecx, -2147483648			; 80000000H
	mov	QWORD PTR [rax+1063], rcx

; 248  : 	proc->proc_mem_heap = PROCESS_BREAK_ADDRESS;

	mov	rax, QWORD PTR proc$[rsp]
	mov	QWORD PTR [rax+1071], 805306368		; 30000000H

; 249  : 	proc->proc_mmap_len = 0;

	mov	rax, QWORD PTR proc$[rsp]
	mov	QWORD PTR [rax+1079], 0

; 250  : 
; 251  : 	for (int i = 0; i < FILE_DESC_PER_PROCESS; i++)

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN3@AuCreatePr
$LN2@AuCreatePr:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN3@AuCreatePr:
	cmp	DWORD PTR i$1[rsp], 60			; 0000003cH
	jge	SHORT $LN1@AuCreatePr

; 252  : 		proc->fds[i] = 0;

	movsxd	rax, DWORD PTR i$1[rsp]
	mov	rcx, QWORD PTR proc$[rsp]
	mov	QWORD PTR [rcx+rax*8+551], 0
	jmp	SHORT $LN2@AuCreatePr
$LN1@AuCreatePr:

; 253  : 
; 254  : 	proc->main_thread = NULL;

	mov	rax, QWORD PTR proc$[rsp]
	mov	QWORD PTR [rax+54], 0

; 255  : 
; 256  : 	/* create the main thread after loading the
; 257  : 	* image file to process, because just after
; 258  : 	* creating the thread, scheduler starts
; 259  : 	* scheduling that thread
; 260  : 	*/
; 261  : 	AuAddProcess(parent, proc);

	mov	rdx, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR parent$[rsp]
	call	?AuAddProcess@@YAXPEAU_au_proc_@@0@Z	; AuAddProcess

; 262  : 	return proc;

	mov	rax, QWORD PTR proc$[rsp]

; 263  : }

	add	rsp, 72					; 00000048H
	ret	0
?AuCreateProcessSlot@@YAPEAU_au_proc_@@PEAU1@PEAD@Z ENDP ; AuCreateProcessSlot
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\process.cpp
_TEXT	SEGMENT
?AuGetRootProcess@@YAPEAU_au_proc_@@XZ PROC		; AuGetRootProcess

; 289  : 	return root_proc;

	mov	rax, QWORD PTR ?root_proc@@3PEAU_au_proc_@@EA ; root_proc

; 290  : }

	ret	0
?AuGetRootProcess@@YAPEAU_au_proc_@@XZ ENDP		; AuGetRootProcess
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\process.cpp
_TEXT	SEGMENT
num_args$ = 32
argvs$ = 40
about_str$ = 48
about$ = 56
?AuStartRootProc@@YAXXZ PROC				; AuStartRootProc

; 269  : void AuStartRootProc() {

$LN3:
	sub	rsp, 72					; 00000048H

; 270  : 	proc_first = NULL;

	mov	QWORD PTR ?proc_first@@3PEAU_au_proc_@@EA, 0 ; proc_first

; 271  : 	proc_last = NULL;

	mov	QWORD PTR ?proc_last@@3PEAU_au_proc_@@EA, 0 ; proc_last

; 272  : 	pid = 1;

	mov	DWORD PTR pid, 1

; 273  : 	process_mutex = AuCreateMutex();

	call	AuCreateMutex
	mov	QWORD PTR ?process_mutex@@3PEAU_mutex_@@EA, rax ; process_mutex

; 274  : 	root_proc = AuCreateRootProc();

	call	?AuCreateRootProc@@YAPEAU_au_proc_@@XZ	; AuCreateRootProc
	mov	QWORD PTR ?root_proc@@3PEAU_au_proc_@@EA, rax ; root_proc

; 275  : 	int num_args = 1;

	mov	DWORD PTR num_args$[rsp], 1

; 276  : 	char* about_str = "-about";

	lea	rax, OFFSET FLAT:$SG4072
	mov	QWORD PTR about_str$[rsp], rax

; 277  : 	char* about = (char*)kmalloc(strlen(about_str));

	mov	rcx, QWORD PTR about_str$[rsp]
	call	strlen
	mov	ecx, eax
	call	kmalloc
	mov	QWORD PTR about$[rsp], rax

; 278  : 	strcpy(about, about_str);

	mov	rdx, QWORD PTR about_str$[rsp]
	mov	rcx, QWORD PTR about$[rsp]
	call	strcpy

; 279  : 	char** argvs = (char**)kmalloc(num_args);

	mov	ecx, DWORD PTR num_args$[rsp]
	call	kmalloc
	mov	QWORD PTR argvs$[rsp], rax

; 280  : 	memset(argvs, 0, num_args);

	mov	r8d, DWORD PTR num_args$[rsp]
	xor	edx, edx
	mov	rcx, QWORD PTR argvs$[rsp]
	call	memset

; 281  : 	argvs[0] = about;

	mov	eax, 8
	imul	rax, rax, 0
	mov	rcx, QWORD PTR argvs$[rsp]
	mov	rdx, QWORD PTR about$[rsp]
	mov	QWORD PTR [rcx+rax], rdx

; 282  : 	AuLoadExecToProcess(root_proc, "/init.exe",num_args,argvs);

	mov	r9, QWORD PTR argvs$[rsp]
	mov	r8d, DWORD PTR num_args$[rsp]
	lea	rdx, OFFSET FLAT:$SG4077
	mov	rcx, QWORD PTR ?root_proc@@3PEAU_au_proc_@@EA ; root_proc
	call	?AuLoadExecToProcess@@YAXPEAU_au_proc_@@PEADHPEAPEAD@Z ; AuLoadExecToProcess

; 283  : }

	add	rsp, 72					; 00000048H
	ret	0
?AuStartRootProc@@YAXXZ ENDP				; AuStartRootProc
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\process.cpp
_TEXT	SEGMENT
i$1 = 32
location$ = 40
blk$2 = 48
tv73 = 56
cr3$ = 80
?CreateUserStack@@YAPEA_KPEA_K@Z PROC			; CreateUserStack

; 165  : uint64_t* CreateUserStack(uint64_t* cr3) {

$LN6:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 72					; 00000048H

; 166  : #define USER_STACK 0x0000700000000000 
; 167  : 	uint64_t location = USER_STACK;

	mov	rax, 123145302310912			; 0000700000000000H
	mov	QWORD PTR location$[rsp], rax

; 168  : 
; 169  : 	for (int i = 0; i < PROCESS_USER_STACK_SZ / 4096; i++) {

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN3@CreateUser
$LN2@CreateUser:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN3@CreateUser:
	cmp	DWORD PTR i$1[rsp], 64			; 00000040H
	jge	SHORT $LN1@CreateUser

; 170  : 		uint64_t* blk = (uint64_t*)P2V((size_t)AuPmmngrAlloc());

	call	AuPmmngrAlloc
	mov	rcx, rax
	call	P2V
	mov	QWORD PTR blk$2[rsp], rax

; 171  : 		AuMapPageEx(cr3, V2P((size_t)blk), location + i * PAGE_SIZE, X86_64_PAGING_USER);

	imul	eax, DWORD PTR i$1[rsp], 4096		; 00001000H
	cdqe
	mov	rcx, QWORD PTR location$[rsp]
	add	rcx, rax
	mov	rax, rcx
	mov	QWORD PTR tv73[rsp], rax
	mov	rcx, QWORD PTR blk$2[rsp]
	call	V2P
	mov	r9b, 4
	mov	rcx, QWORD PTR tv73[rsp]
	mov	r8, rcx
	mov	rdx, rax
	mov	rcx, QWORD PTR cr3$[rsp]
	call	AuMapPageEx

; 172  : 	}

	jmp	SHORT $LN2@CreateUser
$LN1@CreateUser:

; 173  : 
; 174  : 	return (uint64_t*)(USER_STACK + (PROCESS_USER_STACK_SZ));

	mov	rax, 123145302573056			; 0000700000040000H

; 175  : }

	add	rsp, 72					; 00000048H
	ret	0
?CreateUserStack@@YAPEA_KPEA_K@Z ENDP			; CreateUserStack
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\process.cpp
_TEXT	SEGMENT
proc_$1 = 0
thread$ = 32
?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z PROC ; AuProcessFindThread

; 150  : AuProcess *AuProcessFindThread(AuThread* thread) {

$LN7:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 24

; 151  : 	for (AuProcess *proc_ = proc_first; proc_ != NULL; proc_ = proc_->next) {

	mov	rax, QWORD PTR ?proc_first@@3PEAU_au_proc_@@EA ; proc_first
	mov	QWORD PTR proc_$1[rsp], rax
	jmp	SHORT $LN4@AuProcessF
$LN3@AuProcessF:
	mov	rax, QWORD PTR proc_$1[rsp]
	mov	rax, QWORD PTR [rax+1087]
	mov	QWORD PTR proc_$1[rsp], rax
$LN4@AuProcessF:
	cmp	QWORD PTR proc_$1[rsp], 0
	je	SHORT $LN2@AuProcessF

; 152  : 		if (proc_->main_thread == thread) {

	mov	rax, QWORD PTR proc_$1[rsp]
	mov	rcx, QWORD PTR thread$[rsp]
	cmp	QWORD PTR [rax+54], rcx
	jne	SHORT $LN1@AuProcessF

; 153  : 			return proc_;

	mov	rax, QWORD PTR proc_$1[rsp]
	jmp	SHORT $LN5@AuProcessF
$LN1@AuProcessF:

; 154  : 		}
; 155  : 	}

	jmp	SHORT $LN3@AuProcessF
$LN2@AuProcessF:

; 156  : 
; 157  : 	return NULL;

	xor	eax, eax
$LN5@AuProcessF:

; 158  : }

	add	rsp, 24
	ret	0
?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ENDP ; AuProcessFindThread
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\process.cpp
_TEXT	SEGMENT
proc_$1 = 0
pid$ = 32
?AuProcessFindPID@@YAPEAU_au_proc_@@H@Z PROC		; AuProcessFindPID

; 137  : AuProcess *AuProcessFindPID(int pid) {

$LN7:
	mov	DWORD PTR [rsp+8], ecx
	sub	rsp, 24

; 138  : 	for (AuProcess *proc_ = proc_first; proc_ != NULL; proc_ = proc_->next) {

	mov	rax, QWORD PTR ?proc_first@@3PEAU_au_proc_@@EA ; proc_first
	mov	QWORD PTR proc_$1[rsp], rax
	jmp	SHORT $LN4@AuProcessF
$LN3@AuProcessF:
	mov	rax, QWORD PTR proc_$1[rsp]
	mov	rax, QWORD PTR [rax+1087]
	mov	QWORD PTR proc_$1[rsp], rax
$LN4@AuProcessF:
	cmp	QWORD PTR proc_$1[rsp], 0
	je	SHORT $LN2@AuProcessF

; 139  : 		if (proc_->proc_id == pid)

	mov	rax, QWORD PTR proc_$1[rsp]
	mov	ecx, DWORD PTR pid$[rsp]
	cmp	DWORD PTR [rax], ecx
	jne	SHORT $LN1@AuProcessF

; 140  : 			return proc_;

	mov	rax, QWORD PTR proc_$1[rsp]
	jmp	SHORT $LN5@AuProcessF
$LN1@AuProcessF:

; 141  : 	}

	jmp	SHORT $LN3@AuProcessF
$LN2@AuProcessF:

; 142  : 	return NULL;

	xor	eax, eax
$LN5@AuProcessF:

; 143  : }

	add	rsp, 24
	ret	0
?AuProcessFindPID@@YAPEAU_au_proc_@@H@Z ENDP		; AuProcessFindPID
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\process.cpp
_TEXT	SEGMENT
parent$ = 48
proc$ = 56
?AuRemoveProcess@@YAXPEAU_au_proc_@@0@Z PROC		; AuRemoveProcess

; 84   : void AuRemoveProcess(AuProcess* parent, AuProcess* proc) {

$LN8:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 85   : 	if (proc_first == NULL)

	cmp	QWORD PTR ?proc_first@@3PEAU_au_proc_@@EA, 0 ; proc_first
	jne	SHORT $LN5@AuRemovePr

; 86   : 		return;

	jmp	$LN6@AuRemovePr
$LN5@AuRemovePr:

; 87   : 
; 88   : 	if (proc == proc_first) {

	mov	rax, QWORD PTR ?proc_first@@3PEAU_au_proc_@@EA ; proc_first
	cmp	QWORD PTR proc$[rsp], rax
	jne	SHORT $LN4@AuRemovePr

; 89   : 		proc_first = proc_first->next;

	mov	rax, QWORD PTR ?proc_first@@3PEAU_au_proc_@@EA ; proc_first
	mov	rax, QWORD PTR [rax+1087]
	mov	QWORD PTR ?proc_first@@3PEAU_au_proc_@@EA, rax ; proc_first

; 90   : 	}
; 91   : 	else {

	jmp	SHORT $LN3@AuRemovePr
$LN4@AuRemovePr:

; 92   : 		proc->prev->next = proc->next;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rax, QWORD PTR [rax+1095]
	mov	rcx, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR [rcx+1087]
	mov	QWORD PTR [rax+1087], rcx
$LN3@AuRemovePr:

; 93   : 	}
; 94   : 
; 95   : 	if (proc == proc_last) {

	mov	rax, QWORD PTR ?proc_last@@3PEAU_au_proc_@@EA ; proc_last
	cmp	QWORD PTR proc$[rsp], rax
	jne	SHORT $LN2@AuRemovePr

; 96   : 		proc_last = proc->prev;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rax, QWORD PTR [rax+1095]
	mov	QWORD PTR ?proc_last@@3PEAU_au_proc_@@EA, rax ; proc_last

; 97   : 	}
; 98   : 	else {

	jmp	SHORT $LN1@AuRemovePr
$LN2@AuRemovePr:

; 99   : 		proc->next->prev = proc->prev;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rax, QWORD PTR [rax+1087]
	mov	rcx, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR [rcx+1095]
	mov	QWORD PTR [rax+1095], rcx
$LN1@AuRemovePr:

; 100  : 	}
; 101  : 	kfree(proc);

	mov	rcx, QWORD PTR proc$[rsp]
	call	kfree
$LN6@AuRemovePr:

; 102  : }

	add	rsp, 40					; 00000028H
	ret	0
?AuRemoveProcess@@YAXPEAU_au_proc_@@0@Z ENDP		; AuRemoveProcess
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\process.cpp
_TEXT	SEGMENT
parent$ = 8
proc$ = 16
?AuAddProcess@@YAXPEAU_au_proc_@@0@Z PROC		; AuAddProcess

; 62   : void AuAddProcess(AuProcess* parent, AuProcess *proc) {

	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx

; 63   : 	proc->next = NULL;

	mov	rax, QWORD PTR proc$[rsp]
	mov	QWORD PTR [rax+1087], 0

; 64   : 	proc->prev = NULL;

	mov	rax, QWORD PTR proc$[rsp]
	mov	QWORD PTR [rax+1095], 0

; 65   : 
; 66   : 	if (proc_first == NULL) {

	cmp	QWORD PTR ?proc_first@@3PEAU_au_proc_@@EA, 0 ; proc_first
	jne	SHORT $LN2@AuAddProce

; 67   : 		proc_last = proc;

	mov	rax, QWORD PTR proc$[rsp]
	mov	QWORD PTR ?proc_last@@3PEAU_au_proc_@@EA, rax ; proc_last

; 68   : 		proc_first = proc;

	mov	rax, QWORD PTR proc$[rsp]
	mov	QWORD PTR ?proc_first@@3PEAU_au_proc_@@EA, rax ; proc_first

; 69   : 	}
; 70   : 	else {

	jmp	SHORT $LN1@AuAddProce
$LN2@AuAddProce:

; 71   : 		proc_last->next = proc;

	mov	rax, QWORD PTR ?proc_last@@3PEAU_au_proc_@@EA ; proc_last
	mov	rcx, QWORD PTR proc$[rsp]
	mov	QWORD PTR [rax+1087], rcx

; 72   : 		proc->prev = proc_last;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR ?proc_last@@3PEAU_au_proc_@@EA ; proc_last
	mov	QWORD PTR [rax+1095], rcx
$LN1@AuAddProce:

; 73   : 	}
; 74   : 	proc_last = proc;

	mov	rax, QWORD PTR proc$[rsp]
	mov	QWORD PTR ?proc_last@@3PEAU_au_proc_@@EA, rax ; proc_last

; 75   : 	//proc->parent = parent;
; 76   : }

	ret	0
?AuAddProcess@@YAXPEAU_au_proc_@@0@Z ENDP		; AuAddProcess
_TEXT	ENDS
END
