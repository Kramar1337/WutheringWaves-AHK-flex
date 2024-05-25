/*
====================Wuthering Waves AHK by Kramar1337================

F2 - Карта
T - Спам паутинки
F - Фастлут
Z - Скип диалогов
V - Macro Key
Numpad 0 - Off
Numpad 1 - AutoAttack
Numpad 2 - Chixia rage
Numpad 3 - Bhop
Numpad 4 - Sanhua hold



Запланировано:
Оверлей с инфой по закупу
Перенос настроек в конфиг
Другие пистолетчики



Изменения: 25.05.2024
 - Подкрутки таймингов
 - Бинд на карту
 - Numpad 4 - Sanhua hold


Изменения: 22.05.2024
 - Начало положено
 - T - Спам паутинки
 - F - Фастлут
 - Z - Скип диалогов
 - V - Macro Key
 - Numpad 0 - Off
 - Numpad 1 - AutoAttack
 - Numpad 2 - Chixia rage
 - Numpad 3 - Bhop



Wuthering Waves  
ahk_class UnrealWindow
ahk_exe Client-Win64-Shipping.exe
H:\Wuthering Waves\Wuthering Waves Game\Wuthering Waves.exe
H:\Wuthering Waves\Wuthering Waves Game\Client\Binaries\Win64\Client-Win64-Shipping.exe
*/



;========Бинды
key_Map := "F2"
key_Pautinka := "T"
key_Macro := "V"
key_SkipNPC := "Z"
key_Fastlyt := "F"
key_EndExitapp := "End"
key_PauseSuspend := "Del"
key_Reload := "Home"
key_LabelNumpad0 := "Numpad0"
key_LabelNumpad1 := "Numpad1"
key_LabelNumpad2 := "Numpad2"
key_LabelNumpad3 := "Numpad3"
key_LabelNumpad4 := "Numpad4"


;========Вкл-выкл
Checkbox_Map = 1
Checkbox_Pautinka = 1
Checkbox_Macro = 1
Checkbox_SkipNPC = 1
Checkbox_Fastlyt = 1
Checkbox_PauseSuspend = 0
Checkbox_Reload = 1


;========Прочие настройки
SelectDefaultMacro = 2
SkipNPCLockMode = 1
PautinkaDelayIn = 180
BhopDelayIn = 100
FastlytDelayIn = 130
MapRunUrl = https://genshin-impact-map.appsample.com/wuthering-waves-map
WindowFocus = ahk_class UnrealWindow








; WinName:= "WWFlex v1 by Kramar1337"
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance force
DetectHiddenWindows, On
DetectHiddenText, On
CoordMode Mouse, Screen
CoordMode Pixel, Screen
SetTitleMatchMode, 2
Process, Priority,, High
Setbatchlines,-1
SetKeyDelay,-1, -1
SetControlDelay, -1
SetMouseDelay, -1
SetWinDelay,-1
Menu,Tray, Icon, data\icon.ico, ,1

CommandLine := DllCall("GetCommandLine", "Str")
If !(A_IsAdmin || RegExMatch(CommandLine, " /restart(?!\S)")) 
{
	Try 
	{
		If (A_IsCompiled) 
			Run *RunAs "%A_ScriptFullPath%" /restart
		Else 
			Run *RunAs "%A_AhkPath%" /restart "%A_ScriptFullPath%"
	}
	ExitApp
}

Loop 30
{
	IndexVarL := A_Index - 1
	jopa%IndexVarL% := false
}
jopa%SelectDefaultMacro%:=true

AntiVACHashChanger:="fghfh3534gjdgdfgfj6867jhmbdsq4123asddfgdfgaszxxcasdf423dfght7657ghnbnghrtwer32esdfgr65475dgdgdf6867ghjkhji7456wsdfsf34sdfsdf324sdfgdfg453453453456345gdgdgdfsf"

Menu,Tray,NoStandard
Menu,Tray,DeleteAll
Menu,Tray, add, Reload, MetkaMenu4
Menu,Tray, Icon, Reload, shell32.dll, 239, 16
Menu,Tray, Default, Reload
Menu,Tray, add, Pause-Play, MetkaMenu3
Menu,Tray, Icon, Pause-Play, imageres.dll, 233, 16
Menu,Tray, add
Menu,Tray, add, Сreate AHK shortcut, MetkaMenu2
Menu,Tray, Icon, Сreate AHK shortcut, shell32.dll,264, 16
Menu,Tray, add
Menu,Tray, add, Exit, MetkaMenu1
Menu,Tray, Icon, Exit, shell32.dll,28, 16

