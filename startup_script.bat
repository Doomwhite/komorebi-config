@echo off
title startup script
nircmd win hide title "startup script"
komorebic start

:: "komorebic start" currently is not waiting for everything be ready before return, so the
:: following lines prevent running commands bellow on startup before komorebi is ready to accept them
:wait_komorebi
komorebic state >nul 2>&1 || goto wait_komorebi

...
<your config, rules, etc>
e.g:
komorebic watch-configuration enable
komorebic invisible-borders 2 2 2 2
komorebic active-window-border enable
komorebic active-window-border-colour 100 0 255 --window-kind single
komorebic container-padding 1 0 0
komorebic workspace padding 1 0 0
komorebic container-padding 0 0 0
komorebic workspace padding 0 0 0
...

:: optional, if you want to keep this script running for some reason
:: e.g.: I use this to auto restart my startup script if komorebi exit
nircmd waitprocess komorebi.exe