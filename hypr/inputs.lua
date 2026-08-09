---@module 'hl'

hl.config({
    input = {
        kb_layout = "us",
        numlock_by_default = true,
        repeat_delay = 250,
        repeat_rate = 35,
        accel_profile = "flat",
        touchpad = {
            tap_to_click = true,
            natural_scroll = true,
            clickfinger_behavior = false,
            scroll_factor = 0.5,
        },
        special_fallthrough = true,
        follow_mouse = 1,
    }
})
