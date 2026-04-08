local NameToLookFor = "__ERADICATORKIT_25"; -- __ERADICATORKIT_25

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

for _, v in pairs(LocalPlayer.Character:GetChildren()) do
    if v:IsA("Folder") and v.Name == NameToLookFor then
        print(v.Name)
        for _, v2 in pairs(v:GetDescendants()) do
            if not v2:IsA("Folder") then
                print(v2.Name + " X")
                v2:Destroy()
            end
        end
    end
end
