-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:02
-- Luau version 6, Types version 3
-- Time taken: 0.000927 seconds

local tbl_upvr = {
	Variant1 = 0;
	Variant2 = 60;
	Variant3 = 120;
	Variant4 = 180;
	Variant5 = 240;
	Variant6 = 300;
}
local function setFTUELuckBoost(arg1, arg2) -- Line 27
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	arg1:SetAttribute("AB_FTUELuckBoost", tbl_upvr[arg2] or 0)
end
local module = {
	RemoteConfig = "FTUELuckBoost";
}
local var3 = false
module.Disabled = var3
if game:GetService("RunService"):IsStudio() then
	var3 = "Variant5"
else
	var3 = "Variant1"
end
module.DefaultState = var3
module.States = {
	Variant1 = {
		Server = setFTUELuckBoost;
	};
	Variant2 = {
		Server = setFTUELuckBoost;
	};
	Variant3 = {
		Server = setFTUELuckBoost;
	};
	Variant4 = {
		Server = setFTUELuckBoost;
	};
	Variant5 = {
		Server = setFTUELuckBoost;
	};
	Variant6 = {
		Server = setFTUELuckBoost;
	};
}
return module