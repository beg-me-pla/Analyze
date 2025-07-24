-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:57
-- Luau version 6, Types version 3
-- Time taken: 0.004330 seconds

local GearData_upvr = require(game.ReplicatedStorage.Data.GearData)
local SeedData_upvr = require(game:GetService("ReplicatedStorage").Data.SeedData)
local function NewCollectable(arg1) -- Line 5
	--[[ Upvalues[2]:
		[1]: SeedData_upvr (readonly)
		[2]: GearData_upvr (readonly)
	]]
	local RewardType_2 = arg1:GetAttribute("RewardType")
	if arg1:GetAttribute("Owner") ~= nil and arg1:GetAttribute("Owner") ~= game.Players.LocalPlayer.Name then
	else
		local clone_2_upvr = game.ReplicatedStorage.RewardDropVisual:Clone()
		clone_2_upvr.Value.Value = arg1
		for i_5, v_5 in clone_2_upvr.BillboardGui:GetChildren() do
			v_5.Visible = false
		end
		if RewardType_2 == "Coins" then
			if arg1:GetAttribute("SheckleRain") then
				i_5 = 255
				v_5 = 204
				clone_2_upvr.Trail.Color = ColorSequence.new(Color3.fromRGB(i_5, v_5, 0))
			end
			clone_2_upvr.BillboardGui.Coins.Visible = true
		elseif RewardType_2 == "Seeds" then
			v_5 = "KeySeed"
			if SeedData_upvr[arg1:GetAttribute(v_5)] then
				i_5 = SeedData_upvr
				v_5 = arg1:GetAttribute("KeySeed")
				clone_2_upvr.BillboardGui.Seeds.SeedColour.Image = i_5[v_5].FruitIcon
			end
			clone_2_upvr.BillboardGui.Seeds.Visible = true
		elseif RewardType_2 == "SeedPack" then
			task.spawn(function() -- Line 31
				--[[ Upvalues[1]:
					[1]: clone_2_upvr (readonly)
				]]
				while clone_2_upvr.Value.Value and clone_2_upvr.Value.Value:IsDescendantOf(workspace) do
					clone_2_upvr.BillboardGui.Seeds.SeedColour.ImageColor3 = Color3.fromHSV(tick() % 2 / 2, 1, 1)
					task.wait()
				end
			end)
			clone_2_upvr.BillboardGui.Seeds.Visible = true
		elseif RewardType_2 == "Items" then
			v_5 = "GearName"
			if GearData_upvr[arg1:GetAttribute(v_5)] then
				i_5 = GearData_upvr
				v_5 = arg1:GetAttribute("GearName")
				clone_2_upvr.BillboardGui.Gear.Image = i_5[v_5].Asset
			end
			clone_2_upvr.BillboardGui.Gear.Visible = true
		end
		clone_2_upvr.CFrame = CFrame.new(arg1.CFrame.p) * CFrame.new(0, 0.5, 0)
		clone_2_upvr.Parent = workspace
		clone_2_upvr:AddTag("CollectionVisual")
	end
end
task.spawn(function() -- Line 55
	while true do
		for _, v in game.CollectionService:GetTagged("CollectionVisual") do
			if v.Value.Value == nil or not v.Value.Value:IsDescendantOf(workspace) then
				v:Destroy()
			else
				table.insert({}, CFrame.new(v.Value.Value.CFrame.Position) * CFrame.new(0, (math.sin(tick() * math.pi) + 1) / 2 * 1 + 0.5, 0))
				table.insert({}, v)
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		workspace:BulkMoveTo({}, {}, Enum.BulkMoveMode.FireCFrameChanged)
	end
end)
for _, v_2 in game.CollectionService:GetTagged("Collectable") do
	NewCollectable(v_2)
end
game.CollectionService:GetInstanceAddedSignal("Collectable"):Connect(NewCollectable)
local function NewVisualDrop_upvr(arg1) -- Line 85, Named "NewVisualDrop"
	--[[ Upvalues[2]:
		[1]: SeedData_upvr (readonly)
		[2]: GearData_upvr (readonly)
	]]
	local RewardType = arg1.RewardType
	local clone_upvr = game.ReplicatedStorage.RewardDropVisual:Clone()
	for i_3, v_3 in clone_upvr.BillboardGui:GetChildren() do
		v_3.Visible = false
	end
	if RewardType == "Coins" then
		clone_upvr.BillboardGui.Coins.Visible = true
		return clone_upvr
	end
	if RewardType == "Seeds" then
		if SeedData_upvr[arg1.KeySeed] then
			i_3 = SeedData_upvr
			v_3 = arg1.KeySeed
			clone_upvr.BillboardGui.Seeds.SeedColour.Image = i_3[v_3].FruitIcon
		end
		clone_upvr.BillboardGui.Seeds.Visible = true
		return clone_upvr
	end
	if RewardType == "SeedPack" then
		task.spawn(function() -- Line 103
			--[[ Upvalues[1]:
				[1]: clone_upvr (readonly)
			]]
			while clone_upvr and clone_upvr:IsDescendantOf(workspace) do
				clone_upvr.BillboardGui.Seeds.SeedColour.ImageColor3 = Color3.fromHSV(tick() % 2 / 2, 1, 1)
				task.wait()
			end
		end)
		clone_upvr.BillboardGui.Seeds.Visible = true
		return clone_upvr
	end
	if RewardType == "Items" then
		if GearData_upvr[arg1.GearName] then
			i_3 = GearData_upvr
			v_3 = arg1.GearName
			clone_upvr.BillboardGui.Gear.Image = i_3[v_3].Asset
		end
		clone_upvr.BillboardGui.Gear.Visible = true
	end
	return clone_upvr
end
local Bezier_upvr = require(game.ReplicatedStorage.Code.Bezier)
game.ReplicatedStorage.GameEvents.FireDrop.OnClientEvent:Connect(function(arg1, arg2) -- Line 126
	--[[ Upvalues[2]:
		[1]: NewVisualDrop_upvr (readonly)
		[2]: Bezier_upvr (readonly)
	]]
	local NewVisualDrop_upvr_result1 = NewVisualDrop_upvr(arg1)
	NewVisualDrop_upvr_result1.CFrame = arg2
	NewVisualDrop_upvr_result1.Parent = workspace
	local var37 = 0
	while var37 < 0.5 do
		local Position = game.Players.LocalPlayer.Character.PrimaryPart.Position
		NewVisualDrop_upvr_result1.CFrame = CFrame.new(Bezier_upvr.new(arg2.Position, (arg2.p + Position) / 2 + Vector3.new(0, arg2.p.Y + 7, 0), Position):Get(game.TweenService:GetValue((var37 + game:GetService("RunService").Heartbeat:Wait()) / 0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)))
	end
	NewVisualDrop_upvr_result1:Destroy()
	local clone = game.Workspace.Terrain.PopEffect:Clone()
	clone.Parent = workspace.Terrain
	clone.CFrame = CFrame.new(game.Players.LocalPlayer.Character.PrimaryPart.Position)
	for _, v_4 in clone:GetChildren() do
		v_4:Emit(1)
	end
	game.Debris:AddItem(clone, 2)
	game.SoundService:PlayLocalSound(game.SoundService.Rainbow)
end)