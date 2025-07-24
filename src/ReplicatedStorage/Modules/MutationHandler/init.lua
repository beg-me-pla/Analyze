-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:18
-- Luau version 6, Types version 3
-- Time taken: 0.089073 seconds

local CollectionService = game:GetService("CollectionService")
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local RunService_upvr = game:GetService("RunService")
local Players_upvr = game:GetService("Players")
local GetPlayerFromPlant_upvr = require(ReplicatedStorage_upvr.Modules.GetPlayerFromPlant)
local FruitsEnums_upvr = require(ReplicatedStorage_upvr.Data.EnumRegistry.FruitsEnums)
local PlantsEnums_upvr = require(ReplicatedStorage_upvr.Data.EnumRegistry.PlantsEnums)
local module_5_upvr = {}
local tbl_27_upvr = {}
local tbl_56_upvr = {}
local tbl_28_upvr = {}
local tbl_33_upvr = {}
local function _() -- Line 51, Named "IsJexInStudio"
	--[[ Upvalues[2]:
		[1]: RunService_upvr (readonly)
		[2]: Players_upvr (readonly)
	]]
	if not RunService_upvr:IsStudio() then
		return false
	end
	for _, v in Players_upvr:GetPlayers() do
		if v.Name == "JexSavron" then
			return true
		end
	end
	return false
end
local function AddBoundingFX_upvr(arg1, arg2, arg3, arg4) -- Line 61, Named "AddBoundingFX"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	arg1:_RemoveFX(arg2, arg3)
	local Name_2 = arg1.Name
	local var137
	if not Name_2 then
		var137 = arg1
		warn("No Name on Mutation", var137)
	else
		local Color_3 = arg1.Color
		if not Color_3 then
			var137 = "No Color on Mutation"
			warn(var137, arg1)
			return
		end
		local tbl_54 = {}
		var137 = arg2:GetDescendants()
		local descendants_52, NONE, NONE_3 = arg2:GetDescendants()
		for _, v_162 in descendants_52, NONE, NONE_3 do
			if v_162:IsA("BasePart") or v_162:IsA("UnionOperation") or v_162:IsA("MeshPart") and v_162.Transparency < 1 then
				if not v_162:HasTag("Effect") then
					table.insert(tbl_54, v_162)
				end
			end
		end
		descendants_52 = #tbl_54
		if descendants_52 == 0 then return end
		descendants_52 = Vector3.new(math.huge, math.huge, math.huge)
		local const_vector = Vector3.new((-math.huge), (-math.huge), (-math.huge))
		for _, v_163 in tbl_54 do
			local CFrame_2 = v_163.CFrame
			local Size_2 = v_163.Size
			for _, v_164 in ipairs({CFrame_2 * Vector3.new(-Size_2.X / 2, -Size_2.Y / 2, -Size_2.Z / 2), CFrame_2 * Vector3.new(Size_2.X / 2, -Size_2.Y / 2, -Size_2.Z / 2), CFrame_2 * Vector3.new(-Size_2.X / 2, Size_2.Y / 2, -Size_2.Z / 2), CFrame_2 * Vector3.new(Size_2.X / 2, Size_2.Y / 2, -Size_2.Z / 2), CFrame_2 * Vector3.new(-Size_2.X / 2, -Size_2.Y / 2, Size_2.Z / 2), CFrame_2 * Vector3.new(Size_2.X / 2, -Size_2.Y / 2, Size_2.Z / 2), CFrame_2 * Vector3.new(-Size_2.X / 2, Size_2.Y / 2, Size_2.Z / 2), CFrame_2 * Vector3.new(Size_2.X / 2, Size_2.Y / 2, Size_2.Z / 2)}) do
				descendants_52 = Vector3.new(math.min(descendants_52.X, v_164.X), math.min(descendants_52.Y, v_164.Y), math.min(descendants_52.Z, v_164.Z))
				local vector3 = Vector3.new(math.max(const_vector.X, v_164.X), math.max(const_vector.Y, v_164.Y), math.max(const_vector.Z, v_164.Z))
			end
		end
		local Part = Instance.new("Part")
		Part.Name = `{Name_2}Shell`
		Part.Size = vector3 - descendants_52 + Vector3.new(0.10000, 0.10000, 0.10000)
		Part.CFrame = CFrame.new((descendants_52 + vector3) / 2)
		Part.Anchored = false
		Part.CanCollide = false
		Part.CanQuery = false
		Part.Massless = true
		Part.Transparency = arg4 or 0.5
		Part.CastShadow = false
		Part.Color = Color_3
		Part.Material = Enum.Material.Ice
		Part:AddTag(`Cleanup_{Name_2}`)
		Part:AddTag("Effect")
		if not arg2.PrimaryPart then
			if not arg2:FindFirstChild("Handle") then
				local class_BasePart = arg2:FindFirstChildOfClass("BasePart")
			end
		end
		if class_BasePart then
			local WeldConstraint = Instance.new("WeldConstraint")
			WeldConstraint.Part0 = Part
			WeldConstraint.Part1 = class_BasePart
			WeldConstraint.Parent = Part
			Part.Parent = class_BasePart
		else
			Part:Destroy()
		end
		for _, v_165 in game.ServerStorage.Mutation_FX.Amber:GetChildren() do
			local clone_13 = v_165:Clone()
			clone_13.Parent = arg3
			clone_13.Enabled = true
			clone_13:AddTag(`Cleanup_{Name_2}`)
		end
		for _, v_166 in arg2:GetDescendants() do
			if v_166:IsA("BasePart") or v_166:IsA("UnionOperation") then
				v_166.Reflectance = 0.3
			end
		end
	end
end
local function RemoveBoundingFX_upvr(arg1, arg2, arg3) -- Line 166, Named "RemoveBoundingFX"
	local Name_4_upvr = arg1.Name
	if not Name_4_upvr then
		warn("No Name on Mutation", arg1)
	else
		local function cleanup(arg1_2) -- Line 174
			--[[ Upvalues[1]:
				[1]: Name_4_upvr (readonly)
			]]
			for _, v_167 in arg1_2:GetDescendants() do
				if v_167:HasTag(`Cleanup_{Name_4_upvr}`) then
					v_167:Destroy()
				end
			end
		end
		if arg3 then
			cleanup(arg3)
		end
		if arg2 then
			cleanup(arg2)
		end
		for _, v_168 in arg2:GetDescendants() do
			if v_168:IsA("BasePart") or v_168:IsA("UnionOperation") then
				v_168.Reflectance = 0
			end
		end
	end
end
function module_5_upvr.CanBeMutated(arg1, arg2) -- Line 189
	if not arg2 then
		warn("MutationHandler.CanBeMutated | No plant given!")
		return false
	end
	local any_HasTag_result1 = arg2:HasTag("Harvestable")
	if not any_HasTag_result1 then
		any_HasTag_result1 = arg2:HasTag("FruitTool")
	end
	return any_HasTag_result1
