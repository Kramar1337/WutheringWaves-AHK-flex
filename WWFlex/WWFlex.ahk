﻿/*
====================Wuthering Waves AHK by Kramar1337================

Esc - Прервать
F1 - Оверлей
F2 - Карта
F - Фастлут
Z - Скип диалогов
V - Macro Key
Numpad 0 - Off
Numpad 1 - AutoAttack
Numpad 2 - Chixia rage
Numpad 3 - Bhop
Numpad 4 - Sanhua hold++
Numpad 5 - Auto pistols
Numpad 6 - *EncoreN1 (Описание*)
Numpad 7 - *RoverHavocN1 (Описание*)
Numpad 8 - *DanjinE1 (Описание*)




Запланировано:
Лого при запуске
Безопасность, хешченжер, неймченжер



Изменения: 29.05.2024
 - Спам паутинки фулл хня
 - Numpad 6 - *EncoreN1 (Описание*)
 - Numpad 7 - *RoverHavoc N1 (Описание*)
 - Numpad 8 - *Danjin E1 (Описание*)

Изменения: 28.05.2024
 - Подкрутка скипа диалогов
 - Подкрутка Чиси для чела
 - Оверлей с инфой

Изменения: 26.05.2024

 - Подкрутка фастлута
 - Numpad 5 - Auto pistols
 - Sanhua hold ++
 - Esc - Прервать залипший поток
 - Открывашка настроек в трей меню
 - Перенос настроек в конфиг
 - Импорт настроек в трей меню
 - Обновлятор в трей меню

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




4-3-3-1-1 = 12
Wuthering Waves  
ahk_class UnrealWindow
ahk_exe Client-Win64-Shipping.exe
H:\Wuthering Waves\Wuthering Waves Game\Wuthering Waves.exe
H:\Wuthering Waves\Wuthering Waves Game\Client\Binaries\Win64\Client-Win64-Shipping.exe
*/



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

IniRead, Key_ESkillDefault, data\Config.ini, Settings, Key_ESkillDefault
IniRead, Key_RelicDefault, data\Config.ini, Settings, Key_RelicDefault
IniRead, key_Overlay, data\Config.ini, Settings, key_Overlay
IniRead, key_Map, data\Config.ini, Settings, key_Map
IniRead, key_Pautinka, data\Config.ini, Settings, key_Pautinka
IniRead, key_Macro, data\Config.ini, Settings, key_Macro
IniRead, key_SkipNPC, data\Config.ini, Settings, key_SkipNPC
IniRead, key_Fastlyt, data\Config.ini, Settings, key_Fastlyt
IniRead, key_EndExitapp, data\Config.ini, Settings, key_EndExitapp
IniRead, key_PauseSuspend, data\Config.ini, Settings, key_PauseSuspend
IniRead, key_Reload, data\Config.ini, Settings, key_Reload
IniRead, key_LabelNumpad0, data\Config.ini, Settings, key_LabelNumpad0
IniRead, key_LabelNumpad1, data\Config.ini, Settings, key_LabelNumpad1
IniRead, key_LabelNumpad2, data\Config.ini, Settings, key_LabelNumpad2
IniRead, key_LabelNumpad3, data\Config.ini, Settings, key_LabelNumpad3
IniRead, key_LabelNumpad4, data\Config.ini, Settings, key_LabelNumpad4
IniRead, key_LabelNumpad5, data\Config.ini, Settings, key_LabelNumpad5
IniRead, key_LabelNumpad6, data\Config.ini, Settings, key_LabelNumpad6
IniRead, key_LabelNumpad7, data\Config.ini, Settings, key_LabelNumpad7
IniRead, key_LabelNumpad8, data\Config.ini, Settings, key_LabelNumpad8
; IniRead, key_LabelNumpad9, data\Config.ini, Settings, key_LabelNumpad9


IniRead, Checkbox_Overlay, data\Config.ini, Settings, Checkbox_Overlay
IniRead, Checkbox_Map, data\Config.ini, Settings, Checkbox_Map
IniRead, Checkbox_Pautinka, data\Config.ini, Settings, Checkbox_Pautinka
IniRead, Checkbox_Macro, data\Config.ini, Settings, Checkbox_Macro
IniRead, Checkbox_SkipNPC, data\Config.ini, Settings, Checkbox_SkipNPC
IniRead, Checkbox_Fastlyt, data\Config.ini, Settings, Checkbox_Fastlyt
IniRead, Checkbox_PauseSuspend, data\Config.ini, Settings, Checkbox_PauseSuspend
IniRead, Checkbox_Reload, data\Config.ini, Settings, Checkbox_Reload


