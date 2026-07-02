-----------------------
---- LOOK AND FEEL ----
-----------------------

-- local C = dofile(os.getenv("HOME") .. "/.cache/wal/colors-hyprland.lua")
package.path = package.path .. ";" ..
    os.getenv("HOME") .. "/.cache/wal/?.lua"

local colors = require("colors-hyprland")

-- Refer to https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
    general = {
        gaps_in  = 2,
        gaps_out = 3,

        border_size = 1,

        col = {
            active_border = {
                colors = {
                    "rgba(" .. colors.color4:gsub("#", "") .. "ee)",
                    "rgba(" .. colors.color5:gsub("#", "") .. "ee)"
                },
                angle = 45
            },

            inactive_border =
                "rgba(" .. colors.color8:gsub("#", "") .. "aa)",
        },

        resize_on_border = false,
        allow_tearing = false,
    },

    decoration = {
        rounding       = 12,
        rounding_power = 2,

        active_opacity   = 1.0,
        inactive_opacity = 0.9,

        shadow = {
            enabled      = true,
            range        = 15,
            render_power = 3,

            color =
                "rgba(" .. colors.background:gsub("#", "") .. "ee)",
        },

        blur = {
            enabled   = true,
            size      = 10,
            passes    = 3,
            vibrancy  = 0.1696,
        },
    },

    animations = {
        enabled = true,
    },
})

-- M3 Standard scheme spatial
hl.curve("md3_spatial_fast",    { type = "spring", mass = 1, stiffness = 600, dampening = 49 })
hl.curve("md3_spatial_default", { type = "spring", mass = 1, stiffness = 300, dampening = 35 })
hl.curve("md3_spatial_slow",    { type = "spring", mass = 1, stiffness = 160, dampening = 25 })

-- Effects springs
hl.curve("md3_effects_fast",    { type = "spring", mass = 1, stiffness = 3000, dampening = 123 }) -- ratio 1.0
hl.curve("md3_effects_default", { type = "spring", mass = 1, stiffness = 1600, dampening = 80 }) -- ratio 1.0
hl.curve("md3_effects_slow",    { type = "spring", mass = 1, stiffness = 800, dampening = 57 }) --ratio 1.0

-- Bezier for layers
hl.curve("md3_standard",        { type = "bezier", points = { {0.2, 0.0}, {0.0, 1.0} } })
hl.curve("md3_emphasized_acel", { type = "bezier", points = { {0.3, 0.0}, {0.8, 0.15} } })

hl.animation({ leaf = "border",        enabled = true,  speed = 2, spring = "md3_effects_default" })
hl.animation({ leaf = "borderangle",   enabled = false })
hl.animation({ leaf = "windows",       enabled = true,  speed = 5, spring = "md3_spatial_default" })
hl.animation({ leaf = "windowsIn",     enabled = true,  speed = 5,  spring = "md3_spatial_default", style = "popin 92%" })
hl.animation({ leaf = "windowsOut",    enabled = true,  speed = 2,  spring = "md3_spatial_default", style = "popin 92%" })
hl.animation({ leaf = "windowsMove",    enabled = true,  speed = 5,  spring = "md3_spatial_default" })
hl.animation({ leaf = "fadeOut",       enabled = true,  speed = 2, spring = "md3_effects_default" })
hl.animation({ leaf = "fade",          enabled = true,  speed = 2, spring = "md3_effects_default" })
hl.animation({ leaf = "layers",        enabled = true,  speed = 3, bezier = "md3_standard", style = "slide" })
hl.animation({ leaf = "layersIn",      enabled = true,  speed = 3,    bezier = "md3_standard", style = "slide" })
hl.animation({ leaf = "layersOut",     enabled = true,  speed = 2.5,  bezier = "md3_emphasized_acel", style = "slide" })
hl.animation({ leaf = "workspaces",    enabled = true,  speed = 5, spring = "md3_spatial_default", style = "slide" })
hl.animation({ leaf = "specialWorkspace",    enabled = true,  speed = 3.5, spring = "md3_spatial_fast", style = "slidevert" })
