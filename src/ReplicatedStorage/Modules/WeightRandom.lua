-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:22
-- Luau version 6, Types version 3
-- Time taken: 0.001178 seconds

return {
	dict = function(arg1, arg2) -- Line 3, Named "dict"
		local var10 = 0
		for _, v in arg1 do
			var10 += v
		end
		local var11 = arg2
		if not var11 then
			var11 = Random.new()
		end
		for i_2, v_2 in arg1 do
			if var11:NextNumber(0, var10) <= 0 + v_2 then
				return i_2
			end
		end
		return nil
	end;
	array = function(arg1, arg2) -- Line 22, Named "array"
		local var20 = 0
		for _, v_3 in arg1 do
			var20 += v_3.Chance
		end
		local var21 = arg2
		if not var21 then
			var21 = Random.new()
		end
		for i_4, v_4 in arg1 do
			if var21:NextNumber(0, var20) <= 0 + v_4.Chance then
				return v_4, i_4
			end
		end
		return nil, nil
	end;
}