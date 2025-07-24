-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:33:03
-- Luau version 6, Types version 3
-- Time taken: 0.007400 seconds

local random_state_upvr = Random.new()
local CurrentCamera_upvr = workspace.CurrentCamera
local RaycastParams_new_result1_upvr = RaycastParams.new()
RaycastParams_new_result1_upvr.FilterDescendantsInstances = {workspace.Terrain, workspace}
RaycastParams_new_result1_upvr.FilterType = Enum.RaycastFilterType.Include
local tbl_upvr = {}
local var6_upvw = false
local clone_upvr_3 = game.Lighting.ColorCorrection:Clone()
clone_upvr_3.Name = script.Name
clone_upvr_3.Parent = game.Lighting
local FriedChickenParticle_upvr = game.ReplicatedStorage.FriedChickenParticle
local function newParticle_upvr(arg1) -- Line 25, Named "newParticle"
	--[[ Upvalues[2]:
		[1]: FriedChickenParticle_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	local tbl = {
		particle = FriedChickenParticle_upvr:Clone();
	}
	tbl.position = arg1
	tbl.spawnTime = os.clock()
	tbl.visible = false
	tbl.lastupdate = 0
	game.TweenService:Create(tbl.particle, TweenInfo.new(0.7), {
		Transparency = 0.2;
	}):Play()
	table.insert(tbl_upvr, tbl)
end
local function _(arg1, arg2, arg3) -- Line 42, Named "updateParticlePlace"
	--[[ Upvalues[1]:
		[1]: RaycastParams_new_result1_upvr (readonly)
	]]
	local position = arg1.position
	local vector3_2 = Vector3.new(0, -10 * arg3, 0)
	local workspace_Spherecast_result1_2 = workspace:Spherecast(position, 0.15, vector3_2, RaycastParams_new_result1_upvr)
	if workspace_Spherecast_result1_2 then
		return workspace_Spherecast_result1_2.Position, true
	end
	arg1.position = position + vector3_2
	return position
end
local Sky_upvr = script.Sky
local SkyboxManager_upvr = require(game.ReplicatedStorage.Modules.SkyboxManager)
SkyboxManager_upvr.AddSkybox(Sky_upvr)
local function CreateEvent_upvr() -- Line 72, Named "CreateEvent"
	--[[ Upvalues[8]:
		[1]: var6_upvw (read and write)
		[2]: SkyboxManager_upvr (readonly)
		[3]: Sky_upvr (readonly)
		[4]: clone_upvr_3 (readonly)
		[5]: tbl_upvr (readonly)
		[6]: random_state_upvr (readonly)
		[7]: CurrentCamera_upvr (readonly)
		[8]: newParticle_upvr (readonly)
	]]
	var6_upvw = true
	SkyboxManager_upvr.UpdateSkybox(Sky_upvr, 2)
	game.TweenService:Create(game.Lighting, TweenInfo.new(3), {
		Ambient = Color3.fromRGB(255, 224, 162);
		ExposureCompensation = 0.4;
		Brightness = 0.7;
	}):Play()
	game.TweenService:Create(clone_upvr_3, TweenInfo.new(3), {
		Brightness = 0.1;
		TintColor = Color3.fromRGB(255, 250, 189);
	}):Play()
	game.Workspace.Terrain.Clouds.Enabled = true
	game.TweenService:Create(game.Workspace.Terrain.Clouds, TweenInfo.new(3), {
		Cover = 0.905;
		Density = 0.083;
		Color = Color3.fromRGB(255, 146, 57);
	}):Play()
	local clone_upvr_2 = game.ReplicatedStorage.ChickenRainEmitter:Clone()
	clone_upvr_2.Parent = workspace
	task.spawn(function() -- Line 100
		--[[ Upvalues[9]:
			[1]: var6_upvw (copied, read and write)
			[2]: tbl_upvr (copied, readonly)
			[3]: random_state_upvr (copied, readonly)
			[4]: CurrentCamera_upvr (copied, readonly)
			[5]: newParticle_upvr (copied, readonly)
			[6]: SkyboxManager_upvr (copied, readonly)
			[7]: Sky_upvr (copied, readonly)
			[8]: clone_upvr_2 (readonly)
			[9]: clone_upvr_3 (copied, readonly)
		]]
		local FriedOwl_upvr = game.Workspace.Visuals:WaitForChild("FriedOwl")
		local any_GetPivot_result1_upvr = FriedOwl_upvr:GetPivot()
		task.spawn(function() -- Line 104
			--[[ Upvalues[2]:
				[1]: FriedOwl_upvr (readonly)
				[2]: any_GetPivot_result1_upvr (readonly)
			]]
			local const_number = 0
			while const_number < 2 do
				FriedOwl_upvr:PivotTo(any_GetPivot_result1_upvr:Lerp(CFrame.new(0, 100, 0) * any_GetPivot_result1_upvr, (const_number + game:GetService("RunService").Heartbeat:Wait()) / 2))
			end
		end)
		while var6_upvw do
			task.wait(0.05)
			if 45 >= #tbl_upvr then
				for _ = 1, 3 do
					local any_NextNumber_result1 = random_state_upvr:NextNumber(10, 180)
					local var27 = 2 * any_NextNumber_result1 * math.tan(math.rad(CurrentCamera_upvr.FieldOfView / 2))
					local var28 = (var27) * (CurrentCamera_upvr.ViewportSize.X / CurrentCamera_upvr.ViewportSize.Y)
					local var29 = CurrentCamera_upvr.CFrame * CFrame.new(random_state_upvr:NextNumber(-var28 / 2, var28 / 2), random_state_upvr:NextNumber(-var27 / 2, var27 / 2 + 20), -any_NextNumber_result1)
					if workspace:Raycast(var29.Position, Vector3.new(0, 150, 0)) then
					else
						newParticle_upvr(var29.Position)
					end
				end
			end
		end
		SkyboxManager_upvr.UpdateSkybox(Sky_upvr, 0)
		clone_upvr_2.ParticleEmitter.Enabled = false
		game.Debris:AddItem(clone_upvr_2, 2.5)
		game.TweenService:Create(clone_upvr_3, TweenInfo.new(3), {
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
			Color = Color3.fromRGB(22, 40, 70);
		}):Play()
		task.delay(3, function() -- Line 186
			game.Workspace.Terrain.Clouds.Enabled = false
		end)
		task.spawn(function() -- Line 189
			--[[ Upvalues[2]:
				[1]: FriedOwl_upvr (readonly)
				[2]: any_GetPivot_result1_upvr (readonly)
			]]
			local const_number_2 = 0
			while const_number_2 < 2 do
				FriedOwl_upvr:PivotTo(CFrame.new(0, 100, 0) * any_GetPivot_result1_upvr:Lerp(any_GetPivot_result1_upvr, (const_number_2 + game:GetService("RunService").Heartbeat:Wait()) / 2))
			end
		end)
	end)
end
workspace:GetAttributeChangedSignal("ChickenRain"):Connect(function() -- Line 207
	--[[ Upvalues[2]:
		[1]: CreateEvent_upvr (readonly)
		[2]: var6_upvw (read and write)
	]]
	if workspace:GetAttribute("ChickenRain") then
		CreateEvent_upvr()
	else
		var6_upvw = false
	end
end)
local clone_upvr = game.ReplicatedStorage.FriedSplash:Clone()
clone_upvr.Parent = workspace.WeatherVisuals
task.spawn(function() -- Line 217
	--[[ Upvalues[5]:
		[1]: tbl_upvr (readonly)
		[2]: RaycastParams_new_result1_upvr (readonly)
		[3]: CurrentCamera_upvr (readonly)
		[4]: clone_upvr (readonly)
		[5]: random_state_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	while true do
		local any_Wait_result1 = game:GetService("RunService").RenderStepped:Wait()
		local os_clock_result1 = os.clock()
		debug.profilebegin("Weather_"..script.Name)
		for i_2, v in tbl_upvr do
			local position_2 = v.position
			local vector3 = Vector3.new(0, -10 * math.min(1, any_Wait_result1 * 5), 0)
			local workspace_Spherecast_result1 = workspace:Spherecast(position_2, 0.15, vector3, RaycastParams_new_result1_upvr)
			local var53
			if workspace_Spherecast_result1 then
				var53 = workspace_Spherecast_result1.Position
			else
				v.position = position_2 + vector3
				var53 = position_2
			end
			local any_WorldToScreenPoint_result1, any_WorldToScreenPoint_result2 = CurrentCamera_upvr:WorldToScreenPoint(var53)
			local var56 = (CurrentCamera_upvr.CFrame.Position - var53).Magnitude / 150
			if 1.5 < var56 then
				v.particle:Destroy()
				table.remove(tbl_upvr, i_2)
			elseif os_clock_result1 - v.lastupdate + 1 / math.random(60, 120) > (any_Wait_result1 * 3) * (var56 * var56) + (1/60) then
				v.lastupdate = os_clock_result1
				if any_WorldToScreenPoint_result2 and any_WorldToScreenPoint_result1.Z < 200 then
					v.visible = true
					table.insert({}, v.particle)
					table.insert({}, CFrame.new(var53, CurrentCamera_upvr.CFrame.Position) * CFrame.Angles((math.pi/2), 0, 0))
				else
					v.visible = false
				end
				if v.visible ~= v.visible then
					if v.visible then
						v.particle.Parent = workspace.WeatherVisuals
					else
						v.particle.Parent = nil
					end
				end
				if nil then
					v.particle:Destroy()
					clone_upvr.CFrame = CFrame.new(var53)
					clone_upvr.Attachment.ParticleEmitter:Emit(random_state_upvr:NextInteger(1, 2))
					table.remove(tbl_upvr, i_2)
				elseif 7 < os.clock() - v.spawnTime then
					game.Debris:AddItem(v.particle, 0.3)
					game.TweenService:Create(v.particle, TweenInfo.new(0.3), {
						Transparency = 1;
					}):Play()
					table.remove(tbl_upvr, i_2)
				end
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		workspace:BulkMoveTo({}, {}, Enum.BulkMoveMode.FireCFrameChanged)
		debug.profileend()
	end
end)
if workspace:GetAttribute("ChickenRain") then
	task.defer(CreateEvent_upvr)
else
	var6_upvw = false
end
return {}