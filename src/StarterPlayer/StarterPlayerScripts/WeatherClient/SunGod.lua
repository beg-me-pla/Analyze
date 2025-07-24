-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:33:01
-- Luau version 6, Types version 3
-- Time taken: 0.007486 seconds

local var1_upvw = false
local Sky_upvr = script.Sky
local SkyboxManager_upvr = require(game.ReplicatedStorage.Modules.SkyboxManager)
SkyboxManager_upvr.AddSkybox(Sky_upvr, 0)
local clone_upvr = game.Lighting.ColorCorrection:Clone()
clone_upvr.Name = script.Name
clone_upvr.Parent = game.Lighting
local CameraShaker_upvr = require(game.ReplicatedStorage.Code.CameraShaker)
local any_new_result1_2_upvr = CameraShaker_upvr.new(Enum.RenderPriority.Camera.Value, function(arg1) -- Line 19
	workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame * arg1
end)
any_new_result1_2_upvr:Start()
local function CreateEvent_upvr() -- Line 24, Named "CreateEvent"
	--[[ Upvalues[6]:
		[1]: var1_upvw (read and write)
		[2]: any_new_result1_2_upvr (readonly)
		[3]: CameraShaker_upvr (readonly)
		[4]: clone_upvr (readonly)
		[5]: SkyboxManager_upvr (readonly)
		[6]: Sky_upvr (readonly)
	]]
	var1_upvw = true
	local sunGod = workspace.Visuals:WaitForChild("sunGod")
	local any_GetPivot_result1 = sunGod:GetPivot()
	local const_number = 0
	game.TweenService:Create(game.Lighting, TweenInfo.new(3), {
		GeographicLatitude = 23;
		ClockTime = 17;
	}):Play()
	while const_number < 3 do
		sunGod:PivotTo(any_GetPivot_result1:Lerp(any_GetPivot_result1 * CFrame.new(0, 190, 0), game.TweenService:GetValue((const_number + game:GetService("RunService").Heartbeat:Wait()) / 2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)))
	end
	any_new_result1_2_upvr:Shake(CameraShaker_upvr.Presets.Explosion)
	game.TweenService:Create(clone_upvr, TweenInfo.new(0.3), {
		TintColor = Color3.fromRGB(255, 227, 89);
		Brightness = 0.5;
	}):Play()
	game.TweenService:Create(game.Workspace.CurrentCamera, TweenInfo.new(0.5), {
		FieldOfView = 90;
	}):Play()
	task.wait(0.3)
	game.TweenService:Create(game.Workspace.CurrentCamera, TweenInfo.new(3), {
		FieldOfView = 70;
	}):Play()
	SkyboxManager_upvr.UpdateSkybox(Sky_upvr, 3)
	game.TweenService:Create(game.Lighting, TweenInfo.new(3), {
		Ambient = Color3.fromRGB(255, 215, 94);
		ExposureCompensation = 0.425;
		Brightness = 0.7;
	}):Play()
	game.TweenService:Create(game.Lighting.SunRays, TweenInfo.new(1), {
		Intensity = 0.37;
		Spread = 0.033;
	}):Play()
	game.TweenService:Create(clone_upvr, TweenInfo.new(3), {
		Brightness = 0.1;
		TintColor = Color3.fromRGB(245, 229, 149);
	}):Play()
	repeat
		task.wait()
	until var1_upvw == false
	SkyboxManager_upvr.UpdateSkybox(Sky_upvr, 0)
	local const_number_2 = 0
	while const_number_2 < 3 do
		sunGod:PivotTo(any_GetPivot_result1 * CFrame.new(0, 190, 0):Lerp(any_GetPivot_result1, game.TweenService:GetValue((const_number_2 + game:GetService("RunService").Heartbeat:Wait()) / 2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)))
	end
	game.TweenService:Create(game.Lighting.SunRays, TweenInfo.new(1), {
		Intensity = 0;
		Spread = 0;
	}):Play()
	sunGod:Destroy()
	game.TweenService:Create(clone_upvr, TweenInfo.new(3), {
		Brightness = 0;
		TintColor = Color3.fromRGB(255, 255, 255);
	}):Play()
	game.TweenService:Create(game.Lighting, TweenInfo.new(3), {
		Ambient = game.Lighting:GetAttribute("DefaultAmbient");
		ExposureCompensation = game.Lighting:GetAttribute("DefaultExposure");
		Brightness = game.Lighting:GetAttribute("DefaultBrightness");
		ClockTime = 14;
		GeographicLatitude = 29.475;
	}):Play()
