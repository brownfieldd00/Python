if game.PlaceId == 417267366 then
 wait(0.5)

 local SkyBox = game:GetObjects('rbxassetid://66439676')
 print(SkyBox[1]:GetChildren())
 SkyBox[1].Parent = game.Lighting


 local LoadInit = (function()
 function GetLightAmount()
   local Lights = {}
   for i,v in pairs(game.workspace:GetChildren()) do
     if v.Name == 'Light' then table.insert(Lights,v) end
   end
   return (#Lights)
 end
function GetTurfAmount()
   local Lights = {}
   for i,v in pairs(game.workspace:GetChildren()) do
     if v.Name == 'Turf' then table.insert(Lights,v) end
   end
   return (#Lights)
 end
 while GetLightAmount() ~= 16 and GetTurfAmount() < 4 do wait() end
   wait(0.5)

   for i,v in pairs(game.workspace:GetDescendants()) do
     if v:IsA('BasePart') then
       if v.Material == Enum.Material.Grass then
         v.Material = Enum.Material.Sand
         v.Color = Color3.new(1-0.01,1-0.01,1-0.01)
       end
     end
   end

   for i,v in pairs(game.workspace:GetChildren()) do if v.Name == 'Light' then v:destroy() end end
   sethiddenproperty(game.Lighting,'Technology',Enum.Technology.Future)
   local natmos = Instance.new('Atmosphere',game.Lighting)
   local l = game.Lighting
   l.Ambient = Color3.new()
   l.Brightness = 0.1
   l.ColorShift_Bottom = Color3.new()
   l.ColorShift_Top = Color3.new()
   l.EnvironmentDiffuseScale = 0.278
   l.FogStart = 300
   l.FogEnd = 500
   l.EnvironmentSpecularScale = 0.278
   l.OutdoorAmbient = Color3.fromRGB(108,108,108)
   l.ShadowSoftness = 0.74
   l.ClockTime =9.5
   l.GeographicLatitude = 53
   l.ExposureCompensation = 0.36

   print('EXECUTIOn')
   local ReplacementTree = game:GetObjects('rbxassetid://6064688740')
   local function ModifyTree(TreeInst)
     print('MODIFIYING TREE ')
     local WoodPart
     for i,v in pairs(TreeInst:GetChildren()) do
       if v.Color == Color3.fromRGB(124,92,70) then
         WoodPart = v
       end
       v.Transparency = 1
     end
     print(ReplacementTree[1])
     local highdeftree = ReplacementTree[1].Tree2:Clone():GetChildren()
     for i,part in pairs(highdeftree) do
       part.Parent = TreeInst
       part.CFrame = WoodPart.CFrame + Vector3.new(0,23,0)
       part.CanCollide = false
     end
   end
   for i,v in pairs(game.workspace:GetChildren()) do
     print(v.Name)
     if v.Name == 'Tree' then ModifyTree(v) end
   end
   
       local ReplacementTree = game:GetObjects('rbxassetid://6064688740')

   function addtree(CF)
     local highdeftree = ReplacementTree[1].Tree2:Clone():GetChildren()
     for i,part in pairs(highdeftree) do
       part.Parent = game.workspace
       part.CFrame = CF + Vector3.new(0,23,0)
       part.CanCollide = false
     end
   end
   local startpos = Vector3.new(4499.19727, 32.1502457, -16058.7959)
   local endpos = Vector3.new(6543.6377, 32.1502457, -18102.7363)
   local difference = (startpos.Z+-endpos.Z)

   print(difference)
   for x=0,endpos.X-startpos.X,9.9395847 do
     for y=0,  difference,9.9395847 do

       if math.noise(x,y,30198543) > 0.4  then
         local ray = workspace:Raycast(Vector3.new(startpos.x+x,startpos.y+30,startpos.z+-y),Vector3.new(0,-1000,0))
         if not (ray) then
           addtree(CFrame.new(startpos.x+x,startpos.y+math.random(-3,3),startpos.z+-y))
         else
            end
       end
     end
   end
   game.workspace:WaitForChild('Turf').Size = Vector3.new(10000,1,10000)
   game.Players.LocalPlayer.CameraMaxZoomDistance = 200

   end)

   local SnowPart = Instance.new('Part',game.workspace)
   SnowPart.Anchored = true
   SnowPart.Size = Vector3.new(500,10,500)
   SnowPart.Transparency = 0.999
   SnowPart.CanCollide = false
   local ParticleEmitter = Instance.new('ParticleEmitter')
   ParticleEmitter.Parent =SnowPart
   ParticleEmitter.Speed = NumberRange.new(-5,-5)
   ParticleEmitter.Texture = 'http://www.roblox.com/asset/?id=320426443'
   ParticleEmitter.Rate = 500
   ParticleEmitter.Lifetime = NumberRange.new(120,120)
   local SnowPart2 = SnowPart:Clone()
   SnowPart2.Parent = game.workspace
   SnowPart2.Anchored = true
   spawn(function()
   while wait() do

     pcall(function()
     if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
       SnowPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame+Vector3.new(0,100,0)
       SnowPart2.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame+Vector3.new(0,200,0)
     end
     end)
   end

   end)
   spawn(LoadInit)
 end