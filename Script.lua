--// Variables

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local LookingFor = "DailyCoin"
local Coins = {}

--// Script

for _, v in next, game:GetDescendants() do
    if string.find(string.lower(v.Name), string.lower(LookingFor)) then
        if v:IsA("Part") then
            table.insert(Coins, 1, v)
        end
    end
end

for i = 1, #Coins do
    print("Doing "..tostring(i).."... [ "..tostring(i).." / "..tostring(#Coins).." ] - "..Coins[i].Name)
    
    for _ = 1, 3 do
        LocalPlayer.Character.HumanoidRootPart.CFrame = Coins[i].CFrame; wait(0.05)
    end
end

LocalPlayer.Character:MoveTo(Vector3.new(213, 3, 903))
LocalPlayer.Character.Humanoid.Jump = true; LocalPlayer.Character.Sit = true

--// Exunys
