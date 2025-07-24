-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:33:07
-- Luau version 6, Types version 3
-- Time taken: 0.013830 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService_upvr = game:GetService("RunService")
local ProximityPromptService = game:GetService("ProximityPromptService")
local Frame_upvr = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("FruitMutation_UI"):WaitForChild("Frame")
local Highlight_upvr = script:WaitForChild("Highlight")
local var6_upvw
local function _(arg1) -- Line 40, Named "Color3ToHex"
	return string.format("#%02X%02X%02X", arg1.R * 255, arg1.G * 255, arg1.B * 255)
end
local tbl_2_upvr = {}
local function StartRainbowTween_upvr(arg1, arg2, arg3) -- Line 46, Named "StartRainbowTween"
	--[[ Upvalues[2]:
		[1]: tbl_2_upvr (readonly)
		[2]: RunService_upvr (readonly)
	]]
	if tbl_2_upvr[arg1] then
		tbl_2_upvr[arg1]:Disconnect()
	end
	local Color3_fromHSV_result1_2 = Color3.fromHSV(0, 1, 1)
	arg1.Text = arg2:gsub("🌈", string.format("<font color=\"#%s\">%s</font>", string.format("#%02X%02X%02X", Color3_fromHSV_result1_2.R * 255, Color3_fromHSV_result1_2.G * 255, Color3_fromHSV_result1_2.B * 255), arg3))
	local var10_upvw = 0
	tbl_2_upvr[arg1] = RunService_upvr.RenderStepped:Connect(function(arg1_2) -- Line 56
		--[[ Upvalues[4]:
			[1]: var10_upvw (read and write)
			[2]: arg3 (readonly)
			[3]: arg1 (readonly)
			[4]: arg2 (readonly)
		]]
		var10_upvw = (var10_upvw + arg1_2 * 0.2) % 1
		local Color3_fromHSV_result1_5 = Color3.fromHSV(var10_upvw, 1, 1)
		arg1.Text = arg2:gsub("🌈", string.format("<font color=\"#%s\">%s</font>", string.format("#%02X%02X%02X", Color3_fromHSV_result1_5.R * 255, Color3_fromHSV_result1_5.G * 255, Color3_fromHSV_result1_5.B * 255), arg3))
	end)
end
local function _(arg1, arg2, arg3) -- Line 65, Named "StartTranscendentTween"
	--[[ Upvalues[2]:
		[1]: tbl_2_upvr (readonly)
		[2]: RunService_upvr (readonly)
	]]
	if tbl_2_upvr[arg1] then
		tbl_2_upvr[arg1]:Disconnect()
	end
	local var13_upvw = 0.75
	tbl_2_upvr[arg1] = RunService_upvr.RenderStepped:Connect(function(arg1_3) -- Line 71
		--[[ Upvalues[4]:
			[1]: var13_upvw (read and write)
			[2]: arg3 (readonly)
			[3]: arg1 (readonly)
			[4]: arg2 (readonly)
		]]
		var13_upvw = (var13_upvw + arg1_3 * 0.05) % 1
		local Color3_fromHSV_result1_3 = Color3.fromHSV(math.sin(tick() * 1.5) * 0.03 + 0.72, 1, 1)
		arg1.Text = arg2:gsub("💜", string.format("<font color=\"#%s\">%s</font>", string.format("#%02X%02X%02X", Color3_fromHSV_result1_3.R * 255, Color3_fromHSV_result1_3.G * 255, Color3_fromHSV_result1_3.B * 255), arg3))
	end)
end
local function _() -- Line 82, Named "StopAllRainbowTweens"
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	for _, v in pairs(tbl_2_upvr) do
		v:Disconnect()
	end
	table.clear(tbl_2_upvr)
