-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:33
-- Luau version 6, Types version 3
-- Time taken: 0.001187 seconds

local Util_upvr = require(script.Parent.Parent.Shared.Util)
local module_upvr = {}
for _, v in game:GetService("ReplicatedStorage").Assets.Models.SprayBottles:GetChildren() do
	table.insert(module_upvr, v.Name)
end
local tbl_upvr = {
	Transform = function(arg1) -- Line 14, Named "Transform"
		--[[ Upvalues[2]:
			[1]: Util_upvr (readonly)
			[2]: module_upvr (readonly)
		]]
		return Util_upvr.MakeFuzzyFinder(module_upvr)(arg1)
	end;
	Validate = function(arg1) -- Line 20, Named "Validate"
		local var11
		if 0 >= #arg1 then
			var11 = false
		else
			var11 = true
		end
		return var11, "No spray could be found."
	end;
	Autocomplete = function(arg1) -- Line 24, Named "Autocomplete"
		--[[ Upvalues[1]:
			[1]: Util_upvr (readonly)
		]]
		return Util_upvr.GetNames(arg1)
	end;
	Parse = function(arg1) -- Line 28, Named "Parse"
		return arg1[1]
	end;
	Default = function(arg1) -- Line 32, Named "Default"
		return "Common"
	end;
	ArgumentOperatorAliases = {
		me = '.';
		all = '*';
		others = "**";
		random = '?';
	};
}
return function(arg1) -- Line 44
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	arg1:RegisterType("spraybottletype", tbl_upvr)
end