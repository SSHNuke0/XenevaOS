; Listing generated by Microsoft (R) Optimizing Compiler Version 19.29.30154.0 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

msvcjmc	SEGMENT
__FF25FC18_icmp@cpp DB 01H
msvcjmc	ENDS
PUBLIC	?AuICMPReceive@@YAHPEAU_socket_@@PEAU_msghdr_@@H@Z ; AuICMPReceive
PUBLIC	?AuICMPSend@@YAHPEAU_socket_@@PEAU_msghdr_@@H@Z	; AuICMPSend
PUBLIC	?AuICMPClose@@YAXPEAU_socket_@@@Z		; AuICMPClose
PUBLIC	?AuICMPBind@@YAHPEAU_socket_@@PEAU_sockaddr_@@_K@Z ; AuICMPBind
PUBLIC	?AuICMPRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z	; AuICMPRead
PUBLIC	?AuICMPWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z	; AuICMPWrite
PUBLIC	?CreateICMPSocket@@YAHXZ			; CreateICMPSocket
PUBLIC	__JustMyCode_Default
PUBLIC	??_C@_0BH@CNPLJGJF@ICMP?5Socket?5created?5?$AN?6@ ; `string'
EXTRN	AuGetCurrentThread:PROC
EXTRN	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z:PROC ; AuProcessFindThread
EXTRN	?AuProcessFindSubThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z:PROC ; AuProcessFindSubThread
EXTRN	?AuProcessGetFileDesc@@YAHPEAU_au_proc_@@@Z:PROC ; AuProcessGetFileDesc
EXTRN	kmalloc:PROC
EXTRN	memset:PROC
EXTRN	SeTextOut:PROC
EXTRN	__CheckForDebuggerJustMyCode:PROC
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuICMPReceive@@YAHPEAU_socket_@@PEAU_msghdr_@@H@Z DD imagerel $LN3
	DD	imagerel $LN3+45
	DD	imagerel $unwind$?AuICMPReceive@@YAHPEAU_socket_@@PEAU_msghdr_@@H@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuICMPSend@@YAHPEAU_socket_@@PEAU_msghdr_@@H@Z DD imagerel $LN3
	DD	imagerel $LN3+45
	DD	imagerel $unwind$?AuICMPSend@@YAHPEAU_socket_@@PEAU_msghdr_@@H@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuICMPClose@@YAXPEAU_socket_@@@Z DD imagerel $LN3
	DD	imagerel $LN3+33
	DD	imagerel $unwind$?AuICMPClose@@YAXPEAU_socket_@@@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuICMPBind@@YAHPEAU_socket_@@PEAU_sockaddr_@@_K@Z DD imagerel $LN3
	DD	imagerel $LN3+45
	DD	imagerel $unwind$?AuICMPBind@@YAHPEAU_socket_@@PEAU_sockaddr_@@_K@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuICMPRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z DD imagerel $LN3
	DD	imagerel $LN3+50
	DD	imagerel $unwind$?AuICMPRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuICMPWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z DD imagerel $LN3
	DD	imagerel $LN3+50
	DD	imagerel $unwind$?AuICMPWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?CreateICMPSocket@@YAHXZ DD imagerel $LN6
	DD	imagerel $LN6+264
	DD	imagerel $unwind$?CreateICMPSocket@@YAHXZ
pdata	ENDS
;	COMDAT ??_C@_0BH@CNPLJGJF@ICMP?5Socket?5created?5?$AN?6@
CONST	SEGMENT
??_C@_0BH@CNPLJGJF@ICMP?5Socket?5created?5?$AN?6@ DB 'ICMP Socket created'
	DB	' ', 0dH, 0aH, 00H				; `string'
CONST	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?CreateICMPSocket@@YAHXZ DD 025030e01H
	DD	0f209230eH
	DD	05002H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuICMPWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z DD 025031e01H
	DD	0b219231eH
	DD	05015H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuICMPRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z DD 025031e01H
	DD	0b219231eH
	DD	05015H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuICMPBind@@YAHPEAU_socket_@@PEAU_sockaddr_@@_K@Z DD 025031901H
	DD	0b2142319H
	DD	05010H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuICMPClose@@YAXPEAU_socket_@@@Z DD 025030f01H
	DD	0b20a230fH
	DD	05006H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuICMPSend@@YAHPEAU_socket_@@PEAU_msghdr_@@H@Z DD 025031901H
	DD	0b2142319H
	DD	05010H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuICMPReceive@@YAHPEAU_socket_@@PEAU_msghdr_@@H@Z DD 025031901H
	DD	0b2142319H
	DD	05010H
xdata	ENDS
; Function compile flags: /Odt
;	COMDAT __JustMyCode_Default
_TEXT	SEGMENT
__JustMyCode_Default PROC				; COMDAT
	ret	0
__JustMyCode_Default ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Net\icmp.cpp
;	COMDAT ?CreateICMPSocket@@YAHXZ
_TEXT	SEGMENT
fd$ = 0
thread$ = 8
proc$ = 16
sock$ = 24
?CreateICMPSocket@@YAHXZ PROC				; CreateICMPSocket, COMDAT

