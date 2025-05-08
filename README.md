# Message Box

## PE file

```c
#include <windows.h>

int main(){
    MessageBox(NULL, "Msg test", "Test", MB_OK | MB_ICONINFORMATION);
    return 0;
}
```

### Compile

```bash
x86_64-w64-mingw32-gcc -Os -flto -fdata-sections -ffunction-sections -Wl,--gc-sections -s -mwindows -o test.exe main-pe.c
```

## DLL file

```c
#include <windows.h>

extern __declspec(dllexport) void ShowMessage(){
    MessageBox(NULL, "Msg test", "Test", MB_OK | MB_ICONINFORMATION);
}

BOOL APIENTRY DllMain(HMODULE hModule, DWORD ul_reason_for_call, LPVOID lpReserved){
    switch (ul_reason_for_call) {
        case DLL_PROCESS_ATTACH:
        case DLL_THREAD_ATTACH:
        case DLL_THREAD_DETACH:
        case DLL_PROCESS_DETACH:
            break;
    }
    return TRUE;
}
```

### Compile

```bash
x86_64-w64-mingw32-gcc -shared -O2 -s -ffunction-sections -fdata-sections -fmerge-all-constants -static-libgcc -o test.dll main-dll.c
```

### Run

```cmd
rundll32 test.dll,ShowMessage
```

# Dependencies

```bash
brew install mingw-w64
```
