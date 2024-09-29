/*
====================Wuthering Waves AHK by Kramar1337================


Esc - Прервать
F1 - Оверлей
F2 - Карта
F - Фастлут
Z - Скип диалогов
V - Macro Key1 (Numpad)
Caps Lock - Macro Key2 (Alt + Numpad)
Numpad 0 - Off
Numpad 1 - AutoAttack
Numpad 2 - Chixia rage (< 60 Fps)
Numpad 3 - Shift Spam
Numpad 4 - Sanhua hold++
Numpad 5 - Chixia rage++ (> 60 Fps)
Numpad 6 - High jump (Любые мечники)
Numpad 7 - Auto pistols
Alt + Numpad 0 - Off
Alt + Numpad 1 - AutoAttack
Alt + Numpad 2 - Chixia rage (< 60 Fps)
Alt + Numpad 3 - Shift Spam
Alt + Numpad 4 - Sanhua hold++
Alt + Numpad 5 - Chixia rage++ (> 60 Fps)
Alt + Numpad 6 - High jump (Любые мечники)
Alt + Numpad 7 - Auto pistols




Запланировано:







Изменения: 01.07.2024
 - Автовыход, парамерт "AutoExitAHK=1"
 - Возможность перебиндить "G" прицеливание, парамерт Key_GAimDefault
 - Numpad 2 - Chixia rage (< 60 Fps)
 - Numpad 5 - Chixia rage++ (> 60 Fps)
 - Numpad 7 - Auto pistols
 - Numpad 6 - High jump стал юзабельным, без релика
 - V - Macro Key1 (Numpad)
 - Caps Lock - Macro Key2 (Alt + Numpad)
 - Оверлей

Изменения: 06.06.2024
 - Пофиксили абуз чипа

Изменения: 31.05.2024
 - `(тильт) - Za warudo (Накопить ульту и остановить время)

Изменения: 30.05.2024
 - Numpad 3 - Shift Spam
 - Numpad 9 - High jump


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





Wuthering Waves  
ahk_class UnrealWindow
ahk_exe Client-Win64-Shipping.exe
H:\Wuthering Waves\Wuthering Waves Game\Wuthering Waves.exe
H:\Wuthering Waves\Wuthering Waves Game\Client\Binaries\Win64\Client-Win64-Shipping.exe




https://www.reddit.com/r/WutheringWaves/comments/1dh0iyk/calculation_of_all_possible_asterite_you_can_get/



-malloc=system -USEALLAVAILABLECORES -forcecache -novsync -NoPostProcess -PreloadShaders -ForcePreloadTextures -DiskCache -LoadAllLevels -NotLazyLoad -NoVerifyGC


-notexturestreaming
ломает игру Отключает стриминг текстур, что может уменьшить задержки, связанные с подгрузкой текстур

-malloc=system
системный аллокатор памяти вместо собственного

-USEALLAVAILABLECORES
Указывает движку использовать все доступные процессорные ядра

-maxMem=13000
Устанавливает ограничение на максимальное количество оперативной памяти

+mat_antialias 0
Отключает антиалиасинг (сглаживание) для материалов

-lowqualitymaterials
Уменьшает качество материалов, что может значительно повысить производительность

-novsync
Отключает вертикальную синхронизацию, что может снизить задержку ввода.

-dx12
Задает конкретную версию DirectX

-sm4
Принудительно включает использование шейдерной модели 4 вместо 5

-fps=60
Устанавливает максимальную частоту кадров

-NoThrottle
Отключает регулирование частоты кадров, позволяя игре работать на максимально возможной частоте кадров

-nohmd
Отключает поддержку VR, если она включена, что может повысить производительность.


-NoScreenMessages
Отключает экранные сообщения, что может помочь немного снизить нагрузку на систему

-ForceLOD=1
Принудительно устанавливает уровень детализации (LOD) на самый низкий уровень




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


IniRead, key_MacroTwo, data\Config.ini, Settings, key_MacroTwo
IniRead, key_GAimDefault, data\Config.ini, Settings, key_GAimDefault
IniRead, key_RUltiDefault, data\Config.ini, Settings, key_RUltiDefault
IniRead, key_ZaWarudo, data\Config.ini, Settings, key_ZaWarudo
IniRead, key_ESkillDefault, data\Config.ini, Settings, key_ESkillDefault
IniRead, key_RelicDefault, data\Config.ini, Settings, key_RelicDefault
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
; IniRead, key_LabelNumpad8, data\Config.ini, Settings, key_LabelNumpad8
; IniRead, key_LabelNumpad9, data\Config.ini, Settings, key_LabelNumpad9

IniRead, key_LabelANumpad0, data\Config.ini, Settings, key_LabelANumpad0
IniRead, key_LabelANumpad1, data\Config.ini, Settings, key_LabelANumpad1
IniRead, key_LabelANumpad2, data\Config.ini, Settings, key_LabelANumpad2
IniRead, key_LabelANumpad3, data\Config.ini, Settings, key_LabelANumpad3
IniRead, key_LabelANumpad4, data\Config.ini, Settings, key_LabelANumpad4
IniRead, key_LabelANumpad5, data\Config.ini, Settings, key_LabelANumpad5
IniRead, key_LabelANumpad6, data\Config.ini, Settings, key_LabelANumpad6
IniRead, key_LabelANumpad7, data\Config.ini, Settings, key_LabelANumpad7
; IniRead, key_LabelANumpad8, data\Config.ini, Settings, key_LabelANumpad8
; IniRead, key_LabelANumpad9, data\Config.ini, Settings, key_LabelANumpad9

; IniRead, Checkbox_ZaWarudo, data\Config.ini, Settings, Checkbox_ZaWarudo
IniRead, Checkbox_Overlay, data\Config.ini, Settings, Checkbox_Overlay
IniRead, Checkbox_Map, data\Config.ini, Settings, Checkbox_Map
IniRead, Checkbox_Pautinka, data\Config.ini, Settings, Checkbox_Pautinka
IniRead, Checkbox_Macro, data\Config.ini, Settings, Checkbox_Macro
IniRead, Checkbox_SkipNPC, data\Config.ini, Settings, Checkbox_SkipNPC
IniRead, Checkbox_Fastlyt, data\Config.ini, Settings, Checkbox_Fastlyt
IniRead, Checkbox_PauseSuspend, data\Config.ini, Settings, Checkbox_PauseSuspend
IniRead, Checkbox_Reload, data\Config.ini, Settings, Checkbox_Reload


; IniRead, RoverHavocTime1, data\Config.ini, Settings, RoverHavocTime1
; IniRead, EncoreTime1, data\Config.ini, Settings, EncoreTime1

IniRead, AutoExitAHK, data\Config.ini, Settings, AutoExitAHK
IniRead, SelectDefaultMacro, data\Config.ini, Settings, SelectDefaultMacro
IniRead, SelectDefaultMacroX2, data\Config.ini, Settings, SelectDefaultMacroX2


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

Loop 30
{
	IndexVarL := A_Index - 1
	x2jopa%IndexVarL% := false
}
x2jopa%SelectDefaultMacroX2%:=true

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

xSkip5:=round(A_ScreenWidth * (1700 / 2560))
ySkip5:=round(A_ScreenHeight * (1000 / 1440))



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
	; Hotkey, *~$%key_LabelNumpad8%, LabelNumpad8, on
	; Hotkey, *~$%key_LabelNumpad9%, LabelNumpad9, on

	Hotkey, *~$%key_MacroTwo%, Metkakey_macroTwo, on
	Hotkey, *~$%key_LabelANumpad0%, LabelANumpad0, on
	Hotkey, *~$%key_LabelANumpad1%, LabelANumpad1, on
	Hotkey, *~$%key_LabelANumpad2%, LabelANumpad2, on
	Hotkey, *~$%key_LabelANumpad3%, LabelANumpad3, on
	Hotkey, *~$%key_LabelANumpad4%, LabelANumpad4, on
	Hotkey, *~$%key_LabelANumpad5%, LabelANumpad5, on
	Hotkey, *~$%key_LabelANumpad6%, LabelANumpad6, on
	Hotkey, *~$%key_LabelANumpad7%, LabelANumpad7, on
	; Hotkey, *~$%key_LabelANumpad8%, LabelANumpad8, on
	; Hotkey, *~$%key_LabelANumpad9%, LabelANumpad9, on
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
OverlayStList = 5
Random, RandomVar1, 33, 35
RandomNameOverlay := gen_password(RandomVar1)	
Gui, 99: +AlwaysOnTop +ToolWindow -Caption +LastFound -DPIScale
Gui, 99: Color, 0x000000
Gui, 99: Add, Picture, w%A_ScreenWidth% h%A_ScreenHeight% x0 y0 vMyPictureVar1, data\Overlay1.png
Gui, 99: Show, Hide w%A_ScreenWidth% h%A_ScreenHeight% x0 y0, %RandomNameOverlay%
hwndGuihamdlewindow := WinExist()
Gui, 99: Cancel
if AutoExitAHK
SetTimer, ExitOnGameClose, 3000 	;Автовыход через 3 секунды если нет окна игры или лаунчера



SleepVarRange = 300
Return

;=====================================Если игра закрыта то скрипт сам закроется
ExitOnGameClose() {
    global WindowFocus
    if (!WinExist(WindowFocus)) {
		MsgBox,,, AutoClose, 1
        ExitApp
    }
}



	; SendInput {vk47 Down}
	; Sleep 15
	; SendInput {vk47 up}
	; MouseClick, left, , , , D
	; Sleep 15
	; MouseClick, left, , , , U
	; Sleep 15

	; SendInput {vk47 Down}
	; Sleep 15
	; SendInput {vk47 up}
	; SendInput {vk1 Down}
	; Sleep 15
	; SendInput {vk1 up}
	; Sleep 15

	; SendInput {vk47 Down}
	; Sleep 15
	; SendInput {vk47 up}
	; MouseClick, left, , , , D
	; Sleep 15
	; MouseClick, left, , , , U
	; Sleep 15

; Return
; *~$X::
; IfWinNotActive, %WindowFocus%
	; Return
; sleep 50
; SendInput {vk20}
; sleep 300
; SendInput {vk1 down}
; Sleep 100
; SendInput {vk1 up}
; Sleep 290
; SendInput {vkA0}
; Sleep 100
; SendInput {vk1 down}
; Sleep 100
; SendInput {vk1 up}
; Sleep 290
; SendInput {vk54}
; Sleep 200
; SendInput {vk20}



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
	Goto Label_Goto_Chixia_RagePP
if jopa6
	Goto Label_Goto_High_jump
if jopa7
	Goto Label_Goto_Auto_pistols
Return
;============================Макросы2
Metkakey_macroTwo:
Sleep 1
IfWinNotActive, %WindowFocus%
	Return
if FuncCursorVisible()
	Return
if x2jopa1
	Goto Label_Goto_Auto_Attack
if x2jopa2
	Goto Label_Goto_Chixia_Rage
if x2jopa3
	Goto Label_Goto_Bhop
if x2jopa4
	Goto Label_Goto_Sanhua
if x2jopa5
	Goto Label_Goto_Chixia_RagePP
if x2jopa6
	Goto Label_Goto_High_jump
if x2jopa7
	Goto Label_Goto_Auto_pistols
Return
;===============================Off
LabelNumpad0:
IfWinNotActive, %WindowFocus%
	Return
FuncMacroRestore()
ToolTip,1M Off, 0, 0
sleep 500
ToolTip
Return
;===============================AAtack
LabelNumpad1:
IfWinNotActive, %WindowFocus%
	Return
FuncMacroRestore()
jopa1:=true
ToolTip,1M AAtack, 0, 0
sleep 500
ToolTip
Return
;===============================Чися рейдж
LabelNumpad2:
IfWinNotActive, %WindowFocus%
	Return
FuncMacroRestore()
jopa2:=true
ToolTip,1M Chixia Rage, 0, 0
sleep 500
ToolTip
Return
;===============================Shift Spam
LabelNumpad3:
IfWinNotActive, %WindowFocus%
	Return
FuncMacroRestore()
jopa3:=true
ToolTip,1M Shift Spam, 0, 0
sleep 500
ToolTip
Return
;===============================Sanhua hold
LabelNumpad4:
IfWinNotActive, %WindowFocus%
	Return
FuncMacroRestore()
jopa4:=true
ToolTip,1M Sanhua hold, 0, 0
sleep 500
ToolTip
Return
;===============================Chixia Rage++
LabelNumpad5:
IfWinNotActive, %WindowFocus%
	Return
FuncMacroRestore()
jopa5:=true
ToolTip,1M Chixia Rage++, 0, 0
sleep 500
ToolTip
Return
;===============================High jump
LabelNumpad6:
IfWinNotActive, %WindowFocus%
	Return
FuncMacroRestore()
jopa6:=true
ToolTip,1M High jump, 0, 0
sleep 500
ToolTip
Return
;===============================Auto pistols
LabelNumpad7:
IfWinNotActive, %WindowFocus%
	Return
FuncMacroRestore()
jopa7:=true
ToolTip,1M Auto pistols, 0, 0
sleep 500
ToolTip
Return

;=================================================================x2jopa
;===============================Off
LabelANumpad0:
IfWinNotActive, %WindowFocus%
	Return
FuncMacroRestoreX2()
ToolTip,2M Off, 0, 0
sleep 500
ToolTip
Return
;===============================AAtack
LabelANumpad1:
IfWinNotActive, %WindowFocus%
	Return
FuncMacroRestoreX2()
x2jopa1:=true
ToolTip,2M AAtack, 0, 0
sleep 500
ToolTip
Return
;===============================Чися рейдж
LabelANumpad2:
IfWinNotActive, %WindowFocus%
	Return
FuncMacroRestoreX2()
x2jopa2:=true
ToolTip,2M Chixia Rage, 0, 0
sleep 500
ToolTip
Return
;===============================Shift Spam
LabelANumpad3:
IfWinNotActive, %WindowFocus%
	Return
FuncMacroRestoreX2()
x2jopa3:=true
ToolTip,2M Shift Spam, 0, 0
sleep 500
ToolTip
Return
;===============================Sanhua hold
LabelANumpad4:
IfWinNotActive, %WindowFocus%
	Return
FuncMacroRestoreX2()
x2jopa4:=true
ToolTip,2M Sanhua hold, 0, 0
sleep 500
ToolTip
Return
;===============================Chixia Rage++
LabelANumpad5:
IfWinNotActive, %WindowFocus%
	Return
FuncMacroRestoreX2()
x2jopa5:=true
ToolTip,2M Chixia Rage++, 0, 0
sleep 500
ToolTip
Return
;===============================High jump
LabelANumpad6:
IfWinNotActive, %WindowFocus%
	Return
FuncMacroRestoreX2()
x2jopa6:=true
ToolTip,2M High jump, 0, 0
sleep 500
ToolTip
Return
;===============================Auto pistols
LabelANumpad7:
IfWinNotActive, %WindowFocus%
	Return
FuncMacroRestoreX2()
x2jopa7:=true
ToolTip,2M Auto pistols, 0, 0
sleep 500
ToolTip
Return



;===============================High jump
Label_Goto_High_jump:
sleep 50
SendInput {vk20}
sleep 300
SendInput {vk1 down}
Sleep 100
SendInput {vk1 up}
Sleep 290
SendInput {vkA0}
Sleep 100
SendInput {vk20}
Return

;===============================Auto pistols
Label_Goto_Auto_pistols:
Loop
{
    GetKeyState, State1, %key_Macro%, P
	GetKeyState, State2, %key_MacroTwo%, P
	if (State1 = "U" and State2 = "U")
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
    GetKeyState, State1, %key_Macro%, P
	GetKeyState, State2, %key_MacroTwo%, P
	if (State1 = "U" and State2 = "U")
		SendInput, {vk1 down}
    GetKeyState, State1, %key_Macro%, P
	GetKeyState, State2, %key_MacroTwo%, P
	if (State1 = "U" and State2 = "U")
	{
		SendInput, {vk1 up}
		break
	}
	Sleep 300
    GetKeyState, State1, %key_Macro%, P
	GetKeyState, State2, %key_MacroTwo%, P
	if (State1 = "U" and State2 = "U")
	{
		SendInput, {vk1 up}
		break
	}
	Sleep 300
    GetKeyState, State1, %key_Macro%, P
	GetKeyState, State2, %key_MacroTwo%, P
	if (State1 = "U" and State2 = "U")
	{
		SendInput, {vk1 up}
		break
	}
	Sleep 300
    GetKeyState, State1, %key_Macro%, P
	GetKeyState, State2, %key_MacroTwo%, P
	if (State1 = "U" and State2 = "U")
	{
		SendInput, {vk1 up}
		break
	}
	SendInput, {vk1 up}
	Sleep 400
}
Return

;===============================Shift Spam
Label_Goto_Bhop:
Loop
{
    GetKeyState, State1, %key_Macro%, P
	GetKeyState, State2, %key_MacroTwo%, P
	if (State1 = "U" and State2 = "U")
        break 
	SendInput {vkA0}
	Sleep 230
    GetKeyState, State1, %key_Macro%, P
	GetKeyState, State2, %key_MacroTwo%, P
	if (State1 = "U" and State2 = "U")
        break
	Sleep 300
}
Return

;==========Обычный спам автоатакой
Label_Goto_Auto_Attack:
Loop
{
    GetKeyState, State1, %key_Macro%, P
	GetKeyState, State2, %key_MacroTwo%, P
	if (State1 = "U" and State2 = "U")
        break 
    Sleep 50
	FuncRandomSleep()
    SendInput, {vk1}
}
Return
;==========Чися рейдж========================
Label_Goto_Chixia_Rage:
; MsgBox 1
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
	SendInput {%Key_GAimDefault%}
	Sleep 50
}

Loop
{
    GetKeyState, State1, %key_Macro%, P
	GetKeyState, State2, %key_MacroTwo%, P
	if (State1 = "U" and State2 = "U")
	{
		Sleep 80
		PixelGetColor, GetPix, xPix, yPix, RGB
		if (ColorRGBCompare(GetPix, red, delta) || ColorRGBCompare(GetPix, dark_red, delta))
		{
			SendInput {%Key_GAimDefault%} 	;G vk47
		}
        break
	}
	SendInput {%Key_GAimDefault%} 	;G vk47
	Sleep 35
		SendInput {vk1}
		Sleep 35
	SendInput {%Key_GAimDefault%} 	;G vk47
	Sleep 35
}
Return

;==========Чися рейдж++========================
Label_Goto_Chixia_RagePP:
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
	SendInput {%Key_GAimDefault%}
	Sleep 50
}

Loop
{
    GetKeyState, State1, %key_Macro%, P
	GetKeyState, State2, %key_MacroTwo%, P
	if (State1 = "U" and State2 = "U")
	{
		Sleep 80
		PixelGetColor, GetPix, xPix, yPix, RGB
		if (ColorRGBCompare(GetPix, red, delta) || ColorRGBCompare(GetPix, dark_red, delta))
		{
			SendInput {%Key_GAimDefault%} 	;G vk47
		}
        break
	}
	SendInput {%Key_GAimDefault%}
	Sleep 15
	SendInput {vk1}
	Sleep 15
}
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
		
		FuncRandomSleep()
		Click %xSkip5% %ySkip5%
	}
}
Return
;============================SetTimer Скип диалогов
TimerNpcSkip:
Sleep 100
if ((!FuncCursorVisible() || !WinActive(WindowFocus)) || (GetKeyVK(A_PriorKey) != GetKeyVK(key_SkipNPC)))
{
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

FuncRandomSleep()
Click %xSkip5% %ySkip5%
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
;==========================================Функция сброса x2
FuncMacroRestoreX2()
{
Global
	Loop 26
	{
		IndexVarL := A_Index - 1
		x2jopa%IndexVarL% := false
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
;============================Меню, Обновление
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


