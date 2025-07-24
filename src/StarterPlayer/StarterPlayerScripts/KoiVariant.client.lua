-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:33:09
-- Luau version 6, Types version 3
-- Time taken: 0.006505 seconds

local CollectionService_upvr = game:GetService("CollectionService")
local function _(arg1, arg2) -- Line 7, Named "GetVariantFromSeed"
	local var8 = 0
	for i = 1, #arg1 do
		var8 += string.byte(arg1, i)
	end
	return arg2[var8 % #arg2 + 1]
end
local function ApplyKoiSkin_upvr(arg1, arg2) -- Line 16, Named "ApplyKoiSkin"
	for _, v in arg1:GetDescendants() do
		if v:IsA("BasePart") then
			local SOME_2 = arg2:FindFirstChild(v.Name, true)
			if SOME_2 and SOME_2:IsA("BasePart") then
				v.Color = SOME_2.Color
				v.Material = SOME_2.Material
				for _, v_2 in v:GetChildren() do
					if v_2:IsA("Decal") then
						local SOME = SOME_2:FindFirstChild(v_2.Name)
						if SOME and SOME:IsA("Decal") then
							v_2.Color3 = SOME.Color3
						end
					end
				end
			end
		end
	end
end
local function ApplyRareModifiers_upvr(arg1, arg2) -- Line 37, Named "ApplyRareModifiers"
	local function _(arg1_2) -- Line 38, Named "GetRareHash"
		local var45 = 0
		for i_4 = 1, #arg1_2 do
			var45 = (var45 * 31 + string.byte(arg1_2, i_4)) % 10000000
		end
		return var45
	end
	local var46 = 0
	for i_5 = 1, #arg2 do
		var46 = (var46 * 31 + string.byte(arg2, i_5)) % 10000000
	end
	local var47 = var46
	var46 = var47 % 1000000
	if var46 == 0 then
		var46 = arg1:GetDescendants()
		local descendants, NONE, NONE_5 = arg1:GetDescendants()
		for i_6, v_3 in descendants, NONE, NONE_5 do
			if v_3:IsA("BasePart") then
				v_3.Transparency = 0.5
				v_3.Material = "ForceField"
			end
		end
	else
		descendants = var47 % 1000000
		if descendants == 1 then
			descendants = arg1.PrimaryPart
			if not descendants then
				descendants = arg1:FindFirstChildWhichIsA("BasePart")
			end
			if descendants then
				i_6 = descendants.CFrame
				arg1:PivotTo(i_6)
				i_6 = 3
				arg1:ScaleTo(i_6)
			end
		end
	end
end
local function _(arg1) -- Line 66, Named "FindKoiUUID"
	if arg1.Name == "Koi" and arg1.Parent and arg1.Parent.Parent then
		local Parent_5 = arg1.Parent.Parent
		if Parent_5:IsA("Tool") then
			local PET_UUID_2 = Parent_5:GetAttribute("PET_UUID")
			if typeof(PET_UUID_2) == "string" then
				return PET_UUID_2
			end
		end
	end
	return arg1.Name
end
local children_3_upvr = game:GetService("ReplicatedStorage"):WaitForChild("Skins"):WaitForChild("Koi Variants"):GetChildren()
local function TryApplyKoiSkin_upvr(arg1) -- Line 80, Named "TryApplyKoiSkin"
	--[[ Upvalues[4]:
		[1]: CollectionService_upvr (readonly)
		[2]: children_3_upvr (readonly)
		[3]: ApplyKoiSkin_upvr (readonly)
		[4]: ApplyRareModifiers_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if CollectionService_upvr:HasTag(arg1, "KoiVariantColored") then
	else
		local var76
		if arg1.Name == "Koi" and arg1.Parent then
			if arg1.Parent.Parent then
				local Parent = arg1.Parent.Parent
				if Parent:IsA("Tool") then
					var76 = typeof(Parent:GetAttribute("PET_UUID"))
					if var76 == "string" then
						-- KONSTANTWARNING: GOTO [44] #32
					end
				end
			end
		end
		local Name = arg1.Name
		if not Name then return end
		if #children_3_upvr == 0 then
			warn("No koi variants found in folder")
			return
		end
		local var80 = children_3_upvr
		var76 = 0
		for i_8 = 1, #Name do
			var76 += string.byte(Name, i_8)
			local var81
		end
		var76 = arg1
		ApplyKoiSkin_upvr(var76, var80[var76 % #var80 + 1])
		var76 = arg1
		ApplyRareModifiers_upvr(var76, var81)
		CollectionService_upvr:AddTag(arg1, "KoiVariantColored")
	end
end
for _, v_4 in CollectionService_upvr:GetTagged("KoiVariant") do
	TryApplyKoiSkin_upvr(v_4)
end
CollectionService_upvr:GetInstanceAddedSignal("KoiVariant"):Connect(function(arg1) -- Line 103
	--[[ Upvalues[1]:
		[1]: TryApplyKoiSkin_upvr (readonly)
	]]
	if typeof(arg1) == "Instance" and arg1:IsA("Model") then
		TryApplyKoiSkin_upvr(arg1)
	end
end)