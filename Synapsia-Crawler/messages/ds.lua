-- Set up global variables
_G.Trophies = true -- auto farm toggle on or off by setting _G.Trophies = true or _G.Trophies = false
_G.showui = true -- shows u how much rep u have
_G.waitTime = 300 -- time in seconds to wait before farming rep again

-- Function to start the rep farming
function startFarming()
  _G.Trophies = true
end

-- Function to stop the rep farming
function stopFarming()
  _G.Trophies = false
end

-- Main loop to farm rep
while true do
  if _G.Trophies then
    -- Farm rep here
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Marco8642/science/main/taxi%20rep%20farm", true))()
    wait(_G.waitTime)
  end
end