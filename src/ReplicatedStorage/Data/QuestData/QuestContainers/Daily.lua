-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:42
-- Luau version 6, Types version 3
-- Time taken: 0.001680 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Quests = require(ReplicatedStorage.Data.QuestData.Quests)
local QuestRewards = require(ReplicatedStorage.Data.QuestData.QuestRewards)
local tbl_upvr_2 = {Quests.Plant:Use({
	Target = 100;
	Arguments = {"Carrot"};
}), Quests.Plant:Use({
	Target = 5;
	Arguments = {"Watermelon"};
}), Quests.Plant:Use({
	Target = 5;
	Arguments = {"Pumpkin"};
}), Quests.Harvest:Use({
	Target = 50;
	Arguments = {"Strawberry"};
}), Quests.Harvest:Use({
	Target = 100;
	Arguments = {"Blueberry"};
}), Quests.Harvest:Use({
	Target = 25;
	Arguments = {"Apple"};
}), Quests.Harvest:Use({
	Target = 3;
	Arguments = {"Dragon Fruit"};
}), Quests.EarnSheckles:Use({
	Target = 25000;
})}
local tbl_upvr = {QuestRewards["Seed Pack"]:Use({
	Amount = 1;
}), QuestRewards["Seed Pack"]:Use({
	Amount = 2;
}), QuestRewards["Seed Pack"]:Use({
	Amount = 3;
})}
return {
	Type = "Daily";
	Display = function(arg1) -- Line 61, Named "Display"
		return "Daily Quests"
	end;
	Generate = function(arg1) -- Line 65, Named "Generate"
		--[[ Upvalues[2]:
			[1]: tbl_upvr_2 (readonly)
			[2]: tbl_upvr (readonly)
		]]
		local random_state = Random.new()
		local table_create_result1 = table.create(3)
		local clone = table.clone(tbl_upvr_2)
		random_state:Shuffle(clone)
		for i = 1, 3 do
			local popped = table.remove(clone, 1)
			if not popped then
				popped = tbl_upvr_2[random_state:NextInteger(1, #tbl_upvr_2)]
			end
			table_create_result1[i] = popped
		end
		return {
			Quests = table_create_result1;
			Rewards = {tbl_upvr[random_state:NextInteger(1, #tbl_upvr)]};
		}
	end;
}