-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:44
-- Luau version 6, Types version 3
-- Time taken: 0.012983 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local tbl_2_upvr = {
	["Black Bunny"] = "rbxassetid://137209605666415";
	Bunny = "rbxassetid://104391359688443";
	Caterpillar = "rbxassetid://74906642952986";
	Deer = "rbxassetid://113898066898530";
	Cow = "rbxassetid://80626295210133";
	["Giant Ant"] = "rbxassetid://110042917722868";
	Cat = "rbxassetid://74848025639589";
	Dog = "rbxassetid://88539564087126";
	["Golden Lab"] = "rbxassetid://125173635572785";
	Monkey = "rbxassetid://83148221430148";
	Pig = "rbxassetid://110554034996387";
	["Praying Mantis"] = "rbxassetid://80710971415313";
	["Polar Bear"] = "rbxassetid://97880140636687";
	Snail = "rbxassetid://100791898582300";
	["Silver Monkey"] = "rbxassetid://106847532475922";
	["Purple Dragonfly"] = "rbxassetid://96794025089185";
	Turtle = "rbxassetid://93929754369579";
	["Orange Tabby"] = "rbxassetid://96707297910956";
	Poof = "rbxassetid://80584356758887";
}
local function PlaySound_upvr(arg1) -- Line 35, Named "PlaySound"
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	local Sound_upvr = Instance.new("Sound")
	local var4 = tbl_2_upvr[arg1]
	if not var4 then
	else
		Sound_upvr.SoundId = var4
		Sound_upvr.Parent = workspace
		Sound_upvr:Play()
		Sound_upvr.Ended:Once(function() -- Line 48
			--[[ Upvalues[1]:
				[1]: Sound_upvr (readonly)
			]]
			Sound_upvr:Destroy()
		end)
	end
