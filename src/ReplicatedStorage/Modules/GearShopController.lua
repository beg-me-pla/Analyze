-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:10
-- Luau version 6, Types version 3
-- Time taken: 0.015323 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Gear_Shop_upvr = game.Players.LocalPlayer.PlayerGui:WaitForChild("Gear_Shop")
local DataService_upvr = require(ReplicatedStorage_upvr.Modules.DataService)
local UpdateService_upvr = require(ReplicatedStorage_upvr.Modules.UpdateService)
local GearShopData_upvr = require(ReplicatedStorage_upvr.Data.GearShopData)
local MarketController_upvr = require(ReplicatedStorage_upvr.Modules.MarketController)
local ScrollingFrame_upvr = Gear_Shop_upvr:WaitForChild("Frame"):WaitForChild("ScrollingFrame")
local ItemFrame_upvr = ScrollingFrame_upvr:WaitForChild("ItemFrame")
ItemFrame_upvr.Parent = script
local ItemPadding_upvr = ScrollingFrame_upvr:WaitForChild("ItemPadding")
ItemPadding_upvr.Parent = ScrollingFrame_upvr
local module = {}
local function _() -- Line 43, Named "GetRefreshTime"
	--[[ Upvalues[2]:
		[1]: DataService_upvr (readonly)
		[2]: GearShopData_upvr (readonly)
	]]
	local workspace_GetServerTimeNow_result1 = workspace:GetServerTimeNow()
	local any_GetData_result1_3 = DataService_upvr:GetData()
	local var13
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var13 = any_GetData_result1_3.GearStock.ForcedGearEndTimestamp - workspace_GetServerTimeNow_result1
		return var13
	end
	if not any_GetData_result1_3.GearStock.ForcedGearEndTimestamp or not INLINED() then
		var13 = -1
	end
	if 0 <= var13 then
		return var13
	end
	return GearShopData_upvr.RefreshTime - workspace_GetServerTimeNow_result1 % GearShopData_upvr.RefreshTime
