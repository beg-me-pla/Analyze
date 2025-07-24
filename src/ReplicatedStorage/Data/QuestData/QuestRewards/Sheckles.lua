-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:39
-- Luau version 6, Types version 3
-- Time taken: 0.000998 seconds

local module_2 = {
	Type = "Sheckles";
}
local Comma_Module_upvr = require(game:GetService("ReplicatedStorage").Comma_Module)
function module_2.Display(arg1, arg2) -- Line 13
	--[[ Upvalues[1]:
		[1]: Comma_Module_upvr (readonly)
	]]
	return `+{Comma_Module_upvr.Comma(arg2.Data.Amount)}\xA2`
end
function module_2.Give(arg1, arg2, arg3) -- Line 17
	return require(game:GetService("ServerScriptService").Modules.CurrencyService):Add(arg2, arg3.Data.Amount)
end
function module_2.Use(arg1, arg2) -- Line 25
	local module = {
		Type = arg1.Type;
	}
	module.Data = arg2
	return module
end
return module_2