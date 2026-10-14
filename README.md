# TrendzBath Android app

WebView wrapper for https://trendzbath.netlify.app (navy logo splash screen, pull-to-refresh, offline page).

## 1. Quick test APK (no signing needed)
**GitHub:** upload this folder (keep `.github`), open Actions > "Build APK" > Run workflow, download `TrendzBath-apk`.
**Android Studio:** File > Open, then Build > Build APK(s). Output: `app/build/outputs/apk/debug/app-debug.apk`.

## 2. Signed release (for Play Store / permanent installs)
1. Run `./create-keystore.sh` once on your computer. Back up the `.keystore` file and your passwords.
2. In GitHub: Settings > Secrets and variables > Actions, add 4 secrets:
   - `KEYSTORE_BASE64`  (printed by the script)
   - `KEYSTORE_PASSWORD`, `KEY_ALIAS` (trendzbath), `KEY_PASSWORD`
3. Actions > "Build signed release" > Run workflow. Download `TrendzBath-release`:
   - `.apk` to install directly
   - `.aab` to upload to Google Play
4. For updates, raise `versionCode` (and `versionName`) in `app/build.gradle`.

Local signed build: create `keystore.properties` next to `settings.gradle` with
`storeFile`, `storePassword`, `keyAlias`, `keyPassword`, then run `gradle assembleRelease`.

## Change the website URL
Edit `HOME_URL` / `HOME_HOST` in `MainActivity.kt` and the Retry link in `assets/offline.html`.