end
workspace:GetAttributeChangedSignal("SunGod"):Connect(function() -- Line 102
	--[[ Upvalues[2]:
		[1]: CreateEvent_upvr (readonly)
		[2]: var1_upvw (read and write)
	]]
	if workspace:GetAttribute("SunGod") then
		CreateEvent_upvr()
	else
		var1_upvw = false
	end
end)
if workspace:GetAttribute("SunGod") then
	task.defer(CreateEvent_upvr)
else
	var1_upvw = false
end
local LightningBolt_upvr = require(game.ReplicatedStorage.Code.LightningBolt)
local function bolt_upvr(arg1, arg2) -- Line 119, Named "bolt"
	--[[ Upvalues[3]:
		[1]: LightningBolt_upvr (readonly)
		[2]: any_new_result1_2_upvr (readonly)
		[3]: clone_upvr (readonly)
	]]
	local any_new_result1 = LightningBolt_upvr.new(arg1, arg2, 30)
	any_new_result1.Thickness = 1.5
	any_new_result1.Color = Color3.fromRGB(255, 201, 139)
	any_new_result1.Frequency = 15
	any_new_result1.MinThicknessMultiplier = 0.1
	any_new_result1.MaxThicknessMultiplier = 1
	task.wait(0.65)
	any_new_result1_2_upvr:Shake(any_new_result1_2_upvr.Presets.Explosion)
	local clone_2 = game.ReplicatedStorage.SunStrike:Clone()
	clone_2.CFrame = CFrame.new(arg2.WorldPosition)
	local workspace_Raycast_result1 = workspace:Raycast(clone_2.CFrame.p, Vector3.new(-0, -50, -0))
	if workspace_Raycast_result1 and workspace_Raycast_result1.Position then
		clone_2.CFrame = CFrame.new(workspace_Raycast_result1.Position)
	end
	clone_2.Parent = workspace.WeatherVisuals
	clone_upvr.Brightness = 0.3
	task.delay(0.1, function() -- Line 154
		--[[ Upvalues[1]:
			[1]: clone_upvr (copied, readonly)
		]]
		clone_upvr.Brightness = 0.1
	end)
	for _, v in pairs(clone_2:GetDescendants()) do
		if v:IsA("ParticleEmitter") then
			v:Emit(v:GetAttribute("EmitCount"))
		elseif v:IsA("Sound") then
			v:Play()
		elseif v:IsA("PointLight") then
			game.TweenService:Create(v, TweenInfo.new(3), {
				Range = 0;
			}):Play()
		end
	end
	any_new_result1:DestroyDissipate(0.7)
	game.Debris:AddItem(clone_2, 3)
end
local function createLightning_upvr(arg1) -- Line 173, Named "createLightning"
	--[[ Upvalues[1]:
		[1]: bolt_upvr (readonly)
	]]
	local Attachment_upvr_2 = Instance.new("Attachment")
	local Attachment_upvr = Instance.new("Attachment")
	Attachment_upvr_2.Parent = workspace.Terrain
	Attachment_upvr.Parent = workspace.Terrain
	Attachment_upvr.WorldPosition = arg1 + Vector3.new(0, 200, 0)
	Attachment_upvr_2.WorldPosition = arg1
	task.spawn(function() -- Line 184
		--[[ Upvalues[3]:
			[1]: bolt_upvr (copied, readonly)
			[2]: Attachment_upvr (readonly)
			[3]: Attachment_upvr_2 (readonly)
		]]
		bolt_upvr(Attachment_upvr, Attachment_upvr_2)
		task.delay(5, function() -- Line 187
			--[[ Upvalues[2]:
				[1]: Attachment_upvr (copied, readonly)
				[2]: Attachment_upvr_2 (copied, readonly)
			]]
			Attachment_upvr:Destroy()
			Attachment_upvr_2:Destroy()
		end)
	end)
