-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:21
-- Luau version 6, Types version 3
-- Time taken: 0.000567 seconds

local TweenService_upvr = game:GetService("TweenService")
return function(arg1, arg2, arg3, arg4) -- Line 4
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	if arg4 == false then
	else
	end
	local any_Create_result1_upvr = TweenService_upvr:Create(arg1, arg2, arg3)
	any_Create_result1_upvr.Completed:Once(function() -- Line 8
		--[[ Upvalues[1]:
			[1]: any_Create_result1_upvr (readonly)
		]]
		any_Create_result1_upvr:Destroy()
	end)
	if true then
		any_Create_result1_upvr:Play()
	end
	return any_Create_result1_upvr
end