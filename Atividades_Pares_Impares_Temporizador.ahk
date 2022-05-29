#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance ignore

SetNumLockState, AlwaysOn
SetCapsLockState, AlwaysOff
SetScrollLockState, AlwaysOff

SetTitleMatchMode, 2
/*
MsgBox, 4,Carregar Programas?,Carregar Programas?
IfMsgBox Yes
abrir_programa:= 1
else
abrir_programa:= 0

if (abrir_programa = 1){
run, "%A_ScriptDir%\atalhos_programas_a_usar\anki", ,Max
run, "%A_ScriptDir%\wh_com_video\WH_com_video.ahk"
}else{
Sleep, 100
}
*/

;run, "%A_ScriptDir%\wh_com_video\WH_com_video.ahk"

Sleep, 300

InputBox, quantidade_atividades, Quantidade de Atividades, Qual é a Quantidade de Atividades?, , , , , , , ,4

Loop, %quantidade_atividades%{
InputBox, atividade%A_Index%, Tempo (em minutos) da Atividade "%A_Index%", Tempo (em minutos) da Atividade "%A_Index%" (IGUAL ou ACIMA de 2 minutos - NO MÍNIMO), , , , , , , ,2
atividade%A_Index%:= atividade%A_Index%-1
}

SoundPlay, %A_ScriptDir%\multimidia\shuffle.wav,
MsgBox, 262144,Programas Abertos?,Os programas já estão abertos? Se sim, "OK" começa. Senão, abra-os...

qtd_ciclos:=0

Loop, %quantidade_atividades%{

qtd_ciclos++
minutos:= atividade%A_Index% * 1
correcao_minutos:= minutos+1

/*
if (WinExist("WH_com_video.ahk")){
SoundPlay, %A_ScriptDir%\multimidia\happyguitar.wav,
MsgBox, 262144,Exercício de Respiração (%qtd_ciclos%/%quantidade_atividades%),Exercício de Respiração. Continuar? (%qtd_ciclos%/%quantidade_atividades%)
WinActivate
Sleep, 300
ToolTip,Exercício de Respiração. Termine-o antes de iniciar alguma atividade. (%qtd_ciclos%/%quantidade_atividades%), 500, 0,
}
*/

if (atividade%A_Index% > 0){
SoundPlay, %A_ScriptDir%\multimidia\happyguitar.wav,
MsgBox, 262144,Atividade "%qtd_ciclos%",Atividade "%qtd_ciclos%" de %quantidade_atividades%. Continuar?
MsgBox, 4,Musica de Estudo,Musica de Estudo?
IfMsgBox Yes
abrir_programa:= 1
else
abrir_programa:= 0

if (abrir_programa = 1){
SoundPlay, %A_ScriptDir%\multimidia\naruto.wav,
}else{
Sleep, 100
}
Loop, %minutos%{
ToolTip, %A_Index%m de %correcao_minutos%m → Atividade "%qtd_ciclos%" de %quantidade_atividades%, 1000, 0,
Sleep, 60000
}

SoundPlay, %A_ScriptDir%\multimidia\reco.wav,1
SoundPlay, %A_ScriptDir%\multimidia\select.wav,1

Loop, 60{
ToolTip, %A_Index%s de 60s (Último Minuto) → Atividade "%qtd_ciclos%" de %quantidade_atividades%, 1000, 0,
Sleep, 1000
}
}
ToolTip,,0,0,

/*
SoundPlay, %A_ScriptDir%\multimidia\chime.wav,
MsgBox, 262144,Atividade Concluída!,De %quantidade_atividades% atividades a %A_Index%ª foi concluída. Parabéns!
*/

/*
Random, rand, 0, 2
if (rand = 0){
SoundPlay, %A_ScriptDir%\multimidia\aro.wav, 
MsgBox,262144,Sorteando...,Sorteando..., 1
Sleep, 500
SoundPlay, %A_ScriptDir%\multimidia\failure.wav,
MsgBox,262144, Não foi dessa vez..., Dessa vez... Você não ganhou "Ponto de Disciplina". Tente de novo!
}else{
SoundPlay, %A_ScriptDir%\multimidia\aro.wav,
MsgBox,262144,Sorteando...,Sorteando..., 1
Sleep, 500
*/
/*
SoundPlay, %A_ScriptDir%\multimidia\success.wav,
InputBox, registro_atividade, Registro de Atividade, Qual atividade deverá ser registrada? (0 = não registra), , , , , , , ,0
if (registro_atividade != 0){
FileAppend,, %A_ScriptDir%\registros_atividades\%correcao_minutos%m de %registro_atividade% em %A_YYYY%-%A_MM%-%A_DD%-%A_Hour%%A_Min%.txt
}else{
Sleep, 100
}
*/
;}
}
SoundPlay, %A_ScriptDir%\multimidia\completion.wav,1
ExitApp

Pause::
if (WinExist("abcdefg1234567")){
Sleep, 100
}else{
if (WinExist("Notepad2")){
WinActivate
Sleep, 1000
Send ^{END}
}
ExitApp
}