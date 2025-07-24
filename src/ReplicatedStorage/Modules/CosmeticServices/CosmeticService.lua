-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:48
-- Luau version 6, Types version 3
-- Time taken: 0.004141 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr = {}
local DataService_upvr = require(ReplicatedStorage.Modules.DataService)
local CountDictionary_upvr = require(ReplicatedStorage.Modules.CountDictionary)
local SaveSlotController_upvr = require(ReplicatedStorage.Modules.SaveSlotControllers.SaveSlotController)
local CosmeticService_upvr = ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("CosmeticService")
function module_upvr.HasMaxInventory(arg1) -- Line 25
	--[[ Upvalues[3]:
		[1]: DataService_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: CountDictionary_upvr (readonly)
	]]
	local any_GetData_result1_2 = DataService_upvr:GetData()
	if not any_GetData_result1_2 then return end
	local CosmeticData = any_GetData_result1_2.CosmeticData
	if not CosmeticData.MutableStats then
		return warn("CosmeticService:HasMaxInventory Passed player has corrupted MutableStats!")
	end
	local any_GetMutableStat_result1 = module_upvr:GetMutableStat("MaxCosmeticsInInventory")
	if not any_GetMutableStat_result1 then
		return warn("CosmeticService:HasMaxInventory Passed player has corrupted MaxCosmeticsInInventory Stats!")
	end
	local Inventory_2 = CosmeticData.Inventory
	if not Inventory_2 then
		return warn("CosmeticService:HasMaxInventory Passed player has corrupted CosmeticData.Inventory!")
	end
	local var12 = Inventory_2
	if any_GetMutableStat_result1 > CountDictionary_upvr(var12) then
		var12 = false
	else
		var12 = true
	end
	return var12
end
function module_upvr.HasMaxEquipped(arg1) -- Line 38
	--[[ Upvalues[4]:
		[1]: DataService_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: SaveSlotController_upvr (readonly)
		[4]: CountDictionary_upvr (readonly)
	]]
	local any_GetData_result1_4 = DataService_upvr:GetData()
	if not any_GetData_result1_4 then return end
	if not any_GetData_result1_4.CosmeticData.MutableStats then
		return warn("CosmeticService:HasMaxInventory Passed player has corrupted MutableStats!")
	end
	local any_GetMutableStat_result1_2 = module_upvr:GetMutableStat("MaxEquippedCosmetics")
	if not any_GetMutableStat_result1_2 then
		return warn("CosmeticService:HasMaxInventory Passed player has corrupted MaxEquippedCosmetics Stats!")
	end
	local EquippedCosmetics_4 = SaveSlotController_upvr:GetCurrentSaveSlot().EquippedCosmetics
	if not EquippedCosmetics_4 then
		return warn("CosmeticService:HasMaxInventory Passed player has corrupted CosmeticData.Inventory!")
	end
	local var16 = EquippedCosmetics_4
	if any_GetMutableStat_result1_2 > CountDictionary_upvr(var16) then
		var16 = false
	else
		var16 = true
	end
	return var16
end
function module_upvr.GetCosmeticArbitraryData(arg1, arg2) -- Line 52
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any_GetAllCosmetics_result1 = module_upvr:GetAllCosmetics()
	if not any_GetAllCosmetics_result1 then return end
	local var18 = any_GetAllCosmetics_result1[arg2]
	if not var18 then return end
	return var18.Data
end
local CosmeticMutableStats_upvr = require(ReplicatedStorage.Data.CosmeticRegistry.CosmeticMutableStats)
local CosmeticUpgradeService_upvr = require(ReplicatedStorage.Modules.CosmeticServices.CosmeticUpgradeService)
function module_upvr.GetMutableStat(arg1, arg2) -- Line 59
	--[[ Upvalues[3]:
		[1]: DataService_upvr (readonly)
		[2]: CosmeticMutableStats_upvr (readonly)
		[3]: CosmeticUpgradeService_upvr (readonly)
	]]
	local any_GetData_result1 = DataService_upvr:GetData()
	local var22
	if not any_GetData_result1 then return end
	var22 = CosmeticMutableStats_upvr
	local var23 = var22[arg2]
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var22 = var23.Default
		return var22
	end
	if not var23 or not INLINED() then
		var22 = 0
	end
	return var22 + CosmeticUpgradeService_upvr:GetUpgradeValue(arg2, any_GetData_result1.CosmeticData.MutableStats[arg2])
