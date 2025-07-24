-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:04
-- Luau version 6, Types version 3
-- Time taken: 0.007494 seconds

local var2_upvw
local Parent_upvr = script.Parent.Parent.Parent
local TweenService_upvr = game:GetService("TweenService")
local TweenInfo_new_result1_upvr = TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
local var6_upvw = true
local Top_Text_upvr = require(game.ReplicatedStorage.Top_Text)
local LocalPlayer_upvr = game.Players.LocalPlayer
local var9_upvw = false
local var10_upvw = false
local NPC_MOD_upvr = require(game.ReplicatedStorage.NPC_MOD)
local var12_upvw
function cancelYes() -- Line 22
	--[[ Upvalues[11]:
		[1]: var10_upvw (read and write)
		[2]: var6_upvw (read and write)
		[3]: Top_Text_upvr (readonly)
		[4]: Parent_upvr (readonly)
		[5]: LocalPlayer_upvr (readonly)
		[6]: var2_upvw (read and write)
		[7]: TweenService_upvr (readonly)
		[8]: TweenInfo_new_result1_upvr (readonly)
		[9]: NPC_MOD_upvr (readonly)
		[10]: var12_upvw (read and write)
		[11]: var9_upvw (read and write)
	]]
	var10_upvw = true
	var6_upvw = true
	Top_Text_upvr.TakeAwayResponses(Parent_upvr, LocalPlayer_upvr)
	if var2_upvw then
		TweenService_upvr:Create(var2_upvw, TweenInfo_new_result1_upvr, {
			OutlineTransparency = 1;
		}):Play()
		game.Debris:AddItem(var2_upvw, TweenInfo_new_result1_upvr.Time)
	end
	NPC_MOD_upvr.End_Speak(game.Players.LocalPlayer)
	var12_upvw = nil
	var9_upvw = false
	task.wait(0.5)
	script.Parent.Enabled = true
end
local GuiController_upvr = require(game:GetService("ReplicatedStorage").Modules.GuiController)
function yes() -- Line 42
	--[[ Upvalues[12]:
		[1]: var6_upvw (read and write)
		[2]: var9_upvw (read and write)
		[3]: var12_upvw (read and write)
		[4]: NPC_MOD_upvr (readonly)
		[5]: var2_upvw (read and write)
		[6]: TweenService_upvr (readonly)
		[7]: TweenInfo_new_result1_upvr (readonly)
		[8]: var10_upvw (read and write)
		[9]: Top_Text_upvr (readonly)
		[10]: Parent_upvr (readonly)
		[11]: LocalPlayer_upvr (readonly)
		[12]: GuiController_upvr (readonly)
	]]
	for i_upvw, v in pairs(script.Parent.Parent.Parent.Head:GetChildren()) do
		if v:IsA("BillboardGui") then
			v.Enabled = false
		end
	end
	if var6_upvw == true then
		var6_upvw = false
		var9_upvw = true
		var12_upvw = game.Players.LocalPlayer
		i_upvw = game
		NPC_MOD_upvr.Start_Speak(i_upvw.Players.LocalPlayer)
		if var2_upvw and var2_upvw ~= nil then
			i_upvw = TweenInfo_new_result1_upvr
			v = {}
			v.OutlineTransparency = 1
			TweenService_upvr:Create(var2_upvw, i_upvw, v):Play()
			i_upvw = var2_upvw
			v = TweenInfo_new_result1_upvr.Time
			game.Debris:AddItem(i_upvw, v)
		end
		var10_upvw = false
		script.Parent.Enabled = false
		if var2_upvw then
			i_upvw = TweenInfo_new_result1_upvr
			v = {}
			v.OutlineTransparency = 1
			TweenService_upvr:Create(var2_upvw, i_upvw, v):Play()
			i_upvw = var2_upvw
			v = TweenInfo_new_result1_upvr.Time
			game.Debris:AddItem(i_upvw, v)
		end
		i_upvw = false
		Top_Text_upvr.NpcText(Parent_upvr, "Welcome to my stand!", i_upvw)
		task.wait(1)
		local tbl = {}
		i_upvw = "Nevermind"
		tbl[1] = "Show me the gear shop"
		tbl[2] = "Show me daily quests"
		tbl[3] = i_upvw
		i_upvw = tbl
		if var10_upvw then
			return cancelYes()
		end
		local var52_upvw = ""
		i_upvw = ""
		v = {}
		for _, v_2 in pairs(Top_Text_upvr.ShowChoices(LocalPlayer_upvr, i_upvw)) do
			local Frame_upvr_2 = v_2:FindFirstChild("Frame")
			if Frame_upvr_2 then
				local ImageButton = Frame_upvr_2:FindFirstChild("ImageButton")
				if ImageButton then
					table.insert(v, ImageButton.MouseButton1Click:Connect(function() -- Line 90
						--[[ Upvalues[3]:
							[1]: i_upvw (read and write)
							[2]: Frame_upvr_2 (readonly)
							[3]: var52_upvw (read and write)
						]]
						i_upvw = Frame_upvr_2.Frame.Text_Element:GetAttribute("Text")
						if i_upvw == "Show me the gear shop" then
							var52_upvw = "Gear"
						else
							if i_upvw == "Show me daily quests" then
								var52_upvw = "Daily Quest"
								return
							end
							if i_upvw == "Show me pet eggs" then
								var52_upvw = "Show"
								return
							end
							var52_upvw = "Nevermind"
						end
					end))
				end
			end
		end
		while var52_upvw == "" do
			task.wait()
			if var10_upvw then
				for _, v_3 in pairs(v) do
					Frame_upvr_2 = v_3:Disconnect
					Frame_upvr_2()
				end
				return cancelYes()
			end
		end
		for i_4, v_4 in pairs(v) do
			v_4:Disconnect()
		end
		if var10_upvw then
			return cancelYes()
		end
		Top_Text_upvr.RemovePlayerSideFrame(LocalPlayer_upvr)
		if LocalPlayer_upvr.Character then
			i_4 = true
			Top_Text_upvr.PlayerResponse(LocalPlayer_upvr.Character, i_upvw, i_4)
		else
			return cancelYes()
		end
		if var52_upvw == "Gear" then
			task.wait(0.5)
			i_4 = true
			while true do
				i_4 = 0.46243556529821417
				if 0 >= i_4 then break end
				i_4 = var10_upvw
				if i_4 ~= false then break end
				i_4 = task.wait
				i_4()
				i_4 = time()
			end
			i_4 = GuiController_upvr:Open
			i_4(LocalPlayer_upvr.PlayerGui.Gear_Shop)
			i_4 = var10_upvw
			if i_4 then
				i_4 = cancelYes()
				return i_4
			end
			i_4 = 0
			v_4 = time()
			while i_4 < 0.21243556529821417 and var10_upvw == false do
				task.wait()
				i_4 = time() - v_4
			end
			if var10_upvw then
				return cancelYes()
			end
			Top_Text_upvr.TakeAwayResponses(script.Parent.Parent.Parent, game.Players.LocalPlayer)
			var6_upvw = true
			var9_upvw = false
			script.Parent.Enabled = true
			NPC_MOD_upvr.End_Speak(game.Players.LocalPlayer)
		elseif var52_upvw == "Daily Quest" then
			v_4 = LocalPlayer_upvr
			i_4 = v_4.PlayerGui
			GuiController_upvr:Open(i_4.DailyQuests_UI)
		else
			i_4 = true
			Top_Text_upvr.NpcText(Parent_upvr, "...", i_4)
		end
		var9_upvw = false
		task.wait(0.5)
		Top_Text_upvr.TakeAwayResponses(Parent_upvr, LocalPlayer_upvr)
		task.wait(0.5)
		var6_upvw = true
		script.Parent.Enabled = true
		NPC_MOD_upvr.End_Speak(LocalPlayer_upvr)
	end
