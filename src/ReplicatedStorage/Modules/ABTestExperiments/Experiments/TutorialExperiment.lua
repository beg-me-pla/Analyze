-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:01
-- Luau version 6, Types version 3
-- Time taken: 0.000533 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local function setTutorial(arg1, arg2) -- Line 9
	arg1:SetAttribute("AB_TutorialVariant", arg2)
end
return {
	RemoteConfig = "TutorialVariant";
	Disabled = false;
	DefaultState = "Variant4";
	States = {
		Variant1 = {
			Client = setTutorial;
		};
		Variant2 = {
			Client = setTutorial;
		};
		Variant3 = {
			Client = setTutorial;
		};
		Variant4 = {
			Client = setTutorial;
		};
	};
}