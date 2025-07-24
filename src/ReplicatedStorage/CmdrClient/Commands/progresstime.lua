-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:17
-- Luau version 6, Types version 3
-- Time taken: 0.000389 seconds

return {
	Name = "progresstime";
	Aliases = {"pt"};
	Description = "Progresses time in the server in seconds.";
	Group = "GameCommands";
	Args = {{
		Type = "player";
		Name = "to";
		Description = "The player(s) to progress held plants.";
	}, {
		Type = "integer";
		Name = "Seconds";
		Description = "Time time progressed.";
		Optional = true;
	}};
}