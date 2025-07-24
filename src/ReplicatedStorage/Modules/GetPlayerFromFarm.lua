-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:26
-- Luau version 6, Types version 3
-- Time taken: 0.000415 seconds

local Players_upvr = game:GetService("Players")
return function(arg1) -- Line 3, Named "GetPlayerFromFarm"
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	if not arg1 then return end
	local Owner = arg1:FindFirstChild("Owner", true)
	if not Owner then return end
	return Players_upvr:FindFirstChild(Owner.Value)
end