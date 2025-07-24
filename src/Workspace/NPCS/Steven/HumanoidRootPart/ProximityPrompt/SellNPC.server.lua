-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:03
-- Luau version 6, Types version 3
-- Time taken: 0.006982 seconds

local TweenService_upvr = game:GetService("TweenService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenInfo_new_result1_upvr = TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
local Debris_upvr = game:GetService("Debris")
local InventoryServiceEnums_upvr = require(ReplicatedStorage.Data.EnumRegistry.InventoryServiceEnums)
local Parent_upvr = script.Parent.Parent.Parent
local LocalPlayer_upvr = game.Players.LocalPlayer
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
local function cancelYes_upvr() -- Line 49, Named "cancelYes"
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
local function getSellableTools_upvr(arg1, arg2) -- Line 65, Named "getSellableTools"
	--[[ Upvalues[1]:
		[1]: InventoryServiceEnums_upvr (readonly)
	]]
	if arg1 then
		for _, v in pairs(arg1:GetChildren()) do
			if v:IsA("Tool") and (v:FindFirstChild("Item_String") or v:GetAttribute("PET_UUID")) or v:GetAttribute(InventoryServiceEnums_upvr.Favorite) ~= true or arg2 or false then
				table.insert({}, v)
			end
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
local CalculatePlantValue_upvr = require(ReplicatedStorage.Modules.CalculatePlantValue)
local function processSale_upvr(arg1, arg2, arg3, arg4) -- Line 97, Named "processSale"
	--[[ Upvalues[1]:
		[1]: CalculatePlantValue_upvr (readonly)
	]]
	local var26
	for _, v_2 in arg2 do
		if arg3 then
			var26 += CalculatePlantValue_upvr(v_2)
		end
	end
	if arg4 and 0 < var26 then
		arg4:FireServer()
	end
	return var26
end
local Comma_Module_upvr = require(game.ReplicatedStorage.Comma_Module)
local ItemTypeEnums_upvr = require(ReplicatedStorage.Data.EnumRegistry.ItemTypeEnums)
local CalculatePetValue_upvr = require(ReplicatedStorage.Modules.CalculatePetValue)
local function yes_upvr() -- Line 115, Named "yes"
	--[[ Upvalues[21]:
		[1]: var12_upvw (read and write)
		[2]: var11_upvw (read and write)
		[3]: var14_upvw (read and write)
		[4]: LocalPlayer_upvr (readonly)
		[5]: NPC_MOD_upvr (readonly)
		[6]: var10_upvw (read and write)
		[7]: TweenService_upvr (readonly)
		[8]: TweenInfo_new_result1_upvr (readonly)
		[9]: Debris_upvr (readonly)
		[10]: var13_upvw (read and write)
		[11]: Top_Text_upvr (readonly)
		[12]: Parent_upvr (readonly)
		[13]: waitForDuration_upvr (readonly)
		[14]: cancelYes_upvr (readonly)
		[15]: getSellableTools_upvr (readonly)
		[16]: CalculatePlantValue_upvr (readonly)
		[17]: Comma_Module_upvr (readonly)
		[18]: processSale_upvr (readonly)
		[19]: InventoryServiceEnums_upvr (readonly)
		[20]: ItemTypeEnums_upvr (readonly)
		[21]: CalculatePetValue_upvr (readonly)
	]]
	if not var12_upvw then return end
	var12_upvw = false
	var11_upvw = true
	var14_upvw = LocalPlayer_upvr
	NPC_MOD_upvr.Start_Speak(LocalPlayer_upvr)
	if var10_upvw then
		TweenService_upvr:Create(var10_upvw, TweenInfo_new_result1_upvr, {
			OutlineTransparency = 1;
		}):Play()
		Debris_upvr:AddItem(var10_upvw, TweenInfo_new_result1_upvr.Time)
	end
	var13_upvw = false
	script.Parent.Enabled = false
	Top_Text_upvr.NpcText(Parent_upvr, "Got anything to sell?", false)
	if not waitForDuration_upvr(math.random(1, 1.5)) then
		return cancelYes_upvr()
	end
	local tbl_3 = {"I want to sell my inventory", "I want to sell this", "How much is this worth?", "Nevermind"}
	if workspace:GetAttribute("InTutorial") then
		tbl_3 = {"I want to sell my inventory"}
	end
	if var13_upvw then
		return cancelYes_upvr()
	end
	for _, v_3 in pairs(Top_Text_upvr.ShowChoices(LocalPlayer_upvr, tbl_3)) do
		local Frame_upvr_2 = v_3:FindFirstChild("Frame")
		if Frame_upvr_2 then
			local ImageButton_2 = Frame_upvr_2:FindFirstChild("ImageButton")
			if ImageButton_2 then
				local var58_upvw = ""
				local var59_upvw = ""
				table.insert({}, ImageButton_2.MouseButton1Click:Connect(function() -- Line 165
					--[[ Upvalues[3]:
						[1]: var58_upvw (read and write)
						[2]: Frame_upvr_2 (readonly)
						[3]: var59_upvw (read and write)
					]]
					var58_upvw = Frame_upvr_2.Frame.Text_Element:GetAttribute("Text")
					if var58_upvw == "I want to sell my inventory" then
						var59_upvw = "Sell Inventory"
					else
						if var58_upvw == "I want to sell this" then
							var59_upvw = "Sell This"
							return
						end
						if var58_upvw == "How much is this worth?" then
							var59_upvw = "How"
							return
						end
						if var58_upvw == "Tell me about this" then
							var59_upvw = "Tell me"
							return
						end
						var59_upvw = "Nevermind"
					end
				end))
			end
		end
	end
end
script.Parent.Triggered:Connect(function() -- Line 348
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
script.Parent.PromptButtonHoldBegan:Connect(function() -- Line 357
	--[[ Upvalues[1]:
		[1]: Click_upvr (readonly)
	]]
	Click_upvr.PlaybackSpeed = 1 + math.random(-15, 15) / 100
	Click_upvr.Playing = true
	Click_upvr.TimePosition = 0
end)
local Position_upvr = script.Parent.Parent.Position
task.spawn(function() -- Line 365
	--[[ Upvalues[9]:
		[1]: var14_upvw (read and write)
		[2]: Position_upvr (readonly)
		[3]: var12_upvw (read and write)
		[4]: var11_upvw (read and write)
		[5]: Top_Text_upvr (readonly)
		[6]: LocalPlayer_upvr (readonly)
		[7]: Parent_upvr (readonly)
		[8]: NPC_MOD_upvr (readonly)
		[9]: cancelYes_upvr (readonly)
	]]
	while true do
		task.wait(0.1)
		if var14_upvw and var14_upvw.Character and var14_upvw.Character.PrimaryPart and 17 < (var14_upvw.Character.PrimaryPart.Position - Position_upvr).Magnitude and not var12_upvw and var11_upvw then
			Top_Text_upvr.RemovePlayerSideFrame(LocalPlayer_upvr)
			Top_Text_upvr.NpcText(Parent_upvr, "Goodbye!", true)
			NPC_MOD_upvr.End_Speak(LocalPlayer_upvr)
			cancelYes_upvr()
		end
	end
end)
script.Parent.PromptShown:Connect(function() -- Line 382
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
script.Parent.PromptHidden:Connect(function() -- Line 393
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