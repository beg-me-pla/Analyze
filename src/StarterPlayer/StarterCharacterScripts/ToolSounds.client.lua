-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:33:14
-- Luau version 6, Types version 3
-- Time taken: 0.002995 seconds

local Character = game.Players.LocalPlayer.Character
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local SoundService_upvr = game:GetService("SoundService")
local tbl_upvr = {}
local any_LoadAnimation_result1_upvr = Character:FindFirstChild("Animator", true):LoadAnimation(script.TwoHandedFruitAnimation)
local os_clock_result1_upvw = os.clock()
local function PlaySound_upvr(arg1, arg2) -- Line 14, Named "PlaySound"
	--[[ Upvalues[1]:
		[1]: os_clock_result1_upvw (read and write)
	]]
	os_clock_result1_upvw = os.clock()
	local clone = arg1:Clone()
	local Part_upvr = Instance.new("Part")
	Part_upvr.Parent = workspace
	Part_upvr.CanCollide = false
	Part_upvr.CanQuery = false
	Part_upvr.Anchored = true
	Part_upvr.Position = arg2.Position
	Part_upvr.Transparency = 1
	clone.Parent = Part_upvr
	clone:Play()
	clone.Ended:Once(function() -- Line 33
		--[[ Upvalues[1]:
			[1]: Part_upvr (readonly)
		]]
		Part_upvr:Destroy()
	end)
	game.Debris:AddItem(Part_upvr, clone.TimeLength)
end
Character.ChildAdded:Connect(function(arg1) -- Line 40
	--[[ Upvalues[3]:
		[1]: any_LoadAnimation_result1_upvr (readonly)
		[2]: PlaySound_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	if not arg1:IsA("Tool") then
	else
		local Handle_upvr = arg1:WaitForChild("Handle", 10)
		if not Handle_upvr then return end
		tbl_upvr[arg1] = {arg1.Equipped:Connect(function() -- Line 50
			--[[ Upvalues[4]:
				[1]: Handle_upvr (readonly)
				[2]: arg1 (readonly)
				[3]: any_LoadAnimation_result1_upvr (copied, readonly)
				[4]: PlaySound_upvr (copied, readonly)
			]]
			local Equip = Handle_upvr:FindFirstChild("Equip")
			if not Equip then
				Equip = script.Equip
			end
			if arg1:HasTag("TwoHandedFruit") then
				any_LoadAnimation_result1_upvr:Play()
			end
			PlaySound_upvr(Equip, Handle_upvr)
		end), arg1.Unequipped:Connect(function() -- Line 60
			--[[ Upvalues[4]:
				[1]: Handle_upvr (readonly)
				[2]: arg1 (readonly)
				[3]: any_LoadAnimation_result1_upvr (copied, readonly)
				[4]: PlaySound_upvr (copied, readonly)
			]]
			local Unequip = Handle_upvr:FindFirstChild("Unequip")
			if not Unequip then
				Unequip = script.Unequip
			end
			if arg1:HasTag("TwoHandedFruit") then
				any_LoadAnimation_result1_upvr:Stop()
			end
			PlaySound_upvr(Unequip, Handle_upvr)
		end)}
	end
end)
Character.ChildRemoved:Connect(function(arg1) -- Line 77
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: any_LoadAnimation_result1_upvr (readonly)
	]]
	if not arg1:IsA("Tool") then
	elseif tbl_upvr[arg1] then
		for _, v in tbl_upvr[arg1] do
			v:Disconnect()
		end
		if arg1:HasTag("TwoHandedFruit") then
			any_LoadAnimation_result1_upvr:Stop()
		end
	end
end)
ReplicatedStorage.GameEvents.PlaySound.OnClientEvent:Connect(function(arg1) -- Line 91
	--[[ Upvalues[1]:
		[1]: SoundService_upvr (readonly)
	]]
	local SOME = SoundService_upvr:FindFirstChild(arg1, true)
	if not SOME then
	else
		SoundService_upvr:PlayLocalSound(SOME)
	end
end)
local var22_upvw = -1
local var23_upvw = 0
local function PickUpSound(arg1, arg2) -- Line 102
	--[[ Upvalues[3]:
		[1]: SoundService_upvr (readonly)
		[2]: var22_upvw (read and write)
		[3]: var23_upvw (read and write)
	]]
	local SOME_2 = SoundService_upvr:FindFirstChild(arg1, true)
	if not SOME_2 then
	else
		local clone_2 = SOME_2:Clone()
		var22_upvw += 1
		var22_upvw %= 16
		local tick_result1_upvr = tick()
		var23_upvw = tick_result1_upvr
		task.delay(1, function() -- Line 113
			--[[ Upvalues[3]:
				[1]: var23_upvw (copied, read and write)
				[2]: tick_result1_upvr (readonly)
				[3]: var22_upvw (copied, read and write)
			]]
			if var23_upvw == tick_result1_upvr then
				var22_upvw = 0
			end
		end)
		local PitchShiftSoundEffect = Instance.new("PitchShiftSoundEffect")
		PitchShiftSoundEffect.Octave = math.clamp(var22_upvw * 0.05, 0, 0.8) + 0.7
		PitchShiftSoundEffect.Parent = clone_2
		if arg2 then
			clone_2.Parent = arg2
		else
			clone_2.Parent = workspace
		end
		clone_2:Play()
		game.Debris:AddItem(clone_2, 5)
	end
end
ReplicatedStorage.GameEvents.PickupEvent.Event:Connect(PickUpSound)
ReplicatedStorage.GameEvents.PickupSound.OnClientEvent:Connect(PickUpSound)