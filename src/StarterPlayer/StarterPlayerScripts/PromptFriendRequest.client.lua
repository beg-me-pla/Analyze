-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:58
-- Luau version 6, Types version 3
-- Time taken: 0.000434 seconds

local StarterGui_upvr = game:GetService("StarterGui")
game.ReplicatedStorage.GameEvents.Prompt_Friend.OnClientEvent:Connect(function(arg1) -- Line 2
	--[[ Upvalues[1]:
		[1]: StarterGui_upvr (readonly)
	]]
	StarterGui_upvr:SetCore("PromptSendFriendRequest", arg1)
end)