end
local DEFAULT_PLACEMENT_CONFIG_upvr = require(ReplicatedStorage.Data.CosmeticRegistry).InputConfig.DEFAULT_PLACEMENT_CONFIG
local CosmeticUtilities_upvr = require(ReplicatedStorage.Modules.CosmeticServices.CosmeticUtilities)
function module_upvr.CanEquipAtLocation(arg1, arg2) -- Line 71
	--[[ Upvalues[2]:
		[1]: DEFAULT_PLACEMENT_CONFIG_upvr (readonly)
		[2]: CosmeticUtilities_upvr (readonly)
	]]
	local Character = arg2.Character
	if not Character then
		return false
	end
	return CosmeticUtilities_upvr:IsWithinFarm(arg2, Character:GetPivot() * DEFAULT_PLACEMENT_CONFIG_upvr.CFRAME_OFFSET)
end
local Notification_upvr = require(ReplicatedStorage.Modules.Notification)
function module_upvr.Equip(arg1, arg2) -- Line 78
	--[[ Upvalues[6]:
		[1]: DataService_upvr (readonly)
		[2]: SaveSlotController_upvr (readonly)
		[3]: module_upvr (readonly)
		[4]: Notification_upvr (readonly)
		[5]: CountDictionary_upvr (readonly)
		[6]: CosmeticService_upvr (readonly)
	]]
	if not DataService_upvr:GetData() then return end
	local EquippedCosmetics = SaveSlotController_upvr:GetCurrentSaveSlot().EquippedCosmetics
	if not EquippedCosmetics then
		return warn("CosmeticService:HasMaxInventory Passed player has corrupted CosmeticData.Inventory!")
	end
	if module_upvr:HasMaxEquipped() then
		return Notification_upvr:CreateNotification(`Cannot place anymore you have max placed objects! {CountDictionary_upvr(EquippedCosmetics)}`)
	end
	CosmeticService_upvr:FireServer("Equip", arg2)
	return true
end
function module_upvr.Unequip(arg1, arg2) -- Line 91
	--[[ Upvalues[1]:
		[1]: CosmeticService_upvr (readonly)
	]]
	CosmeticService_upvr:FireServer("Unequip", arg2)
	return true
end
function module_upvr.DestroyCosmetic(arg1, arg2) -- Line 96
	--[[ Upvalues[1]:
		[1]: CosmeticService_upvr (readonly)
	]]
	CosmeticService_upvr:FireServer("DestroyCosmetic", arg2)
	return true
end
function module_upvr.UnequipAll(arg1) -- Line 101
	--[[ Upvalues[1]:
		[1]: CosmeticService_upvr (readonly)
	]]
	CosmeticService_upvr:FireServer("UnequipAll")
	return true
end
function module_upvr.GetAllCosmetics(arg1) -- Line 106
	--[[ Upvalues[1]:
		[1]: DataService_upvr (readonly)
	]]
	local any_GetData_result1_3 = DataService_upvr:GetData()
	if not any_GetData_result1_3 then return end
	local Inventory = any_GetData_result1_3.CosmeticData.Inventory
	if not Inventory then
		return warn("CosmeticService:GetAllCosmetics Passed player has corrupted CosmeticData.Inventory!")
	end
	return Inventory
end
function module_upvr.GetAllEquippedCosmetics(arg1) -- Line 113
	--[[ Upvalues[2]:
		[1]: DataService_upvr (readonly)
		[2]: SaveSlotController_upvr (readonly)
	]]
	if not DataService_upvr:GetData() then return end
	local EquippedCosmetics_2 = SaveSlotController_upvr:GetCurrentSaveSlot().EquippedCosmetics
	if not EquippedCosmetics_2 then
		return warn("CosmeticService:HasMaxInventory Passed player has corrupted CosmeticData.Inventory!")
	end
	return EquippedCosmetics_2
end
function module_upvr.IsCosmeticEquipped(arg1, arg2) -- Line 122
	--[[ Upvalues[2]:
		[1]: DataService_upvr (readonly)
		[2]: SaveSlotController_upvr (readonly)
	]]
	local var35
	if not DataService_upvr:GetData() then return end
	local EquippedCosmetics_3 = SaveSlotController_upvr:GetCurrentSaveSlot().EquippedCosmetics
	if not EquippedCosmetics_3 then
		var35 = warn("CosmeticService:HasMaxInventory Passed player has corrupted CosmeticData.Inventory!")
		return var35
	end
	if EquippedCosmetics_3[arg2] == nil then
		var35 = false
	else
		var35 = true
	end
	return var35
end
return module_upvr