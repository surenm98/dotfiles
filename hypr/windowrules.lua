---@module 'hl'

-- Floating rules
hl.window_rule({
    name  = "float_pavucontrol",
    match = { class = "^org\\.pulseaudio\\.pavucontrol$" },
    float = true
})

hl.window_rule({
    name  = "float_shortwave",
    match = { class = "^de\\.haeckerfelix\\.Shortwave$" },
    float = true
})

hl.window_rule({
    name  = "float_jellyfin",
    match = { class = "^com\\.github\\.iwalton3\\.jellyfin-media-player$" },
    float = true
})

-- Idle inhibit rules
hl.window_rule({
    name  = "idle_inhibit_media",
    match = { class = "^(.*celluloid.*|.*mpv.*|.*vlc.*)$" },
    idle_inhibit = "fullscreen"
})

hl.window_rule({
    name  = "idle_inhibit_spotify",
    match = { class = "^.*[Ss]potify.*$" },
    idle_inhibit = "fullscreen"
})

hl.window_rule({
    name  = "idle_inhibit_browsers",
    match = { class = "^(.*LibreWolf.*|.*floorp.*|.*brave-browser.*|.*firefox.*|.*chromium.*|.*zen.*|.*vivaldi.*)$" },
    idle_inhibit = "fullscreen"
})

-- Picture-in-Picture
hl.window_rule({
    name  = "pip_tag",
    match = { title = "^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture).*$" },
    tag = "picture-in-picture"
})

hl.window_rule({
    name  = "pip_properties",
    match = { tag = "picture-in-picture" },
    float = true,
    pin = true,
    move = "73% 72%",
    size = "25% 25%"
})

-- Opacity rules
local opaque_classes = {
    "^firefox$", "^brave-browser$", "^code-oss$", "^[Cc]ode$",
    "^code-url-handler$", "^code-insiders-url-handler$", "^kitty$", "^foot$",
    "^org\\.kde\\.dolphin$", "^org\\.kde\\.ark$", "^nwg-look$", "^qt5ct$",
    "^qt6ct$", "^extsource$", "^kvantummanager$", "^org\\.pulseaudio\\.pavucontrol$",
    "^blueman-manager$", "^nm-applet$", "^nm-connection-editor$",
    "^org\\.kde\\.polkit-kde-authentication-agent-1$", "^polkit-gnome-authentication-agent-1$",
    "^org\\.freedesktop\\.impl\\.portal\\.desktop\\.gtk$",
    "^org\\.freedesktop\\.impl\\.portal\\.desktop\\.hyprland$",
    "^[Ss]team$", "^steamwebhelper$", "^[Ss]potify$",
    "^com\\.github\\.rafostar\\.Clapper$", "^com\\.github\\.tchx84\\.Flatseal$",
    "^hu\\.kramo\\.Cartridges$", "^com\\.obsproject\\.Studio$", "^gnome-boxes$",
    "^vesktop$", "^discord$", "^WebCord$", "^ArmCord$", "^app\\.drey\\.Warp$",
    "^net\\.davidotek\\.pupgui2$", "^yad$", "^Signal$", "^io\\.github\\.alainm23\\.planify$",
    "^io\\.gitlab\\.theevilskeleton\\.Upscaler$", "^com\\.github\\.unrud\\.VideoDownloader$",
    "^io\\.gitlab\\.adhami3310\\.Impression$", "^io\\.missioncenter\\.MissionCenter$",
    "^io\\.github\\.flattool\\.Warehouse$"
}

for i, class_name in ipairs(opaque_classes) do
    hl.window_rule({
        name  = "opacity_rule_" .. i,
        match = { class = class_name },
        opacity = "1.00"
    })
end

-- Specific Title Opacity Rules
hl.window_rule({
    name  = "opacity_spotify_free",
    match = { initial_title = "^Spotify Free$" },
    opacity = "1.00"
})

hl.window_rule({
    name  = "opacity_spotify_premium",
    match = { initial_title = "^Spotify Premium$" },
    opacity = "1.00"
})

-- Floating utilities
local float_classes = {
    "^Signal$", "^com\\.github\\.rafostar\\.Clapper$", "^app\\.drey\\.Warp$",
    "^net\\.davidotek\\.pupgui2$", "^yad$", "^eog$", "^io\\.github\\.alainm23\\.planify$",
    "^io\\.gitlab\\.theevilskeleton\\.Upscaler$", "^com\\.github\\.unrud\\.VideoDownloader$",
    "^io\\.gitlab\\.adhami3310\\.Impression$", "^io\\.missioncenter\\.MissionCenter$"
}

for i, class_name in ipairs(float_classes) do
    hl.window_rule({
        name  = "float_rule_" .. i,
        match = { class = class_name },
        float = true
    })
end

-- YAD cheat sheet
hl.window_rule({
    name  = "yad_properties",
    match = { class = "^yad$" },
    center = true,
    size = "1200 900"
})

-- Gamescope
hl.window_rule({
    name  = "gamescope_properties",
    match = { class = "^(gamescope)$" },
    opacity = "1.0 override 1.0 override",
    rounding = 0,
    no_anim = true,
    no_blur = true,
    no_shadow = true
})
