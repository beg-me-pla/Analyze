-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:44
-- Luau version 6, Types version 3
-- Time taken: 0.001281 seconds

local function PlaySound_upvr(arg1) -- Line 3, Named "PlaySound"
	local Sound_upvr = Instance.new("Sound")
	Sound_upvr.SoundId = arg1
	Sound_upvr.Parent = workspace
	Sound_upvr:Play()
	Sound_upvr.Ended:Once(function() -- Line 9
		--[[ Upvalues[1]:
			[1]: Sound_upvr (readonly)
		]]
		Sound_upvr:Destroy()
	end)
end
return function(arg1) -- Line 14
	--[[ Upvalues[1]:
		[1]: PlaySound_upvr (readonly)
	]]
	local any_GetPivot_result1 = arg1:GetPivot()
	PlaySound_upvr("rbxassetid://80226669144059")
	local function _(arg1_2, arg2, arg3) -- Line 19, Named "lerp"
		return arg1_2 + (arg2 - arg1_2) * arg3
	end
	local const_number = 0
	local clone = script.Part.Attachment:Clone()
	clone.Parent = workspace.Terrain
	for _, v in clone:GetDescendants() do
		v.Enabled = true
	end
	clone.WorldCFrame = any_GetPivot_result1 * CFrame.Angles(0, 0, math.pi)
	while const_number < 1.2 do
		local any_GetValue_result1 = game:GetService("TweenService"):GetValue((const_number + game:GetService("RunService").Heartbeat:Wait()) / 1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		arg1:PivotTo(any_GetPivot_result1 * CFrame.Angles(0, math.rad(any_GetValue_result1 * 1080), 0) * CFrame.Angles(0, 0, math.rad(math.sin(1080 * any_GetValue_result1) * 35 * (1 - any_GetValue_result1))))
	end
	for _, v_2 in clone:GetDescendants() do
		v_2.Enabled = false
	end
	game.Debris:AddItem(clone, 5)
end