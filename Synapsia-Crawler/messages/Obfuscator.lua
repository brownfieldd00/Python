local bullets
local Spread
function gunmod()
	for _, v in pairs(getgc(true)) do
		if type(v) == "table" and rawget(v,'MaxAmmo')
		or type(v) == "table" and rawget(v,'GunMode')
		or type(v) == "table" and rawget(v,'Shots')
		or type(v) == "table" and rawget(v,'Buffer')
		or type(v) == 'table' and rawget(v,'GunSpread')
		or type(v) == 'table' and rawget(v,'WalkSpeed')
		or type(v) == 'table' and rawget(v,'SprintSpeed')
		then
			if v.MaxAmmo and type(v.MaxAmmo) == "number" then
				v.MaxAmmo = math.huge
				print(v.MaxAmmo)
			end
			if v.GunMode and type(v.GunMode) == "string" then
				v.GunMode = "Auto"
			end
			if v.Shots and type(v.Shots) == "number" then
				v.Shots = 100
			end
			if v.Buffer and type(v.Buffer) == "number" then
				v.Buffer = 0
			end
			if v.GunSpread and type(v.GunSpread) == "number" then
				v.GunSpread = 0.021
			end
			if v.WalkSpeed and type(v.WalkSpeed) == "number" then
				v.WalkSpeed = 20
			end
			if v.SprintSpeed and type(v.SprintSpeed) == "number" then
				v.SprintSpeed = 30
			end
		end
	end
end
function Highlights()
	local Players = game:GetService("Players"):GetChildren()
	local highlight = Instance.new("Highlight")
	highlight.Name = "ESP"
	for i, v in pairs(Players) do
		repeat wait() until v.Character
		local highlightClone = highlight:Clone()
		highlightClone.Adornee = v.Character
		highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
	end
	game.Players.PlayerAdded:Connect(function(player)
		repeat wait() until player.Character
		local highlightClone = highlight:Clone()
		highlightClone.Adornee = player.Character
		highlightClone.Parent = player.Character:FindFirstChild("HumanoidRootPart")
	end)
end
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/Young-Prodigy/RayField-UI/main/lib.lua'))()
local Window = Rayfield:CreateWindow({
	Name = "SCP Warfare Tycoon",
	LoadingTitle = "Tate Hub Productions",
	LoadingSubtitle = "by Tate",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil, -- Create a custom folder for your hub/game
		FileName = "Big Hub"
	}
})
local Tab = Window:CreateTab("Point Teleports", 4483362458) -- Title, Image
local Button = Tab:CreateButton({
	Name = "Point A",
	Callback = function()
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5114.63965, 427.110779, -713.08844)
	end,
})
local Button = Tab:CreateButton({
	Name = "Point B",
	Callback = function()
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5112.87354, 375.407837, -357.354614)
	end,
})
local Button = Tab:CreateButton({
	Name = "Point C",
	Callback = function()
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5346.50098, 370.556976, -830.880798)
	end,
})
local Button = Tab:CreateButton({
	Name = "Point D",
	Callback = function()
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4843.7627, 377.171509, -860.656921)
	end,
})

