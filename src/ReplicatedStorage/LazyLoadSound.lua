-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:06
-- Luau version 6, Types version 3
-- Time taken: 0.002230 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService_upvr = game:GetService("RunService")
local function lazyLoad_upvr(arg1, arg2) -- Line 14, Named "lazyLoad"
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	if arg1.SoundId ~= "rbxassetid://133426881644587" then
	else
		local SoundId = arg1:GetAttribute("SoundId")
		if not SoundId then
			if RunService_upvr:IsStudio() then
				warn(`LazyLoadSound {arg1:GetFullName()} is missing its SoundId attribute somehow`)
			end
			return
		end
		arg1.SoundId = SoundId
		local TimePosition_upvr = arg1.TimePosition
		arg2:Add(task.spawn(function() -- Line 38
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: TimePosition_upvr (readonly)
				[3]: arg2 (readonly)
			]]
			while arg1.IsPlaying and not arg1.IsLoaded do
				task.wait()
			end
			arg1.TimePosition = TimePosition_upvr
			arg2:Clean()
		end))
	end
end
local Trove_upvr = require(ReplicatedStorage.Modules.Trove)
return require(ReplicatedStorage.Modules.Observers).observeTag("LazyLoadSound", function(arg1) -- Line 52
	--[[ Upvalues[3]:
		[1]: RunService_upvr (readonly)
		[2]: Trove_upvr (readonly)
		[3]: lazyLoad_upvr (readonly)
	]]
	if not arg1:IsA("Sound") then
		return nil
	end
	if RunService_upvr:IsServer() then
		if arg1.SoundId == "rbxassetid://133426881644587" then
			return nil
		end
		arg1:SetAttribute("SoundId", arg1.SoundId)
		arg1.SoundId = "rbxassetid://133426881644587"
	end
	local any_new_result1_upvr = Trove_upvr.new()
	any_new_result1_upvr:Connect(arg1:GetPropertyChangedSignal("Playing"), function() -- Line 70
		--[[ Upvalues[3]:
			[1]: lazyLoad_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: any_new_result1_upvr (readonly)
		]]
		lazyLoad_upvr(arg1, any_new_result1_upvr)
	end)
	any_new_result1_upvr:Connect(arg1.Played, function() -- Line 74
		--[[ Upvalues[3]:
			[1]: lazyLoad_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: any_new_result1_upvr (readonly)
		]]
		lazyLoad_upvr(arg1, any_new_result1_upvr)
	end)
	if arg1.IsPlaying or arg1.Playing then
		lazyLoad_upvr(arg1, any_new_result1_upvr)
	end
	return any_new_result1_upvr:WrapClean()
end)