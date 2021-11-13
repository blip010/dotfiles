local wezterm = require('wezterm')

return {
    front_end = "OpenGL",

    enable_wayland = false,

    check_for_updates = false,

    font = wezterm.font("IBM Plex Mono"),

    default_cursor_style = "BlinkingBar",

    enable_tab_bar = false,

    colors = {
        foreground = "#ffffff",
        background = "#303040",

        cursor_bg = "#000000",
        cursor_fg = "#2c2c3d",
        cursor_border = "#ffffff",

        selection_fg = "#ffffff",
        selection_bg = "#414159",

        ansi = {
            "black", "#bf5f5f", "#bfbf5f", "#5fbf5f", "#5fbfbf", "#5f5fbf", "#bf5fbf", "silver"
        },
        brights = {
            "black", "#ff8080", "#ffff80", "#80ff80", "#80ffff", "#8080ff", "#ff80ff", "black"
        },
    },

    disable_default_key_bindings = true,

    keys = {
        {key = "x", mods = "CTRL", action = "ActivateCopyMode"}, {
            key = "v",
            mods = "CTRL|SHIFT",
            action = wezterm.action {PasteFrom = "Clipboard"}
        }, {
            key = "c",
            mods = "CTRL|SHIFT",
            action = wezterm.action {CopyTo = "ClipboardAndPrimarySelection"}
        }
    }
}