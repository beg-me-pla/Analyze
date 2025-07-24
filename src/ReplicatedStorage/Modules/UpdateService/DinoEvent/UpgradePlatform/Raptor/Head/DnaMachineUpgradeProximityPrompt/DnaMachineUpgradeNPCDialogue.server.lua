-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:33
-- Luau version 6, Types version 3
-- Time taken: 0.006078 seconds

local TweenService_upvr = game:GetService("TweenService")
local Debris_upvr = game:GetService("Debris")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenInfo_new_result1_upvr = TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
local DinoMachineService_RE_upvr = ReplicatedStorage.GameEvents.DinoMachineService_RE
local Parent_upvr_2 = script.Parent
local Parent_upvr = Parent_upvr_2.Parent.Parent
local LocalPlayer_upvr = game.Players.LocalPlayer
local PlayerGui_upvr = LocalPlayer_upvr.PlayerGui
local Top_Text_upvr = require(game.ReplicatedStorage.Top_Text)
local NPC_MOD_upvr = require(game.ReplicatedStorage.NPC_MOD)
local var12_upvw
local var13_upvw = false
local var14_upvw = true
local var15_upvw = false
local var16_upvw
local function waitForDuration_upvr(arg1) -- Line 37, Named "waitForDuration"
	--[[ Upvalues[1]:
		[1]: var15_upvw (read and write)
	]]
	while time() - time() < arg1 do
		task.wait()
		if var15_upvw then
			return false
		end
	end
	return true
end
local function CancelConversation_upvr() -- Line 49, Named "CancelConversation"
	--[[ Upvalues[10]:
		[1]: var15_upvw (read and write)
		[2]: var14_upvw (read and write)
		[3]: var12_upvw (read and write)
		[4]: TweenService_upvr (readonly)
		[5]: TweenInfo_new_result1_upvr (readonly)
		[6]: Debris_upvr (readonly)
		[7]: NPC_MOD_upvr (readonly)
		[8]: LocalPlayer_upvr (readonly)
		[9]: var16_upvw (read and write)
		[10]: Parent_upvr_2 (readonly)
	]]
	var15_upvw = true
	var14_upvw = true
	if var12_upvw then
		TweenService_upvr:Create(var12_upvw, TweenInfo_new_result1_upvr, {
			OutlineTransparency = 1;
		}):Play()
		Debris_upvr:AddItem(var12_upvw, TweenInfo_new_result1_upvr.Time)
	end
	NPC_MOD_upvr.End_Speak(LocalPlayer_upvr)
	var16_upvw = nil
	task.wait(0.7)
	Parent_upvr_2.Enabled = true
end
local function EndInteraction_upvr() -- Line 68, Named "EndInteraction"
	--[[ Upvalues[9]:
		[1]: var13_upvw (read and write)
		[2]: waitForDuration_upvr (readonly)
		[3]: CancelConversation_upvr (readonly)
		[4]: Top_Text_upvr (readonly)
		[5]: Parent_upvr (readonly)
		[6]: LocalPlayer_upvr (readonly)
		[7]: var14_upvw (read and write)
		[8]: Parent_upvr_2 (readonly)
		[9]: NPC_MOD_upvr (readonly)
	]]
	var13_upvw = false
	if not waitForDuration_upvr(math.random(0.4, 0.5)) then
		return CancelConversation_upvr()
	end
	task.wait(0.5)
	Top_Text_upvr.TakeAwayResponses(Parent_upvr, LocalPlayer_upvr)
	waitForDuration_upvr(0.5)
	var14_upvw = true
	Parent_upvr_2.Enabled = true
	NPC_MOD_upvr.End_Speak(LocalPlayer_upvr)
