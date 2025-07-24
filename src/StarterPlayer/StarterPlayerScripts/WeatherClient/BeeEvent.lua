-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:33:00
-- Luau version 6, Types version 3
-- Time taken: 0.014856 seconds

local RaycastParams_new_result1 = RaycastParams.new()
RaycastParams_new_result1.FilterDescendantsInstances = {workspace.Terrain, workspace}
RaycastParams_new_result1.FilterType = Enum.RaycastFilterType.Include
local var3_upvw = false
local Sky_upvr = script.Sky
local SkyboxManager_upvr = require(game.ReplicatedStorage.Modules.SkyboxManager)
SkyboxManager_upvr.AddSkybox(Sky_upvr)
local clone_8_upvr = game.Lighting.ColorCorrection:Clone()
clone_8_upvr.Name = script.Name
clone_8_upvr.Parent = game.Lighting
local SFOTH_upvr = script.SFOTH
SkyboxManager_upvr.AddSkybox(SFOTH_upvr)
local function CreateFirework_upvr(arg1) -- Line 38, Named "CreateFirework"
	local clone_9 = game.ReplicatedStorage.ShootingStar:Clone()
	clone_9.CFrame = arg1
	clone_9.Parent = workspace
	local clone_7 = script.Fire:Clone()
	clone_7.Parent = workspace
	clone_7:Play()
	game.Debris:AddItem(clone_7, 5)
	local const_number_3 = 0
	while const_number_3 < 1 do
		clone_9:PivotTo(arg1:Lerp(arg1 * CFrame.new(0, 200, 0), const_number_3 + game:GetService("RunService").Heartbeat:Wait()))
	end
	for _, v in clone_9:GetDescendants() do
		if v:IsA("BillboardGui") then
			v.Enabled = false
		end
	end
	game.Debris:AddItem(clone_9, 4)
	local clone = game.ReplicatedStorage.FireworkBoom:Clone()
	clone.Parent = workspace
	clone.CFrame = clone_9.CFrame
	for _, v_2 in clone:GetDescendants() do
		if v_2:IsA("ParticleEmitter") then
			v_2:Emit(v_2:GetAttribute("EmitCount"))
		end
	end
	local clone_2 = script.Boom:Clone()
	clone_2.Parent = workspace
	clone_2:Play()
	game.Debris:AddItem(clone_2, 5)
	game.Debris:AddItem(clone, 10)
