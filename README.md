# Message Box

```c
#include <windows.h>

int main()
{
    MessageBox(NULL, "Test", "Msg test", MB_OK | MB_ICONINFORMATION);
    return 0;
}
```

# Compile

```bash
x86_64-w64-mingw32-gcc -Os -flto -fdata-sections -ffunction-sections -Wl,--gc-sections -s -mwindows -o test.exe main-pe.c
```

# Dependencies

```bash
brew install mingw-w64
```
