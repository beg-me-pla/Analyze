-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:58
-- Luau version 6, Types version 3
-- Time taken: 0.000822 seconds

local Hover_upvr = game.SoundService.Hover
script.Parent.MouseEnter:Connect(function() -- Line 3
	--[[ Upvalues[1]:
		[1]: Hover_upvr (readonly)
	]]
	Hover_upvr.PlaybackSpeed = 1 + math.random(-15, 15) / 100
	Hover_upvr.Playing = true
	Hover_upvr.TimePosition = 0
end)
local Click_upvr = game.SoundService.Click
script.Parent.MouseButton1Click:Connect(function() -- Line 8
	--[[ Upvalues[1]:
		[1]: Click_upvr (readonly)
	]]
	Click_upvr.PlaybackSpeed = 1 + math.random(-15, 15) / 100
	Click_upvr.Playing = true
	Click_upvr.TimePosition = 0
end)