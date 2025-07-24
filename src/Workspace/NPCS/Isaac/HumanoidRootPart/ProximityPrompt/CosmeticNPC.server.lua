-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:05
-- Luau version 6, Types version 3
-- Time taken: 0.004004 seconds

local var1_upvw
local Parent_upvr = script.Parent.Parent.Parent
local TweenService_upvr = game:GetService("TweenService")
local TweenInfo_new_result1_upvr = TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
local var5_upvw = true
local Top_Text_upvr = require(game.ReplicatedStorage.Top_Text)
local LocalPlayer_upvr = game.Players.LocalPlayer
local var8_upvw = false
local var9_upvw = false
local NPC_MOD_upvr = require(game.ReplicatedStorage.NPC_MOD)
local var11_upvw
function cancelYes() -- Line 19
	--[[ Upvalues[11]:
		[1]: var9_upvw (read and write)
		[2]: var5_upvw (read and write)
		[3]: Top_Text_upvr (readonly)
		[4]: Parent_upvr (readonly)
		[5]: LocalPlayer_upvr (readonly)
		[6]: var1_upvw (read and write)
		[7]: TweenService_upvr (readonly)
		[8]: TweenInfo_new_result1_upvr (readonly)
		[9]: NPC_MOD_upvr (readonly)
		[10]: var11_upvw (read and write)
		[11]: var8_upvw (read and write)
	]]
	var9_upvw = true
	var5_upvw = true
	Top_Text_upvr.TakeAwayResponses(Parent_upvr, LocalPlayer_upvr)
	if var1_upvw then
		TweenService_upvr:Create(var1_upvw, TweenInfo_new_result1_upvr, {
			OutlineTransparency = 1;
		}):Play()
		game.Debris:AddItem(var1_upvw, TweenInfo_new_result1_upvr.Time)
	end
	NPC_MOD_upvr.End_Speak(game.Players.LocalPlayer)
	var11_upvw = nil
	var8_upvw = false
	task.wait(0.5)
	script.Parent.Enabled = true
end
local GuiController_upvr = require(game:GetService("ReplicatedStorage").Modules.GuiController)
function yes() -- Line 39
	--[[ Upvalues[12]:
		[1]: var5_upvw (read and write)
		[2]: var8_upvw (read and write)
		[3]: var11_upvw (read and write)
		[4]: NPC_MOD_upvr (readonly)
		[5]: var1_upvw (read and write)
		[6]: TweenService_upvr (readonly)
		[7]: TweenInfo_new_result1_upvr (readonly)
		[8]: var9_upvw (read and write)
		[9]: Top_Text_upvr (readonly)
		[10]: Parent_upvr (readonly)
		[11]: GuiController_upvr (readonly)
		[12]: LocalPlayer_upvr (readonly)
	]]
	for i, v in pairs(script.Parent.Parent.Parent.Head:GetChildren()) do
		if v:IsA("BillboardGui") then
			v.Enabled = false
		end
	end
	if var5_upvw == true then
		var5_upvw = false
		var8_upvw = true
		var11_upvw = game.Players.LocalPlayer
		i = game
		NPC_MOD_upvr.Start_Speak(i.Players.LocalPlayer)
		if var1_upvw and var1_upvw ~= nil then
			i = TweenInfo_new_result1_upvr
			v = {}
			v.OutlineTransparency = 1
			TweenService_upvr:Create(var1_upvw, i, v):Play()
			i = var1_upvw
			v = TweenInfo_new_result1_upvr.Time
			game.Debris:AddItem(i, v)
		end
		var9_upvw = false
		script.Parent.Enabled = false
		if var1_upvw then
			i = TweenInfo_new_result1_upvr
			v = {}
			v.OutlineTransparency = 1
			TweenService_upvr:Create(var1_upvw, i, v):Play()
			i = var1_upvw
			v = TweenInfo_new_result1_upvr.Time
			game.Debris:AddItem(i, v)
		end
		i = true
		while true do
			i = 0.8152475842498528
			if 0 >= i then break end
			i = var9_upvw
			if i ~= false then break end
			i = task.wait
			i()
			i = time()
		end
		i = GuiController_upvr:Open
		i(LocalPlayer_upvr.PlayerGui.CosmeticShop_UI)
		i = var9_upvw
		if i then
			i = cancelYes()
			return i
		end
		i = 0
		v = time()
		while i < 0.5652475842498528 and var9_upvw == false do
			task.wait()
			i = time() - v
		end
		if var9_upvw then
			return cancelYes()
		end
		Top_Text_upvr.TakeAwayResponses(script.Parent.Parent.Parent, game.Players.LocalPlayer)
		var5_upvw = true
		var8_upvw = false
		script.Parent.Enabled = true
		NPC_MOD_upvr.End_Speak(game.Players.LocalPlayer)
	end
