-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:40
-- Luau version 6, Types version 3
-- Time taken: 0.009863 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local PlayerGui = game:GetService("Players").LocalPlayer.PlayerGui
local ZenQuest_UI_upvr = PlayerGui:WaitForChild("ZenQuest_UI")
local module = {}
local function _(arg1) -- Line 49, Named "toV3"
	return vector.create(arg1.X, arg1.Y)
end
local function _(arg1, arg2, arg3, arg4) -- Line 53, Named "quadraticBezier"
	return (1 - arg1) ^ 2 * arg2 + (1 - arg1) * 2 * arg1 * arg3 + arg1 ^ 2 * arg4
end
local function _(arg1) -- Line 57, Named "getCurrentDay"
	return (arg1 + 14400) // 1800
end
local function _(arg1) -- Line 61, Named "getResetTime"
	return ((arg1 + 14400) // 1800 + 1) * 1800 - 14400
end
local GuiController_upvr = require(ReplicatedStorage_upvr.Modules.GuiController)
local MarketController_upvr = require(ReplicatedStorage_upvr.Modules.MarketController)
local DataService_upvr = require(ReplicatedStorage_upvr.Modules.DataService)
local ZenProgressData_upvr = require(ReplicatedStorage_upvr.Data.ZenProgressData)
local FastTween_upvr = require(ReplicatedStorage_upvr.Modules.FastTween)
local Progress_upvr = ZenQuest_UI_upvr.Frame.Main.Holder.ZenDisplay.Progress
local QuestsController_upvr = require(ReplicatedStorage_upvr.Modules.QuestsController)
local QuestPanels_upvr = ZenQuest_UI_upvr.Frame.Main.Holder.QuestPanels
local Assets_upvr = ReplicatedStorage_upvr.Assets
local AnimationUI_upvr = PlayerGui:WaitForChild("AnimationUI")
local RunService_upvr = game:GetService("RunService")
local NumberUtil_upvr = require(ReplicatedStorage_upvr.Modules.NumberUtil)
function module.Start(arg1) -- Line 66
	--[[ Upvalues[14]:
		[1]: GuiController_upvr (readonly)
		[2]: ZenQuest_UI_upvr (readonly)
		[3]: MarketController_upvr (readonly)
		[4]: DataService_upvr (readonly)
		[5]: ZenProgressData_upvr (readonly)
		[6]: FastTween_upvr (readonly)
		[7]: Progress_upvr (readonly)
		[8]: QuestsController_upvr (readonly)
		[9]: QuestPanels_upvr (readonly)
		[10]: ReplicatedStorage_upvr (readonly)
		[11]: Assets_upvr (readonly)
		[12]: AnimationUI_upvr (readonly)
		[13]: RunService_upvr (readonly)
		[14]: NumberUtil_upvr (readonly)
	]]
	GuiController_upvr:UsePopupAnims(ZenQuest_UI_upvr)
	ZenQuest_UI_upvr.Frame.Main.Holder.Header.Exit.SENSOR.Activated:Connect(function() -- Line 70
		--[[ Upvalues[2]:
			[1]: GuiController_upvr (copied, readonly)
			[2]: ZenQuest_UI_upvr (copied, readonly)
		]]
		GuiController_upvr:Close(ZenQuest_UI_upvr)
	end)
	ZenQuest_UI_upvr.Frame.Main.Holder.Header.SKIP_QUESTS.Main.SENSOR.Activated:Connect(function() -- Line 74
		--[[ Upvalues[1]:
			[1]: MarketController_upvr (copied, readonly)
		]]
		MarketController_upvr:PromptPurchase(3337939556, Enum.InfoType.Product)
	end)
	local var19_upvw = true
	local tbl_2_upvr = {}
	local function _(arg1_2) -- Line 83, Named "removeQuestFromRender"
		--[[ Upvalues[1]:
			[1]: tbl_2_upvr (readonly)
		]]
		local var21 = tbl_2_upvr[arg1_2]
		if var21 then
			var21:Destroy()
			tbl_2_upvr[arg1_2] = nil
		end
	end
	local var22_upvw = 0
	local function updateProgress_upvr() -- Line 94, Named "updateProgress"
		--[[ Upvalues[7]:
			[1]: DataService_upvr (copied, readonly)
			[2]: ZenProgressData_upvr (copied, readonly)
			[3]: FastTween_upvr (copied, readonly)
			[4]: Progress_upvr (copied, readonly)
			[5]: var22_upvw (read and write)
			[6]: ZenQuest_UI_upvr (copied, readonly)
			[7]: GuiController_upvr (copied, readonly)
		]]
		local any_GetData_result1 = DataService_upvr:GetData()
		if not any_GetData_result1 then
		else
			local ZenObtained = any_GetData_result1.ZenQuests.Progression.ZenObtained
			local ZenRequirement = ZenProgressData_upvr.ZenRequirement
			FastTween_upvr(Progress_upvr.Gradient, TweenInfo.new(0.6, Enum.EasingStyle.Circular), {
				Offset = Vector2.new(0, 0.5 - math.clamp(ZenObtained / ZenRequirement, 0, 1));
			})
			if ZenObtained == ZenRequirement and #any_GetData_result1.ZenQuests.Progression.Completed ~= var22_upvw then
				local clone_3 = Progress_upvr:Clone()
				clone_3.Gradient:Destroy()
				clone_3.Parent = ZenQuest_UI_upvr.Frame.Main.Holder.ZenDisplay
				FastTween_upvr(clone_3.UIScale, TweenInfo.new(0.6, Enum.EasingStyle.Quad), {
					Scale = 1.5;
				})
				FastTween_upvr(clone_3, TweenInfo.new(0.6, Enum.EasingStyle.Quad), {
					ImageTransparency = 1;
				})
				script.QuestAllComplete:Play()
				task.delay(0.6, function() -- Line 118
					--[[ Upvalues[2]:
						[1]: GuiController_upvr (copied, readonly)
						[2]: ZenQuest_UI_upvr (copied, readonly)
					]]
					GuiController_upvr:Close(ZenQuest_UI_upvr)
				end)
				var22_upvw = #any_GetData_result1.ZenQuests.Progression.Completed
			end
		end
	end
	local function updateQuests_upvr() -- Line 127, Named "updateQuests"
		--[[ Upvalues[13]:
			[1]: DataService_upvr (copied, readonly)
			[2]: tbl_2_upvr (readonly)
			[3]: QuestsController_upvr (copied, readonly)
			[4]: QuestPanels_upvr (copied, readonly)
			[5]: var19_upvw (read and write)
			[6]: ReplicatedStorage_upvr (copied, readonly)
			[7]: Assets_upvr (copied, readonly)
			[8]: AnimationUI_upvr (copied, readonly)
			[9]: RunService_upvr (copied, readonly)
			[10]: FastTween_upvr (copied, readonly)
			[11]: Progress_upvr (copied, readonly)
			[12]: updateProgress_upvr (readonly)
			[13]: ZenQuest_UI_upvr (copied, readonly)
		]]
		local any_GetData_result1_2 = DataService_upvr:GetData()
		local var94
		if not any_GetData_result1_2 then
		else
			var94 = any_GetData_result1_2.ZenQuests
			if not var94 then
				var94 = tbl_2_upvr
				for i in var94 do
					local var95 = tbl_2_upvr[i]
					if var95 then
						var95:Destroy()
						tbl_2_upvr[i] = nil
					end
				end
				var94 = table.clear
				var94(tbl_2_upvr)
				return
			end
			var94 = false
			for i_2_upvr, v in any_GetData_result1_2.ZenQuests.Containers do
				local any_GetContainerFromId_result1_2 = QuestsController_upvr:GetContainerFromId(v)
				local var97
				if any_GetContainerFromId_result1_2 then
					var97 = any_GetContainerFromId_result1_2.Rewards
					local _1 = var97[1]
					if _1 then
						var97 = QuestsController_upvr:GetRewardInfo(_1.Type)
					else
						var97 = nil
					end
					for i_3, v_2 in any_GetContainerFromId_result1_2.Quests do
						local any_GetQuest_result1_2 = QuestsController_upvr:GetQuest(v_2.Type)
						local var100_upvr
						if any_GetQuest_result1_2 then
							local var101 = tbl_2_upvr[v_2.Id]
							if not var101 then
								var100_upvr = QuestPanels_upvr
								local clone_2 = var100_upvr.UIListLayout.Segment:Clone()
								if var97 and var97.DisplayIcon then
									var100_upvr = clone_2.ICON.Main
									var100_upvr = var97:DisplayIcon(_1) or ""
									var100_upvr.REWARD_IMAGE.Image = var100_upvr
								else
									var100_upvr = clone_2.ICON.Main
									var100_upvr = ""
									var100_upvr.REWARD_IMAGE.Image = var100_upvr
								end
								clone_2.LayoutOrder = i_3 + 1
								clone_2.Parent = QuestPanels_upvr
								var100_upvr = clone_2.CLAIM_BUTTON.Main.SENSOR
								local var104_upvw = true
								var100_upvr.Activated:Connect(function() -- Line 177
									--[[ Upvalues[11]:
										[1]: var104_upvw (read and write)
										[2]: var19_upvw (copied, read and write)
										[3]: ReplicatedStorage_upvr (copied, readonly)
										[4]: i_2_upvr (readonly)
										[5]: Assets_upvr (copied, readonly)
										[6]: AnimationUI_upvr (copied, readonly)
										[7]: RunService_upvr (copied, readonly)
										[8]: FastTween_upvr (copied, readonly)
										[9]: var100_upvr (readonly)
										[10]: Progress_upvr (copied, readonly)
										[11]: updateProgress_upvr (copied, readonly)
									]]
									if not var104_upvw then
									else
										var104_upvw = false
										var19_upvw = false
										local pcall_result1_2, pcall_result2 = pcall(function() -- Line 185
											--[[ Upvalues[2]:
												[1]: ReplicatedStorage_upvr (copied, readonly)
												[2]: i_2_upvr (copied, readonly)
											]]
											return ReplicatedStorage_upvr.GameEvents.ClaimZenQuest:InvokeServer(i_2_upvr)
										end)
										if not pcall_result1_2 or not pcall_result2 then
											var19_upvw = true
											return
										end
										script.QuestComplete:Play()
										local clone_upvr_2 = Assets_upvr.Zen2d:Clone()
										clone_upvr_2.Position = UDim2.fromOffset(0, 0)
										clone_upvr_2.UIScale.Scale = 0
										clone_upvr_2.Parent = AnimationUI_upvr
										RunService_upvr.PreRender:Wait()
										FastTween_upvr(clone_upvr_2.UIScale, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {
											Scale = math.random(1, 1.1);
										})
										task.wait(0.15)
										local AbsolutePosition_2 = var100_upvr.AbsolutePosition
										local AbsoluteSize_4 = var100_upvr.AbsoluteSize
										local var112_upvr = vector.create(AbsolutePosition_2.X, AbsolutePosition_2.Y) + vector.create(AbsoluteSize_4.X, AbsoluteSize_4.Y) * 0.5
										local AbsolutePosition_4 = Progress_upvr.AbsolutePosition
										local AbsoluteSize_3 = Progress_upvr.AbsoluteSize
										local var115_upvr = vector.create(AbsolutePosition_4.X, AbsolutePosition_4.Y) + vector.create(AbsoluteSize_3.X, AbsoluteSize_3.Y) * 0.5
										local var117_upvw = 0
										local vector_create_result1_upvr = vector.create((var112_upvr.x + var115_upvr.x) * 0.5, math.min(var112_upvr.y, var115_upvr.y) - 100)
										local var119_upvw
										var119_upvw = RunService_upvr.PreRender:Connect(function(arg1_4) -- Line 220
											--[[ Upvalues[9]:
												[1]: var117_upvw (read and write)
												[2]: var112_upvr (readonly)
												[3]: vector_create_result1_upvr (readonly)
												[4]: var115_upvr (readonly)
												[5]: clone_upvr_2 (readonly)
												[6]: var119_upvw (read and write)
												[7]: FastTween_upvr (copied, readonly)
												[8]: var19_upvw (copied, read and write)
												[9]: updateProgress_upvr (copied, readonly)
											]]
											var117_upvw += arg1_4
											local sine_2 = math.sin(math.clamp(var117_upvw / 1, 0, 1) * math.pi * 0.5)
											local var123 = (1 - sine_2) ^ 2 * var112_upvr + (1 - sine_2) * 2 * sine_2 * vector_create_result1_upvr + sine_2 ^ 2 * var115_upvr
											clone_upvr_2.Position = UDim2.fromOffset(var123.x, var123.y)
											if 1 <= sine_2 then
												if var119_upvw then
													var119_upvw:Disconnect()
												end
												FastTween_upvr(clone_upvr_2.UIScale, TweenInfo.new(1, Enum.EasingStyle.Quad), {
													Scale = clone_upvr_2.UIScale.Scale + 1;
												})
												for _, v_3 in clone_upvr_2:GetChildren() do
													if v_3:IsA("ImageLabel") then
														FastTween_upvr(v_3, TweenInfo.new(1, Enum.EasingStyle.Quad), {
															ImageTransparency = 1;
														})
													end
												end
												var19_upvw = true
												task.delay(1.1, clone_upvr_2.Destroy, clone_upvr_2)
												updateProgress_upvr()
											end
										end)
									end
								end)
								var101 = clone_2
								tbl_2_upvr[v_2.Id] = var101
							end
							;({})[v_2.Id] = true
							local any_Display_result1 = any_GetQuest_result1_2:Display(v_2.Progress, v_2.Target, v_2.Arguments)
							var101.QUEST_NAME.Text = any_Display_result1.Title
							if v_2.Completed then
							else
							end
							var101.QUEST_PROGRESS.Text = any_Display_result1.Bar
							var101.QUEST_NAME_SHADOW.Text = any_Display_result1.Title
							if v_2.Completed then
							else
							end
							var101.QUEST_PROGRESS_SHADOW.Text = any_Display_result1.Bar
							if v_2.Completed then
							end
							var101.COMPLETED_OVERLAY.Visible = any_GetContainerFromId_result1_2.Redeemed
							if v_2.Completed then
							end
							var101.CLAIM_BUTTON.Visible = not any_GetContainerFromId_result1_2.Redeemed
							if not v_2.Completed then
								var94 = true
							end
						end
					end
				end
			end
			for i_4 in tbl_2_upvr do
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if ({})[i_4] ~= true then
					local var130 = tbl_2_upvr[i_4]
					if var130 then
						var130:Destroy()
						var97 = nil
						tbl_2_upvr[i_4] = var97
					end
				end
			end
			ZenQuest_UI_upvr.Frame.Main.Holder.Header.SKIP_QUESTS.Visible = var94
		end
	end
	local function update() -- Line 281
		--[[ Upvalues[3]:
			[1]: var19_upvw (read and write)
			[2]: updateProgress_upvr (readonly)
			[3]: updateQuests_upvr (readonly)
		]]
		if var19_upvw then
			updateProgress_upvr()
		end
		updateQuests_upvr()
	end
	assert(DataService_upvr:GetPathSignal("ZenQuests/@"), "Failed to listen for Zen Quests"):Connect(update)
	assert(DataService_upvr:GetPathSignal("QuestContainers/@"), "Failed to listen for Quest Containers"):Connect(update)
	task.spawn(update)
	task.spawn(function() -- Line 294
		--[[ Upvalues[2]:
			[1]: ZenQuest_UI_upvr (copied, readonly)
			[2]: NumberUtil_upvr (copied, readonly)
		]]
		while true do
			local workspace_GetServerTimeNow_result1 = workspace:GetServerTimeNow()
			local var133 = ((workspace_GetServerTimeNow_result1 + 14400) // 1800 + 1) * 1800 - 14400
			ZenQuest_UI_upvr.Frame.Main.Holder.Header.Timer.Text = `Resets in {NumberUtil_upvr.compactFormat(var133 - workspace_GetServerTimeNow_result1)}`
			ZenQuest_UI_upvr.Frame.Main.Holder.Header.Timer_Shadow.Text = `Resets in {NumberUtil_upvr.compactFormat(var133 - workspace_GetServerTimeNow_result1)}`
			task.wait(1)
		end
	end)
	task.spawn(function() -- Line 305
		--[[ Upvalues[2]:
			[1]: RunService_upvr (copied, readonly)
			[2]: ZenQuest_UI_upvr (copied, readonly)
		]]
		while true do
			local any_Wait_result1 = RunService_upvr.RenderStepped:Wait()
			local Effect1 = ZenQuest_UI_upvr.Frame.Main.Holder.ZenDisplay.Effect1
			Effect1.Rotation += 0.1 * any_Wait_result1 * 60
			local Effect2 = ZenQuest_UI_upvr.Frame.Main.Holder.ZenDisplay.Effect2
			Effect2.Rotation += 0.1 * any_Wait_result1 * 60
		end
	end)
end
return module