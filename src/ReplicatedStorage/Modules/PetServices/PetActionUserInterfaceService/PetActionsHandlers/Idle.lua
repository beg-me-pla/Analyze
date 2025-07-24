-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:41
-- Luau version 6, Types version 3
-- Time taken: 0.000408 seconds

local module = {}
local ActivePetsService_upvr = require(game:GetService("ReplicatedStorage").Modules.PetServices.ActivePetsService)
function module.Activate(arg1) -- Line 7
	--[[ Upvalues[1]:
		[1]: ActivePetsService_upvr (readonly)
	]]
	ActivePetsService_upvr:SetPetState(arg1:GetAttribute("UUID"), "Idle")
end
return module