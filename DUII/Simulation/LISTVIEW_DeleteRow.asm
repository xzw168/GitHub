﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\Widget\LISTVIEW_DeleteRow.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_LISTVIEW__InvalidateRowAndBelow
EXTRN	_WM_InvalidateRect:PROC
EXTRN	_WM_GetInsideRectExScrollbar:PROC
EXTRN	_LISTVIEW__GetRowDistY:PROC
EXTRN	_HEADER_GetHeight:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	@_RTC_CheckStackVars@8:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\simulation\gui\widget\listview_deleterow.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _LISTVIEW__InvalidateRowAndBelow
_TEXT	SEGMENT
_RowDistY$14702 = -36					; size = 4
_HeaderHeight$14701 = -24				; size = 4
_Rect$14700 = -12					; size = 8
_hObj$ = 8						; size = 4
_pObj$ = 12						; size = 4
_Sel$ = 16						; size = 4
_LISTVIEW__InvalidateRowAndBelow PROC			; COMDAT
; Line 37
	push	ebp
	mov	ebp, esp
	sub	esp, 232				; 000000e8H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-232]
	mov	ecx, 58					; 0000003aH
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 38
	cmp	DWORD PTR _Sel$[ebp], 0
	jl	SHORT $LN2@LISTVIEW__
; Line 41
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR [eax+56]
	push	ecx
	call	_HEADER_GetHeight
	add	esp, 4
	mov	DWORD PTR _HeaderHeight$14701[ebp], eax
; Line 42
	mov	eax, DWORD PTR _pObj$[ebp]
	push	eax
	call	_LISTVIEW__GetRowDistY
	add	esp, 4
	mov	DWORD PTR _RowDistY$14702[ebp], eax
; Line 43
	lea	eax, DWORD PTR _Rect$14700[ebp]
	push	eax
	mov	ecx, DWORD PTR _hObj$[ebp]
	push	ecx
	call	_WM_GetInsideRectExScrollbar
	add	esp, 8
; Line 44
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR _Sel$[ebp]
	sub	ecx, DWORD PTR [eax+148]
	imul	ecx, DWORD PTR _RowDistY$14702[ebp]
	add	ecx, DWORD PTR _HeaderHeight$14701[ebp]
	movsx	edx, WORD PTR _Rect$14700[ebp+2]
	add	edx, ecx
	mov	WORD PTR _Rect$14700[ebp+2], dx
; Line 45
	lea	eax, DWORD PTR _Rect$14700[ebp]
	push	eax
	mov	ecx, DWORD PTR _hObj$[ebp]
	push	ecx
	call	_WM_InvalidateRect
	add	esp, 8
$LN2@LISTVIEW__:
; Line 47
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN6@LISTVIEW__
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 232				; 000000e8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	1
$LN6@LISTVIEW__:
	DD	1
	DD	$LN5@LISTVIEW__
$LN5@LISTVIEW__:
	DD	-12					; fffffff4H
	DD	8
	DD	$LN4@LISTVIEW__
$LN4@LISTVIEW__:
	DB	82					; 00000052H
	DB	101					; 00000065H
	DB	99					; 00000063H
	DB	116					; 00000074H
	DB	0
_LISTVIEW__InvalidateRowAndBelow ENDP
_TEXT	ENDS
PUBLIC	_LISTVIEW_DeleteRow
EXTRN	_LISTVIEW__InvalidateInsideArea:PROC
EXTRN	_LISTVIEW__UpdateScrollParas:PROC
EXTRN	_GUI_ARRAY_DeleteItem:PROC
EXTRN	_GUI_ARRAY_Delete:PROC
EXTRN	_GUI_ALLOC_Free:PROC
EXTRN	_LISTVIEW__GetNumColumns:PROC
EXTRN	_GUI_ALLOC_UnlockH:PROC
EXTRN	_GUI_ARRAY_GetpItemLocked:PROC
EXTRN	_LISTVIEW__GetNumRows:PROC
EXTRN	_LISTVIEW_LockH:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _LISTVIEW_DeleteRow
_TEXT	SEGMENT
_pCell$14722 = -92					; size = 4
_CellArray$ = -80					; size = 4
_pRow$ = -68						; size = 4
_i$ = -56						; size = 4
_NumColumns$ = -44					; size = 4
_ScrollChanged$ = -32					; size = 4
_NumRows$ = -20						; size = 4
_pObj$ = -8						; size = 4
_hObj$ = 8						; size = 4
_Index$ = 12						; size = 4
_LISTVIEW_DeleteRow PROC				; COMDAT
; Line 59
	push	ebp
	mov	ebp, esp
	sub	esp, 288				; 00000120H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-288]
	mov	ecx, 72					; 00000048H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 66
	cmp	DWORD PTR _hObj$[ebp], 0
	je	$LN17@LISTVIEW_D
; Line 68
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_LISTVIEW_LockH
	add	esp, 4
	mov	DWORD PTR _pObj$[ebp], eax
; Line 69
	mov	eax, DWORD PTR _pObj$[ebp]
	push	eax
	call	_LISTVIEW__GetNumRows
	add	esp, 4
	mov	DWORD PTR _NumRows$[ebp], eax
; Line 70
	mov	eax, DWORD PTR _Index$[ebp]
	cmp	eax, DWORD PTR _NumRows$[ebp]
	jae	$LN15@LISTVIEW_D
