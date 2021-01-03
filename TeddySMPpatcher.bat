powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/Rionte/resource-packs/archive/master.zip', 'resource-packs-main.zip')"
powershell -Command "Invoke-WebRequest https://github.com/Rionte/resource-packs/archive/master.zip -OutFile resource-packs-main.zip"

powershell -command "Expand-Archive -Force '%~dp0resource-packs-main.zip' '%~dp0'"

del "resource-packs-main.zip"

%SystemRoot%\explorer.exe "C:\Users\remi\AppData\Roaming\.minecraft\resourcepacks\resource-packs-master"