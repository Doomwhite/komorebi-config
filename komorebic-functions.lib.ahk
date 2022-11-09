komorebic_start() 
{
    Run, komorebic.exe start --await-configuration, , Hide
    yasb_start()

    ; Includes the applications configurations
    ; https://github.com/LGUG2Z/komorebi/#generating-common-application-specific-configurations
    #Include %A_ScriptDir%\komorebi.generated.ahk

    ; Removes the container paddings from monitor 0
    Run, komorebic.exe container-padding 0 0 0, , Hide
    Run, komorebic.exe container-padding 0 1 0, , Hide
    Run, komorebic.exe container-padding 0 2 0, , Hide
    Run, komorebic.exe container-padding 0 3 0, , Hide
    Run, komorebic.exe container-padding 0 4 0, , Hide

    ; Removes the container paddings from monitor 1
    Run, komorebic.exe container-padding 1 0 0, , Hide
    Run, komorebic.exe container-padding 1 1 0, , Hide
    Run, komorebic.exe container-padding 1 2 0, , Hide
    Run, komorebic.exe container-padding 1 3 0, , Hide
    Run, komorebic.exe container-padding 1 4 0, , Hide

    ; Removes the workspace paddings from monitor 1
    Run, komorebic.exe workspace-padding 0 0 0, , Hide
    Run, komorebic.exe workspace-padding 0 1 0, , Hide
    Run, komorebic.exe workspace-padding 0 2 0, , Hide
    Run, komorebic.exe workspace-padding 0 3 0, , Hide
    Run, komorebic.exe workspace-padding 0 4 0, , Hide

    ; Removes the workspace paddings from monitor 1
    Run, komorebic.exe workspace-padding 1 0 0, , Hide
    Run, komorebic.exe workspace-padding 1 1 0, , Hide
    Run, komorebic.exe workspace-padding 1 2 0, , Hide
    Run, komorebic.exe workspace-padding 1 3 0, , Hide
    Run, komorebic.exe workspace-padding 1 4 0, , Hide

    ; window hiding behavior
    ;Run, komorebic.exe window-hiding-behaviour hide, , Hide

    ; Enable hot reloading of changes to this file
    Run, komorebic.exe watch-configuration enable, , Hide

    ; Open Yasb
    ; Run, python C:\Users\adinelson.bruhmuller.MOVTECH\.yasb\app\src\main.py, , Hide

    ; Configure the invisible border dimensions
    Run, komorebic.exe invisible-borders 0 0 0 0, , Hide
    Run, komorebic.exe invisible-borders 1 0 0 0, , Hide

    ; Visual border drawn around the focused window
    Run, komorebic.exe active-window-border enable, , Hide
    Run, komorebic.exe active-window-border-colour 66 165 245 single, , Hide

    ; Enable focus follows mouse
    Run, komorebic.exe focus-follows-mouse disable, , Hide
    Run, komorebic.exe mouse-follows-focus enable, , Hide

    ; Ensure there are workspaces created on the monitors
    Run, komorebic.exe ensure-workspaces 0 5, , Hide
    Run, komorebic.exe ensure-workspaces 1 5, , Hide

    ; Give the workspaces some optional names
    Run, komorebic.exe workspace-name 1 0 chrome, , Hide
    Run, komorebic.exe workspace-name 1 1 app, , Hide
    Run, komorebic.exe workspace-name 1 2 api, , Hide
    ; Run, komorebic.exe workspace-name 1 3 matrix, , Hide
    ; Run, komorebic.exe workspace-name 1 4 floaty, , Hide

    ; Set the padding of the different workspaces
    ; Run, komorebic.exe workspace-padding 0 1 30, , Hide
    ; Run, komorebic.exe container-padding 0 1 30, , Hide
    ; Run, komorebic.exe workspace-padding 0 2 30, , Hide
    ; Run, komorebic.exe container-padding 0 2 30, , Hide
    ; Run, komorebic.exe workspace-padding 0 3 30, , Hide
    ; Run, komorebic.exe container-padding 0 3 30, , Hide

    ; Set the layouts of different workspaces
    ; Run, komorebic.exe workspace-layout 0 1 columns, , Hide

    ; Set the floaty layout to not tile any windows
    ; Run, komorebic.exe workspace-tiling 0 4 disable, , Hide

    ; Organizes apps on the their workspace
    Run, komorebic.exe workspace-rule exe "chrome.exe" 1 0, , Hide
    Run, komorebic.exe workspace-rule exe Code.exe 1 1, , Hide
    Run, komorebic.exe workspace-rule exe devenv.exe 1 2, , Hide
    ; Run, komorebic.exe workspace-rule exe Discord.exe 1 2, , Hide
    ; Run, komorebic.exe workspace-rule exe Spotify.exe 1 2, , Hide

    ; Identify applications that have overflowing borders
    Run, komorebic.exe identify-border-overflow exe Discord.exe, , Hide

    Run, komorebic.exe complete-configuration, , Hide
}

komorebic_stop()
{
    Run, komorebic.exe stop, , Hide
    Run, taskkill.exe /f /im komorebic.exe, , Hide
    yasb_stop()
    return
}

yasb_start()
{
    Run, pythonw C:\Users\adinelson.bruhmuller.MOVTECH\.yasb\app\src\main.py, , Hide
    Run, komorebic.exe work-area-offset 0 28 0 28, , Hide
}

yasb_stop()
{
    Run, taskkill.exe /f /im pythonw.exe, , Hide
    Run, komorebic.exe work-area-offset 0 0 0 0, , Hide
}