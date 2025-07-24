-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:33:07
-- Luau version 6, Types version 3
-- Time taken: 0.006473 seconds

local BeeSwarmBee_upvr = workspace:FindFirstChild("BeeSwarmBee", true)
if not BeeSwarmBee_upvr then
	BeeSwarmBee_upvr = game.ReplicatedStorage.Modules.UpdateService:FindFirstChild("BeeSwarmBee", true)
end
local BeeSwarmhive_upvr = workspace:FindFirstChild("BeeSwarmhive", true)
if not BeeSwarmhive_upvr then
	BeeSwarmhive_upvr = game.ReplicatedStorage.Modules.UpdateService:FindFirstChild("BeeSwarmhive", true)
end
local Terrain = game.Workspace.Terrain
if game:GetService("UserInputService").TouchEnabled then
	Terrain = "Mobile"
else
	Terrain = "PC"
end
local SkyboxManager_upvr = require(game.ReplicatedStorage.Modules.SkyboxManager)
local clone_2_upvr = game.Lighting.ColorCorrection:Clone()
clone_2_upvr.Name = script.Name
clone_2_upvr.Parent = game.Lighting
local var6_upvw = false
local Sky_upvr = script.Sky
SkyboxManager_upvr.AddSkybox(Sky_upvr, 0)
local Sky2_upvr = script.Sky2
SkyboxManager_upvr.AddSkybox(Sky2_upvr, 0)
local function CreateEvent_upvr(arg1) -- Line 28, Named "CreateEvent"
	--[[ Upvalues[5]:
		[1]: var6_upvw (read and write)
		[2]: SkyboxManager_upvr (readonly)
		[3]: Sky2_upvr (readonly)
		[4]: Sky_upvr (readonly)
		[5]: clone_2_upvr (readonly)
	]]
	if var6_upvw == true then
	else
		var6_upvw = true
		if workspace:GetAttribute("WorkingBeeSwarm") then
			SkyboxManager_upvr.UpdateSkybox(Sky2_upvr, 1.5)
		else
			SkyboxManager_upvr.UpdateSkybox(Sky_upvr, 1.5)
		end
		game.TweenService:Create(game.Lighting, TweenInfo.new(3), {
			Ambient = Color3.fromRGB(222, 187, 117);
			ExposureCompensation = 0.425;
			Brightness = 0.7;
		}):Play()
		game.TweenService:Create(clone_2_upvr, TweenInfo.new(3), {
			Brightness = 0.1;
			TintColor = Color3.fromRGB(217, 204, 179);
		}):Play()
		game.Workspace.Terrain.Clouds.Enabled = true
		game.Workspace.Terrain.Clouds.Color = Color3.fromRGB(255, 163, 33)
		game.TweenService:Create(game.Workspace.Terrain.Clouds, TweenInfo.new(3), {
			Cover = 0.905;
			Density = 0.083;
		}):Play()
		if arg1 then return end
	end
end
local function ResetEvent_upvr(arg1) -- Line 72, Named "ResetEvent"
	--[[ Upvalues[5]:
		[1]: var6_upvw (read and write)
		[2]: SkyboxManager_upvr (readonly)
		[3]: Sky_upvr (readonly)
		[4]: Sky2_upvr (readonly)
		[5]: clone_2_upvr (readonly)
	]]
	if var6_upvw == false then
	else
		SkyboxManager_upvr.UpdateSkybox(Sky_upvr, 0)
		SkyboxManager_upvr.UpdateSkybox(Sky2_upvr, 0)
		var6_upvw = false
		game.TweenService:Create(clone_2_upvr, TweenInfo.new(3), {
			Brightness = 0;
			TintColor = Color3.fromRGB(255, 255, 255);
		}):Play()
		game.TweenService:Create(game.Lighting, TweenInfo.new(3), {
			Ambient = game.Lighting:GetAttribute("DefaultAmbient");
			ExposureCompensation = game.Lighting:GetAttribute("DefaultExposure");
			Brightness = game.Lighting:GetAttribute("DefaultBrightness");
		}):Play()
		game.TweenService:Create(game.Workspace.Terrain.Clouds, TweenInfo.new(3), {
			Cover = 0;
			Density = 0;
		}):Play()
		task.delay(3, function() -- Line 98
			game.Workspace.Terrain.Clouds.Enabled = false
			game.Workspace.Terrain.Clouds.Color = Color3.fromRGB(22, 40, 70)
		end)
		if arg1 then return end
	end