; 83   : int CreateICMPSocket() {

$LN6:
	push	rbp
	sub	rsp, 128				; 00000080H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__FF25FC18_icmp@cpp
	call	__CheckForDebuggerJustMyCode

; 84   : 	int fd = -1;

	mov	DWORD PTR fd$[rbp], -1

; 85   : 	AuThread *thread = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR thread$[rbp], rax

; 86   : 	if (!thread)

	cmp	QWORD PTR thread$[rbp], 0
	jne	SHORT $LN2@CreateICMP

; 87   : 		return -1;

	mov	eax, -1
	jmp	$LN1@CreateICMP
$LN2@CreateICMP:

; 88   : 	AuProcess *proc = AuProcessFindThread(thread);

	mov	rcx, QWORD PTR thread$[rbp]
	call	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindThread
	mov	QWORD PTR proc$[rbp], rax

; 89   : 	if (!proc)

	cmp	QWORD PTR proc$[rbp], 0
	jne	SHORT $LN3@CreateICMP

; 90   : 		proc = AuProcessFindSubThread(thread);

	mov	rcx, QWORD PTR thread$[rbp]
	call	?AuProcessFindSubThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindSubThread
	mov	QWORD PTR proc$[rbp], rax
$LN3@CreateICMP:

; 91   : 	if (!proc)

	cmp	QWORD PTR proc$[rbp], 0
	jne	SHORT $LN4@CreateICMP

; 92   : 		return -1;

	mov	eax, -1
	jmp	$LN1@CreateICMP
$LN4@CreateICMP:

; 93   : 	AuSocket *sock = (AuSocket*)kmalloc(sizeof(AuSocket));

	mov	ecx, 56					; 00000038H
	call	kmalloc
	mov	QWORD PTR sock$[rbp], rax

; 94   : 	memset(sock, 0, sizeof(AuSocket));

	mov	r8d, 56					; 00000038H
	xor	edx, edx
	mov	rcx, QWORD PTR sock$[rbp]
	call	memset

; 95   : 	fd = AuProcessGetFileDesc(proc);

	mov	rcx, QWORD PTR proc$[rbp]
	call	?AuProcessGetFileDesc@@YAHPEAU_au_proc_@@@Z ; AuProcessGetFileDesc
	mov	DWORD PTR fd$[rbp], eax

; 96   : 	/*sock->fsnode.read = AuICMPRead;
; 97   : 	sock->fsnode.write = AuICMPWrite;*/
; 98   : 	sock->bind = AuICMPBind;

	mov	rax, QWORD PTR sock$[rbp]
	lea	rcx, OFFSET FLAT:?AuICMPBind@@YAHPEAU_socket_@@PEAU_sockaddr_@@_K@Z ; AuICMPBind
	mov	QWORD PTR [rax+48], rcx

; 99   : 	sock->close = AuICMPClose;

	mov	rax, QWORD PTR sock$[rbp]
	lea	rcx, OFFSET FLAT:?AuICMPClose@@YAXPEAU_socket_@@@Z ; AuICMPClose
	mov	QWORD PTR [rax+32], rcx

; 100  : 	sock->connect = 0;

	mov	rax, QWORD PTR sock$[rbp]
	mov	QWORD PTR [rax+40], 0

; 101  : 	sock->receive = AuICMPReceive;

	mov	rax, QWORD PTR sock$[rbp]
	lea	rcx, OFFSET FLAT:?AuICMPReceive@@YAHPEAU_socket_@@PEAU_msghdr_@@H@Z ; AuICMPReceive
	mov	QWORD PTR [rax+16], rcx

; 102  : 	sock->send = AuICMPSend;

	mov	rax, QWORD PTR sock$[rbp]
	lea	rcx, OFFSET FLAT:?AuICMPSend@@YAHPEAU_socket_@@PEAU_msghdr_@@H@Z ; AuICMPSend
	mov	QWORD PTR [rax+24], rcx

; 103  : 	proc->fds[fd] = (AuVFSNode*)sock;

	movsxd	rax, DWORD PTR fd$[rbp]
	mov	rcx, QWORD PTR proc$[rbp]
	mov	rdx, QWORD PTR sock$[rbp]
	mov	QWORD PTR [rcx+rax*8+567], rdx

; 104  : 	SeTextOut("ICMP Socket created \r\n");

	lea	rcx, OFFSET FLAT:??_C@_0BH@CNPLJGJF@ICMP?5Socket?5created?5?$AN?6@
	call	SeTextOut

; 105  : 	return 0;

	xor	eax, eax
$LN1@CreateICMP:

; 106  : }

	lea	rsp, QWORD PTR [rbp+96]
	pop	rbp
	ret	0
?CreateICMPSocket@@YAHXZ ENDP				; CreateICMPSocket
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Net\icmp.cpp
;	COMDAT ?AuICMPWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z
_TEXT	SEGMENT
node$ = 80
file$ = 88
buffer$ = 96
len$ = 104
?AuICMPWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z PROC	; AuICMPWrite, COMDAT

