#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#singleinstance force
#MaxHotkeysPerInterval 600

SetNumLockState, AlwaysOn
SetCapsLockState, AlwaysOff
SetScrollLockState, AlwaysOff

Gui, Show, x0 y0 w492 h110
Gui, Add, Button, x3 y3 w120 h50 v1_vez_Misturado, 1_vez_Misturado
Gui, Add, Button, x125 y3 w120 h50 v2_vezes_Misturado, 2_vezes_Misturado
Gui, Add, Button, x247 y3 w120 h50 v3_vezes_Misturado, 3_vezes_Misturado
Gui, Add, Button, x369 y32 w120 h50 vReload, Reload
Gui, Add, Button, x3 y56 w120 h50 v1_Minuto, 1_Minuto
Gui, Add, Button, x125 y56 w120 h50 v2_Minutos, 2_Minutos
Gui, Add, Button, x247 y56 w120 h50 v3_Minutos, 3_Minutos

ScrollLock::
Sleep, 100
return

GuiClose:
GuiEscape:
ExitApp
return

ButtonReload:
Reload
return

Button1_vez_Misturado:
SoundPlay, %A_ScriptDir%\chime.wav,
Loop, 12{
ToolTip, %A_Index%s de 12s, 0, 0,
Sleep, 1000
}
Loop, 1{
ToolTip, %A_Index% de 1, 0, 0,
SoundPlay, %A_ScriptDir%\misturado.wmv,1
}
ToolTip,,0,0,
return

Button2_vezes_Misturado:
SoundPlay, %A_ScriptDir%\chime.wav,
Loop, 12{
ToolTip, %A_Index%s de 12s, 0, 0,
Sleep, 1000
}
Loop, 2{
ToolTip, %A_Index% de 2, 0, 0,
SoundPlay, %A_ScriptDir%\misturado.wmv,1
}
ToolTip,,0,0,
return

Button3_vezes_Misturado:
SoundPlay, %A_ScriptDir%\chime.wav,
Loop, 12{
ToolTip, %A_Index%s de 12s, 0, 0,
Sleep, 1000
}
Loop, 3{
ToolTip, %A_Index% de 3, 0, 0,
SoundPlay, %A_ScriptDir%\misturado.wmv,1
}
ToolTip,,0,0,
return







Button1_minuto:
SoundPlay, %A_ScriptDir%\chime.wav,
Loop, 60{
ToolTip, %A_Index%s de 60s, 0, 0,
Sleep, 1000
}
SoundPlay, %A_ScriptDir%\chime.wav,
ToolTip,,0,0,
return

Button2_minutos:
SoundPlay, %A_ScriptDir%\chime.wav,
Loop, 120{
ToolTip, %A_Index%s de 120s, 0, 0,
Sleep, 1000
}
SoundPlay, %A_ScriptDir%\chime.wav,
ToolTip,,0,0,
return

Button3_minutos:
SoundPlay, %A_ScriptDir%\chime.wav,
Loop, 180{
ToolTip, %A_Index%s de 180s, 0, 0,
Sleep, 1000
}
SoundPlay, %A_ScriptDir%\chime.wav,
ToolTip,,0,0,
return

