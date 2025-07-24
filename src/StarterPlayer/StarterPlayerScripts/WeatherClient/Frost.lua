-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:58
-- Luau version 6, Types version 3
-- Time taken: 0.005602 seconds

local CurrentCamera_upvr = workspace.CurrentCamera
local RaycastParams_new_result1_upvr = RaycastParams.new()
RaycastParams_new_result1_upvr.FilterDescendantsInstances = {workspace.Terrain, workspace}
RaycastParams_new_result1_upvr.FilterType = Enum.RaycastFilterType.Include
local tbl_upvr = {}
local var5_upvw = false
local clone_upvr_3 = game.Lighting.ColorCorrection:Clone()
clone_upvr_3.Name = script.Name
clone_upvr_3.Parent = game.Lighting
local SnowParticle_upvr = game.ReplicatedStorage.SnowParticle
local function newParticle_upvr(arg1) -- Line 23, Named "newParticle"
	--[[ Upvalues[2]:
		[1]: SnowParticle_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	local tbl = {
		particle = SnowParticle_upvr:Clone();
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
local function updateParticlePlace_upvr(arg1, arg2, arg3) -- Line 40, Named "updateParticlePlace"
	--[[ Upvalues[1]:
		[1]: RaycastParams_new_result1_upvr (readonly)
	]]
	local position = arg1.position
	local var11 = Vector3.new(-7, 0, 0).Unit * 45 * arg3 + Vector3.new(math.sin(math.rad(arg1.spawnTime * 90)), (math.sin(math.rad(arg1.spawnTime * 90)) + 1) / 2 * -5, math.sin(math.rad(arg1.spawnTime * 90))) * arg3 + Vector3.new(arg3 * 0.5 * math.sin(math.rad(os.clock() * 35) + arg1.spawnTime), 0, 0)
	local workspace_Spherecast_result1 = workspace:Spherecast(position, 0.15, var11 * arg3, RaycastParams_new_result1_upvr)
	if workspace_Spherecast_result1 then
		return workspace_Spherecast_result1.Position, true
	end
	arg1.position = position + var11 * arg3
	return position
end
local Sky_upvr = script.Sky
local SkyboxManager_upvr = require(game.ReplicatedStorage.Modules.SkyboxManager)
SkyboxManager_upvr.AddSkybox(Sky_upvr)
local BodyShaker_upvr = require(game.ReplicatedStorage.Code.BodyShaker)
local random_state_upvr = Random.new()
local function CreateEvent_upvr() -- Line 74, Named "CreateEvent"
	--[[ Upvalues[9]:
		[1]: var5_upvw (read and write)
		[2]: BodyShaker_upvr (readonly)
		[3]: SkyboxManager_upvr (readonly)
		[4]: Sky_upvr (readonly)
		[5]: clone_upvr_3 (readonly)
		[6]: tbl_upvr (readonly)
		[7]: random_state_upvr (readonly)
		[8]: CurrentCamera_upvr (readonly)
		[9]: newParticle_upvr (readonly)
	]]
	var5_upvw = true
	task.delay(1, function() -- Line 77
		--[[ Upvalues[1]:
			[1]: BodyShaker_upvr (copied, readonly)
		]]
		local Character = game.Players.LocalPlayer.Character
		if Character and Character:IsDescendantOf(workspace) then
			local clone_upvr_2 = script.coldSound:Clone()
			clone_upvr_2.Parent = Character.PrimaryPart
			clone_upvr_2:Play()
			game.TweenService:Create(clone_upvr_2, TweenInfo.new(1), {
				Volume = 0.02;
			}):Play()
			task.delay(25, function() -- Line 85
				--[[ Upvalues[1]:
					[1]: clone_upvr_2 (readonly)
				]]
				game.TweenService:Create(clone_upvr_2, TweenInfo.new(1), {
					Volume = 0;
				}):Play()
				game.Debris:AddItem(clone_upvr_2, 1)
			end)
		end
		clone_upvr_2 = BodyShaker_upvr.EnableShaking
		clone_upvr_2()
	end)
	SkyboxManager_upvr.UpdateSkybox(Sky_upvr, 2)
	game.TweenService:Create(game.Lighting.Atmosphere, TweenInfo.new(3), {
		Density = 0.493;
		Glare = 0.85;
		Haze = 2.11;
		Offset = 1;
		Color = Color3.fromRGB(215, 244, 255);
		Decay = Color3.fromRGB(190, 238, 255);
	}):Play()
	game.TweenService:Create(game.Lighting, TweenInfo.new(3), {
		Ambient = Color3.fromRGB(131, 179, 255);
		ExposureCompensation = 0.4;
		Brightness = 1;
	}):Play()
	game.TweenService:Create(clone_upvr_3, TweenInfo.new(3), {
		Brightness = 0.1;
		Saturation = -0.2;
	}):Play()
	game.Workspace.Terrain.Clouds.Enabled = true
	game.TweenService:Create(game.Workspace.Terrain.Clouds, TweenInfo.new(3), {
		Cover = 0.777;
		Density = 0.123;
		Color = Color3.fromRGB(206, 238, 255);
	}):Play()
	local clone_upvr = game.ReplicatedStorage.WindyFrostEffect:Clone()
	clone_upvr.Parent = workspace
	task.spawn(function() -- Line 135
		--[[ Upvalues[10]:
			[1]: var5_upvw (copied, read and write)
			[2]: tbl_upvr (copied, readonly)
			[3]: random_state_upvr (copied, readonly)
			[4]: CurrentCamera_upvr (copied, readonly)
			[5]: newParticle_upvr (copied, readonly)
			[6]: SkyboxManager_upvr (copied, readonly)
			[7]: Sky_upvr (copied, readonly)
			[8]: clone_upvr (readonly)
			[9]: BodyShaker_upvr (copied, readonly)
			[10]: clone_upvr_3 (copied, readonly)
		]]
		while var5_upvw do
			game:GetService("RunService").Heartbeat:Wait()
			if 200 >= #tbl_upvr then
				for _ = 1, 3 do
					local any_NextNumber_result1 = random_state_upvr:NextNumber(10, 180)
					local var33 = 2 * any_NextNumber_result1 * math.tan(math.rad(CurrentCamera_upvr.FieldOfView / 2))
					local var34 = (var33) * (CurrentCamera_upvr.ViewportSize.X / CurrentCamera_upvr.ViewportSize.Y)
					local var35 = CurrentCamera_upvr.CFrame * CFrame.new(random_state_upvr:NextNumber(-var34 / 2, var34 / 2), random_state_upvr:NextNumber(-var33 / 2, var33 / 2 + 20), -any_NextNumber_result1)
					if workspace:Raycast(var35.Position, Vector3.new(0, 150, 0)) then
					else
						newParticle_upvr(var35.Position)
					end
				end
			end
		end
		SkyboxManager_upvr.UpdateSkybox(Sky_upvr, 0)
		for _, v in clone_upvr:GetChildren() do
			v.Enabled = false
		end
		task.delay(6, function() -- Line 189
			--[[ Upvalues[1]:
				[1]: clone_upvr (copied, readonly)
			]]
			clone_upvr:Destroy()
		end)
		BodyShaker_upvr.DisableShaking()
		game.TweenService:Create(game.Lighting.Atmosphere, TweenInfo.new(3), {
			Density = 0;
			Haze = 0;
			Glare = 0;
			Offset = 0;
		}):Play()
		game.TweenService:Create(clone_upvr_3, TweenInfo.new(3), {
			Brightness = 0;
			Saturation = 0;
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
		task.delay(3, function() -- Line 219
			game.Workspace.Terrain.Clouds.Enabled = false
		end)
	end)
end
workspace:GetAttributeChangedSignal("FrostEvent"):Connect(function() -- Line 230
	--[[ Upvalues[2]:
		[1]: CreateEvent_upvr (readonly)
		[2]: var5_upvw (read and write)
	]]
	if workspace:GetAttribute("FrostEvent") then
		CreateEvent_upvr()
	else
		var5_upvw = false
	end
end)
task.spawn(function() -- Line 239
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: updateParticlePlace_upvr (readonly)
		[3]: CurrentCamera_upvr (readonly)
	]]
	while true do
		local any_Wait_result1 = game:GetService("RunService").RenderStepped:Wait()
		local os_clock_result1 = os.clock()
		for i_3, v_2 in tbl_upvr do
			local updateParticlePlace_result1, updateParticlePlace_upvr_result2 = updateParticlePlace_upvr(v_2, os_clock_result1, math.min(1, any_Wait_result1 * 5))
			local any_WorldToScreenPoint_result1, any_WorldToScreenPoint_result2 = CurrentCamera_upvr:WorldToScreenPoint(updateParticlePlace_result1)
			local var55 = (CurrentCamera_upvr.CFrame.Position - updateParticlePlace_result1).Magnitude / 120
			if 1.5 < var55 then
				v_2.particle:Destroy()
				table.remove(tbl_upvr, i_3)
			elseif os_clock_result1 - v_2.lastupdate + 1 / math.random(60, 120) > (any_Wait_result1 * 3) * (var55 * var55) + (1/60) then
				v_2.lastupdate = os_clock_result1
				if any_WorldToScreenPoint_result2 and any_WorldToScreenPoint_result1.Z < 200 then
					v_2.visible = true
					table.insert({}, v_2.particle)
					table.insert({}, CFrame.new(updateParticlePlace_result1, CurrentCamera_upvr.CFrame.Position) * CFrame.Angles((math.pi/2), 0, 0))
				else
					v_2.visible = false
				end
				if v_2.visible ~= v_2.visible then
					if v_2.visible then
						v_2.particle.Parent = workspace.WeatherVisuals
					else
						v_2.particle.Parent = nil
					end
				end
				if updateParticlePlace_upvr_result2 then
					game.Debris:AddItem(v_2.particle, 1)
					game.TweenService:Create(v_2.particle, TweenInfo.new(1), {
						Transparency = 1;
					}):Play()
					table.remove(tbl_upvr, i_3)
				elseif 7 < os.clock() - v_2.spawnTime then
					game.Debris:AddItem(v_2.particle, 0.3)
					game.TweenService:Create(v_2.particle, TweenInfo.new(0.3), {
						Transparency = 1;
					}):Play()
					table.remove(tbl_upvr, i_3)
				end
			end
		end
		debug.profilebegin("Weather_"..script.Name)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		workspace:BulkMoveTo({}, {}, Enum.BulkMoveMode.FireCFrameChanged)
		debug.profileend()
	end
end)
if workspace:GetAttribute("FrostEvent") then
	task.defer(CreateEvent_upvr)
else
	var5_upvw = false
end
return {}