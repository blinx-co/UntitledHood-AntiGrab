local f = game:GetService("Players").LocalPlayer

local t = false

script.Parent.MouseButton1Click:Connect(function()
	if t == false then
		t = true
		for i,v in pairs(f:GetDescendants()) do
			if f.Character:WaitForChild("GRABBING_CONSTRAINT") then
				f.Character:WaitForChild("GRABBING_CONSTRAINT"):Destroy()
				wait(.1)
				f.Character:WaitForChild("Humanoid").Sit = true
				wait(.2)
				f.Character:WaitForChild("Humanoid").Sit = false
			end
			if t == false then
				break
			end
		end
	elseif t == true then
		t = false
	end
end)
