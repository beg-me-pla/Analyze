-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:33:05
-- Luau version 6, Types version 3
-- Time taken: 0.007876 seconds

local clone_2_upvr = game.Lighting.ColorCorrection:Clone()
clone_2_upvr.Name = script.Name
clone_2_upvr.Parent = game.Lighting
local CameraShaker_upvr = require(game.ReplicatedStorage.Code.CameraShaker)
local var3_upvw = false
local any_new_result1_upvr = CameraShaker_upvr.new(Enum.RenderPriority.Camera.Value, function(arg1) -- Line 14
	workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame * arg1
end)
any_new_result1_upvr:Start()
local Sky_upvr = script.Sky
local SkyboxManager_upvr = require(game.ReplicatedStorage.Modules.SkyboxManager)
SkyboxManager_upvr.AddSkybox(Sky_upvr, 0)
workspace:GetAttributeChangedSignal("ArmageddonEvent"):Connect(function() -- Line 210
	--[[ Upvalues[6]:
		[1]: var3_upvw (read and write)
		[2]: clone_2_upvr (readonly)
		[3]: any_new_result1_upvr (readonly)
		[4]: CameraShaker_upvr (readonly)
		[5]: SkyboxManager_upvr (readonly)
		[6]: Sky_upvr (readonly)
	]]
	if workspace:GetAttribute("ArmageddonEvent") then
		var3_upvw = true
		task.spawn(function() -- Line 27
			--[[ Upvalues[6]:
				[1]: clone_2_upvr (copied, readonly)
				[2]: any_new_result1_upvr (copied, readonly)
				[3]: CameraShaker_upvr (copied, readonly)
				[4]: SkyboxManager_upvr (copied, readonly)
				[5]: Sky_upvr (copied, readonly)
				[6]: var3_upvw (copied, read and write)
			]]
			game.TweenService:Create(clone_2_upvr, TweenInfo.new(27, Enum.EasingStyle.Linear), {
				TintColor = Color3.fromRGB(255, 134, 35);
			}):Play()
			game.TweenService:Create(game.Lighting, TweenInfo.new(27, Enum.EasingStyle.Linear), {
				Ambient = Color3.fromRGB(255, 201, 75);
				ExposureCompensation = 0;
				Brightness = 2.5;
			}):Play()
			local clone_7 = script.FlareUI:Clone()
			clone_7.Parent = game.Players.LocalPlayer.PlayerGui
			local alarm_upvr_2 = clone_7.alarm
			alarm_upvr_2.Parent = game.SoundService
			alarm_upvr_2.Playing = true
			task.delay(2.52, function() -- Line 44
				--[[ Upvalues[1]:
					[1]: alarm_upvr_2 (readonly)
				]]
				alarm_upvr_2:Destroy()
			end)
			local clone_6_upvr = script.Meteor:Clone()
			clone_6_upvr.Parent = workspace.WeatherVisuals
			local var43_upvw = true
			task.spawn(function() -- Line 51
				--[[ Upvalues[2]:
					[1]: clone_6_upvr (readonly)
					[2]: var43_upvw (read and write)
				]]
				repeat
					clone_6_upvr.Attachment.Backlines2:Emit(4)
					clone_6_upvr.Attachment.Ring:Emit(4)
					if math.random(1, 2) == 1 then
						local clone_3 = clone_6_upvr.whistle:Clone()
						clone_3.Parent = clone_6_upvr
						clone_3.PlaybackSpeed += math.random(-25, 25) * 0.01
						clone_3:Play()
					end
					task.wait(0.5)
				until var43_upvw == false
			end)
			task.delay(4, function() -- Line 68
				--[[ Upvalues[3]:
					[1]: clone_2_upvr (copied, readonly)
					[2]: any_new_result1_upvr (copied, readonly)
					[3]: CameraShaker_upvr (copied, readonly)
				]]
				game.TweenService:Create(clone_2_upvr, TweenInfo.new(10), {
					TintColor = Color3.fromRGB(255, 193, 169);
					Brightness = 0.05;
					Saturation = 0.1;
				}):Play()
				any_new_result1_upvr:ShakeSustain(CameraShaker_upvr.Presets.Earthquake, 4)
			end)
			game.TweenService:Create(game.Lighting.Atmosphere, TweenInfo.new(15), {
				Glare = 0.2;
				Haze = 2.3;
				Color = Color3.fromRGB(255, 157, 38);
				Decay = Color3.fromRGB(255, 161, 130);
			}):Play()
			game.TweenService:Create(clone_6_upvr, TweenInfo.new(16, Enum.EasingStyle.Cubic, Enum.EasingDirection.In), {
				Position = Vector3.new(-61.726, -170.92, -2.8220);
			}):Play()
			clone_6_upvr.Center.loop:Play()
			task.wait(13)
			game.TweenService:Create(game.Lighting, TweenInfo.new(2, Enum.EasingStyle.Linear), {
				Ambient = Color3.fromRGB(255, 129, 25);
				ExposureCompensation = 1.2;
				Brightness = 3;
			}):Play()
			task.wait(1)
			var43_upvw = false
			clone_7.TextLabel.Visible = false
			clone_6_upvr.Center.pre:Play()
			game.TweenService:Create(clone_7.Frame, TweenInfo.new(1, Enum.EasingStyle.Linear), {
				BackgroundTransparency = 0;
			}):Play()
			task.wait(1)
			SkyboxManager_upvr.UpdateSkybox(Sky_upvr, 2)
			game.TweenService:Create(clone_7.Frame, TweenInfo.new(2, Enum.EasingStyle.Cubic, Enum.EasingDirection.In), {
				BackgroundTransparency = 1;
			}):Play()
			any_new_result1_upvr:Shake(CameraShaker_upvr.Presets.Explosion)
			clone_6_upvr.Transparency = 1
			game.TweenService:Create(clone_6_upvr.Ball, TweenInfo.new(3, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
				Size = Vector3.new(400, 2000, 400);
				Transparency = 1;
			}):Play()
			clone_6_upvr.End.explode:Play()
			clone_6_upvr.End.explode2:Play()
			clone_6_upvr.End.BigBOOM:Emit(3)
			clone_6_upvr.End.GroundBOOM.Enabled = true
			clone_6_upvr.End.RaysBOOM.Enabled = true
			clone_6_upvr.Center.loop:Stop()
			clone_6_upvr.Center.Ground.Enabled = false
			clone_6_upvr.Center.Rays.Enabled = false
			game.ReplicatedStorage.Armageddon.Value = true
			task.wait(4)
			game.TweenService:Create(clone_2_upvr, TweenInfo.new(4), {
				TintColor = Color3.fromRGB(255, 224, 197);
				Saturation = 0.1;
				Brightness = 0;
				Contrast = 0;
			}):Play()
			game.TweenService:Create(game.Lighting, TweenInfo.new(4), {
				Ambient = Color3.fromRGB(255, 219, 205);
				ExposureCompensation = 0.5;
				Brightness = 2;
			}):Play()
			game.TweenService:Create(game.Lighting.Atmosphere, TweenInfo.new(4), {
				Glare = 0;
				Haze = 0;
				Color = Color3.fromRGB(255, 227, 213);
				Decay = Color3.fromRGB(255, 221, 192);
			}):Play()
			any_new_result1_upvr:StopSustained(4)
			clone_6_upvr.End.GroundBOOM.Enabled = false
			clone_6_upvr.End.RaysBOOM.Enabled = false
			task.wait(2)
			clone_6_upvr:Destroy()
			repeat
				task.wait(0.5)
			until var3_upvw == false
			clone_7.Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			game.TweenService:Create(clone_7.Frame, TweenInfo.new(2, Enum.EasingStyle.Linear), {
				BackgroundTransparency = 0;
			}):Play()
			task.wait(2)
			game.ReplicatedStorage.Armageddon.Value = false
			game.TweenService:Create(clone_7.Frame, TweenInfo.new(2, Enum.EasingStyle.Cubic, Enum.EasingDirection.In), {
				BackgroundTransparency = 1;
			}):Play()
			game.TweenService:Create(clone_2_upvr, TweenInfo.new(4), {
				TintColor = Color3.fromRGB(255, 255, 255);
				Saturation = 0;
				Brightness = 0;
				Contrast = 0;
			}):Play()
			game.TweenService:Create(game.Lighting, TweenInfo.new(4), {
				Ambient = game.Lighting:GetAttribute("DefaultAmbient");
				ExposureCompensation = game.Lighting:GetAttribute("DefaultExposure");
				Brightness = game.Lighting:GetAttribute("DefaultBrightness");
			}):Play()
			game.TweenService:Create(game.Lighting.Atmosphere, TweenInfo.new(4), {
				Glare = 0;
				Haze = 0;
				Color = Color3.fromRGB(215, 244, 255);
				Decay = Color3.fromRGB(190, 238, 255);
			}):Play()
			SkyboxManager_upvr.UpdateSkybox(Sky_upvr, 0)
			task.wait(2)
			if clone_7 then
				clone_7:Destroy()
			end
		end)
	else
		var3_upvw = false
	end
end)
if workspace:GetAttribute("ArmageddonEvent") then
	task.defer(function() -- Line 24, Named "CreateEvent"
		--[[ Upvalues[6]:
			[1]: var3_upvw (read and write)
			[2]: clone_2_upvr (readonly)
			[3]: any_new_result1_upvr (readonly)
			[4]: CameraShaker_upvr (readonly)
			[5]: SkyboxManager_upvr (readonly)
			[6]: Sky_upvr (readonly)
		]]
		var3_upvw = true
		task.spawn(function() -- Line 27
			--[[ Upvalues[6]:
				[1]: clone_2_upvr (copied, readonly)
				[2]: any_new_result1_upvr (copied, readonly)
				[3]: CameraShaker_upvr (copied, readonly)
				[4]: SkyboxManager_upvr (copied, readonly)
				[5]: Sky_upvr (copied, readonly)
				[6]: var3_upvw (copied, read and write)
			]]
			game.TweenService:Create(clone_2_upvr, TweenInfo.new(27, Enum.EasingStyle.Linear), {
				TintColor = Color3.fromRGB(255, 134, 35);
			}):Play()
			game.TweenService:Create(game.Lighting, TweenInfo.new(27, Enum.EasingStyle.Linear), {
				Ambient = Color3.fromRGB(255, 201, 75);
				ExposureCompensation = 0;
				Brightness = 2.5;
			}):Play()
			local clone = script.FlareUI:Clone()
			clone.Parent = game.Players.LocalPlayer.PlayerGui
			local alarm_upvr = clone.alarm
			alarm_upvr.Parent = game.SoundService
			alarm_upvr.Playing = true
			task.delay(2.52, function() -- Line 44
				--[[ Upvalues[1]:
					[1]: alarm_upvr (readonly)
				]]
				alarm_upvr:Destroy()
			end)
			local clone_4_upvr = script.Meteor:Clone()
			clone_4_upvr.Parent = workspace.WeatherVisuals
			local var16_upvw = true
			task.spawn(function() -- Line 51
				--[[ Upvalues[2]:
					[1]: clone_4_upvr (readonly)
					[2]: var16_upvw (read and write)
				]]
				repeat
					clone_4_upvr.Attachment.Backlines2:Emit(4)
					clone_4_upvr.Attachment.Ring:Emit(4)
					if math.random(1, 2) == 1 then
						local clone_5 = clone_4_upvr.whistle:Clone()
						clone_5.Parent = clone_4_upvr
						clone_5.PlaybackSpeed += math.random(-25, 25) * 0.01
						clone_5:Play()
					end
					task.wait(0.5)
				until var16_upvw == false
			end)
			task.delay(4, function() -- Line 68
				--[[ Upvalues[3]:
					[1]: clone_2_upvr (copied, readonly)
					[2]: any_new_result1_upvr (copied, readonly)
					[3]: CameraShaker_upvr (copied, readonly)
				]]
				game.TweenService:Create(clone_2_upvr, TweenInfo.new(10), {
					TintColor = Color3.fromRGB(255, 193, 169);
					Brightness = 0.05;
					Saturation = 0.1;
				}):Play()
				any_new_result1_upvr:ShakeSustain(CameraShaker_upvr.Presets.Earthquake, 4)
			end)
			game.TweenService:Create(game.Lighting.Atmosphere, TweenInfo.new(15), {
				Glare = 0.2;
				Haze = 2.3;
				Color = Color3.fromRGB(255, 157, 38);
				Decay = Color3.fromRGB(255, 161, 130);
			}):Play()
			game.TweenService:Create(clone_4_upvr, TweenInfo.new(16, Enum.EasingStyle.Cubic, Enum.EasingDirection.In), {
				Position = Vector3.new(-61.726, -170.92, -2.8220);
			}):Play()
			clone_4_upvr.Center.loop:Play()
			task.wait(13)
			game.TweenService:Create(game.Lighting, TweenInfo.new(2, Enum.EasingStyle.Linear), {
				Ambient = Color3.fromRGB(255, 129, 25);
				ExposureCompensation = 1.2;
				Brightness = 3;
			}):Play()
			task.wait(1)
			var16_upvw = false
			clone.TextLabel.Visible = false
			clone_4_upvr.Center.pre:Play()
			game.TweenService:Create(clone.Frame, TweenInfo.new(1, Enum.EasingStyle.Linear), {
				BackgroundTransparency = 0;
			}):Play()
			task.wait(1)
			SkyboxManager_upvr.UpdateSkybox(Sky_upvr, 2)
			game.TweenService:Create(clone.Frame, TweenInfo.new(2, Enum.EasingStyle.Cubic, Enum.EasingDirection.In), {
				BackgroundTransparency = 1;
			}):Play()
			any_new_result1_upvr:Shake(CameraShaker_upvr.Presets.Explosion)
			clone_4_upvr.Transparency = 1
			game.TweenService:Create(clone_4_upvr.Ball, TweenInfo.new(3, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
				Size = Vector3.new(400, 2000, 400);
				Transparency = 1;
			}):Play()
			clone_4_upvr.End.explode:Play()
			clone_4_upvr.End.explode2:Play()
			clone_4_upvr.End.BigBOOM:Emit(3)
			clone_4_upvr.End.GroundBOOM.Enabled = true
			clone_4_upvr.End.RaysBOOM.Enabled = true
			clone_4_upvr.Center.loop:Stop()
			clone_4_upvr.Center.Ground.Enabled = false
			clone_4_upvr.Center.Rays.Enabled = false
			game.ReplicatedStorage.Armageddon.Value = true
			task.wait(4)
			game.TweenService:Create(clone_2_upvr, TweenInfo.new(4), {
				TintColor = Color3.fromRGB(255, 224, 197);
				Saturation = 0.1;
				Brightness = 0;
				Contrast = 0;
			}):Play()
			game.TweenService:Create(game.Lighting, TweenInfo.new(4), {
				Ambient = Color3.fromRGB(255, 219, 205);
				ExposureCompensation = 0.5;
				Brightness = 2;
			}):Play()
			game.TweenService:Create(game.Lighting.Atmosphere, TweenInfo.new(4), {
				Glare = 0;
				Haze = 0;
				Color = Color3.fromRGB(255, 227, 213);
				Decay = Color3.fromRGB(255, 221, 192);
			}):Play()
			any_new_result1_upvr:StopSustained(4)
			clone_4_upvr.End.GroundBOOM.Enabled = false
			clone_4_upvr.End.RaysBOOM.Enabled = false
			task.wait(2)
			clone_4_upvr:Destroy()
			repeat
				task.wait(0.5)
			until var3_upvw == false
			clone.Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			game.TweenService:Create(clone.Frame, TweenInfo.new(2, Enum.EasingStyle.Linear), {
				BackgroundTransparency = 0;
			}):Play()
			task.wait(2)
			game.ReplicatedStorage.Armageddon.Value = false
			game.TweenService:Create(clone.Frame, TweenInfo.new(2, Enum.EasingStyle.Cubic, Enum.EasingDirection.In), {
				BackgroundTransparency = 1;
			}):Play()
			game.TweenService:Create(clone_2_upvr, TweenInfo.new(4), {
				TintColor = Color3.fromRGB(255, 255, 255);
				Saturation = 0;
				Brightness = 0;
				Contrast = 0;
			}):Play()
			game.TweenService:Create(game.Lighting, TweenInfo.new(4), {
				Ambient = game.Lighting:GetAttribute("DefaultAmbient");
				ExposureCompensation = game.Lighting:GetAttribute("DefaultExposure");
				Brightness = game.Lighting:GetAttribute("DefaultBrightness");
			}):Play()
			game.TweenService:Create(game.Lighting.Atmosphere, TweenInfo.new(4), {
				Glare = 0;
				Haze = 0;
				Color = Color3.fromRGB(215, 244, 255);
				Decay = Color3.fromRGB(190, 238, 255);
			}):Play()
			SkyboxManager_upvr.UpdateSkybox(Sky_upvr, 0)
			task.wait(2)
			if clone then
				clone:Destroy()
			end
		end)
	end)
else
	var3_upvw = false
end
return {}