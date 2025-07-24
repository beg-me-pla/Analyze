-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:05
-- Luau version 6, Types version 3
-- Time taken: 0.009019 seconds

local TweenService_upvr = game:GetService("TweenService")
local Debris_upvr = game:GetService("Debris")
local TweenInfo_new_result1_upvr = TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
local Parent_upvr = script.Parent
local Parent_upvr_2 = Parent_upvr.Parent.Parent
local LocalPlayer_upvr = game.Players.LocalPlayer
local ZenQuestRemoteEvent_upvr = game:GetService("ReplicatedStorage"):WaitForChild("GameEvents").ZenQuestRemoteEvent
local Top_Text_upvr = require(game.ReplicatedStorage.Top_Text)
local NPC_MOD_upvr = require(game.ReplicatedStorage.NPC_MOD)
local var11_upvw
local var12_upvw = false
local var13_upvw = true
local var14_upvw = false
local var15_upvw
local function waitForDuration_upvr(arg1) -- Line 35, Named "waitForDuration"
	--[[ Upvalues[1]:
		[1]: var14_upvw (read and write)
	]]
	while time() - time() < arg1 do
		task.wait()
		if var14_upvw then
			return false
		end
	end
	return true
end
local function CancelConversation_upvr() -- Line 47, Named "CancelConversation"
	--[[ Upvalues[12]:
		[1]: var14_upvw (read and write)
		[2]: var13_upvw (read and write)
		[3]: Top_Text_upvr (readonly)
		[4]: Parent_upvr_2 (readonly)
		[5]: LocalPlayer_upvr (readonly)
		[6]: var11_upvw (read and write)
		[7]: TweenService_upvr (readonly)
		[8]: TweenInfo_new_result1_upvr (readonly)
		[9]: Debris_upvr (readonly)
		[10]: NPC_MOD_upvr (readonly)
		[11]: var15_upvw (read and write)
		[12]: Parent_upvr (readonly)
	]]
	var14_upvw = true
	var13_upvw = true
	Top_Text_upvr.TakeAwayResponses(Parent_upvr_2, LocalPlayer_upvr)
	if var11_upvw then
		TweenService_upvr:Create(var11_upvw, TweenInfo_new_result1_upvr, {
			OutlineTransparency = 1;
		}):Play()
		Debris_upvr:AddItem(var11_upvw, TweenInfo_new_result1_upvr.Time)
	end
	NPC_MOD_upvr.End_Speak(LocalPlayer_upvr)
	var15_upvw = nil
	task.wait(0.7)
	Parent_upvr.Enabled = true
end
local function EndInteraction_upvr() -- Line 66, Named "EndInteraction"
	--[[ Upvalues[9]:
		[1]: var12_upvw (read and write)
		[2]: waitForDuration_upvr (readonly)
		[3]: CancelConversation_upvr (readonly)
		[4]: Top_Text_upvr (readonly)
		[5]: Parent_upvr_2 (readonly)
		[6]: LocalPlayer_upvr (readonly)
		[7]: var13_upvw (read and write)
		[8]: Parent_upvr (readonly)
		[9]: NPC_MOD_upvr (readonly)
	]]
	var12_upvw = false
	if not waitForDuration_upvr(math.random(0.4, 0.5)) then
		return CancelConversation_upvr()
	end
	task.wait(0.5)
	Top_Text_upvr.TakeAwayResponses(Parent_upvr_2, LocalPlayer_upvr)
	waitForDuration_upvr(0.5)
	var13_upvw = true
	Parent_upvr.Enabled = true
	NPC_MOD_upvr.End_Speak(LocalPlayer_upvr)
