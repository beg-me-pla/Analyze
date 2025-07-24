-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:31
-- Luau version 6, Types version 3
-- Time taken: 0.000756 seconds

local module = {}
local any_new_result1_upvr = require(game.ReplicatedStorage.Modules.WeightedTable).new()
function module.AddSkybox(arg1, arg2) -- Line 7
	--[[ Upvalues[1]:
		[1]: any_new_result1_upvr (readonly)
	]]
	any_new_result1_upvr:Add(arg1, arg2 or 0)
end
function module.UpdateSkybox(arg1, arg2) -- Line 12
	--[[ Upvalues[1]:
		[1]: any_new_result1_upvr (readonly)
	]]
	any_new_result1_upvr:SetWeight(arg1, arg2)
end
local var3_upvw
module.AddSkybox(game.Lighting.Cartoon, 1)
any_new_result1_upvr.OnUpdate:Connect(function() -- Line 18, Named "checkSkyboxes"
	--[[ Upvalues[2]:
		[1]: any_new_result1_upvr (readonly)
		[2]: var3_upvw (read and write)
	]]
	local any_GetHighestObject_result1, any_GetHighestObject_result2 = any_new_result1_upvr:GetHighestObject()
	if var3_upvw then
		var3_upvw.Parent = script
	end
	var3_upvw = any_GetHighestObject_result1
	var3_upvw.Parent = game.Lighting
end)
local any_GetHighestObject_result1_2, _ = any_new_result1_upvr:GetHighestObject()
if var3_upvw then
	var3_upvw.Parent = script
end
var3_upvw = any_GetHighestObject_result1_2
var3_upvw.Parent = game.Lighting
return module