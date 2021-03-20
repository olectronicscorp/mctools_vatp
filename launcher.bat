@echo off
@title Minecraft Launcher Modded
:menu
cls
echo Version:
echo 1) 1.0
echo 2) Your minecraft.jar (like forge or something)
echo 3) Alpha 1.2.6
set /p ver=
echo Username:
set /p user=
:loadmc
cd %appdata%\.minecraft\bin
if %ver% == 1 goto one
if %ver% == 2 goto two
if %ver% == 3 goto three
:one
java -Xms512m -Xmx1g -Djava.library.path=natives/ -cp "1.0.jar;lwjgl.jar;lwjgl_util.jar" net.minecraft.client.Minecraft %user%
goto menu
:two 
java -Xms512m -Xmx1g -Djava.library.path=natives/ -cp "minecraft.jar;lwjgl.jar;lwjgl_util.jar" net.minecraft.client.Minecraft %user%
goto menu
:three
java -Xms512m -Xmx1g -Djava.library.path=natives/ -cp "a1.2.6.jar;lwjgl.jar;lwjgl_util.jar" net.minecraft.client.Minecraft %user%
goto menu
