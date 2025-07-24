-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:16
-- Luau version 6, Types version 3
-- Time taken: 0.000531 seconds

local module = {
	Name = "unbind";
	Aliases = {};
	Description = "Unbinds an input previously bound with Bind";
	Group = "DefaultUtil";
	Args = {{
		Type = "userInput ! bindableResource @ player";
		Name = "Input/Key";
		Description = "The key or input type you'd like to unbind.";
	}};
}
function module.ClientRun(arg1, arg2) -- Line 14
	local any_GetStore_result1 = arg1:GetStore("CMDR_Binds")
	if any_GetStore_result1[arg2] then
		any_GetStore_result1[arg2]:Disconnect()
		any_GetStore_result1[arg2] = nil
		return "Unbound command from input."
	end
	return "That input wasn't bound."
end
return module