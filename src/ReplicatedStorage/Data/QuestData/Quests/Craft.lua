-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:41
-- Luau version 6, Types version 3
-- Time taken: 0.000632 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
return {
	Type = "Craft";
	Display = function(arg1, arg2, arg3, arg4) -- Line 12, Named "Display"
		assert(arg4, "Quest Craft doesn't have an argument.")
		return {
			Title = `Craft {arg3}x {arg4[2]}`;
			Bar = `{arg2}/{arg3}`;
		}
	end;
	Use = function(arg1, arg2) -- Line 23, Named "Use"
		assert(arg2.Arguments, "Craft quests needs arguments.")
		local clone = table.clone(arg2)
		clone.Type = arg1.Type
		return clone
	end;
}