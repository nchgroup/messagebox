x86_64-w64-mingw32-gcc -Os -flto -fdata-sections -ffunction-sections -Wl,--gc-sections -s -mwindows -o test.exe main-pe.c
x86_64-w64-mingw32-gcc -shared -O2 -s -ffunction-sections -fdata-sections -fmerge-all-constants -static-libgcc -o test.dll main-dll.c
