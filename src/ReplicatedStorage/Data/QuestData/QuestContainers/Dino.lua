-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:42
-- Luau version 6, Types version 3
-- Time taken: 0.002354 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Quests = require(ReplicatedStorage.Data.QuestData.Quests)
local QuestRewards = require(ReplicatedStorage.Data.QuestData.QuestRewards)
local tbl_upvr_2 = {Quests.Plant:Use({
	Target = 100;
	Arguments = {"Carrot"};
}), Quests.Plant:Use({
	Target = 10;
	Arguments = {"Watermelon"};
}), Quests.Plant:Use({
	Target = 5;
	Arguments = {"Pumpkin"};
}), Quests.Plant:Use({
	Target = 25;
	Arguments = {"Bamboo"};
}), Quests.Plant:Use({
	Target = 1;
	Arguments = {"Mango"};
}), Quests.GrowPetToAge:Use({
	Target = 1;
	Arguments = {"Dog", "10"};
}), Quests.GrowPetToAge:Use({
	Target = 1;
	Arguments = {"Golden Lab", "10"};
}), Quests.GrowPetToAge:Use({
	Target = 1;
	Arguments = {"Bunny", "10"};
}), Quests.Harvest:Use({
	Target = 50;
	Arguments = {"Strawberry"};
}), Quests.Harvest:Use({
	Target = 150;
	Arguments = {"Blueberry"};
}), Quests.Harvest:Use({
	Target = 25;
	Arguments = {"Apple"};
}), Quests.Harvest:Use({
	Target = 10;
	Arguments = {"Coconut"};
}), Quests.Harvest:Use({
	Target = 5;
	Arguments = {"Dragon Fruit"};
}), Quests.Craft:Use({
	Target = 1;
	Arguments = {"Gear", "Lightning Rod"};
}), Quests.Craft:Use({
	Target = 1;
	Arguments = {"Gear", "Mutation Spray Amber"};
})}
local tbl_upvr = {QuestRewards["Seed Pack"]:Use({
	Amount = 1;
	Type = "Ancient Seed Pack";
}), QuestRewards["Cosmetic Crate"]:Use({
	Type = "Dino Crate";
	Amount = 1;
}), QuestRewards.Egg:Use({
	Type = "Dinosaur Egg";
	Amount = 1;
})}
return {
	Type = "Dino";
	CustomData = {
		PossibleQuests = tbl_upvr_2;
		PossibleRewards = tbl_upvr;
	};
	Display = function(arg1) -- Line 104, Named "Display"
		return "Dino Event Quests"
	end;
	Generate = function(arg1, arg2) -- Line 108, Named "Generate"
		--[[ Upvalues[2]:
			[1]: tbl_upvr_2 (readonly)
			[2]: tbl_upvr (readonly)
		]]
		local var41 = 1
		local table_create_result1 = table.create(var41)
		local var43
		if type(arg2) == "function" then
			var41 = arg2
			var41 = var41({
				type = "quests";
			})
		else
			var41 = table.clone(tbl_upvr_2)
		end
		local random_state = Random.new()
		random_state:Shuffle(var41)
		var43 = var41
		local popped = table.remove(var43, 1)
		if not popped then
			var43 = tbl_upvr_2
			popped = var43[random_state:NextInteger(1, #tbl_upvr_2)]
		end
		table_create_result1[1] = popped
		local module = {
			Quests = table_create_result1;
		}
		if type(arg2) == "function" then
			var43 = arg2
			var43 = var43({
				type = "rewards";
			})
		else
			var43 = {}
			var43[1] = tbl_upvr[random_state:NextInteger(1, #tbl_upvr)]
		end
		module.Rewards = var43
		return module
	end;
}