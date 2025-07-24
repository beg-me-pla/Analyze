-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:55
-- Luau version 6, Types version 3
-- Time taken: 0.000801 seconds

local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local TweenService_upvr = game:GetService("TweenService")
local Parent_upvr = script.Parent
local function Update_upvr() -- Line 8, Named "Update"
	--[[ Upvalues[3]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: Parent_upvr (readonly)
	]]
	local tbl = {}
	local var5
	if LocalPlayer_upvr:GetAttribute("LowMemoryWarning") then
		var5 = 0
	else
		var5 = 1
	end
	tbl.GroupTransparency = var5
	TweenService_upvr:Create(Parent_upvr, TweenInfo.new(1.5), tbl):Play()
end
LocalPlayer_upvr:GetAttributeChangedSignal("LowMemoryWarning"):Connect(function() -- Line 16
	--[[ Upvalues[1]:
		[1]: Update_upvr (readonly)
	]]
	Update_upvr()
end)
Update_upvr()