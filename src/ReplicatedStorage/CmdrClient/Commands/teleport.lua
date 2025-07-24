-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:12
-- Luau version 6, Types version 3
-- Time taken: 0.000753 seconds

return {
	Name = "teleport";
	Aliases = {"tp"};
	Description = "Teleports a player or set of players to one target.";
	Group = "DefaultAdmin";
	AutoExec = {"alias \"bring|Brings a player or set of players to you.\" teleport $1{players|players|The players to bring} ${me}", "alias \"to|Teleports you to another player or location.\" teleport ${me} $1{player @ vector3|Destination|The player or location to teleport to}"};
	Args = {{
		Type = "players";
		Name = "From";
		Description = "The players to teleport";
	}, {
		Type = "player @ vector3";
		Name = "Destination";
		Description = "The player to teleport to";
	}};
}