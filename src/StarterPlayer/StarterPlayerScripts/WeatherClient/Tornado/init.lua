-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:59
-- Luau version 6, Types version 3
-- Time taken: 0.004512 seconds

local var1_upvw = false
local clone_2_upvr = game.Lighting.ColorCorrection:Clone()
clone_2_upvr.Name = script.Name
clone_2_upvr.Parent = game.Lighting
game.CollectionService:GetInstanceAddedSignal("TornadoVisual"):Connect(function(arg1) -- Line 19
	--[[ Upvalues[1]:
		[1]: var1_upvw (read and write)
	]]
	local clone_3_upvr = game.ReplicatedStorage.Assets.Tornado:Clone()
	clone_3_upvr.Parent = workspace.Visuals
	clone_3_upvr:PivotTo(arg1.CFrame)
	local random_state_upvr = Random.new()
	local tbl_2_upvw = {}
	local function CreateNew_upvr() -- Line 35, Named "CreateNew"
		--[[ Upvalues[3]:
			[1]: clone_3_upvr (readonly)
			[2]: tbl_2_upvw (read and write)
			[3]: random_state_upvr (readonly)
		]]
		local clone = clone_3_upvr.Template:Clone()
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
		table.insert(tbl_2_upvw, tbl)
		clone.Name = tick()
		clone.Parent = clone_3_upvr
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
	local function _(arg1_2) -- Line 63, Named "moveTornado"
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: clone_3_upvr (readonly)
		]]
		if arg1 then
			clone_3_upvr:PivotTo(clone_3_upvr:GetPivot():Lerp(arg1.CFrame, arg1_2 * 5))
		end
	end
	if arg1 then
		clone_3_upvr:PivotTo(clone_3_upvr:GetPivot():Lerp(arg1.CFrame, 5))
	end
	local var24_upvw = true
	local PrimaryPart_upvr = clone_3_upvr.PrimaryPart
	local tick_result1_upvw = tick()
	local var27_upvw = false
	task.spawn(function() -- Line 81
		--[[ Upvalues[9]:
			[1]: var24_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: clone_3_upvr (readonly)
			[4]: tbl_2_upvw (read and write)
			[5]: PrimaryPart_upvr (readonly)
			[6]: tick_result1_upvw (read and write)
			[7]: random_state_upvr (readonly)
			[8]: var27_upvw (read and write)
			[9]: CreateNew_upvr (readonly)
		]]
		while var24_upvw do
			if arg1 then
				clone_3_upvr:PivotTo(clone_3_upvr:GetPivot():Lerp(arg1.CFrame, game:GetService("RunService").Heartbeat:Wait() * 5))
			end
			for i_2, v_2 in tbl_2_upvw do
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
					table.remove(tbl_2_upvw, i_2)
				end
			end
			i_2 = 0.1
			v_2 = 0.2
			if random_state_upvr:NextNumber(i_2, v_2) < tick() - tick_result1_upvw and var27_upvw == false then
				CreateNew_upvr()
				tick_result1_upvw = tick()
			end
		end
	end)
	repeat
		task.wait()
	until var1_upvw == false and not arg1 and not arg1:IsDescendantOf(workspace)
	var27_upvw = true
	task.wait(1)
	var24_upvw = false
	for _, v_5 in tbl_2_upvw do
		v_5.Template:Destroy()
	end
	tbl_2_upvw = {}
	for _, v_6 in clone_3_upvr:GetDescendants() do
		if v_6:IsA("ParticleEmitter") then
			v_6.Enabled = false
		end
	end
	task.delay(4, function() -- Line 148
		--[[ Upvalues[1]:
			[1]: clone_3_upvr (readonly)
		]]
		clone_3_upvr:Destroy()
	end)
end)
local SkyboxManager_upvr = require(game.ReplicatedStorage.Modules.SkyboxManager)
local Sky_upvr = script.Sky
local function CreateEvent_upvr() -- Line 155, Named "CreateEvent"
	--[[ Upvalues[4]:
		[1]: var1_upvw (read and write)
		[2]: SkyboxManager_upvr (readonly)
		[3]: Sky_upvr (readonly)
		[4]: clone_2_upvr (readonly)
	]]
	var1_upvw = true
	SkyboxManager_upvr.UpdateSkybox(Sky_upvr, 2)
	game.TweenService:Create(game.Lighting, TweenInfo.new(3), {
		Ambient = Color3.fromRGB(162, 162, 162);
		ExposureCompensation = 0.425;
		Brightness = 0.7;
	}):Play()
	game.TweenService:Create(clone_2_upvr, TweenInfo.new(3), {
		Brightness = 0.1;
		TintColor = Color3.fromRGB(217, 217, 217);
	}):Play()
	game.Workspace.Terrain.Clouds.Enabled = true
	game.TweenService:Create(game.Workspace.Terrain.Clouds, TweenInfo.new(3), {
		Cover = 0.905;
		Density = 0.083;
	}):Play()
	repeat
		task.wait()
	until var1_upvw == false
	SkyboxManager_upvr.UpdateSkybox(Sky_upvr, 0)
	game.TweenService:Create(clone_2_upvr, TweenInfo.new(3), {
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
	task.delay(3, function() -- Line 203
		game.Workspace.Terrain.Clouds.Enabled = false
	end)
end
workspace:GetAttributeChangedSignal("TornadoEvent"):Connect(function() -- Line 210
	--[[ Upvalues[2]:
		[1]: CreateEvent_upvr (readonly)
		[2]: var1_upvw (read and write)
	]]
	if workspace:GetAttribute("TornadoEvent") then
		CreateEvent_upvr()
	else
		var1_upvw = false
	end
end)
if workspace:GetAttribute("TornadoEvent") then
	task.defer(CreateEvent_upvr)
else
	var1_upvw = false
end
return {}