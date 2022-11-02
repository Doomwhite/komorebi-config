; Generated by komorebic.exe

Start(ffm, await_configuration, tcp_port) {
    Run, komorebic.exe start %ffm% --await-configuration %await_configuration% --tcp-port %tcp_port%, , Hide
}

Stop() {
    Run, komorebic.exe stop, , Hide
}

State() {
    Run, komorebic.exe state, , Hide
}

Query(state_query) {
    Run, komorebic.exe query %state_query%, , Hide
}

Subscribe(named_pipe) {
    Run, komorebic.exe subscribe %named_pipe%, , Hide
}

Unsubscribe(named_pipe) {
    Run, komorebic.exe unsubscribe %named_pipe%, , Hide
}

Log() {
    Run, komorebic.exe log, , Hide
}

QuickSaveResize() {
    Run, komorebic.exe quick-save-resize, , Hide
}

QuickLoadResize() {
    Run, komorebic.exe quick-load-resize, , Hide
}

SaveResize(path) {
    Run, komorebic.exe save-resize %path%, , Hide
}

LoadResize(path) {
    Run, komorebic.exe load-resize %path%, , Hide
}

Focus(operation_direction) {
    Run, komorebic.exe focus %operation_direction%, , Hide
}

Move(operation_direction) {
    Run, komorebic.exe move %operation_direction%, , Hide
}

CycleFocus(cycle_direction) {
    Run, komorebic.exe cycle-focus %cycle_direction%, , Hide
}

CycleMove(cycle_direction) {
    Run, komorebic.exe cycle-move %cycle_direction%, , Hide
}

Stack(operation_direction) {
    Run, komorebic.exe stack %operation_direction%, , Hide
}

Resize(edge, sizing) {
    Run, komorebic.exe resize %edge% %sizing%, , Hide
}

ResizeAxis(axis, sizing) {
    Run, komorebic.exe resize-axis %axis% %sizing%, , Hide
}

Unstack() {
    Run, komorebic.exe unstack, , Hide
}

CycleStack(cycle_direction) {
    Run, komorebic.exe cycle-stack %cycle_direction%, , Hide
}

MoveToMonitor(target) {
    Run, komorebic.exe move-to-monitor %target%, , Hide
}

MoveToWorkspace(target) {
    Run, komorebic.exe move-to-workspace %target%, , Hide
}

SendToMonitor(target) {
    Run, komorebic.exe send-to-monitor %target%, , Hide
}

SendToWorkspace(target) {
    Run, komorebic.exe send-to-workspace %target%, , Hide
}

SendToMonitorWorkspace(target_monitor, target_workspace) {
    Run, komorebic.exe send-to-monitor-workspace %target_monitor% %target_workspace%, , Hide
}

FocusMonitor(target) {
    Run, komorebic.exe focus-monitor %target%, , Hide
}

FocusWorkspace(target) {
    Run, komorebic.exe focus-workspace %target%, , Hide
}

FocusMonitorWorkspace(target_monitor, target_workspace) {
    Run, komorebic.exe focus-monitor-workspace %target_monitor% %target_workspace%, , Hide
}

CycleMonitor(cycle_direction) {
    Run, komorebic.exe cycle-monitor %cycle_direction%, , Hide
}

CycleWorkspace(cycle_direction) {
    Run, komorebic.exe cycle-workspace %cycle_direction%, , Hide
}

MoveWorkspaceToMonitor(target) {
    Run, komorebic.exe move-workspace-to-monitor %target%, , Hide
}

NewWorkspace() {
    Run, komorebic.exe new-workspace, , Hide
}

ResizeDelta(pixels) {
    Run, komorebic.exe resize-delta %pixels%, , Hide
}

InvisibleBorders(left, top, right, bottom) {
    Run, komorebic.exe invisible-borders %left% %top% %right% %bottom%, , Hide
}

WorkAreaOffset(left, top, right, bottom) {
    Run, komorebic.exe work-area-offset %left% %top% %right% %bottom%, , Hide
}

AdjustContainerPadding(sizing, adjustment) {
    Run, komorebic.exe adjust-container-padding %sizing% %adjustment%, , Hide
}

AdjustWorkspacePadding(sizing, adjustment) {
    Run, komorebic.exe adjust-workspace-padding %sizing% %adjustment%, , Hide
}

ChangeLayout(default_layout) {
    Run, komorebic.exe change-layout %default_layout%, , Hide
}

LoadCustomLayout(path) {
    Run, komorebic.exe load-custom-layout %path%, , Hide
}

FlipLayout(axis) {
    Run, komorebic.exe flip-layout %axis%, , Hide
}

Promote() {
    Run, komorebic.exe promote, , Hide
}

PromoteFocus() {
    Run, komorebic.exe promote-focus, , Hide
}

Retile() {
    Run, komorebic.exe retile, , Hide
}

EnsureWorkspaces(monitor, workspace_count) {
    Run, komorebic.exe ensure-workspaces %monitor% %workspace_count%, , Hide
}

ContainerPadding(monitor, workspace, size) {
    Run, komorebic.exe container-padding %monitor% %workspace% %size%, , Hide
}

WorkspacePadding(monitor, workspace, size) {
    Run, komorebic.exe workspace-padding %monitor% %workspace% %size%, , Hide
}