end
local Timer_upvr = Gear_Shop_upvr:WaitForChild("Frame"):WaitForChild("Frame"):WaitForChild("Timer")
local NumberUtil_upvr = require(ReplicatedStorage_upvr.Modules.NumberUtil)
local function SetupTimer_upvr() -- Line 57, Named "SetupTimer"
	--[[ Upvalues[5]:
		[1]: DataService_upvr (readonly)
		[2]: GearShopData_upvr (readonly)
		[3]: Timer_upvr (readonly)
		[4]: NumberUtil_upvr (readonly)
		[5]: ReplicatedStorage_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [26] 19. Error Block 23 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [32.1]
	local var16 = GearShopData_upvr.RefreshTime - nil % GearShopData_upvr.RefreshTime
	if var16 <= 0 then
	else
	end
	Timer_upvr.Text = "New gear in "..NumberUtil_upvr.compactFormat(var16)
	if var16 <= 1 then
		require(ReplicatedStorage_upvr.Modules.Notification):CreateNotification("<font color=\"#90EE90\"><b>Your Gear Shop stock has been reset!</b></font>")
	end
	task.wait(1)
	-- KONSTANTERROR: [26] 19. Error Block 23 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 25 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
	if not ReplicatedStorage_upvr or not "<font color=\"#90EE90\"><b>Your Gear Shop stock has been reset!</b></font>" then
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [68.65666]
	if ReplicatedStorage_upvr <= "<font color=\"#90EE90\"><b>Your Gear Shop stock has been reset!</b></font>" then
		-- KONSTANTWARNING: GOTO [34] #25
	end
	-- KONSTANTERROR: [0] 1. Error Block 25 end (CF ANALYSIS FAILED)
end
local function _(arg1) -- Line 74, Named "Darken"
	local any_ToHSV_result1_2, any_ToHSV_result2_2, any_ToHSV_result3_4 = arg1:ToHSV()
	return Color3.fromHSV(any_ToHSV_result1_2, any_ToHSV_result2_2, any_ToHSV_result3_4 / 2)
end
local tbl_5_upvr = {}
local tbl_6_upvr = {}
local GearData_upvr = require(ReplicatedStorage_upvr.Data.GearData)
local Item_Module_upvr = require(ReplicatedStorage_upvr.Item_Module)
local Comma_Module_upvr = require(ReplicatedStorage_upvr.Comma_Module)
local Click_upvr = game.SoundService.Click
local GiftController_upvr = require(ReplicatedStorage_upvr.Modules.GiftController)
local var27_upvw
local FastTween_upvr = require(ReplicatedStorage_upvr.Modules.FastTween)
local any_new_result1_upvr = require(ReplicatedStorage_upvr.Modules.Signal).new()
local UseDynamicPrices_upvr = require(ReplicatedStorage_upvr.Modules.UseDynamicPrices)
local function SetupFrames_upvr() -- Line 79, Named "SetupFrames"
	--[[ Upvalues[19]:
		[1]: tbl_5_upvr (readonly)
		[2]: tbl_6_upvr (readonly)
		[3]: GearData_upvr (readonly)
		[4]: UpdateService_upvr (readonly)
		[5]: ItemFrame_upvr (readonly)
		[6]: Item_Module_upvr (readonly)
		[7]: Gear_Shop_upvr (readonly)
		[8]: Comma_Module_upvr (readonly)
		[9]: ScrollingFrame_upvr (readonly)
		[10]: ItemPadding_upvr (readonly)
		[11]: ReplicatedStorage_upvr (readonly)
		[12]: MarketController_upvr (readonly)
		[13]: Click_upvr (readonly)
		[14]: GiftController_upvr (readonly)
		[15]: var27_upvw (read and write)
		[16]: FastTween_upvr (readonly)
		[17]: any_new_result1_upvr (readonly)
		[18]: UseDynamicPrices_upvr (readonly)
		[19]: DataService_upvr (readonly)
	]]
	for _, v in ipairs(tbl_5_upvr) do
		if v.Connected then
			v:Disconnect()
		end
	end
	table.clear(tbl_5_upvr)
	for _, v_2 in tbl_6_upvr do
		if v_2:IsA("Frame") then
			v_2:Destroy()
		end
	end
	table.clear(tbl_6_upvr)
	local tbl_7_upvr = {}
	for i_3_upvr, v_3_upvr in GearData_upvr do
		if v_3_upvr.LayoutOrder ~= -1 and v_3_upvr.DisplayInShop and not UpdateService_upvr:IsHiddenFromUpdate(v_3_upvr.GearName) then
			local var100_upvw
			if not UpdateService_upvr:IsHiddenAfterUpdate(v_3_upvr.GearName) then
				local clone_upvr_4 = ItemFrame_upvr:Clone()
				tbl_6_upvr[i_3_upvr] = clone_upvr_4
				clone_upvr_4.Name = i_3_upvr
				clone_upvr_4.LayoutOrder = v_3_upvr.LayoutOrder * 10
				table.insert(tbl_7_upvr, clone_upvr_4)
				local Main_Frame_upvr_2 = clone_upvr_4.Main_Frame
				local any_Return_Rarity_Data_result1 = Item_Module_upvr.Return_Rarity_Data(v_3_upvr.GearRarity)
				if any_Return_Rarity_Data_result1 then
					local _1_2 = any_Return_Rarity_Data_result1[1]
					local _2 = any_Return_Rarity_Data_result1[2]
					Main_Frame_upvr_2.Rarity_Text.Text = _1_2
					if any_Return_Rarity_Data_result1[3] and _1_2 == "Prismatic" then
						var100_upvw = game:GetService("RunService").Heartbeat
						local var107_upvw
						var100_upvw = var100_upvw:Connect(function(arg1) -- Line 130
							--[[ Upvalues[3]:
								[1]: Gear_Shop_upvr (copied, readonly)
								[2]: Main_Frame_upvr_2 (readonly)
								[3]: var107_upvw (read and write)
							]]
							if not Gear_Shop_upvr.Enabled then
							else
								if not Main_Frame_upvr_2 or not Main_Frame_upvr_2.Parent then
									var107_upvw:Disconnect()
									return
								end
								local Color3_fromHSV_result1 = Color3.fromHSV(os.clock() * 0.1 % 1, 1, 1)
								Main_Frame_upvr_2.Rarity_BG.ImageColor3 = Color3_fromHSV_result1
								if Main_Frame_upvr_2.Rarity_Text.UIStroke then
									local any_ToHSV_result1_4, any_ToHSV_result2_3, any_ToHSV_result3_5 = Color3_fromHSV_result1:ToHSV()
									Main_Frame_upvr_2.Rarity_Text.UIStroke.Color = Color3.fromHSV(any_ToHSV_result1_4, any_ToHSV_result2_3, any_ToHSV_result3_5 / 2)
								end
							end
						end)
						var107_upvw = var100_upvw
					else
						var100_upvw = Main_Frame_upvr_2.Rarity_Text
						if var100_upvw.UIStroke then
							var100_upvw = Main_Frame_upvr_2.Rarity_Text
							local any_ToHSV_result1_5, any_ToHSV_result2_4, any_ToHSV_result3_2 = _2:ToHSV()
							var100_upvw = Color3.fromHSV(any_ToHSV_result1_5, any_ToHSV_result2_4, any_ToHSV_result3_2 / 2)
							var100_upvw.UIStroke.Color = var100_upvw
						end
						Main_Frame_upvr_2.Rarity_BG.ImageColor3 = _2
					end
				end
				Main_Frame_upvr_2.Gear_Text.Text = v_3_upvr.GearName
				Main_Frame_upvr_2.Gear_Text_Shadow.Text = v_3_upvr.GearName
				Main_Frame_upvr_2.Description_Text.Text = v_3_upvr.GearDescription
				var100_upvw = Comma_Module_upvr.Comma(v_3_upvr.Price)
				Main_Frame_upvr_2.Cost_Text.Text = var100_upvw.."\xA2"
				Main_Frame_upvr_2:WaitForChild("Gear_Image").Image = v_3_upvr.Asset
				clone_upvr_4.Parent = ScrollingFrame_upvr
				local clone_upvr_3 = ItemPadding_upvr:Clone()
				var100_upvw = v_3_upvr.LayoutOrder
				clone_upvr_3.LayoutOrder = var100_upvw * 10 + 1
				var100_upvw = "_Padding"
				clone_upvr_3.Name = i_3_upvr..var100_upvw
				clone_upvr_3.Parent = ScrollingFrame_upvr
				tbl_6_upvr[clone_upvr_3.Name] = clone_upvr_3
				local Frame_upvr = clone_upvr_4.Frame
				var100_upvw = Frame_upvr.Sheckles_Buy.In_Stock
				var100_upvw = Comma_Module_upvr.Comma(v_3_upvr.Price).."\xA2"
				var100_upvw.Cost_Text.Text = var100_upvw
				var100_upvw = Frame_upvr.Sheckles_Buy
				var100_upvw.Activated:Connect(function() -- Line 178
					--[[ Upvalues[2]:
						[1]: ReplicatedStorage_upvr (copied, readonly)
						[2]: i_3_upvr (readonly)
					]]
					ReplicatedStorage_upvr.GameEvents.BuyGearStock:FireServer(i_3_upvr)
				end)
				var100_upvw = Frame_upvr.Robux_Buy
				var100_upvw.Activated:Connect(function() -- Line 182
					--[[ Upvalues[2]:
						[1]: MarketController_upvr (copied, readonly)
						[2]: v_3_upvr (readonly)
					]]
					MarketController_upvr:PromptPurchase(v_3_upvr.PurchaseID, Enum.InfoType.Product)
				end)
				if v_3_upvr.GiftPurchaseID == nil then
					var100_upvw = false
				else
					var100_upvw = true
				end
				Frame_upvr.Gift.Visible = var100_upvw
				if v_3_upvr.GiftPurchaseID then
					var100_upvw = Frame_upvr.Gift
					var100_upvw.Activated:Connect(function() -- Line 188
						--[[ Upvalues[3]:
							[1]: Click_upvr (copied, readonly)
							[2]: GiftController_upvr (copied, readonly)
							[3]: v_3_upvr (readonly)
						]]
						Click_upvr.PlaybackSpeed = 1 + math.random(-15, 15) / 100
						Click_upvr.TimePosition = 0
						Click_upvr.Playing = true
						GiftController_upvr:PromptGiftFromGiftId(v_3_upvr.GiftPurchaseID)
					end)
				end
				local function updateOptions() -- Line 196
					--[[ Upvalues[5]:
						[1]: var27_upvw (copied, read and write)
						[2]: i_3_upvr (readonly)
						[3]: Frame_upvr (readonly)
						[4]: FastTween_upvr (copied, readonly)
						[5]: clone_upvr_3 (readonly)
					]]
					if var27_upvw == i_3_upvr then
						Frame_upvr.Visible = true
						FastTween_upvr(Frame_upvr, TweenInfo.new(0.25), {
							Position = UDim2.fromScale(0.5, 1.3);
						})
						FastTween_upvr(clone_upvr_3, TweenInfo.new(0.25), {
							Size = UDim2.fromScale(0.13, 0.25);
						})
					else
						Frame_upvr.Visible = false
						FastTween_upvr(Frame_upvr, TweenInfo.new(0.25), {
							Position = UDim2.fromScale(0.5, 0.5);
						})
						FastTween_upvr(clone_upvr_3, TweenInfo.new(0.25), {
							Size = UDim2.fromScale(0.13, 0.02);
						})
					end
				end
				var100_upvw = any_new_result1_upvr:Connect
				var100_upvw(updateOptions)
				var100_upvw = task.spawn
				var100_upvw(updateOptions)
				var100_upvw = false
				Main_Frame_upvr_2.Activated:Connect(function() -- Line 212
					--[[ Upvalues[13]:
						[1]: FastTween_upvr (copied, readonly)
						[2]: ScrollingFrame_upvr (copied, readonly)
						[3]: clone_upvr_4 (readonly)
						[4]: tbl_7_upvr (readonly)
						[5]: var27_upvw (copied, read and write)
						[6]: i_3_upvr (readonly)
						[7]: any_new_result1_upvr (copied, readonly)
						[8]: var100_upvw (read and write)
						[9]: UseDynamicPrices_upvr (copied, readonly)
						[10]: v_3_upvr (readonly)
						[11]: Frame_upvr (readonly)
						[12]: MarketController_upvr (copied, readonly)
						[13]: Comma_Module_upvr (copied, readonly)
					]]
					local var125 = FastTween_upvr
					var125(ScrollingFrame_upvr, TweenInfo.new(0.35), {
						CanvasPosition = Vector2.new(0, clone_upvr_4.AbsoluteSize.Y * (table.find(tbl_7_upvr, clone_upvr_4) - 1));
					})
					if var27_upvw == i_3_upvr then
						var125 = nil
					else
						var125 = i_3_upvr
					end
					var27_upvw = var125
					any_new_result1_upvr:Fire()
					if not var100_upvw then
						if UseDynamicPrices_upvr or v_3_upvr.FallbackPrice == nil then
							if not UseDynamicPrices_upvr then
								warn(`{Frame_upvr:GetFullName()} is using Dynamic Pricing because there is no Fallback Price set`)
							end
							MarketController_upvr:SetPriceLabel(Frame_upvr.Robux_Buy.Price, v_3_upvr.PurchaseID, ":robux::value:")
						else
							Frame_upvr.Robux_Buy.Price.Text = `{utf8.char(57346)}{Comma_Module_upvr.Comma(v_3_upvr.FallbackPrice)}`
						end
						var100_upvw = true
					end
				end)
				local function updateStock_upvr() -- Line 235, Named "updateStock"
					--[[ Upvalues[7]:
						[1]: DataService_upvr (copied, readonly)
						[2]: i_3_upvr (readonly)
						[3]: Main_Frame_upvr_2 (readonly)
						[4]: v_3_upvr (readonly)
						[5]: Frame_upvr (readonly)
						[6]: MarketController_upvr (copied, readonly)
						[7]: Comma_Module_upvr (copied, readonly)
					]]
					-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
					-- KONSTANTERROR: [0] 1. Error Block 52 start (CF ANALYSIS FAILED)
					local any_GetData_result1 = DataService_upvr:GetData()
					local var128 = any_GetData_result1
					if var128 then
						var128 = any_GetData_result1.GearStock.Stocks[i_3_upvr]
					end
					if not var128 or not var128.Stock then
						local var129 = 0
					end
					if v_3_upvr.RobuxOnly then
						-- KONSTANTWARNING: GOTO [32] #26
					end
					-- KONSTANTERROR: [0] 1. Error Block 52 end (CF ANALYSIS FAILED)
					-- KONSTANTERROR: [26] 21. Error Block 62 start (CF ANALYSIS FAILED)
					Main_Frame_upvr_2.Stock_Text.Text = `X{var129} Stock`
					local Sheckles_Buy_2 = Frame_upvr.Sheckles_Buy
					if 0 >= var129 then
						Sheckles_Buy_2 = false
					else
						Sheckles_Buy_2 = true
					end
					Sheckles_Buy_2.In_Stock.Visible = Sheckles_Buy_2
					if var129 > 0 then
						-- KONSTANTWARNING: GOTO [56] #42
					end
					Frame_upvr.Sheckles_Buy.No_Stock.Visible = true
					if 0 < var129 then
						-- KONSTANTWARNING: GOTO [67] #50
					end
					Frame_upvr.Sheckles_Buy.HoverImage = "rbxassetid://138411009141674"
					if 0 < var129 then
					else
					end
					Frame_upvr.Sheckles_Buy.Image = "rbxassetid://104713419928195"
					Frame_upvr.Sheckles_Buy.Visible = not v_3_upvr.RobuxOnly
					if v_3_upvr.RobuxOnly then
						Main_Frame_upvr_2.Cost_Text.Text = "???"
						MarketController_upvr:SetPriceLabel(Main_Frame_upvr_2.Cost_Text, v_3_upvr.PurchaseID, ":robux::value:")
					else
						local var131 = Main_Frame_upvr_2
						if var129 <= 0 then
							var131 = "NO STOCK"
						else
							var131 = Comma_Module_upvr.Comma(v_3_upvr.Price).."\xA2"
						end
						var131.Cost_Text.Text = var131
						var131 = Main_Frame_upvr_2
						local var132 = var131
						if var129 <= 0 then
							var132 = Color3.fromRGB(255, 0, 0)
						else
							var132 = Color3.fromRGB(0, 255, 0)
						end
						var132.Cost_Text.TextColor3 = var132
						-- KONSTANTERROR: [26] 21. Error Block 62 end (CF ANALYSIS FAILED)
					end
				end
				task.spawn(updateStock_upvr)
				task.spawn(function() -- Line 261
					--[[ Upvalues[3]:
						[1]: DataService_upvr (copied, readonly)
						[2]: updateStock_upvr (readonly)
						[3]: tbl_5_upvr (copied, readonly)
					]]
					local any_GetPathSignal_result1 = DataService_upvr:GetPathSignal("GearStock/@")
					if any_GetPathSignal_result1 then
						table.insert(tbl_5_upvr, any_GetPathSignal_result1:Connect(updateStock_upvr))
					end
				end)
			end
		end
	end
	table.sort(tbl_7_upvr, function(arg1, arg2) -- Line 271
		local LayoutOrder = arg1.LayoutOrder
		if LayoutOrder == arg2.LayoutOrder then
			if arg1.Name >= arg2.Name then
				LayoutOrder = false
			else
				LayoutOrder = true
			end
			return LayoutOrder
		end
		if arg1.LayoutOrder >= arg2.LayoutOrder then
			LayoutOrder = false
		else
			LayoutOrder = true
		end
		return LayoutOrder
	end)
end
local GuiController_upvr = require(ReplicatedStorage_upvr.Modules.GuiController)
function module.Start(arg1) -- Line 279
	--[[ Upvalues[6]:
		[1]: GuiController_upvr (readonly)
		[2]: Gear_Shop_upvr (readonly)
		[3]: MarketController_upvr (readonly)
		[4]: UpdateService_upvr (readonly)
		[5]: SetupFrames_upvr (readonly)
		[6]: SetupTimer_upvr (readonly)
	]]
	GuiController_upvr:UsePopupAnims(Gear_Shop_upvr)
	Gear_Shop_upvr.Frame.Frame.ExitButton.Activated:Connect(function() -- Line 282
		--[[ Upvalues[2]:
			[1]: GuiController_upvr (copied, readonly)
			[2]: Gear_Shop_upvr (copied, readonly)
		]]
		GuiController_upvr:Close(Gear_Shop_upvr)
	end)
	Gear_Shop_upvr.Frame.Frame.Restock.Activated:Connect(function() -- Line 286
		--[[ Upvalues[1]:
			[1]: MarketController_upvr (copied, readonly)
		]]
		MarketController_upvr:PromptPurchase(3265941675, Enum.InfoType.Product)
	end)
	if not UpdateService_upvr:IsUpdateDone() then
		task.delay(UpdateService_upvr:GetRemainingTimeUntilUpdate(), function() -- Line 291
			--[[ Upvalues[1]:
				[1]: SetupFrames_upvr (copied, readonly)
			]]
			SetupFrames_upvr()
		end)
	end
	task.spawn(SetupTimer_upvr)
	SetupFrames_upvr()
end
task.spawn(module.Start, module)
return module