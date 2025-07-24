-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:47
-- Luau version 6, Types version 3
-- Time taken: 0.002860 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local SettingsUI = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("SettingsUI")
local WaitForDescendant_upvr = require(ReplicatedStorage.Modules.WaitForDescendant)
local module_upvr = {}
module_upvr.__index = module_upvr
local WaitForDescendant_upvr_result1_upvr_2 = WaitForDescendant_upvr(SettingsUI, "MULTIPLE_SETTING_TEMPLATE")
local FindDescendantsWithTag_upvr = require(ReplicatedStorage.Modules.FindDescendantsWithTag)
local SetupSounds_upvr = require(ReplicatedStorage.Modules.SetupSounds)
function module_upvr.new() -- Line 19
	--[[ Upvalues[5]:
		[1]: module_upvr (readonly)
		[2]: WaitForDescendant_upvr_result1_upvr_2 (readonly)
		[3]: FindDescendantsWithTag_upvr (readonly)
		[4]: WaitForDescendant_upvr (readonly)
		[5]: SetupSounds_upvr (readonly)
	]]
	local setmetatable_result1_upvr = setmetatable({}, module_upvr)
	local clone = WaitForDescendant_upvr_result1_upvr_2:Clone()
	setmetatable_result1_upvr.Asset = clone
	setmetatable_result1_upvr.CurrentValue = "All"
	local tbl = {}
	setmetatable_result1_upvr.UIData = tbl
	tbl.AllStrokes = FindDescendantsWithTag_upvr(clone, "ColorStroke")
	tbl.NONE_BUTTON = WaitForDescendant_upvr(clone, "NONE_BUTTON")
	tbl.LESS_BUTTON = WaitForDescendant_upvr(clone, "LESS_BUTTON")
	tbl.ALL_BUTTON = WaitForDescendant_upvr(clone, "ALL_BUTTON")
	tbl.SETTING_TITLE = WaitForDescendant_upvr(clone, "SETTING_TITLE")
	tbl.SETTING_DESCRIPTION = WaitForDescendant_upvr(clone, "SETTING_DESCRIPTION")
	tbl.BACKGROUND_TEXTURE = WaitForDescendant_upvr(clone, "BACKGROUND_TEXTURE")
	for _, v in pairs({tbl.NONE_BUTTON, tbl.LESS_BUTTON, tbl.ALL_BUTTON}) do
		SetupSounds_upvr(v)
	end
	tbl.NONE_BUTTON.SENSOR.MouseButton1Click:Connect(function() -- Line 42
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:Set("None")
	end)
	tbl.LESS_BUTTON.SENSOR.MouseButton1Click:Connect(function() -- Line 46
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:Set("Less")
	end)
	tbl.ALL_BUTTON.SENSOR.MouseButton1Click:Connect(function() -- Line 50
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:Set("All")
	end)
	return setmetatable_result1_upvr
end
local SettingsService_upvr = require(ReplicatedStorage.Modules.Settings.SettingsService)
function module_upvr.Set(arg1, arg2) -- Line 57
	--[[ Upvalues[1]:
		[1]: SettingsService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if arg1.CurrentValue == arg2 then
	else
		arg1.CurrentValue = arg2
		local UIData = arg1.UIData
		local var31
		for i_2, v_2 in {
			None = UIData.NONE_BUTTON;
			Less = UIData.LESS_BUTTON;
			All = UIData.ALL_BUTTON;
		} do
			if i_2 ~= arg2 then
				var31 = false
			else
				var31 = true
			end
			if var31 then
			else
			end
			v_2.BackgroundTransparency = 0.8
		end
		if arg1.Id then
			i_2 = arg2
			SettingsService_upvr:SetSetting(arg1.Id, i_2)
		end
	end
end
function module_upvr.SetId(arg1, arg2) -- Line 80
	arg1.Id = arg2
	return arg1
end
function module_upvr.Update(arg1, arg2) -- Line 85
	arg1:Set(arg2)
	return arg1
end
function module_upvr.SetDescription(arg1, arg2) -- Line 90
	arg1.UIData.SETTING_DESCRIPTION.Text = arg2
	return arg1
end
function module_upvr.SetTitle(arg1, arg2) -- Line 95
	arg1.UIData.SETTING_TITLE.Text = arg2
	return arg1
end
function module_upvr.SetBackgroundImage(arg1, arg2) -- Line 100
	arg1.UIData.BACKGROUND_TEXTURE.Image = arg2
	return arg1
end
function module_upvr.SetLayoutOrder(arg1, arg2) -- Line 105
	arg1.Asset.LayoutOrder = arg2
	return arg1
end
local WaitForDescendant_upvr_result1_upvr = WaitForDescendant_upvr(SettingsUI, "SETTING_INSERTION_POINT")
function module_upvr.Complete(arg1) -- Line 110
	--[[ Upvalues[1]:
		[1]: WaitForDescendant_upvr_result1_upvr (readonly)
	]]
	local Asset = arg1.Asset
	Asset.Visible = true
	Asset.Parent = WaitForDescendant_upvr_result1_upvr
	return arg1
end
return module_upvr