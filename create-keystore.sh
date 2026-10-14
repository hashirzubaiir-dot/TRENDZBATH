#!/bin/sh
# Run ONCE on your computer (needs Java). Keep the .keystore file and passwords safe:
# if you lose them you can never update the app on the Play Store.
keytool -genkeypair -v -keystore trendzbath-release.keystore -alias trendzbath \
  -keyalg RSA -keysize 2048 -validity 10000
echo
echo "Base64 for GitHub secret KEYSTORE_BASE64:"
base64 -w0 trendzbath-release.keystore 2>/dev/null || base64 trendzbath-release.keystore
