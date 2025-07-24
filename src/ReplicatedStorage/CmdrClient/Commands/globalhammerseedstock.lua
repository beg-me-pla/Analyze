-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:28
-- Luau version 6, Types version 3
-- Time taken: 0.000594 seconds

return {
	Name = "globalhammerseedstock";
	Aliases = {};
	Description = "Restocks globally the seed for the server";
	Group = "GameCommands";
	Args = {{
		Type = "seedshopseedname";
		Name = "seedname(s)";
		Description = "The seed to restock";
	}, {
		Type = "integer";
		Name = "quantity";
		Description = "The amount to set stock";
		Optional = true;
	}};
}