;===============================Переменные

xSkip:=round(A_ScreenWidth * (1950 / 2560))
ySkip:=round(A_ScreenHeight * (946 / 1440))

xSkip2:=round(A_ScreenWidth * (155 / 2560))
ySkip2:=round(A_ScreenHeight * (90 / 1440))

xSkip3:=round(A_ScreenWidth * (1125 / 2560))
ySkip3:=round(A_ScreenHeight * (800 / 1440))

xSkip4:=round(A_ScreenWidth * (1722 / 2560))
ySkip4:=round(A_ScreenHeight * (900 / 1440))


Hotkey, IfWinActive, %WindowFocus%
if Checkbox_SkipNPC
	Hotkey, *~$%key_SkipNPC%, Label_SkipNPC, on
if Checkbox_Fastlyt
	Hotkey, *~$%key_Fastlyt%, Label_Fastlyt, on
if Checkbox_Pautinka
	Hotkey, *~$%key_Pautinka%, Label_Pautinka, on
Hotkey, IfWinActive


if Checkbox_PauseSuspend
	Hotkey, *~$%key_PauseSuspend%, MetkaMenu3, on
if Checkbox_Reload
	Hotkey, *~$%key_Reload%, MetkaMenu4, on
if Checkbox_Map
Hotkey, %key_Map%, Label_Map, on

if Checkbox_Macro
{
	Hotkey, *~$%key_Macro%, Metkakey_macro, on
	Hotkey, *~$%key_LabelNumpad0%, LabelNumpad0, on
	Hotkey, *~$%key_LabelNumpad1%, LabelNumpad1, on
	Hotkey, *~$%key_LabelNumpad2%, LabelNumpad2, on
	Hotkey, *~$%key_LabelNumpad3%, LabelNumpad3, on
	Hotkey, *~$%key_LabelNumpad4%, LabelNumpad4, on
	; Hotkey, *~$%key_LabelNumpad5%, LabelNumpad5, on
	; Hotkey, *~$%key_LabelNumpad6%, LabelNumpad6, on
	; Hotkey, *~$%key_LabelNumpad7%, LabelNumpad7, on
	; Hotkey, *~$%key_LabelNumpad8%, LabelNumpad8, on
	; Hotkey, *~$%key_LabelNumpad9%, LabelNumpad9, on
}

Hotkey, *~$%key_EndExitapp%, MetkaMenu1, on

;=============================Получить список "GroupNameMap.txt" и распределить
FileRead, GroupNameMapVar, %A_ScriptDir%\data\GroupNameMap.txt
Loop, parse, GroupNameMapVar, `n, `r
{
	VarLoop1:=A_LoopField
	VarLoop1 := RegExReplace(VarLoop1, "mi);.*", "")
	if (VarLoop1 != "")
	GroupAdd, GroupNameMap, %VarLoop1%
}

; ClaudiaVar = 300
Return




; *~$X::
; Sleep 50
; SendInput {vk1 down}
; Sleep 400
; SendInput {vk1 up}
; Sleep ClaudiaVar
; SendInput {vk20}
; Return

;===========================================Калибровка
; Up::
; ClaudiaVar+=5
; Tooltip % "Delay - " ClaudiaVar,round(A_ScreenWidth * .5),0
; Return
; Down::
; ClaudiaVar-=5
; Tooltip % "Delay - " ClaudiaVar,round(A_ScreenWidth * .5),0
; Return

;============================Макросы
Metkakey_macro:
Sleep 1
IfWinNotActive, %WindowFocus%
	Return
if FuncCursorVisible()
	Return
if jopa1
	Goto Label_Goto_Auto_Attack
if jopa2
	Goto Label_Goto_Chixia_Rage
if jopa3
	Goto Label_Goto_Bhop
if jopa4
	Goto Label_Goto_Sanhua
; if jopa5
	; Goto Label_Goto
; if jopa6
	; Goto Label_Goto
; if jopa7
	; Goto Label_Goto
; if jopa8
	; Goto Label_Goto
; if jopa9
	; Goto Label_Goto
Return
;===============================Off
LabelNumpad0:
IfWinNotActive, %WindowFocus%
	Return
FuncMacroRestore()
ToolTip, Off, 0, 0
sleep 500
ToolTip
Return
;===============================AAtack
LabelNumpad1:
IfWinNotActive, %WindowFocus%
	Return
FuncMacroRestore()
jopa1:=true
ToolTip, AAtack, 0, 0
sleep 500
ToolTip
Return
;===============================Чися рейдж
LabelNumpad2:
IfWinNotActive, %WindowFocus%
	Return