end
local function GetFXPart_upvr(arg1) -- Line 201, Named "GetFXPart"
	--[[ Upvalues[2]:
		[1]: RunService_upvr (readonly)
		[2]: Players_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 37 start (CF ANALYSIS FAILED)
	if not arg1 then
		warn("MutationHandler.GetFXPart | No plant given!")
		return nil
	end
	if not arg1:IsDescendantOf(game) then
		return nil
	end
	local module_3 = {}
	if #module_3 == 1 then
		return module_3[1]
	end
	if 1 < #module_3 then
		return module_3
	end
	if arg1:IsA("Tool") then
		local Handle_2 = arg1:WaitForChild("Handle", 0.3)
		if Handle_2 then
			return Handle_2
		end
	end
	if arg1.PrimaryPart then
		return arg1.PrimaryPart
	end
	if not RunService_upvr:IsStudio() then
		-- KONSTANTWARNING: GOTO [66] #52
	end
	local players_2, NONE_110, NONE_112 = Players_upvr:GetPlayers()
	-- KONSTANTERROR: [0] 1. Error Block 37 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [63] 50. Error Block 20 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [63] 50. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [57] 46. Error Block 28 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [63.8]
	if nil == "JexSavron" then
		-- KONSTANTWARNING: GOTO [66] #52
	end
	-- KONSTANTERROR: [57] 46. Error Block 28 end (CF ANALYSIS FAILED)
end
local function UpdateFX_upvr(arg1) -- Line 242, Named "UpdateFX"
	--[[ Upvalues[2]:
		[1]: module_5_upvr (readonly)
		[2]: GetFXPart_upvr (readonly)
	]]
	for _, v_2 in module_5_upvr:GetMutations() do
		if not arg1:GetAttribute(v_2.Name) then
			({})[v_2] = v_2._RemoveFX
		end
		if arg1:GetAttribute(v_2.Name) then
			({})[v_2] = v_2._AddFX
		end
	end
	local tbl_16_upvr = {}
	local tbl_31_upvr = {}
	task.spawn(function() -- Line 252
		--[[ Upvalues[4]:
			[1]: GetFXPart_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: tbl_16_upvr (readonly)
			[4]: tbl_31_upvr (readonly)
		]]
		local GetFXPart_upvr_result1 = GetFXPart_upvr(arg1)
		local function ApplyFX(arg1_3, arg2, arg3, arg4) -- Line 256
			if typeof(arg4) == "table" then
				for _, v_3 in ipairs(arg4) do
					arg1_3(arg2, arg3, v_3)
				end
			elseif arg4 then
				arg1_3(arg2, arg3, arg4)
			end
		end
		for i_4, v_4 in tbl_16_upvr do
			ApplyFX(v_4, i_4, arg1, GetFXPart_upvr_result1)
		end
		for i_5, v_5 in tbl_31_upvr do
			ApplyFX(v_5, i_5, arg1, GetFXPart_upvr_result1)
		end
	end)
end
local var205_upvw = 0
local function _() -- Line 277, Named "EnumerationGeneration"
	--[[ Upvalues[1]:
		[1]: var205_upvw (read and write)
	]]
	var205_upvw += 1
	return var205_upvw
end
local tbl_22_upvr = {}
local tbl_5 = {
	Id = 'a';
	Name = "Shocked";
	ValueMulti = 100;
	Color = Color3.fromRGB(255, 255, 100);
}
local function _AddFX(arg1, arg2, arg3) -- Line 289
	--[[ Upvalues[1]:
		[1]: tbl_28_upvr (readonly)
	]]
	arg1:_RemoveFX(arg2, arg3)
	if arg3 then
		for _, v_6 in game.ServerStorage.Mutation_FX.Shocked:GetChildren() do
			local clone_42 = v_6:Clone()
			clone_42.Parent = arg3
			clone_42:AddTag("Cleanup_Shock")
		end
	end
	for _, v_7 in arg2:GetDescendants() do
		if v_7:IsA("BasePart") or v_7:IsA("UnionOperation") or not v_7:HasTag("Effect") then
			local var223 = tbl_28_upvr[v_7]
			if not var223 then
				var223 = v_7.Material
			end
			tbl_28_upvr[v_7] = var223
			v_7.Material = Enum.Material.Neon
		end
	end
end
tbl_5._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 313
	--[[ Upvalues[1]:
		[1]: tbl_28_upvr (readonly)
	]]
	if arg3 then
		for _, v_8 in arg3:GetChildren() do
			if v_8:HasTag("Cleanup_Shock") then
				v_8:Destroy()
			end
		end
	end
	for _, v_9 in arg2:GetDescendants() do
		if v_9:IsA("BasePart") or v_9:IsA("UnionOperation") or tbl_28_upvr[v_9] then
			if not v_9:HasTag("Effect") then
				v_9.Material = tbl_28_upvr[v_9]
			end
			tbl_28_upvr[v_9] = nil
		end
	end
end
tbl_5._RemoveFX = _RemoveFX
tbl_22_upvr.Shocked = tbl_5
local tbl_11 = {
	Id = 'b';
	Name = "Windstruck";
	ValueMulti = 2;
	Color = Color3.fromRGB(162, 185, 209);
}
local function _AddFX(arg1, arg2, arg3) -- Line 339
	arg1:_RemoveFX(arg2, arg3)
	if arg3 then
		for _, v_10 in game.ServerStorage.Mutation_FX.Twisted:GetChildren() do
			local clone_33 = v_10:Clone()
			clone_33.Parent = arg3
			clone_33:AddTag("Cleanup_Windstruck")
		end
	end
end
tbl_11._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 354
	if arg3 then
		for _, v_11 in arg3:GetChildren() do
			if v_11:HasTag("Cleanup_Windstruck") then
				v_11:Destroy()
			end
		end
	end
end
tbl_11._RemoveFX = _RemoveFX
tbl_22_upvr.Windstruck = tbl_11
local tbl_23 = {
	Id = 'c';
	Name = "Dawnbound";
	ValueMulti = 150;
	Color = Color3.fromRGB(255, 213, 0);
}
local function _AddFX(arg1, arg2, arg3) -- Line 371
	--[[ Upvalues[1]:
		[1]: tbl_28_upvr (readonly)
	]]
	arg1:_RemoveFX(arg2, arg3)
	if arg3 then
		for _, v_12 in game.ServerStorage.Mutation_FX.Twisted:GetChildren() do
			local clone_20 = v_12:Clone()
			clone_20.Parent = arg3
			clone_20:AddTag("Cleanup_Dawnbound")
		end
	end
	for _, v_13 in arg2:GetDescendants() do
		if v_13:IsA("BasePart") or v_13:IsA("UnionOperation") or not v_13:HasTag("Effect") then
			local var262 = tbl_28_upvr[v_13]
			if not var262 then
				var262 = v_13.Material
			end
			tbl_28_upvr[v_13] = var262
			v_13.Material = Enum.Material.Neon
			v_13.Reflectance = 0.05
			v_13:AddTag("DawnboundVisual")
		end
	end
end
tbl_23._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 398
	--[[ Upvalues[1]:
		[1]: tbl_28_upvr (readonly)
	]]
	if arg3 then
		for _, v_14 in arg3:GetChildren() do
			if v_14:HasTag("Cleanup_Dawnbound") then
				v_14:Destroy()
			end
		end
	end
	for _, v_15 in arg2:GetDescendants() do
		if v_15:IsA("BasePart") or v_15:IsA("UnionOperation") then
			if v_15:HasTag("DawnboundVisual") then
				v_15.Reflectance = 0
				v_15:RemoveTag("DawnboundVisual")
				if tbl_28_upvr[v_15] then
					v_15.Material = tbl_28_upvr[v_15]
					tbl_28_upvr[v_15] = nil
				end
			end
		end
	end
end
tbl_23._RemoveFX = _RemoveFX
tbl_22_upvr.Dawnbound = tbl_23
local tbl_51 = {
	Id = 'd';
	Name = "Twisted";
	ValueMulti = 5;
	Color = Color3.fromRGB(191, 191, 191);
}
local function _AddFX(arg1, arg2, arg3) -- Line 429
	arg1:_RemoveFX(arg2, arg3)
	if arg3 then
		for _, v_16 in game.ServerStorage.Mutation_FX.Twisted:GetChildren() do
			local clone_26 = v_16:Clone()
			clone_26.Parent = arg3
			clone_26:AddTag("Cleanup_Twisted")
		end
	end
end
tbl_51._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 444
	if arg3 then
		for _, v_17 in arg3:GetChildren() do
			if v_17:HasTag("Twisted") then
				v_17:Destroy()
			end
		end
	end
end
tbl_51._RemoveFX = _RemoveFX
tbl_22_upvr.Twisted = tbl_51
local tbl_30 = {
	Id = 'e';
	Name = "Cloudtouched";
	ValueMulti = 5;
	Color = Color3.fromRGB(225, 255, 255);
}
local function _AddFX(arg1, arg2, arg3) -- Line 461
	arg1:_RemoveFX(arg2, arg3)
	if arg3 then
		for _, v_18 in game.ServerStorage.Mutation_FX.Cloudtouched:GetChildren() do
			local clone_8 = v_18:Clone()
			clone_8.Parent = arg3
			clone_8:AddTag("Cleanup_Cloudtouched")
		end
	end
end
tbl_30._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 476
	if arg3 then
		for _, v_19 in arg3:GetChildren() do
			if v_19:HasTag("Cleanup_Cloudtouched") then
				v_19:Destroy()
			end
		end
	end
end
tbl_30._RemoveFX = _RemoveFX
tbl_22_upvr.Cloudtouched = tbl_30
local tbl_57 = {
	Id = 'f';
	Name = "Voidtouched";
	ValueMulti = 135;
	Color = Color3.fromRGB(225, 0, 255);
}
local function _AddFX(arg1, arg2, arg3) -- Line 493
	arg1:_RemoveFX(arg2, arg3)
	if arg3 then
		for _, v_20 in game.ServerStorage.Mutation_FX.Voidtouched:GetChildren() do
			local clone_25 = v_20:Clone()
			clone_25.Parent = arg3
			clone_25:AddTag("Cleanup_Voidtouched")
		end
	end
end
tbl_57._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 508
	if arg3 then
		for _, v_21 in arg3:GetChildren() do
			if v_21:HasTag("Cleanup_Voidtouched") then
				v_21:Destroy()
			end
		end
	end
end
tbl_57._RemoveFX = _RemoveFX
tbl_22_upvr.Voidtouched = tbl_57
local tbl_17 = {
	Id = 'g';
	Name = "Wet";
	ValueMulti = 2;
	Color = Color3.fromRGB(64, 164, 223);
}
local function _AddFX(arg1, arg2, arg3) -- Line 525
	arg1:_RemoveFX(arg2, arg3)
	if arg3 then
		for _, v_22 in game.ServerStorage.Mutation_FX.Wet:GetChildren() do
			local clone_3 = v_22:Clone()
			clone_3.Parent = arg3
			clone_3.Enabled = true
			clone_3:AddTag("Cleanup_Wet")
		end
	end
end
tbl_17._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 539
	if arg3 then
		for _, v_23 in arg3:GetChildren() do
			if v_23:HasTag("Cleanup_Wet") then
				v_23:Destroy()
			end
		end
	end
end
tbl_17._RemoveFX = _RemoveFX
tbl_22_upvr.Wet = tbl_17
local tbl_6 = {
	Id = 'h';
	Name = "Fried";
	ValueMulti = 8;
	Color = Color3.fromRGB(223, 110, 34);
}
local function _AddFX(arg1, arg2, arg3) -- Line 555
	arg1:_RemoveFX(arg2, arg3)
	if arg3 then
		for _, v_24 in game.ServerStorage.Mutation_FX.Fried:GetChildren() do
			local clone_2 = v_24:Clone()
			clone_2.Parent = arg3
			clone_2.Enabled = true
			clone_2:AddTag("Cleanup_Fried")
		end
	end
end
tbl_6._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 569
	if arg3 then
		for _, v_25 in arg3:GetChildren() do
			if v_25:HasTag("Cleanup_Fried") then
				v_25:Destroy()
			end
		end
	end
end
tbl_6._RemoveFX = _RemoveFX
tbl_22_upvr.Fried = tbl_6
local tbl_43 = {
	Id = 'i';
	Name = "Molten";
	ValueMulti = 25;
	Color = Color3.fromRGB(223, 100, 0);
}
local function _AddFX(arg1, arg2, arg3) -- Line 585
	--[[ Upvalues[2]:
		[1]: tbl_56_upvr (readonly)
		[2]: tbl_28_upvr (readonly)
	]]
	arg1:_RemoveFX(arg2, arg3)
	local tbl_59 = {"Neon orange", "Br. yellowish orange", "Bright orange", "Bright red", "Bright yellow"}
	for _, v_26 in arg2:GetDescendants() do
		if v_26:IsA("BasePart") or v_26:IsA("UnionOperation") or not v_26:HasTag("Effect") then
			local var352 = tbl_56_upvr[v_26]
			if not var352 then
				var352 = v_26.BrickColor.Color
			end
			tbl_56_upvr[v_26] = var352
			v_26.BrickColor = BrickColor.new(tbl_59[Random.new():NextInteger(1, #tbl_59)])
			local var353 = tbl_28_upvr[v_26]
			if not var353 then
				var353 = v_26.Material
			end
			tbl_28_upvr[v_26] = var353
			v_26.Material = Enum.Material.Neon
			v_26:AddTag("MoltenVisual")
		end
	end
end
tbl_43._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 610
	--[[ Upvalues[2]:
		[1]: tbl_56_upvr (readonly)
		[2]: tbl_28_upvr (readonly)
	]]
	for _, v_27 in arg2:GetDescendants() do
		if v_27:IsA("BasePart") or v_27:IsA("UnionOperation") or v_27:HasTag("MoltenVisual") then
			local var361 = 0
			v_27.Reflectance = var361
			if tbl_56_upvr[v_27] then
				var361 = BrickColor.new(tbl_56_upvr[v_27])
			else
				var361 = v_27.BrickColor
			end
			v_27.BrickColor = var361
			tbl_56_upvr[v_27] = nil
			v_27:RemoveTag("MoltenVisual")
			if tbl_28_upvr[v_27] then
				v_27.Material = tbl_28_upvr[v_27]
				tbl_28_upvr[v_27] = nil
			end
		end
	end
end
tbl_43._RemoveFX = _RemoveFX
tbl_22_upvr.Molten = tbl_43
local tbl_58 = {
	Id = 'j';
	Name = "Alienlike";
	ValueMulti = 100;
	Color = Color3.fromRGB(0, 223, 197);
}
local function _AddFX(arg1, arg2, arg3) -- Line 635
	--[[ Upvalues[2]:
		[1]: tbl_56_upvr (readonly)
		[2]: tbl_28_upvr (readonly)
	]]
	arg1:_RemoveFX(arg2, arg3)
	if arg3 then
		for _, v_28 in game.ServerStorage.Mutation_FX.Alienlike:GetChildren() do
			local clone_17 = v_28:Clone()
			clone_17.Parent = arg3
			clone_17.Enabled = true
			clone_17:AddTag("Cleanup_Alienlike")
		end
	end
	for _, v_29 in arg2:GetDescendants() do
		if v_29:IsA("BasePart") or v_29:IsA("UnionOperation") or not v_29:HasTag("Effect") then
			local var378 = tbl_56_upvr[v_29]
			if not var378 then
				var378 = v_29.Color
			end
			tbl_56_upvr[v_29] = var378
			v_29.Color = Color3.fromRGB(0, 255, 217)
			if Random.new():NextInteger(1, 2) == 1 then
				local var379 = tbl_28_upvr[v_29]
				if not var379 then
					var379 = v_29.Material
				end
				tbl_28_upvr[v_29] = var379
				v_29.Material = Enum.Material.ForceField
			end
			v_29:AddTag("AlienlikeVisual")
		end
	end
end
tbl_58._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 665
	--[[ Upvalues[2]:
		[1]: tbl_56_upvr (readonly)
		[2]: tbl_28_upvr (readonly)
	]]
	if arg3 then
		for _, v_30 in arg3:GetChildren() do
			if v_30:HasTag("Cleanup_Alienlike") then
				v_30:Destroy()
			end
		end
	end
	for _, v_31 in arg2:GetDescendants() do
		if v_31:IsA("BasePart") or v_31:IsA("UnionOperation") or v_31:HasTag("AlienlikeVisual") then
			v_31.Reflectance = 0
			local var394 = tbl_56_upvr[v_31]
			if not var394 then
				var394 = v_31.Color
			end
			v_31.Color = var394
			tbl_56_upvr[v_31] = nil
			v_31:RemoveTag("AlienlikeVisual")
			if tbl_28_upvr[v_31] then
				v_31.Material = tbl_28_upvr[v_31]
				tbl_28_upvr[v_31] = nil
			end
		end
	end
end
tbl_58._RemoveFX = _RemoveFX
tbl_22_upvr.Alienlike = tbl_58
local tbl_49 = {
	Id = 'k';
	Name = "Galactic";
	ValueMulti = 120;
	Color = Color3.fromRGB(243, 148, 255);
}
local function _AddFX(arg1, arg2, arg3) -- Line 697
	--[[ Upvalues[2]:
		[1]: tbl_56_upvr (readonly)
		[2]: tbl_28_upvr (readonly)
	]]
	arg1:_RemoveFX(arg2, arg3)
	if arg3 then
		for _, v_32 in game.ServerStorage.Mutation_FX.Galactic:GetChildren() do
			local clone_28 = v_32:Clone()
			clone_28.Parent = arg3
			clone_28.Enabled = true
			clone_28:AddTag("Cleanup_Galactic")
		end
	end
	for _, v_33 in arg2:GetDescendants() do
		if v_33:IsA("BasePart") or v_33:IsA("UnionOperation") or not v_33:HasTag("Effect") then
			local var411 = tbl_56_upvr[v_33]
			if not var411 then
				var411 = v_33.Color
			end
			tbl_56_upvr[v_33] = var411
			v_33.Color = Color3.fromRGB(226, 152, 255)
			if Random.new():NextInteger(1, 2) == 1 then
				local var412 = tbl_28_upvr[v_33]
				if not var412 then
					var412 = v_33.Material
				end
				tbl_28_upvr[v_33] = var412
				v_33.Material = Enum.Material.Neon
			end
			v_33:AddTag("GalacticVisual")
		end
	end
end
tbl_49._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 727
	--[[ Upvalues[2]:
		[1]: tbl_56_upvr (readonly)
		[2]: tbl_28_upvr (readonly)
	]]
	if arg3 then
		for _, v_34 in arg3:GetChildren() do
			if v_34:HasTag("Cleanup_Galactic") then
				v_34:Destroy()
			end
		end
	end
	for _, v_35 in arg2:GetDescendants() do
		if v_35:IsA("BasePart") or v_35:IsA("UnionOperation") or v_35:HasTag("GalacticVisual") then
			v_35.Reflectance = 0
			local var427 = tbl_56_upvr[v_35]
			if not var427 then
				var427 = v_35.Color
			end
			v_35.Color = var427
			tbl_56_upvr[v_35] = nil
			v_35:RemoveTag("GalacticVisual")
			if tbl_28_upvr[v_35] then
				v_35.Material = tbl_28_upvr[v_35]
				tbl_28_upvr[v_35] = nil
			end
		end
	end
end
tbl_49._RemoveFX = _RemoveFX
tbl_22_upvr.Galactic = tbl_49
local tbl_40 = {
	Id = 'l';
	Name = "Aurora";
	ValueMulti = 90;
	Color = Color3.fromRGB(99, 89, 175);
}
local function _AddFX(arg1, arg2, arg3) -- Line 759
	--[[ Upvalues[2]:
		[1]: tbl_56_upvr (readonly)
		[2]: tbl_28_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	arg1:_RemoveFX(arg2, arg3)
	local descendants_3, NONE_33, NONE_97 = arg2:GetDescendants()
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [111] 81. Error Block 19 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [111] 81. Error Block 19 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 8. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [111.8]
	-- KONSTANTERROR: [9] 8. Error Block 2 end (CF ANALYSIS FAILED)
end
tbl_40._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 792
	--[[ Upvalues[2]:
		[1]: tbl_56_upvr (readonly)
		[2]: tbl_28_upvr (readonly)
	]]
	if arg3 then
		for _, v_36 in arg3:GetChildren() do
			if v_36:HasTag("Cleanup_Aurora") then
				v_36:Destroy()
			end
		end
	end
	for _, v_37 in arg2:GetDescendants() do
		if v_37:IsA("BasePart") or v_37:IsA("UnionOperation") or v_37:HasTag("GalacticVisual") then
			v_37.Reflectance = 0
			local var446 = tbl_56_upvr[v_37]
			if not var446 then
				var446 = v_37.Color
			end
			v_37.Color = var446
			tbl_56_upvr[v_37] = nil
			v_37:RemoveTag("AuroraVisual")
			if tbl_28_upvr[v_37] then
				v_37.Material = tbl_28_upvr[v_37]
				tbl_28_upvr[v_37] = nil
			end
		end
	end
end
tbl_40._RemoveFX = _RemoveFX
tbl_22_upvr.Aurora = tbl_40
local tbl_34 = {
	Id = 'm';
	Name = "Chilled";
	ValueMulti = 2;
	Color = Color3.fromRGB(135, 206, 250);
}
local function _AddFX(arg1, arg2, arg3) -- Line 824
	arg1:_RemoveFX(arg2, arg3)
	if arg3 then
		for _, v_38 in game.ServerStorage.Mutation_FX.Chilled:GetChildren() do
			local clone_4 = v_38:Clone()
			clone_4.Parent = arg3
			clone_4.Enabled = true
			clone_4:AddTag("Cleanup_Chilled")
		end
	end
	for _, v_39 in arg2:GetChildren() do
		if v_39:IsA("BasePart") or v_39:IsA("UnionOperation") then
			v_39.Reflectance = 0.1
		end
	end
end
tbl_34._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 842
	if arg3 then
		for _, v_40 in arg3:GetChildren() do
			if v_40:HasTag("Cleanup_Chilled") then
				v_40:Destroy()
			end
		end
	end
	for _, v_41 in arg2:GetChildren() do
		if v_41:IsA("BasePart") or v_41:IsA("UnionOperation") then
			v_41.Reflectance = 0
		end
	end
end
tbl_34._RemoveFX = _RemoveFX
tbl_22_upvr.Chilled = tbl_34
local tbl_63 = {
	Id = 'n';
	Name = "Sundried";
	ValueMulti = 85;
	Color = Color3.fromRGB(207, 93, 0);
}
local function _AddFX(arg1, arg2, arg3) -- Line 862
	--[[ Upvalues[1]:
		[1]: tbl_56_upvr (readonly)
	]]
	arg1:_RemoveFX(arg2, arg3)
	for _, v_42 in arg2:GetChildren() do
		if v_42:IsA("BasePart") or v_42:IsA("UnionOperation") then
			local var477 = tbl_56_upvr[v_42]
			if not var477 then
				var477 = v_42.Color
			end
			tbl_56_upvr[v_42] = var477
			v_42.Color = Color3.fromRGB(v_42.Color.R * 178.5, v_42.Color.G * 127.5, v_42.Color.B * 127.5)
		end
	end
end
tbl_63._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 878
	--[[ Upvalues[1]:
		[1]: tbl_56_upvr (readonly)
	]]
	for _, v_43 in arg2:GetChildren() do
		if v_43:IsA("BasePart") or v_43:IsA("UnionOperation") then
			local var485 = tbl_56_upvr[v_43]
			if not var485 then
				var485 = v_43.Color
			end
			v_43.Color = var485
			tbl_56_upvr[v_43] = nil
		end
	end
end
tbl_63._RemoveFX = _RemoveFX
tbl_22_upvr.Sundried = tbl_63
local tbl_12 = {
	Id = 'o';
	Name = "Wiltproof";
	ValueMulti = 4;
	Color = Color3.fromRGB(0, 222, 155);
}
local function _AddFX(arg1, arg2, arg3) -- Line 895
	--[[ Upvalues[1]:
		[1]: tbl_56_upvr (readonly)
	]]
	arg1:_RemoveFX(arg2, arg3)
	for _, v_44 in arg2:GetChildren() do
		if v_44:IsA("BasePart") or v_44:IsA("UnionOperation") then
			local var494 = tbl_56_upvr[v_44]
			if not var494 then
				var494 = v_44.Color
			end
			tbl_56_upvr[v_44] = var494
			local Color = v_44.Color
			local var496 = Color.R * 0.3 + Color.G * 0.59 + Color.B * 0.11
			v_44.Color = Color3.new(math.clamp(var496 + (Color.R - var496) * 3, 0, 1), math.clamp(var496 + (Color.G - var496) * 4, 0, 1), math.clamp(var496 + (Color.B - var496) * 3, 0, 1))
		end
	end
end
tbl_12._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 915
	--[[ Upvalues[3]:
		[1]: tbl_56_upvr (readonly)
		[2]: tbl_28_upvr (readonly)
		[3]: tbl_33_upvr (readonly)
	]]
	for _, v_45 in arg2:GetChildren() do
		if v_45:IsA("BasePart") or v_45:IsA("UnionOperation") then
			local var504 = tbl_56_upvr[v_45]
			if not var504 then
				var504 = v_45.Color
			end
			v_45.Color = var504
			tbl_56_upvr[v_45] = nil
			if tbl_28_upvr[v_45] then
				v_45.Material = tbl_28_upvr[v_45]
				tbl_28_upvr[v_45] = nil
			end
			if tbl_33_upvr[v_45] then
				v_45.MaterialVariant = tbl_33_upvr[v_45]
				tbl_33_upvr[v_45] = nil
			end
		end
	end
end
tbl_12._RemoveFX = _RemoveFX
tbl_22_upvr.Wiltproof = tbl_12
local tbl_37 = {
	Id = 'p';
	Name = "Drenched";
	ValueMulti = 5;
	Color = Color3.fromRGB(0, 55, 228);
}
local function _AddFX(arg1, arg2, arg3) -- Line 942
	--[[ Upvalues[1]:
		[1]: tbl_56_upvr (readonly)
	]]
	arg1:_RemoveFX(arg2, arg3)
	if arg3 then
		for _, v_46 in game.ServerStorage.Mutation_FX.Drenched:GetChildren() do
			local clone_30 = v_46:Clone()
			clone_30.Parent = arg3
			clone_30.Enabled = true
			clone_30:AddTag("Cleanup_Drenched")
		end
	end
	for _, v_47 in arg2:GetChildren() do
		if v_47:IsA("BasePart") or v_47:IsA("UnionOperation") then
			local var521 = tbl_56_upvr[v_47]
			if not var521 then
				var521 = v_47.Color
			end
			tbl_56_upvr[v_47] = var521
			local any_ToHSV_result1, any_ToHSV_result2, any_ToHSV_result3 = v_47.Color:ToHSV()
			v_47.Color = Color3.fromHSV(any_ToHSV_result1, math.clamp(any_ToHSV_result2 + 0.1, any_ToHSV_result2, 1), math.clamp(any_ToHSV_result3 + 0.05, any_ToHSV_result3, 1))
		end
	end
end
tbl_37._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 978
	--[[ Upvalues[3]:
		[1]: tbl_56_upvr (readonly)
		[2]: tbl_28_upvr (readonly)
		[3]: tbl_33_upvr (readonly)
	]]
	if arg3 then
		for _, v_48 in arg3:GetChildren() do
			if v_48:HasTag("Cleanup_Drenched") then
				v_48:Destroy()
			end
		end
	end
	for _, v_49 in arg2:GetChildren() do
		if v_49:IsA("BasePart") or v_49:IsA("UnionOperation") then
			local var539 = tbl_56_upvr[v_49]
			if not var539 then
				var539 = v_49.Color
			end
			v_49.Color = var539
			tbl_56_upvr[v_49] = nil
			if tbl_28_upvr[v_49] then
				v_49.Material = tbl_28_upvr[v_49]
				tbl_28_upvr[v_49] = nil
			end
			if tbl_33_upvr[v_49] then
				v_49.MaterialVariant = tbl_33_upvr[v_49]
				tbl_33_upvr[v_49] = nil
			end
		end
	end
end
tbl_37._RemoveFX = _RemoveFX
tbl_22_upvr.Drenched = tbl_37
local tbl_14 = {
	Id = 'q';
	Name = "Verdant";
	ValueMulti = 4;
	Color = Color3.fromRGB(34, 139, 34);
}
local function _AddFX(arg1, arg2, arg3) -- Line 1053
	--[[ Upvalues[2]:
		[1]: tbl_56_upvr (readonly)
		[2]: tbl_28_upvr (readonly)
	]]
	arg1:_RemoveFX(arg2, arg3)
	if arg3 then
		for _, v_50 in game.ServerStorage.Mutation_FX.Verdant:GetChildren() do
			local clone_16 = v_50:Clone()
			clone_16.Parent = arg3
			clone_16.Enabled = true
			clone_16:AddTag("Cleanup_Verdant")
		end
	end
	for i_51, v_51 in arg2:GetDescendants() do
		if v_51:IsA("BasePart") or v_51:IsA("UnionOperation") then
			if i_51 % 6 == 0 then
				local clone_10 = game.ServerStorage.Mutation_FX.Verdant.LeafSwirl:Clone()
				clone_10.Parent = v_51
				clone_10.Enabled = true
				clone_10:AddTag("Cleanup_Verdant")
			end
			if not v_51:HasTag("Effect") then
				local Color_4 = v_51.Color
				local var558 = tbl_56_upvr[v_51]
				if not var558 then
					var558 = v_51.Color
				end
				tbl_56_upvr[v_51] = var558
				var558 = tbl_28_upvr[v_51]
				local var559 = var558
				if not var559 then
					var559 = v_51.Material
				end
				tbl_28_upvr[v_51] = var559
				v_51.Color = Color3.fromRGB(Color_4.R * 166 * 0.5, math.clamp(Color_4.G * 255 + 150, 0, 255) * 0.5, Color_4.B * 166 * 0.5)
				v_51:AddTag("VerdantVisual")
			end
		end
	end
end
tbl_14._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 1094
	--[[ Upvalues[2]:
		[1]: tbl_56_upvr (readonly)
		[2]: tbl_28_upvr (readonly)
	]]
	if arg3 then
		for _, v_52 in arg3:GetChildren() do
			if v_52:HasTag("Cleanup_Verdant") then
				v_52:Destroy()
			end
		end
	end
	for _, v_53 in arg2:GetDescendants() do
		if v_53:IsA("BasePart") or v_53:IsA("UnionOperation") or v_53:HasTag("VerdantVisual") then
			v_53:RemoveTag("VerdantVisual")
			local var574 = tbl_56_upvr[v_53]
			if not var574 then
				var574 = v_53.Color
			end
			v_53.Color = var574
			tbl_56_upvr[v_53] = nil
			if tbl_28_upvr[v_53] then
				v_53.Material = tbl_28_upvr[v_53]
				tbl_28_upvr[v_53] = nil
			end
			v_53.Reflectance = 0
		end
	end
end
tbl_14._RemoveFX = _RemoveFX
tbl_22_upvr.Verdant = tbl_14
local tbl_8 = {
	Id = 'r';
	Name = "Paradisal";
	ValueMulti = 100;
	Color = Color3.fromRGB(176, 240, 0);
}
local function _AddFX(arg1, arg2, arg3) -- Line 1126
	--[[ Upvalues[2]:
		[1]: tbl_56_upvr (readonly)
		[2]: tbl_28_upvr (readonly)
	]]
	arg1:_RemoveFX(arg2, arg3)
	if arg3 then
		for _, v_54 in game.ServerStorage.Mutation_FX.Paradisal:GetChildren() do
			local clone_19 = v_54:Clone()
			clone_19.Parent = arg3
			clone_19.Enabled = true
			clone_19:AddTag("Cleanup_Paradisal")
		end
	end
	for i_55, v_55 in arg2:GetDescendants() do
		if v_55:IsA("BasePart") or v_55:IsA("UnionOperation") then
			if i_55 % 6 == 0 then
				local clone_6 = game.ServerStorage.Mutation_FX.Paradisal.Rays:Clone()
				clone_6.Parent = v_55
				clone_6.Enabled = true
				clone_6:AddTag("Cleanup_Paradisal")
			end
			if not v_55:HasTag("Effect") then
				local var592 = tbl_56_upvr[v_55]
				if not var592 then
					var592 = v_55.Color
				end
				tbl_56_upvr[v_55] = var592
				var592 = tbl_28_upvr[v_55]
				local var593 = var592
				if not var593 then
					var593 = v_55.Material
				end
				tbl_28_upvr[v_55] = var593
				v_55.Color = Color3.fromRGB(176, 240, 0)
				v_55:AddTag("ParadisalVisual")
			end
		end
	end
end
tbl_8._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 1162
	--[[ Upvalues[2]:
		[1]: tbl_56_upvr (readonly)
		[2]: tbl_28_upvr (readonly)
	]]
	if arg3 then
		for _, v_56 in arg3:GetChildren() do
			if v_56:HasTag("Cleanup_Paradisal") then
				v_56:Destroy()
			end
		end
	end
	for _, v_57 in arg2:GetDescendants() do
		if v_57:IsA("BasePart") or v_57:IsA("UnionOperation") or v_57:HasTag("ParadisalVisual") then
			v_57:RemoveTag("ParadisalVisual")
			local var608 = tbl_56_upvr[v_57]
			if not var608 then
				var608 = v_57.Color
			end
			v_57.Color = var608
			tbl_56_upvr[v_57] = nil
			if tbl_28_upvr[v_57] then
				v_57.Material = tbl_28_upvr[v_57]
				tbl_28_upvr[v_57] = nil
			end
			v_57.Reflectance = 0
		end
	end
end
tbl_8._RemoveFX = _RemoveFX
tbl_22_upvr.Paradisal = tbl_8
local tbl_61 = {
	Id = 's';
	Name = "Frozen";
	ValueMulti = 10;
	Color = Color3.fromRGB(108, 184, 255);
}
local function _AddFX(arg1, arg2, arg3) -- Line 1194
	--[[ Upvalues[1]:
		[1]: AddBoundingFX_upvr (readonly)
	]]
	AddBoundingFX_upvr(arg1, arg2, arg3, 0.8)
end
tbl_61._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 1196
	--[[ Upvalues[1]:
		[1]: RemoveBoundingFX_upvr (readonly)
	]]
	RemoveBoundingFX_upvr(arg1, arg2, arg3)
end
tbl_61._RemoveFX = _RemoveFX
tbl_22_upvr.Frozen = tbl_61
local tbl_18 = {
	Id = 't';
	Name = "Disco";
	ValueMulti = 125;
	Color = Color3.fromRGB(255, 105, 180);
}
local function _AddFX(arg1, arg2, arg3) -- Line 1205
	--[[ Upvalues[2]:
		[1]: tbl_56_upvr (readonly)
		[2]: tbl_28_upvr (readonly)
	]]
	arg1:_RemoveFX(arg2, arg3)
	local function LoopThroughObject(arg1_4) -- Line 1208
		--[[ Upvalues[3]:
			[1]: tbl_56_upvr (copied, readonly)
			[2]: tbl_28_upvr (copied, readonly)
			[3]: LoopThroughObject (readonly)
		]]
		for _, v_58 in arg1_4:GetChildren() do
			if v_58:IsA("BasePart") or v_58:IsA("UnionOperation") then
				local var618 = tbl_56_upvr[v_58]
				if not var618 then
					var618 = v_58.Color
				end
				tbl_56_upvr[v_58] = var618
				var618 = tbl_28_upvr[v_58]
				local var619 = var618
				if not var619 then
					var619 = v_58.Material
				end
				tbl_28_upvr[v_58] = var619
				v_58.Material = Enum.Material.Neon
				v_58:AddTag("Discofied")
			elseif v_58:IsA("Model") then
				LoopThroughObject(v_58)
			end
		end
	end
	LoopThroughObject(arg2)
end
tbl_18._AddFX = _AddFX
local DiscoSetColor_RE_upvr = game.ReplicatedStorage.GameEvents.DiscoSetColor_RE
local function _RemoveFX(arg1, arg2, arg3) -- Line 1224
	--[[ Upvalues[3]:
		[1]: tbl_56_upvr (readonly)
		[2]: tbl_28_upvr (readonly)
		[3]: DiscoSetColor_RE_upvr (readonly)
	]]
	for _, v_59 in arg2:GetDescendants() do
		if v_59:IsA("BasePart") or v_59:IsA("UnionOperation") or v_59:HasTag("Discofied") then
			v_59.Reflectance = 0
			v_59:RemoveTag("Discofied")
			local var628 = tbl_56_upvr[v_59]
			if not var628 then
				var628 = v_59.Color
			end
			v_59.Color = var628
			tbl_56_upvr[v_59] = nil
			table.insert({}, {
				Part = v_59;
				Color = v_59.Color;
			})
			local var630 = tbl_28_upvr[v_59]
			if var630 then
				v_59.Material = var630
				tbl_28_upvr[v_59] = nil
			end
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	DiscoSetColor_RE_upvr:FireAllClients({})
end
tbl_18._RemoveFX = _RemoveFX
tbl_22_upvr.Disco = tbl_18
local tbl_41 = {
	Id = 'u';
	Name = "Choc";
	ValueMulti = 2;
	Color = Color3.fromRGB(92, 64, 51);
}
local function _AddFX(arg1, arg2, arg3) -- Line 1261
	--[[ Upvalues[1]:
		[1]: tbl_27_upvr (readonly)
	]]
	arg1:_RemoveFX(arg2, arg3)
	local function LoopThroughObject_upvr(arg1_5) -- Line 1267, Named "LoopThroughObject"
		--[[ Upvalues[2]:
			[1]: tbl_27_upvr (copied, readonly)
			[2]: LoopThroughObject_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		for _, v_60_upvr in arg1_5:GetChildren() do
			if v_60_upvr:IsA("BasePart") or v_60_upvr:IsA("UnionOperation") then
				for _, v_61 in game.ServerStorage.Mutation_Textures.Choc:GetChildren() do
					local clone_24 = v_61:Clone()
					clone_24.Parent = v_60_upvr
					clone_24.Transparency = v_60_upvr.Transparency
					table.insert({}, clone_24)
					clone_24:AddTag("Cleanup_Choc")
					local var656_upvr
				end
				tbl_27_upvr[v_60_upvr] = v_60_upvr.Changed:Connect(function() -- Line 1280
					--[[ Upvalues[3]:
						[1]: v_60_upvr (readonly)
						[2]: tbl_27_upvr (copied, readonly)
						[3]: var656_upvr (readonly)
					]]
					if v_60_upvr.Transparency ~= 0 then
					else
						tbl_27_upvr[v_60_upvr]:Disconnect()
						for _, v_169 in var656_upvr do
							v_169.Transparency = 0
						end
					end
				end)
			else
				var656_upvr = v_60_upvr:IsA("Model")
				if var656_upvr then
					var656_upvr = LoopThroughObject_upvr
					var656_upvr(v_60_upvr)
				end
			end
		end
	end
	LoopThroughObject_upvr(arg2)
end
tbl_41._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 1298
	--[[ Upvalues[1]:
		[1]: tbl_27_upvr (readonly)
	]]
	for _, v_62 in arg2:GetDescendants() do
		if v_62:HasTag("Cleanup_Choc") then
			v_62:Destroy()
		end
		if tbl_27_upvr[v_62] then
			tbl_27_upvr[v_62]:Disconnect()
		end
	end
end
tbl_41._RemoveFX = _RemoveFX
tbl_22_upvr.Choc = tbl_41
local tbl_15 = {
	Id = 'v';
	Name = "Plasma";
	ValueMulti = 5;
	Color = Color3.fromRGB(208, 43, 137);
}
local function _AddFX(arg1, arg2, arg3) -- Line 1314
	--[[ Upvalues[2]:
		[1]: tbl_56_upvr (readonly)
		[2]: tbl_28_upvr (readonly)
	]]
	arg1:_RemoveFX(arg2, arg3)
	if arg3 then
		for _, v_63 in game.ServerStorage.Mutation_FX.Plasma:GetChildren() do
			local clone_31 = v_63:Clone()
			clone_31.Parent = arg3
			clone_31.Enabled = true
			clone_31:AddTag("Cleanup_Plasma")
		end
	end
	for _, v_64 in arg2:GetDescendants() do
		if v_64:IsA("BasePart") or v_64:IsA("UnionOperation") or not v_64:HasTag("Effect") then
			local var681 = tbl_56_upvr[v_64]
			if not var681 then
				var681 = v_64.Color
			end
			tbl_56_upvr[v_64] = var681
			v_64.Color = Color3.fromRGB(189, 67, 142)
			local var682 = tbl_28_upvr[v_64]
			if not var682 then
				var682 = v_64.Material
			end
			tbl_28_upvr[v_64] = var682
			v_64.Material = Enum.Material.Neon
			v_64.Reflectance = 0.05
			v_64:AddTag("PlasmaVisual")
		end
	end
end
tbl_15._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 1340
	--[[ Upvalues[2]:
		[1]: tbl_56_upvr (readonly)
		[2]: tbl_28_upvr (readonly)
	]]
	local function cleanup(arg1_6) -- Line 1341
		for _, v_65 in arg1_6:GetDescendants() do
			if v_65:HasTag("Cleanup_Plasma") then
				v_65:Destroy()
			end
		end
	end
	if arg3 then
		cleanup(arg3)
	end
	if arg2 then
		cleanup(arg2)
	end
	for _, v_66 in arg2:GetDescendants() do
		if v_66:IsA("BasePart") or v_66:IsA("UnionOperation") or v_66:HasTag("PlasmaVisual") then
			v_66.Reflectance = 0
			local var695 = tbl_56_upvr[v_66]
			if not var695 then
				var695 = v_66.Color
			end
			v_66.Color = var695
			tbl_56_upvr[v_66] = nil
			v_66:RemoveTag("PlasmaVisual")
			if tbl_28_upvr[v_66] then
				v_66.Material = tbl_28_upvr[v_66]
				tbl_28_upvr[v_66] = nil
			end
		end
	end
end
tbl_15._RemoveFX = _RemoveFX
tbl_22_upvr.Plasma = tbl_15
local tbl_42 = {
	Id = 'w';
	Name = "Heavenly";
	ValueMulti = 5;
	Color = Color3.fromRGB(255, 249, 160);
}
local function _AddFX(arg1, arg2, arg3) -- Line 1374
	arg1:_RemoveFX(arg2, arg3)
	if arg3 then
		for _, v_67 in game.ServerStorage.Mutation_FX.Heavenly:GetChildren() do
			local clone_22 = v_67:Clone()
			clone_22.Parent = arg3
			clone_22.Enabled = true
			clone_22:AddTag("Cleanup_Heavenly")
		end
	end
end
tbl_42._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 1387
	local function cleanup(arg1_7) -- Line 1388
		for _, v_68 in arg1_7:GetDescendants() do
			if v_68:HasTag("Cleanup_Heavenly") then
				v_68:Destroy()
			end
		end
	end
	if arg3 then
		cleanup(arg3)
	end
	if arg2 then
		cleanup(arg2)
	end
end
tbl_42._RemoveFX = _RemoveFX
tbl_22_upvr.Heavenly = tbl_42
local tbl_7 = {
	Id = 'x';
	Name = "Burnt";
	ValueMulti = 4;
	Color = Color3.fromRGB(40, 40, 40);
}
local function _AddFX(arg1, arg2, arg3) -- Line 1405
	--[[ Upvalues[2]:
		[1]: tbl_56_upvr (readonly)
		[2]: tbl_28_upvr (readonly)
	]]
	arg1:_RemoveFX(arg2, arg3)
	if arg3 then
		for _, v_69 in game.ServerStorage.Mutation_FX.Burnt:GetChildren() do
			local clone_12 = v_69:Clone()
			clone_12.Parent = arg3
			clone_12.Enabled = true
			clone_12:AddTag("Cleanup_Burnt")
		end
	end
	for _, v_70 in arg2:GetDescendants() do
		if v_70:IsA("BasePart") or v_70:IsA("UnionOperation") or not v_70:HasTag("Effect") then
			local var724 = tbl_56_upvr[v_70]
			if not var724 then
				var724 = v_70.Color
			end
			tbl_56_upvr[v_70] = var724
			v_70.Color = Color3.fromRGB(25, 25, 25)
			local var725 = tbl_28_upvr[v_70]
			if not var725 then
				var725 = v_70.Material
			end
			tbl_28_upvr[v_70] = var725
			v_70.Material = Enum.Material.Slate
			v_70.Reflectance = 0.05
			v_70:AddTag("BurntVisual")
		end
	end
end
tbl_7._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 1431
	--[[ Upvalues[2]:
		[1]: tbl_56_upvr (readonly)
		[2]: tbl_28_upvr (readonly)
	]]
	local function cleanup(arg1_8) -- Line 1432
		for _, v_71 in arg1_8:GetDescendants() do
			if v_71:HasTag("Cleanup_Burnt") then
				v_71:Destroy()
			end
		end
	end
	if arg3 then
		cleanup(arg3)
	end
	if arg2 then
		cleanup(arg2)
	end
	for _, v_72 in arg2:GetDescendants() do
		if v_72:IsA("BasePart") or v_72:IsA("UnionOperation") or v_72:HasTag("BurntVisual") then
			v_72.Reflectance = 0
			local var738 = tbl_56_upvr[v_72]
			if not var738 then
				var738 = v_72.Color
			end
			v_72.Color = var738
			tbl_56_upvr[v_72] = nil
			v_72:RemoveTag("BurntVisual")
			if tbl_28_upvr[v_72] then
				v_72.Material = tbl_28_upvr[v_72]
				tbl_28_upvr[v_72] = nil
			end
		end
	end
end
tbl_7._RemoveFX = _RemoveFX
tbl_22_upvr.Burnt = tbl_7
local tbl_24 = {
	Id = 'y';
	Name = "Cooked";
	ValueMulti = 10;
	Color = Color3.fromRGB(210, 120, 60);
}
local function _AddFX(arg1, arg2, arg3) -- Line 1465
	--[[ Upvalues[1]:
		[1]: tbl_56_upvr (readonly)
	]]
	arg1:_RemoveFX(arg2, arg3)
	if arg3 then
		for _, v_73 in game.ServerStorage.Mutation_FX.Cooked:GetChildren() do
			local clone_43 = v_73:Clone()
			clone_43.Parent = arg3
			clone_43.Enabled = true
			clone_43:AddTag("Cleanup_Cooked")
		end
	end
	for _, v_74 in arg2:GetDescendants() do
		if v_74:IsA("BasePart") or v_74:IsA("UnionOperation") or not v_74:HasTag("Effect") then
			local var755 = tbl_56_upvr[v_74]
			if not var755 then
				var755 = v_74.Color
			end
			tbl_56_upvr[v_74] = var755
			v_74.Color = Color3.fromRGB(210, 120, 60)
			v_74:AddTag("CookedVisual")
		end
	end
end
tbl_24._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 1488
	--[[ Upvalues[2]:
		[1]: tbl_56_upvr (readonly)
		[2]: tbl_28_upvr (readonly)
	]]
	local function cleanup(arg1_9) -- Line 1489
		for _, v_75 in arg1_9:GetDescendants() do
			if v_75:HasTag("Cleanup_Cooked") then
				v_75:Destroy()
			end
		end
	end
	if arg3 then
		cleanup(arg3)
	end
	if arg2 then
		cleanup(arg2)
	end
	for _, v_76 in arg2:GetDescendants() do
		if v_76:IsA("BasePart") or v_76:IsA("UnionOperation") or v_76:HasTag("CookedVisual") then
			v_76.Reflectance = 0
			local var768 = tbl_56_upvr[v_76]
			if not var768 then
				var768 = v_76.Color
			end
			v_76.Color = var768
			tbl_56_upvr[v_76] = nil
			v_76:RemoveTag("CookedVisual")
			local var769 = tbl_28_upvr[v_76]
			if var769 then
				v_76.Material = var769
				tbl_28_upvr[v_76] = nil
			end
		end
	end
end
tbl_24._RemoveFX = _RemoveFX
tbl_22_upvr.Cooked = tbl_24
local tbl_36 = {
	Id = 'z';
	Name = "Moonlit";
	ValueMulti = 2;
	Color = Color3.fromRGB(153, 141, 255);
}
local function _AddFX(arg1, arg2, arg3) -- Line 1523
	--[[ Upvalues[1]:
		[1]: tbl_56_upvr (readonly)
	]]
	arg1:_RemoveFX(arg2, arg3)
	if arg3 then
		for _, v_77 in game.ServerStorage.Mutation_FX.Moonlit:GetChildren() do
			local clone_38 = v_77:Clone()
			clone_38.Parent = arg3
			clone_38.Enabled = true
			clone_38:AddTag("Cleanup_Moonlit")
			clone_38:AddTag("Effect")
		end
	end
	for _, v_78 in arg2:GetDescendants() do
		if v_78:IsA("BasePart") or v_78:IsA("UnionOperation") or not v_78:HasTag("Effect") then
			local var786 = tbl_56_upvr[v_78]
			if not var786 then
				var786 = v_78.Color
			end
			tbl_56_upvr[v_78] = var786
			v_78.Color = Color3.fromRGB(62, 56, 86)
			v_78.Reflectance = 0.3
			v_78:AddTag("MoonlitVisual")
		end
	end
end
tbl_36._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 1548
	--[[ Upvalues[2]:
		[1]: tbl_56_upvr (readonly)
		[2]: tbl_28_upvr (readonly)
	]]
	if arg3 then
		for _, v_79 in arg3:GetChildren() do
			if v_79:HasTag("Cleanup_Moonlit") then
				v_79:Destroy()
			end
		end
	end
	for _, v_80 in arg2:GetDescendants() do
		if v_80:IsA("BasePart") or v_80:IsA("UnionOperation") or v_80:HasTag("MoonlitVisual") then
			local var801 = tbl_56_upvr[v_80]
			if not var801 then
				var801 = v_80.Color
			end
			v_80.Color = var801
			tbl_56_upvr[v_80] = nil
			v_80.Reflectance = 0
			v_80:RemoveTag("MoonlitVisual")
			local var802 = tbl_28_upvr[v_80]
			if var802 then
				v_80.Material = var802
				tbl_28_upvr[v_80] = nil
			end
		end
	end
end
tbl_36._RemoveFX = _RemoveFX
tbl_22_upvr.Moonlit = tbl_36
local tbl_39 = {
	Id = 'A';
	Name = "Bloodlit";
	ValueMulti = 4;
	Color = Color3.fromRGB(200, 0, 0);
}
local function _AddFX(arg1, arg2, arg3) -- Line 1582
	--[[ Upvalues[1]:
		[1]: tbl_56_upvr (readonly)
	]]
	arg1:_RemoveFX(arg2, arg3)
	if arg3 then
		for _, v_81 in game.ServerStorage.Mutation_FX.Bloodlit:GetChildren() do
			local clone_18 = v_81:Clone()
			clone_18.Parent = arg3
			clone_18.Enabled = true
			clone_18:AddTag("Cleanup_Bloodlit")
			clone_18:AddTag("Effect")
		end
	end
	for _, v_82 in arg2:GetDescendants() do
		if v_82:IsA("BasePart") or v_82:IsA("UnionOperation") or not v_82:HasTag("Effect") then
			local var819 = tbl_56_upvr[v_82]
			if not var819 then
				var819 = v_82.Color
			end
			tbl_56_upvr[v_82] = var819
			v_82.Color = Color3.fromRGB(143, 1, 3)
			v_82.Reflectance = 0.3
			v_82:AddTag("BloodlitVisual")
		end
	end
end
tbl_39._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 1607
	--[[ Upvalues[2]:
		[1]: tbl_56_upvr (readonly)
		[2]: tbl_28_upvr (readonly)
	]]
	if arg3 then
		for _, v_83 in arg3:GetChildren() do
			if v_83:HasTag("Cleanup_Bloodlit") then
				v_83:Destroy()
			end
		end
	end
	for _, v_84 in arg2:GetDescendants() do
		if v_84:IsA("BasePart") or v_84:IsA("UnionOperation") or v_84:HasTag("BloodlitVisual") then
			v_84.Reflectance = 0
			local var834 = tbl_56_upvr[v_84]
			if not var834 then
				var834 = v_84.Color
			end
			v_84.Color = var834
			tbl_56_upvr[v_84] = nil
			v_84:RemoveTag("BloodlitVisual")
			local var835 = tbl_28_upvr[v_84]
			if var835 then
				v_84.Material = var835
				tbl_28_upvr[v_84] = nil
			end
		end
	end
end
tbl_39._RemoveFX = _RemoveFX
tbl_22_upvr.Bloodlit = tbl_39
local tbl_48 = {
	Id = 'B';
	Name = "Zombified";
	ValueMulti = 25;
	Color = Color3.fromRGB(128, 199, 127);
}
local function _AddFX(arg1, arg2, arg3) -- Line 1641
	arg1:_RemoveFX(arg2, arg3)
	if arg3 then
		for _, v_85 in game.ServerStorage.Mutation_FX.Zombified:GetChildren() do
			local clone_41 = v_85:Clone()
			clone_41.Parent = arg3
			clone_41.Enabled = true
			clone_41:AddTag("Cleanup_Zombified")
			clone_41:AddTag("Effect")
		end
	end
	for _, v_86 in arg2:GetDescendants() do
		if v_86:IsA("BasePart") or v_86:IsA("UnionOperation") then
			if not v_86:HasTag("Effect") then
				v_86:AddTag("ZombifiedVisual")
			end
		end
	end
end
tbl_48._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 1661
	--[[ Upvalues[1]:
		[1]: tbl_28_upvr (readonly)
	]]
	if arg3 then
		for _, v_87 in arg3:GetChildren() do
			if v_87:HasTag("Cleanup_Zombified") then
				v_87:Destroy()
			end
		end
	end
	for _, v_88 in arg2:GetDescendants() do
		if v_88:IsA("BasePart") or v_88:IsA("UnionOperation") then
			if v_88:HasTag("ZombifiedVisual") then
				v_88:RemoveTag("ZombifiedVisual")
				local var858 = tbl_28_upvr[v_88]
				if var858 then
					v_88.Material = var858
					tbl_28_upvr[v_88] = nil
				end
			end
		end
	end
end
tbl_48._RemoveFX = _RemoveFX
tbl_22_upvr.Zombified = tbl_48
local tbl_32 = {
	Id = 'C';
	Name = "Celestial";
	ValueMulti = 120;
	Color = Color3.fromRGB(255, 0, 255);
}
local function _AddFX(arg1, arg2, arg3) -- Line 1690
	arg1:_RemoveFX(arg2, arg3)
	if arg3 then
		for _, v_89 in game.ServerStorage.Mutation_FX.Celestial:GetChildren() do
			local clone_40 = v_89:Clone()
			clone_40.Parent = arg3
			clone_40.Enabled = true
			clone_40:AddTag("Cleanup_Celestial")
			clone_40:AddTag("Effect")
		end
	end
	for _, v_90 in arg2:GetDescendants() do
		if v_90:IsA("BasePart") or v_90:IsA("UnionOperation") then
			if not v_90:HasTag("Effect") then
				v_90.Reflectance = 0.5
				v_90:AddTag("CelestialVisual")
			end
		end
	end
end
tbl_32._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 1713
	--[[ Upvalues[1]:
		[1]: tbl_28_upvr (readonly)
	]]
	if arg3 then
		for _, v_91 in arg3:GetChildren() do
			if v_91:HasTag("Cleanup_Celestial") then
				v_91:Destroy()
			end
		end
	end
	for _, v_92 in arg2:GetDescendants() do
		if v_92:IsA("BasePart") or v_92:IsA("UnionOperation") then
			if v_92:HasTag("CelestialVisual") then
				v_92.Reflectance = 0
				v_92:RemoveTag("CelestialVisual")
				local var881 = tbl_28_upvr[v_92]
				if var881 then
					v_92.Material = var881
					tbl_28_upvr[v_92] = nil
				end
			end
		end
	end
end
tbl_32._RemoveFX = _RemoveFX
tbl_22_upvr.Celestial = tbl_32
local tbl_45 = {
	Id = 'D';
	Name = "Meteoric";
	ValueMulti = 125;
	Color = Color3.fromRGB(73, 29, 193);
}
local function _AddFX(arg1, arg2, arg3) -- Line 1743
	arg1:_RemoveFX(arg2, arg3)
	if arg3 then
		for _, v_93 in game.ServerStorage.Mutation_FX.Meteoric:GetChildren() do
			local clone_39 = v_93:Clone()
			clone_39.Parent = arg3
			clone_39.Enabled = true
			clone_39:AddTag("Cleanup_Meteoric")
			clone_39:AddTag("Effect")
		end
	end
	for _, v_94 in arg2:GetDescendants() do
		if v_94:IsA("BasePart") or v_94:IsA("UnionOperation") then
			if not v_94:HasTag("Effect") then
				v_94.Reflectance = 0.5
				v_94:AddTag("MeteoricVisual")
			end
		end
	end
end
tbl_45._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 1766
	--[[ Upvalues[1]:
		[1]: tbl_28_upvr (readonly)
	]]
	if arg3 then
		for _, v_95 in arg3:GetChildren() do
			if v_95:HasTag("Cleanup_Meteoric") then
				v_95:Destroy()
			end
		end
	end
	for _, v_96 in arg2:GetDescendants() do
		if v_96:IsA("BasePart") or v_96:IsA("UnionOperation") then
			if v_96:HasTag("MeteoricVisual") then
				v_96.Reflectance = 0
				v_96:RemoveTag("MeteoricVisual")
				local var904 = tbl_28_upvr[v_96]
				if var904 then
					v_96.Material = var904
					tbl_28_upvr[v_96] = nil
				end
			end
		end
	end
end
tbl_45._RemoveFX = _RemoveFX
tbl_22_upvr.Meteoric = tbl_45
local tbl_55 = {
	Id = 'E';
	Name = "HoneyGlazed";
	ValueMulti = 5;
	Color = Color3.fromRGB(255, 204, 0);
}
local function _AddFX(arg1, arg2, arg3) -- Line 1797
	arg1:_RemoveFX(arg2, arg3)
	if arg3 then
		for _, v_97 in game.ServerStorage.Mutation_FX.Honey:GetChildren() do
			local clone_36 = v_97:Clone()
			clone_36.Parent = arg3
			clone_36.Enabled = true
			clone_36:AddTag("Cleanup_Honey")
			clone_36:AddTag("Effect")
		end
	end
	for _, v_98 in arg2:GetDescendants() do
		if v_98:IsA("BasePart") or v_98:IsA("UnionOperation") then
			if not v_98:HasTag("Effect") then
				v_98:AddTag("HoneyVisual")
			end
		end
	end
end
tbl_55._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 1817
	--[[ Upvalues[1]:
		[1]: tbl_28_upvr (readonly)
	]]
	if arg3 then
		for _, v_99 in arg3:GetChildren() do
			if v_99:HasTag("Cleanup_Honey") then
				v_99:Destroy()
			end
		end
	end
	for _, v_100 in arg2:GetDescendants() do
		if v_100:IsA("BasePart") or v_100:IsA("UnionOperation") then
			if v_100:HasTag("HoneyVisual") then
				v_100:RemoveTag("HoneyVisual")
				local var927 = tbl_28_upvr[v_100]
				if var927 then
					v_100.Material = var927
					tbl_28_upvr[v_100] = nil
				end
			end
		end
	end
end
tbl_55._RemoveFX = _RemoveFX
tbl_22_upvr.HoneyGlazed = tbl_55
local tbl_62 = {
	Id = 'F';
	Name = "Pollinated";
	ValueMulti = 3;
	Color = Color3.fromRGB(255, 170, 0);
}
local function _AddFX(arg1, arg2, arg3) -- Line 1847
	--[[ Upvalues[1]:
		[1]: tbl_56_upvr (readonly)
	]]
	arg1:_RemoveFX(arg2, arg3)
	if arg3 then
		for _, v_101 in game.ServerStorage.Mutation_FX.Pollinated:GetChildren() do
			local clone_15 = v_101:Clone()
			clone_15.Parent = arg3
			clone_15.Enabled = true
			clone_15:AddTag("Cleanup_Pollinated")
			clone_15:AddTag("Effect")
		end
	end
	for _, v_102 in arg2:GetDescendants() do
		if v_102:IsA("BasePart") or v_102:IsA("UnionOperation") or not v_102:HasTag("Effect") then
			local var944 = tbl_56_upvr[v_102]
			if not var944 then
				var944 = v_102.Color
			end
			tbl_56_upvr[v_102] = var944
			v_102.Color = Color3.fromRGB(255, 170, 0)
			v_102:AddTag("PollinatedlVisual")
		end
	end
end
tbl_62._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 1871
	--[[ Upvalues[2]:
		[1]: tbl_56_upvr (readonly)
		[2]: tbl_28_upvr (readonly)
	]]
	if arg3 then
		for _, v_103 in arg3:GetChildren() do
			if v_103:HasTag("Cleanup_Pollinated") then
				v_103:Destroy()
			end
		end
	end
	for _, v_104 in arg2:GetDescendants() do
		if v_104:IsA("BasePart") or v_104:IsA("UnionOperation") or v_104:HasTag("PollinatedlVisual") then
			v_104:RemoveTag("PollinatedVisual")
			local var959 = tbl_56_upvr[v_104]
			if not var959 then
				var959 = v_104.Color
			end
			v_104.Color = var959
			tbl_56_upvr[v_104] = nil
			local var960 = tbl_28_upvr[v_104]
			if var960 then
				v_104.Material = var960
				tbl_28_upvr[v_104] = nil
			end
		end
	end
end
tbl_62._RemoveFX = _RemoveFX
tbl_22_upvr.Pollinated = tbl_62
local tbl_52 = {
	Id = 'G';
	Name = "Amber";
	ValueMulti = 10;
	Color = Color3.fromRGB(255, 192, 0);
	TimeData = {
		TimeToChange = 86400;
		AddMutationName = "OldAmber";
	};
}
local function _AddFX(arg1, arg2, arg3) -- Line 1907
	--[[ Upvalues[1]:
		[1]: AddBoundingFX_upvr (readonly)
	]]
	AddBoundingFX_upvr(arg1, arg2, arg3, 0.5)
end
tbl_52._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 1909
	--[[ Upvalues[1]:
		[1]: RemoveBoundingFX_upvr (readonly)
	]]
	RemoveBoundingFX_upvr(arg1, arg2, arg3)
end
tbl_52._RemoveFX = _RemoveFX
tbl_22_upvr.Amber = tbl_52
local tbl_10 = {
	Id = 'H';
	Name = "OldAmber";
	ValueMulti = 20;
	Color = Color3.fromRGB(252, 106, 33);
	TimeData = {
		TimeToChange = 172800;
		AddMutationName = "AncientAmber";
	};
}
local function _AddFX(arg1, arg2, arg3) -- Line 1922
	--[[ Upvalues[1]:
		[1]: AddBoundingFX_upvr (readonly)
	]]
	AddBoundingFX_upvr(arg1, arg2, arg3, 0.5)
end
tbl_10._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 1924
	--[[ Upvalues[1]:
		[1]: RemoveBoundingFX_upvr (readonly)
	]]
	RemoveBoundingFX_upvr(arg1, arg2, arg3)
end
tbl_10._RemoveFX = _RemoveFX
tbl_22_upvr.OldAmber = tbl_10
local tbl_47 = {
	Id = 'I';
	Name = "AncientAmber";
	ValueMulti = 50;
	Color = Color3.fromRGB(204, 68, 0);
}
local function _AddFX(arg1, arg2, arg3) -- Line 1933
	--[[ Upvalues[1]:
		[1]: AddBoundingFX_upvr (readonly)
	]]
	AddBoundingFX_upvr(arg1, arg2, arg3, 0.5)
end
tbl_47._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 1935
	--[[ Upvalues[1]:
		[1]: RemoveBoundingFX_upvr (readonly)
	]]
	RemoveBoundingFX_upvr(arg1, arg2, arg3)
end
tbl_47._RemoveFX = _RemoveFX
tbl_22_upvr.AncientAmber = tbl_47
local tbl_50 = {
	Id = 'J';
	Name = "Sandy";
	ValueMulti = 3;
	Color = Color3.fromRGB(212, 191, 141);
}
local function _AddFX(arg1, arg2, arg3) -- Line 1944
	--[[ Upvalues[2]:
		[1]: tbl_56_upvr (readonly)
		[2]: tbl_28_upvr (readonly)
	]]
	arg1:_RemoveFX(arg2, arg3)
	if arg3 then
		for _, v_105 in game.ServerStorage.Mutation_FX.Sandy:GetChildren() do
			local clone_11 = v_105:Clone()
			clone_11.Parent = arg3
			clone_11.Enabled = true
			clone_11:AddTag("Cleanup_Sandy")
		end
	end
	for _, v_106 in arg2:GetDescendants() do
		if v_106:IsA("BasePart") or v_106:IsA("UnionOperation") or not v_106:HasTag("Effect") then
			local var982 = tbl_56_upvr[v_106]
			if not var982 then
				var982 = v_106.Color
			end
			tbl_56_upvr[v_106] = var982
			v_106.Color = Color3.fromRGB(240, 206, 119)
			local var983 = tbl_28_upvr[v_106]
			if not var983 then
				var983 = v_106.Material
			end
			tbl_28_upvr[v_106] = var983
			v_106.Material = Enum.Material.Sand
			v_106.Reflectance = 0
			v_106:AddTag("SandyVisual")
		end
	end
end
tbl_50._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 1970
	--[[ Upvalues[2]:
		[1]: tbl_56_upvr (readonly)
		[2]: tbl_28_upvr (readonly)
	]]
	local function cleanup(arg1_10) -- Line 1971
		for _, v_107 in arg1_10:GetDescendants() do
			if v_107:HasTag("Cleanup_Sandy") then
				v_107:Destroy()
			end
		end
	end
	if arg3 then
		cleanup(arg3)
	end
	if arg2 then
		cleanup(arg2)
	end
	for _, v_108 in arg2:GetDescendants() do
		if v_108:IsA("BasePart") or v_108:IsA("UnionOperation") or v_108:HasTag("SandyVisual") then
			v_108.Reflectance = 0
			local var996 = tbl_56_upvr[v_108]
			if not var996 then
				var996 = v_108.Color
			end
			v_108.Color = var996
			tbl_56_upvr[v_108] = nil
			v_108:RemoveTag("SandyVisual")
			if tbl_28_upvr[v_108] then
				v_108.Material = tbl_28_upvr[v_108]
				tbl_28_upvr[v_108] = nil
			end
		end
	end
end
tbl_50._RemoveFX = _RemoveFX
tbl_22_upvr.Sandy = tbl_50
local tbl_20 = {
	Id = 'K';
	Name = "Clay";
	ValueMulti = 5;
	Color = Color3.fromRGB(147, 129, 122);
}
local function _AddFX(arg1, arg2, arg3) -- Line 2004
	--[[ Upvalues[2]:
		[1]: tbl_56_upvr (readonly)
		[2]: tbl_28_upvr (readonly)
	]]
	arg1:_RemoveFX(arg2, arg3)
	if arg3 then
		for _, v_109 in game.ServerStorage.Mutation_FX.Clay:GetChildren() do
			local clone_34 = v_109:Clone()
			clone_34.Parent = arg3
			clone_34.Enabled = true
			clone_34:AddTag("Cleanup_Clay")
		end
	end
	for _, v_110 in arg2:GetDescendants() do
		if v_110:IsA("BasePart") or v_110:IsA("UnionOperation") or not v_110:HasTag("Effect") then
			local var1013 = tbl_56_upvr[v_110]
			if not var1013 then
				var1013 = v_110.Color
			end
			tbl_56_upvr[v_110] = var1013
			v_110.Color = Color3.fromRGB(147, 129, 122)
			local var1014 = tbl_28_upvr[v_110]
			if not var1014 then
				var1014 = v_110.Material
			end
			tbl_28_upvr[v_110] = var1014
			v_110.Material = Enum.Material.Plaster
			v_110.Reflectance = 0.5
			v_110:AddTag("ClayVisual")
		end
	end
end
tbl_20._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 2032
	--[[ Upvalues[2]:
		[1]: tbl_56_upvr (readonly)
		[2]: tbl_28_upvr (readonly)
	]]
	local function cleanup(arg1_11) -- Line 2033
		for _, v_111 in arg1_11:GetDescendants() do
			if v_111:HasTag("Cleanup_Clay") then
				v_111:Destroy()
			end
		end
	end
	if arg3 then
		cleanup(arg3)
	end
	if arg2 then
		cleanup(arg2)
	end
	for _, v_112 in arg2:GetDescendants() do
		if v_112:IsA("BasePart") or v_112:IsA("UnionOperation") or v_112:HasTag("ClayVisual") then
			v_112.Reflectance = 0
			local var1027 = tbl_56_upvr[v_112]
			if not var1027 then
				var1027 = v_112.Color
			end
			v_112.Color = var1027
			tbl_56_upvr[v_112] = nil
			v_112:RemoveTag("ClayVisual")
			if tbl_28_upvr[v_112] then
				v_112.Material = tbl_28_upvr[v_112]
				tbl_28_upvr[v_112] = nil
			end
		end
	end
end
tbl_20._RemoveFX = _RemoveFX
tbl_22_upvr.Clay = tbl_20
local tbl_46 = {
	Id = 'L';
	Name = "Ceramic";
	ValueMulti = 32;
	Color = Color3.fromRGB(234, 184, 146);
}
local function _AddFX(arg1, arg2, arg3) -- Line 2068
	--[[ Upvalues[2]:
		[1]: tbl_56_upvr (readonly)
		[2]: tbl_28_upvr (readonly)
	]]
	arg1:_RemoveFX(arg2, arg3)
	if arg3 then
		for _, v_113 in game.ServerStorage.Mutation_FX.Ceramic:GetChildren() do
			local clone_35 = v_113:Clone()
			clone_35.Parent = arg3
			clone_35.Enabled = true
			clone_35:AddTag("Cleanup_Ceramic")
		end
	end
	for _, v_114 in arg2:GetDescendants() do
		if v_114:IsA("BasePart") or v_114:IsA("UnionOperation") or not v_114:HasTag("Effect") then
			local var1044 = tbl_56_upvr[v_114]
			if not var1044 then
				var1044 = v_114.Color
			end
			tbl_56_upvr[v_114] = var1044
			v_114.Color = Color3.fromRGB(234, 184, 146)
			local var1045 = tbl_28_upvr[v_114]
			if not var1045 then
				var1045 = v_114.Material
			end
			tbl_28_upvr[v_114] = var1045
			v_114.Material = Enum.Material.Concrete
			v_114:AddTag("CeramicVisual")
		end
	end
end
tbl_46._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 2095
	--[[ Upvalues[2]:
		[1]: tbl_56_upvr (readonly)
		[2]: tbl_28_upvr (readonly)
	]]
	local function cleanup(arg1_12) -- Line 2096
		for _, v_115 in arg1_12:GetDescendants() do
			if v_115:HasTag("Cleanup_Ceramic") then
				v_115:Destroy()
			end
		end
	end
	if arg3 then
		cleanup(arg3)
	end
	if arg2 then
		cleanup(arg2)
	end
	for _, v_116 in arg2:GetDescendants() do
		if v_116:IsA("BasePart") or v_116:IsA("UnionOperation") or v_116:HasTag("CeramicVisual") then
			v_116.Reflectance = 0
			local var1058 = tbl_56_upvr[v_116]
			if not var1058 then
				var1058 = v_116.Color
			end
			v_116.Color = var1058
			tbl_56_upvr[v_116] = nil
			v_116:RemoveTag("CeramicVisual")
			if tbl_28_upvr[v_116] then
				v_116.Material = tbl_28_upvr[v_116]
				tbl_28_upvr[v_116] = nil
			end
		end
	end
end
tbl_46._RemoveFX = _RemoveFX
tbl_22_upvr.Ceramic = tbl_46
local tbl_4 = {
	Id = 'M';
	Name = "Friendbound";
	ValueMulti = 70;
	Color = Color3.fromRGB(255, 0, 127);
}
local function _AddFX(arg1, arg2, arg3) -- Line 2131
	--[[ Upvalues[1]:
		[1]: tbl_56_upvr (readonly)
	]]
	arg1:_RemoveFX(arg2, arg3)
	if arg3 then
		for _, v_117 in game.ServerStorage.Mutation_FX.Friendbound:GetChildren() do
			local clone_32 = v_117:Clone()
			clone_32.Parent = arg3
			clone_32.Enabled = true
			clone_32:AddTag("Cleanup_Friendbound")
		end
	end
	for _, v_118 in arg2:GetDescendants() do
		if v_118:IsA("BasePart") or v_118:IsA("UnionOperation") or not v_118:HasTag("Effect") then
			local var1075 = tbl_56_upvr[v_118]
			if not var1075 then
				var1075 = v_118.Color
			end
			tbl_56_upvr[v_118] = var1075
			v_118.Color = tbl_56_upvr[v_118]:Lerp(Color3.fromRGB(255, 0, 127), 0.4)
			v_118:AddTag("FriendboundVisual")
		end
	end
end
tbl_4._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 2165
	--[[ Upvalues[1]:
		[1]: tbl_56_upvr (readonly)
	]]
	local function cleanup(arg1_13) -- Line 2166
		for _, v_119 in arg1_13:GetDescendants() do
			if v_119:HasTag("Cleanup_Friendbound") then
				v_119:Destroy()
			end
		end
	end
	if arg3 then
		cleanup(arg3)
	end
	if arg2 then
		cleanup(arg2)
	end
	for _, v_120 in arg2:GetDescendants() do
		if v_120:IsA("BasePart") or v_120:IsA("UnionOperation") or v_120:HasTag("FriendboundVisual") then
			local var1088 = tbl_56_upvr[v_120]
			if not var1088 then
				var1088 = v_120.Color
			end
			v_120.Color = var1088
			tbl_56_upvr[v_120] = nil
			v_120:RemoveTag("FriendboundVisual")
		end
	end
end
tbl_4._RemoveFX = _RemoveFX
tbl_22_upvr.Friendbound = tbl_4
local tbl_44 = {
	Id = 'N';
	Name = "Tempestuous";
	ValueMulti = 12;
	Color = Color3.fromRGB(143, 163, 180);
}
local function _AddFX(arg1, arg2, arg3) -- Line 2201
	arg1:_RemoveFX(arg2, arg3)
	if arg3 then
		for _, v_121 in {game.ServerStorage.Mutation_FX.Twisted, game.ServerStorage.Mutation_FX.Tempestous} do
			for _, v_122 in v_121:GetChildren() do
				local clone_9 = v_122:Clone()
				clone_9.Parent = arg3
				clone_9.Enabled = true
				clone_9:AddTag("Cleanup_Tempestuous")
			end
		end
	end
	for _, v_123 in arg2:GetDescendants() do
		if v_123:IsA("BasePart") or v_123:IsA("UnionOperation") then
			if not v_123:HasTag("Effect") then
				v_123:AddTag("TempestuousVisual")
			end
		end
	end
end
tbl_44._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 2229
	if arg3 then
		for _, v_124 in arg3:GetChildren() do
			if v_124:HasTag("Cleanup_Tempestuous") then
				v_124:Destroy()
			end
		end
	end
	for _, v_125 in arg2:GetDescendants() do
		if v_125:IsA("BasePart") or v_125:IsA("UnionOperation") then
			if v_125:HasTag("TempestuousVisual") then
				v_125:RemoveTag("TempestuousVisual")
			end
		end
	end
end
tbl_44._RemoveFX = _RemoveFX
tbl_22_upvr.Tempestuous = tbl_44
local tbl = {
	Id = 'O';
	Name = "Infected";
	ValueMulti = 75;
	Color = Color3.fromRGB(67, 167, 0);
}
local function _AddFX(arg1, arg2, arg3) -- Line 2254
	--[[ Upvalues[2]:
		[1]: tbl_56_upvr (readonly)
		[2]: tbl_28_upvr (readonly)
	]]
	arg1:_RemoveFX(arg2, arg3)
	if arg3 then
		for _, v_126 in game.ServerStorage.Mutation_FX.Infected:GetChildren() do
			local clone_27 = v_126:Clone()
			clone_27.Parent = arg3
			clone_27.Enabled = true
			clone_27:AddTag("Cleanup_Infected")
		end
	end
	for _, v_127 in arg2:GetDescendants() do
		if v_127:IsA("BasePart") or v_127:IsA("UnionOperation") or not v_127:HasTag("Effect") then
			local var1130 = tbl_56_upvr[v_127]
			if not var1130 then
				var1130 = v_127.Color
			end
			tbl_56_upvr[v_127] = var1130
			v_127.Color = Color3.fromRGB(65, 175, 0)
			local var1131 = tbl_28_upvr[v_127]
			if not var1131 then
				var1131 = v_127.Material
			end
			tbl_28_upvr[v_127] = var1131
			v_127:AddTag("InfectedVisual")
		end
	end
end
tbl._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 2281
	--[[ Upvalues[2]:
		[1]: tbl_56_upvr (readonly)
		[2]: tbl_28_upvr (readonly)
	]]
	local function cleanup(arg1_14) -- Line 2282
		for _, v_128 in arg1_14:GetDescendants() do
			if v_128:HasTag("Cleanup_Infected") then
				v_128:Destroy()
			end
		end
	end
	if arg3 then
		cleanup(arg3)
	end
	if arg2 then
		cleanup(arg2)
	end
	for _, v_129 in arg2:GetDescendants() do
		if v_129:IsA("BasePart") or v_129:IsA("UnionOperation") or v_129:HasTag("InfectedVisual") then
			v_129.Reflectance = 0
			local var1144 = tbl_56_upvr[v_129]
			if not var1144 then
				var1144 = v_129.Color
			end
			v_129.Color = var1144
			tbl_56_upvr[v_129] = nil
			v_129:RemoveTag("InfectedVisual")
			if tbl_28_upvr[v_129] then
				v_129.Material = tbl_28_upvr[v_129]
				tbl_28_upvr[v_129] = nil
			end
		end
	end
end
tbl._RemoveFX = _RemoveFX
tbl_22_upvr.Infected = tbl
local tbl_53 = {
	Id = 'P';
	Name = "Radioactive";
	ValueMulti = 80;
	Color = Color3.fromRGB(98, 255, 0);
}
local function _AddFX(arg1, arg2, arg3) -- Line 2317
	--[[ Upvalues[2]:
		[1]: tbl_56_upvr (readonly)
		[2]: tbl_28_upvr (readonly)
	]]
	arg1:_RemoveFX(arg2, arg3)
	if arg3 then
		for _, v_130 in game.ServerStorage.Mutation_FX.Radioactive:GetChildren() do
			local clone = v_130:Clone()
			clone.Parent = arg3
			clone.Enabled = true
			clone:AddTag("Cleanup_Radioactive")
		end
	end
	for _, v_131 in arg2:GetDescendants() do
		if v_131:IsA("BasePart") or v_131:IsA("UnionOperation") or not v_131:HasTag("Effect") then
			local var1161 = tbl_56_upvr[v_131]
			if not var1161 then
				var1161 = v_131.Color
			end
			tbl_56_upvr[v_131] = var1161
			v_131.Color = Color3.fromRGB(65, 175, 0)
			local var1162 = tbl_28_upvr[v_131]
			if not var1162 then
				var1162 = v_131.Material
			end
			tbl_28_upvr[v_131] = var1162
			v_131.Material = Enum.Material.Neon
			v_131:AddTag("RadioactiveVisual")
		end
	end
end
tbl_53._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 2344
	--[[ Upvalues[2]:
		[1]: tbl_56_upvr (readonly)
		[2]: tbl_28_upvr (readonly)
	]]
	local function cleanup(arg1_15) -- Line 2345
		for _, v_132 in arg1_15:GetDescendants() do
			if v_132:HasTag("Cleanup_Radioactive") then
				v_132:Destroy()
			end
		end
	end
	if arg3 then
		cleanup(arg3)
	end
	if arg2 then
		cleanup(arg2)
	end
	for _, v_133 in arg2:GetDescendants() do
		if v_133:IsA("BasePart") or v_133:IsA("UnionOperation") or v_133:HasTag("RadioactiveVisual") then
			v_133.Reflectance = 0
			local var1175 = tbl_56_upvr[v_133]
			if not var1175 then
				var1175 = v_133.Color
			end
			v_133.Color = var1175
			tbl_56_upvr[v_133] = nil
			v_133:RemoveTag("RadioactiveVisual")
			if tbl_28_upvr[v_133] then
				v_133.Material = tbl_28_upvr[v_133]
				tbl_28_upvr[v_133] = nil
			end
		end
	end
end
tbl_53._RemoveFX = _RemoveFX
tbl_22_upvr.Radioactive = tbl_53
local tbl_38 = {
	Id = 'R';
	Name = "Chakra";
	ValueMulti = 15;
	Color = Color3.fromRGB(255, 80, 65);
}
local function _AddFX(arg1, arg2, arg3) -- Line 2380
	arg1:_RemoveFX(arg2, arg3)
	local children_4 = game.ServerStorage.Mutation_FX.Chakra:GetChildren()
	if arg3 then
		for _, v_134 in children_4 do
			local clone_21 = v_134:Clone()
			clone_21.Parent = arg3
			clone_21.Enabled = true
			clone_21:AddTag("Cleanup_Chakra")
		end
	end
	for _, v_135 in arg2:GetDescendants() do
		if v_135:IsA("BasePart") and v_135 ~= arg3 and (0 + 1) % 3 == 0 then
			local clone_14 = children_4[math.random(1, #children_4)]:Clone()
			clone_14.Parent = v_135
			clone_14.Enabled = true
			clone_14:AddTag("Cleanup_Chakra")
		end
	end
end
tbl_38._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 2409
	local function Cleanup(arg1_16) -- Line 2410
		for _, v_136 in arg1_16:GetDescendants() do
			if v_136:HasTag("Cleanup_Chakra") then
				v_136:Destroy()
			end
		end
	end
	if arg3 then
		Cleanup(arg3)
	end
	if arg2 then
		Cleanup(arg2)
	end
end
tbl_38._RemoveFX = _RemoveFX
tbl_22_upvr.Chakra = tbl_38
local tbl_25 = {
	Id = 'S';
	Name = "FoxfireChakra";
	ValueMulti = 90;
	Color = Color3.fromRGB(255, 80, 65);
}
local function _AddFX(arg1, arg2, arg3) -- Line 2429
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	arg1:_RemoveFX(arg2, arg3)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [27] 20. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [27] 20. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 16. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [27.10]
	-- KONSTANTERROR: [21] 16. Error Block 2 end (CF ANALYSIS FAILED)
end
tbl_25._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 2474
	local function Cleanup(arg1_17) -- Line 2475
		for _, v_137 in arg1_17:GetDescendants() do
			if v_137:HasTag("Cleanup_FoxfireChakra") then
				v_137:Destroy()
			end
		end
	end
	if arg3 then
		Cleanup(arg3)
	end
	if arg2 then
		Cleanup(arg2)
	end
end
tbl_25._RemoveFX = _RemoveFX
tbl_22_upvr.FoxfireChakra = tbl_25
local tbl_2 = {
	Id = "EC";
	Name = "Eclipsed";
	ValueMulti = 15;
	Color = Color3.fromRGB(44, 111, 162);
}
local function _AddFX(arg1, arg2, arg3) -- Line 2494
	arg1:_RemoveFX(arg2, arg3)
	if arg3 then
		for _, v_138 in game.ServerStorage.Mutation_FX.Eclipsed:GetChildren() do
			local clone_29 = v_138:Clone()
			clone_29.Parent = arg3
			clone_29.Enabled = true
			clone_29:AddTag("Cleanup_Eclipsed")
		end
	end
end
tbl_2._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 2508
	if arg3 then
		for _, v_139 in arg3:GetChildren() do
			if v_139:HasTag("Cleanup_Eclipsed") then
				v_139:Destroy()
			end
		end
	end
end
tbl_2._RemoveFX = _RemoveFX
tbl_22_upvr.Eclipsed = tbl_2
local tbl_3 = {
	Id = "EN";
	Name = "Enlightened";
	ValueMulti = 35;
	Color = Color3.fromRGB(255, 255, 255);
}
local function _AddFX(arg1, arg2, arg3) -- Line 2524
	--[[ Upvalues[2]:
		[1]: tbl_56_upvr (readonly)
		[2]: tbl_28_upvr (readonly)
	]]
	arg1:_RemoveFX(arg2, arg3)
	local tbl_35 = {}
	local var1231
	for _, v_140 in arg2:GetDescendants() do
		if v_140:IsA("BasePart") or v_140:IsA("UnionOperation") then
			if not v_140:HasTag("Effect") then
				local Color_2 = v_140.Color
				tbl_35[Color_2] = (tbl_35[Color_2] or 0) + 1
			end
		end
	end
	for i_141, v_141 in pairs(tbl_35) do
		if 0 <= v_141 then
		end
	end
	for i_142, v_142 in arg2:GetDescendants() do
		if v_142:IsA("BasePart") or v_142:IsA("UnionOperation") or not v_142:HasTag("Effect") and (not v_142.Transparency or v_142.Transparency ~= 1) or v_142.Color == nil then
			local var1239 = tbl_56_upvr[v_142]
			if not var1239 then
				var1239 = v_142.Color
			end
			tbl_56_upvr[v_142] = var1239
			v_142.Color = Color3.fromRGB(218, 133, 65)
			local var1240 = tbl_28_upvr[v_142]
			if not var1240 then
				var1240 = v_142.Material
			end
			tbl_28_upvr[v_142] = var1240
			v_142.Material = Enum.Material.Neon
			v_142:AddTag("EnlightenedVisual")
		end
	end
	if arg3 then
		i_142 = game
		for _, v_143 in i_142.ServerStorage.Mutation_FX.Enlightened:GetChildren() do
			local clone_7 = v_143:Clone()
			clone_7.Parent = arg3
			clone_7.Enabled = true
			clone_7:AddTag("Cleanup_Enlightened")
		end
	end
end
tbl_3._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 2574
	--[[ Upvalues[2]:
		[1]: tbl_56_upvr (readonly)
		[2]: tbl_28_upvr (readonly)
	]]
	local function cleanup(arg1_18) -- Line 2575
		for _, v_144 in arg1_18:GetDescendants() do
			if v_144:HasTag("Cleanup_Enlightened") then
				v_144:Destroy()
			end
		end
	end
	if arg3 then
		cleanup(arg3)
	end
	for _, v_145 in arg2:GetDescendants() do
		if v_145:IsA("BasePart") or v_145:IsA("UnionOperation") or v_145:HasTag("EnlightenedVisual") then
			local var1257 = tbl_56_upvr[v_145]
			if not var1257 then
				var1257 = v_145.Color
			end
			v_145.Color = var1257
			tbl_56_upvr[v_145] = nil
			v_145:RemoveTag("EnlightenedVisual")
			if tbl_28_upvr[v_145] then
				v_145.Material = tbl_28_upvr[v_145]
				tbl_28_upvr[v_145] = nil
			end
		end
	end
end
tbl_3._RemoveFX = _RemoveFX
tbl_22_upvr.Enlightened = tbl_3
local tbl_13 = {
	Id = "TQ";
	Name = "Tranquil";
	ValueMulti = 20;
	Color = Color3.fromRGB(255, 255, 255);
}
local function _AddFX(arg1, arg2, arg3) -- Line 2604
	arg1:_RemoveFX(arg2, arg3)
	local Item_Seed_2 = arg2:FindFirstChild("Item_Seed")
	local var1264
	if Item_Seed_2 and Item_Seed_2:IsA("NumberValue") then
		var1264 = Item_Seed_2.Value
	else
		var1264 = 0
	end
	local random_state = Random.new(var1264)
	local children_19 = game.ServerStorage.Mutation_FX.Tranquil:GetChildren()
	for _, v_146 in arg2:GetDescendants() do
		local function INLINED() -- Internal function, doesn't exist in bytecode
			local var1270 = 0 + 1
			return var1270 % 5 == 0
		end
		if v_146:IsA("BasePart") or v_146:IsA("UnionOperation") or INLINED() or var1270 == 1 then
			local clone_23 = children_19[random_state:NextInteger(1, #children_19)]:Clone()
			clone_23.Enabled = true
			clone_23.Rate = random_state:NextInteger(30, 50) * 0.01
			clone_23.Parent = v_146
			clone_23:AddTag("Cleanup_Tranquil")
		end
	end
end
tbl_13._AddFX = _AddFX
local function _RemoveFX(arg1, arg2, arg3) -- Line 2637
	if arg3 then
		(function(arg1_19) -- Line 2638, Named "cleanup"
			for _, v_147 in arg1_19:GetDescendants() do
				if v_147:HasTag("Cleanup_Tranquil") then
					v_147:Destroy()
				end
			end
		end)(arg3)
	end
end
tbl_13._RemoveFX = _RemoveFX
tbl_22_upvr.Tranquil = tbl_13
local tbl_29 = {
	Id = "TX";
	Name = "Toxic";
	ValueMulti = 12;
	Color = Color3.fromRGB(85, 255, 0);
	_AddFX = function(arg1, arg2, arg3) -- Line 2658, Named "_AddFX"
		arg1:_RemoveFX(arg2, arg3)
		if arg3 then
			for _, v_148 in game.ServerStorage.Mutation_FX.Toxic:GetChildren() do
				local clone_5 = v_148:Clone()
				clone_5.Parent = arg3
				clone_5.Enabled = true
				clone_5:AddTag("Cleanup_Toxic")
			end
		end
	end;
	_RemoveFX = function(arg1, arg2, arg3) -- Line 2672, Named "_RemoveFX"
		if arg3 then
			for _, v_149 in arg3:GetChildren() do
				if v_149:HasTag("Cleanup_Toxic") then
					v_149:Destroy()
				end
			end
		end
	end;
}
tbl_22_upvr.Toxic = tbl_29
tbl_29 = {}
local var1289_upvr = tbl_29
local tbl_19_upvr = {}
for i_150, v_150 in tbl_22_upvr do
	var1289_upvr[i_150] = v_150.Id
end
for i_151, v_151 in tbl_22_upvr do
	if tbl_19_upvr[v_151.Id] then
		error(`MutationHandler | Duplicate Enum for {i_151} and {tbl_19_upvr[v_151.Id]}`)
	end
	tbl_19_upvr[v_151.Id] = i_151
end
table.freeze(var1289_upvr)
table.freeze(tbl_19_upvr)
function module_5_upvr.GetMutationsToEnums(arg1) -- Line 2701
	--[[ Upvalues[1]:
		[1]: var1289_upvr (readonly)
	]]
	return var1289_upvr
end
function module_5_upvr.GetEnumsToMutations(arg1) -- Line 2703
	--[[ Upvalues[1]:
		[1]: tbl_19_upvr (readonly)
	]]
	return tbl_19_upvr
end
local TableUtils_upvr = require(game.ReplicatedStorage.Modules.TableUtils)
function module_5_upvr.GetMutations(arg1) -- Line 2706
	--[[ Upvalues[2]:
		[1]: TableUtils_upvr (readonly)
		[2]: tbl_22_upvr (readonly)
	]]
	return TableUtils_upvr:DeepCopy(tbl_22_upvr)
end
function module_5_upvr.AddMutation(arg1, arg2, arg3) -- Line 2712
	if not arg2 then
		warn("MutationHandler:AddMutation | No plant")
	else
		arg2:SetAttribute(arg3.Name, true)
	end
end
function module_5_upvr.RemoveMutation(arg1, arg2, arg3) -- Line 2723
	if not arg2 then
		warn("MutationHandler:RemoveMutation | No plant")
	else
		arg2:SetAttribute(arg3.Name, nil)
	end
end
function module_5_upvr.GetPlantMutations(arg1, arg2) -- Line 2734
	--[[ Upvalues[1]:
		[1]: module_5_upvr (readonly)
	]]
	for _, v_152 in module_5_upvr:GetMutations() do
		if arg2:GetAttribute(v_152.Name) then
			table.insert({}, v_152)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
function module_5_upvr.GetPlantMutationsAsEnums(arg1, arg2) -- Line 2743
	--[[ Upvalues[1]:
		[1]: module_5_upvr (readonly)
	]]
	local module_4 = {}
	for _, v_153 in module_5_upvr:GetPlantMutations(arg2) do
		table.insert(module_4, v_153.Id)
	end
	return module_4
end
function module_5_upvr.GetMutationsAsString(arg1, arg2, arg3) -- Line 2754
	--[[ Upvalues[1]:
		[1]: tbl_22_upvr (readonly)
	]]
	local var1309
	for _, v_154 in tbl_22_upvr do
		local Name = v_154.Name
		if arg2:GetAttribute(Name) then
			if var1309 ~= "" then
				var1309 = var1309..", "
			end
			var1309 = var1309..Name
		end
	end
	if var1309 ~= "" and arg3 then
		var1309 = '['..var1309..']'
	end
	return var1309
end
function module_5_upvr.ExtractMutationsFromEnumArray(arg1, arg2) -- Line 2772
	--[[ Upvalues[2]:
		[1]: tbl_19_upvr (readonly)
		[2]: tbl_22_upvr (readonly)
	]]
	for _, v_155 in arg2 do
		local var1313 = tbl_19_upvr[v_155]
		if not var1313 then
			warn(`MutationHandler:ExtractMutationsFromEnumArray | Mutation does not exist for {v_155}`)
		else
			table.insert({}, tbl_22_upvr[var1313])
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
function module_5_upvr.ExtractMutationsFromString(arg1, arg2) -- Line 2788
	--[[ Upvalues[1]:
		[1]: module_5_upvr (readonly)
	]]
	local module_2 = {}
	if not arg2 or arg2 == "" then
		return module_2
	end
	for i_156 in string.gmatch(arg2:gsub("%[", ""):gsub("%]", ""):gsub("%s+", ""), "([^,]+)") do
		local var1327
		for _, v_156 in module_5_upvr:GetMutations() do
			if v_156.Name == i_156 then
				table.insert(module_2, v_156)
			end
		end
		if not nil then
			v_156 = i_156
			warn(`MutationHandler:ExtractMutationsFromString | Mutation name: {v_156} does not exist`)
		end
	end
	return module_2
end
function module_5_upvr.TransferMutations(arg1, arg2, arg3) -- Line 2817
	--[[ Upvalues[1]:
		[1]: module_5_upvr (readonly)
	]]
	for _, v_157 in module_5_upvr:GetMutations() do
		if arg2:GetAttribute(v_157.Name) then
			module_5_upvr:AddMutation(arg3, v_157)
			module_5_upvr:RemoveMutation(arg2, v_157)
		end
	end
	arg3:SetAttribute("WeightMulti", arg2:GetAttribute("WeightMulti") or 1)
end
function module_5_upvr.CalcValueMulti(arg1, arg2) -- Line 2829
	--[[ Upvalues[1]:
		[1]: module_5_upvr (readonly)
	]]
	local var1340
	for _, v_158 in module_5_upvr:GetMutations() do
		if arg2:GetAttribute(v_158.Name) then
			var1340 += v_158.ValueMulti - 1
		end
	end
	var1340 = math.max(1, var1340)
	return var1340
end
local Calculate_Weight_upvr = require(game.ReplicatedStorage.Calculate_Weight)
function module_5_upvr.SetToolName(arg1, arg2) -- Line 2845
	--[[ Upvalues[3]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: Calculate_Weight_upvr (readonly)
		[3]: module_5_upvr (readonly)
	]]
	if not arg2:IsA("Tool") then
	else
		task.spawn(function() -- Line 2848
			--[[ Upvalues[4]:
				[1]: ReplicatedStorage_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: Calculate_Weight_upvr (copied, readonly)
				[4]: module_5_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var1343
			if arg2:FindFirstChild("Item_String") then
				var1343 = arg2.Item_String.Value
			else
				var1343 = nil
			end
			local var1344
			if arg2:GetAttribute(require(ReplicatedStorage_upvr.Data.EnumRegistry.InventoryServiceEnums).OWNER) then
				local any_GetToolData_result1 = require(game:GetService("ServerScriptService").Modules.InventoryService):GetToolData(arg2)
				if not var1343 then
					var1343 = any_GetToolData_result1.ItemName
				end
				var1344 = any_GetToolData_result1.Variant or "Normal"
				local _ = any_GetToolData_result1.Seed
			else
				local Variant = arg2:WaitForChild("Variant", 0.3)
				if not Variant then return end
				local Item_Seed = arg2:WaitForChild("Item_Seed", 0.3)
				if not Item_Seed then return end
				var1344 = Variant.Value
			end
			if not var1344 or not Item_Seed.Value or not var1343 then
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				local var1349 = arg2
				local any_GetMutationsAsString_result1 = module_5_upvr:GetMutationsAsString(var1349)
				if var1344 and var1344 ~= "" and var1344 ~= "Normal" then
					if 0 < #any_GetMutationsAsString_result1 then
						var1349 = ", "
					else
						var1349 = ""
					end
					any_GetMutationsAsString_result1 = any_GetMutationsAsString_result1..var1349..var1344
				end
				local function INLINED_2() -- Internal function, doesn't exist in bytecode
					var1349 = `[{any_GetMutationsAsString_result1}] `
					return var1349
				end
				if any_GetMutationsAsString_result1 == "" or not INLINED_2() then
				end
				any_GetMutationsAsString_result1 = ""
				var1349 = any_GetMutationsAsString_result1..var1343.." ["..string.format("%.2f", Calculate_Weight_upvr.Calculate_Weight(Item_Seed.Value, var1343) * (arg2:GetAttribute("WeightMulti") or 1)).."kg]"
				arg2.Name = var1349
			end
		end)
	end
end
for _, v_159 in tbl_22_upvr do
	({})[v_159.Name] = v_159.Name
	local var1352_upvr
end
module_5_upvr.MutationNames = var1352_upvr
local tbl_26_upvr = {}
function module_5_upvr.CheckTimedPlants(arg1) -- Line 2902
	--[[ Upvalues[6]:
		[1]: tbl_26_upvr (readonly)
		[2]: GetPlayerFromPlant_upvr (readonly)
		[3]: FruitsEnums_upvr (readonly)
		[4]: PlantsEnums_upvr (readonly)
		[5]: module_5_upvr (readonly)
		[6]: tbl_22_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [138] 106. Error Block 26 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [138] 106. Error Block 26 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [18] 13. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [138.8]
	-- KONSTANTERROR: [18] 13. Error Block 2 end (CF ANALYSIS FAILED)
end
local function UpdateMutTimes_upvr(arg1) -- Line 2968, Named "UpdateMutTimes"
	--[[ Upvalues[6]:
		[1]: GetPlayerFromPlant_upvr (readonly)
		[2]: FruitsEnums_upvr (readonly)
		[3]: PlantsEnums_upvr (readonly)
		[4]: module_5_upvr (readonly)
		[5]: tbl_22_upvr (readonly)
		[6]: tbl_26_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 38 start (CF ANALYSIS FAILED)
	local var1381
	if arg1:IsA("Tool") then return end
	var1381 = game.ServerStorage
	var1381 = arg1
	local GetPlayerFromPlant_upvr_result1 = GetPlayerFromPlant_upvr(var1381)
	if not GetPlayerFromPlant_upvr_result1 then
		var1381 = warn
		var1381("No player for plant >", arg1)
		return
	end
	var1381 = require(var1381.Data_Module).GetFruitData(GetPlayerFromPlant_upvr_result1, arg1)
	local MutationTimes_2 = FruitsEnums_upvr.MutationTimes
	if not var1381 then
		var1381 = require(var1381.Data_Module).GetPlantData(GetPlayerFromPlant_upvr_result1, arg1)
		MutationTimes_2 = PlantsEnums_upvr.MutationTimes
	end
	if not var1381 then
		warn(`No Plant Data for {arg1:GetFullName()} >`, arg1)
		return
	end
	local var1385 = var1381[MutationTimes_2]
	if not var1385 then
		var1385 = {}
	end
	var1381[MutationTimes_2] = var1385
	for i_161, _ in var1381[MutationTimes_2] do
		local var1386 = module_5_upvr:GetEnumsToMutations()[i_161]
		if not arg1:GetAttribute(var1386) or not tbl_22_upvr[var1386].TimeData then
			var1381[MutationTimes_2][i_161] = nil
		end
	end
	for i_162, _ in arg1:GetAttributes() do
		local var1390 = tbl_22_upvr[i_162]
		if var1390 then
			if var1390.TimeData then
				local var1391 = module_5_upvr:GetMutationsToEnums()[i_162]
				if not var1381[MutationTimes_2][var1391] then
					var1381[MutationTimes_2][var1391] = math.floor(workspace:GetServerTimeNow())
				end
			end
		end
	end
	-- KONSTANTERROR: [0] 1. Error Block 38 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [128] 102. Error Block 25 start (CF ANALYSIS FAILED)
	tbl_26_upvr[arg1] = nil
	do
		return
	end
	-- KONSTANTERROR: [128] 102. Error Block 25 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [132] 106. Error Block 29 start (CF ANALYSIS FAILED)
	if not tbl_26_upvr[arg1] then
		tbl_26_upvr[arg1] = true
	end
	-- KONSTANTERROR: [132] 106. Error Block 29 end (CF ANALYSIS FAILED)
end
local tbl_9_upvr = {}
local function MutatableAdded(arg1) -- Line 3044
	--[[ Upvalues[8]:
		[1]: var1352_upvr (readonly)
		[2]: tbl_9_upvr (readonly)
		[3]: UpdateMutTimes_upvr (readonly)
		[4]: UpdateFX_upvr (readonly)
		[5]: module_5_upvr (readonly)
		[6]: tbl_26_upvr (readonly)
		[7]: tbl_56_upvr (readonly)
		[8]: tbl_28_upvr (readonly)
	]]
	if not arg1 then
		warn("MutationHandler.MutatableAdded | No plant")
	else
		local MutationCombos_upvr = require(script.MutationCombos)
		arg1.AttributeChanged:Connect(function(arg1_20) -- Line 3055
			--[[ Upvalues[7]:
				[1]: var1352_upvr (copied, readonly)
				[2]: tbl_9_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: UpdateMutTimes_upvr (copied, readonly)
				[5]: MutationCombos_upvr (readonly)
				[6]: UpdateFX_upvr (copied, readonly)
				[7]: module_5_upvr (copied, readonly)
			]]
			if not var1352_upvr[arg1_20] then
			else
				if tbl_9_upvr[arg1] then return end
				tbl_9_upvr[arg1] = true
				UpdateMutTimes_upvr(arg1)
				task.defer(function() -- Line 3062
					--[[ Upvalues[5]:
						[1]: MutationCombos_upvr (copied, readonly)
						[2]: arg1 (copied, readonly)
						[3]: UpdateFX_upvr (copied, readonly)
						[4]: module_5_upvr (copied, readonly)
						[5]: tbl_9_upvr (copied, readonly)
					]]
					MutationCombos_upvr:HandleCombos(arg1)
					UpdateFX_upvr(arg1)
					module_5_upvr:SetToolName(arg1)
					tbl_9_upvr[arg1] = nil
				end)
			end
		end)
		UpdateMutTimes_upvr(arg1)
		task.defer(function() -- Line 3074
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: UpdateFX_upvr (copied, readonly)
			]]
			while not arg1:GetAttribute("Frozen") and 0 < 2 do
				task.wait(0.05)
			end
			UpdateFX_upvr(arg1)
		end)
		module_5_upvr:SetToolName(arg1)
		arg1.Destroying:Once(function() -- Line 3087
			--[[ Upvalues[5]:
				[1]: tbl_9_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: tbl_26_upvr (copied, readonly)
				[4]: tbl_56_upvr (copied, readonly)
				[5]: tbl_28_upvr (copied, readonly)
			]]
			tbl_9_upvr[arg1] = nil
			tbl_26_upvr[arg1] = nil
			for _, v_170 in arg1:GetDescendants() do
				if v_170:IsA("BasePart") then
					tbl_56_upvr[v_170] = nil
					tbl_28_upvr[v_170] = nil
				end
			end
		end)
		arg1.DescendantRemoving:Connect(function(arg1_21) -- Line 3101
			--[[ Upvalues[2]:
				[1]: tbl_56_upvr (copied, readonly)
				[2]: tbl_28_upvr (copied, readonly)
			]]
			tbl_56_upvr[arg1_21] = nil
			tbl_28_upvr[arg1_21] = nil
		end)
	end
end
if RunService_upvr:IsServer() then
	CollectionService:GetInstanceAddedSignal("Harvestable"):Connect(MutatableAdded)
	CollectionService:GetInstanceAddedSignal("FruitTool"):Connect(MutatableAdded)
	CollectionService:GetInstanceAddedSignal("PlantScaled"):Connect(function(arg1) -- Line 3113
		--[[ Upvalues[2]:
			[1]: module_5_upvr (readonly)
			[2]: UpdateFX_upvr (readonly)
		]]
		if not module_5_upvr:CanBeMutated(arg1) then
		else
			if not arg1:IsA("Model") and not arg1:IsA("Tool") then return end
			UpdateFX_upvr(arg1)
			module_5_upvr:SetToolName(arg1)
		end
	end)
	task.spawn(function() -- Line 3124
		--[[ Upvalues[1]:
			[1]: module_5_upvr (readonly)
		]]
		while true do
			task.wait(60)
			xpcall(function() -- Line 3127
				--[[ Upvalues[1]:
					[1]: module_5_upvr (copied, readonly)
				]]
				module_5_upvr:CheckTimedPlants()
			end, warn)
		end
	end)
end
return module_5_upvr