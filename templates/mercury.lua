-- DOCUMENTATION:
-- https://github.com/deeeity/mercury-lib/blob/master/README.md

local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

local GUI =
    lib:Create(
    {
        Name = "Mercury",
        Size = UDim2.fromOffset(600, 400),
        Theme = Dark,
        Link = "https://github.com/deeeity/mercury-lib"
    }
)

local Tab =
    GUI:Tab(
    {
        Name = "New Tab",
        Icon = "rbxassetid://8569322835"
    }
)

Tab:Button(
    {
        Name = "Button",
        Description = nil,
        Callback = function()
        end
    }
)

Tab:Toggle(
    {
        Name = "Toggle",
        StartingState = false,
        Description = nil,
        Callback = function(state)
        end
    }
)

Tab:Textbox(
    {
        Name = "Textbox",
        Callback = function(text)
        end
    }
)

local MyDropdown =
    Tab:Dropdown(
    {
        Name = "Dropdown",
        StartingText = "Select...",
        Description = nil,
        Items = {
            {"Hello", 1}, -- {name, value}
            12, -- or just value, automatically taken as name
            {"Test", "bump the thread pls"}
        },
        Callback = function(item)
            return
        end
    }
)

Tab:Slider(
    {
        Name = "Slider",
        Default = 50,
        Min = 0,
        Max = 100,
        Callback = function()
        end
    }
)

Tab:Keybind(
    {
        Name = "Keybind",
        Keybind = nil,
        Description = nil
    }
)

GUI:Prompt(
    {
        Followup = false,
        Title = "Prompt",
        Text = "Prompts are cool",
        Buttons = {
            ok = function()
                return true
            end,
            no = function()
                return false
            end
        }
    }
)

GUI:Notification(
    {
        Title = "Alert",
        Text = "You shall bump the thread on V3rmillion!",
        Duration = 3,
        Callback = function()
        end
    }
)

Tab:ColorPicker(
    {
        Style = Mercury.ColorPickerStyles.Legacy,
        Callback = function(color)
        end
    }
)

GUI:Credit(
    {
        Name = "Creditors name",
        Description = "Helped with the script",
        V3rm = "link/name",
        Discord = "helo#1234"
    }
)
