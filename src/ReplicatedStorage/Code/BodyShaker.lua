-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:37
-- Luau version 6, Types version 3
-- Time taken: 0.001882 seconds

local module = {}
local LocalPlayer_upvr = game.Players.LocalPlayer
local tbl_upvr = {}
local var4_upvw = false
local function ShakeBody_upvr(arg1) -- Line 9, Named "ShakeBody"
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: var4_upvw (read and write)
	]]
	local var5 = arg1
	if not var5 then
		var5 = LocalPlayer_upvr.Character
	end
	local var6 = var5
	repeat
		task.wait()
	until var6:IsDescendantOf(workspace)
	if var6:GetAttribute("Shaking") then
	else
		var6:SetAttribute("Shaking", true)
		local Torso = var6:WaitForChild("Torso")
		local Neck = Torso:WaitForChild("Neck")
		local Left_Shoulder = Torso:WaitForChild("Left Shoulder")
		local Right_Shoulder = Torso:WaitForChild("Right Shoulder")
		local Left_Hip = Torso:WaitForChild("Left Hip")
		local Right_Hip = Torso:WaitForChild("Right Hip")
		local C0 = Left_Shoulder.C0
		local C0_4 = Right_Shoulder.C0
		local C0_2 = Left_Hip.C0
		local C0_3 = Right_Hip.C0
		local C0_5 = Neck.C0
		while var6:IsDescendantOf(workspace) and var4_upvw do
			task.wait(0)
			local var18 = 0 + 1
			Left_Shoulder.C0 = C0 * CFrame.Angles(0, math.rad(math.sin(var18) * 1), 0)
			Right_Shoulder.C0 = C0_4 * CFrame.Angles(0, math.rad(math.sin(var18) * -1), 0)
			Right_Hip.C0 = C0_3 * CFrame.Angles(0, math.rad(math.sin(var18) * -1), 0)
			Left_Hip.C0 = C0_2 * CFrame.Angles(0, math.rad(math.sin(var18) * 1), 0)
			Neck.C0 = C0_5 * CFrame.Angles(0, 0, math.rad(math.sin(var18) * 1))
		end
		Left_Shoulder.C0 = C0
		Right_Shoulder.C0 = C0_4
		Left_Hip.C0 = C0_2
		Right_Hip.C0 = C0_3
		Neck.C0 = C0_5
		var6:SetAttribute("Shaking", false)
	end
end
function module.EnableShaking() -- Line 65
	--[[ Upvalues[4]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: ShakeBody_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: var4_upvw (read and write)
	]]
	if LocalPlayer_upvr.Character then
		task.spawn(ShakeBody_upvr)
	end
	table.insert(tbl_upvr, LocalPlayer_upvr.CharacterAdded:Connect(ShakeBody_upvr))
	var4_upvw = true
end
function module.DisableShaking() -- Line 74
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: var4_upvw (read and write)
	]]
	for _, v in tbl_upvr do
		v:Disconnect()
	end
	var4_upvw = false
end
return module