IniRead, RoverHavocTime1, data\Config.ini, Settings, RoverHavocTime1
IniRead, EncoreTime1, data\Config.ini, Settings, EncoreTime1
IniRead, SelectDefaultMacro, data\Config.ini, Settings, SelectDefaultMacro
IniRead, SkipNPCLockMode, data\Config.ini, Settings, SkipNPCLockMode
IniRead, BhopDelayIn, data\Config.ini, Settings, BhopDelayIn
IniRead, FastlytFastMode, data\Config.ini, Settings, FastlytFastMode
IniRead, FastlytDelayIn, data\Config.ini, Settings, FastlytDelayIn
IniRead, MapRunUrl, data\Config.ini, Settings, MapRunUrl
IniRead, WindowFocus, data\Config.ini, Settings, WindowFocus


Loop 30
{
	IndexVarL := A_Index - 1
	jopa%IndexVarL% := false
}
jopa%SelectDefaultMacro%:=true

AntiVACHashChanger:="fghfh3534gjdgdfgfj6867jhmbdsq4123asddfgdfgaszxxcasdf423dfght7657ghnbnghrtwer32esdfgr65475dgdgdf6867ghjkhji7456wsdfsf34sdfsdf324sdfgdfg453453453456345gdgdgdfsf"

; imageres.dll
; shell32.dll
Menu,Tray,NoStandard
Menu,Tray,DeleteAll
Menu,Tray, add, Reload, MetkaMenu4
Menu,Tray, Icon, Reload, shell32.dll, 239, 16
Menu,Tray, Default, Reload
Menu,Tray, add, Pause-Play, MetkaMenu3
Menu,Tray, Icon, Pause-Play, imageres.dll, 233, 16
Menu,Tray, add, Edit Config, MetkaMenu5
Menu,Tray, Icon, Edit Config, imageres.dll, 247, 16
Menu,Tray, add
Menu,Tray, add, Import Settings, MetkaMenu6
Menu,Tray, Icon, Import Settings, imageres.dll, 262, 16
Menu,Tray, add, Force Update, MetkaMenu7
Menu,Tray, Icon, Force Update, imageres.dll, 232, 16
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
Hotkey, IfWinActive


if Checkbox_PauseSuspend
	Hotkey, *~$%key_PauseSuspend%, MetkaMenu3, on
if Checkbox_Reload
	Hotkey, *~$%key_Reload%, MetkaMenu4, on
if Checkbox_Map
	Hotkey, %key_Map%, Label_Map, on
if Checkbox_Overlay
	Hotkey, %key_Overlay%, Label_Overlay, on

