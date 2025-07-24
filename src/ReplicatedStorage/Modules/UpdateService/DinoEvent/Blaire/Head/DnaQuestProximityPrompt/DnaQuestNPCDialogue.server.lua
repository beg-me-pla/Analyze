-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:32
-- Luau version 6, Types version 3
-- Time taken: 0.006665 seconds

local TweenService_upvr = game:GetService("TweenService")
local Debris_upvr = game:GetService("Debris")
local TweenInfo_new_result1_upvr = TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
local Parent_upvr = script.Parent
local Parent_upvr_2 = Parent_upvr.Parent.Parent
local LocalPlayer_upvr = game.Players.LocalPlayer
local Top_Text_upvr = require(game.ReplicatedStorage.Top_Text)
local NPC_MOD_upvr = require(game.ReplicatedStorage.NPC_MOD)
local var10_upvw
local var11_upvw = false
local var12_upvw = true
local var13_upvw = false
local var14_upvw
local function waitForDuration_upvr(arg1) -- Line 34, Named "waitForDuration"
	--[[ Upvalues[1]:
		[1]: var13_upvw (read and write)
	]]
	while time() - time() < arg1 do
		task.wait()
		if var13_upvw then
			return false
		end
	end
	return true
end
local function CancelConversation_upvr() -- Line 46, Named "CancelConversation"
	--[[ Upvalues[12]:
		[1]: var13_upvw (read and write)
		[2]: var12_upvw (read and write)
		[3]: Top_Text_upvr (readonly)
		[4]: Parent_upvr_2 (readonly)
		[5]: LocalPlayer_upvr (readonly)
		[6]: var10_upvw (read and write)
		[7]: TweenService_upvr (readonly)
		[8]: TweenInfo_new_result1_upvr (readonly)
		[9]: Debris_upvr (readonly)
		[10]: NPC_MOD_upvr (readonly)
		[11]: var14_upvw (read and write)
		[12]: Parent_upvr (readonly)
	]]
	var13_upvw = true
	var12_upvw = true
	Top_Text_upvr.TakeAwayResponses(Parent_upvr_2, LocalPlayer_upvr)
	if var10_upvw then
		TweenService_upvr:Create(var10_upvw, TweenInfo_new_result1_upvr, {
			OutlineTransparency = 1;
		}):Play()
		Debris_upvr:AddItem(var10_upvw, TweenInfo_new_result1_upvr.Time)
	end
	NPC_MOD_upvr.End_Speak(LocalPlayer_upvr)
	var14_upvw = nil
	task.wait(0.7)
	Parent_upvr.Enabled = true
end
local function EndInteraction_upvr() -- Line 65, Named "EndInteraction"
	--[[ Upvalues[9]:
		[1]: var11_upvw (read and write)
		[2]: waitForDuration_upvr (readonly)
		[3]: CancelConversation_upvr (readonly)
		[4]: Top_Text_upvr (readonly)
		[5]: Parent_upvr_2 (readonly)
		[6]: LocalPlayer_upvr (readonly)
		[7]: var12_upvw (read and write)
		[8]: Parent_upvr (readonly)
		[9]: NPC_MOD_upvr (readonly)
	]]
	var11_upvw = false
	if not waitForDuration_upvr(math.random(0.4, 0.5)) then
		return CancelConversation_upvr()
	end
	task.wait(0.5)
	Top_Text_upvr.TakeAwayResponses(Parent_upvr_2, LocalPlayer_upvr)
	waitForDuration_upvr(0.5)
	var12_upvw = true
	Parent_upvr.Enabled = true
	NPC_MOD_upvr.End_Speak(LocalPlayer_upvr)
