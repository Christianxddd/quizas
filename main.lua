-- // Local Player
local player = game.Players.LocalPlayer

-- // Load Orion Library
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()

-- // Create Main Window
local Window = OrionLib:MakeWindow({
    Name = "Example Hub (Rename This!)",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "OrionTest"
    --[[ 
        Name =           The name of the UI
        HidePremium =    Whether or not the user details shows Premium status
        SaveConfig =     Toggles config saving in the UI
        ConfigFolder =   Folder name where configs are saved
        IntroEnabled =   Show intro animation? (true/false)
        IntroText =      Text in intro animation
        IntroIcon =      Icon in intro animation
        Icon =           Window icon
        CloseCallback =  Function executed when window closes
    ]]
})

-- // Create Tab
local Tab = Window:MakeTab({
    Name = "Tab 1",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
    --[[ 
        Name =        The name of the tab
        Icon =        Icon of the tab
        PremiumOnly = Only accessible for Premium users
    ]]
})

-- // Create Section
local Section = Tab:AddSection({
    Name = "LocalPlayer"
    --[[ Name = The name of the section ]]
})

-- // Welcome Notification
OrionLib:MakeNotification({
    Name = "Welcome!",
    Content = "Welcome to my hub!",
    Image = "rbxassetid://4483345998",
    Time = 5
    --[[ 
        Name =    Title of the notification
        Content = Content text
        Image =   Notification icon
        Time =    Duration of the notification
    ]]
})

-- // Buttons
Tab:AddButton({
    Name = "High Speed",
    Callback = function()
        player.Character.Humanoid.WalkSpeed = 500
    end
})

Tab:AddButton({
    Name = "High Jumppower",
    Callback = function()
        player.Character.Humanoid.JumpPower = 100
    end
})

Tab:AddButton({
    Name = "Low Gravity",
    Callback = function()
        game.Workspace.Gravity = 10
    end
})
