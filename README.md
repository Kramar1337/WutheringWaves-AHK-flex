# WutheringWaves AHK flex v1.1

AHK скрипт для Wuthering Waves.

[![IMAGE ALT TEXT HERE](https://img.youtube.com/vi/poIhc7r3EX4/0.jpg)](https://www.youtube.com/watch?v=poIhc7r3EX4)

⬆️Кликни на картинку⬆️

🙏 Использование скриптов может привести к блокировке учетной записи, использовать на свой страх и риск.

🙏 Внизу есть подробное описание!!!

[__✨Boosty✨__](https://boosty.to/kramar1337)
[__✨SteamTrade✨__](https://steamcommunity.com/tradeoffer/new/?partner=176456946&token=QbYR9jmE)

__🚀Функционал:🚀__

- Скип диалогов
- Фастлут
- Спам паутинки
- Карта
- Макросы:
  + AutoAttack
  + Chixia rage
  + Bhop
  + Sanhua hold
  + Auto pistols
- Трей меню:
  + Редактирование настроек
  + Полуавтоматическое обновление
  + Ручной импорт настроек
  + Создание ярлыка

:musical_keyboard:__Горячие клавиши:__:musical_keyboard:
```
End - Завершить работу
F2 - Карта
T - Спам паутинки
F - Фастлут
Z - Скип диалогов
V - Macro Key
Numpad 0 - Off
Numpad 1 - AutoAttack
Numpad 2 - Chixia rage
Numpad 3 - Bhop
Numpad 4 - Sanhua hold++
Numpad 5 - Auto pistols
```

<details>
<summary> 🛠️ Настройки 🛠️ </summary>

Или искать кфг "WutheringWaves-AHK-flex\data\Config.ini"

Или через меню "Трей меню => Edit Config"

```
;================Горячие клавиши
key_Map=F2
key_Pautinka=T
key_Macro=V
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
;================Вкл-выкл
Checkbox_Map=1
Checkbox_Pautinka=1
Checkbox_Macro=1
Checkbox_SkipNPC=1
Checkbox_Fastlyt=1
Checkbox_PauseSuspend=0
Checkbox_Reload=1
;================Прочее
SelectDefaultMacro=2
SkipNPCLockMode=1
PautinkaDelayIn=180
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

1 - Автоматический режим, нажимаешь "Z" и скрипт скипает пока не пропадет курсор или повторное нажатие "Z". (В некоторых диалогах работает не стабильно, или не работает вовсе, бывает редко, как разберусь пофикшу)

0 - Ручной режим. Скрипт скипает пока нажата клавиша.

F2 - Карта

Первое нажатие открывает карту, если карты нет то запускает браузер по умолчанию и карту прописанную в настройках. Повторное нажатие разворачивает игру. "data\Config.ini" параметр "MapRunUrl" ссылка на карту. Имена окон на которые скрипт будет фокусировать свое внимание прописывать в "data\GroupNameMap.txt"

F - Фастлут.

Зажимаешь "F" и скрипт спамит "F". Есть 2 режима. Переключение в "data\Config.ini" параметр "FastlytFastMode", также регулируется задержка перед срабатыванием "FastlytDelayIn"

1 - Быстрый режим. Добавляет спам колесико вниз. Также отдаляет камеру. Но в этой игре в отличае от GI невозможно собрать лут моментально. Задержка игры \ сервера.

0 - Обычный режим.

T - Спам паутинки. Спамит кнопку "T". В "data\Config.ini" параметр "PautinkaDelayIn" регулирует задержку срабатывания.

V - Macro Key.

Активирует макрос. Выбранный ниже. В "data\Config.ini" параметр "SelectDefaultMacro" выбирает активный макрос по умолчанию.

Numpad 0 - Off - отключить.

Numpad 1 - AutoAttack - Спам автоатаки.

Numpad 2 - Chixia rage - Абузит анимацию прицеливания, Чися стреляет очень быстро.

Numpad 3 - Bhop - Спамит пробел, но в этой игре он бесполезен.

Numpad 4 - Sanhua hold++ - Отжимает холд тычки в тайминг.

Numpad 5 - Auto pistols - Быстрая стрельба на любых пистолетчиках, для драки не годится, имеет смысл для микроголоволомочек.

End - Завершить работу

Del - Приостановить. По умолчанию отключено. "data\Config.ini" параметр "Checkbox_PauseSuspend"

Home - Перезапуск. По умолчанию отключено."data\Config.ini" параметр "Checkbox_Reload"

</details>

<details>
<summary> 📃 Список изменений 📃 </summary>

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
