-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:05
-- Luau version 6, Types version 3
-- Time taken: 0.006554 seconds

local TweenService_upvr = game:GetService("TweenService")
local Debris_upvr = game:GetService("Debris")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenInfo_new_result1_upvr = TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
local Parent_upvr = script.Parent.Parent.Parent
local LocalPlayer_upvr = game.Players.LocalPlayer
local ZenAuraRemoteEvent_upvr = ReplicatedStorage:WaitForChild("GameEvents").ZenAuraRemoteEvent
local Top_Text_upvr = require(game.ReplicatedStorage.Top_Text)
local NPC_MOD_upvr = require(game.ReplicatedStorage.NPC_MOD)
local var10_upvw
local var11_upvw = false
local var12_upvw = true
local var13_upvw = false
local var14_upvw
local function waitForDuration_upvr(arg1) -- Line 37, Named "waitForDuration"
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
local function CancelConversation_upvr() -- Line 49, Named "CancelConversation"
	--[[ Upvalues[11]:
		[1]: var13_upvw (read and write)
		[2]: var12_upvw (read and write)
		[3]: Top_Text_upvr (readonly)
		[4]: Parent_upvr (readonly)
		[5]: LocalPlayer_upvr (readonly)
		[6]: var10_upvw (read and write)
		[7]: TweenService_upvr (readonly)
		[8]: TweenInfo_new_result1_upvr (readonly)
		[9]: Debris_upvr (readonly)
		[10]: NPC_MOD_upvr (readonly)
		[11]: var14_upvw (read and write)
	]]
	var13_upvw = true
	var12_upvw = true
	Top_Text_upvr.TakeAwayResponses(Parent_upvr, LocalPlayer_upvr)
	if var10_upvw then
		TweenService_upvr:Create(var10_upvw, TweenInfo_new_result1_upvr, {
			OutlineTransparency = 1;
		}):Play()
		Debris_upvr:AddItem(var10_upvw, TweenInfo_new_result1_upvr.Time)
	end
	NPC_MOD_upvr.End_Speak(LocalPlayer_upvr)
	var14_upvw = nil
	task.wait(0.7)
	script.Parent.Enabled = true
end
local function EndInteraction_upvr() -- Line 68, Named "EndInteraction"
	--[[ Upvalues[8]:
		[1]: var11_upvw (read and write)
		[2]: waitForDuration_upvr (readonly)
		[3]: CancelConversation_upvr (readonly)
		[4]: Top_Text_upvr (readonly)
		[5]: Parent_upvr (readonly)
		[6]: LocalPlayer_upvr (readonly)
		[7]: var12_upvw (read and write)
		[8]: NPC_MOD_upvr (readonly)
	]]
	var11_upvw = false
	if not waitForDuration_upvr(math.random(0.4, 0.5)) then
		return CancelConversation_upvr()
	end
	task.wait(0.5)
	Top_Text_upvr.TakeAwayResponses(Parent_upvr, LocalPlayer_upvr)
	waitForDuration_upvr(0.5)
	var12_upvw = true
	script.Parent.Enabled = true
	NPC_MOD_upvr.End_Speak(LocalPlayer_upvr)
end
local tbl_upvr = {"Show me the Zen Shop", "How do I get more Chi?", "Take this plant", "Take all my Tranquil plants", "Nevermind"}
local tbl_upvr_2 = {}
local GuiController_upvr = require(ReplicatedStorage.Modules.GuiController)
local EventShop_UI_upvr = LocalPlayer_upvr.PlayerGui:WaitForChild("EventShop_UI")
tbl_upvr_2[tbl_upvr[1]] = function() -- Line 91
	--[[ Upvalues[3]:
		[1]: GuiController_upvr (readonly)
		[2]: EventShop_UI_upvr (readonly)
		[3]: var13_upvw (read and write)
	]]
	GuiController_upvr:Open(EventShop_UI_upvr)
	var13_upvw = true
end
tbl_upvr_2[tbl_upvr[2]] = function() -- Line 95
	--[[ Upvalues[2]:
		[1]: Top_Text_upvr (readonly)
		[2]: Parent_upvr (readonly)
	]]
	task.wait(0.5)
	Top_Text_upvr.NpcText(Parent_upvr, "Give me tranquil plants", true)
	task.wait(2)
	Top_Text_upvr.NpcText(Parent_upvr, "And I'll channel Chi for you!", true)
	task.wait(2)
end
tbl_upvr_2[tbl_upvr[3]] = function() -- Line 103
	--[[ Upvalues[1]:
		[1]: ZenAuraRemoteEvent_upvr (readonly)
	]]
	ZenAuraRemoteEvent_upvr:FireServer("SubmitHeldPlant")
end
tbl_upvr_2[tbl_upvr[4]] = function() -- Line 106
	--[[ Upvalues[1]:
		[1]: ZenAuraRemoteEvent_upvr (readonly)
	]]
	ZenAuraRemoteEvent_upvr:FireServer("SubmitAllPlants")
end
tbl_upvr_2[tbl_upvr[5]] = function() -- Line 109
	--[[ Upvalues[1]:
		[1]: var13_upvw (read and write)
	]]
	var13_upvw = true
