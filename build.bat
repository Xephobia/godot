git clone https://github.com/godotengine/godot.git
powershell Set-ExecutionPolicy RemoteSigned -scope CurrentUser
powershell Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
refreshenv
scoop install gcc python scons yasm make
cd godot
refreshenv
scons platform=windows use_mingw=yes use_lto=yes target=release_debug
