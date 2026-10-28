-- Change the default Omarchy look'n'feel.

-- https://wiki.hypr.land/Configuring/Basics/Variables/#general
hl.config({
  general = {
    -- No gaps between windows or borders.
    -- gaps_in = 0,
    gaps_out = 3,
    -- border_size = 0,

    -- Change to niri-like side-scrolling layout.
    -- layout = "scrolling",
  },
})

-- https://wiki.hypr.land/Configuring/Basics/Variables/#decoration
hl.config({
  decoration = {
    -- Use round window corners.
    rounding = 8,

    inactive_opacity = 0.85,
    active_opacity = 0.95,
    blur = {
      enabled = true,
      passes = 2,
      size = 2,
      noise = 0
    },
    -- Dim unfocused windows (0.0 = no dim, 1.0 = fully dimmed).
    dim_inactive = true,
    dim_strength = 0.2,
  },
})

-- https://wiki.hypr.land/Configuring/Basics/Variables/#cursor
hl.config({
  cursor = {
    default_monitor = "desc:Samsung Electric Company LS27C33xG H9TXB00702"
  },
})


-- IBKR Gateway: send to workspace 6 without switching to it.
-- (Java app; class is usually install4j-ibgateway-GWClient. Verify with `hyprctl clients` while it's open.)
o.window({ class = "(?i).*ibgateway.*" }, { workspace = "6 silent" })
o.window({ title = "(?i).*IBKR Gateway.*" }, { workspace = "6 silent" })

-- Sierra Chart (Wine): send to workspace 6 without switching to it.
-- (Class is usually the exe name, e.g. sierrachart_64.exe. Verify with `hyprctl clients` while it's open.)
o.window({ class = "(?i).*sierrachart.*" }, { workspace = "1 silent" })



-- https://wiki.hypr.land/Configuring/Basics/Variables/#animations
-- hl.config({
--   animations = {
--     -- Disable all animations.
--     enabled = false,
--   },
-- })

-- https://wiki.hypr.land/Configuring/Basics/Variables/#layout
-- hl.config({
--   layout = {
--     -- Avoid overly wide single-window layouts on wide screens.
--     single_window_aspect_ratio = { 1, 1 },
--   },
-- })

-- https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/
-- hl.config({
--   scrolling = {
--     -- See only one column per screen instead of two.
--     column_width = 0.97,
--   },
-- })

