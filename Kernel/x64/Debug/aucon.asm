; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?font_data@@3PEAEEA				; font_data
PUBLIC	?console_x@@3IA					; console_x
PUBLIC	?console_y@@3IA					; console_y
PUBLIC	?__framebuffer@@3PEAIEA				; __framebuffer
PUBLIC	?aucon@@3PEAU_aucon_@@EA			; aucon
PUBLIC	?early_@@3_NA					; early_
PUBLIC	?_print_func@@3P6AXPEBDZZEA			; _print_func
_BSS	SEGMENT
?font_data@@3PEAEEA DQ 01H DUP (?)			; font_data
?console_x@@3IA DD 01H DUP (?)				; console_x
?console_y@@3IA DD 01H DUP (?)				; console_y
?__framebuffer@@3PEAIEA DQ 01H DUP (?)			; __framebuffer
?aucon@@3PEAU_aucon_@@EA DQ 01H DUP (?)			; aucon
?early_@@3_NA DB 01H DUP (?)				; early_
	ALIGN	8

?_print_func@@3P6AXPEBDZZEA DQ 01H DUP (?)		; _print_func
_BSS	ENDS
CONST	SEGMENT
$SG3672	DB	'/dev', 00H
	ORG $+3
$SG3677	DB	'graph', 00H
	ORG $+2
$SG3678	DB	'/', 00H
	ORG $+2
$SG3761	DB	'-', 00H
	ORG $+2
$SG3809	DB	'.', 00H
CONST	ENDS
PUBLIC	?AuConsoleInitialize@@YAXPEAU_KERNEL_BOOT_INFO_@@_N@Z ; AuConsoleInitialize
PUBLIC	?AuConsolePostInitialise@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z ; AuConsolePostInitialise
PUBLIC	AuTextOut
PUBLIC	?AuConsoleEarlyEnable@@YAX_N@Z			; AuConsoleEarlyEnable
PUBLIC	?AuConsoleIoControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z ; AuConsoleIoControl
PUBLIC	?AuPutC@@YAXD@Z					; AuPutC
PUBLIC	?AuPutS@@YAXPEAD@Z				; AuPutS
EXTRN	AuMapPage:PROC
EXTRN	AuPmmngrAlloc:PROC
EXTRN	P2V:PROC
EXTRN	kmalloc:PROC
EXTRN	strcpy:PROC
EXTRN	strlen:PROC
EXTRN	memset:PROC
EXTRN	memcpy:PROC
EXTRN	?sztoa@@YAPEAD_JPEADH@Z:PROC			; sztoa
EXTRN	?ftoa@@YAPEADME@Z:PROC				; ftoa
EXTRN	AuVFSFind:PROC
EXTRN	AuDevFSAddFile:PROC
EXTRN	__ImageBase:BYTE
EXTRN	_fltused:DWORD
pdata	SEGMENT
$pdata$?AuConsolePostInitialise@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z DD imagerel $LN12
	DD	imagerel $LN12+696
	DD	imagerel $unwind$?AuConsolePostInitialise@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z
$pdata$AuTextOut DD imagerel $LN26
	DD	imagerel $LN26+900
	DD	imagerel $unwind$AuTextOut
$pdata$?AuConsoleIoControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z DD imagerel $LN15
	DD	imagerel $LN15+356
	DD	imagerel $unwind$?AuConsoleIoControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z
$pdata$?AuPutC@@YAXD@Z DD imagerel $LN14
	DD	imagerel $LN14+531
	DD	imagerel $unwind$?AuPutC@@YAXD@Z
$pdata$?AuPutS@@YAXPEAD@Z DD imagerel $LN21
	DD	imagerel $LN21+624
	DD	imagerel $unwind$?AuPutS@@YAXPEAD@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?AuConsolePostInitialise@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z DD 010901H
	DD	0a209H
$unwind$AuTextOut DD 021b01H
	DD	023011bH
$unwind$?AuConsoleIoControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z DD 011201H
	DD	06212H
$unwind$?AuPutC@@YAXD@Z DD 010801H
	DD	08208H
$unwind$?AuPutS@@YAXPEAD@Z DD 010901H
	DD	08209H
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\aucon.cpp
_TEXT	SEGMENT
line$ = 0
font$ = 8
x$ = 16
offs$ = 20
mask$ = 24
y$ = 28
tv86 = 32
tv145 = 36
bpl$ = 40
tv202 = 44
glyph$1 = 48
s$ = 80
?AuPutS@@YAXPEAD@Z PROC					; AuPutS

