repeat wait() until game:IsLoaded() and game.Players and game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Zack's Cool Hub | Southwest Florida", HidePremium = true, IntroText = "Yall fuckin with the script? lmao", SaveConfig = false, ConfigFolder = "SWFL"})
local Home = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local HomeSection = Home:AddSection({
	Name = "Main"
})
wait()
function CheckKick()
warn("Watching the client for Kick Message... (is auto watching for Kick Message)")
end
wait()
game:GetService("GuiService").ErrorMessageChanged:Connect(function(msg)
if game.GuiService:GetErrorCode() == Enum.ConnectionError.DisconnectLuaKick then
_G.CheckKick = false
wait(0.2)
warn("Detected Kick, Rejoining...")
wait()
local TeleportService = game:GetService("TeleportService")
TeleportService:Teleport(game.PlaceId, game.Players.LocalPlayer)
wait()
TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
end
end)
wait()
Home:AddButton({
Name = "Mod Car",
Callback = function()
function getCar()
    for i, v in pairs(game:GetService("Workspace")["Cars"]:GetChildren()) do
        if v.PlayerLoc.Value == game:GetService("Players").LocalPlayer then
            return v
        end
    end
end

for i,v in pairs(game:GetService("Workspace").Cars:GetDescendants()) do 
if v:IsA("ModuleScript") and v.Name == "A-Chassis Tune" then
local a = require(v) 
a.Weight = 1250
a.SpeedEngage = 200000
a.BrakeForce = 100000
a.Turbochargers = 10
a.Superchargers = 10
a.RevAccel = 5000
a.SteeerMaxTorque = 1000001

for i,v in pairs(a) do print(i,v) end end end

if not getCar() or getCar() == nil then
function Callback(answer)
    if answer == "Ok" then
        game.StarterGui:SetCore("SendNotification", {
        Title = "RETURNED RESPONSE __Ok__";
        Text = "__Ok__";
        Duration = 10;
        })
    elseif answer == "Nevermind" then
        game.StarterGui:SetCore("SendNotification", {
        Title = "RETURNED RESPONSE __Nevermind__";
        Text = "__Nevermind__";
        Duration = 10;
        })
    end
end

local Bindable = Instance.new("BindableFunction")
Bindable.OnInvoke = Callback

game.StarterGui:SetCore("SendNotification", {
    Title = "Spawn a car first";
    Text = "Please spawn a car before pressing this!";
    Duration = "30";
    Button1 = "Ok";
    Button2 = "Nevermind";
    Callback = Bindable
})
end
end})

Home:AddButton({
Name = "Inf Yield",
Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end})

Home:AddButton({
Name = "Full Anti-Cheat Bypass (gun mods, might break damage?)",
Callback = function()
if game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SecureSettings") then
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SecureSettings"):Destroy()
wait()
if game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SecureSettings") == nil then
return print("game.ReplicatedStorage.Remotes.SecureSettings | RemoteEvent = nil")
end
end
wait()
if game:GetService("ReplicatedStorage"):WaitForChild("ExploitService") then
game:GetService("ReplicatedStorage"):WaitForChild("ExploitService"):Destroy()
wait()
if game:GetService("ReplicatedStorage"):WaitForChild("ExploitService") == nil then
return print("game.ReplicatedStorage.ExploitService | RemoteEvent = nil")
end
end
wait()
if game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("RemoteHandler") then -- Only reason I have put this here is because SecureSettings fires from this Module
game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("RemoteHandler"):Destroy()
wait()
if game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("RemoteHandler") == nil then
return print("game.ReplicatedStorage.Modules.RemoteHandler | Module = nil")
end
end
end})

