# WutheringWaves AHK flex v1.4

AHK скрипт для Wuthering Waves.

[![IMAGE ALT TEXT HERE](https://img.youtube.com/vi/poIhc7r3EX4/0.jpg)](https://www.youtube.com/watch?v=poIhc7r3EX4)

⬆️Кликни на картинку⬆️

👀 Внизу есть подробное описание!!! 

🔞 Кстати скрипт хорошо сочетается с другими [программами ( ͡° ͜ʖ ͡°), только для твинов.﻿﻿](https://www.unknowncheats.me/forum/other-mmorpg-and-strategy/638632-pipsi-ww-wuthering-waves-cheat.html)

🙏 Использование скриптов может привести к блокировке учетной записи, использовать на свой страх и риск.

[__✨Boosty✨__](https://boosty.to/kramar1337)

__🚀Функционал:🚀__

- Скип диалогов
- Фастлут
- Карта
- Оверлей
- Макросы:
  + AutoAttack
  + Chixia rage
  + Shift Spam
  + Sanhua hold
  + Auto pistols
  + High jump
- Трей меню:
  + Редактирование настроек
  + Полуавтоматическое обновление
  + Ручной импорт настроек
  + Создание ярлыка

:musical_keyboard:__Горячие клавиши:__:musical_keyboard:
```
End - Завершить работу
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
```

<details>
<summary> 🛠️ Настройки 🛠️ </summary>

Или искать кфг "WWFlex\data\Config.ini"

Или через меню "Трей меню => Edit Config"

```
; Можно использовать обычные названия клавиш.
; https://www.autohotkey.com/docs/v1/KeyList.htm
; Но рекомендуется использовать виртуальные или скан коды
; Где их брать? Гуглить или запускай WWFlex\data\debug\VirtualCodeKeys.ahk
[Settings]
;================Горячие клавиши
key_RUltiDefault=vk51
key_ESkillDefault=vk45
key_RelicDefault=vk54
key_GAimDefault=vk47
key_Overlay=F1
key_Map=F2
key_Macro=V
key_MacroTwo=CapsLock
key_SkipNPC=Z
key_Fastlyt=F
key_EndExitapp=End
key_PauseSuspend=Del
key_Reload=Home
key_LabelNumpad0=Numpad0
key_LabelNumpad1=Numpad1
key_LabelNumpad2=Numpad2
key_LabelNumpad3=Numpad3
key_LabelNumpad4=Numpad4
key_LabelNumpad5=Numpad5
key_LabelNumpad6=Numpad6
key_LabelNumpad7=Numpad7

key_LabelANumpad0=!Numpad0
key_LabelANumpad1=!Numpad1
key_LabelANumpad2=!Numpad2
key_LabelANumpad3=!Numpad3
key_LabelANumpad4=!Numpad4
key_LabelANumpad5=!Numpad5
key_LabelANumpad6=!Numpad6
key_LabelANumpad7=!Numpad7
;================Вкл-выкл
Checkbox_Overlay=1
Checkbox_Map=1
Checkbox_Macro=1
Checkbox_SkipNPC=1
Checkbox_Fastlyt=1
Checkbox_PauseSuspend=0
Checkbox_Reload=1
;================Прочее
; Автоматически закрывать скрипт через 3 сек если нет окна игры или лаунчера
AutoExitAHK=0
SelectDefaultMacro=2
SelectDefaultMacroX2=2
SkipNPCLockMode=1
BhopDelayIn=100
FastlytFastMode=1
FastlytDelayIn=130
MapRunUrl=https://genshin-impact-map.appsample.com/wuthering-waves-map
WindowFocus=ahk_class UnrealWindow
```

</details>

<details>
<summary>:memo:Как запустить?::memo:</summary>

1. Скачать и установить [Autohotkey.com](https://www.autohotkey.com/download/ahk-install.exe)

  "Custom installation" => "Unicode 64" => All checkboxes => "Install"
![hippo](https://media.giphy.com/media/LerrohpjasApOHH9G1/giphy.gif)

2. Скачать репозиторий (Code > [Download Zip👌](https://github.com/Kramar1337/WutheringWaves-AHK-flex/archive/main.zip))

3. Запустить "WWFlex.ahk"

</details>

<details>
<summary>📃 Подробное описание 📃</summary>

# Трей меню (это там где живут часы)

Edit Config - открывает файл настроек "data\Config.ini"

Import Settings - ручной импорт настроек

Force Update - принудительно перекачивает файлы с гитхаба, распакует и импортирует настройки. Перед использованием отключить антивирус или добавить в исключение.

Create AHK shortcut - Создать ярлык на рабочем столе

# Макросы

Z - Скип диалогов.

Предусмотрено 2 режима. Переключение в "data\Config.ini" параметр "SkipNPCLockMode"

1 - Автоматический режим, нажимаешь "Z" и скрипт скипает пока не пропадет курсор или повторное нажатие "Z".

0 - Ручной режим. Скрипт скипает пока нажата клавиша.

F1 - Оверлей

Left - переключить оверлей

Right - переключить оверлей

F2 - Карта

Первое нажатие открывает карту, если карты нет то запускает браузер по умолчанию и карту прописанную в настройках. Повторное нажатие разворачивает игру. "data\Config.ini" параметр "MapRunUrl" ссылка на карту. Имена окон на которые скрипт будет фокусировать свое внимание прописывать в "data\GroupNameMap.txt"

F - Фастлут.

Зажимаешь "F" и скрипт спамит "F". Есть 2 режима. Переключение в "data\Config.ini" параметр "FastlytFastMode", также регулируется задержка перед срабатыванием "FastlytDelayIn"

1 - Быстрый режим. Добавляет спам колесико вниз. Также отдаляет камеру. Но в этой игре в отличае от GI невозможно собрать лут моментально. Задержка игры \ сервера.

0 - Обычный режим.

V - Macro Key1 (Numpad)

Активирует макрос. Выбранный ниже. В "data\Config.ini" параметр "SelectDefaultMacro" выбирает активный макрос по умолчанию.

Numpad 0 - Off - отключить.

Numpad 1 - AutoAttack - Спам автоатаки.

Numpad 2 - Chixia rage (< 60 Fps)

Numpad 3 - Shift Spam

Numpad 4 - Sanhua hold++ - Отжимает холд тычки в тайминг.

Numpad 5 - Chixia rage++ (> 60 Fps)

Numpad 6 - High jump (Мечники), одиночное нажатие.

Numpad 7 - Auto pistols - Быстрая стрельба на любых пистолетчиках, для драки не годится, только для головоломочек.

Caps Lock - Macro Key2 (Alt + Numpad)

Активирует макрос. Выбранный ниже. В "data\Config.ini" параметр "SelectDefaultMacroX2" выбирает активный макрос по умолчанию.

Alt + Numpad 0 - Off

Alt + Numpad 1 - AutoAttack

Alt + Numpad 2 - Chixia rage (< 60 Fps)

Alt + Numpad 3 - Shift Spam

Alt + Numpad 4 - Sanhua hold++

Alt + Numpad 5 - Chixia rage++ (> 60 Fps)

Alt + Numpad 6 - High jump (Любые мечники)

Alt + Numpad 7 - Auto pistols

End - Завершить работу

Del - Приостановить. По умолчанию отключено. "data\Config.ini" параметр "Checkbox_PauseSuspend"

Home - Перезапуск. По умолчанию отключено."data\Config.ini" параметр "Checkbox_Reload"

</details>

<details>
<summary> 📃 Список изменений 📃 </summary>

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
 - Numpad 6 - EncoreN1 (Описание*)
 - Numpad 7 - RoverHavoc N1 (Описание*)
 - Numpad 8 - Danjin E1 (Описание*)

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
  
</details>