end
local function StartConversation_upvr() -- Line 115, Named "StartConversation"
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
		[12]: Top_Text_upvr (readonly)
		[13]: Parent_upvr (readonly)
		[14]: CancelConversation_upvr (readonly)
		[15]: tbl_upvr_2 (readonly)
		[16]: EndInteraction_upvr (readonly)
	]]
	local var60_upvw
	if not var12_upvw and var11_upvw then
	else
		var12_upvw = false
		var11_upvw = true
		var14_upvw = LocalPlayer_upvr
		NPC_MOD_upvr.Start_Speak(LocalPlayer_upvr)
		local clone_2 = table.clone(tbl_upvr)
		if var10_upvw then
			var60_upvw = TweenService_upvr:Create(var10_upvw, TweenInfo_new_result1_upvr, {
				OutlineTransparency = 1;
			}):Play
			var60_upvw()
			var60_upvw = Debris_upvr:AddItem
			var60_upvw(var10_upvw, TweenInfo_new_result1_upvr.Time)
		end
		var13_upvw = false
		var60_upvw = script
		var60_upvw = false
		var60_upvw.Parent.Enabled = var60_upvw
		var60_upvw = Top_Text_upvr
		var60_upvw = Parent_upvr
		var60_upvw.NpcText(var60_upvw, "Whats up?", true)
		var60_upvw = Top_Text_upvr
		var60_upvw = LocalPlayer_upvr
		var60_upvw = ""
		local var63_upvw = ""
		local tbl_upvr_3 = {}
		for i, v in var60_upvw.ShowChoices(var60_upvw, clone_2), nil do
			local Frame_upvr = v:FindFirstChild("Frame")
			if Frame_upvr then
				local ImageButton = Frame_upvr:FindFirstChild("ImageButton")
				if ImageButton then
					table.insert(tbl_upvr_3, ImageButton.MouseButton1Click:Connect(function() -- Line 149
						--[[ Upvalues[3]:
							[1]: var63_upvw (read and write)
							[2]: Frame_upvr (readonly)
							[3]: var60_upvw (read and write)
						]]
						var63_upvw = Frame_upvr.Frame.Text_Element:GetAttribute("Text")
						var60_upvw = var63_upvw
					end))
					if var63_upvw == clone_2[4] then
						var13_upvw = true
					end
					var60_upvw = var63_upvw
				end
			end
		end
		local function _() -- Line 162, Named "FlushConnections"
			--[[ Upvalues[1]:
				[1]: tbl_upvr_3 (readonly)
			]]
			for _, v_2 in tbl_upvr_3 do
				v_2:Disconnect()
			end
			table.clear(tbl_upvr_3)
		end
		while var60_upvw == "" do
			task.wait()
			if var13_upvw then
				i = nil
				for _, v_3 in tbl_upvr_3, nil, i do
					v_3:Disconnect()
				end
				table.clear(tbl_upvr_3)
				return CancelConversation_upvr()
			end
		end
		for _, v_4 in tbl_upvr_3 do
			v_4:Disconnect()
		end
		table.clear(tbl_upvr_3)
		if var13_upvw then
			return CancelConversation_upvr()
		end
		Top_Text_upvr.RemovePlayerSideFrame(LocalPlayer_upvr)
		if LocalPlayer_upvr.Character then
			Top_Text_upvr.PlayerResponse(LocalPlayer_upvr.Character, var63_upvw, true)
			local var70 = tbl_upvr_2[var63_upvw]
			if not var70 then
				return CancelConversation_upvr()
			end
			var70()
		else
			return CancelConversation_upvr()
		end
		EndInteraction_upvr()
		CancelConversation_upvr()
	end
end
script.Parent.Triggered:Connect(function() -- Line 201
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
script.Parent.PromptButtonHoldBegan:Connect(function() -- Line 209
	--[[ Upvalues[1]:
		[1]: Click_upvr (readonly)
	]]
	Click_upvr.PlaybackSpeed = 1 + math.random(-15, 15) / 100
	Click_upvr.Playing = true
	Click_upvr.TimePosition = 0
end)
local Position_upvr = script.Parent.Parent.Position
task.spawn(function() -- Line 218
	--[[ Upvalues[9]:
		[1]: var14_upvw (read and write)
		[2]: Position_upvr (readonly)
		[3]: var12_upvw (read and write)
		[4]: var11_upvw (read and write)
		[5]: Top_Text_upvr (readonly)
		[6]: LocalPlayer_upvr (readonly)
		[7]: Parent_upvr (readonly)
		[8]: NPC_MOD_upvr (readonly)
		[9]: CancelConversation_upvr (readonly)
	]]
	while true do
		task.wait(0.1)
		if var14_upvw and var14_upvw.Character and var14_upvw.Character.PrimaryPart and 17 < (var14_upvw.Character.PrimaryPart.Position - Position_upvr).Magnitude and not var12_upvw and var11_upvw then
			Top_Text_upvr.RemovePlayerSideFrame(LocalPlayer_upvr)
			Top_Text_upvr.NpcText(Parent_upvr, "Goodbye!", true)
			NPC_MOD_upvr.End_Speak(LocalPlayer_upvr)
			CancelConversation_upvr()
		end
	end
end)
script.Parent.PromptShown:Connect(function() -- Line 237
	--[[ Upvalues[4]:
		[1]: var10_upvw (read and write)
		[2]: Parent_upvr (readonly)
		[3]: TweenService_upvr (readonly)
		[4]: TweenInfo_new_result1_upvr (readonly)
	]]
	var10_upvw = Instance.new("Highlight", Parent_upvr)
	var10_upvw.DepthMode = Enum.HighlightDepthMode.Occluded
	var10_upvw.FillTransparency = 1
	var10_upvw.OutlineTransparency = 1
	var10_upvw.Adornee = Parent_upvr
	TweenService_upvr:Create(var10_upvw, TweenInfo_new_result1_upvr, {
		OutlineTransparency = 0;
	}):Play()
end)
script.Parent.PromptHidden:Connect(function() -- Line 248
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