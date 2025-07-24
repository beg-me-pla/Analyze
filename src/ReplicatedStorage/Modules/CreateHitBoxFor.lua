-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:34
-- Luau version 6, Types version 3
-- Time taken: 0.003905 seconds

local tbl_upvr = {
	Properties = {
		Name = "HitBox";
		CanCollide = false;
		CanQuery = true;
		Transparency = 1;
		Anchored = true;
		Color = Color3.fromRGB(255, 0, 0);
	};
	Tags = {"CosmeticHitBox"};
}
local Name_upvr = tbl_upvr.Properties.Name
local function CreateExactBoundingBox_upvr(arg1) -- Line 17, Named "CreateExactBoundingBox"
	--[[ Upvalues[1]:
		[1]: Name_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var21
	if not arg1:IsA("Model") then
		var21 = arg1
		warn("Expected a Model, got:", var21)
		return
	end
	local var23 = -Vector3.new(1, 1, 1) * math.huge
	var21 = 0
	local descendants = arg1:GetDescendants()
	if #descendants == 0 then return end
	for _, v in descendants do
		if v:IsA("BasePart") and v.Name ~= Name_upvr then
			local CFrame = v.CFrame
			local Size = v.Size
			local var27 = Size.X / 2
			local var28 = Size.Y / 2
			local var29 = Size.Z / 2
			local var30 = -var27
			local var31 = -var28
			local var32 = -var29
			for _, v_2 in {CFrame * Vector3.new(var30, var31, var32), CFrame * Vector3.new(var27, var31, var32), CFrame * Vector3.new(var30, var28, var32), CFrame * Vector3.new(var27, var28, var32), CFrame * Vector3.new(var30, var31, var29), CFrame * Vector3.new(var27, var31, var29), CFrame * Vector3.new(var30, var28, var29), CFrame * Vector3.new(var27, var28, var29)} do
				local var34
			end
			var21 += 1
		end
	end
	if var21 == 0 then return end
	return var34, Vector3.new(math.max(var23.X, v_2.X), math.max(var23.Y, v_2.Y), math.max(var23.Z, v_2.Z))
end
return function(arg1) -- Line 73, Named "AssignHitBox"
	--[[ Upvalues[3]:
		[1]: CreateExactBoundingBox_upvr (readonly)
		[2]: Name_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if not arg1:IsA("Model") then
		warn("Expected a Model, got:", arg1)
		return
	end
	local HitBox = arg1:FindFirstChild("HitBox")
	if not HitBox then
		HitBox = arg1:FindFirstChild("Hitbox")
	end
	local CreateExactBoundingBox_result1, CreateExactBoundingBox_upvr_result2 = CreateExactBoundingBox_upvr(arg1)
	if not CreateExactBoundingBox_result1 then
		warn("No valid parts found in model:", arg1.Name)
		return
	end
	local var54 = HitBox
	if not var54 then
		var54 = Instance.new("Part")
	end
	local var55 = var54
	var55.Name = Name_upvr
	var55.Size = CreateExactBoundingBox_upvr_result2 - CreateExactBoundingBox_result1
	var55.CFrame = CFrame.new((CreateExactBoundingBox_result1 + CreateExactBoundingBox_upvr_result2) / 2)
	for i_3, v_3 in tbl_upvr.Properties do
		var55[i_3] = v_3
		local var56
	end
	for _, v_4 in tbl_upvr.Tags do
		var56:AddTag(v_4)
		local var57
	end
	var57.Parent = arg1
	arg1.PrimaryPart = var57
	return var57
end