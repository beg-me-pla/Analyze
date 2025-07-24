-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:20
-- Luau version 6, Types version 3
-- Time taken: 0.000489 seconds

return {
	Name = "givepet";
	Aliases = {"gp"};
	Description = "Gives pet to specified player(s)";
	Group = "GameCommands";
	Args = {{
		Type = "players";
		Name = "to";
		Description = "The player(s) to give eggs to.";
	}, {
		Type = "pettype";
		Name = "petname";
		Description = "The name of the pet to give.";
	}, {
		Type = "number";
		Name = "level";
		Description = "Level of the pet.";
		Optional = true;
	}, {
		Type = "number";
		Name = "weight";
		Description = "Weight of the pet.";
		Optional = true;
	}};
}