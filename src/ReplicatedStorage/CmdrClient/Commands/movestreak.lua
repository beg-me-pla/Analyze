-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:24
-- Luau version 6, Types version 3
-- Time taken: 0.000458 seconds

return {
	Name = "movestreak";
	Aliases = {"ms"};
	Description = "Moves a streak forward or backward in time by X days";
	Group = "GameCommands";
	Args = {{
		Type = "player";
		Name = "FirstPlayer";
		Description = "The first player";
	}, {
		Type = "player";
		Name = "SecondPlayer";
		Description = "The second player";
		Optional = true;
	}, {
		Type = "number";
		Name = "DaysToMove";
		Description = "Days to move";
		Optional = true;
	}};
}