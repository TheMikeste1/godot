@REM https://docs.godotengine.org/en/stable/contributing/development/compiling/compiling_with_dotnet.html#example-windows

scons precision=double platform=windows production=yes module_mono_enabled=yes

scons precision=double platform=windows target=template_debug   module_mono_enabled=yes
scons precision=double platform=windows target=template_release module_mono_enabled=yes

bin/godot.windows.editor.double.x86_64.mono --headless --generate-mono-glue modules/mono/glue

./modules/mono/build_scripts/build_assemblies.py --precision=double --godot-output-dir=./bin --godot-platform=windows 
