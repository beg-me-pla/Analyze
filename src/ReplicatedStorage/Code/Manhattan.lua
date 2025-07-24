-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:37
-- Luau version 6, Types version 3
-- Time taken: 0.000513 seconds

return function(arg1, arg2) -- Line 1
	local any_PointToObjectSpace_result1 = arg2.CFrame:PointToObjectSpace(arg1.Position)
	arg2.CFrame:PointToObjectSpace(any_PointToObjectSpace_result1)
	if arg2.Size.X / 2 < math.abs(any_PointToObjectSpace_result1.X) then
		return false
	end
	if arg2.Size.Z / 2 < math.abs(any_PointToObjectSpace_result1.Z) then
		return false
	end
	if arg2.Size.Y / 2 < math.abs(any_PointToObjectSpace_result1.Y) then
		return false
	end
	return true
end