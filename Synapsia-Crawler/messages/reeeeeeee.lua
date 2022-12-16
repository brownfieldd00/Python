_G.run = true

game:GetService("RunService").RenderStepped:Connect(function()
    if _G.run == true then
        game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("Coins", 480, 999999*99)
        game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("Levels", 480, 10)
    end
end)