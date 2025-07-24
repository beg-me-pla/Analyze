-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:39
-- Luau version 6, Types version 3
-- Time taken: 0.010219 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local RunService_upvr = game:GetService("RunService")
local SoundService_upvr = game:GetService("SoundService")
local DataService_upvr = require(ReplicatedStorage_upvr.Modules.DataService)
local TimeHelper_upvr = require(ReplicatedStorage_upvr.Modules.TimeHelper)
local PetList_upvr = require(ReplicatedStorage_upvr.Data.PetRegistry).PetList
local PetMutationMachineService_RE_upvr = ReplicatedStorage_upvr:WaitForChild("GameEvents").PetMutationMachineService_RE
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local InsertPet_upvr = LocalPlayer_upvr.PlayerGui:WaitForChild("InsertPet")
local ConfirmFrame = InsertPet_upvr:WaitForChild("ConfirmFrame")
local var11_upvw
local any_GetTagged_result1 = game:GetService("CollectionService"):GetTagged("PetMutationMachine")
if #any_GetTagged_result1 <= 0 then
	warn("Cannot find Pet Mutation machine")
	return
end
local _1_upvr = any_GetTagged_result1[1]
local TimerTextLabel_upvr = _1_upvr:FindFirstChild("TimerTextLabel", true)
local MutationMachineSounds = _1_upvr:FindFirstChild("MutationMachineSounds", true)
local MachineInsertSound_upvr = MutationMachineSounds.MachineInsertSound
MachineInsertSound_upvr.Parent = SoundService_upvr
local MachineLoopDoneSound_upvr = MutationMachineSounds.MachineLoopDoneSound
MachineLoopDoneSound_upvr.Parent = SoundService_upvr
local MachineFinishedSound_upvr = MutationMachineSounds.MachineFinishedSound
MachineFinishedSound_upvr.Parent = SoundService_upvr
local PetMutationMachineProximityPrompt_upvr = _1_upvr:FindFirstChild("PetMutationMachineProximityPrompt", true)
local function GetMachineData_upvr() -- Line 74, Named "GetMachineData"
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: DataService_upvr (readonly)
	]]
	if not LocalPlayer_upvr then
		return warn("No LocalPlayer!")
	end
	local any_GetData_result1 = DataService_upvr:GetData()
	if not any_GetData_result1 then
		return warn(`No PlayerData for {LocalPlayer_upvr}!`)
	end
	local PetMutationMachine = any_GetData_result1.PetMutationMachine
	if not PetMutationMachine then
		return warn(`No PetMuationMachine data for {LocalPlayer_upvr.Name}!`)
	end
	return PetMutationMachine
end
local SelectiveAssetReplication_upvr = require(ReplicatedStorage_upvr.Modules.SelectiveAssetReplication)
local PetModelLocation_upvr = _1_upvr:FindFirstChild("PetModelLocation", true)
local function UpdateModel_upvr() -- Line 87, Named "UpdateModel"
	--[[ Upvalues[5]:
		[1]: GetMachineData_upvr (readonly)
		[2]: var11_upvw (read and write)
		[3]: SelectiveAssetReplication_upvr (readonly)
		[4]: PetList_upvr (readonly)
		[5]: PetModelLocation_upvr (readonly)
	]]
	local GetMachineData_upvr_result1_5 = GetMachineData_upvr()
	if not GetMachineData_upvr_result1_5 then
	else
		if not GetMachineData_upvr_result1_5.SubmittedPet then
			if var11_upvw then
				var11_upvw:Destroy()
				var11_upvw = nil
			end
			return
		end
		local clone_2 = SelectiveAssetReplication_upvr:GetAssetAsync("PetAssets", GetMachineData_upvr_result1_5.SubmittedPet.PetType):Clone()
		clone_2:SetPrimaryPartCFrame(CFrame.new(clone_2:GetPrimaryPartCFrame().Position) * PetList_upvr[GetMachineData_upvr_result1_5.SubmittedPet.PetType].WeldOffset)
		var11_upvw = clone_2
		if not var11_upvw then return end
		if not var11_upvw.PrimaryPart or not PetModelLocation_upvr.PrimaryPart then
			warn("Both models need a PrimaryPart set.")
			return
		end
		local any_GetExtentsSize_result1 = var11_upvw:GetExtentsSize()
		local any_GetExtentsSize_result1_2 = PetModelLocation_upvr:GetExtentsSize()
		for _, v in var11_upvw:GetDescendants() do
			if v:IsA("BasePart") then
				v.Anchored = true
			end
		end
		var11_upvw:ScaleTo(math.min(any_GetExtentsSize_result1_2.X / any_GetExtentsSize_result1.X, any_GetExtentsSize_result1_2.Y / any_GetExtentsSize_result1.Y, any_GetExtentsSize_result1_2.Z / any_GetExtentsSize_result1.Z))
		var11_upvw:PivotTo(CFrame.new(PetModelLocation_upvr:GetPivot().Position) * var11_upvw:GetPivot().Rotation)
		var11_upvw.Parent = PetModelLocation_upvr
	end
