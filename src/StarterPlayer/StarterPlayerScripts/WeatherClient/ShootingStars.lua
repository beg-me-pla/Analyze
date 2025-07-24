-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:33:03
-- Luau version 6, Types version 3
-- Time taken: 0.004127 seconds

local SkyboxManager_upvr = require(game.ReplicatedStorage.Modules.SkyboxManager)
local Sky_upvr = script.Sky
SkyboxManager_upvr.AddSkybox(Sky_upvr)
local clone_2_upvr = script.Ambience:Clone()
local var4_upvw = false
local function _() -- Line 25, Named "shootStar"
	task.spawn(function() -- Line 26
		local clone_3 = game.ReplicatedStorage.ShootingStar:Clone()
		clone_3.Position = Vector3.new(-4000, math.random(350, 550), math.random(-1000, 1000))
		clone_3.Parent = workspace.WeatherVisuals
		if math.random(1, 2) == 1 then
			clone_3.StarFallSFX_01_GrowAGarden.PlaybackSpeed = 0.9 + math.random(-66, 15) * 0.01
			clone_3.StarFallSFX_01_GrowAGarden.Looped = true
			clone_3.StarFallSFX_01_GrowAGarden:Play()
		end
		local randint_2 = math.random(13, 22)
		game.TweenService:Create(clone_3, TweenInfo.new(randint_2, Enum.EasingStyle.Linear), {
			Position = clone_3.Position + Vector3.new(8000, -100, math.random(-50, 50));
		}):Play()
		task.wait(randint_2)
		clone_3:Destroy()
	end)
end
local function CreateEvent_upvr(arg1) -- Line 49, Named "CreateEvent"
	--[[ Upvalues[4]:
		[1]: var4_upvw (read and write)
		[2]: SkyboxManager_upvr (readonly)
		[3]: Sky_upvr (readonly)
		[4]: clone_2_upvr (readonly)
	]]
	if var4_upvw == true then
	else
		var4_upvw = true
		game.ReplicatedStorage.Shooting_Stars.Value = true
		task.delay(10, function() -- Line 59
			--[[ Upvalues[1]:
				[1]: var4_upvw (copied, read and write)
			]]
			if var4_upvw == true then
				while var4_upvw == true do
					task.spawn(function() -- Line 26
						local clone = game.ReplicatedStorage.ShootingStar:Clone()
						clone.Position = Vector3.new(-4000, math.random(350, 550), math.random(-1000, 1000))
						clone.Parent = workspace.WeatherVisuals
						if math.random(1, 2) == 1 then
							clone.StarFallSFX_01_GrowAGarden.PlaybackSpeed = 0.9 + math.random(-66, 15) * 0.01
							clone.StarFallSFX_01_GrowAGarden.Looped = true
							clone.StarFallSFX_01_GrowAGarden:Play()
						end
						local randint = math.random(13, 22)
						game.TweenService:Create(clone, TweenInfo.new(randint, Enum.EasingStyle.Linear), {
							Position = clone.Position + Vector3.new(8000, -100, math.random(-50, 50));
						}):Play()
						task.wait(randint)
						clone:Destroy()
					end)
					task.wait(math.random(25, 75) * 0.01)
				end
			end
		end)
		if arg1 then
			game.Lighting.ClockTime = 16
			game.TweenService:Create(game.Lighting, TweenInfo.new(0.1), {
				Ambient = Color3.fromRGB(63, 77, 138);
				ExposureCompensation = 0.7;
				Brightness = 0.6;
			}):Play()
			game.TweenService:Create(game.Lighting.NightColor, TweenInfo.new(0.1), {
				Brightness = 0.15;
				TintColor = Color3.fromRGB(102, 138, 255);
				Contrast = 0.1;
			}):Play()
			game.Lighting.SunRays.Intensity = 0.028
			SkyboxManager_upvr.UpdateSkybox(Sky_upvr, 4)
			clone_2_upvr.Parent = workspace
			clone_2_upvr:Play()
			clone_2_upvr.Volume = 0.1
			return
		end
		game.TweenService:Create(game.Lighting, TweenInfo.new(5), {
			ClockTime = 21;
		}):Play()
		task.wait(5)
		SkyboxManager_upvr.UpdateSkybox(Sky_upvr, 4)
		game.Lighting.ClockTime = 3
		task.wait(2)
		game.TweenService:Create(game.Lighting, TweenInfo.new(5), {
			Ambient = Color3.fromRGB(64, 74, 138);
			ExposureCompensation = 0.5;
			Brightness = 0.6;
			ClockTime = 16;
		}):Play()
		game.TweenService:Create(game.Lighting.NightColor, TweenInfo.new(5), {
			Brightness = 0.15;
			TintColor = Color3.fromRGB(201, 211, 255);
			Contrast = 0.1;
		}):Play()
		game.Lighting.SunRays.Enabled = true
		clone_2_upvr.Parent = workspace
		clone_2_upvr:Play()
		game.TweenService:Create(clone_2_upvr, TweenInfo.new(1), {
			Volume = 0.1;
		}):Play()
		task.delay(13, function() -- Line 126
			game.TweenService:Create(game.Lighting.SunRays, TweenInfo.new(2), {
				Intensity = 0.028;
			}):Play()
		end)
	end