end
if Terrain == "Mobile" then
	-- KONSTANTWARNING: GOTO [164] #107
end
local function getClosestPointOnPartSurface_upvr(arg1, arg2, arg3) -- Line 116, Named "getClosestPointOnPartSurface"
	local any_PointToObjectSpace_result1 = arg1:PointToObjectSpace(arg3)
	local var17 = arg2.X / 2 - math.abs(any_PointToObjectSpace_result1.X)
	local var18 = arg2.Y / 2 - math.abs(any_PointToObjectSpace_result1.Y)
	local var19 = arg2.Z / 2 - math.abs(any_PointToObjectSpace_result1.Z)
	local var20
	if var17 <= var18 and var17 <= var19 then
		var20 = Vector3.new(math.sign(any_PointToObjectSpace_result1.X) * arg2.X / 2, math.clamp(any_PointToObjectSpace_result1.Y, -arg2.Y / 2, arg2.Y / 2), math.clamp(any_PointToObjectSpace_result1.Z, -arg2.Z / 2, arg2.Z / 2))
	elseif var18 <= var17 and var18 <= var19 then
		var20 = Vector3.new(math.clamp(any_PointToObjectSpace_result1.X, -arg2.X / 2, arg2.X / 2), math.sign(any_PointToObjectSpace_result1.Y) * arg2.Y / 2, math.clamp(any_PointToObjectSpace_result1.Z, -arg2.Z / 2, arg2.Z / 2))
	elseif var19 <= var17 and var19 <= var18 then
		var20 = Vector3.new(math.clamp(any_PointToObjectSpace_result1.X, -arg2.X / 2, arg2.X / 2), math.clamp(any_PointToObjectSpace_result1.Y, -arg2.Y / 2, arg2.Y / 2), math.sign(any_PointToObjectSpace_result1.Z) * arg2.Z / 2)
	end
	return arg1:PointToWorldSpace(var20)
