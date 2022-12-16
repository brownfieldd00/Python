while true do
game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("Coins", 480, 99999999)
game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("Levels", 480, 10)
wait()
end