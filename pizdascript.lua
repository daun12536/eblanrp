local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/daun12536/eblanrp/refs/heads/main/ui.lua"))()
local Wm = ui:Watermark("pizdohui exploit")
local Notif = ui:InitNotifications()
local Loadingpasta = Notif:Notify("Loading notpasta", 3, "information")
ui.title = "pizdohui exploit menu"
ui:Introduction()
local Init = ui:Init()
local Tab1 = Init:NewTab("Example tab")
local secta = Tab1:NewSection("Example Components")
local extra = Tab1:NewLabel("made by k1nns", "center")
local cor = Tab1:NewButton("получить броню COR", function()
--
local zalupaoldpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(730.184143, 30.2918987, -1730.35852, -0.999762833, 7.46025197e-09, -0.0217782017, 8.14666112e-09, 1, -3.14294475e-08, 0.0217782017, -3.15994129e-08, -0.999762833)
task.wait(0.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=workspace.CoR_Armor.CFrame
task.wait(0.5)
fireproximityprompt(workspace.CoR_Armor:FindFirstChild("ProximityPrompt"))
task.wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=zalupaoldpos
--
end)
local ultraweapon = Tab1:NewButton("ебанутое оружие", function()
--
local daun=game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Tool')
local cfg = daun:FindFirstChild('Configuration')
if cfg then
local sets = cfg:FindFirstChild('Settings')
if sets then
local edit = require(sets)
edit.Automatic=true
edit.Rate=0
--edit.DamageToArmour=math.huge
--edit.DamageToObject=math.huge
--edit.DamageToGlass=math.huge
end
end
local mem = daun:FindFirstChild('Memmory')
if mem then
local ammo = mem:FindFirstChild('Ammo')
if ammo then
ammo.Value=math.huge
end
end
--
end)
local killall = Tab1:NewToggle("killall method 1", false, function(value)
getgenv().pidr=value
end)
local killall2 = Tab1:NewButton("killall method 2", function()
local function pidor(player)
    if player ~= game.Players.LocalPlayer and player.Character ~= nil 
       and player.Character:FindFirstChild('HumanoidRootPart') 
       and game.Players.LocalPlayer.Character ~= nil 
       and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then
        local direction = (player.Character.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).unit
        --warn(direction)
        local args = {
            [1] = {
                ["Normal"] = direction,
                ["Name"] = game.Players.LocalPlayer:GetAttribute("MegaName"),
                ["Instance"] = player.Character.HumanoidRootPart,
                ["CFrame"] = player.Character.HumanoidRootPart.CFrame,
                ["IntersectionPosition"] = player.Character.HumanoidRootPart.Position
            }
        }
        for i=1,2 do
            game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass'Tool'.Signals.Shot:FireServer(unpack(args))
        end
    end
end
for i, v in pairs(game.Players:GetPlayers()) do
    pidor(v)
end

--
end)
local killallteleport = Tab1:NewButton("тп к позиции для килл алла", function()
--
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(-1058.83179, 12.656826, 702.445496, -0.383242905, 8.86831302e-08, 0.923647583, 2.11059135e-08, 1, -8.72566943e-08, -0.923647583, -1.39460834e-08, -0.383242905)
--
end)
local fns = Notif:Notify("loaded notpasta",3, "success")
getgenv().pidr=false
game:service'RunService'.Stepped:Connect(function()
    if getgenv().pidr then
        local plrs = game.Players:GetPlayers()
        for i, v in pairs(plrs) do
            if v ~= game.Players.LocalPlayer and v.Character ~= nil 
               and v.Character:FindFirstChild('HumanoidRootPart') 
               and game.Players.LocalPlayer.Character ~= nil 
               and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then
                v.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(7, 0, 0)
            end
        end
    end
end)
