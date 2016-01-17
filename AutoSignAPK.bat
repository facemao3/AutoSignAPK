@ECHO OFF
rem Copyrighted to Niels G
set /P KEYSTORE=Type Enter your keystore name. E.g. MyApp.keystore: %=%
set /P ALIAS=Type Enter your keystore alias name. E.g. MyCompany: %=%
set /P PASSWORD=Type Enter your keystore password. E.g. MyPassword: %=%
echo Are you sure that you have filled in the right information? This program will self-destruct after saving it! Made by Niels
pause
echo jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore %KEYSTORE% android-release-unsigned.apk %ALIAS% -storepass %PASSWORD% >> sign.bat 
echo zipalign -v 4 android-release-unsigned.apk SignedAPK.apk >> sign.bat
(goto) 2>nul & del "%~f0"
