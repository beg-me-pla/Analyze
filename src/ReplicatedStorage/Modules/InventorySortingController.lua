-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:38
-- Luau version 6, Types version 3
-- Time taken: 0.001088 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module = {}
local DataService_upvr = require(ReplicatedStorage.Modules.DataService)
function module.GetEntry(arg1, arg2) -- Line 13
	--[[ Upvalues[1]:
		[1]: DataService_upvr (readonly)
	]]
	return table.find(DataService_upvr:GetData().InventorySortData, arg2)
end
local MoveEntry_2_upvr = ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("InventorySortingServiceEvents"):WaitForChild("MoveEntry")
function module.MoveEntry(arg1, arg2, arg3) -- Line 20
	--[[ Upvalues[1]:
		[1]: MoveEntry_2_upvr (readonly)
	]]
	return MoveEntry_2_upvr:FireServer(arg2, arg3)
end
function module.GetSortedData(arg1) -- Line 24
	--[[ Upvalues[1]:
		[1]: DataService_upvr (readonly)
	]]
	local InventorySortData = DataService_upvr:GetData().InventorySortData
	if not table.find(InventorySortData, "SHOVEL") then
		table.insert(InventorySortData, "SHOVEL")
	end
	return InventorySortData
end
return module