-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:38
-- Luau version 6, Types version 3
-- Time taken: 0.001078 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local module_upvr = {}
local PlatformProvider_upvr = require(ReplicatedStorage_upvr.Modules.PlatformProvider)
local SocialService_upvr = game:GetService("SocialService")
function module_upvr.Prompt(arg1, arg2, arg3) -- Line 9
	--[[ Upvalues[2]:
		[1]: PlatformProvider_upvr (readonly)
		[2]: SocialService_upvr (readonly)
	]]
	local string_lower_result1 = string.lower(PlatformProvider_upvr:GetPlatform())
	if string_lower_result1 == "computer" then
		string_lower_result1 = "pc"
	elseif string_lower_result1 == "unknowncomputerormobile" then
		string_lower_result1 = "mobile"
	end
	if not table.find(string.split(arg3, '/'), string_lower_result1) then
	else
		xpcall(function() -- Line 21
			--[[ Upvalues[2]:
				[1]: SocialService_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			SocialService_upvr:PromptRsvpToEventAsync(arg2)
		end, warn)
	end
end
function module_upvr.Start(arg1) -- Line 26
	--[[ Upvalues[2]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	ReplicatedStorage_upvr.GameEvents.PromptRSVP.OnClientEvent:Connect(function(arg1_2, arg2, arg3) -- Line 27
		--[[ Upvalues[1]:
			[1]: module_upvr (copied, readonly)
		]]
		if arg3 then
			task.wait(Random.new():NextInteger(30, 120))
		end
		module_upvr:Prompt(arg1_2, arg2)
	end)
end
task.spawn(module_upvr.Start, module_upvr)
return module_upvr