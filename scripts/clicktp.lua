if _G.clicktp == nil then
	_G.clicktp = true
	local plr = game:GetService("Players").LocalPlayer
	local UserInputService = game:GetService("UserInputService")
	local mouse = plr:GetMouse()
	repeat wait() until mouse
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			if _G.clicktp and UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
				plr.Character:MoveTo(Vector3.new(mouse.Hit.x, mouse.Hit.y, mouse.Hit.z)) 
			end
		end
	end)
else
	_G.clicktp = not _G.clicktp
	if _G.clicktp then
		game.StarterGui:SetCore("SendNotification", {Title="Zyx"; Text="ClickTP Enabled"; Duration=5;})
	else
		game.StarterGui:SetCore("SendNotification", {Title="Zyx"; Text="ClickTP Disabled"; Duration=5;})
	end
end