local Tab = Window:CreateTab("Base Teleports", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Echo")
local Button = Tab:CreateButton({
	Name = "Teleport",
	Callback = function()
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4335.72363, 357.222565, -142.203629)
	end,
})
local Button = Tab:CreateButton({
	Name = "Auto Collect",
	Callback = function()
		local Time = 2
		local LP = game:GetService("Players").LocalPlayer
		local Char = LP.Character
		local Loc = game:GetService("Workspace").Tycoons.ECHO.collector.collectPart
		while task.wait(Time) do
			firetouchinterest(Char.HumanoidRootPart, Loc, 0)
			firetouchinterest(Char.HumanoidRootPart, Loc, 1)
		end
	end,
})
local Section = Tab:CreateSection("Charlie")
local Button = Tab:CreateButton({
	Name = "Teleport",
	Callback = function()
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5033.29541, 357.222565, -1682.97571)
	end,
})
local Button = Tab:CreateButton({
	Name = "Auto Collect",
	Callback = function()
		local Time = 2
		local LP = game:GetService("Players").LocalPlayer
		local Char = LP.Character
		local Loc = game:GetService("Workspace").Tycoons.CHARLIE.collector.collectPart
		while task.wait(Time) do
			firetouchinterest(Char.HumanoidRootPart, Loc, 0)
			firetouchinterest(Char.HumanoidRootPart, Loc, 1)
		end
	end,
})
local Section = Tab:CreateSection("Foxtrot")
local Button = Tab:CreateButton({
	Name = "Teleport",
	Callback = function()
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5223.83057, 357.222565, 259.793762)
	end,
})
local Button = Tab:CreateButton({
	Name = "Auto Collect",
	Callback = function()
		local Time = 2
		local LP = game:GetService("Players").LocalPlayer
		local Char = LP.Character
		local Loc = game:GetService("Workspace").Tycoons.FOXTROT.collector.collectPart
		while task.wait(Time) do
			firetouchinterest(Char.HumanoidRootPart, Loc, 0)
			firetouchinterest(Char.HumanoidRootPart, Loc, 1)
		end
	end,
})
local Section = Tab:CreateSection("Bravo")
local Button = Tab:CreateButton({
	Name = "Teleport",
	Callback = function()
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5921.73535, 360.222565, -1280.39038)
	end,
})
local Button = Tab:CreateButton({
	Name = "Auto Collect",
	Callback = function()
		local Time = 2
		local LP = game:GetService("Players").LocalPlayer
		local Char = LP.Character
		local Loc = game:GetService("Workspace").Tycoons.BRAVO.collector.collectPart
		while task.wait(Time) do
			firetouchinterest(Char.HumanoidRootPart, Loc, 0)
			firetouchinterest(Char.HumanoidRootPart, Loc, 1)
		end
	end,
})
local Section = Tab:CreateSection("Alpha")
local Button = Tab:CreateButton({
	Name = "Teleport",
	Callback = function()
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6018.94189, 357.222565, -310.061615)
	end,
})
local Button = Tab:CreateButton({
	Name = "Auto Collect",
	Callback = function()
		local Time = 2
		local LP = game:GetService("Players").LocalPlayer
		local Char = LP.Character
		local Loc = game:GetService("Workspace").Tycoons.ALPHA.collector.collectPart
		while task.wait(Time) do
			firetouchinterest(Char.HumanoidRootPart, Loc, 0)
			firetouchinterest(Char.HumanoidRootPart, Loc, 1)
		end
	end,
})
local Section = Tab:CreateSection("Delta")
local Button = Tab:CreateButton({
	Name = "Teleport",
	Callback = function()
		Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4239.44385, 357.222565, -1115.30945)
	end,
})
local Button = Tab:CreateButton({
	Name = "Auto Collect",
	Callback = function()
		local Time = 2
		local LP = game:GetService("Players").LocalPlayer
		local Char = LP.Character
		local Loc = game:GetService("Workspace").Tycoons.DELTA.collector.collectPart
		while task.wait(Time) do
			firetouchinterest(Char.HumanoidRootPart, Loc, 0)
			firetouchinterest(Char.HumanoidRootPart, Loc, 1)
		end
	end,
})
local Tab = Window:CreateTab("Gun Mods", 4483362458) -- Title, Image
local Button = Tab:CreateButton({
	Name = "GunMods",
	Callback = function()
		gunmod()
	end,
})
local Paragraph = Tab:CreateParagraph({Title = "Gun Mods", Content = "Infinite Ammo, Shotgun, Automatic, OP, Universal, Reset to apply changes"})
local Tab = Window:CreateTab("Visuals", 4483362458) -- Title, Image
local Toggle = Tab:CreateToggle({
	Name = "Highlights",
	CurrentValue = false,
	Flag = "Toggle112", 
	Callback = function(Value)
		while true do
			if Value then
				Highlights()
			end
			wait()
		end
	end,
})

for _, v in pairs(Functions) do
	task.spawn(v)
end