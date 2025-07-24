-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:33:02
-- Luau version 6, Types version 3
-- Time taken: 0.014121 seconds

local var1_upvw = false
local Sky_upvr = script.Sky
local SkyboxManager_upvr = require(game.ReplicatedStorage.Modules.SkyboxManager)
local CameraShaker_upvr = require(game.ReplicatedStorage.Code.CameraShaker)
local clone_upvr_7 = game.Lighting.ColorCorrection:Clone()
clone_upvr_7.Name = script.Name
clone_upvr_7.Parent = game.Lighting
SkyboxManager_upvr.AddSkybox(Sky_upvr, 0)
local any_new_result1_upvr = CameraShaker_upvr.new(Enum.RenderPriority.Camera.Value, function(arg1) -- Line 19
	workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame * arg1
end)
any_new_result1_upvr:Start()
local function CreateEvent_upvr() -- Line 23, Named "CreateEvent"
	--[[ Upvalues[6]:
		[1]: var1_upvw (read and write)
		[2]: any_new_result1_upvr (readonly)
		[3]: CameraShaker_upvr (readonly)
		[4]: SkyboxManager_upvr (readonly)
		[5]: Sky_upvr (readonly)
		[6]: clone_upvr_7 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	var1_upvw = true
	local clone_upvr_8 = game.ReplicatedStorage.WaterLevel:Clone()
	clone_upvr_8.Parent = workspace
	any_new_result1_upvr:ShakeSustain(CameraShaker_upvr.Presets.Earthquake)
	local var25_upvw = false
	local clone_upvr = script.liquid:Clone()
	clone_upvr.Volume = 0
	clone_upvr.Parent = game.Workspace
	clone_upvr:Play()
	local var28_upvw = false
	local var29_upvw = true
	local function var27() -- Line 40
		--[[ Upvalues[11]:
			[1]: clone_upvr_8 (readonly)
			[2]: var28_upvw (read and write)
			[3]: SkyboxManager_upvr (copied, readonly)
			[4]: Sky_upvr (copied, readonly)
			[5]: var29_upvw (read and write)
			[6]: any_new_result1_upvr (copied, readonly)
			[7]: clone_upvr_7 (copied, readonly)
			[8]: CameraShaker_upvr (copied, readonly)
			[9]: var1_upvw (copied, read and write)
			[10]: clone_upvr (readonly)
			[11]: var25_upvw (read and write)
		]]
		while true do
			task.wait(0.1)
			local CFrame_5 = workspace.CurrentCamera.CFrame
			if CFrame_5.Position.Y < clone_upvr_8.Position.Y and not var28_upvw then
				var28_upvw = true
				SkyboxManager_upvr.UpdateSkybox(Sky_upvr, 3)
				game.Lighting.Ambient = Color3.fromRGB(0, 132, 255)
				game.Lighting.OutdoorAmbient = Color3.fromRGB(147, 161, 255)
				game.SoundService.AmbientReverb = Enum.ReverbType.UnderWater
				for i, v in game.SoundService.Music:GetDescendants() do
					if v:HasTag("UnderWater") then
						v.Enabled = true
					end
				end
				if var29_upvw then
					var29_upvw = false
					any_new_result1_upvr:StopSustained()
					i = workspace
					i = TweenInfo.new
					v = 0.3
					i = i(v)
					v = {}
					v.FieldOfView = 90
					game.TweenService:Create(i.CurrentCamera, i, v):Play()
					i = TweenInfo.new
					v = 0.3
					i = i(v)
					v = {}
					v.Brightness = 0.7
					game.TweenService:Create(clone_upvr_7, i, v):Play()
					v = CameraShaker_upvr
					i = v.Presets
					any_new_result1_upvr:Shake(i.Explosion)
					local clone_upvr_4 = game.ReplicatedStorage.Bubble:Clone()
					clone_upvr_4.Parent = workspace.Visuals
					task.spawn(function() -- Line 74
						local var91 = math.tan(math.rad(workspace.CurrentCamera.FieldOfView / 2)) * 10
						local clone_upvr_3 = game.ReplicatedStorage.SubmergeEffect:Clone()
						clone_upvr_3.Size = Vector3.new(var91 * 1.2 / 1.78, var91, 0.1)
						clone_upvr_3.CFrame = workspace.CurrentCamera.CFrame * CFrame.new(0, 0, -5)
						clone_upvr_3.Parent = workspace.Visuals
						for _, v_2_upvr in clone_upvr_3:GetDescendants() do
							if v_2_upvr:IsA("ParticleEmitter") then
								v_2_upvr:Emit(v_2_upvr:GetAttribute("EmitCount"))
								v_2_upvr.Enabled = true
								task.delay(0.6, function() -- Line 98
									--[[ Upvalues[1]:
										[1]: v_2_upvr (readonly)
									]]
									v_2_upvr.Enabled = false
								end)
							end
						end
						local any_Connect_result1_upvr = game:GetService("RunService").RenderStepped:Connect(function() -- Line 85
							--[[ Upvalues[1]:
								[1]: clone_upvr_3 (readonly)
							]]
							local var94 = math.tan(math.rad(workspace.CurrentCamera.FieldOfView / 2)) * 10
							clone_upvr_3.Size = Vector3.new((var94) * (workspace.CurrentCamera.ViewportSize.X / workspace.CurrentCamera.ViewportSize.Y), var94, 0.1)
							clone_upvr_3.CFrame = workspace.CurrentCamera.CFrame * CFrame.new(0, 0, -5)
						end)
						task.delay(1.6, function() -- Line 104
							--[[ Upvalues[2]:
								[1]: any_Connect_result1_upvr (readonly)
								[2]: clone_upvr_3 (readonly)
							]]
							any_Connect_result1_upvr:Disconnect()
							clone_upvr_3:Destroy()
						end)
					end)
					local children_2, NONE_22, NONE_21 = clone_upvr_4:GetChildren()
					for _, v_3 in children_2, NONE_22, NONE_21 do
						if v_3:IsA("ParticleEmitter") then
							v_3:Emit(90)
						end
					end
					function NONE_21() -- Line 117
						--[[ Upvalues[1]:
							[1]: clone_upvr_4 (readonly)
						]]
						for _, v_4 in clone_upvr_4:GetChildren() do
							if v_4:IsA("ParticleEmitter") then
								game.TweenService:Create(v_4, TweenInfo.new(7), {
									Rate = 25;
								}):Play()
							end
						end
						game.TweenService:Create(workspace.CurrentCamera, TweenInfo.new(3), {
							FieldOfView = 70;
						}):Play()
					end
					task.delay(4, NONE_21)
					task.spawn(function() -- Line 127
						--[[ Upvalues[2]:
							[1]: var1_upvw (copied, read and write)
							[2]: clone_upvr_4 (readonly)
						]]
						repeat
							task.wait()
						until var1_upvw == false
						for _, v_5 in clone_upvr_4:GetChildren() do
							if v_5:IsA("ParticleEmitter") then
								v_5.Enabled = false
							end
						end
						task.delay(3, function() -- Line 135
							--[[ Upvalues[1]:
								[1]: clone_upvr_4 (copied, readonly)
							]]
							clone_upvr_4:Destroy()
						end)
					end)
					function NONE_21() -- Line 140
						--[[ Upvalues[1]:
							[1]: clone_upvr_7 (copied, readonly)
						]]
						game.TweenService:Create(clone_upvr_7, TweenInfo.new(0.3), {
							Brightness = 0.1;
						}):Play()
					end
					task.delay(0.7, NONE_21)
				end
				clone_upvr_4 = clone_upvr_7
				clone_upvr_4.TintColor = Color3.fromRGB(207, 234, 255)
				clone_upvr_4 = clone_upvr
				clone_upvr_4.Volume = 0.35
			else
				clone_upvr_4 = var28_upvw
				if clone_upvr_4 == true then
					clone_upvr_4 = CFrame_5.Position.Y
					if clone_upvr_8.Position.Y <= clone_upvr_4 then
						clone_upvr_4 = SkyboxManager_upvr.UpdateSkybox
						clone_upvr_4(Sky_upvr, 0)
						clone_upvr_4 = game.Lighting
						clone_upvr_4.Ambient = game.Lighting:GetAttribute("DefaultAmbient")
						clone_upvr_4 = game.Lighting
						clone_upvr_4.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
						clone_upvr_4 = clone_upvr_7
						clone_upvr_4.Brightness = 0
						clone_upvr_4 = clone_upvr_7
						clone_upvr_4.TintColor = Color3.fromRGB(255, 255, 255)
						clone_upvr_4 = false
						var28_upvw = clone_upvr_4
						clone_upvr_4 = game.SoundService
						clone_upvr_4.AmbientReverb = Enum.ReverbType.NoReverb
						clone_upvr_4 = game.SoundService.Music:GetDescendants()
						local descendants_4, NONE_13, NONE_2 = game.SoundService.Music:GetDescendants()
						for i_6, v_6 in descendants_4, NONE_13, NONE_2 do
							if v_6:HasTag("UnderWater") then
								v_6.Enabled = false
							end
						end
						descendants_4 = clone_upvr
						descendants_4.Volume = 0
					end
				end
			end
			i_6 = game
			descendants_4 = i_6.Players.LocalPlayer.Character
			if descendants_4 then
				v_6 = game
				i_6 = v_6.Players
				descendants_4 = i_6.LocalPlayer.Character:GetPivot().Position
				v_6 = clone_upvr_8
				i_6 = v_6.Position
				if descendants_4.Y < i_6.Y then
					var25_upvw = true
				else
					var25_upvw = false
				end
			end
		end
	end
	var27 = game.Players.LocalPlayer.Character
	local var124 = var27
	if not var124 then
		repeat
			task.wait()
		until not game.Players.LocalPlayer.Character or game.Players.LocalPlayer.Character:IsDescendantOf(workspace)
		var124 = game.Players.LocalPlayer.Character
	end
	local clone_upvr_5 = script.AlignPosition:Clone()
	local clone_upvr_6 = script.AlignOrientation:Clone()
	clone_upvr_5.Attachment0 = var124:WaitForChild("HumanoidRootPart"):WaitForChild("RootAttachment")
	clone_upvr_6.Attachment0 = clone_upvr_5.Attachment0
	clone_upvr_5.Parent = var124.PrimaryPart
	clone_upvr_6.Parent = var124.PrimaryPart
	local C0_upvr = var124.HumanoidRootPart.RootJoint.C0
	local any_LoadAnimation_result1_upvr = var124.Humanoid:LoadAnimation(script.WalkAnim)
	local tbl_2_upvr = {}
	local var131_upvw = Vector3.new(0, 0, 0)
	game.TweenService:Create(clone_upvr_8, TweenInfo.new(8), {
		CFrame = clone_upvr_8.CFrame * CFrame.new(0, 500, 0);
	}):Play()
	repeat
		task.wait()
	until var1_upvw == false
	game.TweenService:Create(clone_upvr_8, TweenInfo.new(8), {
		CFrame = clone_upvr_8.CFrame * CFrame.new(0, -500, 0);
	}):Play()
	task.wait(8)
	game:GetService("RunService").Stepped:Connect(function(arg1) -- Line 209
		--[[ Upvalues[7]:
			[1]: var131_upvw (read and write)
			[2]: tbl_2_upvr (readonly)
			[3]: clone_upvr_5 (readonly)
			[4]: clone_upvr_6 (readonly)
			[5]: var25_upvw (read and write)
			[6]: C0_upvr (readonly)
			[7]: any_LoadAnimation_result1_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 19 start (CF ANALYSIS FAILED)
		task.spawn(function() -- Line 211
			--[[ Upvalues[2]:
				[1]: var131_upvw (copied, read and write)
				[2]: tbl_2_upvr (copied, readonly)
			]]
			for _, v_7 in game.Players:GetPlayers() do
				if v_7.Character and v_7 ~= game.Players.LocalPlayer then
					if not v_7.Character:GetAttribute("NormalC0") then
						v_7.Character:SetAttribute("NormalC0", v_7.Character.HumanoidRootPart.RootJoint.C0)
					end
					local Magnitude_2 = v_7.Character.PrimaryPart.AssemblyLinearVelocity.Magnitude
					local CFrame = v_7.Character.PrimaryPart.CFrame
					local p_3 = (CFrame:inverse() * CFrame.new(CFrame.p + v_7.Character.PrimaryPart.AssemblyLinearVelocity.Unit)).p
					local RaycastParams_new_result1 = RaycastParams.new()
					RaycastParams_new_result1.FilterDescendantsInstances = {v_7.Character}
					RaycastParams_new_result1.FilterType = Enum.RaycastFilterType.Exclude
					local workspace_Raycast_result1_2 = workspace:Raycast(v_7.Character.HumanoidRootPart.Position, Vector3.new(0, -5, 0), RaycastParams_new_result1)
					if not workspace_Raycast_result1_2 and 5 < Magnitude_2 and not tbl_2_upvr[v_7] then
						tbl_2_upvr[v_7] = v_7.Character.Humanoid.Animator:LoadAnimation(script.WalkAnim)
						tbl_2_upvr[v_7]:Play()
						local var158 = -math.clamp((Vector3.new(math.max(-16, math.min(16, var131_upvw.x + p_3.x * 1)), -math.max(-16, var131_upvw.y + p_3.y * 1), math.max(-16, math.min(16, var131_upvw.z + p_3.z * 1))) * 60).Z / 16, -1, 1)
						print(var158)
						game.TweenService:Create(v_7.Character.HumanoidRootPart.RootJoint, TweenInfo.new(0.4), {
							C0 = v_7.Character:GetAttribute("NormalC0") * CFrame.Angles(math.rad(var158 * 70), 0, 0);
						}):Play()
					elseif Magnitude_2 < 8 then
						local tbl_8 = {}
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						tbl_8.C0 = v_7.Character:GetAttribute("NormalC0")
						game.TweenService:Create(v_7.Character.HumanoidRootPart.RootJoint, TweenInfo.new(0.4), tbl_8):Play()
						if workspace_Raycast_result1_2 and tbl_2_upvr[v_7] then
							tbl_2_upvr[v_7]:Stop()
							tbl_2_upvr[v_7] = nil
						end
					end
				end
			end
		end)
		local Character = game.Players.LocalPlayer.Character
		if not Character then
		else
			local Humanoid = Character:FindFirstChild("Humanoid")
			local CFrame_3 = game.Workspace.CurrentCamera.CFrame
			local p_2 = (CFrame_3:inverse() * CFrame.new(CFrame_3.p + Humanoid.MoveDirection)).p
			var131_upvw *= 0.95
			var131_upvw = Vector3.new(math.max(-16, math.min(16, var131_upvw.x + p_2.x * 1)), -math.max(-16, var131_upvw.y + p_2.y * 1), math.max(-16, math.min(16, var131_upvw.z + p_2.z * 1)))
			clone_upvr_5.Position = (Character.HumanoidRootPart.CFrame * CFrame.new(var131_upvw)).Position
			clone_upvr_6.CFrame = CFrame_3
			local RaycastParams_new_result1_2 = RaycastParams.new()
			RaycastParams_new_result1_2.FilterDescendantsInstances = {Character}
			RaycastParams_new_result1_2.FilterType = Enum.RaycastFilterType.Exclude
			if not var25_upvw or workspace:Raycast(Character.HumanoidRootPart.Position, Vector3.new(0, -5, 0), RaycastParams_new_result1_2) then
				clone_upvr_5.Enabled = false
				clone_upvr_6.Enabled = false
				Humanoid.PlatformStand = false
				game.TweenService:Create(Character.HumanoidRootPart.RootJoint, TweenInfo.new(0.1), {
					C0 = C0_upvr;
				}):Play()
				any_LoadAnimation_result1_upvr:Stop()
				return
			end
			Humanoid.PlatformStand = true
			clone_upvr_5.Enabled = true
			clone_upvr_6.Enabled = true
			if 0 < p_2.Magnitude then
				if not any_LoadAnimation_result1_upvr.IsPlaying then
					any_LoadAnimation_result1_upvr:Play()
					-- KONSTANTWARNING: GOTO [245] #171
				end
			else
				any_LoadAnimation_result1_upvr:Stop()
			end
			-- KONSTANTERROR: [0] 1. Error Block 19 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [245] 171. Error Block 12 start (CF ANALYSIS FAILED)
			game.TweenService:Create(Character.HumanoidRootPart.RootJoint, TweenInfo.new(0.1), {
				C0 = C0_upvr * CFrame.Angles(math.rad(-math.clamp(var131_upvw.Z / 16, -1, 1) * 70), math.rad(-math.clamp(var131_upvw.X / 16, -1, 1) * 35), 0);
			}):Play()
			-- KONSTANTERROR: [245] 171. Error Block 12 end (CF ANALYSIS FAILED)
		end
	end):Disconnect()
	task.cancel(task.spawn(var27))
	SkyboxManager_upvr.UpdateSkybox(Sky_upvr, 0)
	game.Lighting.Ambient = game.Lighting:GetAttribute("DefaultAmbient")
	game.Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
	for _, v_8_upvr in game.Players:GetPlayers() do
		task.spawn(function() -- Line 345
			--[[ Upvalues[2]:
				[1]: tbl_2_upvr (readonly)
				[2]: v_8_upvr (readonly)
			]]
			if tbl_2_upvr[v_8_upvr] then
				tbl_2_upvr[v_8_upvr]:Stop()
				tbl_2_upvr[v_8_upvr] = nil
			end
			game.TweenService:Create(v_8_upvr.Character.HumanoidRootPart.RootJoint, TweenInfo.new(0.1), {
				C0 = v_8_upvr.Character:GetAttribute("NormalC0");
			}):Play()
		end)
		local _
	end
	clone_upvr_7.Brightness = 0
	clone_upvr_7.TintColor = Color3.fromRGB(255, 255, 255)
	game.SoundService.AmbientReverb = Enum.ReverbType.NoReverb
	clone_upvr:Destroy()
	for _, v_9 in game.SoundService.Music:GetDescendants() do
		if v_9:HasTag("UnderWater") then
			v_9.Enabled = false
		end
	end
	clone_upvr_5.Enabled = false
	clone_upvr_6.Enabled = false
	var124.Humanoid.PlatformStand = false
	var124.HumanoidRootPart.RootJoint.C0 = C0_upvr
	clone_upvr_8:Destroy()
	any_LoadAnimation_result1_upvr:Stop()
	any_LoadAnimation_result1_upvr:Destroy()
	SkyboxManager_upvr.UpdateSkybox(Sky_upvr, 0)
end
workspace:GetAttributeChangedSignal("UnderTheSea"):Connect(function() -- Line 376
	--[[ Upvalues[2]:
		[1]: CreateEvent_upvr (readonly)
		[2]: var1_upvw (read and write)
	]]
	if workspace:GetAttribute("UnderTheSea") then
		CreateEvent_upvr()
	else
		var1_upvw = false
	end
end)
if workspace:GetAttribute("UnderTheSea") then
	task.defer(CreateEvent_upvr)
else
	var1_upvw = false
end
return {}