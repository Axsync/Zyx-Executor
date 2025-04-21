-- DOCUMENTATION:
-- https://xheptcofficial.gitbook.io/kavo-library

local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local win = lib.CreateLib("Kavo", "BloodTheme")
-- local win = lib.CreateLib('Kavo', colors)

local colors = {
    SchemeColor = Color3.fromRGB(0, 255, 255),
    Background = Color3.fromRGB(0, 0, 0),
    Header = Color3.fromRGB(0, 0, 0),
    TextColor = Color3.fromRGB(255, 255, 255),
    ElementColor = Color3.fromRGB(20, 20, 20)
}

local main_tab = win:NewTab("Main")
local info_tab = win:NewTab("Info")

local sec1 = main_tab:NewSection("Main")
local sec2 = info_tab:NewSection("Info")

sec1:NewButton(
    "Button",
    "Info",
    function()
        print("Clicked")
    end
)

sec1:NewToggle(
    "Toggle",
    "Info",
    function(state)
        if state then
            print("Toggle On")
        else
            print("Toggle Off")
        end
    end
)

sec1:NewSlider(
    "Walkspeed Slider",
    "Info",
    500,
    0,
    function(s) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end
)

sec1:NewDropdown(
    "DropdownText",
    "DropdownInf",
    {"Option 1", "Option 2", "Option 3"},
    function(currentOption)
        print(currentOption)
    end
)

sec1:NewColorPicker(
    "Color Text",
    "Color Info",
    Color3.fromRGB(0, 0, 0),
    function(color)
        print(color)
        -- Second argument is the default color
    end
)

sec1:NewKeybind(
    "Menu Toggle",
    "Info",
    Enum.KeyCode.F,
    function()
        lib:ToggleUI()
    end
)