; 204  : void AuPutS(char *s){

$LN21:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 72					; 00000048H

; 205  : 	if (font_data == NULL)

	cmp	QWORD PTR ?font_data@@3PEAEEA, 0	; font_data
	jne	SHORT $LN14@AuPutS

; 206  : 		return;

	jmp	$LN15@AuPutS
$LN14@AuPutS:

; 207  : 
; 208  : 	psf2_t *font = (psf2_t*)font_data;

	mov	rax, QWORD PTR ?font_data@@3PEAEEA	; font_data
	mov	QWORD PTR font$[rsp], rax

; 209  : 	int x, y, line, mask, offs;
; 210  : 	int bpl = (font->width + 7) / 8;

	mov	rax, QWORD PTR font$[rsp]
	mov	eax, DWORD PTR [rax+28]
	add	eax, 7
	xor	edx, edx
	mov	ecx, 8
	div	ecx
	mov	DWORD PTR bpl$[rsp], eax
$LN13@AuPutS:

; 211  : 	while (*s) {

	mov	rax, QWORD PTR s$[rsp]
	movsx	eax, BYTE PTR [rax]
	test	eax, eax
	je	$LN12@AuPutS

; 212  : 		if (*s == '\n') {

	mov	rax, QWORD PTR s$[rsp]
	movsx	eax, BYTE PTR [rax]
	cmp	eax, 10
	jne	SHORT $LN11@AuPutS

; 213  : 
; 214  : 			console_y += 16;

	mov	eax, DWORD PTR ?console_y@@3IA		; console_y
	add	eax, 16
	mov	DWORD PTR ?console_y@@3IA, eax		; console_y

; 215  : 			console_x = 0;

	mov	DWORD PTR ?console_x@@3IA, 0		; console_x
	jmp	$LN10@AuPutS
$LN11@AuPutS:

; 216  : 			//!Scroll
; 217  : 			/*if (console_y >= aucon->height) {
; 218  : 				for (int line_y = 0; line_y < aucon->height - 16; line_y++) {
; 219  : 					for (int code_x = 0; code_x < aucon->width - 8; code_x++) {
; 220  : 						aucon->buffer[line_y * aucon->width + code_x] = aucon->buffer[(line_y + 16) * aucon->width + code_x];
; 221  : 					}
; 222  : 				}
; 223  : 				console_y -= 16;
; 224  : 			}*/
; 225  : 
; 226  : 		}
; 227  : 		else if (*s == '\b') {

	mov	rax, QWORD PTR s$[rsp]
	movsx	eax, BYTE PTR [rax]
	cmp	eax, 8
	jne	SHORT $LN9@AuPutS

; 228  : 			if (console_x > 0) {

	cmp	DWORD PTR ?console_x@@3IA, 0		; console_x
	jbe	SHORT $LN8@AuPutS

; 229  : 				console_x--;

	mov	eax, DWORD PTR ?console_x@@3IA		; console_x
	dec	eax
	mov	DWORD PTR ?console_x@@3IA, eax		; console_x
$LN8@AuPutS:

; 230  : 			}
; 231  : 		}
; 232  : 		else {

	jmp	$LN7@AuPutS
$LN9@AuPutS:

; 233  : 			unsigned char *glyph = (unsigned char*)font_data + font->headersize +
; 234  : 				(*s>0 && *s<font->numglyph ? *s : 0)*font->bytesperglyph;

	mov	rax, QWORD PTR s$[rsp]
	movsx	eax, BYTE PTR [rax]
	test	eax, eax
	jle	SHORT $LN17@AuPutS
	mov	rax, QWORD PTR s$[rsp]
	movsx	eax, BYTE PTR [rax]
	mov	rcx, QWORD PTR font$[rsp]
	cmp	eax, DWORD PTR [rcx+16]
	jae	SHORT $LN17@AuPutS
	mov	rax, QWORD PTR s$[rsp]
	movsx	eax, BYTE PTR [rax]
	mov	DWORD PTR tv86[rsp], eax
	jmp	SHORT $LN18@AuPutS
$LN17@AuPutS:
	mov	DWORD PTR tv86[rsp], 0
$LN18@AuPutS:
	mov	rax, QWORD PTR font$[rsp]
	mov	eax, DWORD PTR [rax+8]
	mov	rcx, QWORD PTR ?font_data@@3PEAEEA	; font_data
	add	rcx, rax
	mov	rax, rcx
	mov	rcx, QWORD PTR font$[rsp]
	mov	edx, DWORD PTR tv86[rsp]
	imul	edx, DWORD PTR [rcx+20]
	mov	ecx, edx
	mov	ecx, ecx
	add	rax, rcx
	mov	QWORD PTR glyph$1[rsp], rax

; 235  : 			offs = console_x * (font->width + 1);// * 4);

	mov	rax, QWORD PTR font$[rsp]
	mov	eax, DWORD PTR [rax+28]
	inc	eax
	mov	ecx, DWORD PTR ?console_x@@3IA		; console_x
	imul	ecx, eax
	mov	eax, ecx
	mov	DWORD PTR offs$[rsp], eax

; 236  : 			for (y = 0; y<font->height; y++) {

	mov	DWORD PTR y$[rsp], 0
	jmp	SHORT $LN6@AuPutS
$LN5@AuPutS:
	mov	eax, DWORD PTR y$[rsp]
	inc	eax
	mov	DWORD PTR y$[rsp], eax
$LN6@AuPutS:
	mov	rax, QWORD PTR font$[rsp]
	mov	eax, DWORD PTR [rax+24]
	cmp	DWORD PTR y$[rsp], eax
	jae	$LN4@AuPutS

; 237  : 				line = offs; mask = 1 << (font->width - 1);

	mov	eax, DWORD PTR offs$[rsp]
	mov	DWORD PTR line$[rsp], eax
	mov	rax, QWORD PTR font$[rsp]
	mov	eax, DWORD PTR [rax+28]
	dec	eax
	mov	ecx, 1
	mov	DWORD PTR tv202[rsp], ecx
	movzx	ecx, al
	mov	eax, DWORD PTR tv202[rsp]
	shl	eax, cl
	mov	DWORD PTR mask$[rsp], eax

; 238  : 				for (x = 0; x<font->width; x++) {

	mov	DWORD PTR x$[rsp], 0
	jmp	SHORT $LN3@AuPutS
$LN2@AuPutS:
	mov	eax, DWORD PTR x$[rsp]
	inc	eax
	mov	DWORD PTR x$[rsp], eax
$LN3@AuPutS:
	mov	rax, QWORD PTR font$[rsp]
	mov	eax, DWORD PTR [rax+28]
	cmp	DWORD PTR x$[rsp], eax
	jae	SHORT $LN1@AuPutS

; 239  : 					aucon->buffer[line + console_y * aucon->width] = ((int)*glyph) & (mask) ? 0xFFFFFF : 0;

	mov	rax, QWORD PTR glyph$1[rsp]
	movzx	eax, BYTE PTR [rax]
	and	eax, DWORD PTR mask$[rsp]
	test	eax, eax
	je	SHORT $LN19@AuPutS
	mov	DWORD PTR tv145[rsp], 16777215		; 00ffffffH
	jmp	SHORT $LN20@AuPutS
$LN19@AuPutS:
	mov	DWORD PTR tv145[rsp], 0
$LN20@AuPutS:
	mov	rax, QWORD PTR ?aucon@@3PEAU_aucon_@@EA	; aucon
	mov	ecx, DWORD PTR ?console_y@@3IA		; console_y
	imul	ecx, DWORD PTR [rax]
	mov	eax, ecx
	mov	ecx, DWORD PTR line$[rsp]
	add	ecx, eax
	mov	eax, ecx
	mov	eax, eax
	mov	rcx, QWORD PTR ?aucon@@3PEAU_aucon_@@EA	; aucon
	mov	rcx, QWORD PTR [rcx+8]
	mov	edx, DWORD PTR tv145[rsp]
	mov	DWORD PTR [rcx+rax*4], edx

; 240  : 					mask >>= 1; line += 1;

	mov	eax, DWORD PTR mask$[rsp]
	sar	eax, 1
	mov	DWORD PTR mask$[rsp], eax
	mov	eax, DWORD PTR line$[rsp]
	inc	eax
	mov	DWORD PTR line$[rsp], eax

; 241  : 				}

	jmp	SHORT $LN2@AuPutS
$LN1@AuPutS:

; 242  : 				aucon->buffer[line + console_y * aucon->width] = 0; glyph += bpl; offs += aucon->scanline;

	mov	rax, QWORD PTR ?aucon@@3PEAU_aucon_@@EA	; aucon
	mov	ecx, DWORD PTR ?console_y@@3IA		; console_y
	imul	ecx, DWORD PTR [rax]
	mov	eax, ecx
	mov	ecx, DWORD PTR line$[rsp]
	add	ecx, eax
	mov	eax, ecx
	mov	eax, eax
	mov	rcx, QWORD PTR ?aucon@@3PEAU_aucon_@@EA	; aucon
	mov	rcx, QWORD PTR [rcx+8]
	mov	DWORD PTR [rcx+rax*4], 0
	movsxd	rax, DWORD PTR bpl$[rsp]
	mov	rcx, QWORD PTR glyph$1[rsp]
	add	rcx, rax
	mov	rax, rcx
	mov	QWORD PTR glyph$1[rsp], rax
	mov	rax, QWORD PTR ?aucon@@3PEAU_aucon_@@EA	; aucon
	movzx	eax, WORD PTR [rax+20]
	mov	ecx, DWORD PTR offs$[rsp]
	add	ecx, eax
	mov	eax, ecx
	mov	DWORD PTR offs$[rsp], eax

; 243  : 			}

	jmp	$LN5@AuPutS
$LN4@AuPutS:

; 244  : 			console_x++;

	mov	eax, DWORD PTR ?console_x@@3IA		; console_x
	inc	eax
	mov	DWORD PTR ?console_x@@3IA, eax		; console_x
$LN7@AuPutS:
$LN10@AuPutS:

; 245  : 		}
; 246  : 		s++;

	mov	rax, QWORD PTR s$[rsp]
	inc	rax
	mov	QWORD PTR s$[rsp], rax

; 247  : 	}

	jmp	$LN13@AuPutS
$LN12@AuPutS:
$LN15@AuPutS:

; 248  : 
; 249  : 
; 250  : }

	add	rsp, 72					; 00000048H
	ret	0
