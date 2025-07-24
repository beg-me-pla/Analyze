-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:30
-- Luau version 6, Types version 3
-- Time taken: 0.000993 seconds

local Util_upvr = require(script.Parent.Parent.Shared.Util)
local tbl_upvr = {}
local Players_upvr = game:GetService("Players")
function tbl_upvr.Transform(arg1) -- Line 5
	--[[ Upvalues[2]:
		[1]: Util_upvr (readonly)
		[2]: Players_upvr (readonly)
	]]
	return Util_upvr.MakeFuzzyFinder(Players_upvr:GetPlayers())(arg1)
end
function tbl_upvr.Validate(arg1) -- Line 11
	local var4
	if 0 >= #arg1 then
		var4 = false
	else
		var4 = true
	end
	return var4, "No player with that name could be found."
end
function tbl_upvr.Autocomplete(arg1) -- Line 15
	--[[ Upvalues[1]:
		[1]: Util_upvr (readonly)
	]]
	return Util_upvr.GetNames(arg1)
end
function tbl_upvr.Parse(arg1) -- Line 19
	return arg1[1]
end
function tbl_upvr.Default(arg1) -- Line 23
	return arg1.Name
end
tbl_upvr.ArgumentOperatorAliases = {
	me = '.';
	all = '*';
	others = "**";
	random = '?';
}
return function(arg1) -- Line 35
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: Util_upvr (readonly)
	]]
	arg1:RegisterType("player", tbl_upvr)
	arg1:RegisterType("players", Util_upvr.MakeListableType(tbl_upvr, {
		Prefixes = "% teamPlayers";
	}))
end