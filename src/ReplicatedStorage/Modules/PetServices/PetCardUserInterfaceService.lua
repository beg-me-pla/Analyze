-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:44
-- Luau version 6, Types version 3
-- Time taken: 0.013795 seconds

local Players_upvr = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenService_upvr = game:GetService("TweenService")
local RunService_upvr = game:GetService("RunService")
local CurrentCamera_upvw = workspace.CurrentCamera
workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function() -- Line 12
	--[[ Upvalues[1]:
		[1]: CurrentCamera_upvw (read and write)
	]]
	CurrentCamera_upvw = workspace.CurrentCamera
end)
local ActivePetsService_upvr = require(ReplicatedStorage.Modules.PetServices.ActivePetsService)
local WaitForDescendant = require(ReplicatedStorage.Modules.WaitForDescendant)
local PetRegistry_upvr = require(ReplicatedStorage.Data.PetRegistry)
local PetUtilities_upvr = require(ReplicatedStorage.Modules.PetServices.PetUtilities)
local Chalk_upvr = require(ReplicatedStorage.Modules.Chalk)
local PetMutationRegistry_upvr = require(ReplicatedStorage.Data.PetRegistry.PetMutationRegistry)
local PetList_upvr = PetRegistry_upvr.PetList
local MAX_LEVEL_upvr = PetRegistry_upvr.PetConfig.XP_CONFIG.MAX_LEVEL
local LocalPlayer_upvr = Players_upvr.LocalPlayer
local PetCard_upvr = LocalPlayer_upvr:WaitForChild("PlayerGui"):WaitForChild("PetUI"):WaitForChild("PetCard")
local var8_result1_upvr_7 = WaitForDescendant(PetCard_upvr, "PET_TEXT")
local var8_result1_upvr = WaitForDescendant(PetCard_upvr, "PET_NAME_CONFIG")
local var8_result1_upvr_4 = WaitForDescendant(PetCard_upvr, "PET_LEVEL")
local WaitForDescendant_result1_upvr = WaitForDescendant(PetCard_upvr, "PET_WEIGHT")
local WaitForDescendant_result1_upvr_2 = WaitForDescendant(PetCard_upvr, "XP_TEXT")
local var8_result1_upvr_2 = WaitForDescendant(PetCard_upvr, "HUNGER_TEXT")
local var8_result1_upvr_3 = WaitForDescendant(PetCard_upvr, "EXP_BAR")
local WaitForDescendant_result1_upvr_4 = WaitForDescendant(PetCard_upvr, "HUNGER_BAR")
local var8_result1_upvr_6 = WaitForDescendant(PetCard_upvr, "PET_DESCRIPTION")
local var8_result1_upvr_5 = WaitForDescendant(PetCard_upvr, "PET_IMAGE")
local WaitForDescendant_result1_upvr_3 = WaitForDescendant(PetCard_upvr, "EXIT_BUTTON")
local var28 = require(ReplicatedStorage.Modules.SetupBrightnessAnimationFrame)(WaitForDescendant_result1_upvr_3)
local function _(arg1, arg2) -- Line 63, Named "BrightenColorHSV"
	local any_ToHSV_result1_2, any_ToHSV_result2_3, any_ToHSV_result3 = arg1:ToHSV()
	return Color3.fromHSV(any_ToHSV_result1_2, any_ToHSV_result2_3, math.clamp(any_ToHSV_result3 + arg2, 0, 1))
end
local udim2_upvr = UDim2.fromScale(0.875, 0.5)
local module_upvr = {
	Active = false;
	Target = nil;
}
local tbl_5_upvr = {}
local tbl_4_upvr = {}
local function _(arg1) -- Line 86, Named "Color3ToHex"
	return string.format("%02X%02X%02X", arg1.R * 255, arg1.G * 255, arg1.B * 255)
