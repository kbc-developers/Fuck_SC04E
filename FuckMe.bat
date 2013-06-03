@echo off
setlocal 
cd /d %~dp0
SET PATH=%~dp0bin;%PATH%
cls
echo ====================================================
echo  Fuck for SC04E  By KBC
echo      Thank you for virifi,fi01_IS01
echo このツールは、
echo  fi01_IS01さんのrun_root_shell
echo  virifiさんのsu_server
echo を利用しています。(KBCメンバはただ遊んでただけ）
echo.
echo 本ツールによるRoot化による不具合などについては
echo 各Tool作者に質問してはいけない。KBCメンバに質問したらヌッ（ry
echo.
echo つーか、こんな端末買うならHTC ONEとか買えよ。
echo 上記を理解し自己責任にて実行できる方のみFuckしろ。
echo.
echo ここで中止する場合、DOS窓を閉じるか、
echo Ctrl+Cを押した後、Yを押して中止してください
echo At Your Own Risk！Fuck!
echo ====================================================
pause

echo --------------------------------------
echo Fucking Device!
echo --------------------------------------
adb wait-for-device

echo --------------------------------------
echo Push on The Bitch!
echo --------------------------------------
echo busybox
	adb push sed/busybox /data/local/tmp/
echo install_backdoor
	adb push sed/install_backdoor /data/local/tmp/
echo run_autoexec
	adb push sed/run_autoexec /data/local/tmp/
echo run_root_shell
	adb push sed/run_root_shell /data/local/tmp/
echo sec_unlock_sc04e
	adb push sed/sec_unlock_sc04e /data/local/tmp/
echo su_server
	adb push sed/su_server /data/local/tmp/
echo superuser_su
	adb push sed/superuser_su /data/local/tmp/
echo toolbox
	adb push sed/toolbox /data/local/tmp/
echo autoexec
	adb push sed/autoexec /data/local/tmp/
echo get_root.sh
	adb push sed/get_root.sh /data/local/tmp/
echo install-recovery.sh
	adb push sed/install-recovery.sh /data/local/tmp/
echo su_client
	adb push sed/su_client /data/local/tmp/
echo busybox_mount
	adb push sed/busybox_mount /data/local/tmp/
echo busybox_file
	adb push sed/busybox_file /data/local/tmp/
echo setuid_wrapper
	adb push sed/setuid_wrapper /data/local/tmp/
echo SGS3RootingApp.apk
	adb push sed/SGS3RootingApp.apk /data/local/tmp/
echo superuserinstaller.apk
	adb push sed/superuserinstaller.apk /data/local/tmp/

adb shell chmod 775 /data/local/tmp/autoexec
adb shell chmod 775 /data/local/tmp/install-recovery.sh
adb shell chmod 775 /data/local/tmp/get_root.sh

adb shell chmod 775 /data/local/tmp/busybox
adb shell chmod 777 /data/local/tmp/install_backdoor
adb shell chmod 777 /data/local/tmp/run_autoexec
adb shell chmod 777 /data/local/tmp/sec_unlock_sc04e
adb shell chmod 777 /data/local/tmp/run_root_shell

echo --------------------------------------
echo Temp Fucking!
echo --------------------------------------
adb shell /data/local/tmp/get_root.sh /data/local/tmp/

echo --------------------------------------
echo Fuck! Fuck! Fuuuck Yeah! 
echo --------------------------------------
pause
adb shell /data/local/tmp/run_autoexec
echo --------------------------------------
echo 全て無かったことにしちゃう。
echo --------------------------------------
adb shell rm /data/local/tmp/busybox
adb shell rm /data/local/tmp/install_backdoor
adb shell rm /data/local/tmp/run_autoexec
adb shell rm /data/local/tmp/run_root_shell
adb shell rm /data/local/tmp/sec_unlock_sc04e
adb shell rm /data/local/tmp/su_server
adb shell rm /data/local/tmp/superuser_su
adb shell rm /data/local/tmp/toolbox

adb shell rm /data/local/tmp/autoexec
adb shell rm /data/local/tmp/get_root.sh
adb shell rm /data/local/tmp/install-recovery.sh
adb shell rm /data/local/tmp/su_client

adb shell rm /data/local/tmp/busybox_mount
adb shell rm /data/local/tmp/busybox_file
adb shell rm /data/local/tmp/setuid_wrapper
adb shell rm /data/local/tmp/SGS3RootingApp.apk
adb shell rm /data/local/tmp/superuserinstaller.apk

:: for safty!!!
adb shell sync
adb shell sync
adb shell sync

endlocal 
echo --------------------------------------
echo 正直すまんかった。
echo --------------------------------------
pause

adb reboot
