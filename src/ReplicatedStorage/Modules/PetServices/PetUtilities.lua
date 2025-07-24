-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:43
-- Luau version 6, Types version 3
-- Time taken: 0.011694 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local RunService_upvr = game:GetService("RunService")
local ServerScriptService_upvr = game:GetService("ServerScriptService")
local PetRegistry = require(ReplicatedStorage_upvr.Data.PetRegistry)
local PetConfig = PetRegistry.PetConfig
local PetList_upvr = PetRegistry.PetList
local PassiveRegistry_upvr = PetRegistry.PassiveRegistry
local XP_CONFIG = PetConfig.XP_CONFIG
local DeepClone_upvr = require(ReplicatedStorage_upvr.Modules.ReplicationClass.DeepClone)
local tbl = {
	BaseCost = XP_CONFIG.XP_BASE_COST;
	ScalingFactor = XP_CONFIG.XP_EXPONENTIAL;
}
local any_new_result1_upvr = require(ReplicatedStorage_upvr.Modules.ExponentialScaler).new(tbl)
tbl = 0
local var18_upvw = tbl
for i = 1, XP_CONFIG.MAX_LEVEL do
	var18_upvw += any_new_result1_upvr:GetCost(i)
end
local module_2_upvr = {
	GetCurrentLevelXPCost = function(arg1, arg2) -- Line 47, Named "GetCurrentLevelXPCost"
		--[[ Upvalues[1]:
			[1]: any_new_result1_upvr (readonly)
		]]
		return any_new_result1_upvr:GetCost(arg2)
	end;
}
local Players_upvr = game:GetService("Players")
function module_2_upvr.GetCurrentLevelState(arg1, arg2, arg3, arg4, arg5) -- Line 58
	--[[ Upvalues[5]:
		[1]: PassiveRegistry_upvr (readonly)
		[2]: RunService_upvr (readonly)
		[3]: ReplicatedStorage_upvr (readonly)
		[4]: Players_upvr (readonly)
		[5]: ServerScriptService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var29 = PassiveRegistry_upvr[arg3]
	local var30
	if not var29 then
		warn("Could not find passive", arg3)
		return {}
	end
	if RunService_upvr:IsClient() then
		var30 = Players_upvr.LocalPlayer
	else
	end
	local module = {}
	for i_2, v in var29.States do
		local Min = v.Min
		local Max = v.Max
		local var34
		if i_2 == "Cooldown" then
			if 0.06 <= require(ServerScriptService_upvr.Modules.PetsServices.ActivePetsService):CalculateBoost(var30, arg5, "PASSIVE_BOOST") then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				var34 -= v.Base * (require(ServerScriptService_upvr.Modules.PetsServices.ActivePetsService):CalculateBoost(var30, arg5, "PASSIVE_BOOST") - 1)
				-- KONSTANTWARNING: GOTO [82] #60
			end
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var34 += v.Base * (require(ServerScriptService_upvr.Modules.PetsServices.ActivePetsService):CalculateBoost(var30, arg5, "PASSIVE_BOOST") - 1 - 1)
		end
		if Min and Max then
			var34 = math.clamp(var34, Min, Max)
		elseif Min then
			var34 = math.max(var34, Min)
		elseif Max then
			var34 = math.min(var34, Max)
		end
		module[i_2] = var34
	end
	return module
end
local tbl_upvr = {}
local TimeHelper_upvr = require(ReplicatedStorage_upvr.Modules.TimeHelper)
function tbl_upvr.ColonTime(arg1) -- Line 112
	--[[ Upvalues[1]:
		[1]: TimeHelper_upvr (readonly)
	]]
	return TimeHelper_upvr:GenerateColonFormatFromTime(arg1)
end
local DecimalNumberFormat_upvr = require(ReplicatedStorage_upvr.Data.DecimalNumberFormat)
function module_2_upvr.GetPassiveString(arg1, arg2, arg3, arg4, arg5) -- Line 117
	--[[ Upvalues[4]:
		[1]: module_2_upvr (readonly)
		[2]: PassiveRegistry_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: DecimalNumberFormat_upvr (readonly)
	]]
	local var44
	for i_3, v_2 in module_2_upvr:GetCurrentLevelState(arg2, arg3, arg4, arg5), nil do
		local var46
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var46 = tbl_upvr[PassiveRegistry_upvr[arg3].States[i_3].Formatter](v_2)
			return var46
		end
		if not tbl_upvr[PassiveRegistry_upvr[arg3].States[i_3].Formatter] or not INLINED() then
			var46 = tostring(DecimalNumberFormat_upvr(v_2))
		end
		var44 = var44:gsub(`<{i_3}>`, var46)
	end
	return var44
end
local InventoryServiceEnums_upvr = require(ReplicatedStorage_upvr.Data.EnumRegistry.InventoryServiceEnums)
local CalculatePlantValue_upvr = require(ReplicatedStorage_upvr.Modules.CalculatePlantValue)
local HUNGER_PER_WEIGHT_upvr = PetConfig.PET_FEEDING_CONFIG.HUNGER_PER_WEIGHT
function module_2_upvr.GetFruitWorthForAnimal(arg1, arg2, arg3) -- Line 138
	--[[ Upvalues[4]:
		[1]: PetList_upvr (readonly)
		[2]: InventoryServiceEnums_upvr (readonly)
		[3]: CalculatePlantValue_upvr (readonly)
		[4]: HUNGER_PER_WEIGHT_upvr (readonly)
	]]
	return CalculatePlantValue_upvr(arg3) * HUNGER_PER_WEIGHT_upvr * (PetList_upvr[arg2].HungerFruitMultipliers[arg3:GetAttribute(InventoryServiceEnums_upvr.ItemName)] or 1)
end
function module_2_upvr.GetFruitWorthPercentageForAnimal(arg1, arg2, arg3) -- Line 150
	--[[ Upvalues[2]:
		[1]: module_2_upvr (readonly)
		[2]: PetList_upvr (readonly)
	]]
	return module_2_upvr:GetFruitWorthForAnimal(arg2, arg3) / PetList_upvr[arg2].DefaultHunger
end
function module_2_upvr.NormalizeOdds(arg1, arg2) -- Line 159
	local var58 = 0
	local Items = arg2.Items
	for _, v_3 in Items do
		var58 += v_3.ItemOdd
	end
	for i_5, v_4 in Items do
		v_4.NormalizedOdd = v_4.ItemOdd / var58 * 100
		v_4.Name = i_5
	end
	arg2.TotalOdds = var58
	return arg2
end
local SCALE_PERCENTAGE_OF_BASE_WEIGHT_PER_LEVEL_upvr = PetConfig.WEIGHT_CONFIG.SCALE_PERCENTAGE_OF_BASE_WEIGHT_PER_LEVEL
function module_2_upvr.CalculateWeight(arg1, arg2, arg3) -- Line 178
	--[[ Upvalues[1]:
		[1]: SCALE_PERCENTAGE_OF_BASE_WEIGHT_PER_LEVEL_upvr (readonly)
	]]
	return arg2 + arg2 * SCALE_PERCENTAGE_OF_BASE_WEIGHT_PER_LEVEL_upvr * arg3
end
function module_2_upvr.GetLevelProgress(arg1, arg2) -- Line 187
	--[[ Upvalues[2]:
		[1]: any_new_result1_upvr (readonly)
		[2]: var18_upvw (read and write)
	]]
	if not arg2 then
		warn("PetUtilities:GetLevelProgress | No Level!")
		return 0
	end
	for _ = 1, arg2 do
		local var63
	end
	return var63 / var18_upvw
end
for _, v_5 in PetRegistry.PetEggs do
	local Color = v_5.Color
	if not Color then
		Color = Color3.fromRGB(255, 252, 252)
	end
	v_5.Color = Color
	v_5.HatchTime = v_5.HatchTime or 6
	local RarityData = v_5.RarityData
	if not RarityData then
		RarityData = {}
		RarityData.Items = {}
	end
	v_5.RarityData = RarityData
	module_2_upvr:NormalizeOdds(v_5.RarityData)
end
function module_2_upvr.GetRandomPet(arg1, arg2, arg3) -- Line 210
	if not arg3 then
		warn("PetUtilities:GetRandomPet | RandomObject was not passed, replacing with random Random object!")
	end
	local var70 = arg3
	if not var70 then
		var70 = Random.new()
	end
	if not arg2 or not arg2.TotalOdds or not arg2.Items then
		return warn(`GetRandomPet | {arg2} is nil or invalid!`)
	end
	for _, v_6 in arg2.Items do
		if 0 + v_6.ItemOdd >= var70:NextNumber() * arg2.TotalOdds then
			return v_6
		end
	end
end
function module_2_upvr.GetLookAt(arg1, arg2, arg3) -- Line 234
	return CFrame.new(arg2, Vector3.new(arg3.X, arg2.Y, arg3.Z))
end
function module_2_upvr.GetGeneratedEclipsePositions(arg1, arg2) -- Line 238
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local TargetCFrame = arg2.TargetCFrame
	if not TargetCFrame then
		return warn("GetGeneratedEclipsePositions: There is no TargetCFrame in Config:", arg2, debug.traceback())
	end
	local TotalPositions = arg2.TotalPositions
	if not TotalPositions then
		return warn("GetGeneratedEclipsePositions: There is no TotalPositions in Config:", arg2, debug.traceback())
	end
	local var77 = arg2.Angle or 0.39269908169872414
	local module_3 = {}
	local const_number = 1
	while true do
		local var81
		if #module_3 >= TotalPositions then break end
		var81 = arg2.StartingRowAmount or 5
		local minimum = math.min(var81, TotalPositions - #module_3)
		if minimum == 1 then
			var81 = 0
		else
			var81 = var77 * (minimum - 1) / 2
		end
		for i_9 = 1, minimum do
			local var83 = var77 * (i_9 - 1) - var81
			table.insert(module_3, (TargetCFrame * CFrame.new(math.sin(var83) * const_number * (arg2.RadiusIncrementX or 3), 0, math.cos(var83) * const_number * (arg2.RadiusIncrementZ or 3))).Position)
			local _
		end
	end
	return module_3
end
function module_2_upvr.GetPetsSortedByAge(arg1, arg2, arg3, arg4, arg5) -- Line 279
	--[[ Upvalues[4]:
		[1]: RunService_upvr (readonly)
		[2]: ServerScriptService_upvr (readonly)
		[3]: DeepClone_upvr (readonly)
		[4]: ReplicatedStorage_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 8. Error Block 29 start (CF ANALYSIS FAILED)
	if not require(ServerScriptService_upvr.Modules.DataService):GetPlayerDataAsync(arg2) then return end
	-- KONSTANTERROR: [8] 8. Error Block 29 end (CF ANALYSIS FAILED)
end
function module_2_upvr.GetPetByUUID(arg1, arg2, arg3) -- Line 351
	--[[ Upvalues[4]:
		[1]: RunService_upvr (readonly)
		[2]: ServerScriptService_upvr (readonly)
		[3]: DeepClone_upvr (readonly)
		[4]: ReplicatedStorage_upvr (readonly)
	]]
	if not arg2 or not arg3 then
		return nil
	end
	if RunService_upvr:IsServer() then
		local any_GetPlayerDataAsync_result1 = require(ServerScriptService_upvr.Modules.DataService):GetPlayerDataAsync(arg2)
		if not any_GetPlayerDataAsync_result1 then
			return nil
		end
		local var87 = any_GetPlayerDataAsync_result1.PetsData.PetInventory.Data[arg3]
		if not var87 then
			return nil
		end
		local DeepClone_upvr_result1 = DeepClone_upvr(var87)
		DeepClone_upvr_result1.UUID = arg3
		return DeepClone_upvr_result1
	end
	if RunService_upvr:IsClient() then
		local any_GetPlayerDatastorePetData_result1 = require(ReplicatedStorage_upvr.Modules.PetServices.ActivePetsService):GetPlayerDatastorePetData(arg2.Name)
		if not any_GetPlayerDatastorePetData_result1 then
			return nil
		end
		local var90 = any_GetPlayerDatastorePetData_result1.PetInventory.Data[arg3]
		if not var90 then
			return nil
		end
		local var15_result1 = DeepClone_upvr(var90)
		var15_result1.UUID = arg3
		return var15_result1
	end
end
local SpottedEffect_upvr = ReplicatedStorage_upvr.Assets.VFX.SpottedEffect
local Debris_upvr = game:GetService("Debris")
function module_2_upvr.AbilityFX(arg1, arg2, arg3) -- Line 382
	--[[ Upvalues[3]:
		[1]: RunService_upvr (readonly)
		[2]: SpottedEffect_upvr (readonly)
		[3]: Debris_upvr (readonly)
	]]
	local var94
	if RunService_upvr:IsServer() then
		var94 = require(game.ServerScriptService.Modules.PetsServices.ActivePetsService)
	else
		var94 = require(game.ReplicatedStorage.Modules.PetServices.ActivePetsService)
	end
	local clone = SpottedEffect_upvr:Clone()
	clone.CFrame = CFrame.new(var94:GetRealPosition(arg2, arg3)) * CFrame.new(0, 3, 0)
	clone.Parent = workspace
	clone.SpottedFX.SpotParticle:Emit(1)
	Debris_upvr:AddItem(clone, 3)
end
return module_2_upvr