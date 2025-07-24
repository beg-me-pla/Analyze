-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:14
-- Luau version 6, Types version 3
-- Time taken: 0.000485 seconds

local module = {
	Name = "json-array-encode";
	Aliases = {};
	Description = "Encodes a comma-separated list into a JSON array";
	Group = "DefaultUtil";
	Args = {{
		Type = "string";
		Name = "CSV";
		Description = "The comma-separated list";
	}};
}
local HttpService_upvr = game:GetService("HttpService")
function module.Run(arg1, arg2) -- Line 16
	--[[ Upvalues[1]:
		[1]: HttpService_upvr (readonly)
	]]
	return HttpService_upvr:JSONEncode(arg2:split(','))
end
return module