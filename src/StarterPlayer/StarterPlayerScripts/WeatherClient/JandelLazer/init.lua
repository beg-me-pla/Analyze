-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:33:00
-- Luau version 6, Types version 3
-- Time taken: 0.004017 seconds

local var1_upvw = false
local CameraShaker_upvr = require(game.ReplicatedStorage.Code.CameraShaker)
local clone_upvr = game.Lighting.ColorCorrection:Clone()
clone_upvr.Name = script.Name
clone_upvr.Parent = game.Lighting
local any_new_result1_upvr = CameraShaker_upvr.new(Enum.RenderPriority.Camera.Value, function(arg1) -- Line 17
	workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame * arg1
end)
local SkyboxManager_upvr = require(game.ReplicatedStorage.Modules.SkyboxManager)
local Sky_upvr = script.Sky
local function CreateEvent_upvr() -- Line 22, Named "CreateEvent"
	--[[ Upvalues[6]:
		[1]: var1_upvw (read and write)
		[2]: any_new_result1_upvr (readonly)
		[3]: CameraShaker_upvr (readonly)
		[4]: clone_upvr (readonly)
		[5]: SkyboxManager_upvr (readonly)
		[6]: Sky_upvr (readonly)
	]]
	var1_upvw = true
	any_new_result1_upvr:Start()
	task.spawn(function() -- Line 29
		--[[ Upvalues[3]:
			[1]: any_new_result1_upvr (copied, readonly)
			[2]: CameraShaker_upvr (copied, readonly)
			[3]: clone_upvr (copied, readonly)
		]]
		any_new_result1_upvr:Shake(CameraShaker_upvr.Presets.Explosion)
		game.TweenService:Create(clone_upvr, TweenInfo.new(0.3), {
			TintColor = Color3.fromRGB(255, 219, 201);
			Brightness = 0.5;
		}):Play()
		game.TweenService:Create(game.Workspace.CurrentCamera, TweenInfo.new(0.5), {
			FieldOfView = 90;
		}):Play()
		task.wait(0.3)
		game.TweenService:Create(game.Workspace.CurrentCamera, TweenInfo.new(3), {
			FieldOfView = 70;
		}):Play()
		game.TweenService:Create(clone_upvr, TweenInfo.new(3), {
			TintColor = Color3.fromRGB(255, 255, 255);
			Brightness = 0;
		}):Play()
	end)
	local jandel_upvr = workspace.Visuals:WaitForChild("jandel")
	local clone_upvr_3 = game.ReplicatedStorage.LazerEyes:Clone()
	clone_upvr_3.Parent = workspace.Visuals
	local clone_upvr_2 = game.ReplicatedStorage.Assets.beamTrail:Clone()
	clone_upvr_2.Parent = workspace.Visuals
	local function moveTornado_upvr(arg1) -- Line 50, Named "moveTornado"
		--[[ Upvalues[3]:
			[1]: clone_upvr_3 (readonly)
			[2]: jandel_upvr (readonly)
			[3]: clone_upvr_2 (readonly)
		]]
		local RaycastParams_new_result1 = RaycastParams.new()
		RaycastParams_new_result1.FilterDescendantsInstances = {workspace.BasePlate.TopBaseplate}
		RaycastParams_new_result1.FilterType = Enum.RaycastFilterType.Include
		if workspace.Visuals:FindFirstChild("LazerSpot") then
			local any_Lerp_result1 = clone_upvr_3:GetPivot():Lerp(workspace.Visuals.LazerSpot.CFrame, arg1 * 5)
			local any_GetPivot_result1 = jandel_upvr:GetPivot()
			local cframe = CFrame.new(any_GetPivot_result1.Position, workspace.Visuals.LazerSpot.Position)
			local workspace_Raycast_result1 = workspace:Raycast(jandel_upvr.Head.CFrame.Position, ((jandel_upvr.Head.CFrame.LookVector + CFrame.new(jandel_upvr.Head.Position, any_Lerp_result1.Position).LookVector * 150).Unit) * ((jandel_upvr.Head.Position - workspace.Visuals.LazerSpot.Position).Magnitude * 1.2), RaycastParams_new_result1)
			if not workspace_Raycast_result1 then
				jandel_upvr:PivotTo(any_GetPivot_result1:Lerp(cframe, arg1 * 5))
				clone_upvr_3:PivotTo(CFrame.new(any_Lerp_result1.Position, jandel_upvr:GetPivot().p))
				for _, v in clone_upvr_2:GetChildren() do
					if v:IsA("Trail") then
						v.Enabled = false
					end
				end
				clone_upvr_2.CFrame = CFrame.new(clone_upvr_3:GetPivot().Position) * CFrame.new(0, 0, -0.1)
				return
			end
			jandel_upvr:PivotTo(any_GetPivot_result1:Lerp(cframe, arg1 * 5))
			clone_upvr_3:PivotTo(CFrame.new(workspace_Raycast_result1.Position, jandel_upvr:GetPivot().p) * CFrame.Angles(0, 4.71238898038469, 0))
			for _, v_2 in clone_upvr_2:GetChildren() do
				if v_2:IsA("Trail") then
					v_2.Enabled = true
				end
			end
			clone_upvr_2.CFrame = CFrame.new(clone_upvr_3:GetPivot().Position, clone_upvr_3:GetPivot().Position + workspace_Raycast_result1.Normal + CFrame.new(clone_upvr_3:GetPivot().Position, clone_upvr_2.CFrame.Position).LookVector * Vector3.new(1, 0, 1)) * CFrame.new(0, 0, -0.1)
		end
	end
	for _, v_3 in clone_upvr_3:FindFirstChild("LeftEye", true):GetDescendants() do
		if v_3:IsA("Beam") then
			v_3.Attachment0 = jandel_upvr:FindFirstChild("LeftEye", true)
		end
	end
	for _, v_4 in clone_upvr_3:FindFirstChild("RightEye", true):GetDescendants() do
		if v_4:IsA("Beam") then
			v_4.Attachment0 = jandel_upvr:FindFirstChild("RightEye", true)
		end
	end
	moveTornado_upvr(1)
	task.spawn(function() -- Line 145
		--[[ Upvalues[7]:
			[1]: var1_upvw (copied, read and write)
			[2]: moveTornado_upvr (readonly)
			[3]: clone_upvr_3 (readonly)
			[4]: clone_upvr_2 (readonly)
			[5]: SkyboxManager_upvr (copied, readonly)
			[6]: Sky_upvr (copied, readonly)
			[7]: clone_upvr (copied, readonly)
		]]
		while var1_upvw do
			moveTornado_upvr(game:GetService("RunService").Heartbeat:Wait())
		end
		clone_upvr_3:Destroy()
		game.Debris:AddItem(clone_upvr_2, 10)
		SkyboxManager_upvr.UpdateSkybox(Sky_upvr, 0)
		game.TweenService:Create(clone_upvr, TweenInfo.new(3), {
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
		task.delay(3, function() -- Line 176
			game.Workspace.Terrain.Clouds.Enabled = false
		end)
	end)
	repeat
		task.wait()
	until var1_upvw == false
	game.Debris:AddItem(clone_upvr_2, 3)
	clone_upvr_3:Destroy()
end
workspace:GetAttributeChangedSignal("JandelLazer"):Connect(function() -- Line 191
	--[[ Upvalues[2]:
		[1]: CreateEvent_upvr (readonly)
		[2]: var1_upvw (read and write)
	]]
	if workspace:GetAttribute("JandelLazer") then
		CreateEvent_upvr()
	else
		var1_upvw = false
	end
end)
if workspace:GetAttribute("JandelLazer") then
	task.defer(CreateEvent_upvr)
else
	var1_upvw = false
end
return {}