end
local Bezier_upvr = require(game.ReplicatedStorage.Code.Bezier)
local const_number_2_upvr = 0.015
local BeePollinate_upvr = Terrain.BeePollinate
game.ReplicatedStorage.GameEvents.SwarmFly.OnClientEvent:Connect(function(arg1, arg2, arg3) -- Line 131
	--[[ Upvalues[6]:
		[1]: BeeSwarmBee_upvr (readonly)
		[2]: BeeSwarmhive_upvr (readonly)
		[3]: getClosestPointOnPartSurface_upvr (readonly)
		[4]: Bezier_upvr (readonly)
		[5]: const_number_2_upvr (readonly)
		[6]: BeePollinate_upvr (readonly)
	]]
	local clone = BeeSwarmBee_upvr:Clone()
	if workspace:GetAttribute("WorkingBeeSwarm") then
		clone:FindFirstChild("WorkerHat").Transparency = 0
		clone.Torso.Color = Color3.fromHSV(Random.new():NextInteger(1, 359) / 359, 0.7450980392156863, 1)
	end
	clone.Parent = workspace
	local any_LoadAnimation_result1_2 = clone.AnimationController:LoadAnimation(game.ReplicatedStorage.Assets.Animations.PetAnimations.Bee.Idle)
	local any_LoadAnimation_result1 = clone.AnimationController:LoadAnimation(game.ReplicatedStorage.Assets.Animations.PetAnimations.Bee.Pollinate)
	any_LoadAnimation_result1_2:Play()
	local Position = BeeSwarmhive_upvr.PrimaryPart.Position
	local any_GetBoundingBox_result1, any_GetBoundingBox_result2 = arg1:GetBoundingBox()
	local getClosestPointOnPartSurface_result1 = getClosestPointOnPartSurface_upvr(any_GetBoundingBox_result1, any_GetBoundingBox_result2, Position)
	local var38 = CFrame.new(getClosestPointOnPartSurface_result1, Position).LookVector * 0.95
	local const_number_3 = 0
	local var40 = (game.ReplicatedStorage.Assets.BeeEntrance['2'].Position + arg1.PrimaryPart.Position) / 2 + Vector3.new(0, 5, 0)
	for i, v in BeeSwarmhive_upvr.BeeEmitter.BeeReleased:GetChildren() do
		if v:IsA("ParticleEmitter") then
			v:Emit(v:GetAttribute("EmitCount"))
		end
	end
	while const_number_3 < arg3 do
		i = "TweenService"
		i = (const_number_3 + task.wait(const_number_2_upvr)) / arg3
		v = Enum.EasingStyle.Quad
		v = "TweenService"
		v = const_number_3 / arg3
		i = Bezier_upvr.new(table.unpack({game.ReplicatedStorage.Assets.BeeEntrance['1'].Position, game.ReplicatedStorage.Assets.BeeEntrance['2'].Position, game.ReplicatedStorage.Assets.BeeEntrance['3'].Position, var40, getClosestPointOnPartSurface_result1 + var38})):Get(game:GetService(v):GetValue(v, Enum.EasingStyle.Quad, Enum.EasingDirection.Out))
		v = Bezier_upvr.new(table.unpack({game.ReplicatedStorage.Assets.BeeEntrance['1'].Position, game.ReplicatedStorage.Assets.BeeEntrance['2'].Position, game.ReplicatedStorage.Assets.BeeEntrance['3'].Position, var40, getClosestPointOnPartSurface_result1 + var38})):Get(game:GetService(i):GetValue(i, v, Enum.EasingDirection.Out))
		clone:PivotTo(CFrame.new(i, v))
	end
	clone:PivotTo(CFrame.new(getClosestPointOnPartSurface_result1 + var38, getClosestPointOnPartSurface_result1))
	any_LoadAnimation_result1_2:Stop()
	any_LoadAnimation_result1:Play()
	task.wait(any_LoadAnimation_result1.Length + 2)
	any_LoadAnimation_result1:Stop()
	any_LoadAnimation_result1_2:Play()
	task.wait(1)
	BeePollinate_upvr.WorldPosition = getClosestPointOnPartSurface_result1
	for _, v_2 in BeePollinate_upvr:GetChildren() do
		v_2:Emit(v_2:GetAttribute("EmitCount"))
	end
	local any_new_result1 = Bezier_upvr.new(table.unpack({game.ReplicatedStorage.Assets.BeeEntrance['1'].Position, game.ReplicatedStorage.Assets.BeeEntrance['2'].Position, game.ReplicatedStorage.Assets.BeeEntrance['3'].Position, var40, getClosestPointOnPartSurface_result1 + var38})).new(table.unpack({getClosestPointOnPartSurface_result1 + var38, var40, game.ReplicatedStorage.Assets.BeeEntrance['3'].Position, game.ReplicatedStorage.Assets.BeeEntrance['2'].Position, game.ReplicatedStorage.Assets.BeeEntrance['1'].Position, BeeSwarmhive_upvr.PrimaryPart.Position}))
	local const_number = 0
	while const_number < arg3 do
		local any_GetValue_result1 = game:GetService("TweenService"):GetValue((const_number + task.wait(const_number_2_upvr)) / arg3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
		clone:PivotTo(CFrame.new(any_new_result1:Get(game:GetService("TweenService"):GetValue(const_number / arg3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)), any_new_result1:Get(any_GetValue_result1)))
		if false == false and 0.8 < any_GetValue_result1 then
			for _, v_3 in BeeSwarmhive_upvr.BeeEmitter.BeeReleased:GetChildren() do
				if v_3:IsA("ParticleEmitter") then
					v_3:Emit(v_3:GetAttribute("EmitCount"))
				end
			end
		end
	end
	clone:Destroy()
end)
workspace:GetAttributeChangedSignal("BeeSwarm"):Connect(function() -- Line 252
	--[[ Upvalues[2]:
		[1]: CreateEvent_upvr (readonly)
		[2]: ResetEvent_upvr (readonly)
	]]
	if workspace:GetAttribute("BeeSwarm") then
		CreateEvent_upvr()
	else
		ResetEvent_upvr()
	end
end)
workspace:GetAttributeChangedSignal("WorkingBeeSwarm"):Connect(function() -- Line 260
	--[[ Upvalues[2]:
		[1]: CreateEvent_upvr (readonly)
		[2]: ResetEvent_upvr (readonly)
	]]
	if workspace:GetAttribute("WorkingBeeSwarm") then
		CreateEvent_upvr()
	else
		ResetEvent_upvr()
	end
end)
if workspace:GetAttribute("BeeSwarm") or workspace:GetAttribute("WorkingBeeSwarm") then
	task.defer(function() -- Line 270
		--[[ Upvalues[1]:
			[1]: CreateEvent_upvr (readonly)
		]]
		CreateEvent_upvr(true)
	end)
else
	ResetEvent_upvr(true)
end
return {}