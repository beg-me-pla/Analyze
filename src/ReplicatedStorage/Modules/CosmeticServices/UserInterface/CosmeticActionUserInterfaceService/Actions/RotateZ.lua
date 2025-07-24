-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:49
-- Luau version 6, Types version 3
-- Time taken: 0.000669 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local CosmeticRotationZUserInterfaceService_upvr = require(ReplicatedStorage.Modules.CosmeticServices.UserInterface.CosmeticRotationZUserInterfaceService)
local CosmeticRotationZService_upvr = require(ReplicatedStorage.Modules.CosmeticServices.ModelMovement.CosmeticRotationZService)
return function(arg1) -- Line 6, Named "Loader"
	--[[ Upvalues[2]:
		[1]: CosmeticRotationZUserInterfaceService_upvr (readonly)
		[2]: CosmeticRotationZService_upvr (readonly)
	]]
	return {
		InputBegan = function() -- Line 8
			--[[ Upvalues[3]:
				[1]: CosmeticRotationZUserInterfaceService_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: CosmeticRotationZService_upvr (copied, readonly)
			]]
			CosmeticRotationZUserInterfaceService_upvr:Toggle(true)
			arg1:Toggle(false)
			CosmeticRotationZService_upvr:SetTarget(arg1.Target)
		end;
		InputEnded = function() -- Line 14
			--[[ Upvalues[3]:
				[1]: CosmeticRotationZUserInterfaceService_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: CosmeticRotationZService_upvr (copied, readonly)
			]]
			CosmeticRotationZUserInterfaceService_upvr:Toggle(false)
			arg1:Toggle(true)
			CosmeticRotationZService_upvr:SetTarget(nil)
		end;
	}
end