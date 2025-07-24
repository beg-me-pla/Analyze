-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:26
-- Luau version 6, Types version 3
-- Time taken: 0.000552 seconds

return {
	Name = "mutatepet";
	Aliases = {"mpt"};
	Description = "Changes specified player(s) currently held pet to a specified PetMutation.";
	Group = "GameCommands";
	Args = {{
		Type = "players";
		Name = "to";
		Description = "The player(s) to mutate held pet.";
	}, {
		Type = "petmutation";
		Name = "PetMutation";
		Description = "The PetMutation type!";
	}};
}