end
local function ResetEvent_upvr(arg1) -- Line 134, Named "ResetEvent"
	--[[ Upvalues[4]:
		[1]: var4_upvw (read and write)
		[2]: clone_2_upvr (readonly)
		[3]: SkyboxManager_upvr (readonly)
		[4]: Sky_upvr (readonly)
	]]
	if var4_upvw == false then
	else
		game.ReplicatedStorage.Shooting_Stars.Value = false
		var4_upvw = false
		if arg1 then return end
		game.TweenService:Create(game.Lighting, TweenInfo.new(5), {
			ClockTime = 21;
		}):Play()
		game.TweenService:Create(game.Lighting.NightColor, TweenInfo.new(5), {
			Brightness = 0;
			Contrast = 0;
			TintColor = Color3.fromRGB(255, 255, 255);
		}):Play()
		game.TweenService:Create(game.Lighting.SunRays, TweenInfo.new(2), {
			Intensity = 0;
		}):Play()
		task.wait(5)
		game.TweenService:Create(clone_2_upvr, TweenInfo.new(1), {
			Volume = 0;
		}):Play()
		task.delay(1, function() -- Line 166
			--[[ Upvalues[1]:
				[1]: clone_2_upvr (copied, readonly)
			]]
			clone_2_upvr.Parent = script
			clone_2_upvr:Stop()
		end)
		SkyboxManager_upvr.UpdateSkybox(Sky_upvr, 0)
		game.Lighting.ClockTime = 3
		game.TweenService:Create(game.Lighting, TweenInfo.new(5), {
			Ambient = Color3.fromRGB(138, 138, 138);
			ExposureCompensation = 0.2;
			Brightness = 2;
			ClockTime = 14;
		}):Play()
		task.delay(6, function() -- Line 184
			game.Lighting.SunRays.Enabled = false
		end)
	end
end
workspace:GetAttributeChangedSignal("ShootingStars"):Connect(function() -- Line 192
	--[[ Upvalues[2]:
		[1]: CreateEvent_upvr (readonly)
		[2]: ResetEvent_upvr (readonly)
	]]
	if workspace:GetAttribute("ShootingStars") then
		CreateEvent_upvr()
	else
		ResetEvent_upvr()
	end
end)
if workspace:GetAttribute("ShootingStars") then
	task.defer(function() -- Line 201
		--[[ Upvalues[1]:
			[1]: CreateEvent_upvr (readonly)
		]]
		CreateEvent_upvr(true)
	end)
else
	ResetEvent_upvr(true)
end
return {}