end
script.Parent.Triggered:Connect(function() -- Line 90
	--[[ Upvalues[2]:
		[1]: NPC_MOD_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
	]]
	if NPC_MOD_upvr.Can_Speak(LocalPlayer_upvr) == true then
		yes(LocalPlayer_upvr)
	end
end)
local Click_upvr = game.SoundService.Click
script.Parent.PromptButtonHoldBegan:Connect(function() -- Line 97
	--[[ Upvalues[1]:
		[1]: Click_upvr (readonly)
	]]
	Click_upvr.PlaybackSpeed = 1 + math.random(-15, 15) / 100
	Click_upvr.Playing = true
	Click_upvr.TimePosition = 0
end)
local Position_upvr = script.Parent.Parent.Position
task.spawn(function() -- Line 103
	--[[ Upvalues[8]:
		[1]: var11_upvw (read and write)
		[2]: Position_upvr (readonly)
		[3]: var5_upvw (read and write)
		[4]: var8_upvw (read and write)
		[5]: Top_Text_upvr (readonly)
		[6]: LocalPlayer_upvr (readonly)
		[7]: Parent_upvr (readonly)
		[8]: NPC_MOD_upvr (readonly)
	]]
	while true do
		task.wait(1)
		if var11_upvw and var11_upvw.Character then
			local PrimaryPart_2 = var11_upvw.Character.PrimaryPart
			if PrimaryPart_2 and 10 < (PrimaryPart_2.Position - Position_upvr).Magnitude and var5_upvw == false and var8_upvw == true then
				Top_Text_upvr.RemovePlayerSideFrame(LocalPlayer_upvr)
				Top_Text_upvr.NpcText(Parent_upvr, "...", true)
				NPC_MOD_upvr.End_Speak(game.Players.LocalPlayer)
				cancelYes()
			end
		end
	end
end)
script.Parent.PromptShown:Connect(function() -- Line 124
	--[[ Upvalues[4]:
		[1]: var1_upvw (read and write)
		[2]: Parent_upvr (readonly)
		[3]: TweenService_upvr (readonly)
		[4]: TweenInfo_new_result1_upvr (readonly)
	]]
	var1_upvw = Instance.new("Highlight")
	var1_upvw.DepthMode = Enum.HighlightDepthMode.Occluded
	var1_upvw.FillTransparency = 1
	var1_upvw.OutlineTransparency = 1
	var1_upvw.Adornee = Parent_upvr
	var1_upvw.Parent = Parent_upvr
	TweenService_upvr:Create(var1_upvw, TweenInfo_new_result1_upvr, {
		OutlineTransparency = 0;
	}):Play()
end)
script.Parent.PromptHidden:Connect(function() -- Line 135
	--[[ Upvalues[3]:
		[1]: var1_upvw (read and write)
		[2]: TweenService_upvr (readonly)
		[3]: TweenInfo_new_result1_upvr (readonly)
	]]
	if var1_upvw then
		TweenService_upvr:Create(var1_upvw, TweenInfo_new_result1_upvr, {
			OutlineTransparency = 1;
		}):Play()
		game.Debris:AddItem(var1_upvw, TweenInfo_new_result1_upvr.Time)
	end
end)