-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:28
-- Luau version 6, Types version 3
-- Time taken: 0.000687 seconds

return {
	Name = "globalvote";
	Aliases = {"gv"};
	Description = "Start a vote for players to choose from globally.";
	Group = "GameCommands";
	Args = {{
		Type = "string";
		Name = "vote topic";
		Description = "The topic to vote.";
	}, {
		Type = "strings";
		Name = "vote options";
		Description = "The options to vote.";
	}, {
		Type = "duration";
		Name = "duration seconds";
		Description = "How long the vote lasts";
		Optional = true;
	}};
}