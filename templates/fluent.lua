-- DOCUMENTATION:
-- https://github.com/dawid-scripts/Fluent/tree/master

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager =
    loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager =
    loadstring(
    game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua")
)()

local Window =
    Fluent:CreateWindow(
    {
        Title = "Fluent " .. Fluent.Version,
        SubTitle = "by dawid",
        TabWidth = 160,
        Size = UDim2.fromOffset(580, 460),
        Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
        Theme = "Dark",
        MinimizeKey = Enum.KeyCode.LeftControl -- Used when there's no MinimizeKeybind
    }
)

local Tabs = {
    Main = Window:AddTab({Title = "Main", Icon = ""}),
    Settings = Window:AddTab({Title = "Settings", Icon = "settings"})
}

local Options = Fluent.Options

Fluent:Notify(
    {
        Title = "Notification",
        Content = "This is a notification",
        SubContent = "SubContent",
        Duration = 5
    }
)

Tabs.Main:AddParagraph(
    {
        Title = "Paragraph",
        Content = "This is a paragraph!"
    }
)

Tabs.Main:AddButton(
    {
        Title = "Button",
        Description = "Very important button",
        Callback = function()
            Window:Dialog(
                {
                    Title = "Title",
                    Content = "This is a dialog",
                    Buttons = {
                        {
                            Title = "Confirm",
                            Callback = function()
                                print("Confirmed the dialog.")
                            end
                        },
                        {
                            Title = "Cancel",
                            Callback = function()
                                print("Cancelled the dialog.")
                            end
                        }
                    }
                }
            )
        end
    }
)

local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Toggle", Default = false})

Toggle:OnChanged(
    function()
        print("Toggle changed:", Options.MyToggle.Value)
    end
)

Options.MyToggle:SetValue(false)

local Slider =
    Tabs.Main:AddSlider(
    "Slider",
    {
        Title = "Slider",
        Description = "This is a slider",
        Default = 2,
        Min = 0,
        Max = 5,
        Rounding = 1,
        Callback = function(Value)
            print("Slider was changed:", Value)
        end
    }
)

Slider:OnChanged(
    function(Value)
        print("Slider changed:", Value)
    end
)

Slider:SetValue(3)

local Dropdown =
    Tabs.Main:AddDropdown(
    "Dropdown",
    {
        Title = "Dropdown",
        Values = {
            "one",
            "two",
            "three",
            "four",
            "five",
            "six",
            "seven",
            "eight",
            "nine",
            "ten",
            "eleven",
            "twelve",
            "thirteen",
            "fourteen"
        },
        Multi = false,
        Default = 1
    }
)

Dropdown:SetValue("four")

Dropdown:OnChanged(
    function(Value)
        print("Dropdown changed:", Value)
    end
)

local MultiDropdown =
    Tabs.Main:AddDropdown(
    "MultiDropdown",
    {
        Title = "Dropdown",
        Description = "You can select multiple values.",
        Values = {
            "one",
            "two",
            "three",
            "four",
            "five",
            "six",
            "seven",
            "eight",
            "nine",
            "ten",
            "eleven",
            "twelve",
            "thirteen",
            "fourteen"
        },
        Multi = true,
        Default = {"seven", "twelve"}
    }
)

MultiDropdown:SetValue(
    {
        three = true,
        five = true,
        seven = false
    }
)

MultiDropdown:OnChanged(
    function(Value)
        local Values = {}
        for Value, State in next, Value do
            table.insert(Values, Value)
        end
        print("Multidropdown changed:", table.concat(Values, ", "))
    end
)

local Colorpicker =
    Tabs.Main:AddColorpicker(
    "Colorpicker",
    {
        Title = "Colorpicker",
        Default = Color3.fromRGB(96, 205, 255)
    }
)

Colorpicker:OnChanged(
    function()
        print("Colorpicker changed:", Colorpicker.Value)
    end
)

Colorpicker:SetValueRGB(Color3.fromRGB(0, 255, 140))

local TColorpicker =
    Tabs.Main:AddColorpicker(
    "TransparencyColorpicker",
    {
        Title = "Colorpicker",
        Description = "but you can change the transparency.",
        Transparency = 0,
        Default = Color3.fromRGB(96, 205, 255)
    }
)

TColorpicker:OnChanged(
    function()
        print("TColorpicker changed:", TColorpicker.Value, "Transparency:", TColorpicker.Transparency)
    end
)

local Keybind =
    Tabs.Main:AddKeybind(
    "Keybind",
    {
        Title = "KeyBind",
        Mode = "Toggle",
        Default = "LeftControl",
        Callback = function(Value)
            print("Keybind clicked!", Value)
        end,
        ChangedCallback = function(New)
            print("Keybind changed!", New)
        end
    }
)

Keybind:OnClick(
    function()
        print("Keybind clicked:", Keybind:GetState())
    end
)

Keybind:OnChanged(
    function()
        print("Keybind changed:", Keybind.Value)
    end
)

task.spawn(
    function()
        while true do
            wait(1)
            local state = Keybind:GetState()
            if state then
                print("Keybind is being held down")
            end
            if Fluent.Unloaded then
                break
            end
        end
    end
)

Keybind:SetValue("MB2", "Toggle")

local Input =
    Tabs.Main:AddInput(
    "Input",
    {
        Title = "Input",
        Default = "Default",
        Placeholder = "Placeholder",
        Numeric = false,
        Finished = false,
        Callback = function(Value)
            print("Input changed:", Value)
        end
    }
)

Input:OnChanged(
    function()
        print("Input updated:", Input.Value)
    end
)

SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)

Window:SelectTab(1)

Fluent:Notify(
    {
        Title = "Fluent",
        Content = "The script has been loaded.",
        Duration = 8
    }
)

SaveManager:LoadAutoloadConfig()
