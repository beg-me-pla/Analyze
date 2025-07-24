-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:14
-- Luau version 6, Types version 3
-- Time taken: 0.000695 seconds

local module = {
	Name = "history";
	Aliases = {};
	AutoExec = {"alias \"!|Displays previous command from history.\" run ${history $1{number|Line Number}}", "alias \"^|Runs the previous command, replacing all occurrences of A with B.\" run ${run replace ${history -1} $1{string|A} $2{string|B}}", "alias \"!!|Reruns the last command.\" ! -1"};
	Description = "Displays previous commands from history.";
	Group = "DefaultUtil";
	Args = {{
		Type = "integer";
		Name = "Line Number";
		Description = "Command line number (can be negative to go from end)";
	}};
}
function module.ClientRun(arg1, arg2) -- Line 19
	local any_GetHistory_result1 = arg1.Dispatcher:GetHistory()
	local var6
	if var6 <= 0 then
		var6 = #any_GetHistory_result1 + var6
	end
	return any_GetHistory_result1[var6] or ""
end
return module