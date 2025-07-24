-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:57
-- Luau version 6, Types version 3
-- Time taken: 0.000546 seconds

local CutsceneService_upvr = require(game.ReplicatedStorage.Modules.CutsceneService)
if workspace:GetAttribute("PreloadBeeEvent") then
	CutsceneService_upvr.attemptDelayedPreload(game.ReplicatedStorage.Assets.Cutscenes.BeeCutscene)
end
game:GetService("Workspace"):GetAttributeChangedSignal("PreloadBeeEvent"):Connect(function() -- Line 2, Named "checkPreload"
	--[[ Upvalues[1]:
		[1]: CutsceneService_upvr (readonly)
	]]
	if workspace:GetAttribute("PreloadBeeEvent") then
		CutsceneService_upvr.attemptDelayedPreload(game.ReplicatedStorage.Assets.Cutscenes.BeeCutscene)
	end
end)