?AuPutS@@YAXPEAD@Z ENDP					; AuPutS
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\aucon.cpp
_TEXT	SEGMENT
line$ = 0
font$ = 8
x$ = 16
offs$ = 20
mask$ = 24
y$ = 28
tv77 = 32
tv137 = 36
bpl$ = 40
tv189 = 44
kx$ = 48
glyph$ = 56
c$ = 80
?AuPutC@@YAXD@Z PROC					; AuPutC

; 178  : void AuPutC(char c) {

$LN14:
	mov	BYTE PTR [rsp+8], cl
	sub	rsp, 72					; 00000048H

; 179  : 	if (font_data == NULL)

	cmp	QWORD PTR ?font_data@@3PEAEEA, 0	; font_data
	jne	SHORT $LN7@AuPutC

; 180  : 		return;

	jmp	$LN8@AuPutC
$LN7@AuPutC:

; 181  : 
; 182  : 	psf2_t *font = (psf2_t*)font_data;

	mov	rax, QWORD PTR ?font_data@@3PEAEEA	; font_data
	mov	QWORD PTR font$[rsp], rax

; 183  : 	int x, y, kx = 0, line, mask, offs;

	mov	DWORD PTR kx$[rsp], 0

; 184  : 	int bpl = (font->width + 7) / 8;

	mov	rax, QWORD PTR font$[rsp]
	mov	eax, DWORD PTR [rax+28]
	add	eax, 7
	xor	edx, edx
	mov	ecx, 8
	div	ecx
	mov	DWORD PTR bpl$[rsp], eax

; 185  : 
; 186  : 
; 187  : 	unsigned char *glyph = (unsigned char*)font_data + font->headersize +
; 188  : 		(c>0 && c<font->numglyph ? c : 0)*font->bytesperglyph;

	movsx	eax, BYTE PTR c$[rsp]
	test	eax, eax
	jle	SHORT $LN10@AuPutC
	movsx	eax, BYTE PTR c$[rsp]
	mov	rcx, QWORD PTR font$[rsp]
	cmp	eax, DWORD PTR [rcx+16]
	jae	SHORT $LN10@AuPutC
	movsx	eax, BYTE PTR c$[rsp]
	mov	DWORD PTR tv77[rsp], eax
	jmp	SHORT $LN11@AuPutC
$LN10@AuPutC:
	mov	DWORD PTR tv77[rsp], 0
$LN11@AuPutC:
	mov	rax, QWORD PTR font$[rsp]
	mov	eax, DWORD PTR [rax+8]
	mov	rcx, QWORD PTR ?font_data@@3PEAEEA	; font_data
	add	rcx, rax
	mov	rax, rcx
	mov	rcx, QWORD PTR font$[rsp]
	mov	edx, DWORD PTR tv77[rsp]
	imul	edx, DWORD PTR [rcx+20]
	mov	ecx, edx
	mov	ecx, ecx
	add	rax, rcx
	mov	QWORD PTR glyph$[rsp], rax

; 189  : 	offs = kx * (font->width + 1);// * 4);

	mov	rax, QWORD PTR font$[rsp]
	mov	eax, DWORD PTR [rax+28]
	inc	eax
	mov	ecx, DWORD PTR kx$[rsp]
	imul	ecx, eax
	mov	eax, ecx
	mov	DWORD PTR offs$[rsp], eax

; 190  : 	for (y = 0; y<font->height; y++) {

	mov	DWORD PTR y$[rsp], 0
	jmp	SHORT $LN6@AuPutC
$LN5@AuPutC:
	mov	eax, DWORD PTR y$[rsp]
	inc	eax
	mov	DWORD PTR y$[rsp], eax
$LN6@AuPutC:
	mov	rax, QWORD PTR font$[rsp]
	mov	eax, DWORD PTR [rax+24]
	cmp	DWORD PTR y$[rsp], eax
	jae	$LN4@AuPutC

; 191  : 		line = offs; mask = 1 << (font->width - 1);

	mov	eax, DWORD PTR offs$[rsp]
	mov	DWORD PTR line$[rsp], eax
	mov	rax, QWORD PTR font$[rsp]
	mov	eax, DWORD PTR [rax+28]
	dec	eax
	mov	ecx, 1
	mov	DWORD PTR tv189[rsp], ecx
	movzx	ecx, al
	mov	eax, DWORD PTR tv189[rsp]
	shl	eax, cl
	mov	DWORD PTR mask$[rsp], eax

; 192  : 		for (x = 0; x<font->width; x++) {

	mov	DWORD PTR x$[rsp], 0
	jmp	SHORT $LN3@AuPutC
$LN2@AuPutC:
	mov	eax, DWORD PTR x$[rsp]
	inc	eax
	mov	DWORD PTR x$[rsp], eax
$LN3@AuPutC:
	mov	rax, QWORD PTR font$[rsp]
	mov	eax, DWORD PTR [rax+28]
	cmp	DWORD PTR x$[rsp], eax
	jae	SHORT $LN1@AuPutC

; 193  : 			aucon->buffer[line + console_x + console_y * aucon->width] = ((int)*glyph) & (mask) ? 0xFFFFFF : 0;

	mov	rax, QWORD PTR glyph$[rsp]
	movzx	eax, BYTE PTR [rax]
	and	eax, DWORD PTR mask$[rsp]
	test	eax, eax
	je	SHORT $LN12@AuPutC
	mov	DWORD PTR tv137[rsp], 16777215		; 00ffffffH
	jmp	SHORT $LN13@AuPutC
$LN12@AuPutC:
	mov	DWORD PTR tv137[rsp], 0
$LN13@AuPutC:
	mov	eax, DWORD PTR ?console_x@@3IA		; console_x
	mov	ecx, DWORD PTR line$[rsp]
	add	ecx, eax
	mov	eax, ecx
	mov	rcx, QWORD PTR ?aucon@@3PEAU_aucon_@@EA	; aucon
	mov	edx, DWORD PTR ?console_y@@3IA		; console_y
	imul	edx, DWORD PTR [rcx]
	mov	ecx, edx
	add	eax, ecx
	mov	eax, eax
	mov	rcx, QWORD PTR ?aucon@@3PEAU_aucon_@@EA	; aucon
	mov	rcx, QWORD PTR [rcx+8]
	mov	edx, DWORD PTR tv137[rsp]
	mov	DWORD PTR [rcx+rax*4], edx

; 194  : 			mask >>= 1; line += 1;

	mov	eax, DWORD PTR mask$[rsp]
	sar	eax, 1
	mov	DWORD PTR mask$[rsp], eax
	mov	eax, DWORD PTR line$[rsp]
	inc	eax
	mov	DWORD PTR line$[rsp], eax

; 195  : 		}

	jmp	$LN2@AuPutC
$LN1@AuPutC:

; 196  : 		aucon->buffer[line + console_x + console_y * aucon->width] = 0; glyph += bpl; offs += aucon->scanline;

	mov	eax, DWORD PTR ?console_x@@3IA		; console_x
	mov	ecx, DWORD PTR line$[rsp]
	add	ecx, eax
	mov	eax, ecx
	mov	rcx, QWORD PTR ?aucon@@3PEAU_aucon_@@EA	; aucon
	mov	edx, DWORD PTR ?console_y@@3IA		; console_y
	imul	edx, DWORD PTR [rcx]
	mov	ecx, edx
	add	eax, ecx
	mov	eax, eax
	mov	rcx, QWORD PTR ?aucon@@3PEAU_aucon_@@EA	; aucon
	mov	rcx, QWORD PTR [rcx+8]
	mov	DWORD PTR [rcx+rax*4], 0
	movsxd	rax, DWORD PTR bpl$[rsp]
	mov	rcx, QWORD PTR glyph$[rsp]
	add	rcx, rax
	mov	rax, rcx
	mov	QWORD PTR glyph$[rsp], rax
	mov	rax, QWORD PTR ?aucon@@3PEAU_aucon_@@EA	; aucon
	movzx	eax, WORD PTR [rax+20]
	mov	ecx, DWORD PTR offs$[rsp]
	add	ecx, eax
	mov	eax, ecx
	mov	DWORD PTR offs$[rsp], eax

; 197  : 	}

	jmp	$LN5@AuPutC
$LN4@AuPutC:

; 198  : 	console_x += font->width + 1;

	mov	rax, QWORD PTR font$[rsp]
	mov	eax, DWORD PTR [rax+28]
	mov	ecx, DWORD PTR ?console_x@@3IA		; console_x
	lea	eax, DWORD PTR [rcx+rax+1]
	mov	DWORD PTR ?console_x@@3IA, eax		; console_x
$LN8@AuPutC:

; 199  : }

	add	rsp, 72					; 00000048H
	ret	0
