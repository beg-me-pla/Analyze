-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:46
-- Luau version 6, Types version 3
-- Time taken: 0.003658 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local SaveSlotController_upvr = require(ReplicatedStorage.Modules.SaveSlotControllers.SaveSlotController)
local GuiController_upvr = require(ReplicatedStorage.Modules.GuiController)
local TimeHelper_upvr = require(ReplicatedStorage.Modules.TimeHelper)
local SaveSlotUI_upvr = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("SaveSlotUI")
local module_upvr = {
	RenderedSlots = {};
	State = false;
}
local RenderedSlots_upvr = module_upvr.RenderedSlots
local ScrollingFrame_upvr = SaveSlotUI_upvr.Frame.Frame.Holder.Main.ScrollingFrame
local SlotTemplate_upvr = ScrollingFrame_upvr.SlotTemplate
SlotTemplate_upvr.Visible = false
function module_upvr.Toggle(arg1, arg2) -- Line 33
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: GuiController_upvr (readonly)
		[3]: SaveSlotUI_upvr (readonly)
	]]
	module_upvr.State = arg2
	if arg2 then
		GuiController_upvr:Open(SaveSlotUI_upvr)
	else
		GuiController_upvr:Close(SaveSlotUI_upvr)
	end
end
local CountDictionary_upvr = require(ReplicatedStorage.Modules.CountDictionary)
local SaveSlotConfigData_upvr = require(ReplicatedStorage.Data.SaveSlotConfigData)
function module_upvr.RenderSlots(arg1) -- Line 42
	--[[ Upvalues[7]:
		[1]: SaveSlotController_upvr (readonly)
		[2]: CountDictionary_upvr (readonly)
		[3]: RenderedSlots_upvr (readonly)
		[4]: SlotTemplate_upvr (readonly)
		[5]: TimeHelper_upvr (readonly)
		[6]: ScrollingFrame_upvr (readonly)
		[7]: SaveSlotConfigData_upvr (readonly)
	]]
	local any_GetAllSlots_result1 = SaveSlotController_upvr:GetAllSlots()
	local var17 = workspace:GetServerTimeNow() // 1
	for i_upvr, v in any_GetAllSlots_result1 do
		local var18 = RenderedSlots_upvr[i_upvr]
		if not var18 then
			local clone = SlotTemplate_upvr:Clone()
			RenderedSlots_upvr[i_upvr] = clone
			clone.Main.Buttons.Load.SENSOR.Activated:Connect(function() -- Line 60
				--[[ Upvalues[2]:
					[1]: SaveSlotController_upvr (copied, readonly)
					[2]: i_upvr (readonly)
				]]
				SaveSlotController_upvr:ChangeSlots(i_upvr)
			end)
			local TextInstances = clone.Main.TextInstances
			local var22 = var17 - v.LastSaveTime or 0
			local var23 = ""
			if var22 <= 2 or not var22 then
				var23 = "now"
			else
				var23 = `{TimeHelper_upvr:GenerateTextFromTime(var17 - v.LastSaveTime, true)} Ago`
			end
			TextInstances.TextLabel1.Text = `Last Loaded: {var23}`
			TextInstances.TextLabel.Text = v.SlotName
			var18 = clone
			clone.Visible = true
			clone.Parent = ScrollingFrame_upvr
		end
		local Buttons = var18.Main.Buttons
		if v ~= SaveSlotController_upvr:GetCurrentSaveSlot() then
			Buttons = false
		else
			Buttons = true
		end
		Buttons.Load.Visible = not Buttons
		var18.Main.Buttons.SelectedOverlay.Visible = Buttons
	end
	local var25 = ScrollingFrame_upvr
	if CountDictionary_upvr(any_GetAllSlots_result1) >= SaveSlotConfigData_upvr.MAX_SLOTS then
		var25 = false
	else
		var25 = true
	end
	var25.SlotPurchaseTemplate.Visible = var25
end
function module_upvr.UpdateTime(arg1) -- Line 106
	--[[ Upvalues[3]:
		[1]: SaveSlotController_upvr (readonly)
		[2]: RenderedSlots_upvr (readonly)
		[3]: TimeHelper_upvr (readonly)
	]]
	local workspace_GetServerTimeNow_result1 = workspace:GetServerTimeNow()
	for i_2, v_2 in SaveSlotController_upvr:GetAllSlots(), nil do
		local var31 = RenderedSlots_upvr[i_2]
		if var31 then
			local var33 = workspace_GetServerTimeNow_result1 - v_2.LastSaveTime
			local var34 = ""
			if var33 <= 2 or not var33 then
				var34 = "now"
			else
				var34 = `{TimeHelper_upvr:GenerateTextFromTime(workspace_GetServerTimeNow_result1 - v_2.LastSaveTime, true)} Ago`
			end
			var31.Main.TextInstances.TextLabel1.Text = `Last Loaded: {var34}`
		end
	end
end
task.spawn(function() -- Line 131
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	while true do
		module_upvr:UpdateTime()
		task.wait(1)
	end
end)
local SENSOR_upvr = SaveSlotUI_upvr.Frame.Frame.Holder.Header.Exit.SENSOR
local DataService_upvr = require(ReplicatedStorage.Modules.DataService)
local MarketController_upvr = require(ReplicatedStorage.Modules.MarketController)
task.spawn(function() -- Line 138
	--[[ Upvalues[8]:
		[1]: GuiController_upvr (readonly)
		[2]: SaveSlotUI_upvr (readonly)
		[3]: module_upvr (readonly)
		[4]: SENSOR_upvr (readonly)
		[5]: DataService_upvr (readonly)
		[6]: ScrollingFrame_upvr (readonly)
		[7]: SaveSlotController_upvr (readonly)
		[8]: MarketController_upvr (readonly)
	]]
	GuiController_upvr:UsePopupAnims(SaveSlotUI_upvr)
	local any_GetStateForGui_result1_upvr = GuiController_upvr:GetStateForGui(SaveSlotUI_upvr)
	any_GetStateForGui_result1_upvr.Visible:Observe(function(arg1) -- Line 144
		--[[ Upvalues[1]:
			[1]: module_upvr (copied, readonly)
		]]
		module_upvr.State = arg1
		if arg1 then
			module_upvr:RenderSlots()
		end
	end)
	SENSOR_upvr.Activated:Connect(function() -- Line 151
		--[[ Upvalues[1]:
			[1]: module_upvr (copied, readonly)
		]]
		module_upvr:Toggle(false)
	end)
	assert(DataService_upvr:GetPathSignal("SaveSlots/@")):Connect(function() -- Line 155
		--[[ Upvalues[2]:
			[1]: any_GetStateForGui_result1_upvr (readonly)
			[2]: module_upvr (copied, readonly)
		]]
		if any_GetStateForGui_result1_upvr.Visible:Get() then
			module_upvr:RenderSlots()
		end
	end)
	ScrollingFrame_upvr.SlotPurchaseTemplate.Main.Buttons.Purchase.SENSOR.Activated:Connect(function() -- Line 161
		--[[ Upvalues[1]:
			[1]: SaveSlotController_upvr (copied, readonly)
		]]
		SaveSlotController_upvr:PurchaseSlot()
	end)
	ScrollingFrame_upvr.SlotPurchaseTemplate.Main.Buttons.PurchaseRobux.SENSOR.Activated:Connect(function() -- Line 165
		--[[ Upvalues[1]:
			[1]: MarketController_upvr (copied, readonly)
		]]
		MarketController_upvr:PromptPurchase(3338111738, Enum.InfoType.Product)
	end)
end)
return module_upvr