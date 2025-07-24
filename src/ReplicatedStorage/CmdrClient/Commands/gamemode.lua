-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:16
-- Luau version 6, Types version 3
-- Time taken: 0.000373 seconds

return {
	Name = "gamemode";
	Aliases = {"gm"};
	Description = "This sets the player's gamemode.";
	Group = "GameCommands";
	Args = {{
		Type = "players";
		Name = "to";
		Description = "The player(s) to give the gamemode to.";
	}, {
		Type = "gamemode";
		Name = "gamemode";
		Description = "The gamemode you want the player(s) to be set to.";
	}};
}