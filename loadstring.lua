local playerservice = game:GetService("Players")
local lplr = game:GetService("Players").LocalPlayer

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "A Universal Time", HidePremium = false, SaveConfig = false, IntroEnabled = false})


--tabs
local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab2 = Window:MakeTab({
	Name = "Universal",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

UniversalTime = {
    local ResetCharacterRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("ResetCharacter")
}

function kill()
	LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Dead)

	UniversalTime.ResetCharacterRemote:FireServer()
end

Tab2:AddToggle({
	Name = "AutoDeath",
	Default = false,
	Callback = function()
		while true do
            kill()
        end
	end    
})