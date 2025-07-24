-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:56
-- Luau version 6, Types version 3
-- Time taken: 0.000820 seconds

local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local CurrentBoost_upvr = script.Parent.Frame.CurrentBoost
LocalPlayer_upvr:GetAttributeChangedSignal("FriendBoost"):Connect(function() -- Line 5, Named "Update"
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: CurrentBoost_upvr (readonly)
	]]
	local var3 = LocalPlayer_upvr:GetAttribute("FriendBoost") or 0
	local var4
	if 0 >= var3 then
		var4 = false
	else
		var4 = true
	end
	CurrentBoost_upvr.Visible = var4
	var4 = `Friend Boost: +{math.floor(var3 * 100)}%`
	CurrentBoost_upvr.Text = var4
end)
local FriendBoost = LocalPlayer_upvr:GetAttribute("FriendBoost")
local var6 = FriendBoost or 0
if 0 >= var6 then
	FriendBoost = false
else
	FriendBoost = true
end
CurrentBoost_upvr.Visible = FriendBoost
CurrentBoost_upvr.Text = `Friend Boost: +{math.floor(var6 * 100)}%`