; Line 71
	mov	eax, DWORD PTR _Index$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pObj$[ebp]
	mov	edx, DWORD PTR [ecx+60]
	push	edx
	call	_GUI_ARRAY_GetpItemLocked
	add	esp, 8
	mov	DWORD PTR _pRow$[ebp], eax
; Line 72
	mov	eax, DWORD PTR _pRow$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _CellArray$[ebp], ecx
; Line 73
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pRow$[ebp], 0
; Line 75
	mov	eax, DWORD PTR _pObj$[ebp]
	push	eax
	call	_LISTVIEW__GetNumColumns
	add	esp, 4
	mov	DWORD PTR _NumColumns$[ebp], eax
; Line 76
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $LN14@LISTVIEW_D
$LN13@LISTVIEW_D:
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
$LN14@LISTVIEW_D:
	mov	eax, DWORD PTR _i$[ebp]
	cmp	eax, DWORD PTR _NumColumns$[ebp]
	jae	SHORT $LN12@LISTVIEW_D
; Line 78
	mov	eax, DWORD PTR _i$[ebp]
	push	eax
	mov	ecx, DWORD PTR _CellArray$[ebp]
	push	ecx
	call	_GUI_ARRAY_GetpItemLocked
	add	esp, 8
	mov	DWORD PTR _pCell$14722[ebp], eax
; Line 79
	cmp	DWORD PTR _pCell$14722[ebp], 0
	je	SHORT $LN11@LISTVIEW_D
; Line 80
	mov	eax, DWORD PTR _pCell$14722[ebp]
	cmp	DWORD PTR [eax], 0
	je	SHORT $LN10@LISTVIEW_D
; Line 81
	mov	eax, DWORD PTR _pCell$14722[ebp]
	mov	ecx, DWORD PTR [eax]
	push	ecx
	call	_GUI_ALLOC_Free
	add	esp, 4
$LN10@LISTVIEW_D:
; Line 83
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pCell$14722[ebp], 0
$LN11@LISTVIEW_D:
; Line 85
	jmp	SHORT $LN13@LISTVIEW_D
$LN12@LISTVIEW_D:
; Line 87
	mov	eax, DWORD PTR _CellArray$[ebp]
	push	eax
	call	_GUI_ARRAY_Delete
	add	esp, 4
; Line 88
	mov	eax, DWORD PTR _Index$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pObj$[ebp]
	mov	edx, DWORD PTR [ecx+60]
	push	edx
	call	_GUI_ARRAY_DeleteItem
	add	esp, 8
; Line 90
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR [eax+112]
	cmp	ecx, DWORD PTR _Index$[ebp]
	jne	SHORT $LN9@LISTVIEW_D
; Line 91
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	DWORD PTR [eax+112], -1
	jmp	SHORT $LN8@LISTVIEW_D
$LN9@LISTVIEW_D:
; Line 92
	mov	eax, DWORD PTR _pObj$[ebp]
	cmp	DWORD PTR [eax+120], 0
	jge	SHORT $LN4@LISTVIEW_D
; Line 93
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR [eax+112]
	cmp	ecx, DWORD PTR _Index$[ebp]
	jle	SHORT $LN6@LISTVIEW_D
; Line 94
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR [eax+112]
	sub	ecx, 1
	mov	edx, DWORD PTR _pObj$[ebp]
	mov	DWORD PTR [edx+112], ecx
$LN6@LISTVIEW_D:
; Line 96
	jmp	SHORT $LN8@LISTVIEW_D
$LN4@LISTVIEW_D:
; Line 97
	mov	eax, DWORD PTR _pObj$[ebp]
	push	eax
	call	_LISTVIEW__GetNumRows
	add	esp, 4
	mov	ecx, DWORD PTR _pObj$[ebp]
	cmp	DWORD PTR [ecx+112], eax
	jl	SHORT $LN8@LISTVIEW_D
; Line 98
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	DWORD PTR [eax+112], -1
; Line 99
	jmp	SHORT $LN4@LISTVIEW_D
$LN8@LISTVIEW_D:
; Line 101
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	BYTE PTR [eax+173], 0
; Line 102
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pObj$[ebp], 0
; Line 103
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_LISTVIEW__UpdateScrollParas
	add	esp, 4
	mov	DWORD PTR _ScrollChanged$[ebp], eax
; Line 104
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_LISTVIEW_LockH
	add	esp, 4
	mov	DWORD PTR _pObj$[ebp], eax
; Line 105
	cmp	DWORD PTR _ScrollChanged$[ebp], 0
	je	SHORT $LN2@LISTVIEW_D
; Line 106
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_LISTVIEW__InvalidateInsideArea
	add	esp, 4
; Line 107
	jmp	SHORT $LN15@LISTVIEW_D
$LN2@LISTVIEW_D:
; Line 108
	mov	eax, DWORD PTR _Index$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pObj$[ebp]
	push	ecx
	mov	edx, DWORD PTR _hObj$[ebp]
	push	edx
	call	_LISTVIEW__InvalidateRowAndBelow
	add	esp, 12					; 0000000cH
$LN15@LISTVIEW_D:
; Line 111
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pObj$[ebp], 0
$LN17@LISTVIEW_D:
; Line 114
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 288				; 00000120H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_LISTVIEW_DeleteRow ENDP
_TEXT	ENDS
END
