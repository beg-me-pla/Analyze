-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:10
-- Luau version 6, Types version 3
-- Time taken: 0.002334 seconds

local tbl_2_upvr = {"Normal", "Gold", "Rainbow"}
local module = {}
local any_IsServer_result1_upvr = game:GetService("RunService"):IsServer()
function module.Give_Seed(arg1, arg2, arg3, arg4) -- Line 10
	--[[ Upvalues[2]:
		[1]: any_IsServer_result1_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
	]]
	assert(any_IsServer_result1_upvr)
	local InventoryService = require(game:GetService("ServerScriptService").Modules.InventoryService)
	local var5_upvw
	if var5_upvw == nil then
		var5_upvw = "Normal"
	end
	if not table.find(tbl_2_upvr, var5_upvw) then
		warn(`Invalid variation given in Give_Seed, got "{var5_upvw}"\n{debug.traceback()}`)
	else
		if arg3 ~= nil and (type(arg3) ~= "number" or arg3 <= 0 or arg3 ~= arg3) then return end
		if not game:GetService("ServerStorage").Seed_Models:FindFirstChild(arg2) then
			warn(`Seed "{arg2}" does not exists\n{debug.traceback()}`)
			return
		end
		local next_result1, next_result2 = next(InventoryService:Find(arg1, "Seed", function(arg1_2) -- Line 38
			--[[ Upvalues[2]:
				[1]: arg2 (readonly)
				[2]: var5_upvw (read and write)
			]]
			local var7 = false
			if arg1_2.ItemName == arg2 then
				if arg1_2.Variant ~= var5_upvw then
					var7 = false
				else
					var7 = true
				end
			end
			return var7
		end))
		if next_result2 then
			local ItemData = next_result2.ItemData
			ItemData.Quantity += arg3 or 1
		else
			local tbl = {}
			tbl.ItemName = arg2
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl.Quantity = arg3 or 1
			tbl.Variant = var5_upvw
			InventoryService:CreateItem(arg1, "Seed", tbl)
		end
	end
end
return module