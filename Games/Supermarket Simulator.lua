-- GAME LINK: https://www.roblox.com/games/13274636440/FREE-UGC-Supermarket-Simulator
-- UI LIBRARY
local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()
-- CREATE GUI
local GUI = Mercury:Create{
    Name = "UGC Hub",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/deeeity/mercury-lib"
}
-- TAB CREATION
local Tab = GUI:Tab{
	Name = "Supermarket Simulator",
	Icon = "rbxassetid://8569322835"
}
-- BUTTON CREATION
Tab:Button{
	Name = "Anti AFK",
	Description = nil,
	Callback = function()
        local VirtualUser = game:GetService('VirtualUser')
        game:GetService('Players').LocalPlayer.Idled:connect(function()
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.new())
        end)
    end
}

Tab:Button{
	Name = "Infinite Money",
	Description = nil,
	Callback = function()
        game:GetService("ReplicatedStorage").Events.Supplies.BuySupply:FireServer("Apple",-9e9)
    end
}
-- CREDITS
GUI:Credit{
	Name = "Putrid (skinwalkers)",
	Description = "Script Hub Owner",
	V3rm = "https://v3rmillion.net/member.php?action=profile&uid=2872637",
	Discord = "https://discord.gg/r7WJJu2kt3"
}