if Checkbox_Macro
{
	Hotkey, *~$%key_Macro%, Metkakey_macro, on
	Hotkey, *~$%key_LabelNumpad0%, LabelNumpad0, on
	Hotkey, *~$%key_LabelNumpad1%, LabelNumpad1, on
	Hotkey, *~$%key_LabelNumpad2%, LabelNumpad2, on
	Hotkey, *~$%key_LabelNumpad3%, LabelNumpad3, on
	Hotkey, *~$%key_LabelNumpad4%, LabelNumpad4, on
	Hotkey, *~$%key_LabelNumpad5%, LabelNumpad5, on
	Hotkey, *~$%key_LabelNumpad6%, LabelNumpad6, on
	Hotkey, *~$%key_LabelNumpad7%, LabelNumpad7, on
	Hotkey, *~$%key_LabelNumpad8%, LabelNumpad8, on
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

;===============================Оверлей создание
OverlaySt = 1
OverlayStList = 3
Random, RandomVar1, 33, 35
RandomNameOverlay := gen_password(RandomVar1)	
Gui, 99: +AlwaysOnTop +ToolWindow -Caption +LastFound -DPIScale
Gui, 99: Color, 0x000000
Gui, 99: Add, Picture, w%A_ScreenWidth% h%A_ScreenHeight% x0 y0 vMyPictureVar1, data\Overlay1.png
Gui, 99: Show, Hide w%A_ScreenWidth% h%A_ScreenHeight% x0 y0, %RandomNameOverlay%
hwndGuihamdlewindow := WinExist()
Gui, 99: Cancel




SleepVarRange = 70
Return


	; MouseClick, left
	; Sleep, 1
	; Send, vk54 ; Тут юзается Ultrasonic Pulse Chip
	; Sleep, 80 ;


; *~$X::
; IfWinNotActive, %WindowFocus%
	; Return
; Loop
; {
    ; GetKeyState, StateA, X, P
    ; If StateA = U
        ; break 
	; SendInput {vk1}
	; sleep 1
	; SendInput {%Key_RelicDefault%}
	; Sleep %SleepVarRange%
; }
; Return
; 30 дилюк

; ============================Калибровочка
; *~$PgUp::
; IfWinNotActive, %WindowFocus%
	; Return
; SleepVarRange+=5
; Tooltip % "Delay - " SleepVarRange,round(A_ScreenWidth * .5),0
; Return
; *~$PgDn::
; IfWinNotActive, %WindowFocus%
	; Return
; SleepVarRange-=5
; Tooltip % "Delay - " SleepVarRange,round(A_ScreenWidth * .5),0
; Return

;===============================Оверлей с подсказками
Label_Overlay:
sleep 50
Keywait %key_Overlay%
Overlay1Toggle := !Overlay1Toggle
if (Overlay1Toggle)
	Gui, 99: Show
else
	Gui, 99: Cancel
Return

;======================================Переключение оверлея Left - Right
*~$Left::
Keywait Left
IfWinNotExist, ahk_id %hwndGuihamdlewindow%
Return
if Overlay1Toggle
{
	OverlaySt -= 1
	if (OverlaySt < 1)
	{
		OverlaySt := 1
		Return
	}
	GuiControl, 99: -Redraw, MyPictureVar1
	GuiControl, 99: ,MyPictureVar1, data\Overlay%OverlaySt%.png
	GuiControl, 99: +Redraw, MyPictureVar1
}
Return
*~$Right::
Keywait Right
IfWinNotExist, ahk_id %hwndGuihamdlewindow%
Return
if Overlay1Toggle
{
	OverlaySt += 1
	if (OverlaySt > OverlayStList)
	{
		OverlaySt := OverlayStList
		Return
	}
	GuiControl, 99: -Redraw, MyPictureVar1
	GuiControl, 99: ,MyPictureVar1, data\Overlay%OverlaySt%.png
	GuiControl, 99: +Redraw, MyPictureVar1
}
Return

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
if jopa5
	Goto Label_Goto_Auto_pistols
if jopa6
	Goto Label_Goto_Encore
if jopa7
	Goto Label_Goto_Rover_Havoc
if jopa8
	Goto Label_Goto_Danjin
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
;===============================Auto pistols
LabelNumpad5:
IfWinNotActive, %WindowFocus%
	Return
FuncMacroRestore()
jopa5:=true
ToolTip, Auto pistols, 0, 0
sleep 500
ToolTip
Return
;===============================Encore Spam N1
LabelNumpad6:
IfWinNotActive, %WindowFocus%
	Return
FuncMacroRestore()
jopa6:=true
ToolTip, Encore Spam N1, 0, 0
sleep 500
ToolTip
Return
;===============================RoverHavoc N1
LabelNumpad7:
IfWinNotActive, %WindowFocus%
	Return
FuncMacroRestore()
jopa7:=true
ToolTip, RoverHavoc N1, 0, 0
sleep 500
ToolTip
Return
;===============================Danjin N1
LabelNumpad8:
IfWinNotActive, %WindowFocus%
	Return
FuncMacroRestore()
jopa8:=true
ToolTip, Danjin N1, 0, 0
sleep 500
ToolTip
Return

;===============================Danjin N1
Label_Goto_Danjin:
Loop
{
    GetKeyState, StateA, %key_Macro%, P
    If StateA = U
        break 
	SendInput {%Key_ESkillDefault%}
	sleep 15
	SendInput {%Key_RelicDefault%}
	Sleep 15
}
Return

;===============================RoverHavoc N1
Label_Goto_Rover_Havoc:
Loop
{
    GetKeyState, StateA, %key_Macro%, P
    If StateA = U
        break 
	SendInput {vk1}
	sleep 1
	SendInput {%Key_RelicDefault%}
	Sleep %RoverHavocTime1%
}
Return


;===============================Encore Spam N1
Label_Goto_Encore:
Loop
{
    GetKeyState, StateA, %key_Macro%, P
    If StateA = U
        break 
	SendInput {vk1}
	sleep 1
	SendInput {%Key_RelicDefault%}
	Sleep %EncoreTime1%
}
Return

;===============================Auto pistols
Label_Goto_Auto_pistols:
Loop
{
    GetKeyState, StateA, %key_Macro%, P
    If StateA = U
        break 
	SendInput {vk1 down}
	Sleep 260
	SendInput {vk1 up}
	Sleep 1
}
Return


;===============================Sanhua hold
Label_Goto_Sanhua:
Loop 
{
	GetKeyState, StateA, vk1
	if StateA = U
		SendInput, {vk1 down}
	GetKeyState, StateA, %key_Macro%, P
	if StateA = U
	{
		SendInput, {vk1 up}
		break
	}
	Sleep 300
	GetKeyState, StateA, %key_Macro%, P
	if StateA = U
	{
		SendInput, {vk1 up}
		break
	}
	Sleep 300
	GetKeyState, StateA, %key_Macro%, P
	if StateA = U
	{
		SendInput, {vk1 up}
		break
	}
	Sleep 300
	GetKeyState, StateA, %key_Macro%, P
	if StateA = U
	{
		SendInput, {vk1 up}
		break
	}
	SendInput, {vk1 up}
	Sleep 400
}
Return


/*
900 - 1 тайминг
380 - 2 тайминг
; Sanhua hold. Старый режим через поиск пикселя, медленный и не надежный
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
*/

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
;==========Чися рейдж========================
Label_Goto_Chixia_Rage:
Sleep 1

red := 0xFF0000
dark_red := 0x871B15
delta := 12

WinGet, hWndVar1, ID, %WindowFocus%
VarSetCapacity(rect, 16)
DllCall("GetClientRect", "Ptr", hWndVar1, "Ptr", &rect)
WidthVar1 := NumGet(rect, 8, "Int")
HeightVar1 := NumGet(rect, 12, "Int")
if DetermineAspectRatio(WidthVar1, HeightVar1) = "16:10" {
	xPix := round(A_ScreenWidth * (1323 / 1920))
	yPix := round(A_ScreenHeight * (1101 / 1200))
}
else if DetermineAspectRatio(WidthVar1, HeightVar1) = "16:9" {
	xPix := round(A_ScreenWidth * (1757 / 2560))
	yPix := round(A_ScreenHeight * (1300 / 1440))
}
else {
	xPix := round(A_ScreenWidth * (1757 / 2560))
	yPix := round(A_ScreenHeight * (1300 / 1440))
}

PixelGetColor, GetPix, xPix, yPix, RGB
if (ColorRGBCompare(GetPix, red, delta) || ColorRGBCompare(GetPix, dark_red, delta))
{
	SendInput {vk47}
	Sleep 50
}

Loop
{
    GetKeyState, StateA, %key_Macro%, P
    If StateA = U
	{
		Sleep 80
		PixelGetColor, GetPix, xPix, yPix, RGB
		if (ColorRGBCompare(GetPix, red, delta) || ColorRGBCompare(GetPix, dark_red, delta))
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
Keywait %Key_Map%
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
if ((!FuncCursorVisible() || !WinActive(WindowFocus)) || (GetKeyVK(A_PriorKey) != GetKeyVK(key_SkipNPC)))
{
	; if !FuncCursorVisible()
	; Tooltip 1
	; if !WinActive(WindowFocus)
	; Tooltip 2
	; if (GetKeyVK(A_PriorKey) != GetKeyVK(key_SkipNPC))
	; Tooltip %A_PriorKey%`n%key_SkipNPC%
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
	if FastlytFastMode
	SendInput, {Blind}{WheelDown}
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

ColorRGBCompare(col1, col2, d) {
	col1 := RGBfromColor(col1)
	col2 := RGBfromColor(col2)
	return (Abs(col1.r - col2.r) <= d) && (Abs(col1.g - col2.g) <= d) && (Abs(col1.r - col2.r) <= d)
}

RGBfromColor(color) {
	return {r: (0xFF0000 & color) >> 16, g: (0xFF00 & color) >> 8, b: 0xFF & color}
}

DetermineAspectRatio(width, height) {
    ratio := width / height
    rounded_ratio := Round(ratio, 2) ; Округляем до двух знаков после запятой
    if (Abs(rounded_ratio - (16/9)) < 0.01) {
        aspect_ratio := "16:9"
    } else if (Abs(rounded_ratio - (16/10)) < 0.01) {
        aspect_ratio := "16:10"
    } else if (Abs(rounded_ratio - (4/3)) < 0.01) {
        aspect_ratio := "4:3"
    } else if (Abs(rounded_ratio - (21/9)) < 0.01) {
        aspect_ratio := "21:9"
    } else {
        aspect_ratio := "нестандартное"
    }
    Return %aspect_ratio%
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

;============================Меню, открыть кфг Config
MetkaMenu5:
Run, notepad.exe "%A_ScriptDir%\data\Config.ini"
Return

;============================Меню, выйти
MetkaMenu1:
Exitapp
Return

;============================Меню, импорт настроек
MetkaMenu6:
    FileSelectFile, selectedFile, 3, %A_ScriptDir%, Выберите файл Config.ini, INI (*.ini)
    if selectedFile =
        return
    if (FileExist(selectedFile) && RegExMatch(selectedFile, "Config\.ini$") = 0)
    {
        MsgBox,,, Выбранный файл не является "Config.ini",1
        return
    }
    newFilePath := A_ScriptDir "\data\Config.ini"
    IniRead, sections, %selectedFile%, ,
    Loop, Parse, sections, `n
    {
        section := A_LoopField
        IniRead, keys, %selectedFile%, %section%
        Loop, Parse, keys, `n
        {
            keyArray := StrSplit(A_LoopField, "=")
            if (keyArray.MaxIndex() = 2) ; Проверить, была ли строка успешно разделена
            {
                paramName := keyArray[1]
                paramValue := keyArray[2]
                IniWrite, %paramValue%, %newFilePath%, %section%, %paramName%
            }
            else
            {
                MsgBox,,, Неправильный формат строки в файле: %selectedFile%
                continue
            }
        }
    }
    MsgBox,,, Настройки импортированы`n`nReload!,1
	Reload
Return
;============================Меню, 
MetkaMenu7:
    ; Задаем путь для сохранения файла обновления
    UpdatePath := A_ScriptDir "\update\main.zip"
    
    ; Спрашиваем пользователя, хочет ли он скачать и установить обновление
    MsgBox 0x1, , Обновить принудительно?`n`n*Перед обновлением отключи AV или добавь в исключение
    IfMsgBox OK, {
	
		FileCreateDir, %A_ScriptDir%\update
        ; Загружаем файл обновления
		Url = https://github.com/Kramar1337/WutheringWaves-AHK-flex/archive/main.zip
		UrlDownloadToFile, %Url%, %UpdatePath%
		if ErrorLevel
		{
			MsgBox,,, Ошибка загрузки обновления, 1
			FileRemoveDir, update, 1
			Return
		} 
        ; Проверяем, успешно ли загрузился файл обновления
        if !FileExist(UpdatePath) {
            MsgBox,,, Ошибка: Файл обновления не удалось загрузить, 1
            FileRemoveDir, update, 1
			Return
        }
        ; Распаковываем архив с обновлением
		ArcPath = %A_ScriptDir%\update\main.zip
		OutPath = %A_ScriptDir%\update
		Shell := ComObjCreate("Shell.Application")
		Items := Shell.NameSpace(ArcPath).Items
		Items.Filter(73952, "*")
		Shell.NameSpace(OutPath).CopyHere(Items, 16)
		
		IfNotExist, %A_ScriptDir%\update\WutheringWaves-AHK-flex-main
		{
			FileRemoveDir, update, 1
			MsgBox,,, Error`nПредыдущая обнова была прервана`nФайлы поломались`nПовтори попытку еще раз, 2
			Return
		}
		
		selectedFile := A_ScriptDir "\data\Config.ini"
		newFilePath := A_ScriptDir "\update\WutheringWaves-AHK-flex-main\WWFlex\data\Config.ini"
		IniRead, sections, %selectedFile%, ,
		Loop, Parse, sections, `n
		{
			section := A_LoopField
			IniRead, keys, %selectedFile%, %section%
			Loop, Parse, keys, `n
			{
				keyArray := StrSplit(A_LoopField, "=")
				if (keyArray.MaxIndex() = 2) ; Проверить, была ли строка успешно разделена
				{
					paramName := keyArray[1]
					paramValue := keyArray[2]
					IniWrite, %paramValue%, %newFilePath%, %section%, %paramName%
				}
				else
				{
					MsgBox,,, Неправильный формат строки в файле: %selectedFile%, 1
					continue
				}
			}
		}
		FileMoveDir, %A_ScriptDir%\update\WutheringWaves-AHK-flex-main\WWFlex\data, %A_ScriptDir%, 1
		Loop %A_ScriptDir%\update\WutheringWaves-AHK-flex-main\WWFlex\*.ahk 	;Получить имя AHK файла
		LoopVar1 := A_LoopFileName
		FileDelete, %A_ScriptFullPath% 	;Удалить свой ahk
		SplitPath, A_ScriptFullPath,,,,z1Path
		SplitPath, A_ScriptName,,,z2Path
		FileMove, %A_ScriptDir%\update\WutheringWaves-AHK-flex-main\WWFlex\%A_LoopFileName%, %A_ScriptDir%\%z1Path%.%z2Path%, 1
		FileRemoveDir, update, 1
        MsgBox,,, "Обновление завершено. Перезапустите программу.", 1
        ExitApp
    } Else IfMsgBox Cancel, {
        Return
    }
Return

*~$Esc::
Keywait Esc
if (Overlay1Toggle)
Gui, 99: Cancel
Exit
Return