WorkspaceLayout(monitor, workspace, value) {
    Run, komorebic.exe workspace-layout %monitor% %workspace% %value%, , Hide
}

WorkspaceCustomLayout(monitor, workspace, path) {
    Run, komorebic.exe workspace-custom-layout %monitor% %workspace% %path%, , Hide
}

WorkspaceLayoutRule(monitor, workspace, at_container_count, layout) {
    Run, komorebic.exe workspace-layout-rule %monitor% %workspace% %at_container_count% %layout%, , Hide
}

WorkspaceCustomLayoutRule(monitor, workspace, at_container_count, path) {
    Run, komorebic.exe workspace-custom-layout-rule %monitor% %workspace% %at_container_count% %path%, , Hide
}

ClearWorkspaceLayoutRules(monitor, workspace) {
    Run, komorebic.exe clear-workspace-layout-rules %monitor% %workspace%, , Hide
}

WorkspaceTiling(monitor, workspace, value) {
    Run, komorebic.exe workspace-tiling %monitor% %workspace% %value%, , Hide
}

WorkspaceName(monitor, workspace, value) {
    Run, komorebic.exe workspace-name %monitor% %workspace% %value%, , Hide
}

ToggleWindowContainerBehaviour() {
    Run, komorebic.exe toggle-window-container-behaviour, , Hide
}

TogglePause() {
    Run, komorebic.exe toggle-pause, , Hide
}

ToggleTiling() {
    Run, komorebic.exe toggle-tiling, , Hide
}

ToggleFloat() {
    Run, komorebic.exe toggle-float, , Hide
}

ToggleMonocle() {
    Run, komorebic.exe toggle-monocle, , Hide
}

ToggleMaximize() {
    Run, komorebic.exe toggle-maximize, , Hide
}

RestoreWindows() {
    Run, komorebic.exe restore-windows, , Hide
}

Manage() {
    Run, komorebic.exe manage, , Hide
}

Unmanage() {
    Run, komorebic.exe unmanage, , Hide
}

ReloadConfiguration() {
    Run, komorebic.exe reload-configuration, , Hide
}

WatchConfiguration(boolean_state) {
    Run, komorebic.exe watch-configuration %boolean_state%, , Hide
}

CompleteConfiguration() {
    Run, komorebic.exe complete-configuration, , Hide
}

WindowHidingBehaviour(hiding_behaviour) {
    Run, komorebic.exe window-hiding-behaviour %hiding_behaviour%, , Hide
}

CrossMonitorMoveBehaviour(move_behaviour) {
    Run, komorebic.exe cross-monitor-move-behaviour %move_behaviour%, , Hide
}

ToggleCrossMonitorMoveBehaviour() {
    Run, komorebic.exe toggle-cross-monitor-move-behaviour, , Hide
}

UnmanagedWindowOperationBehaviour(operation_behaviour) {
    Run, komorebic.exe unmanaged-window-operation-behaviour %operation_behaviour%, , Hide
}

FloatRule(identifier, id) {
    Run, komorebic.exe float-rule %identifier% "%id%", , Hide
}

ManageRule(identifier, id) {
    Run, komorebic.exe manage-rule %identifier% "%id%", , Hide
}

WorkspaceRule(identifier, id, monitor, workspace) {
    Run, komorebic.exe workspace-rule %identifier% "%id%" %monitor% %workspace%, , Hide
}

IdentifyObjectNameChangeApplication(identifier, id) {
    Run, komorebic.exe identify-object-name-change-application %identifier% "%id%", , Hide
}

IdentifyTrayApplication(identifier, id) {
    Run, komorebic.exe identify-tray-application %identifier% "%id%", , Hide
}

IdentifyLayeredApplication(identifier, id) {
    Run, komorebic.exe identify-layered-application %identifier% "%id%", , Hide
}

IdentifyBorderOverflowApplication(identifier, id) {
    Run, komorebic.exe identify-border-overflow-application %identifier% "%id%", , Hide
}

ActiveWindowBorder(boolean_state) {
    Run, komorebic.exe active-window-border %boolean_state%, , Hide
}

ActiveWindowBorderColour(r, g, b, window_kind) {
    Run, komorebic.exe active-window-border-colour %r% %g% %b% --window-kind %window_kind%, , Hide
}

FocusFollowsMouse(boolean_state, implementation) {
    Run, komorebic.exe focus-follows-mouse %boolean_state% --implementation %implementation%, , Hide
}

ToggleFocusFollowsMouse(implementation) {
    Run, komorebic.exe toggle-focus-follows-mouse  --implementation %implementation%, , Hide
}

MouseFollowsFocus(boolean_state) {
    Run, komorebic.exe mouse-follows-focus %boolean_state%, , Hide
}

ToggleMouseFollowsFocus() {
    Run, komorebic.exe toggle-mouse-follows-focus, , Hide
}

AhkLibrary() {
    Run, komorebic.exe ahk-library, , Hide
}

AhkAppSpecificConfiguration(path, override_path) {
    Run, komorebic.exe ahk-app-specific-configuration %path% %override_path%, , Hide
}

FormatAppSpecificConfiguration(path) {
    Run, komorebic.exe format-app-specific-configuration %path%, , Hide
}

NotificationSchema() {
    Run, komorebic.exe notification-schema, , Hide
}

SocketSchema() {
    Run, komorebic.exe socket-schema, , Hide
}