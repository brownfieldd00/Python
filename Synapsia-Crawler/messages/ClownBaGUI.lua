local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("🤡   Clowns BA GUI", "DarkTheme")

--Main
local Main = Window:NewTab("Main")




local ThanksSection = Main:NewSection("The original script was made by Thenanifire1234")
ThanksSection:NewButton("Finish Quest", "Makes it so you always take less damage", function()
    local llargs = {
        [1] = "Turtle",
        [2] = true
    }
    
    game:GetService("ReplicatedStorage").Main.Shop.Quest:FireServer(unpack(llargs))
end)




local MainSection = Main:NewSection("Useful Basics")
MainSection:NewToggle("Fly", "It litterally does what the name says...", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

MainSection:NewToggle("NoClip", "It litterally does what the name says...", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

MainSection:NewToggle("Unlimited Jumps", "It litterally does what the name says...", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

MainSection:NewButton("Click TP", "Ctrl + m1", function()
    noclip = false
	local UIS = game:GetService("UserInputService")
	local Player = game.Players.LocalPlayer
	local Mouse = Player:GetMouse()


	function GetCharacter()
		return game.Players.LocalPlayer.Character
	end

	function Teleport(pos)
		local Char = GetCharacter()
		if Char then
			Char:MoveTo(pos)
		end
	end


	UIS.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) then
			Teleport(Mouse.Hit.p)
		end
	end)
	clickTP.Text = "Loaded!"
	clickTP.TextColor3 = Color3.fromRGB(0, 255, 50)
	wait(2)
	clickTP.TextColor3 = Color3.fromRGB(255, 255, 255)
	clickTP.Text = "Click TP"
end)

MainSection:NewButton("Fullbright", "makes the game bright", function()
    if not _G.FullBrightExecuted then

        _G.FullBrightEnabled = false
    
        _G.NormalLightingSettings = {
            Brightness = game:GetService("Lighting").Brightness,
            ClockTime = game:GetService("Lighting").ClockTime,
            FogEnd = game:GetService("Lighting").FogEnd,
            GlobalShadows = game:GetService("Lighting").GlobalShadows,
            Ambient = game:GetService("Lighting").Ambient
        }
    
        game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
            if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~= _G.NormalLightingSettings.Brightness then
                _G.NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
                if not _G.FullBrightEnabled then
                    repeat
                        wait()
                    until _G.FullBrightEnabled
                end
                game:GetService("Lighting").Brightness = 1
            end
        end)
    
        game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
            if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~= _G.NormalLightingSettings.ClockTime then
                _G.NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
                if not _G.FullBrightEnabled then
                    repeat
                        wait()
                    until _G.FullBrightEnabled
                end
                game:GetService("Lighting").ClockTime = 12
            end
        end)
    
        game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
            if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~= _G.NormalLightingSettings.FogEnd then
                _G.NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
                if not _G.FullBrightEnabled then
                    repeat
                        wait()
                    until _G.FullBrightEnabled
                end
                game:GetService("Lighting").FogEnd = 786543
            end
        end)
    
        game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
            if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~= _G.NormalLightingSettings.GlobalShadows then
                _G.NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
                if not _G.FullBrightEnabled then
                    repeat
                        wait()
                    until _G.FullBrightEnabled
                end
                game:GetService("Lighting").GlobalShadows = false
            end
        end)
    
        game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
            if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~= _G.NormalLightingSettings.Ambient then
                _G.NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
                if not _G.FullBrightEnabled then
                    repeat
                        wait()
                    until _G.FullBrightEnabled
                end
                game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
            end
        end)
    
        game:GetService("Lighting").Brightness = 1
        game:GetService("Lighting").ClockTime = 12
        game:GetService("Lighting").FogEnd = 786543
        game:GetService("Lighting").GlobalShadows = false
        game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
    
        local LatestValue = true
        spawn(function()
            repeat
                wait()
            until _G.FullBrightEnabled
            while wait() do
                if _G.FullBrightEnabled ~= LatestValue then
                    if not _G.FullBrightEnabled then
                        game:GetService("Lighting").Brightness = _G.NormalLightingSettings.Brightness
                        game:GetService("Lighting").ClockTime = _G.NormalLightingSettings.ClockTime
                        game:GetService("Lighting").FogEnd = _G.NormalLightingSettings.FogEnd
                        game:GetService("Lighting").GlobalShadows = _G.NormalLightingSettings.GlobalShadows
                        game:GetService("Lighting").Ambient = _G.NormalLightingSettings.Ambient
                    else
                        game:GetService("Lighting").Brightness = 1
                        game:GetService("Lighting").ClockTime = 12
                        game:GetService("Lighting").FogEnd = 786543
                        game:GetService("Lighting").GlobalShadows = false
                        game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
                    end
                    LatestValue = not LatestValue
                end
            end
        end)
    end
    
    _G.FullBrightExecuted = true
    _G.FullBrightEnabled = not _G.FullBrightEnabled