end
local tbl_upvr = {"Who are you?", "Show me the quest", "Nevermind"}
local tbl_2_upvr = {
	[tbl_upvr[1]] = function() -- Line 86
		--[[ Upvalues[2]:
			[1]: Top_Text_upvr (readonly)
			[2]: Parent_upvr_2 (readonly)
		]]
		task.wait(0.5)
		Top_Text_upvr.NpcText(Parent_upvr_2, "I'm Blaire. Do daily tasks to help me with my research.", true)
		task.wait(2)
	end;
}
local GuiController_upvr = require(game:GetService("ReplicatedStorage").Modules.GuiController)
local DinoQuests_UI_upvr = LocalPlayer_upvr.PlayerGui:WaitForChild("DinoQuests_UI")
tbl_2_upvr[tbl_upvr[2]] = function() -- Line 92
	--[[ Upvalues[2]:
		[1]: GuiController_upvr (readonly)
		[2]: DinoQuests_UI_upvr (readonly)
	]]
	GuiController_upvr:Open(DinoQuests_UI_upvr)
end
tbl_2_upvr[tbl_upvr[3]] = function() -- Line 95
	--[[ Upvalues[1]:
		[1]: var13_upvw (read and write)
	]]
	var13_upvw = true
end
local function StartConversation_upvr() -- Line 100, Named "StartConversation"
	--[[ Upvalues[16]:
		[1]: var12_upvw (read and write)
		[2]: var11_upvw (read and write)
		[3]: var14_upvw (read and write)
		[4]: LocalPlayer_upvr (readonly)
		[5]: NPC_MOD_upvr (readonly)
		[6]: tbl_upvr (readonly)
		[7]: var10_upvw (read and write)
		[8]: TweenService_upvr (readonly)
		[9]: TweenInfo_new_result1_upvr (readonly)
		[10]: Debris_upvr (readonly)
		[11]: var13_upvw (read and write)
		[12]: Parent_upvr (readonly)
		[13]: Top_Text_upvr (readonly)
		[14]: Parent_upvr_2 (readonly)
		[15]: EndInteraction_upvr (readonly)
		[16]: tbl_2_upvr (readonly)
	]]
	local var58_upvw
	if not var12_upvw and var11_upvw then
	else
		var12_upvw = false
		var11_upvw = true
		var14_upvw = LocalPlayer_upvr
		NPC_MOD_upvr.Start_Speak(LocalPlayer_upvr)
		local clone_2 = table.clone(tbl_upvr)
		if var10_upvw then
			var58_upvw = TweenService_upvr:Create(var10_upvw, TweenInfo_new_result1_upvr, {
				OutlineTransparency = 1;
			}):Play
			var58_upvw()
			var58_upvw = Debris_upvr:AddItem
			var58_upvw(var10_upvw, TweenInfo_new_result1_upvr.Time)
		end
		var13_upvw = false
		var58_upvw = false
		Parent_upvr.Enabled = var58_upvw
		var58_upvw = Top_Text_upvr
		var58_upvw = Parent_upvr_2
		var58_upvw.NpcText(var58_upvw, "Whats up?", true)
		var58_upvw = Top_Text_upvr
		var58_upvw = LocalPlayer_upvr
		var58_upvw = ""
		local var61_upvw = ""
		local tbl_3_upvr = {}
		for i, v in var58_upvw.ShowChoices(var58_upvw, clone_2), nil do
			local Frame_upvr = v:FindFirstChild("Frame")
			if Frame_upvr then
				local ImageButton = Frame_upvr:FindFirstChild("ImageButton")
				if ImageButton then
					table.insert(tbl_3_upvr, ImageButton.MouseButton1Click:Connect(function() -- Line 134
						--[[ Upvalues[3]:
							[1]: var61_upvw (read and write)
							[2]: Frame_upvr (readonly)
							[3]: var58_upvw (read and write)
						]]
						var61_upvw = Frame_upvr.Frame.Text_Element:GetAttribute("Text")
						var58_upvw = var61_upvw
					end))
					if var61_upvw == clone_2[4] then
						var13_upvw = true
					end
					var58_upvw = var61_upvw
				end
			end
		end
		local function _() -- Line 147, Named "FlushConnections"
			--[[ Upvalues[1]:
				[1]: tbl_3_upvr (readonly)
			]]
			for _, v_2 in tbl_3_upvr do
				v_2:Disconnect()
			end
			table.clear(tbl_3_upvr)
		end
		while var58_upvw == "" do
			task.wait()
			if var13_upvw then
				i = nil
				for _, v_3 in tbl_3_upvr, nil, i do
					v_3:Disconnect()
				end
				table.clear(tbl_3_upvr)
				return EndInteraction_upvr()
			end
		end
		for _, v_4 in tbl_3_upvr do
			v_4:Disconnect()
		end
		table.clear(tbl_3_upvr)
		if var13_upvw then
			return EndInteraction_upvr()
		end
		Top_Text_upvr.RemovePlayerSideFrame(LocalPlayer_upvr)
		if LocalPlayer_upvr.Character then
			Top_Text_upvr.PlayerResponse(LocalPlayer_upvr.Character, var61_upvw, true)
			local var68 = tbl_2_upvr[var61_upvw]
			if not var68 then
				return EndInteraction_upvr()
			end
			var68()
		else
			return EndInteraction_upvr()
		end
		EndInteraction_upvr()
	end
