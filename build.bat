git clone https://github.com/godotengine/godot.git
powershell Set-ExecutionPolicy RemoteSigned -scope CurrentUser
powershell iwr -useb get.scoop.sh | iex
scoop install gcc python scons yasm make
cd godot
scons platform=windows use_mingw=yes use_lto=yes target=release_debug
