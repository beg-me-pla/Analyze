-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:41
-- Luau version 6, Types version 3
-- Time taken: 0.000585 seconds

local module = {}
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
function module.Verifier(arg1) -- Line 9
	--[[ Upvalues[1]:
		[1]: LocalPlayer_upvr (readonly)
	]]
	local var3
	if arg1:GetAttribute("OWNER") ~= LocalPlayer_upvr.Name then
		var3 = false
	else
		var3 = true
	end
	return var3
end
local PetsService_upvr = require(game:GetService("ReplicatedStorage").Modules.PetServices.PetsService)
function module.Activate(arg1) -- Line 14
	--[[ Upvalues[1]:
		[1]: PetsService_upvr (readonly)
	]]
	PetsService_upvr:UnequipPet(arg1:GetAttribute("UUID"))
end
return module