Home:AddToggle({
Name = "Break apartment when touched (break on touch)",
Default = false,
Callback = function(breaking)
if breaking then
getgenv().looping = true
while getgenv().looping == true do
wait()
for _,v in pairs(game:GetService("Workspace"):WaitForChild("HouseSystem"):WaitForChild("HouseLots"):WaitForChild("type3Lot"):WaitForChild("fDoor"):GetDescendants()) do
if v:IsA("TouchTransmitter") then
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), v.Parent, 0)
wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), v.Parent, 1)
wait()
game:GetService("Workspace"):WaitForChild("HouseSystem"):WaitForChild("HouseLots"):WaitForChild("type3Lot"):WaitForChild("homeOwnerEvent"):FireServer(false)
end
end
wait()
for _,v in pairs(game:GetService("Workspace"):WaitForChild("HouseSystem"):WaitForChild("HouseLots"):WaitForChild("type4Lot"):WaitForChild("fDoor"):GetDescendants()) do
if v:IsA("TouchTransmitter") then
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), v.Parent, 0)
wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), v.Parent, 1)
wait()
game:GetService("Workspace"):WaitForChild("HouseSystem"):WaitForChild("HouseLots"):WaitForChild("type4Lot"):WaitForChild("homeOwnerEvent"):FireServer(false)
end
end
wait()
for _,v in pairs(game:GetService("Workspace"):WaitForChild("HouseSystem"):WaitForChild("HouseLots"):WaitForChild("type5Lot"):WaitForChild("fDoor"):GetDescendants()) do
if v:IsA("TouchTransmitter") then
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), v.Parent, 0)
wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), v.Parent, 1)
wait()
game:GetService("Workspace"):WaitForChild("HouseSystem"):WaitForChild("HouseLots"):WaitForChild("type5Lot"):WaitForChild("homeOwnerEvent"):FireServer(false)
end
end
wait()
for _,v in pairs(game:GetService("Workspace"):WaitForChild("HouseSystem"):WaitForChild("HouseLots"):WaitForChild("type6Lot"):WaitForChild("fDoor"):GetDescendants()) do
if v:IsA("TouchTransmitter") then
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), v.Parent, 0)
wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), v.Parent, 1)
wait()
game:GetService("Workspace"):WaitForChild("HouseSystem"):WaitForChild("HouseLots"):WaitForChild("type6Lot"):WaitForChild("homeOwnerEvent"):FireServer(false)
end
end
wait()
for _,v in pairs(game:GetService("Workspace"):WaitForChild("HouseSystem"):WaitForChild("HouseLots"):WaitForChild("type7Lot"):WaitForChild("fDoor"):GetDescendants()) do
if v:IsA("TouchTransmitter") then
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), v.Parent, 0)
wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), v.Parent, 1)
wait()
game:GetService("Workspace"):WaitForChild("HouseSystem"):WaitForChild("HouseLots"):WaitForChild("type7Lot"):WaitForChild("homeOwnerEvent"):FireServer(false)
end
end
wait()
for _,v in pairs(game:GetService("Workspace"):WaitForChild("HouseSystem"):WaitForChild("HouseLots"):WaitForChild("type8Lot"):WaitForChild("fDoor"):GetDescendants()) do
if v:IsA("TouchTransmitter") then
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), v.Parent, 0)
wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), v.Parent, 1)
wait()
game:GetService("Workspace"):WaitForChild("HouseSystem"):WaitForChild("HouseLots"):WaitForChild("type8Lot"):WaitForChild("homeOwnerEvent"):FireServer(false)
end
end
wait()
for _,v in pairs(game:GetService("Workspace"):WaitForChild("HouseSystem"):WaitForChild("HouseLots"):WaitForChild("type9Lot"):WaitForChild("fDoor"):GetDescendants()) do
if v:IsA("TouchTransmitter") then
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), v.Parent, 0)
wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), v.Parent, 1)
wait()
game:GetService("Workspace"):WaitForChild("HouseSystem"):WaitForChild("HouseLots"):WaitForChild("type9Lot"):WaitForChild("homeOwnerEvent"):FireServer(false)
end
end
end
else
getgenv().looping = false
end
end})