end)

MainSection:NewButton("No Fog", "removes fog", function()
    game.Lighting.FogEnd = 1000000
end)

MainSection:NewSlider("Walkspeed", "It litterally does what the name says...", 55, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

MainSection:NewSlider("JumpHight", "It litterally does what the name says...", 65, 50, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)





local BankSection = Main:NewSection("Bank Storage")
BankSection:NewButton("Bank Storage 1", "equips the stand in your 1st stand storage", function()
    game:GetService("ReplicatedStorage").Main.Shop.StandBank:FireServer("1")
end)

BankSection:NewButton("Bank Storage 2", "equips the stand in your 2nd stand storage", function()
    game:GetService("ReplicatedStorage").Main.Shop.StandBank:FireServer("2")
end)

BankSection:NewButton("Bank Storage 3", "equips the stand in your 3rd stand storage", function()
    game:GetService("ReplicatedStorage").Main.Shop.StandBank:FireServer("3")
end)

BankSection:NewButton("Bank Storage 4", "equips the stand in your 4th stand storage", function()
    game:GetService("ReplicatedStorage").Main.Shop.StandBank:FireServer("4")
end)

BankSection:NewButton("Black Market 1", "equips the stand in your 1st bm storage", function()
    game:GetService("ReplicatedStorage").Main.Shop.StandBank:FireServer("5")
end)

BankSection:NewButton("Black Market 2", "equips the stand in your 2nd bm storage", function()
    game:GetService("ReplicatedStorage").Main.Shop.StandBank:FireServer("6")
end)




--Stand Attacks
local SA = Window:NewTab("Stand Attacks")
local SASection = SA:NewSection("Stand Attacks")
SASection:NewButton("No Cooldowns", "Lets your spam attacks", function()
	local Cooldown; Cooldown = hookfunction(wait, function(v)
		v = 0;
		return Cooldown(v);
	end);
end)

SASection:NewButton("Block Glitch", "Makes it so you always take less damage", function()
    local A_1 = true
    local Event = game:GetService("ReplicatedStorage").Main.Attacks.Block 
    Event:FireServer(A_1)
end)

SASection:NewButton("Anti Timestop", "Lets you move in timestop", function()
    game:GetService("ReplicatedStorage").Main.Remotes.Anchor:FireServer(false)   
end)

SASection:NewButton("SPOH Smash", "Uses the attack In the name of the feature", function()
    game:GetService("ReplicatedStorage").Moves["Ground Smash"].Smash:FireServer()
end)

SASection:NewButton("ZS R attack", "Uses the attack In the name of the feature", function()
    game:GetService("ReplicatedStorage").Main.Attacks.ZsHeavy:FireServer()
end)

SASection:NewButton("SCR Immune", "Uses the attack In the name of the feature", function()
    game:GetService("ReplicatedStorage").Moves["Chariot Requiem"].Invincible:FireServer()
end)

SASection:NewButton("Oni AxeSlam", "Uses the attack In the name of the feature", function()
    game:GetService("ReplicatedStorage").Moves.Oni.AxeKick2:FireServer()
end)

SASection:NewButton("Kars Cure/Barrage spam", "Uses the attack In the name of the feature", function()
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    
end)

SASection:NewButton("AER Flamethrower", "Uses the attack In the name of the feature", function()
    local Vargs = {
        [1] = true
    }
    
    game:GetService("ReplicatedStorage").Moves["Azeal Experience Requiem"].Ignes:FireServer(unpack(Vargs))
end)

SASection:NewButton("Vamp Freeze", "Uses the attack In the name of the feature", function()
    local Qargs = {
        [1] = "Standless",
        [2] = "Freeze"
    }
    
    game:GetService("ReplicatedStorage").Main.Attacks.Heavy:FireServer(unpack(Qargs))
end)

SASection:NewButton("Vamp Lazer", "Uses the attack In the name of the feature", function()
    game:GetService("ReplicatedStorage").Main.Vampire.SpaceEyes:FireServer()
end)

SASection:NewButton("Vamp BloodSuck", "Uses the attack In the name of the feature", function()
    game:GetService("ReplicatedStorage").Main.Attacks.BS:FireServer()
end)

SASection:NewButton("KC epitaph", "Uses the attack In the name of the feature", function()
    game:GetService("ReplicatedStorage").Moves["King Crimson"].Epitaph:FireServer()
end)

SASection:NewButton("RTZ", "Uses the attack In the name of the feature", function()
    local iargs = {
        [1] = true
    }
    
    game:GetService("ReplicatedStorage").Moves["Return To Zero"].RTZ:FireServer(unpack(iargs))
end)

SASection:NewButton("Cman effect", "Uses the attack In the name of the feature", function()
    game:GetService("ReplicatedStorage").Moves["C-Man"].GravityPull:FireServer()
end)

SASection:NewButton("PG", "Uses the attack In the name of the feature", function()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    
end)

SASection:NewButton("GE Soul Pinch", "Uses the attack In the name of the feature", function()
    local yyyargs = {
        [1] = "SoulPunchy",
        [2] = "Soul Punch"
    }
    
    game:GetService("ReplicatedStorage").Main.Attacks.Heavy:FireServer(unpack(yyyargs))
end)

SASection:NewButton("MOC/MIH Knife Throw", "Uses the attack In the name of the feature", function()
    game:GetService("ReplicatedStorage").Main.Attacks.OverHeavenKnife:FireServer()
    game:GetService("ReplicatedStorage").Main.Attacks.OverHeavenKnife:FireServer()
    game:GetService("ReplicatedStorage").Main.Attacks.OverHeavenKnife:FireServer()
    game:GetService("ReplicatedStorage").Main.Attacks.OverHeavenKnife:FireServer()
    game:GetService("ReplicatedStorage").Main.Attacks.OverHeavenKnife:FireServer()
    game:GetService("ReplicatedStorage").Main.Attacks.OverHeavenKnife:FireServer()
    game:GetService("ReplicatedStorage").Main.Attacks.OverHeavenKnife:FireServer()
    game:GetService("ReplicatedStorage").Main.Attacks.OverHeavenKnife:FireServer()
    game:GetService("ReplicatedStorage").Main.Attacks.OverHeavenKnife:FireServer()
    game:GetService("ReplicatedStorage").Main.Attacks.OverHeavenKnife:FireServer()
    game:GetService("ReplicatedStorage").Main.Attacks.OverHeavenKnife:FireServer()
    game:GetService("ReplicatedStorage").Main.Attacks.OverHeavenKnife:FireServer()
    game:GetService("ReplicatedStorage").Main.Attacks.OverHeavenKnife:FireServer()
    game:GetService("ReplicatedStorage").Main.Attacks.OverHeavenKnife:FireServer()
    game:GetService("ReplicatedStorage").Main.Attacks.OverHeavenKnife:FireServer()
    game:GetService("ReplicatedStorage").Main.Attacks.OverHeavenKnife:FireServer()
    game:GetService("ReplicatedStorage").Main.Attacks.OverHeavenKnife:FireServer()
    game:GetService("ReplicatedStorage").Main.Attacks.OverHeavenKnife:FireServer()
end)


--Teleports
local TPS = Window:NewTab("Teleports")
local TPSection = TPS:NewSection("Teleports")

TPSection:NewButton("Bank", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(434.0616760253906, 129.50929260253906, 230.79995727539062))
end)

