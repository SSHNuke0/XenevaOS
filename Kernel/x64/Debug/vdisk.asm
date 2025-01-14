; Listing generated by Microsoft (R) Optimizing Compiler Version 19.29.30154.0 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?VdiskArray@@3PAPEAU_VDISK_@@A			; VdiskArray
_BSS	SEGMENT
?VdiskArray@@3PAPEAU_VDISK_@@A DQ 01aH DUP (?)		; VdiskArray
_BSS	ENDS
msvcjmc	SEGMENT
__E5A64090_vdisk@cpp DB 01H
msvcjmc	ENDS
PUBLIC	?AuVDiskInitialise@@YAXXZ			; AuVDiskInitialise
PUBLIC	AuVDiskGetIndex
PUBLIC	AuVDiskRegister
PUBLIC	AuCreateVDisk
PUBLIC	AuVDiskRead
PUBLIC	AuVDiskWrite
PUBLIC	AuVDiskDestroy
PUBLIC	?AuVDiskRegisterPartition@@YAXPEAU_VDISK_@@@Z	; AuVDiskRegisterPartition
PUBLIC	__JustMyCode_Default
PUBLIC	??_C@_08BOGKMBPC@EFI?5PART@			; `string'
PUBLIC	??_C@_02HAOIJKIC@?$CFc@				; `string'
PUBLIC	??_C@_01EEMJAFIK@?6@				; `string'
PUBLIC	??_C@_0CJ@JIAAONDN@VDisk?5partition?5created?5startLB@ ; `string'
PUBLIC	??_C@_0BI@HLBBEFGK@vDisk?5partition?5guid?5?3?5@ ; `string'
PUBLIC	??_C@_0BC@KGAAOHKL@0x?$CFx?90x?$CFx?90x?$CFx?90x@ ; `string'
PUBLIC	??_C@_02NJNOFBBI@?$CFx@				; `string'
PUBLIC	??_C@_0CM@EOIAENHA@Vdisk?5registered?5name?5?9?$DO?5?$CFs?0?5se@ ; `string'
EXTRN	?AuGPTInitialise_FileSystem@@YAXPEAU_VDISK_@@@Z:PROC ; AuGPTInitialise_FileSystem
EXTRN	kmalloc:PROC
EXTRN	kfree:PROC
EXTRN	AuTextOut:PROC
EXTRN	strcmp:PROC
EXTRN	memset:PROC
EXTRN	SeTextOut:PROC
EXTRN	AuPmmngrAlloc:PROC
EXTRN	AuPmmngrFree:PROC
EXTRN	__CheckForDebuggerJustMyCode:PROC
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuVDiskInitialise@@YAXXZ DD imagerel $LN6
	DD	imagerel $LN6+73
	DD	imagerel $unwind$?AuVDiskInitialise@@YAXXZ
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$AuVDiskGetIndex DD imagerel $LN7
	DD	imagerel $LN7+79
	DD	imagerel $unwind$AuVDiskGetIndex
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$AuVDiskRegister DD imagerel $LN4
	DD	imagerel $LN4+138
	DD	imagerel $unwind$AuVDiskRegister
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$AuCreateVDisk DD imagerel $LN3
	DD	imagerel $LN3+64
	DD	imagerel $unwind$AuCreateVDisk
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$AuVDiskRead DD imagerel $LN4
	DD	imagerel $LN4+105
	DD	imagerel $unwind$AuVDiskRead
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$AuVDiskWrite DD imagerel $LN4
	DD	imagerel $LN4+105
	DD	imagerel $unwind$AuVDiskWrite
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$AuVDiskDestroy DD imagerel $LN7
	DD	imagerel $LN7+129
	DD	imagerel $unwind$AuVDiskDestroy
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuVDiskRegisterPartition@@YAXPEAU_VDISK_@@@Z DD imagerel $LN23
	DD	imagerel $LN23+856
	DD	imagerel $unwind$?AuVDiskRegisterPartition@@YAXPEAU_VDISK_@@@Z
pdata	ENDS
;	COMDAT ??_C@_0CM@EOIAENHA@Vdisk?5registered?5name?5?9?$DO?5?$CFs?0?5se@
CONST	SEGMENT
??_C@_0CM@EOIAENHA@Vdisk?5registered?5name?5?9?$DO?5?$CFs?0?5se@ DB 'Vdis'
	DB	'k registered name -> %s, serial -> %s ', 0aH, 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_02NJNOFBBI@?$CFx@
