-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:14
-- Luau version 6, Types version 3
-- Time taken: 0.000632 seconds

local module = {
	Name = "convertTimestamp";
	Aliases = {"date"};
	Description = "Convert a timestamp to a human-readable format.";
	Group = "DefaultUtil";
	Args = {{
		Type = "number";
		Name = "timestamp";
		Description = "A numerical representation of a specific moment in time.";
		Optional = true;
	}};
}
function module.ClientRun(arg1, arg2) -- Line 14
	local var5 = arg2
	if not var5 then
		var5 = os.time()
	end
	local var6 = var5
	return `{os.date("%x", var6)} {os.date("%X", var6)}`
end
return module