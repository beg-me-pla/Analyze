-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:33:05
-- Luau version 6, Types version 3
-- Time taken: 0.007182 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenService_upvr = game:GetService("TweenService")
local Lighting_upvr = game:GetService("Lighting")
local Debris_upvr = game:GetService("Debris")
local SkyboxManager_upvr = require(ReplicatedStorage.Modules.SkyboxManager)
local Sky_upvr = script.Sky
SkyboxManager_upvr.AddSkybox(Sky_upvr)
local clone_2_upvr = Lighting_upvr.ColorCorrection:Clone()
clone_2_upvr.Name = script.Name
clone_2_upvr.Parent = Lighting_upvr
local tbl_2_upvr = {}
local var9_upvw = false
local clone_upvr = ReplicatedStorage.AcidSplash:Clone()
clone_upvr.Parent = workspace.WeatherVisuals
local random_state_upvr = Random.new()
local CurrentCamera_upvr = workspace.CurrentCamera
local RaycastParams_new_result1_upvr = RaycastParams.new()
RaycastParams_new_result1_upvr.FilterDescendantsInstances = {workspace.Terrain, workspace}
RaycastParams_new_result1_upvr.FilterType = Enum.RaycastFilterType.Include
local AcidParticle_upvr = ReplicatedStorage.AcidParticle
local function newParticle_upvr(arg1) -- Line 45, Named "newParticle"
	--[[ Upvalues[3]:
		[1]: AcidParticle_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: tbl_2_upvr (readonly)
	]]
	local tbl = {
		particle = AcidParticle_upvr:Clone();
	}
	tbl.position = arg1
	tbl.spawnTime = os.clock()
	tbl.visible = false
	tbl.lastupdate = 0
	TweenService_upvr:Create(tbl.particle, TweenInfo.new(0.7), {
		Transparency = 0.2;
	}):Play()
	table.insert(tbl_2_upvr, tbl)
end
local function _(arg1, arg2, arg3) -- Line 59, Named "updateParticlePlace"
	--[[ Upvalues[1]:
		[1]: RaycastParams_new_result1_upvr (readonly)
	]]
	local position = arg1.position
	local vector3_2 = Vector3.new(0, -20 * arg3, 0)
	local workspace_Spherecast_result1 = workspace:Spherecast(position, 0.15, vector3_2, RaycastParams_new_result1_upvr)
	if workspace_Spherecast_result1 then
		return workspace_Spherecast_result1.Position, true
	end
	arg1.position = position + vector3_2
	return position
end
local function createAcidSound_upvr(arg1) -- Line 75, Named "createAcidSound"
	--[[ Upvalues[1]:
		[1]: Debris_upvr (readonly)
	]]
	local Part = Instance.new("Part")
	Part.Position = arg1
	Part.Size = Vector3.new(0.10000, 0.10000, 0.10000)
	Part.Transparency = 1
	Part.Anchored = true
	Part.CanCollide = false
	Part.CanQuery = false
	Part.CanTouch = false
	Part.Parent = workspace.WeatherVisuals
	local clone = script.AcidDrop:Clone()
	clone.Parent = Part
	clone:Play()
	Debris_upvr:AddItem(Part, 0.5)
end
local Clouds_upvr = workspace.Terrain.Clouds
local function CreateEvent_upvr() -- Line 108, Named "CreateEvent"
	--[[ Upvalues[11]:
		[1]: var9_upvw (read and write)
		[2]: SkyboxManager_upvr (readonly)
		[3]: Sky_upvr (readonly)
		[4]: TweenService_upvr (readonly)
		[5]: Lighting_upvr (readonly)
		[6]: clone_2_upvr (readonly)
		[7]: Clouds_upvr (readonly)
		[8]: tbl_2_upvr (readonly)
		[9]: random_state_upvr (readonly)
		[10]: CurrentCamera_upvr (readonly)
		[11]: newParticle_upvr (readonly)
	]]
	var9_upvw = true
	SkyboxManager_upvr.UpdateSkybox(Sky_upvr, 2)
	TweenService_upvr:Create(Lighting_upvr, TweenInfo.new(3), {
		Ambient = Color3.fromRGB(221, 255, 231);
		ExposureCompensation = 0.4;
		Brightness = 0.7;
	}):Play()
	TweenService_upvr:Create(clone_2_upvr, TweenInfo.new(3), {
		Brightness = 0.1;
		TintColor = Color3.fromRGB(137, 255, 186);
	}):Play()
	TweenService_upvr:Create(Clouds_upvr, TweenInfo.new(3), {
		Cover = 0.75;
		Density = 0.875;
		Color = Color3.fromRGB(0, 85, 0);
	}):Play()
	task.spawn(function() -- Line 131
		--[[ Upvalues[10]:
			[1]: var9_upvw (copied, read and write)
			[2]: tbl_2_upvr (copied, readonly)
			[3]: random_state_upvr (copied, readonly)
			[4]: CurrentCamera_upvr (copied, readonly)
			[5]: newParticle_upvr (copied, readonly)
			[6]: TweenService_upvr (copied, readonly)
			[7]: clone_2_upvr (copied, readonly)
			[8]: Clouds_upvr (copied, readonly)
			[9]: SkyboxManager_upvr (copied, readonly)
			[10]: Sky_upvr (copied, readonly)
		]]
		while var9_upvw do
			task.wait(0.05)
			if 50 >= #tbl_2_upvr then
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
		TweenService_upvr:Create(clone_2_upvr, TweenInfo.new(3), {
			Brightness = 0;
			TintColor = Color3.fromRGB(255, 255, 255);
		}):Play()
		TweenService_upvr:Create(game.Lighting, TweenInfo.new(3), {
			Ambient = game.Lighting:GetAttribute("DefaultAmbient");
			ExposureCompensation = game.Lighting:GetAttribute("DefaultExposure");
			Brightness = game.Lighting:GetAttribute("DefaultBrightness");
		}):Play()
		TweenService_upvr:Create(Clouds_upvr, TweenInfo.new(5, Enum.EasingStyle.Linear), {
			Cover = 0;
			Density = 0;
			Color = Color3.fromRGB(22, 40, 70);
		}):Play()
		task.delay(0.5, SkyboxManager_upvr.UpdateSkybox, Sky_upvr, 0)
	end)