end
local CurrentCamera_upvr = workspace.CurrentCamera
local NumberUtil_upvr = require(game.ReplicatedStorage.Modules.NumberUtil)
local CutsceneService_upvr = require(game.ReplicatedStorage.Modules.CutsceneService)
local function CreateEvent_upvr() -- Line 85, Named "CreateEvent"
	--[[ Upvalues[9]:
		[1]: var3_upvw (read and write)
		[2]: clone_8_upvr (readonly)
		[3]: SkyboxManager_upvr (readonly)
		[4]: Sky_upvr (readonly)
		[5]: CurrentCamera_upvr (readonly)
		[6]: CreateFirework_upvr (readonly)
		[7]: SFOTH_upvr (readonly)
		[8]: NumberUtil_upvr (readonly)
		[9]: CutsceneService_upvr (readonly)
	]]
	var3_upvw = true
	game.TweenService:Create(clone_8_upvr, TweenInfo.new(2), {
		Brightness = 0;
	}):Play()
	game.TweenService:Create(game.Lighting, TweenInfo.new(2), {
		Ambient = Color3.fromRGB(230, 211, 141);
		Brightness = 1;
	}):Play()
	SkyboxManager_upvr.UpdateSkybox(Sky_upvr, 2)
	local DJJhai_upvr = workspace.Visuals:WaitForChild("DJJhai")
	local any_GetPivot_result1_upvr_2 = DJJhai_upvr:GetPivot()
	local const_number = 0
	local Humanoid = DJJhai_upvr:WaitForChild("jhailatte"):WaitForChild("Humanoid")
	local any_LoadAnimation_result1_upvr_2 = Humanoid.Animator:LoadAnimation(script.Mash)
	any_LoadAnimation_result1_upvr_2.Priority = Enum.AnimationPriority.Action4
	local any_LoadAnimation_result1_upvr_3 = Humanoid.Animator:LoadAnimation(script.Animation)
	any_LoadAnimation_result1_upvr_3:Play()
	local clone_10_upvr = game.ReplicatedStorage.Assets.DanceFloor:Clone()
	local any_GetPivot_result1_upvr = clone_10_upvr:GetPivot()
	clone_10_upvr.Parent = workspace
	local function updateFloor_upvr() -- Line 129, Named "updateFloor"
		--[[ Upvalues[1]:
			[1]: clone_10_upvr (readonly)
		]]
		for _, v_3 in clone_10_upvr.Colour:GetChildren() do
			v_3.Color = Color3.fromHSV(Random.new():NextNumber(0, 1), Random.new():NextNumber(0, 1), 1)
		end
	end
	task.spawn(function() -- Line 135
		--[[ Upvalues[1]:
			[1]: updateFloor_upvr (readonly)
		]]
		while workspace:GetAttribute("BeeEvent") do
			updateFloor_upvr()
			task.wait(1)
		end
	end)
	while const_number < 2 do
		local any_GetValue_result1 = game.TweenService:GetValue(const_number + game:GetService("RunService").Heartbeat:Wait(), Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
		DJJhai_upvr:PivotTo(any_GetPivot_result1_upvr_2:Lerp(any_GetPivot_result1_upvr_2 * CFrame.new(0, 85, 0), any_GetValue_result1))
		clone_10_upvr:PivotTo(any_GetPivot_result1_upvr:Lerp(any_GetPivot_result1_upvr * CFrame.new(0, 2, 0), any_GetValue_result1))
	end
	local Sound_upvr = Instance.new("Sound")
	Sound_upvr.Volume = 0.6
	Sound_upvr.Parent = workspace
	Sound_upvr.SoundId = "rbxassetid://138407858204990"
	Sound_upvr.Looped = true
	Sound_upvr:Play()
	repeat
		task.wait()
	until workspace:GetAttribute("BeeEventTimer") and not workspace:GetAttribute("BeeEvent")
	local any_LoadAnimation_result1_upvr = Humanoid.Animator:LoadAnimation(script.Up)
	local var52_upvw = false
	local var53_upvw = 0
	task.spawn(function() -- Line 186
		--[[ Upvalues[11]:
			[1]: var3_upvw (copied, read and write)
			[2]: DJJhai_upvr (readonly)
			[3]: Sound_upvr (readonly)
			[4]: var52_upvw (read and write)
			[5]: CurrentCamera_upvr (copied, readonly)
			[6]: var53_upvw (read and write)
			[7]: any_LoadAnimation_result1_upvr (readonly)
			[8]: clone_8_upvr (copied, readonly)
			[9]: CreateFirework_upvr (copied, readonly)
			[10]: any_LoadAnimation_result1_upvr_2 (readonly)
			[11]: any_LoadAnimation_result1_upvr_3 (readonly)
		]]
		local var114
		while var3_upvw do
			task.wait(0)
			if DJJhai_upvr:IsDescendantOf(workspace) and DJJhai_upvr:FindFirstChild("DJBooth") then
				DJJhai_upvr.DJBooth.Light.Attachment.PointLight.Color = Color3.fromHSV(tick() / 3 % 1, 1, 1)
			end
			local clamped = math.clamp((Sound_upvr.PlaybackLoudness - 200) / 700, 0, 1)
			if var114 and 0.2 < Sound_upvr.PlaybackLoudness / 1000 - var114 and not var52_upvw then
				for _, v_4 in DJJhai_upvr.jhailatte.HumanoidRootPart.Attachment:GetChildren() do
					v_4:Emit(v_4:GetAttribute("EmitCount"))
				end
				local _, any_WorldToScreenPoint_result2_2 = CurrentCamera_upvr:WorldToScreenPoint(DJJhai_upvr:GetPivot().p)
				if any_WorldToScreenPoint_result2_2 then
					game.TweenService:Create(workspace.CurrentCamera, TweenInfo.new(0.2), {
						FieldOfView = 68;
					}):Play()
					task.delay(0.2, function() -- Line 214
						game.TweenService:Create(workspace.CurrentCamera, TweenInfo.new(0.3), {
							FieldOfView = 70;
						}):Play()
					end)
				end
			end
			if 0.45 < clamped then
				local tick_result1_upvr = tick()
				var53_upvw = tick_result1_upvr
				if not var52_upvw then
					var52_upvw = true
					any_LoadAnimation_result1_upvr:Play()
					game.TweenService:Create(clone_8_upvr, TweenInfo.new(0.3), {
						TintColor = Color3.fromRGB(255, 250, 176);
						Brightness = 0.2;
					}):Play()
					game.TweenService:Create(game.Workspace.CurrentCamera, TweenInfo.new(0.5), {
						FieldOfView = 90;
					}):Play()
					for _, v_5_upvr in DJJhai_upvr.Pyro:GetDescendants() do
						if v_5_upvr:IsA("ParticleEmitter") then
							v_5_upvr.Enabled = true
							task.delay(1.5, function() -- Line 249
								--[[ Upvalues[1]:
									[1]: v_5_upvr (readonly)
								]]
								v_5_upvr.Enabled = false
							end)
						end
					end
					for _, v_6 in DJJhai_upvr.Confetti:GetDescendants() do
						v_6:Emit(v_6:GetAttribute("EmitCount"))
					end
					task.spawn(function() -- Line 259
						--[[ Upvalues[2]:
							[1]: DJJhai_upvr (copied, readonly)
							[2]: CreateFirework_upvr (copied, readonly)
						]]
						for _, v_7_upvr in DJJhai_upvr.SpawnPoints:GetChildren() do
							task.spawn(function() -- Line 261
								--[[ Upvalues[2]:
									[1]: CreateFirework_upvr (copied, readonly)
									[2]: v_7_upvr (readonly)
								]]
								CreateFirework_upvr(v_7_upvr.CFrame)
							end)
							task.wait(0.1)
						end
					end)
					task.delay(3, function() -- Line 268
						--[[ Upvalues[1]:
							[1]: clone_8_upvr (copied, readonly)
						]]
						game.TweenService:Create(clone_8_upvr, TweenInfo.new(3), {
							TintColor = Color3.fromRGB(255, 255, 255);
							Brightness = 0;
						}):Play()
					end)
					task.spawn(function() -- Line 272
						--[[ Upvalues[3]:
							[1]: var52_upvw (copied, read and write)
							[2]: DJJhai_upvr (copied, readonly)
							[3]: CurrentCamera_upvr (copied, readonly)
						]]
						while var52_upvw and DJJhai_upvr and DJJhai_upvr:IsDescendantOf(workspace) do
							for _, v_8 in DJJhai_upvr.jhailatte.HumanoidRootPart.Attachment:GetChildren() do
								v_8:Emit(v_8:GetAttribute("EmitCount"))
							end
							local _, any_WorldToScreenPoint_result2_3 = CurrentCamera_upvr:WorldToScreenPoint(DJJhai_upvr:GetPivot().p)
							if any_WorldToScreenPoint_result2_3 then
								game.TweenService:Create(workspace.CurrentCamera, TweenInfo.new(0.2), {
									FieldOfView = 68;
								}):Play()
								task.delay(0.2, function() -- Line 282
									game.TweenService:Create(workspace.CurrentCamera, TweenInfo.new(0.3), {
										FieldOfView = 70;
									}):Play()
								end)
							end
							task.wait(0.5)
						end
					end)
				end
				task.delay(1, function() -- Line 292
					--[[ Upvalues[6]:
						[1]: var53_upvw (copied, read and write)
						[2]: tick_result1_upvr (readonly)
						[3]: var52_upvw (copied, read and write)
						[4]: any_LoadAnimation_result1_upvr (copied, readonly)
						[5]: any_LoadAnimation_result1_upvr_2 (copied, readonly)
						[6]: any_LoadAnimation_result1_upvr_3 (copied, readonly)
					]]
					if var53_upvw == tick_result1_upvr then
						var52_upvw = false
						any_LoadAnimation_result1_upvr:Stop()
						any_LoadAnimation_result1_upvr_2:Stop()
						any_LoadAnimation_result1_upvr_3:Play()
					end
				end)
			end
			tick_result1_upvr = DJJhai_upvr.DJBooth.Speakers:GetChildren()
			for _, v_9 in DJJhai_upvr.DJBooth.Speakers:GetChildren() do
				if v_9:IsA("BasePart") then
					v_9.Mesh.Offset = Vector3.new(0, clamped * -1.4, 0)
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					v_9.Mesh.Scale = Vector3.new(1, 1, 1) * (clamped * 0.4 + 1)
				end
			end
		end
	end)
	local var159_upvr = any_GetPivot_result1_upvr_2 * CFrame.new(0, 85, 0)
	task.spawn(function() -- Line 318
		--[[ Upvalues[12]:
			[1]: Sound_upvr (readonly)
			[2]: DJJhai_upvr (readonly)
			[3]: var159_upvr (readonly)
			[4]: any_GetPivot_result1_upvr_2 (readonly)
			[5]: clone_10_upvr (readonly)
			[6]: any_GetPivot_result1_upvr (readonly)
			[7]: any_LoadAnimation_result1_upvr (readonly)
			[8]: any_LoadAnimation_result1_upvr_3 (readonly)
			[9]: SkyboxManager_upvr (copied, readonly)
			[10]: Sky_upvr (copied, readonly)
			[11]: SFOTH_upvr (copied, readonly)
			[12]: clone_8_upvr (copied, readonly)
		]]
		game.TweenService:Create(game.SoundService.Music.Tunes.Music, TweenInfo.new(2), {
			Volume = 0;
		}):Play()
		repeat
			task.wait()
		until not workspace:GetAttribute("BeeEvent")
		game.TweenService:Create(Sound_upvr, TweenInfo.new(1), {
			Volume = 0;
		}):Play()
		task.delay(2, function() -- Line 325
			--[[ Upvalues[1]:
				[1]: Sound_upvr (copied, readonly)
			]]
			Sound_upvr:Destroy()
		end)
		local const_number_2 = 0
		while const_number_2 < 2 do
			local any_GetValue_result1_2 = game.TweenService:GetValue(const_number_2 + game:GetService("RunService").Heartbeat:Wait(), Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
			DJJhai_upvr:PivotTo(var159_upvr:Lerp(any_GetPivot_result1_upvr_2, any_GetValue_result1_2))
			clone_10_upvr:PivotTo(any_GetPivot_result1_upvr * CFrame.new(0, 2, 0):Lerp(any_GetPivot_result1_upvr, any_GetValue_result1_2))
		end
		game.TweenService:Create(game.SoundService.Music.Tunes.Music, TweenInfo.new(2), {
			Volume = 1;
		}):Play()
		clone_10_upvr:Destroy()
		any_LoadAnimation_result1_upvr:Destroy()
		any_LoadAnimation_result1_upvr_3:Destroy()
		if DJJhai_upvr then
			DJJhai_upvr:Destroy()
		end
		SkyboxManager_upvr.UpdateSkybox(Sky_upvr, 0)
		SkyboxManager_upvr.UpdateSkybox(SFOTH_upvr, 0)
		game.TweenService:Create(clone_8_upvr, TweenInfo.new(3), {
			Brightness = 0;
			TintColor = Color3.fromRGB(255, 255, 255);
		}):Play()
		game.TweenService:Create(game.Lighting, TweenInfo.new(3), {
			Ambient = game.Lighting:GetAttribute("DefaultAmbient");
			ExposureCompensation = game.Lighting:GetAttribute("DefaultExposure");
			Brightness = game.Lighting:GetAttribute("DefaultBrightness");
		}):Play()
		game.TweenService:Create(game.Lighting.Atmosphere, TweenInfo.new(3), {
			Density = 0;
			Offset = 0;
			Color = Color3.fromRGB(215, 244, 255);
			Decay = Color3.fromRGB(190, 238, 255);
		}):Play()
	end)
	repeat
		if workspace:GetAttribute("BeeEventCurrentClock") then
			DJJhai_upvr.Screen:FindFirstChild("Timer", true).Text = NumberUtil_upvr.compactFormat(workspace:GetAttribute("BeeEventCurrentClock"))
		end
		task.wait(1)
	until workspace:GetAttribute("BeeEventCurrentClock") <= 0
	game.TweenService:Create(DJJhai_upvr.Screen, TweenInfo.new(1), {
		CFrame = DJJhai_upvr.Screen.CFrame * CFrame.new(0, -200, 0);
	}):Play()
	DJJhai_upvr.Screen:Destroy()
	game.TweenService:Create(Sound_upvr, TweenInfo.new(1), {
		Volume = 0;
	}):Play()
	task.delay(0.3, function() -- Line 397
		--[[ Upvalues[1]:
			[1]: Sound_upvr (readonly)
		]]
		Sound_upvr:Stop()
	end)
	local clone_6 = script["Dj Scratch Effect"]:Clone()
	clone_6.SoundId = "rbxassetid://1846552051"
	clone_6.Parent = workspace
	clone_6:Play()
	game.Debris:AddItem(clone_6, 5)
	game.TweenService:Create(workspace.CurrentCamera, TweenInfo.new(2), {
		FieldOfView = 65;
	}):Play()
	task.wait(2)
	local clone_4 = script.Impact:Clone()
	clone_4.SoundId = "rbxassetid://9125402735"
	clone_4.Parent = workspace
	clone_4:Play()
	game.Debris:AddItem(clone_4, 7)
	for _ = 1, 4 do
		for _, v_10 in DJJhai_upvr.Pyro:GetDescendants() do
			if v_10:IsA("ParticleEmitter") then
				v_10:Emit(15)
			end
		end
		local clone_5 = script["Air Horn Sound Effect"]:Clone()
		clone_5.SoundId = "rbxassetid://1542459939"
		clone_5.Parent = workspace
		game.Debris:AddItem(clone_5, 4)
		clone_5:Play()
		game.TweenService:Create(workspace.CurrentCamera, TweenInfo.new(0.1), {
			FieldOfView = 68;
		}):Play()
		task.delay(0.05, function() -- Line 432
			game.TweenService:Create(workspace.CurrentCamera, TweenInfo.new(0.05), {
				FieldOfView = 70;
			}):Play()
		end)
		task.wait(0.15)
	end
	for _, v_11_upvr in DJJhai_upvr.Pyro:GetDescendants() do
		if v_11_upvr:IsA("ParticleEmitter") then
			v_11_upvr.Enabled = true
			task.delay(1.5, function() -- Line 444
				--[[ Upvalues[1]:
					[1]: v_11_upvr (readonly)
				]]
				v_11_upvr.Enabled = false
			end)
		end
	end
	task.spawn(function() -- Line 452
		--[[ Upvalues[2]:
			[1]: DJJhai_upvr (readonly)
			[2]: CreateFirework_upvr (copied, readonly)
		]]
		local tbl_3 = {}
		for i_13, v_12_upvr in DJJhai_upvr.SpawnPoints:GetChildren() do
			task.spawn(function() -- Line 455
				--[[ Upvalues[2]:
					[1]: CreateFirework_upvr (copied, readonly)
					[2]: v_12_upvr (readonly)
				]]
				CreateFirework_upvr(v_12_upvr.CFrame)
			end)
			tbl_3[(#DJJhai_upvr.SpawnPoints:GetChildren()) - (i_13 - 1)] = v_12_upvr.CFrame
			task.wait(0.1)
		end
		for _, v_13_upvr in tbl_3 do
			task.spawn(function() -- Line 464
				--[[ Upvalues[2]:
					[1]: CreateFirework_upvr (copied, readonly)
					[2]: v_13_upvr (readonly)
				]]
				CreateFirework_upvr(v_13_upvr)
			end)
			task.wait(0.1)
		end
	end)
	task.wait(2)
	local clone_3 = script.Countdown:Clone()
	clone_3.SoundId = "rbxassetid://122907949849153"
	clone_3.Parent = workspace
	clone_3:Play()
	game.Debris:AddItem(clone_3, 5)
	for _ = 1, 5 do
		task.wait(1)
		game.TweenService:Create(clone_8_upvr, TweenInfo.new(0.3), {
			TintColor = Color3.fromRGB(255, 226, 111);
			Brightness = 0.2;
		}):Play()
		game.TweenService:Create(workspace.CurrentCamera, TweenInfo.new(0.3), {
			FieldOfView = 68;
		}):Play()
		task.delay(0.05, function() -- Line 484
			--[[ Upvalues[1]:
				[1]: clone_8_upvr (copied, readonly)
			]]
			game.TweenService:Create(clone_8_upvr, TweenInfo.new(0.3), {
				TintColor = Color3.fromRGB(255, 255, 255);
				Brightness = 0;
			}):Play()
			game.TweenService:Create(workspace.CurrentCamera, TweenInfo.new(0.4), {
				FieldOfView = 70;
			}):Play()
		end)
	end
	task.wait(0.5)
	print("Play Bee Cutscene")
	CutsceneService_upvr.Play(game.ReplicatedStorage.Assets.Cutscenes.BeeCutscene)
end
workspace:GetAttributeChangedSignal("BeeEvent"):Connect(function() -- Line 500
	--[[ Upvalues[2]:
		[1]: CreateEvent_upvr (readonly)
		[2]: var3_upvw (read and write)
	]]
	if workspace:GetAttribute("BeeEvent") then
		CreateEvent_upvr()
	else
		var3_upvw = false
	end
end)
if workspace:GetAttribute("BeeEvent") then
	task.defer(CreateEvent_upvr)
else
	var3_upvw = false
end
return {}