end
local function _(arg1, arg2, arg3) -- Line 90, Named "StartRainbowTween"
	--[[ Upvalues[2]:
		[1]: tbl_4_upvr (readonly)
		[2]: RunService_upvr (readonly)
	]]
	if tbl_4_upvr[arg1] then
		tbl_4_upvr[arg1]:Disconnect()
	end
	local var37_upvw = 0
	tbl_4_upvr[arg1] = RunService_upvr.RenderStepped:Connect(function(arg1_2) -- Line 96
		--[[ Upvalues[4]:
			[1]: var37_upvw (read and write)
			[2]: arg3 (readonly)
			[3]: arg1 (readonly)
			[4]: arg2 (readonly)
		]]
		var37_upvw = (var37_upvw + arg1_2 * 0.2) % 1
		local Color3_fromHSV_result1_4 = Color3.fromHSV(var37_upvw, 1, 1)
		arg1.Text = string.format("%s %s", arg2, string.format("<font color=\"#%s\">[%s]</font>", string.format("%02X%02X%02X", Color3_fromHSV_result1_4.R * 255, Color3_fromHSV_result1_4.G * 255, Color3_fromHSV_result1_4.B * 255), arg3))
	end)
end
local function _(arg1) -- Line 105, Named "StopRainbowTween"
	--[[ Upvalues[1]:
		[1]: tbl_4_upvr (readonly)
	]]
	if tbl_4_upvr[arg1] then
		tbl_4_upvr[arg1]:Disconnect()
		tbl_4_upvr[arg1] = nil
	end
end
function module_upvr.SetTarget(arg1, arg2) -- Line 112
	--[[ Upvalues[12]:
		[1]: module_upvr (readonly)
		[2]: ActivePetsService_upvr (readonly)
		[3]: PetList_upvr (readonly)
		[4]: PetRegistry_upvr (readonly)
		[5]: Chalk_upvr (readonly)
		[6]: PetMutationRegistry_upvr (readonly)
		[7]: var8_result1_upvr_6 (readonly)
		[8]: var8_result1_upvr_7 (readonly)
		[9]: tbl_4_upvr (readonly)
		[10]: RunService_upvr (readonly)
		[11]: var8_result1_upvr_5 (readonly)
		[12]: tbl_5_upvr (readonly)
	]]
	module_upvr.Target = arg2
	local var47_upvr
	if not arg2 then
	else
		local any_GetPetDataFromPetObject_result1 = ActivePetsService_upvr:GetPetDataFromPetObject(arg2)
		if not any_GetPetDataFromPetObject_result1 then return end
		local PetType = any_GetPetDataFromPetObject_result1.PetType
		local var51 = PetList_upvr[PetType]
		local var52_upvr = var51.Rarity or "Common"
		local Color = PetRegistry_upvr.PetRarities[var52_upvr].Color
		local any_ToHSV_result1, any_ToHSV_result2_2, _ = Color:ToHSV()
		var47_upvr = _ + -0.4
		var47_upvr = any_ToHSV_result1
		local Color3_fromHSV_result1_5 = Color3.fromHSV(var47_upvr, any_ToHSV_result2_2, math.clamp(var47_upvr, 0, 1))
		local _ = {
			Color = Color3_fromHSV_result1_5;
			Joins = "Round";
			Thickness = 2;
		}
		var47_upvr = 255
		local tbl = {}
		var47_upvr = 35
		tbl.Color = Color3.fromRGB(var47_upvr, 35, 35)
		tbl.Joins = "Round"
		tbl.Thickness = 2
		var47_upvr = `[{var52_upvr}]`
		var47_upvr = PetMutationRegistry_upvr.EnumToPetMutation
		local var60 = var47_upvr[any_GetPetDataFromPetObject_result1.PetData.MutationType]
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var47_upvr = `{var60} {PetType}`
			return var47_upvr
		end
		if not var60 or var60 == "Normal" or not INLINED() then
			var47_upvr = PetType
		end
		var8_result1_upvr_6.Text = var51.Description
		local var61 = var8_result1_upvr_7
		if tbl_4_upvr[var61] then
			tbl_4_upvr[var61]:Disconnect()
			tbl_4_upvr[var61] = nil
		end
		if var52_upvr == "Prismatic" then
			local var62_upvr = var8_result1_upvr_7
			if tbl_4_upvr[var62_upvr] then
				tbl_4_upvr[var62_upvr]:Disconnect()
			end
			local var64_upvw = 0
			tbl_4_upvr[var62_upvr] = RunService_upvr.RenderStepped:Connect(function(arg1_3) -- Line 96
				--[[ Upvalues[4]:
					[1]: var64_upvw (read and write)
					[2]: var52_upvr (readonly)
					[3]: var62_upvr (readonly)
					[4]: var47_upvr (readonly)
				]]
				var64_upvw = (var64_upvw + arg1_3 * 0.2) % 1
				local Color3_fromHSV_result1 = Color3.fromHSV(var64_upvw, 1, 1)
				var62_upvr.Text = string.format("%s %s", var47_upvr, string.format("<font color=\"#%s\">[%s]</font>", string.format("%02X%02X%02X", Color3_fromHSV_result1.R * 255, Color3_fromHSV_result1.G * 255, Color3_fromHSV_result1.B * 255), var52_upvr))
			end)
		else
			var62_upvr = Chalk_upvr.color(Color).stroke
			var62_upvr = var62_upvr({
				Color = Color3_fromHSV_result1_5;
				Joins = "Round";
				Thickness = 2;
			})
			var8_result1_upvr_7.Text = `{Chalk_upvr.color(Color3.fromRGB(255, 255, 255)).stroke({
				Color = Color3.fromRGB(35, 35, 35);
				Joins = "Round";
				Thickness = 2;
			})(var47_upvr)} {var62_upvr(`[{var52_upvr}]`)}`
		end
		var62_upvr = var8_result1_upvr_5
		var62_upvr.Image = var51.Icon
		var62_upvr = PetList_upvr[PetType]
		for _, v in tbl_5_upvr do
			v:Destroy()
		end
		for _, _ in var62_upvr.Passives do
		end
		module_upvr:Update()
	end
