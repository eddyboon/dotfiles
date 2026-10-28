-- Extra autostart processes.
-- o.launch_on_start("my-service")

-- Snipaste must already be running in the background for its CLI
-- commands (bound below in bindings.lua) to do anything.
-- It runs under XWayland (xcb) because native Wayland can't set the clipboard
-- once its overlay closes; the bridge below forwards that image to Wayland,
-- since Hyprland only syncs X11 -> Wayland clipboards while an X11 window has focus.
o.launch_on_start("env QT_QPA_PLATFORM=xcb Snipaste")
o.launch_on_start("x11-image-clipboard-bridge")

-- Left monitor's per-monitor default is workspace 6 (see monitors.lua), so
-- Hyprland starts focused there. Force focus to workspace 1 on login instead;
-- this also warps the cursor onto workspace 1's monitor.
hl.on("hyprland.start", function()
  hl.dispatch(hl.dsp.focus({ workspace = "1" }))
end)
