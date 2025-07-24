-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:23
-- Luau version 6, Types version 3
-- Time taken: 0.003829 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenService_upvr = game:GetService("TweenService")
local SettingsService_upvr = require(ReplicatedStorage.Modules.Settings.SettingsService)
local module_2_upvr = {
	Ancestors = {};
	FancyTextures = {};
}
local tbl_upvr_2 = {"Front", "Back", "Right", "Left", "Top", "Bottom"}
local tbl_upvr = {'R', 'G', 'B'}
local any_GetSetting_result1_upvw = SettingsService_upvr:GetSetting("Textures")
local function GetTextureColor_upvr(arg1) -- Line 40, Named "GetTextureColor"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local module = {
		R = 0;
		G = 0;
		B = 0;
	}
	local var11
	for i = 1, #tbl_upvr do
		local var12 = tbl_upvr[i]
		local var13 = arg1[var12]
		module[var12] = var13
		if 0 < var13 then
		end
	end
	module[nil] = 25555
	return Color3.new(module.R, module.G, module.B)
end
local GlowTexture_upvr = script.GlowTexture
local function SetFancyGlowStatus_upvr(arg1, arg2) -- Line 67, Named "SetFancyGlowStatus"
	--[[ Upvalues[5]:
		[1]: GetTextureColor_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: tbl_upvr_2 (readonly)
		[4]: GlowTexture_upvr (readonly)
		[5]: TweenService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if arg2 then
		if not module_2_upvr.FancyTextures[arg1] then
			module_2_upvr.FancyTextures[arg1] = {}
		end
		for i_2 = 1, #tbl_upvr_2 do
			local clone = GlowTexture_upvr:Clone()
			clone.Parent = arg1
			clone.Face = tbl_upvr_2[i_2]
			clone.Color3 = GetTextureColor_upvr(arg1.Color)
			clone.Transparency = 1
			TweenService_upvr:Create(clone, TweenInfo.new(0.5), {
				Transparency = 0.4;
			}):Play()
			table.insert(module_2_upvr.FancyTextures[arg1], clone)
			local _
		end
	elseif module_2_upvr.FancyTextures[arg1] then
		for _, v_2 in module_2_upvr.FancyTextures[arg1] do
			TweenService_upvr:Create(v_2, TweenInfo.new(0.75), {
				Transparency = 1;
			}):Play()
			game.Debris:AddItem(v_2, 0.75)
		end
	end
end
local function HandleGlow_upvr(arg1) -- Line 96, Named "HandleGlow"
	--[[ Upvalues[4]:
		[1]: module_2_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: any_GetSetting_result1_upvw (read and write)
		[4]: SetFancyGlowStatus_upvr (readonly)
	]]
	local class_Model_upvr = arg1:FindFirstAncestorWhichIsA("Model")
	if not class_Model_upvr then
	else
		arg1:SetAttribute("BaseMaterial", arg1.Material.Name)
		if module_2_upvr.Ancestors[class_Model_upvr] then
			table.insert(module_2_upvr.Ancestors[class_Model_upvr], arg1)
		else
			local tbl = {}
			tbl[1] = arg1
			module_2_upvr.Ancestors[class_Model_upvr] = tbl
		end
		local function _(arg1_2) -- Line 109
			--[[ Upvalues[6]:
				[1]: class_Model_upvr (readonly)
				[2]: arg1 (readonly)
				[3]: TweenService_upvr (copied, readonly)
				[4]: module_2_upvr (copied, readonly)
				[5]: any_GetSetting_result1_upvw (copied, read and write)
				[6]: SetFancyGlowStatus_upvr (copied, readonly)
			]]
			local Parent = arg1_2.Parent
			if not Parent then
			else
				if not game.Players:GetPlayerFromCharacter(Parent) then return end
				local Age = class_Model_upvr:FindFirstChild("Age", true)
				if not Age then return end
				if Age.Value < tonumber(arg1.Name) then return end
				if class_Model_upvr:GetAttribute("GlowToggled") then return end
				class_Model_upvr:SetAttribute("GlowToggled", true)
				local GlowLight = class_Model_upvr:FindFirstChild("GlowLight", true)
				if GlowLight then
					GlowLight.Brightness = 0
					TweenService_upvr:Create(GlowLight, TweenInfo.new(0.3), {
						Brightness = 1;
					}):Play()
				end
				for i_5, v_3_upvr in module_2_upvr.Ancestors[class_Model_upvr] do
					if any_GetSetting_result1_upvw then
						SetFancyGlowStatus_upvr(v_3_upvr, true)
					else
						v_3_upvr.Material = "Neon"
					end
					task.delay(8, function() -- Line 133
						--[[ Upvalues[2]:
							[1]: v_3_upvr (readonly)
							[2]: SetFancyGlowStatus_upvr (copied, readonly)
						]]
						v_3_upvr.Material = v_3_upvr:GetAttribute("BaseMaterial")
						SetFancyGlowStatus_upvr(v_3_upvr, false)
					end)
				end
				task.wait(8)
				if GlowLight then
					i_5 = TweenInfo.new
					v_3_upvr = 0.3
					i_5 = i_5(v_3_upvr)
					v_3_upvr = {}
					v_3_upvr.Brightness = 0
					TweenService_upvr:Create(GlowLight, i_5, v_3_upvr):Play()
				end
				task.wait(1)
				class_Model_upvr:SetAttribute("GlowToggled", false)
			end
		end
	end
end
game:GetService("CollectionService"):GetInstanceAddedSignal("GlowPart"):Connect(function(arg1) -- Line 152
	--[[ Upvalues[1]:
		[1]: HandleGlow_upvr (readonly)
	]]
	HandleGlow_upvr(arg1)
end)
require(ReplicatedStorage.Modules.DataService):GetPathSignal("Settings/Textures"):Connect(function() -- Line 156
	--[[ Upvalues[4]:
		[1]: any_GetSetting_result1_upvw (read and write)
		[2]: SettingsService_upvr (readonly)
		[3]: module_2_upvr (readonly)
		[4]: SetFancyGlowStatus_upvr (readonly)
	]]
	any_GetSetting_result1_upvw = SettingsService_upvr:GetSetting("Textures")
	if not any_GetSetting_result1_upvw then
		for i_3, _ in module_2_upvr.FancyTextures do
			SetFancyGlowStatus_upvr(i_3, false)
		end
	end
end)
return module_2_upvr