CONST	SEGMENT
??_C@_02NJNOFBBI@?$CFx@ DB '%x', 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_0BC@KGAAOHKL@0x?$CFx?90x?$CFx?90x?$CFx?90x@
CONST	SEGMENT
??_C@_0BC@KGAAOHKL@0x?$CFx?90x?$CFx?90x?$CFx?90x@ DB '0x%x-0x%x-0x%x-0x', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0BI@HLBBEFGK@vDisk?5partition?5guid?5?3?5@
CONST	SEGMENT
??_C@_0BI@HLBBEFGK@vDisk?5partition?5guid?5?3?5@ DB 'vDisk partition guid'
	DB	' : ', 00H					; `string'
CONST	ENDS
;	COMDAT ??_C@_0CJ@JIAAONDN@VDisk?5partition?5created?5startLB@
CONST	SEGMENT
??_C@_0CJ@JIAAONDN@VDisk?5partition?5created?5startLB@ DB 'VDisk partitio'
	DB	'n created startLBA -> %d ', 0aH, 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_01EEMJAFIK@?6@
CONST	SEGMENT
??_C@_01EEMJAFIK@?6@ DB 0aH, 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_02HAOIJKIC@?$CFc@
CONST	SEGMENT
??_C@_02HAOIJKIC@?$CFc@ DB '%c', 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_08BOGKMBPC@EFI?5PART@
CONST	SEGMENT
??_C@_08BOGKMBPC@EFI?5PART@ DB 'EFI PART', 00H		; `string'
CONST	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuVDiskRegisterPartition@@YAXPEAU_VDISK_@@@Z DD 025041201H
	DD	010d2312H
	DD	050060016H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$AuVDiskDestroy DD 025030f01H
	DD	0d20a230fH
	DD	05006H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$AuVDiskWrite DD 025031e01H
	DD	0b219231eH
	DD	05015H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$AuVDiskRead DD 025031e01H
	DD	0b219231eH
	DD	05015H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$AuCreateVDisk DD 025030b01H
	DD	0d206230bH
	DD	05002H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$AuVDiskRegister DD 025030f01H
	DD	0d20a230fH
	DD	05006H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$AuVDiskGetIndex DD 025030b01H
	DD	0d206230bH
	DD	05002H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuVDiskInitialise@@YAXXZ DD 025030b01H
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
; File E:\Xeneva Project\Aurora\Kernel\Fs\vdisk.cpp
;	COMDAT ?AuVDiskRegisterPartition@@YAXPEAU_VDISK_@@@Z
_TEXT	SEGMENT
buffer$ = 0
aligned_buf$ = 8
header$ = 16
i$1 = 24
part_lba$ = 32
i$2 = 40
part$3 = 48
m$4 = 56
m$5 = 60
j$6 = 64
k$7 = 68
vdisk$ = 160
?AuVDiskRegisterPartition@@YAXPEAU_VDISK_@@@Z PROC	; AuVDiskRegisterPartition, COMDAT