TPSection:NewButton("Shop", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(178, 129, 425))
end)

TPSection:NewButton("OldZs", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(13398, 0, -1431))
end)

TPSection:NewButton("NewZs", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(12418, 7, -1070))
end)

TPSection:NewButton("Akuma", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(372, 177, 436))
end)

TPSection:NewButton("Basketball Court", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(597, 129, 112))
end)

TPSection:NewButton("BusStop", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(56, 129, 541))
end)

TPSection:NewButton("GYM", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(210, 129, -74))
end)

TPSection:NewButton("Pizza", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(76, 129, 124))
end)

TPSection:NewButton("Arcade", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(587, 129, 478))
end)




--Shop
local Shop = Window:NewTab("Shop")
local ShopSection = Shop:NewSection("Shop")
ShopSection:NewButton("Buy Arrow", "Buys what you choose", function()
    game:GetService("ReplicatedStorage").Main.Shop.Buy:FireServer("Arrow")
end)

ShopSection:NewButton("Buy Roka", "Buys what you choose", function()
    game:GetService("ReplicatedStorage").Main.Shop.Buy:FireServer("Rokakaka Fruit")
end)

ShopSection:NewButton("Buy Hat", "Buys what you choose", function()
    game:GetService("ReplicatedStorage").Main.Shop.Buy:FireServer("UnberrelaHat")
end)

ShopSection:NewButton("Change Trait", "Buys what you choose", function()
    game:GetService("ReplicatedStorage").Main.Shop.ChangeTrait:FireServer()
end)