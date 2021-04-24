#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 無変換(sc07b) + 他のキーの組み合わせでVim風操作
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

sc07B & h::Send, {Blind}{Left}
sc07B & j::Send, {Blind}{Down}
sc07B & k::Send, {Blind}{Up}
sc07B & l::Send, {Blind}{Right}

sc07B & .::Send, +{Tab}
sc07B & sc033::Send, {Tab}

sc07B & `;::Send, {Blind}{BS}
sc07B & '::Send, {Blind}{Del}

sc07B & o::Send, {Blind}^{PgDn} ; next tab
sc07B & i::Send, {Blind}^{PgUp} ; previous tab

sc07B & m::Send, {AppsKey}

sc07B & /::Send, {F6}

sc07B & r::ShiftAltTab
sc07B & t::AltTab

sc07B & w::Send, ^{BS} ; delete backword

sc07B & f::Send, ^{Right}
sc07B & b::Send, ^{Left}

sc07B & n::Send, {PgDn}
sc07B & p::Send, {PgUp}

sc07B & d::Send, {Blind}{WheelDown}
sc07B & u::Send, {Blind}{WheelUp}

; zoom up/down
sc07B & -::Send, {Blind}^{WheelDown}
sc07B & =::Send, {Blind}^{WheelUp}
sc07B & +::Send, {Blind}^{WheelUp}

sc07B & a::Send, {Home}
sc07B & e::Send, {End}
sc07B & q::Send, {Esc}
sc07B & Space::Send, {Enter}

sc07B & v::Send, +{Insert} ; paste (Ctrl+V alternative)

;sc079 & q::Send, {!}
;sc079 & w::Send, {@}
;sc079 & e::Send, {#}
;sc079 & r::Send, {$}
;sc079 & t::Send, {`%}
;;sc079 & a::Send, {^}
;sc079 & d::Send, {_}
;sc079 & f::Send, {\}
;sc079 & g::Send, {|}
;sc079 & z::Send, {`}
;sc079 & x::Send, {~}
;sc079 & c::Send, {<}
;sc079 & v::Send, {>}
;sc079 & b::Send, {?}
;sc079 & [::Send, {(}
;sc079 & ]::Send, {)}
;sc079 & sc027::Send, {NumpadAdd}
;sc079 & '::Send, {NumpadSub}
;sc079 & \::Send, {=}
; sc079 & n::Send, {0}
; sc079 & m::Send, {1}
; sc079 & sc033::Send, {2}
; sc079 & .::Send, {3}
; sc079 & j::Send, {4}
; sc079 & k::Send, {5}
; sc079 & l::Send, {6}
; sc079 & u::Send, {7}
; sc079 & i::Send, {8}
; sc079 & o::Send, {9}
; sc079 & `;::Send, {NumpadAdd}
; sc079 & '::Send, {NumpadSub}
; sc079 & [::Send, {(}
; sc079 & ]::Send, {)}
; sc079 & h::Send, {=}
; sc079 & \::Send, {=}
; sc079 & p::Send, {NumpadMult}
; sc079 & /::Send, {NumpadDiv}
; sc079 & y::Send, {BS}

;Mouse Key
sc079 & `;::Send, {LButton}
sc079 & Space::Send, {LButton}
sc079 & o::Send, {RButton}

; sc079 & Space::
; 	MouseClick,left,,,,,D
; Return
; sc079 & Space Up::
; 	MouseClick,left,,,,,Uc079 & Space::
; 		Send, {LButton}
; 	Return
; Return

; esdf -> MouseMove
sc079 & s::
	MouseMove -30, 0, 0, R
Return
sc079 & e::
	MouseMove 0 , -30, 0, R
Return
sc079 & d::
	MouseMove 0, 30, 0, R
Return
sc079 & f::
	MouseMove 30, 0, 0, R
Return

; esdf -> MouseMove
sc079 & j::
	MouseMove -30, 0, 0, R
Return
sc079 & i::
	MouseMove 0 , -30, 0, R
Return
sc079 & k::
	MouseMove 0, 30, 0, R
Return
sc079 & l::
	MouseMove 30, 0, 0, R
Return

; FIXME
sc079 & Left::
	MouseClickDrag, LEFT, 0, 0, -30, 0, R
Return
sc079 & Up::
	MouseClickDrag, LEFT, 0, 0, 0, -30, R
Return
sc079 & Down::
	MouseClickDrag, LEFT, 0, 0, 0, 30, R
Return
sc079 & Right::
	MouseClickDrag, LEFT, 0, 0, 30, 0, R
Return

;Ctrl & AppsKey & Up::
;	MouseMove 0, -30, 0, R
;Return
;Ctrl & AppsKey & Left::
;	MouseMove -30, 0, 0, R
;Return
;Ctrl & AppsKey & Down::
;	MouseMove 0, 30, 0, R
;Return
;Ctrl & AppsKey & Right::
;	MouseMove 30, 0, 0, R
;Return

;!sc07B & Up::Send,{WheelUp}
;!sc07B & Down::Send,{WheelDown}
;!sc07B & Left::Send,{WheelLeft}
;!sc07B & Right::Send,{WheelRight}

Return
