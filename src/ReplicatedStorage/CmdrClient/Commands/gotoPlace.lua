-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:11
-- Luau version 6, Types version 3
-- Time taken: 0.000780 seconds

return {
	Name = "goto-place";
	Aliases = {};
	Description = "Teleport to a Roblox place";
	Group = "DefaultAdmin";
	AutoExec = {"alias \"follow-player|Join a player in another server\" goto-place $1{players|Players} ${{get-player-place-instance $2{playerId|Target}}}", "alias \"rejoin|Rejoin this place. You might end up in a different server.\" goto-place $1{players|Players} ${get-player-place-instance ${me} PlaceId}"};
	Args = {{
		Type = "players";
		Name = "Players";
		Description = "The players you want to teleport";
	}, {
		Type = "integer";
		Name = "Place ID";
		Description = "The Place ID you want to teleport to";
	}, {
		Type = "string";
		Name = "JobId";
		Description = "The specific JobId you want to teleport to";
		Optional = true;
	}};
}