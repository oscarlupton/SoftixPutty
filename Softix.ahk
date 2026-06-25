; ===========================================================
; PuTTY keymap for active-1.ticketek.com.au
; Oscar Lupton | Event IT | 2026-06-25
; Refactored from CRT. Characters are Ctrl-X and a key:
;   F1=^X?   F2=^XI   F3=^XO   F4=^XP    F5=^XC   F6=^XD
;   F7=^XA   F8=^XF   F9=^XE   F10=^XR   F11=^XB  F12=^XN

#Requires AutoHotkey v2.0
#SingleInstance Force

#HotIf WinActive("ahk_class PuTTY")

F1::SendInput("^x?") ; Help
F2::SendInput("^xI") ; Info lookup
F3::SendInput("^xO") ; Event lookup
F4::SendInput("^xP") ; Event lookup but wide?
F5::SendInput("^xC") ; Calendar
F6::SendInput("^xD") ; Section description
F7::SendInput("^xA") ; Current mode settings
F8::SendInput("^xF") ; Find seats
F9::SendInput("^xE") ; Event Guide
F10::SendInput("^xR") ; Event Guide
F11::SendInput("^xB") ; Selection status
F12::SendInput("^xN") ; National news

; Despite running in VT100 emu, the server expects emac-like
; key bindings. As follows:
;   Left=^H   Right=^F   Up=^P   Down=^N   Insert=^J(LF)
;   Home="@"+CR   End=^E   PgUp=^B   PgDn=^V   Delete=^D

Left::SendInput("^h")
Right::SendInput("^f")
Up::SendInput("^p")
Down::SendInput("^n")
Home::SendInput("@^m")
End::SendInput("^e")
PgUp::SendInput("^b")
PgDn::SendInput("^v")
Insert::SendInput("^j")
Delete::SendInput("^d")

#HotIf
