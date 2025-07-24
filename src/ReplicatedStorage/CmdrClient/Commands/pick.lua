-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:15
-- Luau version 6, Types version 3
-- Time taken: 0.000745 seconds

local module = {
	Name = "pick";
	Aliases = {};
	Description = "Picks a value out of a comma-separated list.";
	Group = "DefaultUtil";
	Args = {{
		Type = "integer";
		Name = "Index to pick";
		Description = "The index of the item you want to pick";
	}, {
		Type = "string";
		Name = "CSV";
		Description = "The comma-separated list";
	}};
}
function module.Run(arg1, arg2, arg3) -- Line 19
	return arg3:split(',')[arg2] or ""
end
return module