end
Parent_upvr.Triggered:Connect(function() -- Line 186
	--[[ Upvalues[3]:
		[1]: NPC_MOD_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
		[3]: StartConversation_upvr (readonly)
	]]
	if NPC_MOD_upvr.Can_Speak(LocalPlayer_upvr) then
		StartConversation_upvr()
	end
end)
local Click_upvr = game.SoundService.Click
Parent_upvr.PromptButtonHoldBegan:Connect(function() -- Line 194
	--[[ Upvalues[1]:
		[1]: Click_upvr (readonly)
	]]
	Click_upvr.PlaybackSpeed = 1 + math.random(-15, 15) / 100
	Click_upvr.Playing = true
	Click_upvr.TimePosition = 0
end)
local Position_upvr = Parent_upvr.Parent.Position
task.spawn(function() -- Line 203
	--[[ Upvalues[9]:
		[1]: var14_upvw (read and write)
		[2]: Position_upvr (readonly)
		[3]: var12_upvw (read and write)
		[4]: var11_upvw (read and write)
		[5]: Top_Text_upvr (readonly)
		[6]: LocalPlayer_upvr (readonly)
		[7]: Parent_upvr_2 (readonly)
		[8]: NPC_MOD_upvr (readonly)
		[9]: CancelConversation_upvr (readonly)
	]]
	while true do
		task.wait(0.1)
		if var14_upvw and var14_upvw.Character and var14_upvw.Character.PrimaryPart and 17 < (var14_upvw.Character.PrimaryPart.Position - Position_upvr).Magnitude and not var12_upvw and var11_upvw then
			Top_Text_upvr.RemovePlayerSideFrame(LocalPlayer_upvr)
			Top_Text_upvr.NpcText(Parent_upvr_2, "Goodbye!", true)
			NPC_MOD_upvr.End_Speak(LocalPlayer_upvr)
			CancelConversation_upvr()
		end
	end
end)
Parent_upvr.PromptShown:Connect(function() -- Line 222
	--[[ Upvalues[4]:
		[1]: var10_upvw (read and write)
		[2]: Parent_upvr_2 (readonly)
		[3]: TweenService_upvr (readonly)
		[4]: TweenInfo_new_result1_upvr (readonly)
	]]
	var10_upvw = Instance.new("Highlight", Parent_upvr_2)
	var10_upvw.DepthMode = Enum.HighlightDepthMode.Occluded
	var10_upvw.FillTransparency = 1
	var10_upvw.OutlineTransparency = 1
	var10_upvw.Adornee = Parent_upvr_2
	TweenService_upvr:Create(var10_upvw, TweenInfo_new_result1_upvr, {
		OutlineTransparency = 0;
	}):Play()
end)
Parent_upvr.PromptHidden:Connect(function() -- Line 233
	--[[ Upvalues[4]:
		[1]: var10_upvw (read and write)
		[2]: TweenService_upvr (readonly)
		[3]: TweenInfo_new_result1_upvr (readonly)
		[4]: Debris_upvr (readonly)
	]]
	if var10_upvw then
		TweenService_upvr:Create(var10_upvw, TweenInfo_new_result1_upvr, {
			OutlineTransparency = 1;
		}):Play()
		Debris_upvr:AddItem(var10_upvw, TweenInfo_new_result1_upvr.Time)
	end
end)