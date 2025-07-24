-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:33:02
-- Luau version 6, Types version 3
-- Time taken: 0.006489 seconds

local clone_upvr_2 = game.Lighting.ColorCorrection:Clone()
clone_upvr_2.Name = script.Name
clone_upvr_2.Parent = game.Lighting
local CameraShaker_upvr = require(game.ReplicatedStorage.Code.CameraShaker)
local var3_upvw = false
local any_new_result1_upvr = CameraShaker_upvr.new(Enum.RenderPriority.Camera.Value, function(arg1) -- Line 14
	workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame * arg1
end)
any_new_result1_upvr:Start()
workspace:GetAttributeChangedSignal("SolarFlareEvent"):Connect(function() -- Line 163
	--[[ Upvalues[4]:
		[1]: var3_upvw (read and write)
		[2]: clone_upvr_2 (readonly)
		[3]: any_new_result1_upvr (readonly)
		[4]: CameraShaker_upvr (readonly)
	]]
	if workspace:GetAttribute("SolarFlareEvent") then
		var3_upvw = true
		task.spawn(function() -- Line 23
			--[[ Upvalues[3]:
				[1]: clone_upvr_2 (copied, readonly)
				[2]: any_new_result1_upvr (copied, readonly)
				[3]: CameraShaker_upvr (copied, readonly)
			]]
			game.TweenService:Create(clone_upvr_2, TweenInfo.new(27, Enum.EasingStyle.Linear), {
				TintColor = Color3.fromRGB(255, 134, 35);
			}):Play()
			game.TweenService:Create(game.Lighting, TweenInfo.new(27, Enum.EasingStyle.Linear), {
				Ambient = Color3.fromRGB(255, 201, 75);
				ExposureCompensation = 0;
				Brightness = 2.5;
			}):Play()
			local clone_upvr = script.FlareUI:Clone()
			clone_upvr.Parent = game.Players.LocalPlayer.PlayerGui
			local alarm_upvr = clone_upvr.alarm
			alarm_upvr.Parent = game.SoundService
			alarm_upvr.Playing = true
			task.delay(2.52, function() -- Line 40
				--[[ Upvalues[1]:
					[1]: alarm_upvr (readonly)
				]]
				alarm_upvr:Destroy()
			end)
			local clone_upvr_4 = script.SolarFlare:Clone()
			clone_upvr_4.Parent = workspace.WeatherVisuals
			game.TweenService:Create(clone_upvr_4.Center.BillboardGui.ImageLabel, TweenInfo.new(0.5), {
				ImageTransparency = 0;
			}):Play()
			game.TweenService:Create(clone_upvr_4.Center.BillboardGui.ImageLabel, TweenInfo.new(4, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1), {
				Rotation = 359;
			}):Play()
			task.spawn(function() -- Line 51
				--[[ Upvalues[2]:
					[1]: clone_upvr_4 (readonly)
					[2]: clone_upvr (readonly)
				]]
				-- KONSTANTERROR: [0] 1. Error Block 13 start (CF ANALYSIS FAILED)
				task.wait(0.5)
				clone_upvr_4.Center.Ground:Emit(1)
				if clone_upvr.TextLabel.Visible ~= false then
					-- KONSTANTWARNING: GOTO [25] #18
				end
				-- KONSTANTERROR: [0] 1. Error Block 13 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [24] 17. Error Block 17 start (CF ANALYSIS FAILED)
				clone_upvr.TextLabel.Visible = true
				if not clone_upvr_4:FindFirstChild("Model") then
					-- KONSTANTWARNING: GOTO [34] #25
				end
				-- KONSTANTERROR: [24] 17. Error Block 17 end (CF ANALYSIS FAILED)
			end)
			game.TweenService:Create(clone_upvr_4.Center.BillboardGui.ImageLabel, TweenInfo.new(15), {
				ImageColor3 = Color3.fromRGB(255, 173, 102);
			}):Play()
			game.TweenService:Create(clone_upvr_4.Center.BillboardGui, TweenInfo.new(15), {
				Brightness = 4;
			}):Play()
			game.TweenService:Create(clone_upvr_4.Center, TweenInfo.new(15, Enum.EasingStyle.Cubic, Enum.EasingDirection.In), {
				CFrame = CFrame.new(Vector3.new(-123, -111, 0)) * clone_upvr_4.Center.CFrame.Rotation;
			}):Play()
			task.delay(4, function() -- Line 68
				--[[ Upvalues[3]:
					[1]: clone_upvr_2 (copied, readonly)
					[2]: any_new_result1_upvr (copied, readonly)
					[3]: CameraShaker_upvr (copied, readonly)
				]]
				game.TweenService:Create(clone_upvr_2, TweenInfo.new(10), {
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
			clone_upvr_4.Center.loop:Play()
			task.wait(13)
			game.TweenService:Create(game.Lighting, TweenInfo.new(2, Enum.EasingStyle.Linear), {
				Ambient = Color3.fromRGB(255, 129, 25);
				ExposureCompensation = 1.2;
				Brightness = 3;
			}):Play()
			task.wait(1)
			clone_upvr_4.Center.pre:Play()
			game.TweenService:Create(clone_upvr.Frame, TweenInfo.new(1, Enum.EasingStyle.Linear), {
				BackgroundTransparency = 0;
			}):Play()
			task.wait(1)
			game.TweenService:Create(clone_upvr.Frame, TweenInfo.new(2, Enum.EasingStyle.Cubic, Enum.EasingDirection.In), {
				BackgroundTransparency = 1;
			}):Play()
			any_new_result1_upvr:Shake(CameraShaker_upvr.Presets.Explosion)
			clone_upvr_4.Ball.Transparency = -2
			game.TweenService:Create(clone_upvr_4.Ball, TweenInfo.new(4, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
				Size = Vector3.new(200, 1500, 200);
				Transparency = 1;
			}):Play()
			clone_upvr_4.Center.BillboardGui.Enabled = false
			clone_upvr_4.End.explode:Play()
			clone_upvr_4.End.explode2:Play()
			clone_upvr_4.End.BigBOOM:Emit(3)
			clone_upvr_4.End.GroundBOOM.Enabled = true
			clone_upvr_4.End.RaysBOOM.Enabled = true
			clone_upvr_4.Center.loop:Stop()
			clone_upvr_4.Center.Ground.Enabled = false
			clone_upvr_4.Center.Rays.Enabled = false
			task.wait(4)
			game.TweenService:Create(clone_upvr_2, TweenInfo.new(4), {
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
			any_new_result1_upvr:StopSustained(4)
			clone_upvr_4.End.GroundBOOM.Enabled = false
			clone_upvr_4.End.RaysBOOM.Enabled = false
			task.wait(2)
			clone_upvr_4:Destroy()
			clone_upvr:Destroy()
		end)
	else
		var3_upvw = false
	end
end)
if workspace:GetAttribute("SolarFlareEvent") then
	task.defer(function() -- Line 20, Named "CreateEvent"
		--[[ Upvalues[4]:
			[1]: var3_upvw (read and write)
			[2]: clone_upvr_2 (readonly)
			[3]: any_new_result1_upvr (readonly)
			[4]: CameraShaker_upvr (readonly)
		]]
		var3_upvw = true
		task.spawn(function() -- Line 23
			--[[ Upvalues[3]:
				[1]: clone_upvr_2 (copied, readonly)
				[2]: any_new_result1_upvr (copied, readonly)
				[3]: CameraShaker_upvr (copied, readonly)
			]]
			game.TweenService:Create(clone_upvr_2, TweenInfo.new(27, Enum.EasingStyle.Linear), {
				TintColor = Color3.fromRGB(255, 134, 35);
			}):Play()
			game.TweenService:Create(game.Lighting, TweenInfo.new(27, Enum.EasingStyle.Linear), {
				Ambient = Color3.fromRGB(255, 201, 75);
				ExposureCompensation = 0;
				Brightness = 2.5;
			}):Play()
			local clone_upvr_5 = script.FlareUI:Clone()
			clone_upvr_5.Parent = game.Players.LocalPlayer.PlayerGui
			local alarm_upvr_2 = clone_upvr_5.alarm
			alarm_upvr_2.Parent = game.SoundService
			alarm_upvr_2.Playing = true
			task.delay(2.52, function() -- Line 40
				--[[ Upvalues[1]:
					[1]: alarm_upvr_2 (readonly)
				]]
				alarm_upvr_2:Destroy()
			end)
			local clone_upvr_3 = script.SolarFlare:Clone()
			clone_upvr_3.Parent = workspace.WeatherVisuals
			game.TweenService:Create(clone_upvr_3.Center.BillboardGui.ImageLabel, TweenInfo.new(0.5), {
				ImageTransparency = 0;
			}):Play()
			game.TweenService:Create(clone_upvr_3.Center.BillboardGui.ImageLabel, TweenInfo.new(4, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1), {
				Rotation = 359;
			}):Play()
			task.spawn(function() -- Line 51
				--[[ Upvalues[2]:
					[1]: clone_upvr_3 (readonly)
					[2]: clone_upvr_5 (readonly)
				]]
				-- KONSTANTERROR: [0] 1. Error Block 13 start (CF ANALYSIS FAILED)
				task.wait(0.5)
				clone_upvr_3.Center.Ground:Emit(1)
				if clone_upvr_5.TextLabel.Visible ~= false then
					-- KONSTANTWARNING: GOTO [25] #18
				end
				-- KONSTANTERROR: [0] 1. Error Block 13 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [24] 17. Error Block 17 start (CF ANALYSIS FAILED)
				clone_upvr_5.TextLabel.Visible = true
				if not clone_upvr_3:FindFirstChild("Model") then
					-- KONSTANTWARNING: GOTO [34] #25
				end
				-- KONSTANTERROR: [24] 17. Error Block 17 end (CF ANALYSIS FAILED)
			end)
			game.TweenService:Create(clone_upvr_3.Center.BillboardGui.ImageLabel, TweenInfo.new(15), {
				ImageColor3 = Color3.fromRGB(255, 173, 102);
			}):Play()
			game.TweenService:Create(clone_upvr_3.Center.BillboardGui, TweenInfo.new(15), {
				Brightness = 4;
			}):Play()
			game.TweenService:Create(clone_upvr_3.Center, TweenInfo.new(15, Enum.EasingStyle.Cubic, Enum.EasingDirection.In), {
				CFrame = CFrame.new(Vector3.new(-123, -111, 0)) * clone_upvr_3.Center.CFrame.Rotation;
			}):Play()
			task.delay(4, function() -- Line 68
				--[[ Upvalues[3]:
					[1]: clone_upvr_2 (copied, readonly)
					[2]: any_new_result1_upvr (copied, readonly)
					[3]: CameraShaker_upvr (copied, readonly)
				]]
				game.TweenService:Create(clone_upvr_2, TweenInfo.new(10), {
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
			clone_upvr_3.Center.loop:Play()
			task.wait(13)
			game.TweenService:Create(game.Lighting, TweenInfo.new(2, Enum.EasingStyle.Linear), {
				Ambient = Color3.fromRGB(255, 129, 25);
				ExposureCompensation = 1.2;
				Brightness = 3;
			}):Play()
			task.wait(1)
			clone_upvr_3.Center.pre:Play()
			game.TweenService:Create(clone_upvr_5.Frame, TweenInfo.new(1, Enum.EasingStyle.Linear), {
				BackgroundTransparency = 0;
			}):Play()
			task.wait(1)
			game.TweenService:Create(clone_upvr_5.Frame, TweenInfo.new(2, Enum.EasingStyle.Cubic, Enum.EasingDirection.In), {
				BackgroundTransparency = 1;
			}):Play()
			any_new_result1_upvr:Shake(CameraShaker_upvr.Presets.Explosion)
			clone_upvr_3.Ball.Transparency = -2
			game.TweenService:Create(clone_upvr_3.Ball, TweenInfo.new(4, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
				Size = Vector3.new(200, 1500, 200);
				Transparency = 1;
			}):Play()
			clone_upvr_3.Center.BillboardGui.Enabled = false
			clone_upvr_3.End.explode:Play()
			clone_upvr_3.End.explode2:Play()
			clone_upvr_3.End.BigBOOM:Emit(3)
			clone_upvr_3.End.GroundBOOM.Enabled = true
			clone_upvr_3.End.RaysBOOM.Enabled = true
			clone_upvr_3.Center.loop:Stop()
			clone_upvr_3.Center.Ground.Enabled = false
			clone_upvr_3.Center.Rays.Enabled = false
			task.wait(4)
			game.TweenService:Create(clone_upvr_2, TweenInfo.new(4), {
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
			any_new_result1_upvr:StopSustained(4)
			clone_upvr_3.End.GroundBOOM.Enabled = false
			clone_upvr_3.End.RaysBOOM.Enabled = false
			task.wait(2)
			clone_upvr_3:Destroy()
			clone_upvr_5:Destroy()
		end)
	end)
else
	var3_upvw = false
end
return {}