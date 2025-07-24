-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:35
-- Luau version 6, Types version 3
-- Time taken: 0.002047 seconds

local module = {}
local function CloneVisualsFromTool_upvr(arg1) -- Line 6, Named "CloneVisualsFromTool"
	for _, v in arg1:GetDescendants() do
		if v:IsA("BasePart") or v:IsA("MeshPart") or v:IsA("UnionOperation") then
			local clone = v:Clone()
			for _, v_2 in ipairs(clone:GetChildren()) do
				if not v_2:IsA("BasePart") and not v_2:IsA("MeshPart") and not v_2:IsA("UnionOperation") then
					v_2:Destroy()
				end
			end
			clone.Anchored = true
			clone.CanCollide = false
			clone.CanTouch = false
			clone.CanQuery = false
			clone.Parent = Instance.new("Model")
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return Instance.new("Model")
end
function module.DisplayToolModel(arg1, arg2, arg3) -- Line 30
	--[[ Upvalues[1]:
		[1]: CloneVisualsFromTool_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if arg2 then
	end
	assert(arg2:IsA("Tool"), "Invalid Tool")
	if typeof(arg3) ~= "CFrame" then
	else
	end
	assert(true, "Invalid Position")
	local CloneVisualsFromTool_result1 = CloneVisualsFromTool_upvr(arg2)
	CloneVisualsFromTool_result1.Name = `Display_{arg2.Name}_{tick()}`
	local Handle = CloneVisualsFromTool_result1:FindFirstChild("Handle")
	if not Handle then
		Handle = CloneVisualsFromTool_result1:FindFirstChildWhichIsA("BasePart")
	end
	if not Handle then
		CloneVisualsFromTool_result1:Destroy()
	else
		CloneVisualsFromTool_result1.PrimaryPart = Handle
		local _, any_GetBoundingBox_result2 = CloneVisualsFromTool_result1:GetBoundingBox()
		CloneVisualsFromTool_result1:SetPrimaryPartCFrame(arg3 + Vector3.new(0, any_GetBoundingBox_result2.Y / 2 + 0.2, 0))
	end
end
function module.PreviewCloneModel(arg1, arg2) -- Line 52
	--[[ Upvalues[1]:
		[1]: CloneVisualsFromTool_upvr (readonly)
	]]
	if not arg2 or not arg2:IsA("Tool") then return end
	local CloneVisualsFromTool_result1_2 = CloneVisualsFromTool_upvr(arg2)
	if #CloneVisualsFromTool_result1_2:GetChildren() == 0 then
		CloneVisualsFromTool_result1_2:Destroy()
		return nil
	end
	CloneVisualsFromTool_result1_2.Parent = workspace
	return CloneVisualsFromTool_result1_2
end
return module