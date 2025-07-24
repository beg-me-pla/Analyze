-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:10
-- Luau version 6, Types version 3
-- Time taken: 0.001182 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local DataService_upvr = require(ReplicatedStorage.Modules.DataService)
local module = {}
local Quests_upvr = require(ReplicatedStorage.Data.QuestData.Quests)
function module.GetQuest(arg1, arg2) -- Line 31
	--[[ Upvalues[1]:
		[1]: Quests_upvr (readonly)
	]]
	return Quests_upvr[arg2]
end
local QuestRewards_upvr = require(ReplicatedStorage.Data.QuestData.QuestRewards)
function module.GetRewardInfo(arg1, arg2) -- Line 35
	--[[ Upvalues[1]:
		[1]: QuestRewards_upvr (readonly)
	]]
	return QuestRewards_upvr[arg2]
end
function module.GetContainerFromId(arg1, arg2) -- Line 39
	--[[ Upvalues[1]:
		[1]: DataService_upvr (readonly)
	]]
	local any_GetData_result1 = DataService_upvr:GetData()
	if not any_GetData_result1 then
		return nil
	end
	return any_GetData_result1.QuestContainers[arg2]
end
function module.GetQuestFromId(arg1, arg2) -- Line 48
	--[[ Upvalues[1]:
		[1]: DataService_upvr (readonly)
	]]
	local any_GetData_result1_2 = DataService_upvr:GetData()
	if not any_GetData_result1_2 then
		return nil
	end
	for i, v in any_GetData_result1_2.QuestContainers do
		for _, v_2 in v.Quests do
			if v_2.Id == i then
				return v_2
			end
		end
	end
	return nil
end
return module