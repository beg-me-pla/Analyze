-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:09
-- Luau version 6, Types version 3
-- Time taken: 0.001214 seconds

local Players_upvr = game:GetService("Players")
return function(arg1) -- Line 4, Named "GetPlayerFromPlant"
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var6
	if arg1:FindFirstAncestor("Important") then
		var6 = arg1:FindFirstAncestor("Important"):FindFirstChild("Data")
	else
		var6 = nil
	end
	if var6 then
		local Owner = var6:FindFirstChild("Owner")
	else
	end
	if nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if nil.Value then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return Players_upvr:FindFirstChild(nil.Value)
		end
	end
	return nil
end