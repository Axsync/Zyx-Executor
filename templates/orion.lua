-- DOCUMENTATION:
                -- https://github.com/jensonhirst/Orion/blob/main/Documentation.md

                local lib = loadstring(game:HttpGet('https://raw.githubusercontent.com/jensonhirst/Orion/main/source'))()

                local win = lib:MakeWindow({
                    Name = 'Orion',
                    HidePremium = false,
                    SaveConfig = true,
                    ConfigFolder = 'OrionTest'
                })

                local Tab = win:MakeTab({
                    Name = 'Tab 1',
                    Icon = 'rbxassetid://4483345998',
                    PremiumOnly = false
                })

                local Section = Tab:AddSection({
                    Name = 'Section'
                })

                Tab:AddButton({
                    Name = 'Button!',
                    Callback = function()
                        print('button pressed')
                    end    
                })

                Tab:AddToggle({
                    Name = 'This is a toggle!',
                    Default = false,
                    Callback = function(Value)
                        print(Value)
                    end    
                })

                Tab:AddColorpicker({
                    Name = 'Colorpicker',
                    Default = Color3.fromRGB(255, 0, 0),
                    Callback = function(Value)
                        print(Value)
                    end    
                })

                Tab:AddSlider({
                    Name = 'Slider',
                    Min = 0,
                    Max = 20,
                    Default = 5,
                    Color = Color3.fromRGB(255,255,255),
                    Increment = 1,
                    ValueName = 'bananas',
                    Callback = function(Value)
                        print(Value)
                    end    
                })

                Tab:AddLabel('Label')
                Tab:AddParagraph('Paragraph', 'Paragraph Content')

                Tab:AddTextbox({
                    Name = 'Textbox',
                    Default = 'default box input',
                    TextDisappear = true,
                    Callback = function(Value)
                        print(Value)
                    end    
                })

                Tab:AddBind({
                    Name = 'Bind',
                    Default = Enum.KeyCode.E,
                    Hold = false,
                    Callback = function()
                        print('press')
                    end    
                })

                Tab:AddDropdown({
                    Name = 'Dropdown',
                    Default = '1',
                    Options = {'1', '2'},
                    Callback = function(Value)
                        print(Value)
                    end    
                })

                lib:MakeNotification({
                    Name = 'Title!',
                    Content = 'Notification content... what will it say??',
                    Image = 'rbxassetid://4483345998',
                    Time = 5
                })

                lib:Init() -- REQUIRED
