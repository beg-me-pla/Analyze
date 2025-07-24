-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:38
-- Luau version 6, Types version 3
-- Time taken: 0.004872 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local DataService_upvr = require(ReplicatedStorage.Modules.DataService)
local NumberUtil_upvr = require(ReplicatedStorage.Modules.NumberUtil)
local TravelingMerchantData_upvr = require(ReplicatedStorage.Data.TravelingMerchant.TravelingMerchantData)
local TravelingMerchantShop_UI_upvr = game.Players.LocalPlayer.PlayerGui:WaitForChild("TravelingMerchantShop_UI")
local ScrollingFrame_upvr = TravelingMerchantShop_UI_upvr:WaitForChild("Frame"):WaitForChild("ScrollingFrame")
local ItemFrame_upvr = ScrollingFrame_upvr:WaitForChild("ItemFrame")
ItemFrame_upvr.Parent = script
local ItemPadding_upvr = ScrollingFrame_upvr:WaitForChild("ItemPadding")
ItemPadding_upvr.Parent = ScrollingFrame_upvr
local module = {}
local function GetEndTime_upvr() -- Line 63, Named "GetEndTime"
	--[[ Upvalues[2]:
		[1]: DataService_upvr (readonly)
		[2]: TravelingMerchantData_upvr (readonly)
	]]
	local any_GetData_result1 = DataService_upvr:GetData()
	if not any_GetData_result1.TravelingMerchantShopStock.MerchantType then
		return 0
	end
	local var11 = any_GetData_result1.TravelingMerchantShopStock.MerchantStartTime + TravelingMerchantData_upvr[any_GetData_result1.TravelingMerchantShopStock.MerchantType].Duration - workspace:GetServerTimeNow()
	if 0 < var11 then
		return var11
	end
	return 0
end
local var12_upvw = false
local Timer_upvr = TravelingMerchantShop_UI_upvr:WaitForChild("Frame"):WaitForChild("Frame"):WaitForChild("Timer")
local function SetupTimer_upvr() -- Line 84, Named "SetupTimer"
	--[[ Upvalues[4]:
		[1]: var12_upvw (read and write)
		[2]: GetEndTime_upvr (readonly)
		[3]: Timer_upvr (readonly)
		[4]: NumberUtil_upvr (readonly)
	]]
	if var12_upvw then
	else
		var12_upvw = true
		while true do
			local GetEndTime_upvr_result1 = GetEndTime_upvr()
			local var15
			if GetEndTime_upvr_result1 <= 0 then
				var15 = "Restocking"
			else
				var15 = "Merchant Leaving in "..NumberUtil_upvr.compactFormat(GetEndTime_upvr_result1)
			end
			Timer_upvr.Text = var15
			var15 = 1
			task.wait(var15)
		end
	end
end
local function _(arg1) -- Line 102, Named "Darken"
	local any_ToHSV_result1, any_ToHSV_result2, any_ToHSV_result3 = arg1:ToHSV()
	return Color3.fromHSV(any_ToHSV_result1, any_ToHSV_result2, any_ToHSV_result3 / 2)
end
local function _(arg1, arg2) -- Line 108, Named "SetCFrame"
	if arg1:IsA("Model") then
		arg1:PivotTo(arg2)
		arg1:ScaleTo(0.5)
	elseif arg1:IsA("BasePart") then
		arg1.CFrame = arg2
	end
end
local function _(arg1, arg2) -- Line 118, Named "SetOrientation"
	if arg1:IsA("BasePart") then
		arg1.Orientation = arg2
	end
end
local function _(arg1) -- Line 125, Named "GetOrientation"
	if arg1:IsA("BasePart") then
		return arg1.Orientation
	end
	return Vector3.new(0, 0, 0)
end
local RunService_upvr = game:GetService("RunService")
local function _(arg1, arg2) -- Line 133, Named "RotateModel"
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	local var21_upvw = 0
	local any_GetPivot_result1_upvr = arg1:GetPivot()
	return RunService_upvr.RenderStepped:Connect(function(arg1_2) -- Line 137
		--[[ Upvalues[4]:
			[1]: var21_upvw (read and write)
			[2]: arg2 (readonly)
			[3]: arg1 (readonly)
			[4]: any_GetPivot_result1_upvr (readonly)
		]]
		var21_upvw += arg1_2 * arg2
		arg1:PivotTo(any_GetPivot_result1_upvr * CFrame.Angles(0, math.rad(var21_upvw), 0))
	end)
