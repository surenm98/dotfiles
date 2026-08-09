---@module 'hl'

local primary = "rgb(e6b450)"
local surface = "rgb(0b0e14)"
local secondary = "rgb(aad94c)"
local error = "rgb(d95757)"
local tertiary = "rgb(39bae6)"
local surface_lowest = "rgb(0e1218)"

hl.config({
    general = {
        col = {
            active_border = "rgb(e6b450)",
            inactive_border = "rgb(0b0e14)",
        },
    },
    group = {
        groupbar = {
            col = {
                active = "rgb(aad94c)",
                inactive = "rgb(0b0e14)",
                locked_active = "rgb(d95757)",
                locked_inactive = "rgb(0b0e14)",
            }
        },
        col = {
            border_active = "rgb(aad94c)",
            border_inactive = "rgb(0b0e14)",
            border_locked_active = "rgb(d95757)",
            border_locked_inactive = "rgb(0b0e14)",
        },
    },
})
