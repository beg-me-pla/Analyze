-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:49
-- Luau version 6, Types version 3
-- Time taken: 0.002858 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local SeedPackData = require(ReplicatedStorage_upvr.Data.SeedPackData)
return {
	PREMIUM_PRIMAL_EGG = {
		Products = {3330286154, -- : First try: K:0: attempt to index nil with 't'
;
		GiftProducts = {3330286152, -- : First try: K:0: attempt to index nil with 't'
;
		FallbackPrices = {149, -- : First try: K:0: attempt to index nil with 't'
;
		Title = "PREMIUM PRIMAL EGG!";
		Vector = "rbxassetid://112681877773906";
		VectorPosition = UDim2.fromScale(0.111, 0.613);
		VectorSize = UDim2.fromScale(0.31, 0.942);
		Display = "Egg";
		DisplayPlural = "Eggs";
		BackgroundImage = "rbxassetid://78289594972654";
		Items = (function() -- Line 70
			--[[ Upvalues[1]:
				[1]: ReplicatedStorage_upvr (readonly)
			]]
			local PetRegistry = require(ReplicatedStorage_upvr.Data.PetRegistry)
			local module = {}
			for i, v in PetRegistry.PetEggs["Premium Primal Egg"].RarityData.Items do
				local tbl = {}
				local ItemOdd = v.ItemOdd
				tbl.Chance = ItemOdd
				tbl.RewardId = i
				if i == "Egg/Rainbow Premium Primal Egg" then
					ItemOdd = PetRegistry.PetEggs["Rainbow Premium Primal Egg"].Icon or ""
				else
					local function INLINED() -- Internal function, doesn't exist in bytecode
						ItemOdd = PetRegistry.PetList[i].Icon
						return ItemOdd
					end
					if not PetRegistry.PetList[i] or not INLINED() then
						ItemOdd = ""
					end
				end
				tbl.Icon = ItemOdd
				table.insert(module, tbl)
			end
			table.sort(module, function(arg1, arg2) -- Line 83
				local var17
				if arg1.RewardId == "Egg/Rainbow Premium Primal Egg" then
					return false
				end
				local Chance = arg1.Chance
				local Chance_2 = arg2.Chance
				if Chance == Chance_2 then
					if arg2.RewardId >= arg1.RewardId then
						var17 = false
					else
						var17 = true
					end
					return var17
				end
				if Chance_2 >= Chance then
					var17 = false
				else
					var17 = true
				end
				return var17
			end)
			return module
		end)();
		BiggerTemplateIndex = 6;
		MidTemplateIndex = 4;
		ReleaseTime = DateTime.fromUniversalTime(2025, 7, 12, 14);
		EndTime = DateTime.fromUniversalTime(2025, 7, 26, 14);
	};
	EXOTIC_ANCIENT_SEED_PACK = {
		Products = {3323657553, -- : First try: K:0: attempt to index nil with 't'
;
		GiftProducts = {3323657555, -- : First try: K:0: attempt to index nil with 't'
;
		FallbackPrices = {199, -- : First try: K:0: attempt to index nil with 't'
;
		Title = "EXOTIC ANCIENT SEED PACK!";
		Vector = "rbxassetid://100278857532353";
		VectorPosition = UDim2.fromScale(0.1, 0.8);
		VectorSize = UDim2.fromScale(0.3, 0.8);
		Display = "Pack";
		DisplayPlural = "Packs";
		BackgroundImage = "rbxassetid://138776814412466";
		Items = SeedPackData.Packs["Exotic Ancient Seed Pack"].Items;
		BiggerTemplateIndex = 6;
		MidTemplateIndex = 4;
		ReleaseTime = DateTime.fromUniversalTime(2025, 7, 5, 14);
		EndTime = DateTime.fromUniversalTime(2025, 7, 19, 14);
	};
	EXOTIC_ZEN_SEED_PACK = {
		Products = {3338826792, -- : First try: K:0: attempt to index nil with 't'
;
		GiftProducts = {3338826788, -- : First try: K:0: attempt to index nil with 't'
;
		FallbackPrices = {199, -- : First try: K:0: attempt to index nil with 't'
;
		Title = "EXOTIC ZEN SEED PACK!";
		Vector = "rbxassetid://99196344563746";
		VectorPosition = UDim2.fromScale(0.1, 0.8);
		VectorSize = UDim2.fromScale(0.3, 0.8);
		Display = "Pack";
		DisplayPlural = "Packs";
		BackgroundImage = "rbxassetid://138776814412466";
		Items = SeedPackData.Packs["Exotic Zen Seed Pack"].Items;
		BiggerTemplateIndex = 6;
		MidTemplateIndex = 4;
		ReleaseTime = DateTime.fromUniversalTime(2025, 7, 19, 14);
		EndTime = DateTime.fromUniversalTime(2025, 7, 26, 14);
	};
}