end
function module_upvr.SetTargetFromUUID(arg1, arg2) -- Line 241
	--[[ Upvalues[12]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: ActivePetsService_upvr (readonly)
		[3]: PetList_upvr (readonly)
		[4]: PetRegistry_upvr (readonly)
		[5]: Chalk_upvr (readonly)
		[6]: PetMutationRegistry_upvr (readonly)
		[7]: var8_result1_upvr_7 (readonly)
		[8]: tbl_4_upvr (readonly)
		[9]: RunService_upvr (readonly)
		[10]: var8_result1_upvr_5 (readonly)
		[11]: var8_result1_upvr_6 (readonly)
		[12]: tbl_5_upvr (readonly)
	]]
	arg1.Target = nil
	arg1.TargetUUID = arg2
	arg1.TargetPlayer = LocalPlayer_upvr.Name
	local any_GetPetData_result1 = ActivePetsService_upvr:GetPetData(LocalPlayer_upvr.Name, arg2)
	local var73_upvr
	if not any_GetPetData_result1 then
		warn(`Pet data not found for UUID: {arg2}`)
	else
		local PetType_2 = any_GetPetData_result1.PetType
		local var75 = PetList_upvr[PetType_2]
		if not var75 then return end
		local var76_upvr = var75.Rarity or "Common"
		local Color_2 = PetRegistry_upvr.PetRarities[var76_upvr].Color
		local any_ToHSV_result1_3, any_ToHSV_result2, _ = Color_2:ToHSV()
		var73_upvr = _ + -0.4
		var73_upvr = any_ToHSV_result1_3
		local Color3_fromHSV_result1_3 = Color3.fromHSV(var73_upvr, any_ToHSV_result2, math.clamp(var73_upvr, 0, 1))
		local _ = {
			Color = Color3_fromHSV_result1_3;
			Joins = "Round";
			Thickness = 2;
		}
		var73_upvr = 255
		local tbl_7 = {}
		var73_upvr = 35
		tbl_7.Color = Color3.fromRGB(var73_upvr, 35, 35)
		tbl_7.Joins = "Round"
		tbl_7.Thickness = 2
		var73_upvr = `[{var76_upvr}]`
		var73_upvr = PetMutationRegistry_upvr.EnumToPetMutation
		local var84 = var73_upvr[any_GetPetData_result1.PetData.MutationType]
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var73_upvr = `{var84} {PetType_2}`
			return var73_upvr
		end
		if not var84 or var84 == "Normal" or not INLINED_2() then
			var73_upvr = PetType_2
		end
		local var85 = var8_result1_upvr_7
		if tbl_4_upvr[var85] then
			tbl_4_upvr[var85]:Disconnect()
			tbl_4_upvr[var85] = nil
		end
		if var76_upvr == "Prismatic" then
			local var86_upvr = var8_result1_upvr_7
			if tbl_4_upvr[var86_upvr] then
				tbl_4_upvr[var86_upvr]:Disconnect()
			end
			local var88_upvw = 0
			tbl_4_upvr[var86_upvr] = RunService_upvr.RenderStepped:Connect(function(arg1_4) -- Line 96
				--[[ Upvalues[4]:
					[1]: var88_upvw (read and write)
					[2]: var76_upvr (readonly)
					[3]: var86_upvr (readonly)
					[4]: var73_upvr (readonly)
				]]
				var88_upvw = (var88_upvw + arg1_4 * 0.2) % 1
				local Color3_fromHSV_result1_2 = Color3.fromHSV(var88_upvw, 1, 1)
				var86_upvr.Text = string.format("%s %s", var73_upvr, string.format("<font color=\"#%s\">[%s]</font>", string.format("%02X%02X%02X", Color3_fromHSV_result1_2.R * 255, Color3_fromHSV_result1_2.G * 255, Color3_fromHSV_result1_2.B * 255), var76_upvr))
			end)
		else
			var86_upvr = Chalk_upvr.color(Color_2).stroke
			var86_upvr = var86_upvr({
				Color = Color3_fromHSV_result1_3;
				Joins = "Round";
				Thickness = 2;
			})
			var8_result1_upvr_7.Text = `{Chalk_upvr.color(Color3.fromRGB(255, 255, 255)).stroke({
				Color = Color3.fromRGB(35, 35, 35);
				Joins = "Round";
				Thickness = 2;
			})(var73_upvr)} {var86_upvr(`[{var76_upvr}]`)}`
		end
		var86_upvr = var8_result1_upvr_5
		var86_upvr.Image = var75.Icon
		var86_upvr = var8_result1_upvr_6
		var86_upvr.Text = ""
		var86_upvr = tbl_5_upvr
		for _, v_3 in var86_upvr do
			v_3:Destroy()
		end
	end
