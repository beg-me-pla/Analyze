-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:28
-- Luau version 6, Types version 3
-- Time taken: 0.000420 seconds

local Farm_upvr = workspace:WaitForChild("Farm")
return function(arg1) -- Line 3, Named "GetFarmAncestor"
	--[[ Upvalues[1]:
		[1]: Farm_upvr (readonly)
	]]
	for _, v in Farm_upvr:GetChildren() do
		if v:IsAncestorOf(arg1) then
			return v
		end
	end
	return nil
end