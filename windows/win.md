# **Действия после установки windows**

## _(Изящная настройка)_

```text
mkdir C:\BATCH C:\TEMP
Переменные среды
path C:\BATCH
TMP, TEMP > C:\TEMP
```

## Отключение служб

> Sell hardware detection (определение оборудования оболочки)

```batch
powercfg -h off
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
wmic.exe /Namespace:\\root\default Path SystemRestore Call Disable ::отключение востановление системы
```

> [!NOTE]
> После выполнения второй команды, разблокируется пункт "Максимальная производителоть" в парамеирах электропитания.

## Отключение экрана блокировки

```text
gpedit.msc
«Конфигурация компьютера» -> «Административные шаблоны» —>
«Панель управления» —> «Персонализация».
«Запрет отображения экрана блокировки» ВКЛ
```

## Отключение отображения последнего пользователя на экране блокирвки

```text
gpedit.msc
Конфигурация компьютера -> Конфигурация Windows ->
Параметры безопасности -> Локальные политики ->
Параметры безопасности
Включите политику “Интерактивный вход в систему:
Не отображать учетные данные последнего пользователя”

(Computer Configuration -> Windows Settings -> Security Settings -> Local Policies -> Security Options).
(Interactive logon: Do not display last user name).
```

## Удалене UWP программ в Home и Pro редакциях

```powershell
$UWPApps = @(
"Microsoft.Microsoft3DViewer"
"Microsoft.MicrosoftOfficeHub"
"Microsoft.MicrosoftSolitaireCollection"
"Microsoft.MicrosoftStickyNotes"
"Microsoft.MixedReality.Portal"
"Microsoft.MSPaint"
"Microsoft.Office.OneNote"
"Microsoft.People"
"Microsoft.ScreenSketch"
"Microsoft.Wallet"
"Microsoft.SkypeApp"
"microsoft.windowscommunicationsapps"
"Microsoft.WindowsFeedbackHub"
"Microsoft.WindowsMaps"
"Microsoft.WindowsSoundRecorder"
"Microsoft.Xbox.TCUI"
"Microsoft.XboxApp"
"Microsoft.XboxGameOverlay"
"Microsoft.XboxGamingOverlay"
"Microsoft.XboxIdentityProvider"
"Microsoft.XboxSpeechToTextOverlay"
"Microsoft.YourPhone"
"Microsoft.ZuneMusic"
"Microsoft.ZuneVideo"
"Microsoft.Cortana"
"Microsoft.549981C3F5F10"
"Microsoft.GetHelp"
"photos"
)
foreach ($UWPApp in $UWPApps) {
Get-AppxPackage -Name $UWPApp -AllUsers | Remove-AppxPackage
Get-AppXProvisionedPackage -Online | Where-Object DisplayName -eq $UWPApp | Remove-AppxProvisionedPackage -Online
}
Get-AppxPackage -allusers *Microsoft.549981C3F5F10* | Remove-AppxPackage
get-appxpackage -allusers *photos* | remove-appxpackage
Get-AppxPackage *Microsoft.GetHelp* -AllUsers | Remove-AppxPackage
```

## установка scoop

```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex
```

## Winodws 11

### Классическое контекстное меню

```powershell
reg.exe add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f
```

### Уменьшени панели задач

```powershell
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarSi" /t REG_DWORD /f
```

> [!NOTE]
> Не работает в версии 22h2. Использовать программу [StartAllBack](https://www.startallback.com/download.php)

## Беспроводной дисплей

## двойное расширение файла (альтеративный поток)

```batch
echo real pass - realexanple;-) secretPass.txt:realexample
more <secretPass.txt:realexample
```

## Перезагрузка в uefi/bios

```batch
shutdown.exe /r /fw /f /t 0
```

> [!NOTE]
> Для удобства можно создать [ярлык](/windows/uefi-bios.lnk)

## God mode

```text
создать папку с названием
God Mode.{ED7BA470-8E54-465E-825C-99712043E01C}
```

## Отключение турбобуст на Ryzen 4-5th поколениях процессоров

```text
Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\be337238-0d82-4146-a960-4f3749d470c7\
atributes
```

> Задать значение 2, после этого в настройках электропитания

## Распаковка драйверов из exe файла

```batch
file.exe -extractdrivers folder
```