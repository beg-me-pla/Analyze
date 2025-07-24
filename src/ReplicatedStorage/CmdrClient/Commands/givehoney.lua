-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:23
-- Luau version 6, Types version 3
-- Time taken: 0.000378 seconds

return {
	Name = "givehoney";
	Aliases = {"g$"};
	Description = "Gives honey currency to specified player(s) with a specified amount.";
	Group = "GameCommands";
	Args = {{
		Type = "players";
		Name = "to";
		Description = "The player(s) to give honey currency to.";
	}, {
		Type = "integer";
		Name = "quantity";
		Description = "The amount given.";
		Optional = true;
	}};
}