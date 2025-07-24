-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:30
-- Luau version 6, Types version 3
-- Time taken: 0.000326 seconds

local module = {}
local ClaimableCodeService_upvr = game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("ClaimableCodeService")
function module.ClaimCode(arg1, arg2) -- Line 8
	--[[ Upvalues[1]:
		[1]: ClaimableCodeService_upvr (readonly)
	]]
	return ClaimableCodeService_upvr:FireServer("ClaimCode", arg2)
end
return module