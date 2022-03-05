-- All keys are qwerty mapped and therefore I have it translated
-- dvorak: cmd-shift-R
hs.hotkey.bind({"cmd", "shift"}, "o", function() hs.reload() end)

-- dvorak cmd-shift-space
hs.hotkey.bind({"cmd", "shift"}, "space", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = max.w
    f.h = max.h
    win:setFrame(f)
end)

-- dvorak cmd-shift-H
hs.hotkey.bind({"cmd", "shift"}, "j", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h
    win:setFrame(f)
end)

-- dvorak cmd-shift-L
hs.hotkey.bind({"cmd", "shift"}, "p", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.w / 2
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h
    win:setFrame(f)
end)

-- Window Fullscreen feature
-- dvorak cmd-shift-enter
hs.hotkey.bind({"cmd", "shift"}, "return", function()
    local win = hs.window.focusedWindow()
    local toggle = not win:isFullScreen()
    win:setFullScreen(toggle)
end)

-- Window Minimize/Unminimize feature
-- dvorak cmd-M
hs.hotkey.bind({"cmd"}, "m", function()
    local win = hs.window.focusedWindow()
    win:minimize()
end)
-- dvorak cmd-shift-M
hs.hotkey.bind({"cmd", "shift"}, "m", function()
    local wins = hs.window.minimizedWindows()
    -- TODO unminimize same app name first
    if #wins > 0 then wins[1]:unminimize() end
end)
