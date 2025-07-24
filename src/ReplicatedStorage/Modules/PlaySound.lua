-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:35
-- Luau version 6, Types version 3
-- Time taken: 0.000683 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
return function(arg1) -- Line 3, Named "PlaySound"
	--[[ Upvalues[1]:
		[1]: ReplicatedStorage_upvr (readonly)
	]]
	local Sound_upvr = Instance.new("Sound")
	Sound_upvr.PlaybackSpeed = Random.new():NextNumber(0.95, 1.05)
	Sound_upvr.SoundId = arg1
	Sound_upvr.Parent = ReplicatedStorage_upvr
	Sound_upvr.Ended:Once(function() -- Line 9
		--[[ Upvalues[1]:
			[1]: Sound_upvr (readonly)
		]]
		Sound_upvr:Destroy()
	end)
	Sound_upvr:Play()
	return Sound_upvr
end