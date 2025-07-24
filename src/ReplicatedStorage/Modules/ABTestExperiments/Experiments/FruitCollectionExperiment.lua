-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:03
-- Luau version 6, Types version 3
-- Time taken: 0.000776 seconds

local module = {
	RemoteConfig = "FruitVFX";
}
local var2 = false
module.Disabled = var2
if game:GetService("RunService"):IsStudio() then
	var2 = true
else
	var2 = false
end
module.DefaultState = var2
local tbl_2 = {}
local tbl = {}
local function Server(arg1, arg2) -- Line 16
	arg1:SetAttribute("AB_FruitCollection", true)
end
tbl.Server = Server
tbl_2[true] = tbl
tbl_2[false] = {
	Server = function(arg1, arg2) -- Line 21, Named "Server"
		arg1:SetAttribute("AB_FruitCollection", false)
	end;
}
module.States = tbl_2
return module