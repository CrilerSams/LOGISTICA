#!/usr/bin/env sh
set -e
gradle assembleDebug
cp app/build/outputs/apk/debug/app-debug.apk ../Logistica_L2_Android.apk
echo "APK creado: ../Logistica_L2_Android.apk"
