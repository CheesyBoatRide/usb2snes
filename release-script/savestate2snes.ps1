. ./../release-script/common.ps1

$github_base_url = "https://github.com/Skarsnik/Savestate2Snes/releases/download/"
$release = "v0.5.5"
$url = "$github_base_url/v$release/Savestate2snes-$release.7z"

[Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls"
Invoke-WebRequest -Uri $url -OutFile "Savestate2Snes.7z"

cd .\QUsb2Snes\apps\
iex @'
& "$7z" x ..\..\Savestate2Snes.7z
'@
cd ..\..\