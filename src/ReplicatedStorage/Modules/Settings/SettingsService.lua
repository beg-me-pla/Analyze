-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:47
-- Luau version 6, Types version 3
-- Time taken: 0.000572 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module = {}
local SettingsService_upvr = ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("SettingsService")
function module.SetSetting(arg1, arg2, arg3) -- Line 10
	--[[ Upvalues[1]:
		[1]: SettingsService_upvr (readonly)
	]]
	SettingsService_upvr:FireServer("SetSetting", arg2, arg3)
end
local DataService_upvr = require(ReplicatedStorage.Modules.DataService)
function module.GetSetting(arg1, arg2) -- Line 14
	--[[ Upvalues[1]:
		[1]: DataService_upvr (readonly)
	]]
	local any_GetData_result1 = DataService_upvr:GetData()
	if not any_GetData_result1 then return end
	return any_GetData_result1.Settings[arg2]
end
return module