end
local tbl_upvr_2 = {}
local tbl_upvr_3 = {}
local var25_upvw
local ShopTitle_upvr = TravelingMerchantShop_UI_upvr:FindFirstChild("ShopTitle", true)
local UserInputService_upvr = game:GetService("UserInputService")
local ItemImageFinder_upvr = require(ReplicatedStorage.Modules.ItemImageFinder)
local ContentProvider_upvr = game:GetService("ContentProvider")
local UpdateService_upvr = require(ReplicatedStorage.Modules.UpdateService)
local Item_Module_upvr = require(ReplicatedStorage.Item_Module)
local BuyTravelingMerchantShopStock_upvr = ReplicatedStorage:WaitForChild("GameEvents").BuyTravelingMerchantShopStock
local MarketController_upvr = require(ReplicatedStorage.Modules.MarketController)
local Click_upvr = game.SoundService.Click
local GiftController_upvr = require(ReplicatedStorage.Modules.GiftController)
local FastTween_upvr = require(ReplicatedStorage.Modules.FastTween)
local SeedPackOddsController_upvr = require(ReplicatedStorage.Modules.SeedPackOddsController)
local PetEggOddsController_upvr = require(ReplicatedStorage.Modules.PetEggOddsController)
local CosmeticCrateOddsController_upvr = require(ReplicatedStorage.Modules.CosmeticCrateOddsController)
local CurrencyData_upvr = require(ReplicatedStorage.Data.CurrencyData)
local var41_upvw
local any_new_result1_upvr = require(ReplicatedStorage.Modules.Signal).new()
local UseDynamicPrices_upvr = require(ReplicatedStorage.Modules.UseDynamicPrices)
local Comma_Module_upvr = require(ReplicatedStorage.Comma_Module)
local function SetupFrames_upvr() -- Line 144, Named "SetupFrames"
	--[[ Upvalues[30]:
		[1]: SetupTimer_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: tbl_upvr_3 (readonly)
		[4]: var25_upvw (read and write)
		[5]: DataService_upvr (readonly)
		[6]: TravelingMerchantData_upvr (readonly)
		[7]: ShopTitle_upvr (readonly)
		[8]: UserInputService_upvr (readonly)
		[9]: ItemImageFinder_upvr (readonly)
		[10]: ContentProvider_upvr (readonly)
		[11]: UpdateService_upvr (readonly)
		[12]: ItemFrame_upvr (readonly)
		[13]: Item_Module_upvr (readonly)
		[14]: NumberUtil_upvr (readonly)
		[15]: ScrollingFrame_upvr (readonly)
		[16]: ItemPadding_upvr (readonly)
		[17]: BuyTravelingMerchantShopStock_upvr (readonly)
		[18]: MarketController_upvr (readonly)
		[19]: Click_upvr (readonly)
		[20]: GiftController_upvr (readonly)
		[21]: FastTween_upvr (readonly)
		[22]: SeedPackOddsController_upvr (readonly)
		[23]: TravelingMerchantShop_UI_upvr (readonly)
		[24]: PetEggOddsController_upvr (readonly)
		[25]: CosmeticCrateOddsController_upvr (readonly)
		[26]: CurrencyData_upvr (readonly)
		[27]: var41_upvw (read and write)
		[28]: any_new_result1_upvr (readonly)
		[29]: UseDynamicPrices_upvr (readonly)
		[30]: Comma_Module_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 96 start (CF ANALYSIS FAILED)
	task.spawn(SetupTimer_upvr)
	for _, v in ipairs(tbl_upvr_2) do
		if v.Connected then
			v:Disconnect()
		end
	end
	table.clear(tbl_upvr_2)
	for _, v_2 in tbl_upvr_3 do
		if v_2:IsA("Frame") then
			v_2:Destroy()
		end
	end
	table.clear(tbl_upvr_3)
	if var25_upvw then
		var25_upvw:Destroy()
	end
	local MerchantType = DataService_upvr:GetData().TravelingMerchantShopStock.MerchantType
	if not MerchantType then return end
	var25_upvw = TravelingMerchantData_upvr[MerchantType].Model:Clone()
	var25_upvw.Parent = workspace
	ShopTitle_upvr.Text = `{TravelingMerchantData_upvr[MerchantType].Title} Shop`
	local ShopData = TravelingMerchantData_upvr[MerchantType].ShopData
	if not UserInputService_upvr.TouchEnabled then
		for i_3, v_3 in ShopData do
			if v_3.DisplayInShop and v_3.ItemType == "Seed" then
				local ImageLabel = Instance.new("ImageLabel")
				ImageLabel.Image = ItemImageFinder_upvr(i_3, "Holdable")
				table.insert({}, ImageLabel)
			end
		end
		local tbl_upvr = {}
		task.spawn(function() -- Line 198
			--[[ Upvalues[2]:
				[1]: ContentProvider_upvr (copied, readonly)
				[2]: tbl_upvr (readonly)
			]]
			ContentProvider_upvr:PreloadAsync(tbl_upvr)
		end)
	end
	tbl_upvr = {}
	-- KONSTANTERROR: [0] 1. Error Block 96 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [610] 431. Error Block 66 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [610] 431. Error Block 66 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [136] 101. Error Block 21 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [136] 101. Error Block 21 end (CF ANALYSIS FAILED)
end
local GuiController_upvr = require(ReplicatedStorage.Modules.GuiController)
function module.Start(arg1) -- Line 496
	--[[ Upvalues[4]:
		[1]: GuiController_upvr (readonly)
		[2]: TravelingMerchantShop_UI_upvr (readonly)
		[3]: SetupFrames_upvr (readonly)
		[4]: DataService_upvr (readonly)
	]]
	GuiController_upvr:UsePopupAnims(TravelingMerchantShop_UI_upvr)
	TravelingMerchantShop_UI_upvr.Frame.Frame.ExitButton.Activated:Connect(function() -- Line 499
		--[[ Upvalues[2]:
			[1]: GuiController_upvr (copied, readonly)
			[2]: TravelingMerchantShop_UI_upvr (copied, readonly)
		]]
		GuiController_upvr:Close(TravelingMerchantShop_UI_upvr)
	end)
	TravelingMerchantShop_UI_upvr.Frame.Frame.Restock.Activated:Connect(function() -- Line 503
	end)
	SetupFrames_upvr()
	if DataService_upvr:GetPathSignal("TravelingMerchantShopStock/MerchantType") then
	end
end
task.spawn(module.Start, module)
return module