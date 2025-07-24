-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:39
-- Luau version 6, Types version 3
-- Time taken: 0.001632 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local PetRegistry = require(ReplicatedStorage.Data.PetRegistry)
local PetList_upvr = PetRegistry.PetList
local SeedData_upvr = require(ReplicatedStorage.Data.SeedData)
local EventGearData_upvr = require(ReplicatedStorage.Data.EventGearData)
local GearData_upvr = require(ReplicatedStorage.Data.GearData)
local SeedPackData_upvr = require(ReplicatedStorage.Data.SeedPackData)
local PetEggs_upvr = PetRegistry.PetEggs
local CosmeticCrates_upvr = require(ReplicatedStorage.Data.CosmeticCrateRegistry).CosmeticCrates
local CosmeticList_upvr = require(ReplicatedStorage.Data.CosmeticRegistry).CosmeticList
function FindItemImage(arg1, arg2) -- Line 21
	--[[ Upvalues[8]:
		[1]: PetList_upvr (readonly)
		[2]: SeedData_upvr (readonly)
		[3]: EventGearData_upvr (readonly)
		[4]: GearData_upvr (readonly)
		[5]: SeedPackData_upvr (readonly)
		[6]: PetEggs_upvr (readonly)
		[7]: CosmeticCrates_upvr (readonly)
		[8]: CosmeticList_upvr (readonly)
	]]
	if arg2 == "Pet" then
		return PetList_upvr[arg1].Icon
	end
	if arg2 == "Seed" then
		local var11 = SeedData_upvr[arg1]
		if not var11 then
			return "rbxassetid://6937742258"
		end
		return var11.Asset
	end
	if arg2 == "Holdable" then
		local var12 = SeedData_upvr[arg1]
		if not var12 then
			return "rbxassetid://6937742258"
		end
		return var12.FruitIcon
	end
	if arg2 == "Gear" or arg2 == "Sprinkler" or arg2 == "Favorite Tool" or arg2 == "FriendshipPot" or arg2 == "Harvest Tool" or arg2 == "Lightning Rod" or arg2 == "Nectar Staff" or arg2 == "Night Staff" or arg2 == "Pollen Radar" or arg2 == "Recall Wrench" or arg2 == "SprayBottle" or arg2 == "Star Caller" or arg2 == "Trowel" or arg2 == "Watering Can" or arg2 == "Tranquil Radar" then
		var12 = EventGearData_upvr[arg1]
		local var13 = var12
		if not var13 then
			var13 = GearData_upvr[arg1]
		end
		return var13.Asset
	end
	if arg2 == "Seed Pack" then
		return SeedPackData_upvr.Packs[arg1].Icon
	end
	if arg2 == "PetEgg" or arg2 == "Egg" then
		local var14 = PetEggs_upvr[arg1]
		if not var14 then
			return "rbxassetid://6937742258"
		end
		return var14.Icon
	end
	if arg2 == "CosmeticCrate" or arg2 == "Crate" then
		return CosmeticCrates_upvr[arg1].Icon
	end
	if arg2 == "Cosmetic" then
		return CosmeticList_upvr[arg1].Icon
	end
	warn(`No image found for {arg1} of item type {arg2}`)
	return "rbxassetid://6937742258"
end
return FindItemImage