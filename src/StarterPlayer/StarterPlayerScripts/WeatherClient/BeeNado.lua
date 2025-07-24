-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:33:00
-- Luau version 6, Types version 3
-- Time taken: 0.004230 seconds

local var1_upvw = false
local Sky_upvr = script.Sky
local SkyboxManager_upvr = require(game.ReplicatedStorage.Modules.SkyboxManager)
SkyboxManager_upvr.AddSkybox(Sky_upvr, 0)
local clone_upvr = game.Lighting.ColorCorrection:Clone()
clone_upvr.Name = script.Name
clone_upvr.Parent = game.Lighting
local function CreateEvent_upvr() -- Line 18, Named "CreateEvent"
	--[[ Upvalues[4]:
		[1]: var1_upvw (read and write)
		[2]: SkyboxManager_upvr (readonly)
		[3]: Sky_upvr (readonly)
		[4]: clone_upvr (readonly)
	]]
	var1_upvw = true
	SkyboxManager_upvr.UpdateSkybox(Sky_upvr, 3)
	game.TweenService:Create(game.Lighting, TweenInfo.new(3), {
		Ambient = Color3.fromRGB(222, 179, 69);
		ExposureCompensation = 0.425;
		Brightness = 0.7;
	}):Play()
	game.TweenService:Create(clone_upvr, TweenInfo.new(3), {
		Brightness = 0.1;
		TintColor = Color3.fromRGB(217, 204, 152);
	}):Play()
	game.Workspace.Terrain.Clouds.Enabled = true
	game.Workspace.Terrain.Clouds.Color = Color3.fromRGB(255, 179, 0)
	game.TweenService:Create(game.Workspace.Terrain.Clouds, TweenInfo.new(3), {
		Cover = 0.905;
		Density = 0.083;
	}):Play()
	local clone_upvr_2 = game.ReplicatedStorage.Assets.Beenado:Clone()
	clone_upvr_2.Parent = workspace
	clone_upvr_2:PivotTo(game.ReplicatedStorage.StrikeLightningHere.CFrame)
	local random_state_upvr = Random.new()
	local tbl_2_upvr = {}
	local function CreateNew_upvr() -- Line 58, Named "CreateNew"
		--[[ Upvalues[3]:
			[1]: clone_upvr_2 (readonly)
			[2]: tbl_2_upvr (readonly)
			[3]: random_state_upvr (readonly)
		]]
		local clone = clone_upvr_2.Template:Clone()
		local tbl = {}
		local tick_result1 = tick()
		tbl.CreationTime = tick_result1
		tbl.Template = clone
		if Random.new():NextInteger(1, 2) == 2 then
			tick_result1 = -1
		else
			tick_result1 = 1
		end
		tbl.Direction = tick_result1
		table.insert(tbl_2_upvr, tbl)
		clone.Name = tick()
		clone.Parent = clone_upvr_2
		local any_NextNumber_result1 = random_state_upvr:NextNumber(2.35, 4)
		for _, v in clone:GetDescendants() do
			if v:IsA("Beam") then
				v.Width0 = any_NextNumber_result1
				v.Width1 = any_NextNumber_result1
			end
		end
		game.TweenService:Create(clone, TweenInfo.new(1.2), {
			Size = Vector3.new(60, 0.5, 60);
		}):Play()
	end
	local function moveBeenado_upvr(arg1) -- Line 86, Named "moveBeenado"
		--[[ Upvalues[1]:
			[1]: clone_upvr_2 (readonly)
		]]
		if workspace.Visuals:FindFirstChild("BeenadoSpot") then
			clone_upvr_2:PivotTo(clone_upvr_2:GetPivot():Lerp(workspace.Visuals.BeenadoSpot.CFrame, arg1 * 5))
			local SpinMe = clone_upvr_2.SpinMe
			SpinMe.CFrame *= CFrame.Angles(math.rad(180 * arg1), 0, 0)
		end
	end
	moveBeenado_upvr(1)
	local var27_upvw = true
	local PrimaryPart_upvr = clone_upvr_2.PrimaryPart
	local tick_result1_2_upvw = tick()
	local var30_upvw = false
	task.spawn(function() -- Line 107
		--[[ Upvalues[9]:
			[1]: var27_upvw (read and write)
			[2]: moveBeenado_upvr (readonly)
			[3]: tbl_2_upvr (readonly)
			[4]: PrimaryPart_upvr (readonly)
			[5]: tick_result1_2_upvw (read and write)
			[6]: random_state_upvr (readonly)
			[7]: var30_upvw (read and write)
			[8]: CreateNew_upvr (readonly)
			[9]: clone_upvr (copied, readonly)
		]]
		while var27_upvw do
			moveBeenado_upvr(game:GetService("RunService").Heartbeat:Wait())
			for i_2, v_2 in tbl_2_upvr do
				local clamped = math.clamp((tick() - v_2.CreationTime) / 1.2, 0, 1)
				v_2.Template.CFrame = PrimaryPart_upvr.CFrame * CFrame.new(0, clamped * 90, 0) * CFrame.Angles(0, math.rad(clamped * 720) * v_2.Direction, 0) * CFrame.new(0, 0, clamped * 10)
				for _, v_3 in v_2.Template:GetChildren() do
					v_3.Position = Vector3.new(v_2.Template.Size.X, 0, v_2.Template.Size.Z) / 2
					v_3.Position *= v_3:GetAttribute("Direction")
				end
				for _, v_4 in v_2.Template:GetDescendants() do
					if v_4:IsA("Beam") then
						v_4.Transparency = NumberSequence.new(1 - math.sin(math.rad(clamped * 180)))
					end
				end
				if clamped == 1 then
					v_2.Template:Destroy()
					table.remove(tbl_2_upvr, i_2)
				end
			end
			i_2 = 0.1
			v_2 = 0.2
			if random_state_upvr:NextNumber(i_2, v_2) < tick() - tick_result1_2_upvw and var30_upvw == false then
				CreateNew_upvr()
				tick_result1_2_upvw = tick()
			end
		end
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
		task.delay(3, function() -- Line 172
			game.Workspace.Terrain.Clouds.Enabled = false
			game.Workspace.Terrain.Clouds.Color = Color3.fromRGB(22, 40, 70)
		end)
	end)
	repeat
		task.wait()
	until var1_upvw == false
	SkyboxManager_upvr.UpdateSkybox(Sky_upvr, 0)
	var30_upvw = true
	task.wait(1)
	var27_upvw = false
	for _, v_5 in clone_upvr_2:GetDescendants() do
		if v_5:IsA("ParticleEmitter") then
			v_5.Enabled = false
		end
	end
	task.delay(4, function() -- Line 191
		--[[ Upvalues[1]:
			[1]: clone_upvr_2 (readonly)
		]]
		clone_upvr_2:Destroy()
	end)
end
workspace:GetAttributeChangedSignal("BeenadoEvent"):Connect(function() -- Line 198
	--[[ Upvalues[2]:
		[1]: CreateEvent_upvr (readonly)
		[2]: var1_upvw (read and write)
	]]
	if workspace:GetAttribute("BeenadoEvent") then
		CreateEvent_upvr()
	else
		var1_upvw = false
	end
end)
if workspace:GetAttribute("BeenadoEvent") then
	task.defer(CreateEvent_upvr)
else
	var1_upvw = false
end
return {}