end
local PetList_upvr = require(game.ReplicatedStorage.Data.PetRegistry).PetList
local SelectiveAssetReplication_upvr = require(ReplicatedStorage.Modules.SelectiveAssetReplication)
local SkinService_upvr = require(ReplicatedStorage.Modules.SkinService)
return function(arg1, arg2, arg3) -- Line 55
	--[[ Upvalues[4]:
		[1]: PetList_upvr (readonly)
		[2]: SelectiveAssetReplication_upvr (readonly)
		[3]: SkinService_upvr (readonly)
		[4]: PlaySound_upvr (readonly)
	]]
	local clone_3_upvr = script.EggExplode:Clone()
	clone_3_upvr:PivotTo(arg1:GetPivot())
	local Core = clone_3_upvr.Core
	Core.Parent = workspace.Visuals
	game.Debris:AddItem(Core, 60)
	clone_3_upvr.Parent = game.ReplicatedStorage
	Core.RareSFX:Play()
	task.wait(0.4)
	local const_number_4 = 0
	while const_number_4 < 0.8 do
		arg1:PivotTo(arg1:GetPivot() * CFrame.Angles(0, 0, math.rad((1 - (const_number_4 + game:GetService("RunService").Heartbeat:Wait()) / 0.8) * math.sin(tick() * 90) * 7)))
	end
	task.wait(0.5)
	local const_number = 0
	while const_number < 0.8 do
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg1:PivotTo(arg1:GetPivot() * CFrame.Angles(0, 0, math.rad((1 - (const_number + game:GetService("RunService").Heartbeat:Wait()) / 0.8) * math.sin(tick() * 90) * 9)))
	end
	task.wait(0.5)
	local const_number_5 = 0
	while const_number_5 < 0.8 do
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg1:PivotTo(arg1:GetPivot() * CFrame.Angles(0, 0, math.rad((1 - (const_number_5 + game:GetService("RunService").Heartbeat:Wait()) / 0.8) * math.sin(tick() * 90) * 13)))
	end
	arg1:Destroy()
	clone_3_upvr.Parent = workspace.Visuals
	for i, v_upvw in clone_3_upvr:GetDescendants() do
		if v_upvw ~= Core and v_upvw.Name ~= "RootPart" and v_upvw:IsA("BasePart") then
			v_upvw.Anchored = false
		end
	end
	if arg2 and arg2 ~= "" and not arg2:find("Egg/") then
		i = PetList_upvr
		local var134_upvr = i[arg2]
		i = SelectiveAssetReplication_upvr:GetAssetAsync("PetAssets", arg2):Clone()
		local var135_upvw = i
		if var134_upvr then
			i = var134_upvr.Variant
			if i then
				v_upvw = SkinService_upvr:SetSkin
				v_upvw(var135_upvw, i)
			end
		end
		i = var135_upvw.PrimaryPart
		if i then
			i = var135_upvw.PrimaryPart
			v_upvw = true
			i.Anchored = v_upvw
		end
		v_upvw = script
		i = v_upvw.Highlight:Clone()
		i.Parent = var135_upvw
		i.Adornee = var135_upvw
		v_upvw = workspace.Visuals
		var135_upvw.Parent = v_upvw
		v_upvw = 0
		local any_GetPivot_result1_upvr_2 = arg1:GetPivot()
		local any_GetExtentsSize_result1_upvr = arg1:GetExtentsSize()
		task.spawn(function() -- Line 164
			--[[ Upvalues[6]:
				[1]: v_upvw (read and write)
				[2]: var135_upvw (read and write)
				[3]: arg3 (readonly)
				[4]: var134_upvr (readonly)
				[5]: any_GetPivot_result1_upvr_2 (readonly)
				[6]: any_GetExtentsSize_result1_upvr (readonly)
			]]
			while true do
				local var139
				if v_upvw >= 1 then break end
				var139 = game:GetService("RunService")
				v_upvw += var139.Heartbeat:Wait()
				var139 = v_upvw / 1
				local function _(arg1_3, arg2_3, arg3_3) -- Line 169, Named "lerp"
					return arg1_3 + (arg2_3 - arg1_3) * arg3_3
				end
				var139 = var135_upvw:ScaleTo
				var139(1 + (arg3 - 1) * game.TweenService:GetValue(var139, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut))
				local function INLINED_2() -- Internal function, doesn't exist in bytecode
					var139 = var134_upvr.WeldOffset
					return var139
				end
				if not var134_upvr or not INLINED_2() then
					var139 = CFrame.identity
				end
				var135_upvw:PivotTo(any_GetPivot_result1_upvr_2 * CFrame.new(0, -any_GetExtentsSize_result1_upvr.Y / 2, 0) * CFrame.new(0, var135_upvw:GetExtentsSize().Y / 2, 0) * var139)
			end
		end)
		if var134_upvr then
			local Idle = var134_upvr.Animations.Idle
			if Idle then
				var135_upvw.AnimationController:LoadAnimation(Idle):Play()
			end
		end
		for _, v_2 in var135_upvw:GetDescendants() do
			if v_2:IsA("BasePart") then
				v_2.CanCollide = false
				v_2.CanQuery = false
			end
		end
		game.TweenService:Create(i, TweenInfo.new(0.5), {
			FillTransparency = 1;
		}):Play()
		task.delay(0.5, function() -- Line 202
			--[[ Upvalues[2]:
				[1]: PlaySound_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			PlaySound_upvr(arg2)
		end)
	end
	var134_upvr = clone_3_upvr:GetChildren()
	local children_4, NONE_6, NONE_15 = clone_3_upvr:GetChildren()
	for _, v_3 in children_4, NONE_6, NONE_15 do
		if not v_3:IsA("BasePart") then
			local any_GetBoundingBox_result1_2, any_GetBoundingBox_result2_2 = v_3:GetBoundingBox()
			local Part_2 = Instance.new("Part")
			Part_2.Transparency = 1
			Part_2.CanCollide = false
			Part_2.CanQuery = false
			Part_2.CanTouch = false
			Part_2.CFrame = any_GetBoundingBox_result1_2
			Part_2.Size = any_GetBoundingBox_result2_2
			local WeldConstraint_2 = Instance.new("WeldConstraint")
			WeldConstraint_2.Part0 = Part_2
			WeldConstraint_2.Part1 = v_3.PrimaryPart
			WeldConstraint_2.Parent = Part_2
			Part_2.Parent = v_3
			local Attachment_2 = Instance.new("Attachment")
			local Attachment_3 = Instance.new("Attachment")
			Attachment_2.Parent = Part_2
			Attachment_3.Parent = Part_2
			Attachment_2.Position = Vector3.new(0, any_GetBoundingBox_result2_2.Y / 2, 0)
			Attachment_3.Position = Vector3.new(0, -any_GetBoundingBox_result2_2.Y / 2, 0)
			local clone = script.Trail:Clone()
			clone.Attachment0 = Attachment_2
			clone.Attachment1 = Attachment_3
			clone.Color = ColorSequence.new(arg1:GetAttribute("EggColor"))
			clone.Parent = Attachment_2
			clone.Enabled = true
		end
	end
	children_4 = clone_3_upvr:GetDescendants()
	local descendants_7, NONE_26, NONE_20 = clone_3_upvr:GetDescendants()
	for _, v_4 in descendants_7, NONE_26, NONE_20 do
		if v_4 ~= Core and v_4.Name ~= "RootPart" and v_4:IsA("BasePart") then
			local EggColor = arg1:GetAttribute("EggColor")
			if not EggColor then
				EggColor = v_4.Color
			end
			v_4.Color = EggColor
			EggColor = arg1:GetAttribute("EggMaterial")
			local var160 = EggColor
			if not var160 then
				var160 = v_4.Material
			end
			v_4.Material = var160
			var160 = arg1:GetAttribute("EggMaterialVariant")
			local var161 = var160
			if not var161 then
				var161 = v_4.MaterialVariant
			end
			v_4.MaterialVariant = var161
			var161 = arg1:GetAttribute("EggTransparency")
			local var162 = var161
			if not var162 then
				var162 = v_4.Transparency
			end
			v_4.Transparency = var162
			v_4:ApplyImpulse(CFrame.new(Core.Position, v_4.Position).LookVector * 16 * v_4.AssemblyMass)
		end
	end
	descendants_7 = task.delay
	NONE_26 = 3
	descendants_7(NONE_26, function() -- Line 279
		--[[ Upvalues[1]:
			[1]: clone_3_upvr (readonly)
		]]
		for _, v_5 in clone_3_upvr:GetChildren() do
			for _, v_6 in v_5:GetDescendants() do
				if v_6:IsA("BasePart") then
					game.TweenService:Create(v_6, TweenInfo.new(1), {
						Transparency = 1;
					}):Play()
				end
			end
		end
		game.Debris:AddItem(clone_3_upvr, 1)
	end)
	descendants_7 = Core.Attachment:GetDescendants()
	local descendants_6, NONE_13, NONE_29 = Core.Attachment:GetDescendants()
	for _, v_7 in descendants_6, NONE_13, NONE_29 do
		if v_7:IsA("ParticleEmitter") then
			if v_7.Name == "ColorMe" then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				v_7.Color = ColorSequence.new(arg1:GetAttribute("EggColor"))
			end
			v_7:Emit(v_7:GetAttribute("EmitCount"))
		end
	end
	descendants_6 = Core.Rare:GetDescendants()
	local descendants_5, NONE_12, NONE_11 = Core.Rare:GetDescendants()
	for _, v_8 in descendants_5, NONE_12, NONE_11 do
		if v_8:IsA("ParticleEmitter") then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			v_8.Color = ColorSequence.new(arg1:GetAttribute("EggColor"))
			v_8:Emit(v_8:GetAttribute("EmitCount"))
		end
	end
	descendants_5 = task.wait
	NONE_12 = 3
	descendants_5(NONE_12)
	NONE_12 = game.ReplicatedStorage.Assets
	descendants_5 = NONE_12.EggPoof:Clone()
	local var181 = descendants_5
	var181.CFrame = any_GetPivot_result1_upvr_2
	NONE_12 = workspace.Visuals
	var181.Parent = NONE_12
	NONE_12 = PlaySound_upvr
	NONE_12("Poof")
	NONE_12 = var181:GetChildren()
	local children_6, NONE_23, NONE_10 = var181:GetChildren()
	for _, v_9 in children_6, NONE_23, NONE_10 do
		v_9:Emit(v_9:GetAttribute("EmitCount"))
	end
	children_6 = game.Debris:AddItem
	children_6(var181, 6)
	children_6 = task.delay
	children_6(0.2, function() -- Line 324
		--[[ Upvalues[1]:
			[1]: var135_upvw (read and write)
		]]
		if var135_upvw then
			var135_upvw:Destroy()
		end
	end)
end