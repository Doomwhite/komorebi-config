; Some AHK keybindings
;#	Win (Windows logo key).
;!	Alt
;^	Ctrl
;+	Shift
;&	An ampersand may be used between any two keys or mouse buttons to combine them into a custom hotkey. See below for details.


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

; Change the focused window

!j::
Run, komorebic.exe cycle-focus next, , Hide
return

!k::
Run, komorebic.exe cycle-focus previous, , Hide
return

; Move the focused window in a given direction

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

; Stack the focused window in a given direction
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

; Unstack the focused window
!^d::
Run, komorebic.exe unstack, , Hide
return

; Promote the focused window to the top of the tree
!^Enter::
Run, komorebic.exe promote, , Hide
return

; Switch to an equal-width, max-height column layout on the main workspace
;!c::
;Run, komorebic.exe workspace-layout 0 0 columns, , Hide
;return

; Switch to the default bsp tiling layout on the main workspace
;!t::
;Run, komorebic.exe workspace-layout 0 0 bsp, , Hide
;return

; Toggle the Monocle layout for the focused window
!f::
Run, komorebic.exe toggle-monocle, , Hide
return

; Toggle native maximize for the focused window
!m::
Run, komorebic.exe toggle-maximize, , Hide
return

; Toggle native minimize for the focused window
!^m::
Run, komorebic.exe toggle-minimize, , Hide
return

; Flip horizontally
!n::
Run, komorebic.exe flip-layout horizontal, , Hide
return

; Flip vertically
!v::
Run, komorebic.exe flip-layout vertical, , Hide
return

; Force a retile if things get janky
; !r::
; Run, komorebic.exe retile, , Hide
; return

; Float the focused window
!^f::
Run, komorebic.exe toggle-float, , Hide
return

; Reload ~/komorebi.ahk
!o::
Run, komorebic.exe reload-configuration, , Hide
return

; Pause responding to any window events or komorebic commands
!p::
Run, komorebic.exe toggle-pause, , Hide
return

; Manages the focused window
!=::
Run, komorebic.exe manage, , Hide
return

; Unmanages the focused window
!^=::
Run, komorebic.exe unmanage, , Hide
return

; Pause responding to any window events or komorebic commands
!^p::
Run, komorebic.exe toggle-tiling, , Hide
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

!^+7::
Run, komorebic.exe move-workspace-to-monitor 0, , Hide
return

!^+8::
Run, komorebic.exe move-workspace-to-monitor 1, , Hide
return

!^+9::
Run, komorebic.exe move-workspace-to-monitor 2, , Hide
return

; Misc

; Closes the focused window
!q::
Run, komorebic.exe close, , Hide
return

; Opens wezterm
!^t::
Run, wezterm.exe, , Hide
return