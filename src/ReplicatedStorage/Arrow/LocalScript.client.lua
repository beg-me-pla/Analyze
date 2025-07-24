-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:53
-- Luau version 6, Types version 3
-- Time taken: 0.000427 seconds

local var2_upvw = true
local Arrow_Module_upvr = require(game.ReplicatedStorage.Arrow_Module)
script.Parent.Touched:Connect(function(arg1) -- Line 3
	--[[ Upvalues[2]:
		[1]: var2_upvw (read and write)
		[2]: Arrow_Module_upvr (readonly)
	]]
	if arg1.Parent.Name == script.Parent.Target_Player.Value and var2_upvw == true then
		var2_upvw = false
		Arrow_Module_upvr.Remove_Arrow(script.Parent)
	end
end)