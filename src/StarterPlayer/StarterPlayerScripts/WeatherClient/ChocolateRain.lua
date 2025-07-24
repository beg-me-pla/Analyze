-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:59
-- Luau version 6, Types version 3
-- Time taken: 0.006399 seconds

local random_state_upvr = Random.new()
local CurrentCamera_upvr = workspace.CurrentCamera
local RaycastParams_new_result1_upvr = RaycastParams.new()
RaycastParams_new_result1_upvr.FilterDescendantsInstances = {workspace.Terrain, workspace}
RaycastParams_new_result1_upvr.FilterType = Enum.RaycastFilterType.Include
local tbl_upvr = {}
local var6_upvw = false
local clone_upvr_2 = game.Lighting.ColorCorrection:Clone()
clone_upvr_2.Name = script.Name
clone_upvr_2.Parent = game.Lighting
local ChocParticle_upvr = game.ReplicatedStorage.ChocParticle
local function newParticle_upvr(arg1) -- Line 25, Named "newParticle"
	--[[ Upvalues[2]:
		[1]: ChocParticle_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	local tbl = {
		particle = ChocParticle_upvr:Clone();
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
	local vector3 = Vector3.new(0, -20 * arg3, 0)
	local workspace_Spherecast_result1_2 = workspace:Spherecast(position, 0.15, vector3, RaycastParams_new_result1_upvr)
	if workspace_Spherecast_result1_2 then
		return workspace_Spherecast_result1_2.Position, true
	end
	arg1.position = position + vector3
	return position
end
local Sky_upvr = script.Sky
local SkyboxManager_upvr = require(game.ReplicatedStorage.Modules.SkyboxManager)
SkyboxManager_upvr.AddSkybox(Sky_upvr)
local clone_upvr = game.ReplicatedStorage.ChocolateRainEmitter:Clone()
clone_upvr.Parent = workspace.WeatherVisuals
local function CreateEvent_upvr() -- Line 78, Named "CreateEvent"
	--[[ Upvalues[9]:
		[1]: var6_upvw (read and write)
		[2]: SkyboxManager_upvr (readonly)
		[3]: Sky_upvr (readonly)
		[4]: clone_upvr_2 (readonly)
		[5]: clone_upvr (readonly)
		[6]: tbl_upvr (readonly)
		[7]: random_state_upvr (readonly)
		[8]: CurrentCamera_upvr (readonly)
		[9]: newParticle_upvr (readonly)
	]]
	var6_upvw = true
	SkyboxManager_upvr.UpdateSkybox(Sky_upvr, 2)
	game.TweenService:Create(game.Lighting, TweenInfo.new(3), {
		Ambient = Color3.fromRGB(243, 194, 255);
		ExposureCompensation = 0.4;
		Brightness = 1;
	}):Play()
	game.TweenService:Create(clone_upvr_2, TweenInfo.new(3), {
		Brightness = 0.1;
		TintColor = Color3.fromRGB(241, 226, 255);
	}):Play()
	game.Workspace.Terrain.Clouds.Enabled = true
	game.Workspace.Terrain.Clouds.Color = Color3.fromRGB(29, 13, 6)
	game.TweenService:Create(game.Workspace.Terrain.Clouds, TweenInfo.new(3), {
		Cover = 0.765;
		Density = 0.729;
	}):Play()
	task.spawn(function() -- Line 103
		--[[ Upvalues[9]:
			[1]: clone_upvr (copied, readonly)
			[2]: var6_upvw (copied, read and write)
			[3]: tbl_upvr (copied, readonly)
			[4]: random_state_upvr (copied, readonly)
			[5]: CurrentCamera_upvr (copied, readonly)
			[6]: newParticle_upvr (copied, readonly)
			[7]: SkyboxManager_upvr (copied, readonly)
			[8]: Sky_upvr (copied, readonly)
			[9]: clone_upvr_2 (copied, readonly)
		]]
		clone_upvr.ParticleEmitter.Enabled = true
		while var6_upvw do
			task.wait(0.05)
			if 200 >= #tbl_upvr then
				for _ = 1, 3 do
					local any_NextNumber_result1 = random_state_upvr:NextNumber(10, 180)
					local var23 = 2 * any_NextNumber_result1 * math.tan(math.rad(CurrentCamera_upvr.FieldOfView / 2))
					local var24 = (var23) * (CurrentCamera_upvr.ViewportSize.X / CurrentCamera_upvr.ViewportSize.Y)
					local var25 = CurrentCamera_upvr.CFrame * CFrame.new(random_state_upvr:NextNumber(-var24 / 2, var24 / 2), random_state_upvr:NextNumber(-var23 / 2, var23 / 2 + 20), -any_NextNumber_result1)
					if workspace:Raycast(var25.Position, Vector3.new(0, 150, 0)) then
					else
						newParticle_upvr(var25.Position)
					end
				end
			end
		end
		SkyboxManager_upvr.UpdateSkybox(Sky_upvr, 0)
		clone_upvr.ParticleEmitter.Enabled = false
		game.TweenService:Create(clone_upvr_2, TweenInfo.new(3), {
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
		task.delay(3, function() -- Line 173
			game.Workspace.Terrain.Clouds.Enabled = false
			game.Workspace.Terrain.Clouds.Color = Color3.fromRGB(22, 40, 70)
		end)
	end)
end
workspace:GetAttributeChangedSignal("ChocolateRain"):Connect(function() -- Line 185
	--[[ Upvalues[2]:
		[1]: CreateEvent_upvr (readonly)
		[2]: var6_upvw (read and write)
	]]
	if workspace:GetAttribute("ChocolateRain") then
		CreateEvent_upvr()
	else
		var6_upvw = false
	end
end)
local clone_upvr_3 = game.ReplicatedStorage.ChocSplash:Clone()
clone_upvr_3.Parent = workspace.WeatherVisuals
task.spawn(function() -- Line 195
	--[[ Upvalues[5]:
		[1]: tbl_upvr (readonly)
		[2]: RaycastParams_new_result1_upvr (readonly)
		[3]: CurrentCamera_upvr (readonly)
		[4]: clone_upvr_3 (readonly)
		[5]: random_state_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	while true do
		local any_Wait_result1 = game:GetService("RunService").RenderStepped:Wait()
		local os_clock_result1 = os.clock()
		for i_2, v in tbl_upvr do
			local position_2 = v.position
			local vector3_2 = Vector3.new(0, -20 * math.min(1, any_Wait_result1 * 5), 0)
			local workspace_Spherecast_result1 = workspace:Spherecast(position_2, 0.15, vector3_2, RaycastParams_new_result1_upvr)
			local var47
			if workspace_Spherecast_result1 then
				var47 = workspace_Spherecast_result1.Position
			else
				v.position = position_2 + vector3_2
				var47 = position_2
			end
			local any_WorldToScreenPoint_result1, any_WorldToScreenPoint_result2 = CurrentCamera_upvr:WorldToScreenPoint(var47)
			local var50 = (CurrentCamera_upvr.CFrame.Position - var47).Magnitude / 120
			if 1.5 < var50 then
				v.particle:Destroy()
				table.remove(tbl_upvr, i_2)
			elseif os_clock_result1 - v.lastupdate + 1 / math.random(60, 120) > (any_Wait_result1 * 3) * (var50 * var50) + (1/60) then
				v.lastupdate = os_clock_result1
				if any_WorldToScreenPoint_result2 and any_WorldToScreenPoint_result1.Z < 200 then
					v.visible = true
					table.insert({}, v.particle)
					table.insert({}, CFrame.new(var47, CurrentCamera_upvr.CFrame.Position) * CFrame.Angles((math.pi/2), 0, 0))
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
					clone_upvr_3.CFrame = CFrame.new(var47)
					clone_upvr_3.Attachment.ParticleEmitter:Emit(random_state_upvr:NextInteger(1, 2))
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
		debug.profilebegin("Weather_"..script.Name)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		workspace:BulkMoveTo({}, {}, Enum.BulkMoveMode.FireCFrameChanged)
		debug.profileend()
	end
end)
if workspace:GetAttribute("ChocolateRain") then
	task.defer(CreateEvent_upvr)
else
	var6_upvw = false
end
return {}