FuncMacroRestore()
jopa2:=true
ToolTip, Chixia Rage, 0, 0
sleep 500
ToolTip
Return
;===============================Bhop
LabelNumpad3:
IfWinNotActive, %WindowFocus%
	Return
FuncMacroRestore()
jopa3:=true
ToolTip, Bhop, 0, 0
sleep 500
ToolTip
Return
;===============================Sanhua hold
LabelNumpad4:
IfWinNotActive, %WindowFocus%
	Return
FuncMacroRestore()
jopa4:=true
ToolTip, Sanhua hold, 0, 0
sleep 500
ToolTip
Return


;===============================Sanhua hold
Label_Goto_Sanhua:

startX := round(A_ScreenWidth * (1070 / 2560))
startY := round(A_ScreenHeight * (1320 / 1440))
endX := round(A_ScreenWidth * (1460 / 2560))
endY := round(A_ScreenHeight * (1350 / 1440))
blueColor := 0x96DCEC  ; blue
whiteColor := 0xFFFFFF  ; white
Loop 
{
	GetKeyState, StateA, vk1
	if StateA = U
		SendInput, {vk1 down}
	GetKeyState, StateA, %key_Macro%, P
    If StateA = U
	{
		SendInput, {vk1 up}
        break
	}
    PixelSearch, foundX, foundY, startX, startY, endX, endY, blueColor, 20, Fast RGB
    if (ErrorLevel = 0) 
	{
        PixelSearch,,, foundX-4, foundY-4, foundX+4, foundY+4, whiteColor, 0, Fast RGB
		if (ErrorLevel = 0) 
		{
			SendInput, {vk1 up}
			Sleep 450
		}
    }
    Sleep 1
}
Return

;===============================Bhop отдельно
Label_Goto_Bhop:
Loop
{
    GetKeyState, StateA, %key_Macro%, P
    If StateA = U
        break 
    Sleep 150
	FuncRandomSleep()
    Send, {Blind}{Space}
}
Return

;==========Обычный спам автоатакой
Label_Goto_Auto_Attack:
Loop
{
    GetKeyState, StateA, %key_Macro%, P
    If StateA = U
        break 
    Sleep 50
	FuncRandomSleep()
    SendInput, {vk1}
}
Return
;==========Чися рейдж=======================================================
Label_Goto_Chixia_Rage:
Sleep 1
Loop
{
    GetKeyState, StateA, %key_Macro%, P
    If StateA = U
	{
		Sleep 50
		xPix:=round(A_ScreenWidth * (1757 / 2560)), yPix:=round(A_ScreenHeight * (1300 / 1440))
		PixelGetColor, GetPix, xPix, yPix, RGB
		if (GetPix = 0xFF0000 || GetPix = 0xFD0000 || GetPix = 0xFC0101)
		{
			SendInput {vk47} 	;G vk47
		}
        break
	}
	SendInput {vk47} 	;G vk47
	Sleep 35
		SendInput {vk1}
		Sleep 35
	SendInput {vk47} 	;G vk47
	Sleep 35
}
; 35
Return


;============================Карта
Label_Map:
Sleep 1
Keywait %Label_Map%
IfWinActive, %WindowFocus%
{
	IfWinNotExist, ahk_group GroupNameMap
	{
		Run, %MapRunUrl%
		WinWait, ahk_group GroupNameMap, , 3
	}
	WinActivate ahk_group GroupNameMap
}
Else
WinActivate %WindowFocus%
Return

;============================Скип диалогов NPC
Label_SkipNPC:
Sleep 150
IfWinNotActive, %WindowFocus%
	Return
if !FuncCursorVisible()
	Return
if SkipNPCLockMode
{
	Keywait %key_SkipNPC%

	Toggle1SkipNPC := !Toggle1SkipNPC
	if (Toggle1SkipNPC)
	{
	  SetTimer, TimerNpcSkip, on
	  Tooltip Skip NPC: Loop,round(A_ScreenWidth * .5 - 50),0,2
	}
	Else
	{
	  SetTimer, TimerNpcSkip, off
	  Tooltip,,0,0,2
	}
}
Else
{
	Loop
	{
		if !FuncCursorVisible()
			break
		GetKeyState, SpaceVar, %key_SkipNPC%, P
		If SpaceVar = U
			break
		Sleep 100
		FuncRandomSleep()
		Click %xSkip% %ySkip%
		FuncRandomSleep()
		Click %xSkip2% %ySkip2%
		FuncRandomSleep()
		Click %xSkip3% %ySkip3%
		FuncRandomSleep()
		Click %xSkip4% %ySkip4%
	}
}
Return
;============================SetTimer Скип диалогов
TimerNpcSkip:
Sleep 100
if ((!FuncCursorVisible() || !WinActive(WindowFocus)) || (A_PriorKey != key_SkipNPC))
{
; msgbox 1
	Toggle1SkipNPC := !Toggle1SkipNPC
	SetTimer, TimerNpcSkip, off
	Tooltip,,0,0,2
}
FuncRandomSleep()
Click %xSkip% %ySkip%
FuncRandomSleep()
Click %xSkip2% %ySkip2%
FuncRandomSleep()
Click %xSkip3% %ySkip3%
FuncRandomSleep()
Click %xSkip4% %ySkip4%
Return



