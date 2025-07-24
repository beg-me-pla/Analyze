-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:30
-- Luau version 6, Types version 3
-- Time taken: 0.000752 seconds

local HttpService_upvr = game:GetService("HttpService")
return function(arg1) -- Line 3
	--[[ Upvalues[1]:
		[1]: HttpService_upvr (readonly)
	]]
	arg1:RegisterType("json", {
		Validate = function(arg1_2) -- Line 5, Named "Validate"
			--[[ Upvalues[1]:
				[1]: HttpService_upvr (copied, readonly)
			]]
			return pcall(HttpService_upvr.JSONDecode, HttpService_upvr, arg1_2)
		end;
		Parse = function(arg1_3) -- Line 9, Named "Parse"
			--[[ Upvalues[1]:
				[1]: HttpService_upvr (copied, readonly)
			]]
			return HttpService_upvr:JSONDecode(arg1_3)
		end;
	})
end