?AuPutC@@YAXD@Z ENDP					; AuPutC
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\aucon.cpp
_TEXT	SEGMENT
tv67 = 0
ioctl$ = 8
scanline$1 = 16
bpp$2 = 20
ret$ = 24
width$3 = 28
height$4 = 32
pitch$5 = 36
buffaddr$6 = 40
node$ = 64
code$ = 72
args$ = 80
?AuConsoleIoControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z PROC	; AuConsoleIoControl

; 83   : int AuConsoleIoControl(AuVFSNode* node, int code, void* args) {

$LN15:
	mov	QWORD PTR [rsp+24], r8
	mov	DWORD PTR [rsp+16], edx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 84   : 	int ret = 0;

	mov	DWORD PTR ret$[rsp], 0

; 85   : 	AuFileIOControl *ioctl = (AuFileIOControl*)args;

	mov	rax, QWORD PTR args$[rsp]
	mov	QWORD PTR ioctl$[rsp], rax

; 86   : 	if (ioctl->syscall_magic != AURORA_SYSCALL_MAGIC)

	mov	rax, QWORD PTR ioctl$[rsp]
	cmp	DWORD PTR [rax], 86056964		; 05212004H
	je	SHORT $LN11@AuConsoleI

; 87   : 		return 0;

	xor	eax, eax
	jmp	$LN12@AuConsoleI
$LN11@AuConsoleI:

; 88   : 
; 89   : 	if (!aucon)

	cmp	QWORD PTR ?aucon@@3PEAU_aucon_@@EA, 0	; aucon
	jne	SHORT $LN10@AuConsoleI

; 90   : 		return 0;

	xor	eax, eax
	jmp	$LN12@AuConsoleI
$LN10@AuConsoleI:

; 91   : 	
; 92   : 	switch (code) {

	mov	eax, DWORD PTR code$[rsp]
	mov	DWORD PTR tv67[rsp], eax
	mov	eax, DWORD PTR tv67[rsp]
	sub	eax, 201				; 000000c9H
	mov	DWORD PTR tv67[rsp], eax
	cmp	DWORD PTR tv67[rsp], 8
	ja	$LN8@AuConsoleI
	movsxd	rax, DWORD PTR tv67[rsp]
	lea	rcx, OFFSET FLAT:__ImageBase
	mov	eax, DWORD PTR $LN14@AuConsoleI[rcx+rax*4]
	add	rax, rcx
	jmp	rax
$LN7@AuConsoleI:

; 93   : 	case SCREEN_GETWIDTH:{
; 94   : 							 uint32_t width = aucon->width;

	mov	rax, QWORD PTR ?aucon@@3PEAU_aucon_@@EA	; aucon
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR width$3[rsp], eax

; 95   : 							 ioctl->uint_1 = width;

	mov	rax, QWORD PTR ioctl$[rsp]
	mov	ecx, DWORD PTR width$3[rsp]
	mov	DWORD PTR [rax+10], ecx

; 96   : 							 break;

	jmp	$LN8@AuConsoleI
$LN6@AuConsoleI:

; 97   : 	}
; 98   : 	case SCREEN_GETHEIGHT:{
; 99   : 							  uint32_t height = aucon->height;

	mov	rax, QWORD PTR ?aucon@@3PEAU_aucon_@@EA	; aucon
	mov	eax, DWORD PTR [rax+4]
	mov	DWORD PTR height$4[rsp], eax

; 100  : 							  ioctl->uint_1 = height;

	mov	rax, QWORD PTR ioctl$[rsp]
	mov	ecx, DWORD PTR height$4[rsp]
	mov	DWORD PTR [rax+10], ecx

; 101  : 							  break;

	jmp	SHORT $LN8@AuConsoleI
$LN5@AuConsoleI:

; 102  : 	}
; 103  : 	case SCREEN_GETBPP:{
; 104  : 						   uint32_t bpp = aucon->bpp;

	mov	rax, QWORD PTR ?aucon@@3PEAU_aucon_@@EA	; aucon
	mov	eax, DWORD PTR [rax+16]
	mov	DWORD PTR bpp$2[rsp], eax

; 105  : 						   ioctl->uint_1 = bpp;

	mov	rax, QWORD PTR ioctl$[rsp]
	mov	ecx, DWORD PTR bpp$2[rsp]
	mov	DWORD PTR [rax+10], ecx

; 106  : 						   break;

	jmp	SHORT $LN8@AuConsoleI
$LN4@AuConsoleI:

; 107  : 	}
; 108  : 	case SCREEN_GET_SCANLINE: {
; 109  : 								  uint16_t scanline = aucon->scanline;

	mov	rax, QWORD PTR ?aucon@@3PEAU_aucon_@@EA	; aucon
	movzx	eax, WORD PTR [rax+20]
	mov	WORD PTR scanline$1[rsp], ax

; 110  : 								  ioctl->ushort_1 = scanline;

	mov	rax, QWORD PTR ioctl$[rsp]
	movzx	ecx, WORD PTR scanline$1[rsp]
	mov	WORD PTR [rax+6], cx

; 111  : 								  break;

	jmp	SHORT $LN8@AuConsoleI
$LN3@AuConsoleI:

; 112  : 	}
; 113  : 	case SCREEN_GET_PITCH:{
; 114  : 							  uint32_t pitch = aucon->pitch;

	mov	rax, QWORD PTR ?aucon@@3PEAU_aucon_@@EA	; aucon
	mov	eax, DWORD PTR [rax+28]
	mov	DWORD PTR pitch$5[rsp], eax

; 115  : 							  ioctl->uint_1 = pitch;

	mov	rax, QWORD PTR ioctl$[rsp]
	mov	ecx, DWORD PTR pitch$5[rsp]
	mov	DWORD PTR [rax+10], ecx

; 116  : 							  break;

	jmp	SHORT $LN8@AuConsoleI
$LN2@AuConsoleI:

; 117  : 	}
; 118  : 	case SCREEN_GET_FB:{
; 119  : 						   uint64_t buffaddr = (uint64_t)aucon->buffer;

	mov	rax, QWORD PTR ?aucon@@3PEAU_aucon_@@EA	; aucon
	mov	rax, QWORD PTR [rax+8]
	mov	QWORD PTR buffaddr$6[rsp], rax

; 120  : 						   ioctl->ulong_1 = buffaddr;

	mov	rax, QWORD PTR ioctl$[rsp]
	mov	rcx, QWORD PTR buffaddr$6[rsp]
	mov	QWORD PTR [rax+18], rcx

; 121  : 						   break;

	jmp	SHORT $LN8@AuConsoleI
$LN1@AuConsoleI:

; 122  : 	}
; 123  : 
; 124  : 	case SCREEN_REG_MNGR:{
; 125  : 							 return 1;

	mov	eax, 1
	jmp	SHORT $LN12@AuConsoleI
$LN8@AuConsoleI:

; 126  : 							 break;
; 127  : 	}
; 128  : 	}
; 129  : 	return ret;

	mov	eax, DWORD PTR ret$[rsp]
$LN12@AuConsoleI:

; 130  : }

	add	rsp, 56					; 00000038H
	ret	0
	npad	2