; 106  : void AuVDiskRegisterPartition(AuVDisk* vdisk){

$LN23:
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 176				; 000000b0H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__E5A64090_vdisk@cpp
	call	__CheckForDebuggerJustMyCode

; 107  : 	uint64_t* buffer = (uint64_t*)AuPmmngrAlloc();

	call	AuPmmngrAlloc
	mov	QWORD PTR buffer$[rbp], rax

; 108  : 	memset(buffer, 0, 4096);

	mov	r8d, 4096				; 00001000H
	xor	edx, edx
	mov	rcx, QWORD PTR buffer$[rbp]
	call	memset

; 109  : 	vdisk->Read(vdisk,1, 1, buffer);

	mov	r9, QWORD PTR buffer$[rbp]
	mov	r8d, 1
	mov	edx, 1
	mov	rcx, QWORD PTR vdisk$[rbp]
	mov	rax, QWORD PTR vdisk$[rbp]
	call	QWORD PTR [rax+142]

; 110  : 	uint8_t* aligned_buf = (uint8_t*)buffer;

	mov	rax, QWORD PTR buffer$[rbp]
	mov	QWORD PTR aligned_buf$[rbp], rax

; 111  : 
; 112  : 	GPTHeader* header = (GPTHeader*)aligned_buf;

	mov	rax, QWORD PTR aligned_buf$[rbp]
	mov	QWORD PTR header$[rbp], rax

; 113  : 
; 114  : 	/* check if it's Efi partition */
; 115  : 	if (strcmp(header->sig, "EFI PART") != 0)

	mov	rax, QWORD PTR header$[rbp]
	lea	rdx, OFFSET FLAT:??_C@_08BOGKMBPC@EFI?5PART@
	mov	rcx, rax
	call	strcmp
	test	eax, eax
	je	SHORT $LN20@AuVDiskReg

; 116  : 		return;

	jmp	$LN1@AuVDiskReg
$LN20@AuVDiskReg:

; 117  : 	for (int i = 0; i < 8; i++)

	mov	DWORD PTR i$1[rbp], 0
	jmp	SHORT $LN4@AuVDiskReg
$LN2@AuVDiskReg:
	mov	eax, DWORD PTR i$1[rbp]
	inc	eax
	mov	DWORD PTR i$1[rbp], eax
$LN4@AuVDiskReg:
	cmp	DWORD PTR i$1[rbp], 8
	jge	SHORT $LN3@AuVDiskReg

; 118  : 		SeTextOut("%c", aligned_buf[i]);

	movsxd	rax, DWORD PTR i$1[rbp]
	mov	rcx, QWORD PTR aligned_buf$[rbp]
	movzx	eax, BYTE PTR [rcx+rax]
	mov	edx, eax
	lea	rcx, OFFSET FLAT:??_C@_02HAOIJKIC@?$CFc@
	call	SeTextOut
	jmp	SHORT $LN2@AuVDiskReg
$LN3@AuVDiskReg:

; 119  : 
; 120  : 	uint64_t part_lba = header->part_table_lba;

	mov	rax, QWORD PTR header$[rbp]
	mov	rax, QWORD PTR [rax+72]
	mov	QWORD PTR part_lba$[rbp], rax

; 121  : 
; 122  : 	for (int i = 0; i < header->num_part_entries; i++) {

	mov	DWORD PTR i$2[rbp], 0
	jmp	SHORT $LN7@AuVDiskReg
$LN5@AuVDiskReg:
	mov	eax, DWORD PTR i$2[rbp]
	inc	eax
	mov	DWORD PTR i$2[rbp], eax
$LN7@AuVDiskReg:
	mov	rax, QWORD PTR header$[rbp]
	mov	eax, DWORD PTR [rax+80]
	cmp	DWORD PTR i$2[rbp], eax
	jae	$LN6@AuVDiskReg

; 123  : 		memset(buffer, 0, 4096);

	mov	r8d, 4096				; 00001000H
	xor	edx, edx
	mov	rcx, QWORD PTR buffer$[rbp]
	call	memset

; 124  : 		vdisk->Read(vdisk, part_lba, 1, buffer);

	mov	r9, QWORD PTR buffer$[rbp]
	mov	r8d, 1
	mov	rdx, QWORD PTR part_lba$[rbp]
	mov	rcx, QWORD PTR vdisk$[rbp]
	mov	rax, QWORD PTR vdisk$[rbp]
	call	QWORD PTR [rax+142]

; 125  : 		aligned_buf = (uint8_t*)buffer;

	mov	rax, QWORD PTR buffer$[rbp]
	mov	QWORD PTR aligned_buf$[rbp], rax

; 126  : 		GPTPartition* part = (GPTPartition*)aligned_buf;

	mov	rax, QWORD PTR aligned_buf$[rbp]
	mov	QWORD PTR part$3[rbp], rax

; 127  : 		if (part->first_lba != 0) {

	mov	rax, QWORD PTR part$3[rbp]
	cmp	QWORD PTR [rax+32], 0
	je	$LN21@AuVDiskReg

; 128  : 			vdisk->startingLBA = part->first_lba;

	mov	rax, QWORD PTR vdisk$[rbp]
	mov	rcx, QWORD PTR part$3[rbp]
	mov	rcx, QWORD PTR [rcx+32]
	mov	QWORD PTR [rax+86], rcx

; 129  : 			vdisk->currentLBA = vdisk->startingLBA;

	mov	rax, QWORD PTR vdisk$[rbp]
	mov	rcx, QWORD PTR vdisk$[rbp]
	mov	rcx, QWORD PTR [rcx+86]
	mov	QWORD PTR [rax+94], rcx

; 130  : 			vdisk->num_partition = 1;

	mov	rax, QWORD PTR vdisk$[rbp]
	mov	BYTE PTR [rax+85], 1

; 131  : 			vdisk->part_guid.Data1 = part->part_guid.Data1;

	mov	rax, QWORD PTR vdisk$[rbp]
	mov	rcx, QWORD PTR part$3[rbp]
	mov	ecx, DWORD PTR [rcx]
	mov	DWORD PTR [rax+102], ecx

; 132  : 			vdisk->part_guid.Data2 = part->part_guid.Data2;

	mov	rax, QWORD PTR vdisk$[rbp]
	mov	rcx, QWORD PTR part$3[rbp]
	movzx	ecx, WORD PTR [rcx+4]
	mov	WORD PTR [rax+106], cx

; 133  : 			vdisk->part_guid.Data3 = part->part_guid.Data3;

	mov	rax, QWORD PTR vdisk$[rbp]
	mov	rcx, QWORD PTR part$3[rbp]
	movzx	ecx, WORD PTR [rcx+6]
	mov	WORD PTR [rax+108], cx

; 134  : 			for (int m = 0; m < 8; m++)

	mov	DWORD PTR m$4[rbp], 0
	jmp	SHORT $LN10@AuVDiskReg
$LN8@AuVDiskReg:
	mov	eax, DWORD PTR m$4[rbp]
	inc	eax
	mov	DWORD PTR m$4[rbp], eax
$LN10@AuVDiskReg:
	cmp	DWORD PTR m$4[rbp], 8
	jge	SHORT $LN9@AuVDiskReg

; 135  : 				vdisk->part_guid.Data4[m] = part->part_guid.Data4[m];

	movsxd	rax, DWORD PTR m$4[rbp]
	movsxd	rcx, DWORD PTR m$4[rbp]
	mov	rdx, QWORD PTR vdisk$[rbp]
	mov	r8, QWORD PTR part$3[rbp]
	movzx	eax, BYTE PTR [r8+rax+8]
	mov	BYTE PTR [rdx+rcx+110], al
	jmp	SHORT $LN8@AuVDiskReg
$LN9@AuVDiskReg:

; 136  : 
; 137  : 			vdisk->part_unique_guid.Data1 = part->part_unique_guid.Data1;

	mov	rax, QWORD PTR vdisk$[rbp]
	mov	rcx, QWORD PTR part$3[rbp]
	mov	ecx, DWORD PTR [rcx+16]
	mov	DWORD PTR [rax+118], ecx

; 138  : 			vdisk->part_unique_guid.Data2 = part->part_unique_guid.Data2;

	mov	rax, QWORD PTR vdisk$[rbp]
	mov	rcx, QWORD PTR part$3[rbp]
	movzx	ecx, WORD PTR [rcx+20]
	mov	WORD PTR [rax+122], cx

; 139  : 			vdisk->part_unique_guid.Data3 = part->part_unique_guid.Data3;

	mov	rax, QWORD PTR vdisk$[rbp]
	mov	rcx, QWORD PTR part$3[rbp]
	movzx	ecx, WORD PTR [rcx+22]
	mov	WORD PTR [rax+124], cx

; 140  : 			for (int m = 0; m < 8; m++)

	mov	DWORD PTR m$5[rbp], 0
	jmp	SHORT $LN13@AuVDiskReg
$LN11@AuVDiskReg:
	mov	eax, DWORD PTR m$5[rbp]
	inc	eax
	mov	DWORD PTR m$5[rbp], eax
$LN13@AuVDiskReg:
	cmp	DWORD PTR m$5[rbp], 8
	jge	SHORT $LN12@AuVDiskReg

; 141  : 				vdisk->part_unique_guid.Data4[m] = part->part_guid.Data4[m];

	movsxd	rax, DWORD PTR m$5[rbp]
	movsxd	rcx, DWORD PTR m$5[rbp]
	mov	rdx, QWORD PTR vdisk$[rbp]
	mov	r8, QWORD PTR part$3[rbp]
	movzx	eax, BYTE PTR [r8+rax+8]
	mov	BYTE PTR [rdx+rcx+126], al
	jmp	SHORT $LN11@AuVDiskReg
$LN12@AuVDiskReg:

; 142  : 
; 143  : 			for (int j = 0; j < 70; j++)

	mov	DWORD PTR j$6[rbp], 0
	jmp	SHORT $LN16@AuVDiskReg
$LN14@AuVDiskReg:
	mov	eax, DWORD PTR j$6[rbp]
	inc	eax
	mov	DWORD PTR j$6[rbp], eax
$LN16@AuVDiskReg:
	cmp	DWORD PTR j$6[rbp], 70			; 00000046H
	jge	SHORT $LN15@AuVDiskReg

; 144  : 				AuTextOut("%c", part->part_name[j]);

	movsxd	rax, DWORD PTR j$6[rbp]
	mov	rcx, QWORD PTR part$3[rbp]
	movsx	eax, BYTE PTR [rcx+rax+56]
	mov	edx, eax
	lea	rcx, OFFSET FLAT:??_C@_02HAOIJKIC@?$CFc@
	call	AuTextOut
	jmp	SHORT $LN14@AuVDiskReg
$LN15@AuVDiskReg:
$LN21@AuVDiskReg:

; 145  : 		}
; 146  : 		part_lba++;

	mov	rax, QWORD PTR part_lba$[rbp]
	inc	rax
	mov	QWORD PTR part_lba$[rbp], rax

; 147  : 	}

	jmp	$LN5@AuVDiskReg
$LN6@AuVDiskReg:

; 148  : 	AuTextOut("\n");

	lea	rcx, OFFSET FLAT:??_C@_01EEMJAFIK@?6@
	call	AuTextOut

; 149  : 	AuTextOut("VDisk partition created startLBA -> %d \n", vdisk->startingLBA);

	mov	rax, QWORD PTR vdisk$[rbp]
	mov	rdx, QWORD PTR [rax+86]
	lea	rcx, OFFSET FLAT:??_C@_0CJ@JIAAONDN@VDisk?5partition?5created?5startLB@
	call	AuTextOut

; 150  : 	AuTextOut("vDisk partition guid : ");

	lea	rcx, OFFSET FLAT:??_C@_0BI@HLBBEFGK@vDisk?5partition?5guid?5?3?5@
	call	AuTextOut

; 151  : 	AuTextOut("0x%x-0x%x-0x%x-0x", vdisk->part_guid.Data1, vdisk->part_guid.Data2, vdisk->part_guid.Data3);

	mov	rax, QWORD PTR vdisk$[rbp]
	movzx	eax, WORD PTR [rax+108]
	mov	rcx, QWORD PTR vdisk$[rbp]
	movzx	ecx, WORD PTR [rcx+106]
	mov	r9d, eax
	mov	r8d, ecx
	mov	rax, QWORD PTR vdisk$[rbp]
	mov	edx, DWORD PTR [rax+102]
	lea	rcx, OFFSET FLAT:??_C@_0BC@KGAAOHKL@0x?$CFx?90x?$CFx?90x?$CFx?90x@
	call	AuTextOut

; 152  : 	for (int k = 0; k < 8; k++)

	mov	DWORD PTR k$7[rbp], 0
	jmp	SHORT $LN19@AuVDiskReg
$LN17@AuVDiskReg:
	mov	eax, DWORD PTR k$7[rbp]
	inc	eax
	mov	DWORD PTR k$7[rbp], eax
$LN19@AuVDiskReg:
	cmp	DWORD PTR k$7[rbp], 8
	jge	SHORT $LN18@AuVDiskReg

; 153  : 		AuTextOut("%x", vdisk->part_guid.Data4[k]);

	movsxd	rax, DWORD PTR k$7[rbp]
	mov	rcx, QWORD PTR vdisk$[rbp]
	movzx	eax, BYTE PTR [rcx+rax+110]
	mov	edx, eax
	lea	rcx, OFFSET FLAT:??_C@_02NJNOFBBI@?$CFx@
	call	AuTextOut
	jmp	SHORT $LN17@AuVDiskReg
$LN18@AuVDiskReg:

; 154  : 
; 155  : 	AuTextOut("\n");

	lea	rcx, OFFSET FLAT:??_C@_01EEMJAFIK@?6@
	call	AuTextOut

; 156  : 	/* call gpt file system verifier to load
; 157  : 	 * the desired file system 
; 158  : 	 */
; 159  : 	AuGPTInitialise_FileSystem(vdisk);

	mov	rcx, QWORD PTR vdisk$[rbp]
	call	?AuGPTInitialise_FileSystem@@YAXPEAU_VDISK_@@@Z ; AuGPTInitialise_FileSystem

; 160  : 
; 161  : 	AuTextOut("\n");

	lea	rcx, OFFSET FLAT:??_C@_01EEMJAFIK@?6@
	call	AuTextOut

; 162  : 	AuPmmngrFree(buffer);

	mov	rcx, QWORD PTR buffer$[rbp]
	call	AuPmmngrFree
$LN1@AuVDiskReg:

; 163  : }

	lea	rsp, QWORD PTR [rbp+144]
	pop	rbp
	ret	0
