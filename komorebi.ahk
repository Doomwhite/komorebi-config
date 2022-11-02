#SingleInstance Force

;#	Win (Windows logo key).
;!	Alt
;^	Ctrl
;+	Shift
;&	An ampersand may be used between any two keys or mouse buttons to combine them into a custom hotkey. See below for details.

; You can generate a fresh version of this file with "komorebic ahk-library"
#Include %A_ScriptDir%\komorebic.lib.ahk

; komorebic_start()

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
    ; Run, python C:\Users\Cliente\.yasb\app\src\main.py, , Hide

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

yasb_start()
{
    Run, pythonw C:\Users\Cliente\.yasb\app\src\main.py, , Hide
    ; Run, komorebic.exe work-area-offset 0 28 0 28, , Hide
}


; Quit komorebi & yasb when quitting autohotkey
; OnExit("komorebic_stop")

komorebic_stop()
{
    Run, komorebic.exe stop, , Hide
    yasb_stop()
    return
}

yasb_stop()
{
    Run, taskkill.exe /f /im pythonw.exe, , Hide
    Run, komorebic.exe work-area-offset 0 0 0 0, , Hide
}



; KEYBINDINGS



; Start komorebi
!^s::
komorebic_start()
return

; Exit komorebi
!^q::
komorebic_stop()
return

; Start yasb
!^y::
yasb_start()
return

; Quicksave/load

!z::
Run, komorebic.exe quick-save, , Hide
return

!x::
Run, komorebic.exe quick-load, , Hide
return

; Change the focused window, Win + Vim direction keys

!j::
Run, komorebic.exe cycle-focus next, , Hide
return

!k::
Run, komorebic.exe cycle-focus previous, , Hide
return

; Move the focused window in a given direction, Win + Shift + Vim direction keys

!^j::
Run, komorebic.exe cycle-move next, , Hide
return

!^k::
Run, komorebic.exe cycle-move previous, , Hide
return

; Resize windows

!^l::
Run, komorebic.exe resize-axis horizontal increase, , Hide
return

!^h::
Run, komorebic.exe resize-axis horizontal decrease, , Hide
return

; Stack the focused window in a given direction, Win + Shift + direction keys
!^Left::
Run, komorebic.exe stack left, , Hide
return

!^Down::
Run, komorebic.exe stack down, , Hide
return

!^Up::
Run, komorebic.exe stack up, , Hide
return

!^Right::
Run, komorebic.exe stack right, , Hide
return

!}::
Run, komorebic.exe cycle-stack next, , Hide
return

!{::
Run, komorebic.exe cycle-stack previous, , Hide
return

; Unstack the focused window, Win + Shift + D
!^d::
Run, komorebic.exe unstack, , Hide
return

; Promote the focused window to the top of the tree, Win + Shift + Enter
!^Enter::
Run, komorebic.exe promote, , Hide
return

; Switch to an equal-width, max-height column layout on the main workspace, Win + C
!c::
Run, komorebic.exe workspace-layout 0 0 columns, , Hide
return

; Switch to the default bsp tiling layout on the main workspace, Win + Shift + T
!t::
Run, komorebic.exe workspace-layout 0 0 bsp, , Hide
return

; Toggle the Monocle layout for the focused window, Win + Shift + F
!f::
Run, komorebic.exe toggle-monocle, , Hide
return

; Toggle native maximize for the focused window, Win + Shift + =
!=::
Run, komorebic.exe toggle-maximize, , Hide
return

; Flip horizontally, Win + X
!n::
Run, komorebic.exe flip-layout horizontal, , Hide
return

; Flip vertically, Win + Y
!m::
Run, komorebic.exe flip-layout vertical, , Hide
return

; Force a retile if things get janky, Win + R
; !r::
; Run, komorebic.exe retile, , Hide
; return

; Float the focused window, Win + F
!^f::
Run, komorebic.exe toggle-float, , Hide
return

; Reload ~/komorebi.ahk, Win + O
!o::
Run, komorebic.exe reload-configuration, , Hide
return

; Pause responding to any window events or komorebic commands, Win + P
!p::
Run, komorebic.exe toggle-pause, , Hide
return

; Switch to workspace
!w::
Send !
Run, komorebic.exe focus-workspace 0, , Hide
return

!e::
Send !
Run, komorebic.exe focus-workspace 1, , Hide
return

!r::
Send !
Run, komorebic.exe focus-workspace 2, , Hide
return

!1::
Send !
Run, komorebic.exe focus-workspace 3, , Hide
return

!2::
Send !
Run, komorebic.exe focus-workspace 4, , Hide
return

!u::
Run, komorebic.exe cycle-workspace previous, , Hide
return

!i::
Run, komorebic.exe cycle-workspace next, , Hide

; Send window to workspace
!^w::
Run, komorebic.exe send-to-workspace 0, , Hide
return

!^e::
Run, komorebic.exe send-to-workspace 1, , Hide
return

!^r::
Run, komorebic.exe send-to-workspace 2, , Hide
return

!^1::
Run, komorebic.exe send-to-workspace 3, , Hide
return

!^2::
Run, komorebic.exe send-to-workspace 4, , Hide
return

; Resize windows
!Left::
Run, komorebic.exe resize-axis horizontal decrease, , Hide
return

!Right::
Run, komorebic.exe resize-axis horizontal increase, , Hide
return

!Down::
Run, komorebic.exe resize-axis vertical decrease, , Hide
return

!Up::
Run, komorebic.exe resize-axis vertical increase, , Hide
return

; Monitor
!;::
Run, komorebic.exe cycle-monitor next, , Hide
return

!,::
Run, komorebic.exe cycle-monitor previous, , Hide
return

!7::
Run, komorebic.exe move-to-monitor 0, , Hide
return

!8::
Run, komorebic.exe move-to-monitor 1, , Hide
return

!9::
Run, komorebic.exe move-to-monitor 2, , Hide
return

; Send window to workspace
!^7::
Run, komorebic.exe send-to-monitor 0, , Hide
return

!^8::
Run, komorebic.exe send-to-monitor 1, , Hide
return

!^9::
Run, komorebic.exe send-to-monitor 2, , Hide
return

; window utils

!q::
WinClose, A
return

!Enter::
Run, wezterm.exe
return
