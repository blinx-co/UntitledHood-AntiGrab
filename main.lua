local f = game:GetService("Players").LocalPlayer

script.Parent.MouseButton1Click:Connect(function()
	for i,v in pairs(f:GetDescendants()) do
		if f.Character:WaitForChild("GRABBING_CONSTRAINT") then
			f.Character:WaitForChild("GRABBING_CONSTRAINT"):Destroy()
			wait(.1)
			f.Character:WaitForChild("Humanoid").Sit = true
			wait(.2)
			f.Character:WaitForChild("Humanoid").Sit = false
		end
	end
end)
