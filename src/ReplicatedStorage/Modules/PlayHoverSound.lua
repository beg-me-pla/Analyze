-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:29
-- Luau version 6, Types version 3
-- Time taken: 0.000473 seconds

local Hover_upvr = game:GetService("SoundService").Hover
return function() -- Line 5, Named "PlayHoverSound"
	--[[ Upvalues[1]:
		[1]: Hover_upvr (readonly)
	]]
	Hover_upvr.PlaybackSpeed = 1 + math.random(-15, 15) / 100
	Hover_upvr.Playing = true
	Hover_upvr.Volume = 1
	Hover_upvr.TimePosition = 0
end