end
local function _() -- Line 145, Named "UpdateTimer"
	--[[ Upvalues[3]:
		[1]: GetMachineData_upvr (readonly)
		[2]: TimeHelper_upvr (readonly)
		[3]: TimerTextLabel_upvr (readonly)
	]]
	local GetMachineData_upvr_result1_6 = GetMachineData_upvr()
	if not GetMachineData_upvr_result1_6 then
	else
		if 0 < GetMachineData_upvr_result1_6.TimeLeft then
			TimerTextLabel_upvr.Text = `{TimeHelper_upvr:GenerateColonFormatFromTime(GetMachineData_upvr_result1_6.TimeLeft)}`
			return
		end
		if GetMachineData_upvr_result1_6.PetReady then
			TimerTextLabel_upvr.Text = "READY"
			return
		end
		TimerTextLabel_upvr.Text = ""
	end
end
local var34_upvw
local NumberUtil_upvr = require(ReplicatedStorage_upvr.Modules.NumberUtil)
local PetMutationMachineData_upvr = require(ReplicatedStorage_upvr.Data.PetMutationMachineData)
local function UpdatePrompt_upvr() -- Line 168, Named "UpdatePrompt"
	--[[ Upvalues[5]:
		[1]: GetMachineData_upvr (readonly)
		[2]: PetMutationMachineProximityPrompt_upvr (readonly)
		[3]: var34_upvw (read and write)
		[4]: NumberUtil_upvr (readonly)
		[5]: PetMutationMachineData_upvr (readonly)
	]]
	local GetMachineData_upvr_result1_8 = GetMachineData_upvr()
	if not GetMachineData_upvr_result1_8 then
	else
		PetMutationMachineProximityPrompt_upvr.Enabled = true
		if GetMachineData_upvr_result1_8.IsRunning or 0 < GetMachineData_upvr_result1_8.TimeLeft then
			if var34_upvw and var34_upvw.ArePaidRandomItemsRestricted then
				PetMutationMachineProximityPrompt_upvr.Enabled = false
			else
				PetMutationMachineProximityPrompt_upvr.ActionText = "Skip"
			end
		end
		if GetMachineData_upvr_result1_8.PetReady then
			PetMutationMachineProximityPrompt_upvr.ActionText = "Claim Pet"
			return
		end
		if GetMachineData_upvr_result1_8.SubmittedPet and not GetMachineData_upvr_result1_8.IsRunning then
			PetMutationMachineProximityPrompt_upvr.ActionText = `Start Mutation: {NumberUtil_upvr.FormatCompactPrice(PetMutationMachineData_upvr.MUTATE_PRICE)} \xA2`
			return
		end
		if not GetMachineData_upvr_result1_8.SubmittedPet then
			PetMutationMachineProximityPrompt_upvr.ActionText = "Submit Pet"
		end
	end
