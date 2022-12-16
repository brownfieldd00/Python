_G.xmass = true
spawn(function()
while _G.xmass do
    wait()
    pcall(function()
    if not game:GetService("Workspace").Christmas:FindFirstChild("hologram") then
    game:GetService("ReplicatedStorage").Christmas.ResetTree:InvokeServer()
    wait(1)
    end
end)
end
end)
while _G.xmass do
    wait()
    pcall(function()
for i,v in pairs(game:GetService("Workspace").Christmas.DecorationHunt:GetDescendants()) do
    if v.ClassName == "ProximityPrompt" and v.Parent.MeshId == game:GetService("Workspace").Christmas.hologram.MeshId then
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
 wait(4)
     repeat wait()
        fireproximityprompt(v)
        wait(1)
     until game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") or _G.xmass == false
    wait(4)
        game.Players.LocalPlayer.Character:MoveTo(game:GetService("Workspace").Christmas.TreeModel.Deliver.Position)
repeat wait()
        game.Players.LocalPlayer.Character:MoveTo(game:GetService("Workspace").Christmas.TreeModel.Deliver.Position)
wait(0.1)
until not game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") or _G.xmass == false
wait(4)
    end
end
end)
end