end
local DecimalNumberFormat_upvr = require(ReplicatedStorage.Data.DecimalNumberFormat)
function module_upvr.Update(arg1) -- Line 301
	--[[ Upvalues[17]:
		[1]: ActivePetsService_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: LocalPlayer_upvr (readonly)
		[4]: PetList_upvr (readonly)
		[5]: PetUtilities_upvr (readonly)
		[6]: WaitForDescendant_result1_upvr (readonly)
		[7]: DecimalNumberFormat_upvr (readonly)
		[8]: var8_result1_upvr (readonly)
		[9]: MAX_LEVEL_upvr (readonly)
		[10]: TweenService_upvr (readonly)
		[11]: var8_result1_upvr_3 (readonly)
		[12]: WaitForDescendant_result1_upvr_4 (readonly)
		[13]: var8_result1_upvr_2 (readonly)
		[14]: var8_result1_upvr_4 (readonly)
		[15]: WaitForDescendant_result1_upvr_2 (readonly)
		[16]: PetMutationRegistry_upvr (readonly)
		[17]: var8_result1_upvr_6 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 54 start (CF ANALYSIS FAILED)
	local var109
	local var110
	if arg1.Target then
		var109 = ActivePetsService_upvr:GetPetDataFromPetObject(arg1.Target)
		local SOME = Players_upvr:FindFirstChild(arg1.Target:GetAttribute("OWNER"))
		arg1.TargetUUID = arg1.Target:GetAttribute("UUID")
		arg1.TargetPlayer = SOME
	elseif arg1.TargetUUID then
		var109 = ActivePetsService_upvr:GetPetData(LocalPlayer_upvr.Name, arg1.TargetUUID)
		arg1.TargetPlayer = LocalPlayer_upvr
	end
	if not var109 then
	else
		local PetData_2 = var109.PetData
		local var113 = PetList_upvr[var109.PetType]
		if not var113 then return end
		local DefaultHunger = var113.DefaultHunger
		var110 = PetData_2.Level
		local any_CalculateWeight_result1 = PetUtilities_upvr:CalculateWeight(PetData_2.BaseWeight, var110)
		var110 = `Weight: {DecimalNumberFormat_upvr(any_CalculateWeight_result1)} KG`
		WaitForDescendant_result1_upvr.Text = var110
		local Name = PetData_2.Name
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			var110 = Name
			return var110
		end
		if Name == "" or not INLINED_3() then
			var110 = "Unnamed"
		end
		var8_result1_upvr.Text = var110
		local Level_2 = PetData_2.Level
		var110 = PetUtilities_upvr:GetCurrentLevelXPCost(Level_2)
		if MAX_LEVEL_upvr > Level_2 then
			local _ = false
			-- KONSTANTWARNING: Skipped task `defvar` above
		else
		end
		local var119 = PetData_2.LevelProgress or 0
		if true then
			-- KONSTANTWARNING: GOTO [111] #82
		end
		-- KONSTANTERROR: [0] 1. Error Block 54 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [110] 81. Error Block 56 start (CF ANALYSIS FAILED)
		TweenService_upvr:Create(var8_result1_upvr_3.ACTUAL_BAR, TweenInfo.new(0.2), {
			Size = UDim2.fromScale(var119 / var110, 1);
		}):Play()
		TweenService_upvr:Create(WaitForDescendant_result1_upvr_4.ACTUAL_BAR, TweenInfo.new(0.2), {
			Size = UDim2.fromScale(PetData_2.Hunger / DefaultHunger, 1);
		}):Play()
		var8_result1_upvr_2.Text = `{DecimalNumberFormat_upvr(PetData_2.Hunger)} / {DefaultHunger} HGR`
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var8_result1_upvr_3.ACTUAL_BAR.BAR_END.Visible = not true
		var8_result1_upvr_4.Text = `Age: {Level_2}`
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if true then
		else
		end
		WaitForDescendant_result1_upvr_2.Text = `{DecimalNumberFormat_upvr(var119)} / {math.round(var110)} EXP`
		for _, v_4 in var113.Passives do
			local var122
		end
		local var123 = PetMutationRegistry_upvr.PetMutationRegistry[PetMutationRegistry_upvr.EnumToPetMutation[var109.PetData.MutationType]]
		if not var123 then
			var123 = {}
			var123.Passives = {}
		end
		for _, v_5 in var123.Passives do
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local var124
		end
		var8_result1_upvr_6.Text = ""..`{PetUtilities_upvr:GetPassiveString(any_CalculateWeight_result1, v_4, SOME, arg1.TargetUUID)}\n`..`{PetUtilities_upvr:GetPassiveString(var122, v_5, SOME, arg1.TargetUUID)}\n`
		-- KONSTANTERROR: [110] 81. Error Block 56 end (CF ANALYSIS FAILED)
	end
end
function module_upvr.UpdateFromStatic(arg1) -- Line 384
	--[[ Upvalues[15]:
		[1]: module_upvr (readonly)
		[2]: PetList_upvr (readonly)
		[3]: PetUtilities_upvr (readonly)
		[4]: WaitForDescendant_result1_upvr (readonly)
		[5]: DecimalNumberFormat_upvr (readonly)
		[6]: var8_result1_upvr (readonly)
		[7]: MAX_LEVEL_upvr (readonly)
		[8]: TweenService_upvr (readonly)
		[9]: var8_result1_upvr_3 (readonly)
		[10]: WaitForDescendant_result1_upvr_4 (readonly)
		[11]: var8_result1_upvr_2 (readonly)
		[12]: var8_result1_upvr_4 (readonly)
		[13]: WaitForDescendant_result1_upvr_2 (readonly)
		[14]: PetMutationRegistry_upvr (readonly)
		[15]: var8_result1_upvr_6 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 46 start (CF ANALYSIS FAILED)
	local LastStaticData = module_upvr.LastStaticData
	local var142
	if not LastStaticData then
	else
		local PetData = LastStaticData.PetData
		local var144 = PetList_upvr[LastStaticData.PetType]
		if not var144 then return end
		local DefaultHunger_2 = var144.DefaultHunger
		var142 = PetData.BaseWeight
		local any_CalculateWeight_result1_2 = PetUtilities_upvr:CalculateWeight(var142, PetData.Level)
		var142 = `Weight: {DecimalNumberFormat_upvr(any_CalculateWeight_result1_2)} KG`
		WaitForDescendant_result1_upvr.Text = var142
		local function INLINED_4() -- Internal function, doesn't exist in bytecode
			var142 = PetData.Name
			return var142
		end
		if PetData.Name == "" or not INLINED_4() then
			var142 = "Unnamed"
		end
		var8_result1_upvr.Text = var142
		local Level = PetData.Level
		var142 = PetUtilities_upvr:GetCurrentLevelXPCost(Level)
		if MAX_LEVEL_upvr > Level then
			local _ = false
			-- KONSTANTWARNING: Skipped task `defvar` above
		else
		end
		local var149 = PetData.LevelProgress or 0
		local tbl_2 = {}
		if true then
			-- KONSTANTWARNING: GOTO [75] #56
		end
		-- KONSTANTERROR: [0] 1. Error Block 46 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [74] 55. Error Block 48 start (CF ANALYSIS FAILED)
		tbl_2.Size = UDim2.fromScale(var149 / var142, 1)
		TweenService_upvr:Create(var8_result1_upvr_3.ACTUAL_BAR, TweenInfo.new(0.2), tbl_2):Play()
		TweenService_upvr:Create(WaitForDescendant_result1_upvr_4.ACTUAL_BAR, TweenInfo.new(0.2), {
			Size = UDim2.fromScale(PetData.Hunger / DefaultHunger_2, 1);
		}):Play()
		var8_result1_upvr_2.Text = `{DecimalNumberFormat_upvr(PetData.Hunger)} / {DefaultHunger_2} HGR`
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var8_result1_upvr_3.ACTUAL_BAR.BAR_END.Visible = not true
		var8_result1_upvr_4.Text = `Age: {Level}`
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if true then
		else
		end
		WaitForDescendant_result1_upvr_2.Text = `{DecimalNumberFormat_upvr(var149)} / {math.round(var142)} EXP`
		print("Here")
		for _, v_6 in var144.Passives do
			local var152
		end
		local var153 = PetMutationRegistry_upvr.PetMutationRegistry[PetMutationRegistry_upvr.EnumToPetMutation[LastStaticData.PetData.MutationType]]
		if not var153 then
			var153 = {}
			var153.Passives = {}
		end
		for _, v_7 in var153.Passives do
			local var154
		end
		var8_result1_upvr_6.Text = ""..`{PetUtilities_upvr:GetPassiveString(any_CalculateWeight_result1_2, v_6)}\n`..`{PetUtilities_upvr:GetPassiveString(var152, v_7)}\n`
		-- KONSTANTERROR: [74] 55. Error Block 48 end (CF ANALYSIS FAILED)
	end
end
local DropShadowHolder_upvr = PetCard_upvr:WaitForChild("DropShadowHolder")
local var156_upvr = udim2_upvr + UDim2.fromScale(2, 0)
local Main_upvr = PetCard_upvr:WaitForChild("Main")
function module_upvr.Toggle(arg1, arg2) -- Line 445
	--[[ Upvalues[8]:
		[1]: PetCard_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: TweenService_upvr (readonly)
		[4]: DropShadowHolder_upvr (readonly)
		[5]: udim2_upvr (readonly)
		[6]: var156_upvr (readonly)
		[7]: Main_upvr (readonly)
		[8]: WaitForDescendant_result1_upvr_3 (readonly)
	]]
	if arg2 then
		PetCard_upvr.Visible = true
	end
	module_upvr.Active = arg2
	local tbl_6 = {}
	if not arg2 or not udim2_upvr then
	end
	tbl_6.Position = var156_upvr
	TweenService_upvr:Create(DropShadowHolder_upvr, TweenInfo.new(0.5), tbl_6):Play()
	local tbl_3 = {}
	if not arg2 or not udim2_upvr then
	end
	tbl_3.Position = var156_upvr
	local any_Create_result1 = TweenService_upvr:Create(Main_upvr, TweenInfo.new(0.5), tbl_3)
	any_Create_result1:Play()
	any_Create_result1.Completed:Connect(function() -- Line 461
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: PetCard_upvr (copied, readonly)
		]]
		if not arg2 then
			PetCard_upvr.Visible = false
		end
	end)
	if arg2 then
		game:GetService("GamepadService"):EnableGamepadCursor(WaitForDescendant_result1_upvr_3)
	else
		game:GetService("GamepadService"):DisableGamepadCursor()
	end
end
local PlayHoverSound_upvr = require(ReplicatedStorage.Modules.PlayHoverSound)
var28.MouseEnter:Connect(function() -- Line 474
	--[[ Upvalues[1]:
		[1]: PlayHoverSound_upvr (readonly)
	]]
	PlayHoverSound_upvr()
end)
local PlayClickSound_upvr = require(ReplicatedStorage.Modules.PlayClickSound)
var28.MouseButton1Click:Connect(function() -- Line 478
	--[[ Upvalues[2]:
		[1]: PlayClickSound_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	PlayClickSound_upvr()
	module_upvr:Toggle(false)
end)
task.spawn(function() -- Line 483
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	while true do
		task.wait(1)
		module_upvr:Update()
	end
end)
return module_upvr