-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:15
-- Luau version 6, Types version 3
-- Time taken: 0.001477 seconds

local module = {
	Name = "run-lines";
	Aliases = {};
	Description = "Splits input by newlines and runs each line as its own command. This is used by the init-run command.";
	Group = "DefaultUtil";
	Args = {{
		Type = "string";
		Name = "Script";
		Description = "The script to parse.";
		Default = "";
	}};
}
function module.ClientRun(arg1, arg2) -- Line 15
	local var8
	if var8 == 0 then
		var8 = ""
		return var8
	end
	if arg1.Dispatcher:Run("var", "INIT_PRINT_OUTPUT") == "" then
		var8 = false
	else
		var8 = true
	end
	for _, v in ipairs(arg2:gsub("\n+", '\n'):split('\n')) do
		if v:sub(1, 1) ~= '#' and var8 then
			arg1:Reply(arg1.Dispatcher:EvaluateAndRun(v))
		end
	end
	return ""
end
return module