-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:22
-- Luau version 6, Types version 3
-- Time taken: 0.000389 seconds

return {
	Name = "randomfarm";
	Aliases = {"rf"};
	Description = "Spawns in a completely random plants on the player(s) farm";
	Group = "GameCommands";
	Args = {{
		Type = "players";
		Name = "to";
		Description = "The player(s) to spawn plants for.";
	}, {
		Type = "integer";
		Name = "quantity";
		Description = "The amount of plants to add.";
		Optional = true;
	}};
}