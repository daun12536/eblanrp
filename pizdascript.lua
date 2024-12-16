local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wave"))()
local Main = library:Main()
local Tab = Main:Tab("pizdohui exploit menu")
local Section = Tab:Section("main")
Section:Item("label", "сделан k1nns")
Section:Item(
    "button",
    "получить броню COR",
    function()
local zalupaoldpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(730.184143, 30.2918987, -1730.35852, -0.999762833, 7.46025197e-09, -0.0217782017, 8.14666112e-09, 1, -3.14294475e-08, 0.0217782017, -3.15994129e-08, -0.999762833)
task.wait(0.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=workspace.CoR_Armor.CFrame
task.wait(0.5)
fireproximityprompt(workspace.CoR_Armor:FindFirstChild("ProximityPrompt"))
task.wait(0.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=zalupaoldpos
    end
)

Section:Item(
    "button",
    "send msg to webhook (BAN)",
    function()
local function rn()
    local types = {
        function() return math.random(-1e3, 1e3) end,
        function() return tostring(math.random(-1e3, 1e3)) end, 
        function() return math.random(0, 1) == 1 end, 
    }
    return types[math.random(1, #types)]()
end

local rem = {
    Shot = true,
    UpdateSpisok = true,
    ButtonsOperations = true,
    MainMenuGui = true,
    DataCenterQuests = true,
    Router = true,
    PliersEvent = true,
    Managment_Data = true,
    Track = true,
    Inject = true,
    CheckGroup = true,
    RedeemCode = true
}

for h, dd in pairs(game:GetDescendants()) do
    if dd:IsA("RemoteEvent") and rem[dd.Name] then
        for i = 1, 10 do
            local alr = {"СЛАВА ДУРКЕ!!! СПИД ЕРП - ТУЛБОКСНЫЙ КАЛЛ, КОТОРЫЙ СЛИЗАЛ ВСЁ С ДРУГИХ ПЛЕЙСОВ И ТУЛБОКСА!!! @everyone"}
            local gen = rn()
            table.insert(alr, gen)
            dd:FireServer(unpack(alr))
        end
    end
end
    end
)
Section:Item("label", "при отправке вас кикнет с сервера")


Section:Item(
    "button",
    "ultra weapon",
    function()
local daun=game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Tool')
local cfg = daun:FindFirstChild('Configuration')
if cfg then
local sets = cfg:FindFirstChild('Settings')
if sets then
local edit = require(sets)
edit.Automatic=true
edit.Rate=0
end
end
local mem = daun:FindFirstChild('Memmory')
if mem then
local ammo = mem:FindFirstChild('Ammo')
if ammo then
ammo.Value=math.huge
end
end
    end
)
