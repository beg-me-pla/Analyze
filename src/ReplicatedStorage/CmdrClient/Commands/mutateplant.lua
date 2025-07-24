-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:19
-- Luau version 6, Types version 3
-- Time taken: 0.000580 seconds

return {
	Name = "mutateplant";
	Aliases = {"mp"};
	Description = "Changes specified player(s) currently held plant to a specified mutation.";
	Group = "GameCommands";
	Args = {{
		Type = "players";
		Name = "to";
		Description = "The player(s) to mutate held plants.";
	}, {
		Type = "mutation";
		Name = "mutation";
		Description = "The mutation type!";
	}};
}