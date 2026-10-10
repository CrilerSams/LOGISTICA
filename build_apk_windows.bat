@echo off
setlocal
where gradle >nul 2>nul
if errorlevel 1 (
  echo No se encontro Gradle en PATH. Abre esta carpeta con Android Studio y usa Build ^> Build APK(s).
  pause
  exit /b 1
)
gradle assembleDebug
if exist app\build\outputs\apk\debug\app-debug.apk (
  copy /Y app\build\outputs\apk\debug\app-debug.apk ..\Logistica_L2_Android.apk
  echo APK creado: ..\Logistica_L2_Android.apk
)
pause
