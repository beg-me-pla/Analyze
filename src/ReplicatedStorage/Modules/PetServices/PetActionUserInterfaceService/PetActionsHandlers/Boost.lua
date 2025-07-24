-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:42
-- Luau version 6, Types version 3
-- Time taken: 0.001777 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local module = {
	Verifier = function(arg1) -- Line 14, Named "Verifier"
		--[[ Upvalues[1]:
			[1]: LocalPlayer_upvr (readonly)
		]]
		local Character = LocalPlayer_upvr.Character
		if not Character then
			warn("No Character? how?")
			return
		end
		if not Character:FindFirstChildWhichIsA("Tool") then return end
		local var6 = false
		if arg1:GetAttribute("OWNER") == LocalPlayer_upvr.Name then
			var6 = Character:FindFirstChildWhichIsA("Tool"):HasTag("PetBoost")
		end
		return var6
	end;
}
local Notification_upvr = require(ReplicatedStorage.Modules.Notification)
local PetBoostService_upvr = ReplicatedStorage.GameEvents.PetBoostService
function module.Activate(arg1) -- Line 23
	--[[ Upvalues[3]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: Notification_upvr (readonly)
		[3]: PetBoostService_upvr (readonly)
	]]
	local Character_2 = LocalPlayer_upvr.Character
	if not Character_2 then
		warn("No Character? how?")
	else
		local class_Tool = Character_2:FindFirstChildWhichIsA("Tool")
		if not class_Tool then
			return Notification_upvr:CreateNotification("You are not holding a pet boost!")
		end
		if not class_Tool:HasTag("PetBoost") then
			return Notification_upvr:CreateNotification("You are not holding a pet boost!")
		end
		PetBoostService_upvr:FireServer("ApplyBoost", arg1:GetAttribute("UUID"))
	end
end
return module