#author: Michael Hardy <98.michael.hardy@gmail.com>
#date: 01/09/2015
#
#This program turns off Windows 10 telemetry

OutFile "NoTelemetry.exe"

Section

WriteRegDWORD HKLM "SYSTEM\CurrentControlSet\Services\DiagTrack" "start" 0x00000004
WriteRegDWORD HKLM "Microsoft\Windows\CurrentVersion\AdvertisingInfo" "Enabled" 0x00000000
WriteRegDWORD HKLM "SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\config" "AutoConnectAllowedOEM" 0x00000000

MessageBox MB_YESNO|MB_ICONQUESTION "System needs to be rebooted to apply these changes.  Reboot now?" IDNO +2
  Reboot

SectionEnd