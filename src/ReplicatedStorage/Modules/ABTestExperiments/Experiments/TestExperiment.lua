-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:01
-- Luau version 6, Types version 3
-- Time taken: 0.000547 seconds

local module = {
	RemoteConfig = "Test";
	Disabled = false;
	DefaultState = true;
}
local tbl_2 = {}
local tbl = {}
local function Server(arg1, arg2) -- Line 15
end
tbl.Server = Server
local function Client(arg1, arg2) -- Line 19
end
tbl.Client = Client
tbl_2[true] = tbl
tbl_2[false] = {
	Server = function(arg1, arg2) -- Line 25, Named "Server"
	end;
	Client = function(arg1, arg2) -- Line 29, Named "Client"
	end;
}
module.States = tbl_2
return module