end
local tbl_upvr_2 = {"Who are you?", "What do the upgrades do?", "Take this plant", "Take all my prehistoric plants", "Nevermind"}
local tbl_upvr_3 = {
	[tbl_upvr_2[1]] = function() -- Line 91
		--[[ Upvalues[2]:
			[1]: Top_Text_upvr (readonly)
			[2]: Parent_upvr (readonly)
		]]
		task.wait(0.5)
		Top_Text_upvr.NpcText(Parent_upvr, "Me Barry. Me make DNA Machine stronger! Raaaawr!", true)
		task.wait(2)
		Top_Text_upvr.NpcText(Parent_upvr, "Give Prehistoric grow-plants… me need 'em to upgrade machine real good!", true)
		task.wait(2)
	end;
}
local GuiController_upvr = require(ReplicatedStorage.Modules.GuiController)
tbl_upvr_3[tbl_upvr_2[2]] = function() -- Line 100
	--[[ Upvalues[2]:
		[1]: GuiController_upvr (readonly)
		[2]: PlayerGui_upvr (readonly)
	]]
	GuiController_upvr:Open(PlayerGui_upvr.DnaMachineUpgradeUI)
end
tbl_upvr_3[tbl_upvr_2[3]] = function() -- Line 118
	--[[ Upvalues[1]:
		[1]: DinoMachineService_RE_upvr (readonly)
	]]
	DinoMachineService_RE_upvr:FireServer("SubmitHeldPlant")
end
tbl_upvr_3[tbl_upvr_2[4]] = function() -- Line 122
	--[[ Upvalues[1]:
		[1]: DinoMachineService_RE_upvr (readonly)
	]]
	DinoMachineService_RE_upvr:FireServer("SubmitAllPlants")
end
tbl_upvr_3[tbl_upvr_2[5]] = function() -- Line 126
	--[[ Upvalues[1]:
		[1]: var15_upvw (read and write)
	]]
	var15_upvw = true
end
local function StartConversation_upvr() -- Line 132, Named "StartConversation"
	--[[ Upvalues[16]:
		[1]: var14_upvw (read and write)
		[2]: var13_upvw (read and write)
		[3]: var16_upvw (read and write)
		[4]: LocalPlayer_upvr (readonly)
		[5]: Parent_upvr_2 (readonly)
		[6]: NPC_MOD_upvr (readonly)
		[7]: tbl_upvr_2 (readonly)
		[8]: var12_upvw (read and write)
		[9]: TweenService_upvr (readonly)
		[10]: TweenInfo_new_result1_upvr (readonly)
		[11]: Debris_upvr (readonly)
		[12]: var15_upvw (read and write)
		[13]: Top_Text_upvr (readonly)
		[14]: Parent_upvr (readonly)
		[15]: EndInteraction_upvr (readonly)
		[16]: tbl_upvr_3 (readonly)
	]]
	if not var14_upvw and var13_upvw then
	else
		var14_upvw = false
		var13_upvw = true
		var16_upvw = LocalPlayer_upvr
		Parent_upvr_2.Enabled = false
		NPC_MOD_upvr.Start_Speak(LocalPlayer_upvr)
		if var12_upvw then
			TweenService_upvr:Create(var12_upvw, TweenInfo_new_result1_upvr, {
				OutlineTransparency = 1;
			}):Play()
			Debris_upvr:AddItem(var12_upvw, TweenInfo_new_result1_upvr.Time)
		end
		var15_upvw = false
		Top_Text_upvr.NpcText(Parent_upvr, "Whats up?", true)
		local var49_upvw = ""
		local tbl_upvr_4 = {}
		for i, v in Top_Text_upvr.ShowChoices(LocalPlayer_upvr, table.clone(tbl_upvr_2)), nil do
			local Frame_upvr_2 = v:FindFirstChild("Frame")
			if Frame_upvr_2 then
				local ImageButton = Frame_upvr_2:FindFirstChild("ImageButton")
				if ImageButton then
					local var54_upvw = ""
					table.insert(tbl_upvr_4, ImageButton.MouseButton1Click:Connect(function() -- Line 168
						--[[ Upvalues[3]:
							[1]: var49_upvw (read and write)
							[2]: Frame_upvr_2 (readonly)
							[3]: var54_upvw (read and write)
						]]
						var49_upvw = Frame_upvr_2.Frame.Text_Element:GetAttribute("Text")
						var54_upvw = var49_upvw
					end))
				end
			end
		end
		local function _() -- Line 181, Named "FlushConnections"
			--[[ Upvalues[1]:
				[1]: tbl_upvr_4 (readonly)
			]]
			for _, v_2 in tbl_upvr_4 do
				v_2:Disconnect()
			end
			table.clear(tbl_upvr_4)
		end
		while var54_upvw == "" do
			task.wait()
			if var15_upvw then
				i = nil
				for _, v_3 in tbl_upvr_4, nil, i do
					v_3:Disconnect()
				end
				table.clear(tbl_upvr_4)
				return EndInteraction_upvr()
			end
		end
		for _, v_4 in tbl_upvr_4 do
			v_4:Disconnect()
		end
		table.clear(tbl_upvr_4)
		if var15_upvw then
			return EndInteraction_upvr()
		end
		Top_Text_upvr.RemovePlayerSideFrame(LocalPlayer_upvr)
		if LocalPlayer_upvr.Character then
			Top_Text_upvr.PlayerResponse(LocalPlayer_upvr.Character, var49_upvw, true)
			local var57 = tbl_upvr_3[var49_upvw]
			if not var57 then
				return EndInteraction_upvr()
			end
			var57()
		else
			return EndInteraction_upvr()
		end
		EndInteraction_upvr()
	end