end
local SeedData_upvr = require(ReplicatedStorage.Data.SeedData)
local EventGearData_upvr = require(ReplicatedStorage.Data.EventGearData)
local Item_Module_upvr = require(ReplicatedStorage.Item_Module)
local FruitName_upvr = Frame_upvr:WaitForChild("FruitName")
local CalculatePlantValue_upvr = require(ReplicatedStorage.Modules.CalculatePlantValue)
local Comma_Module_upvr = require(ReplicatedStorage.Comma_Module)
local FruitValue_upvr = Frame_upvr:WaitForChild("FruitValue")
local any_GetMutations_result1_upvr = require(ReplicatedStorage.Modules.MutationHandler):GetMutations()
local FruitMutation_upvr = Frame_upvr:WaitForChild("FruitMutation")
ProximityPromptService.PromptShown:Connect(function(arg1, arg2) -- Line 90
	--[[ Upvalues[15]:
		[1]: tbl_2_upvr (readonly)
		[2]: var6_upvw (read and write)
		[3]: Highlight_upvr (readonly)
		[4]: Frame_upvr (readonly)
		[5]: SeedData_upvr (readonly)
		[6]: EventGearData_upvr (readonly)
		[7]: Item_Module_upvr (readonly)
		[8]: StartRainbowTween_upvr (readonly)
		[9]: FruitName_upvr (readonly)
		[10]: RunService_upvr (readonly)
		[11]: CalculatePlantValue_upvr (readonly)
		[12]: Comma_Module_upvr (readonly)
		[13]: FruitValue_upvr (readonly)
		[14]: any_GetMutations_result1_upvr (readonly)
		[15]: FruitMutation_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local class_Model_3 = arg1:FindFirstAncestorWhichIsA("Model")
	if not class_Model_3 or not class_Model_3:HasTag("Harvestable") then
	else
		for _, v_3 in pairs(tbl_2_upvr) do
			v_3:Disconnect()
		end
		table.clear(tbl_2_upvr)
		var6_upvw = class_Model_3
		var6_upvw:SetAttribute("IsOutlined", true)
		if Highlight_upvr.Adornee ~= class_Model_3 then
			Highlight_upvr.FillTransparency = 1
		end
		Highlight_upvr.Adornee = class_Model_3
		Frame_upvr.Visible = true
		local Name_upvr_2 = class_Model_3.Name
		local var113 = SeedData_upvr[Name_upvr_2]
		if not var113 then
			var113 = EventGearData_upvr[Name_upvr_2]
		end
		local var114 = var113
		if var114 then
			var114 = var113.SeedRarity
		end
		if var114 then
			local any_Return_Rarity_Data_result1 = Item_Module_upvr.Return_Rarity_Data(var114)
		end
		if var114 == "Prismatic" then
			StartRainbowTween_upvr(FruitName_upvr, "🌈", Name_upvr_2)
		elseif var114 == "Transcendent" then
			if tbl_2_upvr[FruitName_upvr] then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				tbl_2_upvr[FruitName_upvr]:Disconnect()
			end
			local var117_upvw = 0.75
			local var118_upvr = "💜"
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_2_upvr[FruitName_upvr] = RunService_upvr.RenderStepped:Connect(function(arg1_5) -- Line 71
				--[[ Upvalues[4]:
					[1]: var117_upvw (read and write)
					[2]: Name_upvr_2 (readonly)
					[3]: FruitName_upvr (readonly)
					[4]: var118_upvr (readonly)
				]]
				var117_upvw = (var117_upvw + arg1_5 * 0.05) % 1
				local Color3_fromHSV_result1_4 = Color3.fromHSV(math.sin(tick() * 1.5) * 0.03 + 0.72, 1, 1)
				FruitName_upvr.Text = var118_upvr:gsub("💜", string.format("<font color=\"#%s\">%s</font>", string.format("#%02X%02X%02X", Color3_fromHSV_result1_4.R * 255, Color3_fromHSV_result1_4.G * 255, Color3_fromHSV_result1_4.B * 255), Name_upvr_2))
			end)
		elseif any_Return_Rarity_Data_result1 then
			local _2_2 = any_Return_Rarity_Data_result1[2]
			FruitName_upvr.Text = string.format("<font color=\"%s\">%s</font>", string.format("#%02X%02X%02X", _2_2.R * 255, _2_2.G * 255, _2_2.B * 255), Name_upvr_2)
		else
			FruitName_upvr.Text = Name_upvr_2
		end
		if class_Model_3:GetAttribute("Inspected") then
			FruitValue_upvr.Text = Comma_Module_upvr.Comma(CalculatePlantValue_upvr(class_Model_3)).."\xA2"
		else
			FruitValue_upvr.Text = ""
		end
		if FruitValue_upvr.Text == "" then
		else
		end
		FruitValue_upvr.Visible = true
		local Variant_2 = class_Model_3:FindFirstChild("Variant")
		if Variant_2 and Variant_2:IsA("StringValue") then
			local Value_2 = Variant_2.Value
			if Value_2 ~= "" and Value_2 ~= "Normal" then
				local var123 = Value_2
				if Value_2 == "Rainbow" then
					local _
				elseif Value_2 == "Gold" then
				else
				end
			end
		end
		local tbl = {}
		for i_4, v_4 in pairs(any_GetMutations_result1_upvr) do
			local var129
			if class_Model_3:GetAttribute(i_4) then
				local tbl_6 = {
					Name = i_4;
				}
				local function INLINED_2() -- Internal function, doesn't exist in bytecode
					var129 = string.format("#%02X%02X%02X", Color_2.R * 255, Color_2.G * 255, Color_2.B * 255)
					local Color_2 = v_4.Color
					return var129
				end
				if not v_4.Color or not INLINED_2() then
					var129 = "#FFFFFF"
				end
				tbl_6.Color = var129
				table.insert(tbl, tbl_6)
			end
		end
		local tbl_3 = {}
		if var123 then
			if var123 == "Rainbow" then
				i_4 = "🌈"
				table.insert(tbl_3, i_4)
			else
				i_4 = string.format
				v_4 = "<font color=\"%s\">%s</font>"
				i_4 = i_4(v_4, "#FFFFFF", var123)
				table.insert(tbl_3, i_4)
			end
		end
		for i_5, v_5 in ipairs(tbl) do
			table.insert(tbl_3, string.format("<font color=\"%s\">%s</font>", v_5.Color, v_5.Name))
			local var136
		end
		if 0 < #var136 then
			local concatenated = table.concat(var136, " <font color=\"#FFFFFF\">+</font> ")
			FruitMutation_upvr.Text = concatenated
			FruitMutation_upvr.Visible = true
			if var123 == "Rainbow" then
				i_5 = concatenated
				v_5 = "Rainbow"
				StartRainbowTween_upvr(FruitMutation_upvr, i_5, v_5)
				-- KONSTANTWARNING: GOTO [311] #239
			end
		else
			FruitMutation_upvr.Visible = false
		end
		if 0 < #tbl then
			i_5 = tbl[1].Color
			Highlight_upvr.FillColor = Color3.fromHex(i_5)
			return
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if "#FFFFFF" then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			Highlight_upvr.FillColor = Color3.fromHex("#FFFFFF")
			return
		end
		Highlight_upvr.FillColor = Color3.new(1, 1, 1)
	end
end)
ProximityPromptService.PromptHidden:Connect(function(arg1) -- Line 208
	--[[ Upvalues[4]:
		[1]: Highlight_upvr (readonly)
		[2]: Frame_upvr (readonly)
		[3]: var6_upvw (read and write)
		[4]: tbl_2_upvr (readonly)
	]]
	local class_Model_2 = arg1:FindFirstAncestorWhichIsA("Model")
	if class_Model_2 and class_Model_2:HasTag("Harvestable") and Highlight_upvr.Adornee == class_Model_2 then
		Highlight_upvr.Adornee = nil
		Frame_upvr.Visible = false
		var6_upvw:SetAttribute("IsOutlined", nil)
		var6_upvw = nil
		for _, v_2 in pairs(tbl_2_upvr) do
			v_2:Disconnect()
		end
		table.clear(tbl_2_upvr)
	end
end)
local CurrentCamera_upvr = workspace.CurrentCamera
RunService_upvr.RenderStepped:Connect(function() -- Line 221
	--[[ Upvalues[3]:
		[1]: var6_upvw (read and write)
		[2]: Frame_upvr (readonly)
		[3]: CurrentCamera_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 16 start (CF ANALYSIS FAILED)
	if not var6_upvw then
		Frame_upvr.Visible = false
		return
	end
	local descendants, NONE_2, NONE = var6_upvw:GetDescendants()
	-- KONSTANTERROR: [0] 1. Error Block 16 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 20. Error Block 7 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 20. Error Block 7 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 12. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [23.6]
	-- KONSTANTERROR: [13] 12. Error Block 4 end (CF ANALYSIS FAILED)
end)