end
script.Parent.Triggered:Connect(function() -- Line 178
	--[[ Upvalues[2]:
		[1]: NPC_MOD_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
	]]
	if NPC_MOD_upvr.Can_Speak(LocalPlayer_upvr) == true then
		yes(LocalPlayer_upvr)
	end
end)
local Click_upvr = game.SoundService.Click
script.Parent.PromptButtonHoldBegan:Connect(function() -- Line 185
	--[[ Upvalues[1]:
		[1]: Click_upvr (readonly)
	]]
	Click_upvr.PlaybackSpeed = 1 + math.random(-15, 15) / 100
	Click_upvr.Playing = true
	Click_upvr.TimePosition = 0
end)
local Position_upvr = script.Parent.Parent.Position
task.spawn(function() -- Line 191
	--[[ Upvalues[8]:
		[1]: var12_upvw (read and write)
		[2]: Position_upvr (readonly)
		[3]: var6_upvw (read and write)
		[4]: var9_upvw (read and write)
		[5]: Top_Text_upvr (readonly)
		[6]: LocalPlayer_upvr (readonly)
		[7]: Parent_upvr (readonly)
		[8]: NPC_MOD_upvr (readonly)
	]]
	while true do
		task.wait(1)
		if var12_upvw and var12_upvw.Character then
			local PrimaryPart_2 = var12_upvw.Character.PrimaryPart
			if PrimaryPart_2 and 10 < (PrimaryPart_2.Position - Position_upvr).Magnitude and var6_upvw == false and var9_upvw == true then
				Top_Text_upvr.RemovePlayerSideFrame(LocalPlayer_upvr)
				Top_Text_upvr.NpcText(Parent_upvr, "...", true)
				NPC_MOD_upvr.End_Speak(game.Players.LocalPlayer)
				cancelYes()
			end
		end
	end
end)
script.Parent.PromptShown:Connect(function() -- Line 212
	--[[ Upvalues[4]:
		[1]: var2_upvw (read and write)
		[2]: Parent_upvr (readonly)
		[3]: TweenService_upvr (readonly)
		[4]: TweenInfo_new_result1_upvr (readonly)
	]]
	var2_upvw = Instance.new("Highlight")
	var2_upvw.DepthMode = Enum.HighlightDepthMode.Occluded
	var2_upvw.FillTransparency = 1
	var2_upvw.OutlineTransparency = 1
	var2_upvw.Adornee = Parent_upvr
	var2_upvw.Parent = Parent_upvr
	TweenService_upvr:Create(var2_upvw, TweenInfo_new_result1_upvr, {
		OutlineTransparency = 0;
	}):Play()
end)
script.Parent.PromptHidden:Connect(function() -- Line 223
	--[[ Upvalues[3]:
		[1]: var2_upvw (read and write)
		[2]: TweenService_upvr (readonly)
		[3]: TweenInfo_new_result1_upvr (readonly)
	]]
	if var2_upvw then
		TweenService_upvr:Create(var2_upvw, TweenInfo_new_result1_upvr, {
			OutlineTransparency = 1;
		}):Play()
		game.Debris:AddItem(var2_upvw, TweenInfo_new_result1_upvr.Time)
	end
end)