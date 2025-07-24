-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:06
-- Luau version 6, Types version 3
-- Time taken: 0.000921 seconds

return {
	Scale = function(arg1, arg2) -- Line 3, Named "Scale"
		-- KONSTANTERROR: [0] 1. Error Block 27 start (CF ANALYSIS FAILED)
		debug.profilebegin("PlantScale1")
		if arg1:FindFirstChild("PlantModel") then
			arg1:FindFirstChild("PlantModel"):ScaleTo(arg2)
			return
		end
		local pairs_result1, pairs_result2, pairs_result3 = pairs(arg1:GetDescendants())
		-- KONSTANTERROR: [0] 1. Error Block 27 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [140] 101. Error Block 19 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [140] 101. Error Block 19 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [25] 20. Error Block 35 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [140.7]
		if nil then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil == nil then
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if not nil then
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil then
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [140.8]
				if nil == nil then
				end
				-- KONSTANTWARNING: GOTO [140] #101
			end
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
				if nil == nil and nil == nil then
				end
			end
		end
		-- KONSTANTERROR: [25] 20. Error Block 35 end (CF ANALYSIS FAILED)
	end;
}