;============================Спам паутинки
Label_Pautinka:
Sleep %PautinkaDelayIn%
IfWinNotActive, %WindowFocus%
	Return
if FuncCursorVisible()
	Return
Loop
{
	GetKeyState, SpaceVar, %key_Pautinka%, P
	If SpaceVar = U
		break 
	SendInput {Blind}{%key_Pautinka%}
	sleep 100
	FuncRandomSleep()
}
Return

;============================Фастлут
Label_fastlyt:
Sleep %FastlytDelayIn%
IfWinNotActive, %WindowFocus%
	Return
if FuncCursorVisible()
	Return
Loop
{
	GetKeyState, SpaceVar, %key_Fastlyt%, P
	If SpaceVar = U
		break 
	SendInput {Blind}{vk46} 	;F
	sleep 1
	FuncRandomSleep()
}
return


;============================Переменные
GetListVars1337:
ListVars
Return

;==========================================Функция сброса
FuncMacroRestore()
{
Global
	Loop 26
	{
		IndexVarL := A_Index - 1
		jopa%IndexVarL% := false
	}
}

;============================Функция рандома Sleep
FuncRandomSleep()
{
	Random, ScRandomSleep, 15, 40
	Sleep %ScRandomSleep%
}

;============================Функция рандома
gen_password(length = 8)																;начало фукции длина пароля по дефолту 8
{																						
	possible = abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890			;переменная с символами
	StringLen, max, possible															;сколько символов в переменной
	if length > %max%																	;если длина пароля больше переменной то выйти
	{																					
		MsgBox, Длина должна быть меньше количества возможных символов.				
		Exit, 40																		
	}																					
	Loop																				;начало петли
	{																					
		Random, rand, 1, max															;зарандомить от 1 до %число символов в переменной %possible%%
		StringMid, char, possible, rand, 1												;извлеч из %possible%(наши символы), номер символа %rand%, кол-во 1, в %char%
		IfNotInString, password, %char%													;повторился ли символ %password% и %char%
		{																				
			password = %password%%char%													;склеить то что было и новый символ
			if StrLen(password) >= length												;если длина строки %password% больше или равна длине %length%
				break																	;выйти из петли
		}																				
	}																					
	return password																		;вернуть сгенерированое значение в переменную
}


;============================Функция: есть курсор мышки - 1, нет курсора - 0
FuncCursorVisible()
{
	StructSize1337 := A_PtrSize + 16
	VarSetCapacity(InfoStruct1337, StructSize1337)
	NumPut(StructSize1337, InfoStruct1337)
	DllCall("GetCursorInfo", UInt, &InfoStruct1337)
	Result1337 := NumGet(InfoStruct1337, 8)
	if (Result1337 <> 0)
		CursorVisible := 1
	Else
		CursorVisible := 0
	Return CursorVisible
}

;============================Меню, Reload
MetkaMenu4:
Reload
Return

;============================Меню, Отключить все хоткеи, остановить активные потоки
MetkaMenu3:
Suspend, Toggle
Toggle1Suspend := !Toggle1Suspend
if (Toggle1Suspend)
{
	Menu,Tray, Icon, imageres.dll, 230, 1
	Menu,Tray, Icon, Pause-Play, imageres.dll, 230, 16
	SoundBeep
}
Else
{
	Menu,Tray, Icon, imageres.dll, 233, 1
	Menu,Tray, Icon, Pause-Play, imageres.dll, 233, 16
	SoundBeep
}
Pause , Toggle, 1
Exit

;============================Меню, создать ярлык
MetkaMenu2:
FileCreateShortcut, %A_ScriptFullPath%, %A_Desktop%\WWFlex.lnk,,,WW gachibaser things, %A_ScriptDir%\data\icon.ico
Return

;============================Меню, выйти
MetkaMenu1:
Exitapp
Return






