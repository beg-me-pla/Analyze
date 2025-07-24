-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:23
-- Luau version 6, Types version 3
-- Time taken: 0.000574 seconds

return function(arg1, arg2, arg3, ...) -- Line 7
	local var4 = arg2 or 1
	({})[1] = false
	local var5
	for _ = 1, arg1 do
		var5 = {pcall(arg3, ...)}
		if var5[1] then break end
		task.wait(var4 + var4 * 0.1 * math.random())
	end
	return table.unpack(var5)
end