$LN14@AuConsoleI:
	DD	$LN7@AuConsoleI
	DD	$LN6@AuConsoleI
	DD	$LN5@AuConsoleI
	DD	$LN8@AuConsoleI
	DD	$LN8@AuConsoleI
	DD	$LN4@AuConsoleI
	DD	$LN3@AuConsoleI
	DD	$LN1@AuConsoleI
	DD	$LN2@AuConsoleI
?AuConsoleIoControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z ENDP	; AuConsoleIoControl
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\aucon.cpp
_TEXT	SEGMENT
value$ = 8
?AuConsoleEarlyEnable@@YAX_N@Z PROC			; AuConsoleEarlyEnable

; 353  : void AuConsoleEarlyEnable(bool value) {

	mov	BYTE PTR [rsp+8], cl

; 354  : 	aucon->early_mode = value;

	mov	rax, QWORD PTR ?aucon@@3PEAU_aucon_@@EA	; aucon
	movzx	ecx, BYTE PTR value$[rsp]
	mov	BYTE PTR [rax+32], cl

; 355  : }

	ret	0
?AuConsoleEarlyEnable@@YAX_N@Z ENDP			; AuConsoleEarlyEnable
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\aucon.cpp
_TEXT	SEGMENT
c$1 = 32
args$ = 40
buf$2 = 48
buf$3 = 52
i$4 = 56
i$5 = 64
width$6 = 72
x$7 = 80
x$8 = 88
x$9 = 96
len$10 = 104
buffer$11 = 112
buffer$12 = 192
format$ = 288
AuTextOut PROC

; 257  : void AuTextOut(const char* format, ...) {

$LN26:
	mov	QWORD PTR [rsp+8], rcx
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+32], r9
	sub	rsp, 280				; 00000118H

; 258  : 
; 259  : 	if (early_) {

	movzx	eax, BYTE PTR ?early_@@3_NA		; early_
	test	eax, eax
	je	SHORT $LN23@AuTextOut

; 260  : 		_print_func(format);

	mov	rcx, QWORD PTR format$[rsp]
	call	QWORD PTR ?_print_func@@3P6AXPEBDZZEA	; _print_func

; 261  : 		return;

	jmp	$LN24@AuTextOut
$LN23@AuTextOut:

; 262  : 	}
; 263  : 
; 264  : 
; 265  : 	_va_list_ args;
; 266  : 	va_start(args, format);

	lea	rax, QWORD PTR format$[rsp+8]
	mov	QWORD PTR args$[rsp], rax
$LN22@AuTextOut:

; 267  : 
; 268  : 	while (*format)

	mov	rax, QWORD PTR format$[rsp]
	movsx	eax, BYTE PTR [rax]
	test	eax, eax
	je	$LN21@AuTextOut

