-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:59
-- Luau version 6, Types version 3
-- Time taken: 0.000361 seconds

local GuiController_upvr = require(game:GetService("ReplicatedStorage").Modules.GuiController)
local TravelingMerchantShop_UI_upvr = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("TravelingMerchantShop_UI")
script.Parent.Triggered:Connect(function() -- Line 13
	--[[ Upvalues[2]:
		[1]: GuiController_upvr (readonly)
		[2]: TravelingMerchantShop_UI_upvr (readonly)
	]]
	GuiController_upvr:Open(TravelingMerchantShop_UI_upvr)
end)