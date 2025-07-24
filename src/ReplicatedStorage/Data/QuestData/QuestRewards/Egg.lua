-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:40
-- Luau version 6, Types version 3
-- Time taken: 0.000828 seconds

local module_2 = {
	Type = "Egg";
	Display = function(arg1, arg2) -- Line 15, Named "Display"
		return `+{arg2.Data.Amount} {arg2.Data.Type}`
	end;
}
local ItemImageFinder_upvr = require(game:GetService("ReplicatedStorage").Modules.ItemImageFinder)
function module_2.DisplayIcon(arg1, arg2) -- Line 20
	--[[ Upvalues[1]:
		[1]: ItemImageFinder_upvr (readonly)
	]]
	return ItemImageFinder_upvr(arg2.Data.Type, "Egg")
end
function module_2.Give(arg1, arg2, arg3) -- Line 24
	return require(game:GetService("ServerScriptService").Modules.PetsServices.PetEggToolService):GiveEgg(arg2, arg3.Data.Type, arg3.Data.Amount)
end
function module_2.Use(arg1, arg2) -- Line 32
	local module = {
		Type = arg1.Type;
	}
	module.Data = arg2
	return module
end
return module_2