; 75   : uint64_t AuICMPWrite(AuVFSNode* node, AuVFSNode* file, uint64_t* buffer, uint32_t len) {

$LN3:
	mov	DWORD PTR [rsp+32], r9d
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 96					; 00000060H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__FF25FC18_icmp@cpp
	call	__CheckForDebuggerJustMyCode

; 76   : 	return 0;

	xor	eax, eax

; 77   : }

	lea	rsp, QWORD PTR [rbp+64]
	pop	rbp
	ret	0
?AuICMPWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z ENDP	; AuICMPWrite
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Net\icmp.cpp
;	COMDAT ?AuICMPRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z
_TEXT	SEGMENT
node$ = 80
file$ = 88
buffer$ = 96
len$ = 104
?AuICMPRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z PROC	; AuICMPRead, COMDAT

; 71   : uint64_t AuICMPRead(AuVFSNode* node, AuVFSNode* file, uint64_t* buffer, uint32_t len){

$LN3:
	mov	DWORD PTR [rsp+32], r9d
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 96					; 00000060H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__FF25FC18_icmp@cpp
	call	__CheckForDebuggerJustMyCode

; 72   : 	return 0;

	xor	eax, eax

; 73   : }

	lea	rsp, QWORD PTR [rbp+64]
	pop	rbp
	ret	0
?AuICMPRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z ENDP	; AuICMPRead
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Net\icmp.cpp
;	COMDAT ?AuICMPBind@@YAHPEAU_socket_@@PEAU_sockaddr_@@_K@Z
_TEXT	SEGMENT
sock$ = 80
addr$ = 88
addrlen$ = 96
?AuICMPBind@@YAHPEAU_socket_@@PEAU_sockaddr_@@_K@Z PROC	; AuICMPBind, COMDAT

; 66   : int AuICMPBind(AuSocket* sock, sockaddr* addr, socklen_t addrlen){

$LN3:
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 96					; 00000060H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__FF25FC18_icmp@cpp
	call	__CheckForDebuggerJustMyCode

; 67   : 	return 0;

	xor	eax, eax

; 68   : }

	lea	rsp, QWORD PTR [rbp+64]
	pop	rbp
	ret	0
?AuICMPBind@@YAHPEAU_socket_@@PEAU_sockaddr_@@_K@Z ENDP	; AuICMPBind
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Net\icmp.cpp
;	COMDAT ?AuICMPClose@@YAXPEAU_socket_@@@Z
_TEXT	SEGMENT
sock$ = 80
?AuICMPClose@@YAXPEAU_socket_@@@Z PROC			; AuICMPClose, COMDAT

; 61   : void AuICMPClose(AuSocket* sock) {

$LN3:
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 96					; 00000060H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__FF25FC18_icmp@cpp
	call	__CheckForDebuggerJustMyCode

; 62   : 	return;
; 63   : }

	lea	rsp, QWORD PTR [rbp+64]
	pop	rbp
	ret	0
?AuICMPClose@@YAXPEAU_socket_@@@Z ENDP			; AuICMPClose
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Net\icmp.cpp
;	COMDAT ?AuICMPSend@@YAHPEAU_socket_@@PEAU_msghdr_@@H@Z
_TEXT	SEGMENT
sock$ = 80
msg$ = 88
flags$ = 96
?AuICMPSend@@YAHPEAU_socket_@@PEAU_msghdr_@@H@Z PROC	; AuICMPSend, COMDAT

; 53   : int AuICMPSend(AuSocket* sock, msghdr* msg, int flags){

$LN3:
	mov	DWORD PTR [rsp+24], r8d
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 96					; 00000060H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__FF25FC18_icmp@cpp
	call	__CheckForDebuggerJustMyCode

; 54   : 	return 0;

	xor	eax, eax

; 55   : }

	lea	rsp, QWORD PTR [rbp+64]
	pop	rbp
	ret	0
?AuICMPSend@@YAHPEAU_socket_@@PEAU_msghdr_@@H@Z ENDP	; AuICMPSend
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Net\icmp.cpp
;	COMDAT ?AuICMPReceive@@YAHPEAU_socket_@@PEAU_msghdr_@@H@Z
_TEXT	SEGMENT
sock$ = 80
msg$ = 88
flags$ = 96
?AuICMPReceive@@YAHPEAU_socket_@@PEAU_msghdr_@@H@Z PROC	; AuICMPReceive, COMDAT

; 43   : int AuICMPReceive(AuSocket* sock, msghdr *msg, int flags){

$LN3:
	mov	DWORD PTR [rsp+24], r8d
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 96					; 00000060H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__FF25FC18_icmp@cpp
	call	__CheckForDebuggerJustMyCode

; 44   : 	return 0;

	xor	eax, eax

; 45   : }

	lea	rsp, QWORD PTR [rbp+64]
	pop	rbp
	ret	0
?AuICMPReceive@@YAHPEAU_socket_@@PEAU_msghdr_@@H@Z ENDP	; AuICMPReceive
_TEXT	ENDS
END