end
workspace:GetAttributeChangedSignal("AcidRain"):Connect(function() -- Line 180
	--[[ Upvalues[2]:
		[1]: CreateEvent_upvr (readonly)
		[2]: var9_upvw (read and write)
	]]
	if workspace:GetAttribute("AcidRain") then
		CreateEvent_upvr()
	else
		var9_upvw = false
	end
end)
local RunService_upvr = game:GetService("RunService")
task.spawn(function() -- Line 188
	--[[ Upvalues[9]:
		[1]: RunService_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: RaycastParams_new_result1_upvr (readonly)
		[4]: CurrentCamera_upvr (readonly)
		[5]: clone_upvr (readonly)
		[6]: random_state_upvr (readonly)
		[7]: createAcidSound_upvr (readonly)
		[8]: Debris_upvr (readonly)
		[9]: TweenService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	while true do
		local any_Wait_result1 = RunService_upvr.RenderStepped:Wait()
		local os_clock_result1 = os.clock()
		debug.profilebegin("Weather_"..script.Name)
		for i_2, v in tbl_2_upvr do
			local position_2 = v.position
			local vector3 = Vector3.new(0, -20 * math.min(1, any_Wait_result1 * 5), 0)
			local workspace_Spherecast_result1_2 = workspace:Spherecast(position_2, 0.15, vector3, RaycastParams_new_result1_upvr)
			local var56
			if workspace_Spherecast_result1_2 then
				var56 = workspace_Spherecast_result1_2.Position
			else
				v.position = position_2 + vector3
				var56 = position_2
			end
			local any_WorldToScreenPoint_result1, any_WorldToScreenPoint_result2 = CurrentCamera_upvr:WorldToScreenPoint(var56)
			local var59 = (CurrentCamera_upvr.CFrame.Position - var56).Magnitude / 120
			if 1.5 < var59 then
				v.particle:Destroy()
				table.remove(tbl_2_upvr, i_2)
			elseif os_clock_result1 - v.lastupdate + 1 / math.random(60, 120) > (any_Wait_result1 * 3) * (var59 * var59) + (1/60) then
				v.lastupdate = os_clock_result1
				if any_WorldToScreenPoint_result2 and any_WorldToScreenPoint_result1.Z < 200 then
					v.visible = true
					table.insert({}, v.particle)
					table.insert({}, CFrame.new(var56, CurrentCamera_upvr.CFrame.Position) * CFrame.Angles((math.pi/2), 0, 0))
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
					clone_upvr.CFrame = CFrame.new(var56)
					clone_upvr.Attachment.ParticleEmitter:Emit(random_state_upvr:NextInteger(1, 2))
					if math.random(1, 3) == 1 then
						createAcidSound_upvr(var56)
					end
					table.remove(tbl_2_upvr, i_2)
				elseif 7 < os.clock() - v.spawnTime then
					Debris_upvr:AddItem(v.particle, 0.3)
					TweenService_upvr:Create(v.particle, TweenInfo.new(0.3), {
						Transparency = 1;
					}):Play()
					table.remove(tbl_2_upvr, i_2)
				end
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		workspace:BulkMoveTo({}, {}, Enum.BulkMoveMode.FireCFrameChanged)
		debug.profileend()
	end
end)
if workspace:GetAttribute("AcidRain") then
	task.defer(CreateEvent_upvr)
else
	var9_upvw = false
end
game:GetService("CollectionService"):GetInstanceAddedSignal("Melt"):Connect(function(arg1) -- Line 93, Named "meltPart"
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	script.MeltingEffect:Clone().Parent = arg1
	local any_Create_result1 = TweenService_upvr:Create(arg1, TweenInfo.new(10, Enum.EasingStyle.Linear), {
		Transparency = 1;
		Color = Color3.fromRGB(25, 13, 0);
	})
	any_Create_result1:Play()
	any_Create_result1.Completed:Connect(function(arg1_2) -- Line 103
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:Destroy()
	end)
end)
return {}