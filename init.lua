local focus_screen = {w = 1800, h = 1080}
local hyper = {'ctrl', 'alt', 'shift'}
-- All keys are qwerty mapped and therefore I have it translated
hs.hotkey.bind(hyper, "r", function() hs.reload() end)

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

-- Window Fullscreen feature
hs.hotkey.bind(hyper, "return", function()
    local win = hs.window.focusedWindow()
    local toggle = not win:isFullScreen()
    win:setFullScreen(toggle)
end)

-- Window Minimize/Unminimize feature
hs.hotkey.bind(hyper, "m", function()
    local win = hs.window.focusedWindow()
    win:minimize()
end)
hs.hotkey.bind(hyper, "b", function()
    local wins = hs.window.minimizedWindows()
    -- TODO unminimize same app name first
    if #wins > 0 then wins[1]:unminimize() end
end)

hs.hotkey.bind(hyper, "q", function()
    hs.execute('/Applications/RDM.app/Contents/MacOS/RDM -w 1512 -h 982')
end)

hs.hotkey.bind(hyper, "j", function()
    hs.execute('/Applications/RDM.app/Contents/MacOS/RDM -w 1800 -h 1169')
end)

hs.hotkey.bind(hyper, "k", function()
    hs.execute('/Applications/RDM.app/Contents/MacOS/RDM -w 1352 -h 878')
end)

-- Open menu for Color Toggling
hs.hotkey.bind(hyper, 'c', function()
    hs.execute(
        'open "x-apple.systempreferences:com.apple.preference.universalaccess?Display"')
end)

-- Handle URL
hs.urlevent.httpCallback = function(_, _, _, fullURL)
    hs.execute("qutebrowser '" .. fullURL .. "'", true)
end
