-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:40
-- Luau version 6, Types version 3
-- Time taken: 0.004387 seconds

local module = {}
if game:GetService("RunService"):IsClient() then
	local function WeldAllToPrimary_upvr(arg1) -- Line 15, Named "WeldAllToPrimary"
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		if not arg1 or not arg1:IsA("Model") then
		else
			local PrimaryPart = arg1.PrimaryPart
			if not PrimaryPart then return end
			for _, v_5 in pairs(arg1:GetDescendants()) do
				v_5.Anchored = false
				v_5.CanCollide = false
				local WeldConstraint = Instance.new("WeldConstraint")
				WeldConstraint.Part0 = PrimaryPart
				WeldConstraint.Part1 = v_5
				WeldConstraint.Parent = PrimaryPart
				local var15
			end
			var15.Anchored = false
		end
	end
	local SeedData_upvr = require(game.ReplicatedStorage.Data.SeedData)
	local Item_Module_upvr = require(game.ReplicatedStorage.Item_Module)
	local function GetRarityColor_upvr(arg1) -- Line 35, Named "GetRarityColor"
		--[[ Upvalues[2]:
			[1]: SeedData_upvr (readonly)
			[2]: Item_Module_upvr (readonly)
		]]
		local var18 = SeedData_upvr[arg1]
		if not var18 then
			return Color3.fromRGB(255, 255, 255)
		end
		local any_Return_Rarity_Data_result1 = Item_Module_upvr.Return_Rarity_Data(var18.SeedRarity)
		if not any_Return_Rarity_Data_result1 then
			return Color3.fromRGB(255, 255, 255)
		end
		return Color3.new(any_Return_Rarity_Data_result1[2])
	end
	local function _(arg1) -- Line 44, Named "SetBoundingBox"
		local any_GetBoundingBox_result1_2, any_GetBoundingBox_result2_2 = arg1:GetBoundingBox()
		local Part_2 = Instance.new("Part")
		Part_2.Name = "PrimaryPart"
		Part_2.Size = any_GetBoundingBox_result2_2
		Part_2.CFrame = any_GetBoundingBox_result1_2
		Part_2.Anchored = true
		Part_2.CanCollide = false
		Part_2.Transparency = 1
		Part_2.Parent = arg1
		arg1.PrimaryPart = Part_2
		arg1:SetAttribute("ActualSize", any_GetBoundingBox_result2_2.Magnitude)
	end
	local function CreateTrail_upvr(arg1) -- Line 60, Named "CreateTrail"
		--[[ Upvalues[1]:
			[1]: GetRarityColor_upvr (readonly)
		]]
		local clone_3 = script.Trails.Trail:Clone()
		local clone_5 = script.Trails.Trail2:Clone()
		local clone_4 = script.Trails.A1:Clone()
		local clone_2 = script.Trails.A0:Clone()
		local clone = script.Trails.Stars:Clone()
		local tbl = {}
		local _, pairs_result2, pairs_result3_2 = pairs(arg1:GetDescendants())
		local var40
		for _, v in var40, pairs_result2, pairs_result3_2 do
			if v:IsA("BasePart") then
				local Color = v.BrickColor.Color
				tbl[Color] = (tbl[Color] or 0) + 1
			end
		end
		var40 = Color3.fromRGB(255, 255, 255)
		if next(tbl) then
			local pairs_result1_2, pairs_result2_2, pairs_result3 = pairs(tbl)
			for i_2, v_2 in pairs_result1_2, pairs_result2_2, pairs_result3 do
				if 0 < v_2 then
					var40 = i_2
				end
			end
		else
			pairs_result1_2 = var40
			local var45 = pairs_result1_2
			if not var45 then
				var45 = Color3.new(GetRarityColor_upvr(arg1.Name))
			end
			var40 = var45
		end
		clone_3.Color = ColorSequence.new(var40)
		clone_5.Color = ColorSequence.new(var40)
		clone.Color = ColorSequence.new(var40)
		clone_2.Parent = arg1.PrimaryPart
		clone_4.Parent = arg1.PrimaryPart
		clone_3.Attachment0 = clone_2
		clone_3.Attachment1 = clone_4
		clone_5.Attachment0 = clone_2
		clone_5.Attachment1 = clone_4
		clone_3.Parent = arg1.PrimaryPart
		clone_5.Parent = arg1.PrimaryPart
		clone.Parent = arg1.PrimaryPart
	end
	local function FlyingFruit_upvr(arg1) -- Line 115, Named "FlyingFruit"
		local PrimaryPart_2 = game.Players.LocalPlayer.Character.PrimaryPart
		local function _() -- Line 119, Named "getRandomXZOffset"
			return Vector3.new(math.random(-25, 25), 0, math.random(-25, 25))
		end
		arg1.Parent = game.Workspace
		local TweenInfo_new_result1 = TweenInfo.new(0.65, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0)
		local any_CreateCFrameTween_result1 = require(game.ReplicatedStorage.Code.Bezier_2).new(arg1.PrimaryPart.Position, PrimaryPart_2.Position + Vector3.new(0, math.random(8, 12), 0) + Vector3.new(math.random(-25, 25), 0, math.random(-25, 25)), PrimaryPart_2.Position + Vector3.new(0, math.random(4, 6), 0) + Vector3.new(math.random(-25, 25), 0, math.random(-25, 25)), PrimaryPart_2):CreateCFrameTween(arg1.PrimaryPart, {"CFrame"}, TweenInfo_new_result1)
		if 5 < arg1:GetAttribute("ActualSize") then
			local NumberValue_upvr = Instance.new("NumberValue")
			NumberValue_upvr.Value = arg1:GetScale()
			NumberValue_upvr.Parent = arg1
			NumberValue_upvr.Changed:Connect(function() -- Line 144
				--[[ Upvalues[2]:
					[1]: arg1 (readonly)
					[2]: NumberValue_upvr (readonly)
				]]
				arg1:ScaleTo(NumberValue_upvr.Value)
			end)
			game:GetService("TweenService"):Create(NumberValue_upvr, TweenInfo_new_result1, {
				Value = 0.2;
			}):Play()
		end
		NumberValue_upvr = any_CreateCFrameTween_result1:Play
		NumberValue_upvr()
		function NumberValue_upvr(arg1_2) -- Line 155, Named "EmitAll"
			for _, v_3 in next, arg1_2 do
				if v_3.ClassName == "ParticleEmitter" then
					v_3:Emit(v_3:GetAttribute("EmitCount"))
				end
			end
		end
		any_CreateCFrameTween_result1.Completed:Connect(function() -- Line 163
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			for _, v_4 in arg1:GetDescendants() do
				if v_4:IsA("BasePart") then
					v_4.Transparency = 1
					v_4.Anchored = true
				elseif v_4:IsA("ParticleEmitter") then
					v_4.Enabled = false
				end
			end
			game:GetService("Debris"):AddItem(arg1, 1.2)
		end)
	end
	function module.StartCollection(arg1, arg2) -- Line 178
		--[[ Upvalues[3]:
			[1]: WeldAllToPrimary_upvr (readonly)
			[2]: CreateTrail_upvr (readonly)
			[3]: FlyingFruit_upvr (readonly)
		]]
		game:GetService("Debris"):AddItem(arg2, 5)
		local any_GetBoundingBox_result1, any_GetBoundingBox_result2 = arg2:GetBoundingBox()
		local Part = Instance.new("Part")
		Part.Name = "PrimaryPart"
		Part.Size = any_GetBoundingBox_result2
		Part.CFrame = any_GetBoundingBox_result1
		Part.Anchored = true
		Part.CanCollide = false
		Part.Transparency = 1
		Part.Parent = arg2
		arg2.PrimaryPart = Part
		arg2:SetAttribute("ActualSize", any_GetBoundingBox_result2.Magnitude)
		WeldAllToPrimary_upvr(arg2)
		arg2.Parent = game.Workspace
		CreateTrail_upvr(arg2)
		FlyingFruit_upvr(arg2)
	end
end
return module