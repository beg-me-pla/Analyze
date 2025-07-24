-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:28
-- Luau version 6, Types version 3
-- Time taken: 0.000368 seconds

return {
	Name = "localhammergearstock";
	Aliases = {};
	Description = "Restocks locally the gear for the server";
	Group = "GameCommands";
	Args = {{
		Type = "gearshopgearname";
		Name = "gearname(s)";
		Description = "The gears to restock";
	}, {
		Type = "integer";
		Name = "quantity";
		Description = "The amount to set stock";
		Optional = true;
	}};
}