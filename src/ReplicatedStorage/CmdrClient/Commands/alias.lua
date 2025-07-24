-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:13
-- Luau version 6, Types version 3
-- Time taken: 0.000589 seconds

local module = {
	Name = "alias";
	Aliases = {};
	Description = "Creates a new, single command out of a command and given arguments.";
	Group = "DefaultUtil";
	Args = {{
		Type = "string";
		Name = "Alias name";
		Description = "The key or input type you'd like to bind the command to.";
	}, {
		Type = "string";
		Name = "Command string";
		Description = "The command text you want to run. Separate multiple commands with \"&&\". Accept arguments with $1, $2, $3, etc.";
	}};
}
function module.ClientRun(arg1, arg2, arg3) -- Line 19
	arg1.Cmdr.Registry:RegisterCommandObject(arg1.Cmdr.Util.MakeAliasCommand(arg2, arg3), true)
	return "Created alias %q":format(arg2)
end
return module