?AuVDiskRegisterPartition@@YAXPEAU_VDISK_@@@Z ENDP	; AuVDiskRegisterPartition
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Fs\vdisk.cpp
;	COMDAT AuVDiskDestroy
_TEXT	SEGMENT
_index$ = 0
i$1 = 1
disk$2 = 8
vdisk$ = 96
AuVDiskDestroy PROC					; COMDAT

; 189  : void AuVDiskDestroy(AuVDisk *vdisk) {

$LN7:
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__E5A64090_vdisk@cpp
	call	__CheckForDebuggerJustMyCode

; 190  : 	uint8_t _index = 0;

	mov	BYTE PTR _index$[rbp], 0

; 191  : 	for (uint8_t i = 0; i < MAX_VDISK_DEVICES; i++){

	mov	BYTE PTR i$1[rbp], 0
	jmp	SHORT $LN4@AuVDiskDes
$LN2@AuVDiskDes:
	movzx	eax, BYTE PTR i$1[rbp]
	inc	al
	mov	BYTE PTR i$1[rbp], al
$LN4@AuVDiskDes:
	movzx	eax, BYTE PTR i$1[rbp]
	cmp	eax, 26
	jge	SHORT $LN3@AuVDiskDes

; 192  : 		AuVDisk *disk = VdiskArray[i];

	movzx	eax, BYTE PTR i$1[rbp]
	lea	rcx, OFFSET FLAT:?VdiskArray@@3PAPEAU_VDISK_@@A ; VdiskArray
	mov	rax, QWORD PTR [rcx+rax*8]
	mov	QWORD PTR disk$2[rbp], rax

; 193  : 		if (disk == vdisk){

	mov	rax, QWORD PTR vdisk$[rbp]
	cmp	QWORD PTR disk$2[rbp], rax
	jne	SHORT $LN5@AuVDiskDes

; 194  : 			_index = i;

	movzx	eax, BYTE PTR i$1[rbp]
	mov	BYTE PTR _index$[rbp], al

; 195  : 			break;

	jmp	SHORT $LN3@AuVDiskDes
$LN5@AuVDiskDes:

; 196  : 		}
; 197  : 	}

	jmp	SHORT $LN2@AuVDiskDes
$LN3@AuVDiskDes:

; 198  : 
; 199  : 	VdiskArray[_index] = NULL;

	movzx	eax, BYTE PTR _index$[rbp]
	lea	rcx, OFFSET FLAT:?VdiskArray@@3PAPEAU_VDISK_@@A ; VdiskArray
	mov	QWORD PTR [rcx+rax*8], 0

; 200  : 	kfree(vdisk);

	mov	rcx, QWORD PTR vdisk$[rbp]
	call	kfree

; 201  : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
AuVDiskDestroy ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Fs\vdisk.cpp
;	COMDAT AuVDiskWrite
_TEXT	SEGMENT
disk$ = 80
lba$ = 88
count$ = 96
buffer$ = 104
AuVDiskWrite PROC					; COMDAT

; 93   : size_t AuVDiskWrite(AuVDisk* disk, uint64_t lba, uint32_t count, uint64_t* buffer) {

$LN4:
	mov	QWORD PTR [rsp+32], r9
	mov	DWORD PTR [rsp+24], r8d
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 96					; 00000060H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__E5A64090_vdisk@cpp
	call	__CheckForDebuggerJustMyCode

; 94   : 	if (disk->Write)

	mov	rax, QWORD PTR disk$[rbp]
	cmp	QWORD PTR [rax+150], 0
	je	SHORT $LN2@AuVDiskWri

; 95   : 		return disk->Write(disk, disk->startingLBA + lba, count, buffer);

	mov	rax, QWORD PTR disk$[rbp]
	mov	rax, QWORD PTR [rax+86]
	add	rax, QWORD PTR lba$[rbp]
	mov	r9, QWORD PTR buffer$[rbp]
	mov	r8d, DWORD PTR count$[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR disk$[rbp]
	mov	rax, QWORD PTR disk$[rbp]
	call	QWORD PTR [rax+150]
	cdqe
	jmp	SHORT $LN1@AuVDiskWri
$LN2@AuVDiskWri:

; 96   : 	return 0;

	xor	eax, eax
$LN1@AuVDiskWri:

; 97   : }

	lea	rsp, QWORD PTR [rbp+64]
	pop	rbp
	ret	0
AuVDiskWrite ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Fs\vdisk.cpp
;	COMDAT AuVDiskRead
_TEXT	SEGMENT
disk$ = 80
lba$ = 88
count$ = 96
buffer$ = 104
AuVDiskRead PROC					; COMDAT

; 79   : size_t AuVDiskRead(AuVDisk *disk, uint64_t lba, uint32_t count, uint64_t* buffer) {

$LN4:
	mov	QWORD PTR [rsp+32], r9
	mov	DWORD PTR [rsp+24], r8d
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 96					; 00000060H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__E5A64090_vdisk@cpp
	call	__CheckForDebuggerJustMyCode

; 80   : 	if (disk->Read) 

	mov	rax, QWORD PTR disk$[rbp]
	cmp	QWORD PTR [rax+142], 0
	je	SHORT $LN2@AuVDiskRea

; 81   : 		return disk->Read(disk, disk->startingLBA + lba, count, buffer);

	mov	rax, QWORD PTR disk$[rbp]
	mov	rax, QWORD PTR [rax+86]
	add	rax, QWORD PTR lba$[rbp]
	mov	r9, QWORD PTR buffer$[rbp]
	mov	r8d, DWORD PTR count$[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR disk$[rbp]
	mov	rax, QWORD PTR disk$[rbp]
	call	QWORD PTR [rax+142]
	cdqe
	jmp	SHORT $LN1@AuVDiskRea
$LN2@AuVDiskRea:

; 82   : 	return 0;

	xor	eax, eax
$LN1@AuVDiskRea:

; 83   : }

	lea	rsp, QWORD PTR [rbp+64]
	pop	rbp
	ret	0
AuVDiskRead ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Fs\vdisk.cpp
;	COMDAT AuCreateVDisk
_TEXT	SEGMENT
vdisk$ = 0
AuCreateVDisk PROC					; COMDAT

; 66   : AuVDisk *AuCreateVDisk(){

$LN3:
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__E5A64090_vdisk@cpp
	call	__CheckForDebuggerJustMyCode

; 67   : 	AuVDisk* vdisk = (AuVDisk*)kmalloc(sizeof(AuVDisk));

	mov	ecx, 158				; 0000009eH
	call	kmalloc
	mov	QWORD PTR vdisk$[rbp], rax

; 68   : 	memset(vdisk, 0, sizeof(AuVDisk));

	mov	r8d, 158				; 0000009eH
	xor	edx, edx
	mov	rcx, QWORD PTR vdisk$[rbp]
	call	memset

; 69   : 	return vdisk;

	mov	rax, QWORD PTR vdisk$[rbp]

; 70   : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
AuCreateVDisk ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Fs\vdisk.cpp
;	COMDAT AuVDiskRegister
_TEXT	SEGMENT
_index$ = 0
disk$ = 96
AuVDiskRegister PROC					; COMDAT

; 169  : void AuVDiskRegister(AuVDisk* disk) {

$LN4:
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__E5A64090_vdisk@cpp
	call	__CheckForDebuggerJustMyCode

; 170  : 	uint8_t _index = AuVDiskGetIndex();

	call	AuVDiskGetIndex
	mov	BYTE PTR _index$[rbp], al

; 171  : 	/* check for last time, for any errors */
; 172  : 	if (VdiskArray[_index])

	movzx	eax, BYTE PTR _index$[rbp]
	lea	rcx, OFFSET FLAT:?VdiskArray@@3PAPEAU_VDISK_@@A ; VdiskArray
	cmp	QWORD PTR [rcx+rax*8], 0
	je	SHORT $LN2@AuVDiskReg

; 173  : 		return;

	jmp	SHORT $LN1@AuVDiskReg
$LN2@AuVDiskReg:

; 174  : 
; 175  : 	VdiskArray[_index] = disk;

	movzx	eax, BYTE PTR _index$[rbp]
	lea	rcx, OFFSET FLAT:?VdiskArray@@3PAPEAU_VDISK_@@A ; VdiskArray
	mov	rdx, QWORD PTR disk$[rbp]
	mov	QWORD PTR [rcx+rax*8], rdx

; 176  : 	AuTextOut("Vdisk registered name -> %s, serial -> %s \n", disk->diskname,

	mov	rax, QWORD PTR disk$[rbp]
	add	rax, 40					; 00000028H
	mov	rcx, QWORD PTR disk$[rbp]
	mov	r8, rax
	mov	rdx, rcx
	lea	rcx, OFFSET FLAT:??_C@_0CM@EOIAENHA@Vdisk?5registered?5name?5?9?$DO?5?$CFs?0?5se@
	call	AuTextOut

; 177  : 		disk->serialNumber);
; 178  : 
; 179  : 	disk->__VDiskID = _index;

	mov	rax, QWORD PTR disk$[rbp]
	movzx	ecx, BYTE PTR _index$[rbp]
	mov	BYTE PTR [rax+84], cl

; 180  : 	disk->num_partition = 1;

	mov	rax, QWORD PTR disk$[rbp]
	mov	BYTE PTR [rax+85], 1

; 181  : 	/* Register a partition and initialise the file system*/
; 182  : 	AuVDiskRegisterPartition(disk);

	mov	rcx, QWORD PTR disk$[rbp]
	call	?AuVDiskRegisterPartition@@YAXPEAU_VDISK_@@@Z ; AuVDiskRegisterPartition
$LN1@AuVDiskReg:

; 183  : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
AuVDiskRegister ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Fs\vdisk.cpp
;	COMDAT AuVDiskGetIndex
_TEXT	SEGMENT
i$1 = 0
AuVDiskGetIndex PROC					; COMDAT

; 54   : uint8_t AuVDiskGetIndex() {

$LN7:
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__E5A64090_vdisk@cpp
	call	__CheckForDebuggerJustMyCode

; 55   : 	for (uint8_t i = 0; i < MAX_VDISK_DEVICES; i++){

	mov	BYTE PTR i$1[rbp], 0
	jmp	SHORT $LN4@AuVDiskGet
$LN2@AuVDiskGet:
	movzx	eax, BYTE PTR i$1[rbp]
	inc	al
	mov	BYTE PTR i$1[rbp], al
$LN4@AuVDiskGet:
	movzx	eax, BYTE PTR i$1[rbp]
	cmp	eax, 26
	jge	SHORT $LN3@AuVDiskGet

; 56   : 		if (!VdiskArray[i])

	movzx	eax, BYTE PTR i$1[rbp]
	lea	rcx, OFFSET FLAT:?VdiskArray@@3PAPEAU_VDISK_@@A ; VdiskArray
	cmp	QWORD PTR [rcx+rax*8], 0
	jne	SHORT $LN5@AuVDiskGet

; 57   : 			return i;

	movzx	eax, BYTE PTR i$1[rbp]
	jmp	SHORT $LN1@AuVDiskGet
$LN5@AuVDiskGet:

; 58   : 	}

	jmp	SHORT $LN2@AuVDiskGet
$LN3@AuVDiskGet:
$LN1@AuVDiskGet:

; 59   : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
AuVDiskGetIndex ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Fs\vdisk.cpp
;	COMDAT ?AuVDiskInitialise@@YAXXZ
_TEXT	SEGMENT
i$1 = 0
?AuVDiskInitialise@@YAXXZ PROC				; AuVDiskInitialise, COMDAT

; 46   : void AuVDiskInitialise() {

$LN6:
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__E5A64090_vdisk@cpp
	call	__CheckForDebuggerJustMyCode

; 47   : 	for (int i = 0; i < MAX_VDISK_DEVICES; i++)

	mov	DWORD PTR i$1[rbp], 0
	jmp	SHORT $LN4@AuVDiskIni
$LN2@AuVDiskIni:
	mov	eax, DWORD PTR i$1[rbp]
	inc	eax
	mov	DWORD PTR i$1[rbp], eax
$LN4@AuVDiskIni:
	cmp	DWORD PTR i$1[rbp], 26
	jge	SHORT $LN3@AuVDiskIni

; 48   : 		VdiskArray[i] = NULL;

	movsxd	rax, DWORD PTR i$1[rbp]
	lea	rcx, OFFSET FLAT:?VdiskArray@@3PAPEAU_VDISK_@@A ; VdiskArray
	mov	QWORD PTR [rcx+rax*8], 0
	jmp	SHORT $LN2@AuVDiskIni
$LN3@AuVDiskIni:

; 49   : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
?AuVDiskInitialise@@YAXXZ ENDP				; AuVDiskInitialise
_TEXT	ENDS
END
