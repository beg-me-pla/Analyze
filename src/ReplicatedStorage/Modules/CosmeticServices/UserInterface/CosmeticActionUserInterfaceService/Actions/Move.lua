-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:49
-- Luau version 6, Types version 3
-- Time taken: 0.000767 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local CosmeticMovementUserInterfaceService_upvr = require(ReplicatedStorage.Modules.CosmeticServices.UserInterface.CosmeticMovementUserInterfaceService)
local CosmeticMovementService_upvr = require(ReplicatedStorage.Modules.CosmeticServices.ModelMovement.CosmeticMovementService)
local PlaySound_upvr = require(ReplicatedStorage.Modules.PlaySound)
return function(arg1) -- Line 9, Named "Loader"
	--[[ Upvalues[3]:
		[1]: CosmeticMovementUserInterfaceService_upvr (readonly)
		[2]: CosmeticMovementService_upvr (readonly)
		[3]: PlaySound_upvr (readonly)
	]]
	return {
		InputBegan = function() -- Line 11
			--[[ Upvalues[3]:
				[1]: CosmeticMovementUserInterfaceService_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: CosmeticMovementService_upvr (copied, readonly)
			]]
			CosmeticMovementUserInterfaceService_upvr:Toggle(true)
			arg1:Toggle(false)
			CosmeticMovementService_upvr:SetTarget(arg1.Target)
		end;
		InputEnded = function() -- Line 16
			--[[ Upvalues[4]:
				[1]: CosmeticMovementUserInterfaceService_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: CosmeticMovementService_upvr (copied, readonly)
				[4]: PlaySound_upvr (copied, readonly)
			]]
			CosmeticMovementUserInterfaceService_upvr:Toggle(false)
			arg1:Toggle(true)
			CosmeticMovementService_upvr:SetTarget(nil)
			PlaySound_upvr("rbxassetid://99990810464653").Volume = 0.5
		end;
	}
end