hspoon_list = {
    "WinWin",
    "Seal"
}
for _, v in pairs(hspoon_list) do
    hs.loadSpoon(v)
end

-- windows resize
hs.hotkey.bind({"cmd", "ctrl"}, "H", function()
  spoon.WinWin:moveAndResize("halfleft")
end)
hs.hotkey.bind({"cmd", "ctrl"}, "L", function()
  spoon.WinWin:moveAndResize("halfright")
end)
hs.hotkey.bind({"cmd", "ctrl"}, "J", function()
  spoon.WinWin:moveAndResize("halfup")
end)
hs.hotkey.bind({"cmd", "ctrl"}, "K", function()
  spoon.WinWin:moveAndResize("halfdown")
end)
hs.hotkey.bind({"cmd", "ctrl"}, "F", function()
  spoon.WinWin:moveAndResize("fullscreen")
end)
hs.hotkey.bind({"cmd", "ctrl"}, "U", function()
  spoon.WinWin:undo()
end)
-- windows resize end

-- web search
spoon.Seal:loadPlugins({"urlformats", "useractions"})
spoon.Seal:bindHotkeys({show={{"cmd", "ctrl"}, "S"}})
spoon.Seal:start()
spoon.Seal.plugins.useractions.actions = {
    ["Google"] = { url = "https://www.google.com/search?q=${query}", keyword="gg" },
    ["Youdao"] = { url = "https://dict.youdao.com/w/${query}", keyword="yd" },
}
