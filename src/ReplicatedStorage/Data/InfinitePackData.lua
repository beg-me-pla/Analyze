-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:44
-- Luau version 6, Types version 3
-- Time taken: 0.003716 seconds

local tbl_upvr = {
	Free = {{
		Name = "50\xA2";
		Coins = 50;
		Chance = 0.3333333333333333;
		Icon = "rbxassetid://111559087552483";
		Color = Color3.new(1, 1, 0);
	}, {
		Name = "100\xA2";
		Coins = 50;
		Chance = 0.3333333333333333;
		Icon = "rbxassetid://84541528477238";
		Color = Color3.new(1, 1, 0);
	}, {
		Name = "Watering Can X1";
		Coins = 25;
		Chance = 0.3333333333333333;
		Icon = "rbxassetid://108707176647018";
		Color = Color3.new(0.666667, 0.666667, 0.666667);
	}};
	Paid = {{
		Name = "Super Seed";
		Chance = 5;
		Icon = "rbxassetid://119802391042790";
		Color = Color3.new(1, 0, 0);
	}, {
		Name = "Apple Seed";
		Chance = 20;
		Icon = "rbxassetid://128318449902634";
		Color = Color3.new(0, 1, 0);
	}, {
		Name = "500\xA2";
		Chance = 20;
		Icon = "rbxassetid://94889540639216";
		Color = Color3.new(1, 1, 0);
	}, {
		Name = "1,000\xA2";
		Chance = 20;
		Icon = "rbxassetid://123750064988458";
		Color = Color3.new(1, 1, 0);
	}, {
		Name = "2,000\xA2";
		Chance = 20;
		Icon = "rbxassetid://71146286015050";
		Color = Color3.new(1, 1, 0);
	}, {
		Name = "Watering Can X1";
		Chance = 25;
		Icon = "rbxassetid://108707176647018";
		Color = Color3.new(0.666667, 0.666667, 0.666667);
	}, {
		Name = "Watering Can X3";
		Chance = 10;
		Icon = "rbxassetid://70390145378562";
		Color = Color3.new(0.666667, 0.666667, 0.666667);
	}, {
		Name = "Watering Can X5";
		Chance = 5;
		Icon = "rbxassetid://73981405252852";
		Color = Color3.new(0.666667, 0.666667, 0.666667);
	}, {
		Name = "Watering Can X10";
		Chance = 3;
		Icon = "rbxassetid://106733159472445";
		Color = Color3.new(0.666667, 0.666667, 0.666667);
	}};
}
local tbl_upvr_2 = {{3250226689, 15}, {3250227730, 25}, {3250228324, 40}, {3250229031, 70}, {3250229162, math.huge}}
if game.PlaceId ~= 140398800602847 then
else
end
local WeightRandom_upvr = require(game:GetService("ReplicatedStorage").Modules.WeightRandom)
return {
	Rewards = tbl_upvr;
	GetRewards = function(arg1, arg2) -- Line 119, Named "GetRewards"
		--[[ Upvalues[3]:
			[1]: WeightRandom_upvr (readonly)
			[2]: tbl_upvr_2 (readonly)
			[3]: tbl_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local var25 = 1
		local var26
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [44] 35. Error Block 26 start (CF ANALYSIS FAILED)
		if 0 == 0 then
			var26 = tbl_upvr.Free
		else
			var26 = tbl_upvr.Paid
		end
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [55.7]
		table.create(arg2)[var25] = nil(var26, Random.new(arg1))
		-- KONSTANTERROR: [44] 35. Error Block 26 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [12] 11. Error Block 24 start (CF ANALYSIS FAILED)
		if var25 == 1 then
			-- KONSTANTWARNING: GOTO [45] #36
		end
		-- KONSTANTERROR: [12] 11. Error Block 24 end (CF ANALYSIS FAILED)
	end;
	GetProductFor = function(arg1) -- Line 99, Named "GetProductFor"
		--[[ Upvalues[1]:
			[1]: tbl_upvr_2 (readonly)
		]]
		if arg1 == 1 then
			return 0
		end
		if arg1 ~= 2 and math.max(arg1 - 2, 0) % 5 ~= 0 then
			return 0
		end
		for _, v in tbl_upvr_2 do
			if arg1 < v[2] then
				return v[1]
			end
		end
		return 0
	end;
	FallbackPrices = {-- : First try: K:0: attempt to index nil with 't'
;
}