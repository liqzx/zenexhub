local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Zenex",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Zenex Beta",
   LoadingSubtitle = "by Zenex team",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

Rayfield:Notify({
   Title = "Thank you for using Zenex!",
   Content = "We hope you enjoy your stay!",
   Duration = 6.5,
   Image = 4483362458,
})

local Tab = Window:CreateTab("Universal", 4483362458) -- Title, Image

local Section = Tab:CreateSection("Basic")

local Divider = Tab:CreateDivider()

local Button = Tab:CreateButton({
   Name = "Infinite Yield",
   Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Dex",
   Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
   end,
})

local Dropdown = Tab:CreateDropdown({
   Name = "Devs",
   Options = {"liqxz","Sap"},
   MultipleOptions = false,
   Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Options)
   -- The function that takes place when the selected option is changed
   -- The variable (Options) is a table of strings for the current selected options
   end,
})

local Tab = Window:CreateTab("Games", 4483362458) -- Title, Image

local Section = Tab:CreateSection("Arsenal")

local Divider = Tab:CreateDivider()

local Button = Tab:CreateButton({
   Name = "Wed Client",
   Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ex55/weed-client/refs/heads/main/main.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Tekkit",
   Callback = function()
		-- Ensure the game is loaded
if game:IsLoaded() then
    print("Game is already loaded, executing script.")
else
    game.Loaded:Wait()
end

local GameP = game.PlaceId

-- Function to send notifications
local function sendNotification(title, text)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = title,
        Text = text,
        Icon = "rbxassetid://13264701341"
    })
end

-- Initial notifications
sendNotification("Notification", "Checking")
wait(0.1)
sendNotification("Notification", "Check Place Id..")
wait(0.1)

-- Game specific logic
local url

if game.PlaceId == 12137249458 then  -- Gun Grounds
    sendNotification("Notification", "Gun Grounds [" .. GameP .. "]")
    url = "https://raw.githubusercontent.com/zerunquist/TekkitAotr/main/gungroundsffa"

elseif game.PlaceId == 5094651510 or game.PlaceId == 4855457388 then 
    sendNotification("Notification", "Demon Fall [" .. GameP .. "]")
    url = "https://raw.githubusercontent.com/JD-04/Tekkit/main/Demon%20Fall"

elseif game.PlaceId == 13772394625 or game.PlaceId == 17757592456 or game.PlaceId == 16456370330 or game.PlaceId == 16281300371 or game.PlaceId == 15144787112 or game.PlaceId == 16581648071 or game.PlaceId == 15234596844 or game.PlaceId == 14915220621 or game.PlaceId == 15264892126 or game.PlaceId == 14732610803 then  -- BladeBall
    sendNotification("Notification", "Blade Ball [" .. GameP .. "]")
    url = "https://raw.githubusercontent.com/JD-04/Tekkit/main/BladeBall"

elseif game.PlaceId == 2753915549 or game.PlaceId == 4442272183 or game.PlaceId == 7449423635 then
    sendNotification("Notification", "Blox Fruits [" .. GameP .. "]")
    url = "https://raw.githubusercontent.com/JD-04/Tekkit/refs/heads/main/Blox%20obf.txt"

elseif game.PlaceId == 286090429 then
    sendNotification("Notification", "Arsenal [" .. GameP .. "]")
    url = "https://raw.githubusercontent.com/JD-04/Tekkit/refs/heads/main/Arsenal"
-- Add other games here as needed

else
    sendNotification("Notification", "Loading Aot:R Hub [" .. GameP .. "]")
    url = "https://api.luarmor.net/files/v3/loaders/705e7fe7aa288f0fe86900cedb1119b1.lua"
end

-- Load and execute the script from the URL
if url then
    local success, response = pcall(function()
        return game:HttpGet(url)
    end)

    if success then
        loadstring(response)()
    else
        sendNotification("Error", "Failed to load script from URL: " .. url)
    end
else
    sendNotification("Error", "No URL found for the current game.") -- h
end
   end,
})

local Section = Tab:CreateSection("Counter Blox")

local Divider = Tab:CreateDivider()

local Button = Tab:CreateButton({
   Name = "CB Script",
   Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/fliskScript/jaran.vip/main/free.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Solaris",
   Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/toasty-dev/pissblox/main/solaris_bootstrapper.lua",true))()
   end,
})

local Section = Tab:CreateSection("Dead Rails")

local Divider = Tab:CreateDivider()

local Button = Tab:CreateButton({
   Name = "DR Script",
   Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Markklol/AnimalSimulator/refs/heads/main/DRails.lua", true))()
   end,
})
local Button = Tab:CreateButton({
   Name = "Speed Hub X",
   Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Neox Hub",
   Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/hassanxzayn-lua/NEOXHUBMAIN/refs/heads/main/loader", true))()
   end,
})

local Section = Tab:CreateSection("Fisch")

local Divider = Tab:CreateDivider()

local Button = Tab:CreateButton({
   Name = "homohack",
   Callback = function()
		local new = Drawing.new; Drawing.new = function(object)
    local old = new(object);

    if (object == "Circle") then
        old.Filled = false;
    end

    return old;
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/dementiaenjoyer/homohack/main/loader.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Forge Hub",
   Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Skzuppy/forge-hub/main/loader.lua"))()
local Tab = Window:CreateTab("About Us", 4483362458) -- Title, Image
local Divider = Tab:CreateDivider()

local Paragraph = Tab:CreateParagraph({Title = "About Us", Content = "Zenex is a Universal Script that can help enhance players experience"})
