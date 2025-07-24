-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:58
-- Luau version 6, Types version 3
-- Time taken: 0.006154 seconds

local Plant = script.Parent.Plant
local Base_upvr = Plant.Base
local function _(arg1) -- Line 17, Named "SetHeight"
	--[[ Upvalues[1]:
		[1]: Base_upvr (readonly)
	]]
	Base_upvr.Size = Vector3.new(1, arg1, 1)
	local var28 = Base_upvr
	var28.Position += Vector3.new(0, (Base_upvr.Size.Y - Base_upvr.Size.Y) * 0.5, 0)
end
Base_upvr.Size = Vector3.new(1, 0.15000, 1)
Base_upvr.Position += Vector3.new(0, (Base_upvr.Size.Y - Base_upvr.Size.Y) * 0.5, 0)
local random_state_upvw = Random.new(script.Parent.Item_Seed.Value)
local var30_upvw = 100
local var31_upvw = 0
local var32_upvw = 0
Base_upvr.Name = tostring(var32_upvw)
local tbl_upvr = {}
local Age_upvr = script.Parent.Grow.Age
local function Wait_Until_Grown_upvr(arg1) -- Line 38, Named "Wait_Until_Grown"
	--[[ Upvalues[7]:
		[1]: Age_upvr (readonly)
		[2]: random_state_upvw (read and write)
		[3]: var32_upvw (read and write)
		[4]: var31_upvw (read and write)
		[5]: var30_upvw (read and write)
		[6]: Base_upvr (readonly)
		[7]: tbl_upvr (readonly)
	]]
	while Age_upvr.Value < arg1 do
		Age_upvr.Changed:Wait()
		if Age_upvr.Value < Age_upvr.Value then
			random_state_upvw = Random.new(script.Parent.Item_Seed.Value)
			var32_upvw = 0
			var31_upvw = 0
			var30_upvw = 100
			Base_upvr.Size = Vector3.new(1, 0.15000, 1)
			local var37 = Base_upvr
			var37.Position += Vector3.new(0, (Base_upvr.Size.Y - Base_upvr.Size.Y) * 0.5, 0)
			for _, v_upvr in tbl_upvr do
				pcall(function() -- Line 50
					--[[ Upvalues[1]:
						[1]: v_upvr (readonly)
					]]
					v_upvr:Destroy()
				end)
			end
			table.clear(tbl_upvr)
			return false
		end
	end
	return true
end
local function _(arg1) -- Line 64, Named "Increase_Requirement"
	--[[ Upvalues[2]:
		[1]: var32_upvw (read and write)
		[2]: Wait_Until_Grown_upvr (readonly)
	]]
	var32_upvw += arg1
	return Wait_Until_Grown_upvr(var32_upvw)
end
while 1 <= var30_upvw do
	task.wait()
	var30_upvw -= 1
	var32_upvw += 1
	local var39 = var32_upvw
	if Wait_Until_Grown_upvr(var39) then
		local var40 = (1 - var30_upvw / 100) * 500
		Base_upvr.Size = Vector3.new(1, var40, 1)
		Base_upvr.Position += Vector3.new(0, (Base_upvr.Size.Y - Base_upvr.Size.Y) * 0.5, 0)
		var39 += 1
		local var41 = var39
		if Wait_Until_Grown_upvr(var41) then
			local clone_3 = Base_upvr:Clone()
			clone_3.CanCollide = true
			clone_3.Name = tostring(var41)
			clone_3.Size = Vector3.new(0.75, random_state_upvw:NextInteger(7, 11), 0.75)
			clone_3.Position = Vector3.new(Base_upvr.Position.X, (Base_upvr.Position - Vector3.new(0, Base_upvr.Size.Y / 2, 0)).Y + var40, Base_upvr.Position.Z)
			clone_3.CFrame *= CFrame.new(0, 0, clone_3.Size.Y / 2) * CFrame.Angles((math.pi/2), 0, 0)
			clone_3.CFrame = clone_3.CFrame * CFrame.new(0, -clone_3.Size.Y / 2, 0) * CFrame.Angles(0, 0, math.rad(random_state_upvw:NextInteger(0, 360))) * CFrame.Angles(math.rad(-random_state_upvw:NextInteger(30, 45)), 0, 0) * CFrame.new(0, clone_3.Size.Y / 2, 0)
			table.insert(tbl_upvr, clone_3)
			clone_3.Parent = script.Parent.Plant
			var41 += 1
			local var43 = var41
			if Wait_Until_Grown_upvr(var43) then
				var31_upvw += 1
				local var44 = var31_upvw
				local clone_6 = clone_3:Clone()
				clone_6.CanCollide = true
				clone_6.Size = Vector3.new(2, 1, 2)
				clone_6.CFrame = clone_3.CFrame * CFrame.new(0, clone_3.Size.Y / 2, 0)
				clone_6.Color = Color3.new(1, 1, 0)
				clone_6.Name = tostring(var43)
				table.insert(tbl_upvr, clone_6)
				clone_6.Parent = script.Parent
				var43 += 1
				local var46 = var43
				if Wait_Until_Grown_upvr(var46) then
					local clone = clone_6:Clone()
					clone.Name = tostring(var46)
					clone.CanCollide = true
					clone.CFrame = clone_6.CFrame * CFrame.new(clone_6.Size.X / 2 + clone.Size.X / 2, 0, 0)
					clone.Color = Color3.fromHSV(var44 % 10 * 0.1, 1, 1)
					table.insert(tbl_upvr, clone)
					clone.Parent = script.Parent
					local clone_11 = clone_6:Clone()
					clone_11.Name = tostring(var46)
					clone_11.CanCollide = true
					clone_11.CFrame = clone_6.CFrame * CFrame.new(-(clone_6.Size.X / 2 + clone.Size.X / 2), 0, 0)
					clone_11.Color = Color3.fromHSV(var44 % 10 * 0.1, 1, 1)
					table.insert(tbl_upvr, clone_11)
					clone_11.Parent = script.Parent
					local clone_4 = clone_6:Clone()
					clone_4.Name = tostring(var46)
					clone_4.CanCollide = true
					clone_4.CFrame = clone_6.CFrame * CFrame.new(0, 0, -(clone_6.Size.Z / 2 + clone.Size.Z / 2))
					clone_4.Color = Color3.fromHSV(var44 % 10 * 0.1, 1, 1)
					table.insert(tbl_upvr, clone_4)
					clone_4.Parent = script.Parent
					local clone_2 = clone_6:Clone()
					clone_2.Name = tostring(var46)
					clone_2.CanCollide = true
					clone_2.CFrame = clone_6.CFrame * CFrame.new(0, 0, clone_6.Size.Z / 2 + clone.Size.Z / 2)
					clone_2.Color = Color3.fromHSV(var44 % 10 * 0.1, 1, 1)
					table.insert(tbl_upvr, clone_2)
					clone_2.Parent = script.Parent
				end
			end
		end
	end
end
Plant:AddTag("PotGenerated")