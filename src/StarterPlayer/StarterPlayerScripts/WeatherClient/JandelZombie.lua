-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:33:04
-- Luau version 6, Types version 3
-- Time taken: 0.006257 seconds

local RaycastParams_new_result1 = RaycastParams.new()
RaycastParams_new_result1.FilterDescendantsInstances = {workspace.Terrain, workspace}
RaycastParams_new_result1.FilterType = Enum.RaycastFilterType.Include
local var3_upvw = false
local clone_upvr = game.Lighting.ColorCorrection:Clone()
clone_upvr.Name = script.Name
clone_upvr.Parent = game.Lighting
require(game.ReplicatedStorage.Modules.SkyboxManager).AddSkybox(script.Sky)
local CameraShaker_upvr = require(game.ReplicatedStorage.Code.CameraShaker)
local any_new_result1_upvr = CameraShaker_upvr.new(Enum.RenderPriority.Camera.Value, function(arg1) -- Line 36
	workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame * arg1
end)
local Field_Of_View_Module_upvr = require(game.ReplicatedStorage.Field_Of_View_Module)
local function CreateEvent_upvr() -- Line 41, Named "CreateEvent"
	--[[ Upvalues[5]:
		[1]: var3_upvw (read and write)
		[2]: clone_upvr (readonly)
		[3]: any_new_result1_upvr (readonly)
		[4]: CameraShaker_upvr (readonly)
		[5]: Field_Of_View_Module_upvr (readonly)
	]]
	var3_upvw = true
	game.TweenService:Create(game.Lighting, TweenInfo.new(2), {
		Ambient = Color3.fromRGB(70, 70, 70);
		Brightness = 2;
		ColorShift_Bottom = Color3.fromRGB(153, 153, 153);
		ColorShift_Top = Color3.fromRGB(171, 255, 170);
		OutdoorAmbient = Color3.fromRGB(172, 172, 172);
		ClockTime = 3.277;
		ExposureCompensation = 0.75;
	}):Play()
	game.Lighting.Atmosphere.Color = Color3.fromRGB(41, 91, 39)
	game.Lighting.Atmosphere.Decay = Color3.fromRGB(255, 255, 255)
	game.TweenService:Create(game.Lighting.Atmosphere, TweenInfo.new(2), {
		Density = 0.1;
		Haze = 2.05;
		Glare = 0.32;
	}):Play()
	game.TweenService:Create(clone_upvr, TweenInfo.new(2), {
		Brightness = 0;
		Contrast = 0.1;
		Saturation = 0.15;
		TintColor = Color3.fromRGB(201, 201, 255);
	}):Play()
	game.TweenService:Create(workspace.Terrain.Clouds, TweenInfo.new(5), {
		Cover = 0.623;
		Density = 0.145;
		Color = Color3.fromRGB(25, 93, 24);
	}):Play()
	any_new_result1_upvr:Start()
	any_new_result1_upvr:ShakeSustain(CameraShaker_upvr.Presets.Earthquake)
	task.delay(3, function() -- Line 84
		--[[ Upvalues[1]:
			[1]: any_new_result1_upvr (copied, readonly)
		]]
		any_new_result1_upvr:StopSustained(2)
	end)
	local clone_2 = script:WaitForChild("ZombieWindEffect"):Clone()
	clone_2.Parent = workspace
	if not workspace:GetAttribute("JandelZombie_Slam_Started") then
		workspace:GetAttributeChangedSignal("JandelZombie_Slam_Started"):Once(function() -- Line 92
			--[[ Upvalues[2]:
				[1]: any_new_result1_upvr (copied, readonly)
				[2]: CameraShaker_upvr (copied, readonly)
			]]
			if workspace:GetAttribute("JandelZombie_Slam_Started") then
				any_new_result1_upvr:ShakeSustain(CameraShaker_upvr.Presets.Earthquake)
				task.wait(5)
				any_new_result1_upvr:StopSustained(2)
			end
		end)
	end
	if not workspace:GetAttribute("JandelZombie_Slam") then
		workspace:GetAttributeChangedSignal("JandelZombie_Slam"):Once(function() -- Line 102
			--[[ Upvalues[3]:
				[1]: Field_Of_View_Module_upvr (copied, readonly)
				[2]: any_new_result1_upvr (copied, readonly)
				[3]: CameraShaker_upvr (copied, readonly)
			]]
			local var56
			if workspace:GetAttribute("JandelZombie_Slam") then
				var56 = "ZombieDirtSpawners"
				local SOME = workspace:FindFirstChild(var56)
				if SOME then
					local children, NONE_3, NONE_2 = SOME:GetChildren()
					for _, v in children, NONE_3, NONE_2 do
						for _, v_2 in v.Attachment:GetChildren() do
							if v_2:IsA("ParticleEmitter") then
								v_2:Emit(v_2:GetAttribute("EmitCount") or 1)
							end
						end
					end
				end
				NONE_3 = script
				local clone_3 = NONE_3.SlamVfx:Clone()
				NONE_3 = workspace
				clone_3.Parent = NONE_3
				NONE_3 = clone_3:GetChildren()
				local children_2_upvr, NONE_7, NONE_4 = clone_3:GetChildren()
				for _, v_3 in children_2_upvr, NONE_7, NONE_4 do
					v_3:Emit(v_3:GetAttribute("EmitCount"))
				end
				children_2_upvr = game:GetService("Debris"):AddItem
				children_2_upvr(clone_3, 3)
				children_2_upvr = game.Players.LocalPlayer.Character
				if children_2_upvr then
					children_2_upvr = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
					if children_2_upvr then
						children_2_upvr = game.Players.LocalPlayer.Character
					end
				end
				if children_2_upvr then
					children_2_upvr.Humanoid.JumpPower = 200
					children_2_upvr.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
					task.delay(0.1, function() -- Line 126
						--[[ Upvalues[1]:
							[1]: children_2_upvr (readonly)
						]]
						children_2_upvr.Humanoid.JumpPower = 50
					end)
				end
				Field_Of_View_Module_upvr.Change_FOV(50, 0.5)
				any_new_result1_upvr:Shake(CameraShaker_upvr.Presets.Explosion)
				task.wait(0.5)
				Field_Of_View_Module_upvr.Change_FOV(70, 0.5)
			end
		end)
	end
	repeat
		task.wait()
	until var3_upvw == false
	game.TweenService:Create(game.Lighting, TweenInfo.new(0.1), {
		Ambient = Color3.fromRGB(138, 138, 138);
		Brightness = 2;
		ColorShift_Bottom = Color3.fromRGB(0, 0, 0);
		ColorShift_Top = Color3.fromRGB(0, 0, 0);
		OutdoorAmbient = Color3.fromRGB(128, 128, 128);
		ClockTime = 14;
		ExposureCompensation = 0;
	}):Play()
	for _, v_4 in clone_2:GetChildren() do
		v_4.Enabled = false
	end
	any_new_result1_upvr:StopSustained(2)
	game.Debris:AddItem(clone_2, 4)
	game.TweenService:Create(clone_upvr, TweenInfo.new(3), {
		Brightness = 0;
		Contrast = 0;
		Saturation = 0;
		TintColor = Color3.fromRGB(255, 255, 255);
	}):Play()
	game.TweenService:Create(game.Lighting.Atmosphere, TweenInfo.new(2), {
		Density = 0;
		Haze = 0;
		Color = Color3.fromRGB(215, 244, 255);
		Decay = Color3.fromRGB(190, 238, 255);
		Glare = 0;
	}):Play()
	game.TweenService:Create(workspace.Terrain.Clouds, TweenInfo.new(2), {
		Cover = 0.646;
		Density = 0;
		Color = Color3.fromRGB(22, 40, 70);
	}):Play()
end
workspace:GetAttributeChangedSignal("JandelZombie"):Connect(function() -- Line 192
	--[[ Upvalues[2]:
		[1]: CreateEvent_upvr (readonly)
		[2]: var3_upvw (read and write)
	]]
	if workspace:GetAttribute("JandelZombie") then
		CreateEvent_upvr()
	else
		var3_upvw = false
	end
end)
if workspace:GetAttribute("JandelZombie") then
	task.defer(CreateEvent_upvr)
else
	var3_upvw = false
end
return {}