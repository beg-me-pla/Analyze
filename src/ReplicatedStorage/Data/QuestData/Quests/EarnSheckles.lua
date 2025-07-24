-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:41
-- Luau version 6, Types version 3
-- Time taken: 0.000942 seconds

local module = {
	Type = "EarnSheckles";
}
local Comma_Module_upvr = require(game:GetService("ReplicatedStorage").Comma_Module)
function module.Display(arg1, arg2, arg3) -- Line 11
	--[[ Upvalues[1]:
		[1]: Comma_Module_upvr (readonly)
	]]
	local any_Comma_result1 = Comma_Module_upvr.Comma(arg3)
	return {
		Title = `Earn {any_Comma_result1}\xA2`;
		Bar = `{Comma_Module_upvr.Comma(math.min(arg2, arg3))}/{any_Comma_result1}`;
	}
end
function module.Use(arg1, arg2) -- Line 19
	local clone = table.clone(arg2)
	clone.Type = arg1.Type
	return clone
end
return module