end
game.ReplicatedStorage.GameEvents.SunResonance.OnClientEvent:Connect(function(arg1) -- Line 195
	--[[ Upvalues[2]:
		[1]: clone_upvr (readonly)
		[2]: createLightning_upvr (readonly)
	]]
	local var43_upvw = true
	local clone = script.Sound:Clone()
	clone.SoundId = "rbxassetid://115766119628419"
	clone.Parent = workspace
	clone:Play()
	local _1_upvr = arg1[1]
	task.spawn(function() -- Line 206
		--[[ Upvalues[3]:
			[1]: var43_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: _1_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 16 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 16 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [40] 31. Error Block 12 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [40] 31. Error Block 12 end (CF ANALYSIS FAILED)
	end)
	local any_Create_result1 = game.TweenService:Create(clone_upvr, TweenInfo.new(2), {
		Brightness = 0.4;
		TintColor = Color3.fromRGB(245, 216, 102);
	})
	local any_Create_result1_2 = game.TweenService:Create(game.Workspace.CurrentCamera, TweenInfo.new(1), {
		FieldOfView = 80;
	})
	any_Create_result1_2:Play()
	any_Create_result1:Play()
	while true do
		task.wait()
		if 3 <= tick() - tick() then break end
		if var43_upvw == false then break end
		local var51
	end
	if var43_upvw then
		var51 = print
		var51("RESONANCE!")
		var51 = any_Create_result1_2.PlaybackState
		if var51 == Enum.PlaybackState.Completed then
			var51 = any_Create_result1_2:Pause
			var51()
			var51 = any_Create_result1:Pause
			var51()
		end
		var43_upvw = false
		var51 = game.TweenService
		local _ = {
			Volume = 0;
		}
		var51 = var51:Create(clone, TweenInfo.new(1), _):Play
		var51()
		var51 = game.Debris:AddItem
		var51(clone, 2)
		var51 = game.TweenService
		local _ = {
			Brightness = 0.1;
			TintColor = Color3.fromRGB(245, 229, 149);
		}
		var51 = var51:Create(clone_upvr, TweenInfo.new(0.4), _):Play
		var51()
		var51 = game.TweenService
		local _ = {
			FieldOfView = 60;
		}
		var51 = var51:Create(game.Workspace.CurrentCamera, TweenInfo.new(0.6), _):Play
		var51()
		var51 = Vector3.new(0, 0, 0)
		for _, v_2 in arg1 do
			var51 += v_2:GetPivot().p
		end
		createLightning_upvr(var51 / #arg1)
		task.wait(0.6)
		game.TweenService:Create(game.Workspace.CurrentCamera, TweenInfo.new(0.1), {
			FieldOfView = 60;
		}):Play()
		clone_upvr.Brightness = 10
		clone_upvr.Contrast = 222
		clone_upvr.Saturation = -1
		clone_upvr.TintColor = Color3.fromRGB(255, 106, 0)
		task.wait(0.05)
		clone_upvr.Brightness = 1
		clone_upvr.Contrast = 1
		clone_upvr.Saturation = 1
		clone_upvr.TintColor = Color3.fromRGB(255, 255, 0)
		task.wait(0.05)
		clone_upvr.Brightness = 0
		clone_upvr.Contrast = -332
		clone_upvr.Saturation = 1
		clone_upvr.TintColor = Color3.fromRGB(255, 0, 0)
		game.TweenService:Create(game.Workspace.CurrentCamera, TweenInfo.new(0.5), {
			FieldOfView = 85;
		}):Play()
		task.wait(0.05)
		clone_upvr.Brightness = 0.3
		clone_upvr.Contrast = 0
		clone_upvr.Saturation = 0
		clone_upvr.TintColor = Color3.fromRGB(245, 229, 149)
		task.wait(0.3)
		game.TweenService:Create(game.Workspace.CurrentCamera, TweenInfo.new(3), {
			FieldOfView = 70;
		}):Play()
		game.TweenService:Create(clone_upvr, TweenInfo.new(2), {
			Brightness = 0.1;
			TintColor = Color3.fromRGB(245, 229, 149);
		}):Play()
	else
		if any_Create_result1_2.PlaybackState == Enum.PlaybackState.Completed then
			any_Create_result1_2:Pause()
			any_Create_result1:Pause()
		end
		game.TweenService:Create(clone, TweenInfo.new(1), {
			Volume = 0;
		}):Play()
		game.Debris:AddItem(clone, 2)
		game.TweenService:Create(clone_upvr, TweenInfo.new(2), {
			Brightness = 0.1;
			TintColor = Color3.fromRGB(245, 229, 149);
		}):Play()
		game.TweenService:Create(game.Workspace.CurrentCamera, TweenInfo.new(2), {
			FieldOfView = 70;
		}):Play()
	end
end)
game.ReplicatedStorage.GameEvents.SunStrike.OnClientEvent:Connect(function() -- Line 327
end)
return {}