-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:59
-- Luau version 6, Types version 3
-- Time taken: 0.009115 seconds

local TweenService_upvr = game:GetService("TweenService")
local Debris_upvr = game:GetService("Debris")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenInfo_new_result1_upvr = TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
local Chalk = require(ReplicatedStorage.Modules.Chalk)
local Parent_upvr = script.Parent.Parent.Parent
local LocalPlayer_upvr = game.Players.LocalPlayer
local Top_Text_upvr = require(game.ReplicatedStorage.Top_Text)
local NPC_MOD_upvr = require(game.ReplicatedStorage.NPC_MOD)
local any_green_result1_upvr = Chalk.green("PLANT")
local var12_upvr = Chalk.color(Color3.fromRGB(255, 149, 0))("POLLINATED")
local var13_upvw
local var14_upvw = false
local var15_upvw = true
local var16_upvw = false
local var17_upvw
local Notification_upvr = require(ReplicatedStorage.Modules.Notification)
local Pollinated_upvr = require(game.ReplicatedStorage.Modules.MutationHandler):GetMutations().Pollinated
local function _() -- Line 43, Named "FetchValidHeldPlant"
	--[[ Upvalues[5]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: Notification_upvr (readonly)
		[3]: any_green_result1_upvr (readonly)
		[4]: Pollinated_upvr (readonly)
		[5]: var12_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local children, NONE_2, NONE = LocalPlayer_upvr.Character:GetChildren()
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 21. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 21. Error Block 6 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 7. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [25.6]
	-- KONSTANTERROR: [8] 7. Error Block 2 end (CF ANALYSIS FAILED)
end
local function waitForDuration_upvr(arg1) -- Line 82, Named "waitForDuration"
	--[[ Upvalues[1]:
		[1]: var16_upvw (read and write)
	]]
	while time() - time() < arg1 do
		task.wait()
		if var16_upvw then
			return false
		end
	end
	return true
end
local function cancelYes_upvr() -- Line 94, Named "cancelYes"
	--[[ Upvalues[11]:
		[1]: var16_upvw (read and write)
		[2]: var15_upvw (read and write)
		[3]: Top_Text_upvr (readonly)
		[4]: Parent_upvr (readonly)
		[5]: LocalPlayer_upvr (readonly)
		[6]: var13_upvw (read and write)
		[7]: TweenService_upvr (readonly)
		[8]: TweenInfo_new_result1_upvr (readonly)
		[9]: Debris_upvr (readonly)
		[10]: NPC_MOD_upvr (readonly)
		[11]: var17_upvw (read and write)
	]]
	var16_upvw = true
	var15_upvw = true
	Top_Text_upvr.TakeAwayResponses(Parent_upvr, LocalPlayer_upvr)
	if var13_upvw then
		TweenService_upvr:Create(var13_upvw, TweenInfo_new_result1_upvr, {
			OutlineTransparency = 1;
		}):Play()
		Debris_upvr:AddItem(var13_upvw, TweenInfo_new_result1_upvr.Time)
	end
	NPC_MOD_upvr.End_Speak(LocalPlayer_upvr)
	var17_upvw = nil
	task.wait(0.7)
	script.Parent.Enabled = true
end
local function EndInteraction_upvr() -- Line 113, Named "EndInteraction"
	--[[ Upvalues[8]:
		[1]: var14_upvw (read and write)
		[2]: waitForDuration_upvr (readonly)
		[3]: cancelYes_upvr (readonly)
		[4]: Top_Text_upvr (readonly)
		[5]: Parent_upvr (readonly)
		[6]: LocalPlayer_upvr (readonly)
		[7]: var15_upvw (read and write)
		[8]: NPC_MOD_upvr (readonly)
	]]
	var14_upvw = false
	if not waitForDuration_upvr(math.random(0.4, 0.5)) then
		return cancelYes_upvr()
	end
	task.wait(0.5)
	Top_Text_upvr.TakeAwayResponses(Parent_upvr, LocalPlayer_upvr)
	waitForDuration_upvr(0.5)
	var15_upvw = true
	script.Parent.Enabled = true
	NPC_MOD_upvr.End_Speak(LocalPlayer_upvr)
end
local var24_upvr = Chalk.color(Color3.fromRGB(255, 149, 0))("HONEY")
local GuiController_upvr = require(ReplicatedStorage.Modules.GuiController)
local TravelingMerchantShop_UI_upvr = LocalPlayer_upvr.PlayerGui:WaitForChild("TravelingMerchantShop_UI")
local HoneyMerchantSubmit_RE_upvr = ReplicatedStorage.GameEvents.HoneyMerchantSubmit_RE
local function yes_upvr() -- Line 127, Named "yes"
	--[[ Upvalues[21]:
		[1]: var15_upvw (read and write)
		[2]: var14_upvw (read and write)
		[3]: var17_upvw (read and write)
		[4]: LocalPlayer_upvr (readonly)
		[5]: NPC_MOD_upvr (readonly)
		[6]: var13_upvw (read and write)
		[7]: TweenService_upvr (readonly)
		[8]: TweenInfo_new_result1_upvr (readonly)
		[9]: Debris_upvr (readonly)
		[10]: var16_upvw (read and write)
		[11]: Top_Text_upvr (readonly)
		[12]: Parent_upvr (readonly)
		[13]: var24_upvr (readonly)
		[14]: waitForDuration_upvr (readonly)
		[15]: cancelYes_upvr (readonly)
		[16]: var12_upvr (readonly)
		[17]: any_green_result1_upvr (readonly)
		[18]: GuiController_upvr (readonly)
		[19]: TravelingMerchantShop_UI_upvr (readonly)
		[20]: HoneyMerchantSubmit_RE_upvr (readonly)
		[21]: EndInteraction_upvr (readonly)
	]]
	if not var15_upvw then
	else
		var15_upvw = false
		var14_upvw = true
		var17_upvw = LocalPlayer_upvr
		NPC_MOD_upvr.Start_Speak(LocalPlayer_upvr)
		if var13_upvw then
			TweenService_upvr:Create(var13_upvw, TweenInfo_new_result1_upvr, {
				OutlineTransparency = 1;
			}):Play()
			Debris_upvr:AddItem(var13_upvw, TweenInfo_new_result1_upvr.Time)
		end
		var16_upvw = false
		script.Parent.Enabled = false
		Top_Text_upvr.NpcText(Parent_upvr, `I'm the {var24_upvr} Merchant`, false)
		if not waitForDuration_upvr(math.random(1, 1.5)) then
			return cancelYes_upvr()
		end
		if var16_upvw then
			return cancelYes_upvr()
		end
		local var58_upvw = ""
		for _, v in pairs(Top_Text_upvr.ShowChoices(LocalPlayer_upvr, {"Who are you?", "Show me the shop!", "Take this plant", "Take all my plants", "Nevermind"})) do
			local Frame_upvr_2 = v:FindFirstChild("Frame")
			if Frame_upvr_2 then
				local ImageButton = Frame_upvr_2:FindFirstChild("ImageButton")
				if ImageButton then
					local var65_upvw = ""
					table.insert({}, ImageButton.MouseButton1Click:Connect(function() -- Line 171
						--[[ Upvalues[3]:
							[1]: var65_upvw (read and write)
							[2]: Frame_upvr_2 (readonly)
							[3]: var58_upvw (read and write)
						]]
						var65_upvw = Frame_upvr_2.Frame.Text_Element:GetAttribute("Text")
						if var65_upvw == "Who are you?" then
							var58_upvw = "Who"
						else
							if var65_upvw == "Show me the shop!" then
								var58_upvw = "Shop"
								return
							end
							if var65_upvw == "Take this plant" then
								var58_upvw = "Held"
								return
							end
							if var65_upvw == "Take all my plants" then
								var58_upvw = "All"
								return
							end
							var58_upvw = "Nevermind"
						end
					end))
				end
			end
		end
		while var58_upvw == "" do
			task.wait()
			if var16_upvw then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				for _, v_2 in pairs({}) do
					Frame_upvr_2 = v_2:Disconnect
					Frame_upvr_2()
				end
				return cancelYes_upvr()
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		for i_3, v_3 in pairs({}) do
			v_3:Disconnect()
		end
		if var16_upvw then
			return cancelYes_upvr()
		end
		Top_Text_upvr.RemovePlayerSideFrame(LocalPlayer_upvr)
		if LocalPlayer_upvr.Character then
			i_3 = true
			Top_Text_upvr.PlayerResponse(LocalPlayer_upvr.Character, var65_upvw, i_3)
		else
			return cancelYes_upvr()
		end
		if not waitForDuration_upvr(math.sqrt(string.len(var65_upvw) * 0.07)) then
			return cancelYes_upvr()
		end
		if var58_upvw == "Who" then
			Top_Text_upvr.NpcText(Parent_upvr, `Give me {var12_upvr} {any_green_result1_upvr}s 🌱`, true)
			task.wait(2)
			Top_Text_upvr.NpcText(Parent_upvr, `And I will give you {var24_upvr} 🍯`, true)
			task.wait(2)
			Top_Text_upvr.NpcText(Parent_upvr, `Use the {var24_upvr} in my Store `, true)
			task.wait(2)
		elseif var58_upvw == "Shop" then
			Top_Text_upvr.NpcText(Parent_upvr, "Let me see...", true)
			task.wait(0.5)
			Top_Text_upvr.TakeAwayResponses(Parent_upvr, LocalPlayer_upvr)
			GuiController_upvr:Open(TravelingMerchantShop_UI_upvr)
			task.wait(0.5)
		elseif var58_upvw == "Held" then
			Top_Text_upvr.NpcText(Parent_upvr, "Let me see...", true)
			task.wait(0.5)
			HoneyMerchantSubmit_RE_upvr:FireServer("HELD")
		elseif var58_upvw == "All" then
			Top_Text_upvr.NpcText(Parent_upvr, "Let me see...", true)
			task.wait(0.5)
			HoneyMerchantSubmit_RE_upvr:FireServer("ALL")
		else
			Top_Text_upvr.NpcText(Parent_upvr, "Goodbye!", true)
		end
		EndInteraction_upvr()
	end
end
script.Parent.Triggered:Connect(function() -- Line 269
	--[[ Upvalues[3]:
		[1]: NPC_MOD_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
		[3]: yes_upvr (readonly)
	]]
	if NPC_MOD_upvr.Can_Speak(LocalPlayer_upvr) then
		yes_upvr()
	end
end)
local Click_upvr = game.SoundService.Click
script.Parent.PromptButtonHoldBegan:Connect(function() -- Line 277
	--[[ Upvalues[1]:
		[1]: Click_upvr (readonly)
	]]
	Click_upvr.PlaybackSpeed = 1 + math.random(-15, 15) / 100
	Click_upvr.Playing = true
	Click_upvr.TimePosition = 0
end)
local Position_upvr = script.Parent.Parent.Position
task.spawn(function() -- Line 286
	--[[ Upvalues[9]:
		[1]: var17_upvw (read and write)
		[2]: Position_upvr (readonly)
		[3]: var15_upvw (read and write)
		[4]: var14_upvw (read and write)
		[5]: Top_Text_upvr (readonly)
		[6]: LocalPlayer_upvr (readonly)
		[7]: Parent_upvr (readonly)
		[8]: NPC_MOD_upvr (readonly)
		[9]: cancelYes_upvr (readonly)
	]]
	while true do
		task.wait(0.1)
		if var17_upvw and var17_upvw.Character and var17_upvw.Character.PrimaryPart and 17 < (var17_upvw.Character.PrimaryPart.Position - Position_upvr).Magnitude and not var15_upvw and var14_upvw then
			Top_Text_upvr.RemovePlayerSideFrame(LocalPlayer_upvr)
			Top_Text_upvr.NpcText(Parent_upvr, "Goodbye!", true)
			NPC_MOD_upvr.End_Speak(LocalPlayer_upvr)
			cancelYes_upvr()
		end
	end
end)
script.Parent.PromptShown:Connect(function() -- Line 303
	--[[ Upvalues[4]:
		[1]: var13_upvw (read and write)
		[2]: Parent_upvr (readonly)
		[3]: TweenService_upvr (readonly)
		[4]: TweenInfo_new_result1_upvr (readonly)
	]]
	var13_upvw = Instance.new("Highlight", Parent_upvr)
	var13_upvw.DepthMode = Enum.HighlightDepthMode.Occluded
	var13_upvw.FillTransparency = 1
	var13_upvw.OutlineTransparency = 1
	var13_upvw.Adornee = Parent_upvr
	TweenService_upvr:Create(var13_upvw, TweenInfo_new_result1_upvr, {
		OutlineTransparency = 0;
	}):Play()
end)
script.Parent.PromptHidden:Connect(function() -- Line 314
	--[[ Upvalues[4]:
		[1]: var13_upvw (read and write)
		[2]: TweenService_upvr (readonly)
		[3]: TweenInfo_new_result1_upvr (readonly)
		[4]: Debris_upvr (readonly)
	]]
	if var13_upvw then
		TweenService_upvr:Create(var13_upvw, TweenInfo_new_result1_upvr, {
			OutlineTransparency = 1;
		}):Play()
		Debris_upvr:AddItem(var13_upvw, TweenInfo_new_result1_upvr.Time)
	end
end)