-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:36
-- Luau version 6, Types version 3
-- Time taken: 0.001209 seconds

local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local module = {}
local function FindNamespaceFolder_upvr(arg1) -- Line 15, Named "FindNamespaceFolder"
	--[[ Upvalues[1]:
		[1]: LocalPlayer_upvr (readonly)
	]]
	local PlayerGui = LocalPlayer_upvr:WaitForChild("PlayerGui")
	if not PlayerGui then
		warn("PlayerGui did not exist after 4 seconds")
		return
	end
	local ReplicatedAssets = PlayerGui:WaitForChild("ReplicatedAssets")
	if not ReplicatedAssets then
		warn("ReplicatedAssets did not exist after 4 seconds")
		return
	end
	return ReplicatedAssets:FindFirstChild(arg1)
end
local ReplicationChannel_upvr = game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("ReplicationChannel")
function module.GetAssetAsync(arg1, arg2, arg3, arg4) -- Line 24
	--[[ Upvalues[2]:
		[1]: FindNamespaceFolder_upvr (readonly)
		[2]: ReplicationChannel_upvr (readonly)
	]]
	local FindNamespaceFolder_result1 = FindNamespaceFolder_upvr(arg2)
	if not FindNamespaceFolder_result1:FindFirstChild(arg3) then
		ReplicationChannel_upvr:FireServer(arg2, arg3)
	end
	return FindNamespaceFolder_result1:WaitForChild(arg3, arg4)
end
return module