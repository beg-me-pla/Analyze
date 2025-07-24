-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:22
-- Luau version 6, Types version 3
-- Time taken: 0.000399 seconds

return {
	Name = "setexpansiontimer";
	Aliases = {};
	Description = "Sets expansion timer";
	Group = "GameCommands";
	Args = {{
		Type = "player";
		Name = "to";
		Description = "The player(s)";
	}, {
		Type = "integer";
		Name = "Expansion";
		Description = "The expansion number you want to skip the timer";
	}, {
		Type = "integer";
		Name = "Timer";
		Description = "The time you want";
	}};
}