end
local tbl_2_upvr = {"Who are you?", "Take this plant", "Take all my Tranquil plants", "Nevermind"}
local tbl_upvr = {
	[tbl_2_upvr[1]] = function() -- Line 88
		--[[ Upvalues[2]:
			[1]: Top_Text_upvr (readonly)
			[2]: Parent_upvr_2 (readonly)
		]]
		task.wait(0.5)
		Top_Text_upvr.NpcText(Parent_upvr_2, "Im the Zen Channeller", true)
		task.wait(2)
		Top_Text_upvr.NpcText(Parent_upvr_2, "Give me plants and I'll grow the tree!")
		task.wait(2)
	end;
	[tbl_2_upvr[2]] = function() -- Line 96
		--[[ Upvalues[1]:
			[1]: ZenQuestRemoteEvent_upvr (readonly)
		]]
		ZenQuestRemoteEvent_upvr:FireServer("SubmitHeldPlant")
	end;
	[tbl_2_upvr[3]] = function() -- Line 99
		--[[ Upvalues[1]:
			[1]: ZenQuestRemoteEvent_upvr (readonly)
		]]
		ZenQuestRemoteEvent_upvr:FireServer("SubmitAllPlants")
	end;
	[tbl_2_upvr[4]] = function() -- Line 102
		--[[ Upvalues[1]:
			[1]: var14_upvw (read and write)
		]]
		var14_upvw = true
	end;
}
local function StartConversation_upvr() -- Line 107, Named "StartConversation"
	--[[ Upvalues[16]:
		[1]: var13_upvw (read and write)
		[2]: var12_upvw (read and write)
		[3]: var15_upvw (read and write)
		[4]: LocalPlayer_upvr (readonly)
		[5]: NPC_MOD_upvr (readonly)
		[6]: tbl_2_upvr (readonly)
		[7]: var11_upvw (read and write)
		[8]: TweenService_upvr (readonly)
		[9]: TweenInfo_new_result1_upvr (readonly)
		[10]: Debris_upvr (readonly)
		[11]: var14_upvw (read and write)
		[12]: Parent_upvr (readonly)
		[13]: Top_Text_upvr (readonly)
		[14]: Parent_upvr_2 (readonly)
		[15]: EndInteraction_upvr (readonly)
		[16]: tbl_upvr (readonly)
	]]
	local var58_upvw
	if not var13_upvw and var12_upvw then
	else
		var13_upvw = false
		var12_upvw = true
		var15_upvw = LocalPlayer_upvr
		NPC_MOD_upvr.Start_Speak(LocalPlayer_upvr)
		local clone_2 = table.clone(tbl_2_upvr)
		if var11_upvw then
			var58_upvw = TweenService_upvr:Create(var11_upvw, TweenInfo_new_result1_upvr, {
				OutlineTransparency = 1;
			}):Play
			var58_upvw()
			var58_upvw = Debris_upvr:AddItem
			var58_upvw(var11_upvw, TweenInfo_new_result1_upvr.Time)
		end
		var14_upvw = false
		var58_upvw = false
		Parent_upvr.Enabled = var58_upvw
		var58_upvw = Top_Text_upvr
		var58_upvw = Parent_upvr_2
		var58_upvw.NpcText(var58_upvw, "Greetings..", true)
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
					table.insert(tbl_3_upvr, ImageButton.MouseButton1Click:Connect(function() -- Line 141
						--[[ Upvalues[3]:
							[1]: var61_upvw (read and write)
							[2]: Frame_upvr (readonly)
							[3]: var58_upvw (read and write)
						]]
						var61_upvw = Frame_upvr.Frame.Text_Element:GetAttribute("Text")
						var58_upvw = var61_upvw
					end))
					if var61_upvw == clone_2[4] then
						var14_upvw = true
					end
					var58_upvw = var61_upvw
				end
			end
		end
		local function _() -- Line 154, Named "FlushConnections"
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
			if var14_upvw then
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
		if var14_upvw then
			return EndInteraction_upvr()
		end
		Top_Text_upvr.RemovePlayerSideFrame(LocalPlayer_upvr)
		if LocalPlayer_upvr.Character then
			Top_Text_upvr.PlayerResponse(LocalPlayer_upvr.Character, var61_upvw, true)
			local var68 = tbl_upvr[var61_upvw]
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
Parent_upvr.Triggered:Connect(function() -- Line 193
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
Parent_upvr.PromptButtonHoldBegan:Connect(function() -- Line 201
	--[[ Upvalues[1]:
		[1]: Click_upvr (readonly)
	]]
	Click_upvr.PlaybackSpeed = 1 + math.random(-15, 15) / 100
	Click_upvr.Playing = true
	Click_upvr.TimePosition = 0
end)
local Position_upvr = Parent_upvr.Parent.Position
task.spawn(function() -- Line 210
	--[[ Upvalues[9]:
		[1]: var15_upvw (read and write)
		[2]: Position_upvr (readonly)
		[3]: var13_upvw (read and write)
		[4]: var12_upvw (read and write)
		[5]: Top_Text_upvr (readonly)
		[6]: LocalPlayer_upvr (readonly)
		[7]: Parent_upvr_2 (readonly)
		[8]: NPC_MOD_upvr (readonly)
		[9]: CancelConversation_upvr (readonly)
	]]
	while true do
		task.wait(0.1)
		if var15_upvw and var15_upvw.Character and var15_upvw.Character.PrimaryPart and 17 < (var15_upvw.Character.PrimaryPart.Position - Position_upvr).Magnitude and not var13_upvw and var12_upvw then
			Top_Text_upvr.RemovePlayerSideFrame(LocalPlayer_upvr)
			Top_Text_upvr.NpcText(Parent_upvr_2, "Goodbye!", true)
			NPC_MOD_upvr.End_Speak(LocalPlayer_upvr)
			CancelConversation_upvr()
		end
	end
end)
Parent_upvr.PromptShown:Connect(function() -- Line 229
	--[[ Upvalues[4]:
		[1]: var11_upvw (read and write)
		[2]: Parent_upvr_2 (readonly)
		[3]: TweenService_upvr (readonly)
		[4]: TweenInfo_new_result1_upvr (readonly)
	]]
	var11_upvw = Instance.new("Highlight", Parent_upvr_2)
	var11_upvw.DepthMode = Enum.HighlightDepthMode.Occluded
	var11_upvw.FillTransparency = 1
	var11_upvw.OutlineTransparency = 1
	var11_upvw.Adornee = Parent_upvr_2
	TweenService_upvr:Create(var11_upvw, TweenInfo_new_result1_upvr, {
		OutlineTransparency = 0;
	}):Play()
end)
Parent_upvr.PromptHidden:Connect(function() -- Line 240
	--[[ Upvalues[4]:
		[1]: var11_upvw (read and write)
		[2]: TweenService_upvr (readonly)
		[3]: TweenInfo_new_result1_upvr (readonly)
		[4]: Debris_upvr (readonly)
	]]
	if var11_upvw then
		TweenService_upvr:Create(var11_upvw, TweenInfo_new_result1_upvr, {
			OutlineTransparency = 1;
		}):Play()
		Debris_upvr:AddItem(var11_upvw, TweenInfo_new_result1_upvr.Time)
	end
end)