; 269  : 	{
; 270  : 		if (*format == '%')

	mov	rax, QWORD PTR format$[rsp]
	movsx	eax, BYTE PTR [rax]
	cmp	eax, 37					; 00000025H
	jne	$LN20@AuTextOut

; 271  : 		{
; 272  : 			++format;

	mov	rax, QWORD PTR format$[rsp]
	inc	rax
	mov	QWORD PTR format$[rsp], rax

; 273  : 			if (*format == 'd')

	mov	rax, QWORD PTR format$[rsp]
	movsx	eax, BYTE PTR [rax]
	cmp	eax, 100				; 00000064H
	jne	$LN19@AuTextOut

; 274  : 			{
; 275  : 				size_t width = 0;

	mov	QWORD PTR width$6[rsp], 0

; 276  : 				if (format[1] == '.')

	mov	eax, 1
	imul	rax, rax, 1
	mov	rcx, QWORD PTR format$[rsp]
	movsx	eax, BYTE PTR [rcx+rax]
	cmp	eax, 46					; 0000002eH
	jne	$LN18@AuTextOut

; 277  : 				{
; 278  : 					for (size_t i = 2; format[i] >= '0' && format[i] <= '9'; ++i)

	mov	QWORD PTR i$4[rsp], 2
	jmp	SHORT $LN17@AuTextOut
$LN16@AuTextOut:
	mov	rax, QWORD PTR i$4[rsp]
	inc	rax
	mov	QWORD PTR i$4[rsp], rax
$LN17@AuTextOut:
	mov	rax, QWORD PTR i$4[rsp]
	mov	rcx, QWORD PTR format$[rsp]
	add	rcx, rax
	mov	rax, rcx
	movsx	eax, BYTE PTR [rax]
	cmp	eax, 48					; 00000030H
	jl	SHORT $LN15@AuTextOut
	mov	rax, QWORD PTR i$4[rsp]
	mov	rcx, QWORD PTR format$[rsp]
	add	rcx, rax
	mov	rax, rcx
	movsx	eax, BYTE PTR [rax]
	cmp	eax, 57					; 00000039H
	jg	SHORT $LN15@AuTextOut

; 279  : 					{
; 280  : 						width *= 10;

	imul	rax, QWORD PTR width$6[rsp], 10
	mov	QWORD PTR width$6[rsp], rax

; 281  : 						width += format[i] - '0';

	mov	rax, QWORD PTR i$4[rsp]
	mov	rcx, QWORD PTR format$[rsp]
	add	rcx, rax
	mov	rax, rcx
	movsx	eax, BYTE PTR [rax]
	sub	eax, 48					; 00000030H
	cdqe
	mov	rcx, QWORD PTR width$6[rsp]
	add	rcx, rax
	mov	rax, rcx
	mov	QWORD PTR width$6[rsp], rax

; 282  : 					}

	jmp	SHORT $LN16@AuTextOut
$LN15@AuTextOut:
$LN18@AuTextOut:

; 283  : 				}
; 284  : 				size_t i = va_arg(args, size_t);

	mov	rax, QWORD PTR args$[rsp]
	add	rax, 8
	mov	QWORD PTR args$[rsp], rax
	mov	rax, QWORD PTR args$[rsp]
	mov	rax, QWORD PTR [rax-8]
	mov	QWORD PTR i$5[rsp], rax

; 285  : 				char buffer[sizeof(size_t)* 8 + 1];
; 286  : 				//	size_t len
; 287  : 				if ((int)i < 0) {

	cmp	DWORD PTR i$5[rsp], 0
	jge	SHORT $LN14@AuTextOut

; 288  : 					AuPutS("-");

	lea	rcx, OFFSET FLAT:$SG3761
	call	?AuPutS@@YAXPEAD@Z			; AuPutS

; 289  : 					i = ((int)i * -1);

	imul	eax, DWORD PTR i$5[rsp], -1
	cdqe
	mov	QWORD PTR i$5[rsp], rax

; 290  : 					sztoa(i, buffer, 10);

	mov	r8d, 10
	lea	rdx, QWORD PTR buffer$11[rsp]
	mov	rcx, QWORD PTR i$5[rsp]
	call	?sztoa@@YAPEAD_JPEADH@Z			; sztoa

; 291  : 				}
; 292  : 				else {

	jmp	SHORT $LN13@AuTextOut
$LN14@AuTextOut:

; 293  : 					sztoa(i, buffer, 10);

	mov	r8d, 10
	lea	rdx, QWORD PTR buffer$11[rsp]
	mov	rcx, QWORD PTR i$5[rsp]
	call	?sztoa@@YAPEAD_JPEADH@Z			; sztoa

; 294  : 					size_t len = strlen(buffer);

	lea	rcx, QWORD PTR buffer$11[rsp]
	call	strlen
	mov	QWORD PTR len$10[rsp], rax
$LN13@AuTextOut:

; 295  : 				}
; 296  : 				/*	while (len++ < width)
; 297  : 				puts("0");*/
; 298  : 				AuPutS(buffer);

	lea	rcx, QWORD PTR buffer$11[rsp]
	call	?AuPutS@@YAXPEAD@Z			; AuPutS
	jmp	$LN12@AuTextOut
$LN19@AuTextOut:

; 299  : 			}
; 300  : 			else if (*format == 'c')

	mov	rax, QWORD PTR format$[rsp]
	movsx	eax, BYTE PTR [rax]
	cmp	eax, 99					; 00000063H
	jne	SHORT $LN11@AuTextOut

; 301  : 			{
; 302  : 				char c = va_arg(args, char);

	mov	rax, QWORD PTR args$[rsp]
	add	rax, 4
	mov	QWORD PTR args$[rsp], rax
	mov	rax, QWORD PTR args$[rsp]
	movzx	eax, BYTE PTR [rax-4]
	mov	BYTE PTR c$1[rsp], al

; 303  : 				//char buffer[sizeof(size_t) * 8 + 1];
; 304  : 				//sztoa(c, buffer, 10);
; 305  : 				//puts(buffer);
; 306  : 				AuPutC(c);

	movzx	ecx, BYTE PTR c$1[rsp]
	call	?AuPutC@@YAXD@Z				; AuPutC
	jmp	$LN10@AuTextOut
$LN11@AuTextOut:

; 307  : 			}
; 308  : 			else if (*format == 'x')

	mov	rax, QWORD PTR format$[rsp]
	movsx	eax, BYTE PTR [rax]
	cmp	eax, 120				; 00000078H
	jne	SHORT $LN9@AuTextOut

; 309  : 			{
; 310  : 				size_t x = va_arg(args, size_t);

	mov	rax, QWORD PTR args$[rsp]
	add	rax, 8
	mov	QWORD PTR args$[rsp], rax
	mov	rax, QWORD PTR args$[rsp]
	mov	rax, QWORD PTR [rax-8]
	mov	QWORD PTR x$9[rsp], rax

; 311  : 				char buffer[sizeof(size_t)* 8 + 1];
; 312  : 				sztoa(x, buffer, 16);

	mov	r8d, 16
	lea	rdx, QWORD PTR buffer$12[rsp]
	mov	rcx, QWORD PTR x$9[rsp]
	call	?sztoa@@YAPEAD_JPEADH@Z			; sztoa

; 313  : 				//puts("0x");
; 314  : 				AuPutS(buffer);

	lea	rcx, QWORD PTR buffer$12[rsp]
	call	?AuPutS@@YAXPEAD@Z			; AuPutS
	jmp	$LN8@AuTextOut
$LN9@AuTextOut:

; 315  : 			}
; 316  : 			else if (*format == 's')

	mov	rax, QWORD PTR format$[rsp]
	movsx	eax, BYTE PTR [rax]
	cmp	eax, 115				; 00000073H
	jne	SHORT $LN7@AuTextOut

; 317  : 			{
; 318  : 				char* x = va_arg(args, char*);

	mov	rax, QWORD PTR args$[rsp]
	add	rax, 8
	mov	QWORD PTR args$[rsp], rax
	mov	rax, QWORD PTR args$[rsp]
	mov	rax, QWORD PTR [rax-8]
	mov	QWORD PTR x$8[rsp], rax

; 319  : 				AuPutS(x);

	mov	rcx, QWORD PTR x$8[rsp]
	call	?AuPutS@@YAXPEAD@Z			; AuPutS
	jmp	$LN6@AuTextOut
$LN7@AuTextOut:

; 320  : 			}
; 321  : 			else if (*format == 'f')

	mov	rax, QWORD PTR format$[rsp]
	movsx	eax, BYTE PTR [rax]
	cmp	eax, 102				; 00000066H
	jne	SHORT $LN5@AuTextOut

; 322  : 			{
; 323  : 				double x = va_arg(args, double);

	mov	rax, QWORD PTR args$[rsp]
	add	rax, 8
	mov	QWORD PTR args$[rsp], rax
	mov	rax, QWORD PTR args$[rsp]
	movsdx	xmm0, QWORD PTR [rax-8]
	movsdx	QWORD PTR x$7[rsp], xmm0

; 324  : 				AuPutS(ftoa(x, 2));

	cvtsd2ss xmm0, QWORD PTR x$7[rsp]
	mov	dl, 2
	call	?ftoa@@YAPEADME@Z			; ftoa
	mov	rcx, rax
	call	?AuPutS@@YAXPEAD@Z			; AuPutS
	jmp	SHORT $LN4@AuTextOut
$LN5@AuTextOut:

; 325  : 			}
; 326  : 			else if (*format == '%')

	mov	rax, QWORD PTR format$[rsp]
	movsx	eax, BYTE PTR [rax]
	cmp	eax, 37					; 00000025H
	jne	SHORT $LN3@AuTextOut

; 327  : 			{
; 328  : 				AuPutS(".");

	lea	rcx, OFFSET FLAT:$SG3809
	call	?AuPutS@@YAXPEAD@Z			; AuPutS

; 329  : 			}
; 330  : 			else

	jmp	SHORT $LN2@AuTextOut
$LN3@AuTextOut:

; 331  : 			{
; 332  : 				char buf[3];
; 333  : 				buf[0] = '%'; buf[1] = *format; buf[2] = '\0';

	mov	eax, 1
	imul	rax, rax, 0
	mov	BYTE PTR buf$3[rsp+rax], 37		; 00000025H
	mov	eax, 1
	imul	rax, rax, 1
	mov	rcx, QWORD PTR format$[rsp]
	movzx	ecx, BYTE PTR [rcx]
	mov	BYTE PTR buf$3[rsp+rax], cl
	mov	eax, 1
	imul	rax, rax, 2
	mov	BYTE PTR buf$3[rsp+rax], 0

; 334  : 				AuPutS(buf);

	lea	rcx, QWORD PTR buf$3[rsp]
	call	?AuPutS@@YAXPEAD@Z			; AuPutS
$LN2@AuTextOut:
$LN4@AuTextOut:
$LN6@AuTextOut:
$LN8@AuTextOut:
$LN10@AuTextOut:
$LN12@AuTextOut:

; 335  : 			}
; 336  : 		}
; 337  : 		else

	jmp	SHORT $LN1@AuTextOut
$LN20@AuTextOut:

; 338  : 		{
; 339  : 			char buf[2];
; 340  : 			buf[0] = *format; buf[1] = '\0';

	mov	eax, 1
	imul	rax, rax, 0
	mov	rcx, QWORD PTR format$[rsp]
	movzx	ecx, BYTE PTR [rcx]
	mov	BYTE PTR buf$2[rsp+rax], cl
	mov	eax, 1
	imul	rax, rax, 1
	mov	BYTE PTR buf$2[rsp+rax], 0

; 341  : 			AuPutS(buf);

	lea	rcx, QWORD PTR buf$2[rsp]
	call	?AuPutS@@YAXPEAD@Z			; AuPutS
$LN1@AuTextOut:

; 342  : 		}
; 343  : 		++format;

	mov	rax, QWORD PTR format$[rsp]
	inc	rax
	mov	QWORD PTR format$[rsp], rax

; 344  : 	}

	jmp	$LN22@AuTextOut
