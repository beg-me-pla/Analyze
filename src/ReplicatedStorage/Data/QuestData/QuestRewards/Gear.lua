-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:40
-- Luau version 6, Types version 3
-- Time taken: 0.001732 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local module = {
	Type = "Gear";
	Display = function(arg1, arg2) -- Line 15, Named "Display"
		local Amount = arg2.Data.Amount
		local Data = arg2.Data
		if 1 < Amount then
			Data = 's'
		else
			Data = ""
		end
		return `+{Amount} {Data.Type} Gear{Data}`
	end;
}
local ItemImageFinder_upvr = require(ReplicatedStorage_upvr.Modules.ItemImageFinder)
function module.DisplayIcon(arg1, arg2) -- Line 20
	--[[ Upvalues[1]:
		[1]: ItemImageFinder_upvr (readonly)
	]]
	return ItemImageFinder_upvr(arg2.Data.Type, "Gear")
end
function module.Give(arg1, arg2, arg3) -- Line 24
	--[[ Upvalues[1]:
		[1]: ReplicatedStorage_upvr (readonly)
	]]
	local Give_Gear = require(ReplicatedStorage_upvr.Give_Gear)
	for _ = 1, arg3.Data.Amount do
		task.spawn(Give_Gear.Give_Gear, arg2, arg3.Data.Type)
	end
	return true
end
function module.Use(arg1, arg2) -- Line 36
	local module_2 = {
		Type = arg1.Type;
	}
	module_2.Data = arg2
	return module_2
end
return module