end
local PolicyService_upvr = require(ReplicatedStorage_upvr.Modules.PolicyService)
task.spawn(function() -- Line 196
	--[[ Upvalues[4]:
		[1]: var34_upvw (read and write)
		[2]: PolicyService_upvr (readonly)
		[3]: LocalPlayer_upvr (readonly)
		[4]: UpdatePrompt_upvr (readonly)
	]]
	var34_upvw = PolicyService_upvr:GetPolicyInfoForPlayerAsync(LocalPlayer_upvr)
	UpdatePrompt_upvr()
end)
local function _(arg1, arg2, arg3, arg4) -- Line 202, Named "quadraticBezier"
	return (1 - arg1) ^ 2 * arg2 + (1 - arg1) * 2 * arg1 * arg3 + arg1 ^ 2 * arg4
end
local TweenService_upvr = game:GetService("TweenService")
local var80_upvw = false
local InventoryServiceEnums_upvr = require(ReplicatedStorage_upvr.Data.EnumRegistry.InventoryServiceEnums)
local ItemTypeEnums_upvr = require(ReplicatedStorage_upvr.Data.EnumRegistry.ItemTypeEnums)
local PetName_upvr = ConfirmFrame:WaitForChild("PetName")
PetMutationMachineProximityPrompt_upvr.Triggered:Connect(function() -- Line 353
	--[[ Upvalues[8]:
		[1]: var80_upvw (read and write)
		[2]: GetMachineData_upvr (readonly)
		[3]: PetMutationMachineService_RE_upvr (readonly)
		[4]: LocalPlayer_upvr (readonly)
		[5]: InventoryServiceEnums_upvr (readonly)
		[6]: ItemTypeEnums_upvr (readonly)
		[7]: PetName_upvr (readonly)
		[8]: InsertPet_upvr (readonly)
	]]
	if var80_upvw then
	else
		var80_upvw = true
		task.delay(0.5, function() -- Line 359
			--[[ Upvalues[1]:
				[1]: var80_upvw (copied, read and write)
			]]
			var80_upvw = false
		end)
		local GetMachineData_upvr_result1_7 = GetMachineData_upvr()
		if not GetMachineData_upvr_result1_7 then return end
		if GetMachineData_upvr_result1_7.IsRunning or 0 < GetMachineData_upvr_result1_7.TimeLeft then
			PetMutationMachineService_RE_upvr:FireServer("AuthoriseSkip")
		end
		if GetMachineData_upvr_result1_7.PetReady then
			PetMutationMachineService_RE_upvr:FireServer("ClaimMutatedPet")
			return
		end
		if GetMachineData_upvr_result1_7.SubmittedPet and not GetMachineData_upvr_result1_7.IsRunning then
			PetMutationMachineService_RE_upvr:FireServer("StartMachine")
			return
		end
		if not GetMachineData_upvr_result1_7.SubmittedPet then
			local Character_2 = LocalPlayer_upvr.Character
			if not Character_2 then return end
			local class_Tool = Character_2:FindFirstChildWhichIsA("Tool")
			if not class_Tool then return end
			if class_Tool:GetAttribute(InventoryServiceEnums_upvr.ITEM_TYPE) ~= ItemTypeEnums_upvr.Pet then return end
			local attribute = class_Tool:GetAttribute(InventoryServiceEnums_upvr.ItemName)
			if not attribute then
				attribute = class_Tool.Name
			end
			PetName_upvr.Text = tostring(attribute)
			InsertPet_upvr.Enabled = true
		end
	end
end)
local MachineStartSound_upvr = MutationMachineSounds.MachineStartSound
local MachineLoopSound_upvr = MutationMachineSounds.MachineLoopSound
DataService_upvr:GetPathSignal("PetMutationMachine/IsRunning"):Connect(function() -- Line 393
	--[[ Upvalues[9]:
		[1]: GetMachineData_upvr (readonly)
		[2]: UpdatePrompt_upvr (readonly)
		[3]: TimeHelper_upvr (readonly)
		[4]: TimerTextLabel_upvr (readonly)
		[5]: MachineStartSound_upvr (readonly)
		[6]: MachineLoopSound_upvr (readonly)
		[7]: SoundService_upvr (readonly)
		[8]: MachineLoopDoneSound_upvr (readonly)
		[9]: MachineFinishedSound_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 25 start (CF ANALYSIS FAILED)
	local GetMachineData_upvr_result1_10 = GetMachineData_upvr()
	if not GetMachineData_upvr_result1_10 then
	else
		UpdatePrompt_upvr()
		local GetMachineData_upvr_result1_4 = GetMachineData_upvr()
		if not GetMachineData_upvr_result1_4 then
			-- KONSTANTWARNING: GOTO [45] #37
		end
		-- KONSTANTERROR: [0] 1. Error Block 25 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [10] 11. Error Block 26 start (CF ANALYSIS FAILED)
		if 0 < GetMachineData_upvr_result1_4.TimeLeft then
			TimerTextLabel_upvr.Text = `{TimeHelper_upvr:GenerateColonFormatFromTime(GetMachineData_upvr_result1_4.TimeLeft)}`
		elseif GetMachineData_upvr_result1_4.PetReady then
			TimerTextLabel_upvr.Text = "READY"
		else
			TimerTextLabel_upvr.Text = ""
		end
		if GetMachineData_upvr_result1_10.IsRunning then
			MachineStartSound_upvr:Play()
			MachineLoopSound_upvr:Play()
			return
		end
		SoundService_upvr:PlayLocalSound(MachineLoopDoneSound_upvr)
		MachineLoopSound_upvr:Stop()
		task.spawn(function() -- Line 405
			--[[ Upvalues[2]:
				[1]: SoundService_upvr (copied, readonly)
				[2]: MachineFinishedSound_upvr (copied, readonly)
			]]
			task.wait(1)
			SoundService_upvr:PlayLocalSound(MachineFinishedSound_upvr)
		end)
		-- KONSTANTERROR: [10] 11. Error Block 26 end (CF ANALYSIS FAILED)
	end
end)
DataService_upvr:GetPathSignal("PetMutationMachine/SubmittedPet"):Connect(function() -- Line 413
	--[[ Upvalues[7]:
		[1]: GetMachineData_upvr (readonly)
		[2]: UpdatePrompt_upvr (readonly)
		[3]: TimeHelper_upvr (readonly)
		[4]: TimerTextLabel_upvr (readonly)
		[5]: UpdateModel_upvr (readonly)
		[6]: SoundService_upvr (readonly)
		[7]: MachineInsertSound_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 25 start (CF ANALYSIS FAILED)
	local GetMachineData_upvr_result1_9 = GetMachineData_upvr()
	if not GetMachineData_upvr_result1_9 then
	else
		UpdatePrompt_upvr()
		local GetMachineData_upvr_result1_2 = GetMachineData_upvr()
		if not GetMachineData_upvr_result1_2 then
			-- KONSTANTWARNING: GOTO [45] #37
		end
		-- KONSTANTERROR: [0] 1. Error Block 25 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [10] 11. Error Block 26 start (CF ANALYSIS FAILED)
		if 0 < GetMachineData_upvr_result1_2.TimeLeft then
			TimerTextLabel_upvr.Text = `{TimeHelper_upvr:GenerateColonFormatFromTime(GetMachineData_upvr_result1_2.TimeLeft)}`
		elseif GetMachineData_upvr_result1_2.PetReady then
			TimerTextLabel_upvr.Text = "READY"
		else
			TimerTextLabel_upvr.Text = ""
		end
		UpdateModel_upvr()
		if GetMachineData_upvr_result1_9.SubmittedPet then
			SoundService_upvr:PlayLocalSound(MachineInsertSound_upvr)
		end
		-- KONSTANTERROR: [10] 11. Error Block 26 end (CF ANALYSIS FAILED)
	end
end)
local var99_upvw = 0
RunService_upvr.RenderStepped:Connect(function(arg1) -- Line 428
	--[[ Upvalues[2]:
		[1]: var11_upvw (read and write)
		[2]: var99_upvw (read and write)
	]]
	if not var11_upvw then
	elseif var11_upvw.PrimaryPart then
		var99_upvw += arg1
		var11_upvw:PivotTo((var11_upvw.PrimaryPart.CFrame + Vector3.new(0, math.sin(var99_upvw) * 0.01, 0)) * CFrame.Angles(0, 0.008726646259971648, 0))
	end
end)
task.spawn(function() -- Line 448
	--[[ Upvalues[4]:
		[1]: UpdatePrompt_upvr (readonly)
		[2]: GetMachineData_upvr (readonly)
		[3]: TimeHelper_upvr (readonly)
		[4]: TimerTextLabel_upvr (readonly)
	]]
	while true do
		task.wait(0.5)
		UpdatePrompt_upvr()
		local GetMachineData_upvr_result1 = GetMachineData_upvr()
		if not GetMachineData_upvr_result1 then
		elseif 0 < GetMachineData_upvr_result1.TimeLeft then
			TimerTextLabel_upvr.Text = `{TimeHelper_upvr:GenerateColonFormatFromTime(GetMachineData_upvr_result1.TimeLeft)}`
		elseif GetMachineData_upvr_result1.PetReady then
			TimerTextLabel_upvr.Text = "READY"
		else
			TimerTextLabel_upvr.Text = ""
		end
	end
end)
ConfirmFrame:WaitForChild("Confirm").Activated:Connect(function() -- Line 457
	--[[ Upvalues[2]:
		[1]: PetMutationMachineService_RE_upvr (readonly)
		[2]: InsertPet_upvr (readonly)
	]]
	PetMutationMachineService_RE_upvr:FireServer("SubmitHeldPet")
	InsertPet_upvr.Enabled = false
end)
ConfirmFrame:WaitForChild("Cancel").Activated:Connect(function() -- Line 462
	--[[ Upvalues[1]:
		[1]: InsertPet_upvr (readonly)
	]]
	InsertPet_upvr.Enabled = false
end)
ConfirmFrame:WaitForChild("ExitButton").Activated:Connect(function() -- Line 466
	--[[ Upvalues[1]:
		[1]: InsertPet_upvr (readonly)
	]]
	InsertPet_upvr.Enabled = false
end)
task.spawn(function() -- Line 471
	--[[ Upvalues[5]:
		[1]: GetMachineData_upvr (readonly)
		[2]: UpdatePrompt_upvr (readonly)
		[3]: TimeHelper_upvr (readonly)
		[4]: TimerTextLabel_upvr (readonly)
		[5]: UpdateModel_upvr (readonly)
	]]
	if not GetMachineData_upvr() then
	else
		UpdatePrompt_upvr()
		local GetMachineData_upvr_result1_3 = GetMachineData_upvr()
		if not GetMachineData_upvr_result1_3 then
		elseif 0 < GetMachineData_upvr_result1_3.TimeLeft then
			TimerTextLabel_upvr.Text = `{TimeHelper_upvr:GenerateColonFormatFromTime(GetMachineData_upvr_result1_3.TimeLeft)}`
		elseif GetMachineData_upvr_result1_3.PetReady then
			TimerTextLabel_upvr.Text = "READY"
		else
			TimerTextLabel_upvr.Text = ""
		end
		UpdateModel_upvr()
	end
end)
ReplicatedStorage_upvr.GameEvents.PetMutationClaimAnimation.OnClientEvent:Connect(function(arg1, arg2) -- Line 206, Named "ClaimAnimation"
	--[[ Upvalues[7]:
		[1]: _1_upvr (readonly)
		[2]: var11_upvw (read and write)
		[3]: LocalPlayer_upvr (readonly)
		[4]: RunService_upvr (readonly)
		[5]: TweenService_upvr (readonly)
		[6]: ReplicatedStorage_upvr (readonly)
		[7]: PetList_upvr (readonly)
	]]
	local PetMutationMachinePoof = _1_upvr:FindFirstChild("PetMutationMachinePoof")
	if not var11_upvw then
	else
		local Character = LocalPlayer_upvr.Character
		if not Character then return end
		PetMutationMachinePoof.SFX:Play()
		local const_number = 0
		while const_number < 1.5 do
			local math_lerp_result1 = math.lerp(0.01, 0.1, TweenService_upvr:GetValue((const_number + RunService_upvr.Heartbeat:Wait()) / 1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out))
			_1_upvr:PivotTo(_1_upvr:GetPivot() + Vector3.new(math.random(-100, 100) / 100 * math_lerp_result1, math.random(-100, 100) / 100 * math_lerp_result1, math.random(-100, 100) / 100 * math_lerp_result1))
		end
		PetMutationMachinePoof.PixelSmoke:Emit(26)
		var11_upvw.Parent = ReplicatedStorage_upvr
		local var53 = PetList_upvr[arg1.Name]
		local var54
		if var53 and var53.WeldOffset then
			var54 = var53.WeldOffset
		end
		local var55 = CFrame.lookAt(var11_upvw:GetPivot().Position, Character:GetPivot().Position) * var54
		local clone_3 = arg1:Clone()
		clone_3:ScaleTo(var11_upvw:GetScale() * arg2)
		clone_3:PivotTo(var55)
		for _, v_2 in clone_3:GetDescendants() do
			if v_2:IsA("BasePart") then
				v_2.Anchored = true
			end
		end
		local any_GetBoundingBox_result1, any_GetBoundingBox_result2 = clone_3:GetBoundingBox()
		local Part = Instance.new("Part")
		Part.CFrame = any_GetBoundingBox_result1
		Part.Name = "TrailPart"
		Part.Anchored = true
		Part.CanCollide = false
		Part.CanQuery = false
		Part.CanTouch = false
		Part.Size = any_GetBoundingBox_result2
		Part.Transparency = 1
		local Attachment = Instance.new("Attachment")
		Attachment.Name = "Attachment"
		Attachment.CFrame = CFrame.new(0, any_GetBoundingBox_result2.Y * 0.5, 0)
		Attachment.Parent = Part
		local Attachment_2 = Instance.new("Attachment")
		Attachment_2.Name = "Attachment"
		Attachment_2.CFrame = CFrame.new(0, -any_GetBoundingBox_result2.Y * 0.5, 0)
		Attachment_2.Parent = Part
		local Trail = Instance.new("Trail")
		Trail.Name = "Trail"
		Trail.FaceCamera = true
		Trail.Lifetime = 0.5
		Trail.Attachment0 = Attachment
		Trail.Attachment0 = Attachment_2
		Trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.05, 1), NumberSequenceKeypoint.new(0.055, 0.4875), NumberSequenceKeypoint.new(1, 1)})
		Trail.WidthScale = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 0)})
		Trail.Parent = Part
		Part.Parent = clone_3
		clone_3.Parent = workspace.CurrentCamera
		task.wait(0.8)
		local const_number_2 = 0
		while const_number_2 < 0.8 do
			local var69 = const_number_2 + RunService_upvr.Heartbeat:Wait()
			local Position = var55.Position
			local Position_2 = Character:GetPivot().Position
			local any_GetValue_result1 = TweenService_upvr:GetValue(var69 / 0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
			clone_3:ScaleTo(math.lerp(clone_3:GetScale(), 0.05, math.clamp((var69 - 0.4) / 0.4, 0, 1)))
			clone_3:PivotTo(CFrame.new((1 - any_GetValue_result1) ^ 2 * Position + (1 - any_GetValue_result1) * 2 * any_GetValue_result1 * (Position + (Position_2 - Position) * 0.5 + Vector3.new(0, 14, 0)) + any_GetValue_result1 ^ 2 * Position_2) * var55.Rotation)
		end
		clone_3:Destroy()
		local clone_upvr = workspace.Terrain.PopEffect:Clone()
		clone_upvr.CFrame = Character:GetPivot()
		local clone = PetMutationMachinePoof.Retrieve:Clone()
		clone.Parent = clone_upvr
		clone:Play()
		clone_upvr.Parent = workspace.Terrain
		for _, v_3 in clone_upvr:GetChildren() do
			if v_3:IsA("ParticleEmitter") then
				v_3:Emit(1)
			end
		end
		task.delay(1.5, function() -- Line 346
			--[[ Upvalues[1]:
				[1]: clone_upvr (readonly)
			]]
			clone_upvr:Destroy()
		end)
	end
end)
return {}