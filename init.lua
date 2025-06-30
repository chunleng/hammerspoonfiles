local focus_screen = {w = 1800, h = 1080}
local hyper = {'ctrl', 'alt', 'shift'}

hs.hotkey.bind(hyper, "space", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = math.max((max.w - focus_screen.w) / 2, 0) + max.x
    f.y = math.max((max.h - focus_screen.h) / 2, 0) + max.y
    f.w = math.min(focus_screen.w, max.w)
    f.h = math.min(focus_screen.h, max.h)
    win:setFrame(f)
end)

hs.hotkey.bind(hyper, "h", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = math.max((max.w - focus_screen.w) / 2, 0) + max.x
    f.y = math.max((max.h - focus_screen.h) / 2, 0) + max.y
    f.w = math.min(focus_screen.w, max.w) / 2
    f.h = math.min(focus_screen.h, max.h)
    win:setFrame(f)
end)

hs.hotkey.bind(hyper, "l", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = math.max((max.w - focus_screen.w), max.w) / 2
    f.y = math.max((max.h - focus_screen.h) / 2, 0) + max.y
    f.w = math.min(focus_screen.w, max.w) / 2
    f.h = math.min(focus_screen.h, max.h)
    win:setFrame(f)
end)

-- Window Minimize/Unminimize feature
hs.hotkey.bind(hyper, "m", function()
    local win = hs.window.focusedWindow()
    win:minimize()
end)
hs.hotkey.bind(hyper, "w", function()
    local wins = hs.window.minimizedWindows()
    -- TODO unminimize same app name first
    if #wins > 0 then wins[1]:unminimize() end
end)


-- Handle URL
hs.urlevent.httpCallback = function(_, _, _, fullURL)
    hs.execute("/opt/homebrew/bin/qutebrowser '" .. fullURL .. "'", false)
end
