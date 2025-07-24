-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:07
-- Luau version 6, Types version 3
-- Time taken: 0.000471 seconds

return (function(arg1) -- Line 1, Named "readonlytable"
	local module = {}
	module.__index = arg1
	module.__metatable = false
	function module.__newindex(arg1_2, arg2, arg3) -- Line 5
		error("Attempt to modify read-only table: "..arg1_2..", key="..arg2..", value="..arg3)
	end
	return setmetatable({}, module)
end)({
	debug = "debug";
	info = "info";
	warning = "warning";
	error = "error";
	critical = "critical";
})