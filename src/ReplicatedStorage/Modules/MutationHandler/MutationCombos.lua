-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:19
-- Luau version 6, Types version 3
-- Time taken: 0.003638 seconds

local module = {}
local function _(arg1) -- Line 12, Named "IsOrderCombo"
	local var2 = false
	if type(arg1) == "table" then
		if type(arg1.Order) ~= "table" then
			var2 = false
		else
			var2 = true
		end
	end
	return var2
end
local function HandleOrderCombo_upvr(arg1, arg2) -- Line 15, Named "HandleOrderCombo"
	for _, v in arg1.Order do
		if false then
			arg2:SetAttribute(v, nil)
		elseif arg2:GetAttribute(v) then
		end
	end
end
local function _(arg1) -- Line 35, Named "IsRequireCombo"
	local var5 = false
	if type(arg1) == "table" then
		if type(arg1.Requires) ~= "table" then
			var5 = false
		else
			var5 = true
		end
	end
	return var5
end
local function HandleRequireCombo_upvr(arg1, arg2) -- Line 38, Named "HandleRequireCombo"
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [32] 26. Error Block 10 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [32] 26. Error Block 10 end (CF ANALYSIS FAILED)
end
local function MakeTable(...) -- Line 94
	local module_upvr = {}
	local function flatten_upvr(arg1) -- Line 97, Named "flatten"
		--[[ Upvalues[2]:
			[1]: flatten_upvr (readonly)
			[2]: module_upvr (readonly)
		]]
		if typeof(arg1) == "table" then
			for _, v_2 in arg1 do
				flatten_upvr(v_2)
			end
		else
			table.insert(module_upvr, arg1)
		end
	end
	for _, v_3 in {...} do
		if typeof(v_3) == "table" then
			for _, v_4 in v_3 do
				flatten_upvr(v_4)
			end
		else
			table.insert(module_upvr, v_3)
		end
	end
	return module_upvr
end
local tbl = {"Drenched", "Wet"}
local tbl_2_upvr = {
	BestWet = {
		Order = tbl;
	};
	BestAmber = {
		Order = {"AncientAmber", "OldAmber", "Amber"};
	};
	BestCooked = {
		Order = {"Cooked", "Burnt"};
	};
	Frozen = {
		Requires = {tbl, {"Chilled"}};
		Results = {"Frozen"};
		ResultsOverwrite = MakeTable(tbl, "Chilled");
	};
	Paradisal = {
		Requires = {{"Verdant"}, {"Sundried"}};
		Results = {"Paradisal"};
		ResultsOverwrite = MakeTable("Verdant", "Sundried");
	};
	Clay = {
		Requires = {tbl, {"Sandy"}};
		Results = {"Clay"};
		ResultsOverwrite = MakeTable(tbl, "Sandy");
	};
	Ceramic = {
		Requires = {{"Clay"}, {"Burnt", "Fried", "Cooked", "Molten", "Sundried", "Meteoric", "Plasma"}};
		Results = {"Ceramic"};
		ResultsOverwrite = MakeTable("Burnt", "Fried", "Cooked", "Clay");
	};
	Tempestuous = {
		Requires = {{"Windstruck"}, {"Twisted"}};
		Results = {"Tempestuous"};
		ResultsOverwrite = MakeTable("Windstruck", "Twisted");
	};
}
function module.HandleCombos(arg1, arg2) -- Line 186
	--[[ Upvalues[3]:
		[1]: tbl_2_upvr (readonly)
		[2]: HandleOrderCombo_upvr (readonly)
		[3]: HandleRequireCombo_upvr (readonly)
	]]
	if not arg2 then
		warn("No Plant")
	else
		for var50, var51 in tbl_2_upvr do
			if not var51 then
				warn(`No comboData for {var50}`)
			else
				local var52 = false
				if type(var51) == "table" then
					if type(var51.Order) ~= "table" then
						var52 = false
					else
						var52 = true
					end
				end
				if var52 then
					HandleOrderCombo_upvr(var51, arg2)
				else
					local var53 = false
					if type(var51) == "table" then
						if type(var51.Requires) ~= "table" then
							var53 = false
						else
							var53 = true
						end
					end
					if var53 then
						HandleRequireCombo_upvr(var51, arg2)
					end
				end
			end
		end
	end
end
return module