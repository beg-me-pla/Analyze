-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:24
-- Luau version 6, Types version 3
-- Time taken: 0.000780 seconds

return {
	Name = "givespray";
	Aliases = {"gsp"};
	Description = "Gives Spray Bottle to specified player(s) with a specified amount.";
	Group = "GameCommands";
	Args = {{
		Type = "players";
		Name = "to";
		Description = "The player(s) to give Sprays to.";
	}, {
		Type = "spraybottletype";
		Name = "spraybottletype(s)";
		Description = "The name of the Spray to give.";
	}, {
		Type = "integer";
		Name = "quantity";
		Description = "The amount given.";
		Optional = true;
	}, {
		Type = "strictmutation";
		Name = "mutation";
		Description = "The mutation type of the spray";
		Optional = true;
	}};
}