$LN21@AuTextOut:
$LN24@AuTextOut:

; 345  : 	va_end(args);
; 346  : }

	add	rsp, 280				; 00000118H
	ret	0
AuTextOut ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\aucon.cpp
_TEXT	SEGMENT
i$1 = 32
h$2 = 36
w$3 = 40
file$ = 48
font_$ = 56
fsys$ = 64
tv80 = 72
info$ = 96
?AuConsolePostInitialise@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z PROC ; AuConsolePostInitialise

; 136  : void AuConsolePostInitialise(PKERNEL_BOOT_INFO info) {

$LN12:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 88					; 00000058H

; 137  : 
; 138  : 	uint8_t* font_ = (uint8_t*)P2V((uint64_t)AuPmmngrAlloc());

	call	AuPmmngrAlloc
	mov	rcx, rax
	call	P2V
	mov	QWORD PTR font_$[rsp], rax

; 139  : 	memset(font_, 0, 4096);

	mov	r8d, 4096				; 00001000H
	xor	edx, edx
	mov	rcx, QWORD PTR font_$[rsp]
	call	memset

; 140  : 	memcpy(font_, info->psf_font_data, 4096);

	mov	r8d, 4096				; 00001000H
	mov	rax, QWORD PTR info$[rsp]
	mov	rdx, QWORD PTR [rax+98]
	mov	rcx, QWORD PTR font_$[rsp]
	call	memcpy

; 141  : 	font_data = font_;

	mov	rax, QWORD PTR font_$[rsp]
	mov	QWORD PTR ?font_data@@3PEAEEA, rax	; font_data

; 142  : 
; 143  : 	aucon = (AuConsole*)kmalloc(sizeof(AuConsole));

	mov	ecx, 40					; 00000028H
	call	kmalloc
	mov	QWORD PTR ?aucon@@3PEAU_aucon_@@EA, rax	; aucon

; 144  : 	memset(aucon, 0, sizeof(AuConsole));

	mov	r8d, 40					; 00000028H
	xor	edx, edx
	mov	rcx, QWORD PTR ?aucon@@3PEAU_aucon_@@EA	; aucon
	call	memset

; 145  : 
; 146  : 	for (int i = 0; i < info->fb_size / PAGE_SIZE; i++)

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN9@AuConsoleP
$LN8@AuConsoleP:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN9@AuConsoleP:
	movsxd	rax, DWORD PTR i$1[rsp]
	mov	QWORD PTR tv80[rsp], rax
	xor	edx, edx
	mov	rcx, QWORD PTR info$[rsp]
	mov	rax, QWORD PTR [rcx+52]
	mov	ecx, 4096				; 00001000H
	div	rcx
	mov	rcx, QWORD PTR tv80[rsp]
	cmp	rcx, rax
	jae	SHORT $LN7@AuConsoleP

; 147  : 		AuMapPage((uint64_t)info->graphics_framebuffer + i * PAGE_SIZE, 0xFFFFD00000200000 + i * 4096, X86_64_PAGING_USER);

	imul	eax, DWORD PTR i$1[rsp], 4096		; 00001000H
	cdqe
	mov	rcx, 52776556036096			; 00002fffffe00000H
	sub	rax, rcx
	imul	ecx, DWORD PTR i$1[rsp], 4096		; 00001000H
	movsxd	rcx, ecx
	mov	rdx, QWORD PTR info$[rsp]
	add	rcx, QWORD PTR [rdx+44]
	mov	r8b, 4
	mov	rdx, rax
	call	AuMapPage
	jmp	SHORT $LN8@AuConsoleP
$LN7@AuConsoleP:

; 148  : 	early_ = false;

	mov	BYTE PTR ?early_@@3_NA, 0		; early_

; 149  : 	aucon->buffer = (uint32_t*)0xFFFFD00000200000;

	mov	rax, QWORD PTR ?aucon@@3PEAU_aucon_@@EA	; aucon
	mov	rcx, -52776556036096			; ffffd00000200000H
	mov	QWORD PTR [rax+8], rcx

; 150  : 	aucon->width = info->X_Resolution;

	mov	rax, QWORD PTR info$[rsp]
	movzx	eax, WORD PTR [rax+60]
	mov	rcx, QWORD PTR ?aucon@@3PEAU_aucon_@@EA	; aucon
	mov	DWORD PTR [rcx], eax

; 151  : 	aucon->height = info->Y_Resolution;

	mov	rax, QWORD PTR info$[rsp]
	movzx	eax, WORD PTR [rax+62]
	mov	rcx, QWORD PTR ?aucon@@3PEAU_aucon_@@EA	; aucon
	mov	DWORD PTR [rcx+4], eax

; 152  : 	aucon->bpp = 32;

	mov	rax, QWORD PTR ?aucon@@3PEAU_aucon_@@EA	; aucon
	mov	DWORD PTR [rax+16], 32			; 00000020H

; 153  : 	aucon->scanline = info->pixels_per_line;

	mov	rax, QWORD PTR ?aucon@@3PEAU_aucon_@@EA	; aucon
	mov	rcx, QWORD PTR info$[rsp]
	movzx	ecx, WORD PTR [rcx+64]
	mov	WORD PTR [rax+20], cx

; 154  : 	aucon->pitch = 4 * info->pixels_per_line;

	mov	rax, QWORD PTR info$[rsp]
	movzx	eax, WORD PTR [rax+64]
	shl	eax, 2
	mov	rcx, QWORD PTR ?aucon@@3PEAU_aucon_@@EA	; aucon
	mov	DWORD PTR [rcx+28], eax

; 155  : 	aucon->size = info->fb_size;

	mov	rax, QWORD PTR ?aucon@@3PEAU_aucon_@@EA	; aucon
	mov	rcx, QWORD PTR info$[rsp]
	mov	ecx, DWORD PTR [rcx+52]
	mov	DWORD PTR [rax+24], ecx

; 156  : 	aucon->early_mode = false;

	mov	rax, QWORD PTR ?aucon@@3PEAU_aucon_@@EA	; aucon
	mov	BYTE PTR [rax+32], 0

; 157  : 	console_x = console_y = 0;

	mov	DWORD PTR ?console_y@@3IA, 0		; console_y
	mov	eax, DWORD PTR ?console_y@@3IA		; console_y
	mov	DWORD PTR ?console_x@@3IA, eax		; console_x

; 158  : 
; 159  : 	for (int w = 0; w < info->X_Resolution; w++) {

	mov	DWORD PTR w$3[rsp], 0
	jmp	SHORT $LN6@AuConsoleP
$LN5@AuConsoleP:
	mov	eax, DWORD PTR w$3[rsp]
	inc	eax
	mov	DWORD PTR w$3[rsp], eax
$LN6@AuConsoleP:
	mov	rax, QWORD PTR info$[rsp]
	movzx	eax, WORD PTR [rax+60]
	cmp	DWORD PTR w$3[rsp], eax
	jge	SHORT $LN4@AuConsoleP

; 160  : 		for (int h = 0; h < info->Y_Resolution; h++) {

	mov	DWORD PTR h$2[rsp], 0
	jmp	SHORT $LN3@AuConsoleP
$LN2@AuConsoleP:
	mov	eax, DWORD PTR h$2[rsp]
	inc	eax
	mov	DWORD PTR h$2[rsp], eax
$LN3@AuConsoleP:
	mov	rax, QWORD PTR info$[rsp]
	movzx	eax, WORD PTR [rax+62]
	cmp	DWORD PTR h$2[rsp], eax
	jge	SHORT $LN1@AuConsoleP

; 161  : 			aucon->buffer[w + h * info->X_Resolution] = 0x00000000;

	mov	rax, QWORD PTR info$[rsp]
	movzx	eax, WORD PTR [rax+60]
	mov	ecx, DWORD PTR h$2[rsp]
	imul	ecx, eax
	mov	eax, ecx
	mov	ecx, DWORD PTR w$3[rsp]
	add	ecx, eax
	mov	eax, ecx
	cdqe
	mov	rcx, QWORD PTR ?aucon@@3PEAU_aucon_@@EA	; aucon
	mov	rcx, QWORD PTR [rcx+8]
	mov	DWORD PTR [rcx+rax*4], 0

; 162  : 		}

	jmp	SHORT $LN2@AuConsoleP
$LN1@AuConsoleP:

; 163  : 	}

	jmp	SHORT $LN5@AuConsoleP
$LN4@AuConsoleP:

; 164  : 
; 165  : 	AuVFSNode* fsys = AuVFSFind("/dev");

	lea	rcx, OFFSET FLAT:$SG3672
	call	AuVFSFind
	mov	QWORD PTR fsys$[rsp], rax

; 166  : 	AuVFSNode* file = (AuVFSNode*)kmalloc(sizeof(AuVFSNode));

	mov	ecx, 178				; 000000b2H
	call	kmalloc
	mov	QWORD PTR file$[rsp], rax

; 167  : 	memset(file, 0, sizeof(AuVFSNode));

	mov	r8d, 178				; 000000b2H
	xor	edx, edx
	mov	rcx, QWORD PTR file$[rsp]
	call	memset

; 168  : 	strcpy(file->filename, "graph");

	mov	rax, QWORD PTR file$[rsp]
	lea	rdx, OFFSET FLAT:$SG3677
	mov	rcx, rax
	call	strcpy

; 169  : 	file->flags = FS_FLAG_DEVICE;

	mov	eax, 8
	mov	rcx, QWORD PTR file$[rsp]
	mov	WORD PTR [rcx+61], ax

; 170  : 	file->device = fsys;

	mov	rax, QWORD PTR file$[rsp]
	mov	rcx, QWORD PTR fsys$[rsp]
	mov	QWORD PTR [rax+64], rcx

; 171  : 	file->read = 0;

	mov	rax, QWORD PTR file$[rsp]
	mov	QWORD PTR [rax+90], 0

; 172  : 	file->write = 0;

	mov	rax, QWORD PTR file$[rsp]
	mov	QWORD PTR [rax+98], 0

; 173  : 	file->iocontrol = AuConsoleIoControl;

	mov	rax, QWORD PTR file$[rsp]
	lea	rcx, OFFSET FLAT:?AuConsoleIoControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z ; AuConsoleIoControl
	mov	QWORD PTR [rax+170], rcx

; 174  : 	AuDevFSAddFile(fsys, "/", file);

	mov	r8, QWORD PTR file$[rsp]
	lea	rdx, OFFSET FLAT:$SG3678
	mov	rcx, QWORD PTR fsys$[rsp]
	call	AuDevFSAddFile

; 175  : }

	add	rsp, 88					; 00000058H
	ret	0