Home:AddButton({
Name = "Mod G17 (Police Gun)",
Callback = function()
local Team = game:GetService("Teams")["Police"]

function ChangeTeam()
    game:GetService("ReplicatedStorage"):WaitForChild("changeTeam"):FireServer(BrickColor.new(23))
    wait(0.2)
    for i = 1, 5 do
    game:GetService("ReplicatedStorage"):WaitForChild("loadCharRemote"):FireServer()
    end
    wait(1)
    function Callback(answer)
    if answer == "Ok" then
        game.StarterGui:SetCore("SendNotification", {
        Title = "RETURNED RESPONSE __Ok__";
        Text = "__Ok__";
        Duration = 10;
        })
    elseif answer == "Alright" then
        game.StarterGui:SetCore("SendNotification", {
        Title = "RETURNED RESPONSE __Alright__";
        Text = "__Alright__";
        Duration = 10;
        })
    end
end

local Bindable = Instance.new("BindableFunction")
Bindable.OnInvoke = Callback

game.StarterGui:SetCore("SendNotification", {
    Title = "Alert:";
    Text = "Press Mod G17 again to mod the G17";
    Duration = "30";
    Button1 = "Ok";
    Button2 = "Alright";
    Callback = Bindable
})
end

if game.Players.LocalPlayer.Team ~= Team then
ChangeTeam()
end
wait()
local Team = game.Players.LocalPlayer.Team
local Tool = game.Players.LocalPlayer.Backpack:FindFirstChild("G17")
if game.Players.LocalPlayer.Team == Team then
Tool.Parent = game.Players.LocalPlayer.Character
wait(0.2)
local sus = require(Tool.Setting)
sus.AutoFire = true
sus.FireRate = 0.00001
sus.MaxAmmo = 9e9
sus.Recoil =  0.00001
sus.Ammo = 9e9
sus.AmmoPerMag = 9e9
sus.FlamingBullet = true
sus.ExplosiveEnabled = true
sus.LimitedAmmoEnabled = false
wait()
local function pressKey(key)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, key, false, game.Players.LocalPlayer.Character:FindFirstChild("G17"))
end
wait()
pressKey(Enum.KeyCode.R)
end
end})

Home:AddButton({
Name = "Mod M9 (Criminal Gun)",
Callback = function()
local TeamCrim = game:GetService("Teams")["Criminal"]

function ChangeTeam()
    game:GetService("ReplicatedStorage"):WaitForChild("changeTeam"):FireServer(BrickColor.new(21))
    wait(0.2)
    for i = 1, 5 do
    game:GetService("ReplicatedStorage"):WaitForChild("loadCharRemote"):FireServer()
    end
    wait(1)
function Callback(answer)
    if answer == "Ok" then
        game.StarterGui:SetCore("SendNotification", {
        Title = "RETURNED RESPONSE __Ok__";
        Text = "__Ok__";
        Duration = 10;
        })
    elseif answer == "Alright" then
        game.StarterGui:SetCore("SendNotification", {
        Title = "RETURNED RESPONSE __Nevermind__";
        Text = "__Nevermind__";
        Duration = 10;
        })
    end
end

local Bindable = Instance.new("BindableFunction")
Bindable.OnInvoke = Callback

game.StarterGui:SetCore("SendNotification", {
    Title = "Alert:";
    Text = "Press Mod M9 again to mod the M9";
    Duration = "30";
    Button1 = "Ok";
    Button2 = "Alright";
    Callback = Bindable
})
end

if game.Players.LocalPlayer.Team ~= TeamCrim then
ChangeTeam()
end
wait()
local Tool = game.Players.LocalPlayer.Backpack:FindFirstChild("M9")
if game.Players.LocalPlayer.Team == TeamCrim then
Tool.Parent = game.Players.LocalPlayer.Character
wait(0.2)
local sus = require(Tool.Setting)
sus.AutoFire = true
sus.FireRate = 0.00001
sus.MaxAmmo = 9e9
sus.Recoil =  0.00001
sus.Ammo = 9e9
sus.AmmoPerMag = 9e9
sus.FlamingBullet = true
sus.ExplosiveEnabled = true
sus.LimitedAmmoEnabled = false
wait()
local function pressKey(key)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, key, false, game.Players.LocalPlayer.Character:FindFirstChild("M9"))
end
wait()
pressKey(Enum.KeyCode.R)
end
end})
CheckKick()
