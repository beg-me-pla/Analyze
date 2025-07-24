-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:40
-- Luau version 6, Types version 3
-- Time taken: 0.001038 seconds

local module = {
	Type = "Plant";
}
local SeedData_upvr = require(game:GetService("ReplicatedStorage").Data.SeedData)
function module.Display(arg1, arg2, arg3, arg4) -- Line 12
	--[[ Upvalues[1]:
		[1]: SeedData_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	assert(arg4, "Quest Plant doesn't have an argument.")
	local var4 = SeedData_upvr[arg4[1]]
	local module_2 = {}
	local var6
	if var4 then
		var6 = var4.SeedName
	else
		var6 = arg4[1]
	end
	if 1 < arg3 then
	else
	end
	module_2.Title = `Plant {arg3} {var6}{""}`
	var6 = arg3
	module_2.Bar = `{arg2}/{var6}`
	return module_2
end
function module.Use(arg1, arg2) -- Line 23
	assert(arg2.Arguments, "Plant quests needs arguments.")
	local clone = table.clone(arg2)
	clone.Type = arg1.Type
	return clone
end
return module