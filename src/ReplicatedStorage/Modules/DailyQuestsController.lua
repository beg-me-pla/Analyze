-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:09
-- Luau version 6, Types version 3
-- Time taken: 0.003686 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local DailyQuests_UI_upvr = LocalPlayer_upvr.PlayerGui:WaitForChild("DailyQuests_UI")
local ScrollingFrame_upvr = DailyQuests_UI_upvr:WaitForChild("Frame"):WaitForChild("ScrollingFrame")
local ClaimHolder_upvr = ScrollingFrame_upvr:WaitForChild("ClaimHolder")
local Holder_upvr = ScrollingFrame_upvr:WaitForChild("Holder")
Holder_upvr.Parent = script
local module = {}
local function _(arg1) -- Line 40, Named "getCurrentDay"
	return (arg1 + 14400) // 86400
end
local function _(arg1) -- Line 44, Named "getResetTime"
	return ((arg1 + 14400) // 86400 + 1) * 86400 - 14400
end
local GuiController_upvr = require(ReplicatedStorage.Modules.GuiController)
local DataService_upvr = require(ReplicatedStorage.Modules.DataService)
local QuestsController_upvr = require(ReplicatedStorage.Modules.QuestsController)
local Claimed_upvr = ClaimHolder_upvr:WaitForChild("Frame"):WaitForChild("Claimed")
local Claim_upvr = ClaimHolder_upvr:WaitForChild("Frame"):WaitForChild("Claim")
local Claim2_upvr = ClaimHolder_upvr:WaitForChild("Frame"):WaitForChild("Claim2")
local Complete_upvr = ClaimHolder_upvr:WaitForChild("Frame"):WaitForChild("Complete")
local var15_upvw = false
local Remotes_upvr = require(ReplicatedStorage.Modules.Remotes)
local NumberUtil_upvr = require(ReplicatedStorage.Modules.NumberUtil)
function module.Start(arg1) -- Line 50
	--[[ Upvalues[15]:
		[1]: GuiController_upvr (readonly)
		[2]: DailyQuests_UI_upvr (readonly)
		[3]: DataService_upvr (readonly)
		[4]: QuestsController_upvr (readonly)
		[5]: Holder_upvr (readonly)
		[6]: ScrollingFrame_upvr (readonly)
		[7]: Claimed_upvr (readonly)
		[8]: Claim_upvr (readonly)
		[9]: Claim2_upvr (readonly)
		[10]: Complete_upvr (readonly)
		[11]: ClaimHolder_upvr (readonly)
		[12]: var15_upvw (read and write)
		[13]: LocalPlayer_upvr (readonly)
		[14]: Remotes_upvr (readonly)
		[15]: NumberUtil_upvr (readonly)
	]]
	GuiController_upvr:UsePopupAnims(DailyQuests_UI_upvr)
	DailyQuests_UI_upvr.Frame.Frame.ExitButton.Activated:Connect(function() -- Line 53
		--[[ Upvalues[2]:
			[1]: GuiController_upvr (copied, readonly)
			[2]: DailyQuests_UI_upvr (copied, readonly)
		]]
		GuiController_upvr:Close(DailyQuests_UI_upvr)
	end)
	local tbl_upvr = {}
	local function _(arg1_2) -- Line 59, Named "removeQuestFromRender"
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		local var20 = tbl_upvr[arg1_2]
		if var20 then
			var20:Destroy()
			tbl_upvr[arg1_2] = nil
		end
	end
	local function updateQuests() -- Line 68
		--[[ Upvalues[12]:
			[1]: DataService_upvr (copied, readonly)
			[2]: tbl_upvr (readonly)
			[3]: QuestsController_upvr (copied, readonly)
			[4]: Holder_upvr (copied, readonly)
			[5]: ScrollingFrame_upvr (copied, readonly)
			[6]: Claimed_upvr (copied, readonly)
			[7]: Claim_upvr (copied, readonly)
			[8]: Claim2_upvr (copied, readonly)
			[9]: Complete_upvr (copied, readonly)
			[10]: ClaimHolder_upvr (copied, readonly)
			[11]: var15_upvw (copied, read and write)
			[12]: LocalPlayer_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 69 start (CF ANALYSIS FAILED)
		local any_GetData_result1 = DataService_upvr:GetData()
		if not any_GetData_result1 then return end
		if not any_GetData_result1.DailyQuests or not any_GetData_result1.DailyQuests.ContainerId then
			for i in tbl_upvr do
				local var28 = tbl_upvr[i]
				if var28 then
					var28:Destroy()
					tbl_upvr[i] = nil
				end
			end
			table.clear(tbl_upvr)
			return
		end
		local any_GetContainerFromId_result1 = QuestsController_upvr:GetContainerFromId(any_GetData_result1.DailyQuests.ContainerId)
		if not any_GetContainerFromId_result1 then return end
		for i_2, v in any_GetContainerFromId_result1.Quests do
			if not v.Completed then
			end
			local any_GetQuest_result1 = QuestsController_upvr:GetQuest(v.Type)
			if any_GetQuest_result1 then
				local var31 = tbl_upvr[v.Id]
				if not var31 then
					local clone = Holder_upvr:Clone()
					clone.LayoutOrder = i_2 + 1
					clone.Parent = ScrollingFrame_upvr
					var31 = clone
					tbl_upvr[v.Id] = var31
				end
				local any_Display_result1 = any_GetQuest_result1:Display(v.Progress, v.Target, v.Arguments)
				var31.QuestFrame.Title.Text = any_Display_result1.Title
				var31.QuestFrame.Frame.Fill.Size = UDim2.fromScale(math.clamp(v.Progress / v.Target, 0, 1), 1)
				local Frame = var31.QuestFrame.Frame
				if v.Target <= v.Progress then
					Frame = "Completed!"
				else
					Frame = any_Display_result1.Bar
				end
				Frame.Progress.Text = Frame
			end
		end
		-- KONSTANTERROR: [0] 1. Error Block 69 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [147] 103. Error Block 25 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [147] 103. Error Block 25 end (CF ANALYSIS FAILED)
	end
	Claim_upvr.Activated:Connect(function() -- Line 162
		--[[ Upvalues[1]:
			[1]: Remotes_upvr (copied, readonly)
		]]
		Remotes_upvr.DailyQuests.Claim.send()
	end)
	task.spawn(updateQuests)
	assert(DataService_upvr:GetPathSignal("DailyQuests/@"), "Failed to listen for Daily Quests"):Connect(updateQuests)
	assert(DataService_upvr:GetPathSignal("QuestContainers/@"), "Failed to listen for Quest Containers"):Connect(updateQuests)
	task.spawn(function() -- Line 170
		--[[ Upvalues[2]:
			[1]: DailyQuests_UI_upvr (copied, readonly)
			[2]: NumberUtil_upvr (copied, readonly)
		]]
		while true do
			local workspace_GetServerTimeNow_result1 = workspace:GetServerTimeNow()
			DailyQuests_UI_upvr.Frame.Resets.Text = `Resets in {NumberUtil_upvr.compactFormat(((workspace_GetServerTimeNow_result1 + 14400) // 86400 + 1) * 86400 - 14400 - workspace_GetServerTimeNow_result1)}`
			task.wait(1)
		end
	end)
end
task.spawn(module.Start, module)
return module