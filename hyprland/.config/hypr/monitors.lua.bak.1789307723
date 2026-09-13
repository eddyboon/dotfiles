-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
-- List current monitors and supported resolutions with: hyprctl monitors all

local omarchy_gdk_scale = 1
local omarchy_monitor_scale = 1

hl.env("GDK_SCALE", tostring(omarchy_gdk_scale))
-- hl.monitor({ output = "", mode = "preferred", position = "auto", scale = omarchy_monitor_scale })

-- Configure a specific monitor.

-- Matched by monitor description/serial (not port name like DP-1/DP-2), so
-- the layout stays put even if these identical monitors get detected in a
-- different port order after a reboot or cable swap.

-- Monitor on the right
hl.monitor({ output = "desc:Samsung Electric Company LS27C33xG H9TXB00702", mode = "1920x1080@100.00000Hz", position = "1920x0", scale = omarchy_monitor_scale, transform = 0 })

-- Monitor on the left
hl.monitor({ output = "desc:Samsung Electric Company LS27C33xG H9TXA02680", mode = "1920x1080@100.00000Hz", position = "0x0", scale = omarchy_monitor_scale, transform = 0 })

-- Portrait/rotated secondary monitor (transform: 1 = 90°, 3 = 270°).
-- hl.monitor({ output = "DP-2", mode = "preferred", position = "auto", scale = 1, transform = 1 })

-- Pin workspaces to monitors and keep them persistent so they always show,
-- even when empty: 1-5 on the right monitor, 6-9 on the left monitor. Each
-- monitor's first workspace is its default/fallback.
local workspaces_by_monitor = {
  ["desc:Samsung Electric Company LS27C33xG H9TXB00702"] = { workspaces = { 1, 2, 3, 4, 5 }, default = 1 }, -- right
  ["desc:Samsung Electric Company LS27C33xG H9TXA02680"] = { workspaces = { 6, 7, 8, 9 }, default = 6 }, -- left
}

for monitor, cfg in pairs(workspaces_by_monitor) do
  for _, ws in ipairs(cfg.workspaces) do
    hl.workspace_rule({
      workspace = tostring(ws),
      monitor = monitor,
      persistent = true,
      default = (ws == cfg.default),
    })
  end
end