?AuConsolePostInitialise@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z ENDP ; AuConsolePostInitialise
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\aucon.cpp
_TEXT	SEGMENT
info$ = 8
early$ = 16
?AuConsoleInitialize@@YAXPEAU_KERNEL_BOOT_INFO_@@_N@Z PROC ; AuConsoleInitialize

; 72   : void AuConsoleInitialize(PKERNEL_BOOT_INFO info, bool early) {

	mov	BYTE PTR [rsp+16], dl
	mov	QWORD PTR [rsp+8], rcx

; 73   : 	if (early) {

	movzx	eax, BYTE PTR early$[rsp]
	test	eax, eax
	je	SHORT $LN1@AuConsoleI

; 74   : 		_print_func = info->printf_gui;

	mov	rax, QWORD PTR info$[rsp]
	mov	rax, QWORD PTR [rax+106]
	mov	QWORD PTR ?_print_func@@3P6AXPEBDZZEA, rax ; _print_func

; 75   : 		early_ = early;

	movzx	eax, BYTE PTR early$[rsp]
	mov	BYTE PTR ?early_@@3_NA, al		; early_
$LN1@AuConsoleI:

; 76   : 	}
; 77   : 	aucon = NULL;

	mov	QWORD PTR ?aucon@@3PEAU_aucon_@@EA, 0	; aucon

; 78   : }

	ret	0
?AuConsoleInitialize@@YAXPEAU_KERNEL_BOOT_INFO_@@_N@Z ENDP ; AuConsoleInitialize
_TEXT	ENDS
END