end
Parent_upvr_2.Triggered:Connect(function() -- Line 220
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
Parent_upvr_2.PromptButtonHoldBegan:Connect(function() -- Line 228
	--[[ Upvalues[1]:
		[1]: Click_upvr (readonly)
	]]
	Click_upvr.PlaybackSpeed = 1 + math.random(-15, 15) / 100
	Click_upvr.Playing = true
	Click_upvr.TimePosition = 0
end)
local Position_upvr = Parent_upvr_2.Parent.Position
task.spawn(function() -- Line 237
	--[[ Upvalues[9]:
		[1]: var14_upvw (read and write)
		[2]: var13_upvw (read and write)
		[3]: var16_upvw (read and write)
		[4]: Position_upvr (readonly)
		[5]: Top_Text_upvr (readonly)
		[6]: LocalPlayer_upvr (readonly)
		[7]: Parent_upvr (readonly)
		[8]: NPC_MOD_upvr (readonly)
		[9]: CancelConversation_upvr (readonly)
	]]
	while true do
		task.wait(0.01)
		if not var14_upvw and var13_upvw and var16_upvw.Character and var16_upvw.Character.PrimaryPart and (var16_upvw.Character.PrimaryPart.Position - Position_upvr).Magnitude > 17 then
			Top_Text_upvr.RemovePlayerSideFrame(LocalPlayer_upvr)
			Top_Text_upvr.NpcText(Parent_upvr, "Goodbye!", true)
			NPC_MOD_upvr.End_Speak(LocalPlayer_upvr)
			CancelConversation_upvr()
		end
	end
end)
Parent_upvr_2.PromptShown:Connect(function() -- Line 257
	--[[ Upvalues[4]:
		[1]: var12_upvw (read and write)
		[2]: Parent_upvr (readonly)
		[3]: TweenService_upvr (readonly)
		[4]: TweenInfo_new_result1_upvr (readonly)
	]]
	var12_upvw = Instance.new("Highlight", Parent_upvr)
	var12_upvw.DepthMode = Enum.HighlightDepthMode.Occluded
	var12_upvw.FillTransparency = 1
	var12_upvw.OutlineTransparency = 1
	var12_upvw.Adornee = Parent_upvr
	TweenService_upvr:Create(var12_upvw, TweenInfo_new_result1_upvr, {
		OutlineTransparency = 0;
	}):Play()
end)
Parent_upvr_2.PromptHidden:Connect(function() -- Line 268
	--[[ Upvalues[4]:
		[1]: var12_upvw (read and write)
		[2]: TweenService_upvr (readonly)
		[3]: TweenInfo_new_result1_upvr (readonly)
		[4]: Debris_upvr (readonly)
	]]
	if var12_upvw then
		TweenService_upvr:Create(var12_upvw, TweenInfo_new_result1_upvr, {
			OutlineTransparency = 1;
		}):Play()
		Debris_upvr:AddItem(var12_upvw, TweenInfo_new_result1_upvr.Time)
	end
end)