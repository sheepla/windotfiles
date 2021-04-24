#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;MsgBox, main.ahk

/*
C-qの2連打でアプリを閉じる
*/
;~^q::
;	Input, inputText, I L1 T0.5, ^q
;	IfInString, ErrorLevel, EndKey:
;	{
;		Send, !{F4}
;	}
;Return

~^!q::Send, !{F4}

;Win+Space -> 全角・半角
#Space::Send, {vkF3}

; Windowsキーの単独押下を無効(スタートメニュー非表示)
; LWin::Return
RWin::Return

;FIXME 無変換+スペース->Shift
;sc07B & Space::RShift
;FIXME LAlt & Space -> Shift
;!Space::RShift

;; ウインドウ切り替え
;sc07B & [::ShiftAltTab
;sc07B & ]::AltTab
;LWIN & [::ShiftAltTab
;LWIN & ]::AltTab
;RWIN & z::AltTabMenu
;RWIN & z::AltTabMenu
;
;RWIN & q::Send, ^#{Left}
;RWIN & w::Send, ^#{Right}
LAlt & [::Send, #^{Left}
LAlt & ]::Send, #^{Right}

; マウスホイールでウインドウ切り替え
;LAlt & WheelDown::AltTab    ; Alt+ホイールでウインドウ切り替え
;LAlt & WheelUp::ShiftAltTab ; Alt+ホイールでウインドウ切り替え
;LAlt & RButton::AltTabMenu  ; マウス中ボタンでAlt+Tabメニュー

; vim.ahk
#Include muhenkan-vim.ahk
