local hyper = {'ctrl', 'alt', 'cmd', 'shift'}
-- All keys are qwerty mapped and therefore I have it translated
-- dvorak: cmd-shift-R
hs.hotkey.bind(hyper, "o", function() hs.reload() end)

-- dvorak cmd-shift-space
hs.hotkey.bind(hyper, "space", function()
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
hs.hotkey.bind(hyper, "j", function()
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
hs.hotkey.bind(hyper, "p", function()
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
hs.hotkey.bind(hyper, "return", function()
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
hs.hotkey.bind(hyper, "m", function()
    local wins = hs.window.minimizedWindows()
    -- TODO unminimize same app name first
    if #wins > 0 then wins[1]:unminimize() end
end)

hs.hotkey.bind(hyper, "-", function()
    hs.execute('/Applications/RDM.app/Contents/MacOS/RDM -w 1800 -h 1169')
end)

hs.hotkey.bind(hyper, "0", function()
    hs.execute('/Applications/RDM.app/Contents/MacOS/RDM -w 1512 -h 982')
end)

-- hyper-+
hs.hotkey.bind(hyper, "=", function()
    hs.execute('/Applications/RDM.app/Contents/MacOS/RDM -w 1147 -h 745')
end)
