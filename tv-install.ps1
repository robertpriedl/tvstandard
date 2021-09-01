# declare some vars
$Dest = "C:\Temp\TV-ID.txt"

# Install Team Viewer
choco install teamviewer -y

Start-Sleep -Seconds 2
net stop teamviewer
Start-Sleep -Seconds 2
reg import .\tv-settings.reg
Start-Sleep -Seconds 2
net start teamviewer
Start-Sleep -Seconds 2
(Get-ItemProperty -Path 'HKLM:\SOFTWARE\WOW6432Node\TeamViewer' -Name ClientID).ClientID > $dest
