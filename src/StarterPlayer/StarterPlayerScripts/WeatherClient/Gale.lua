-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:33:02
-- Luau version 6, Types version 3
-- Time taken: 0.002165 seconds

local RaycastParams_new_result1 = RaycastParams.new()
RaycastParams_new_result1.FilterDescendantsInstances = {workspace.Terrain, workspace}
RaycastParams_new_result1.FilterType = Enum.RaycastFilterType.Include
local var3_upvw = false
local clone_upvr = game.Lighting.ColorCorrection:Clone()
clone_upvr.Name = script.Name
clone_upvr.Parent = game.Lighting
local Sky_upvr = script.Sky
local SkyboxManager_upvr = require(game.ReplicatedStorage.Modules.SkyboxManager)
SkyboxManager_upvr.AddSkybox(Sky_upvr, 0)
local CameraShaker_upvr = require(game.ReplicatedStorage.Code.CameraShaker)
local any_new_result1_upvr = CameraShaker_upvr.new(Enum.RenderPriority.Camera.Value, function(arg1) -- Line 34
	workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame * arg1
end)
any_new_result1_upvr:Start()
local function CreateEvent_upvr() -- Line 39, Named "CreateEvent"
	--[[ Upvalues[6]:
		[1]: var3_upvw (read and write)
		[2]: clone_upvr (readonly)
		[3]: any_new_result1_upvr (readonly)
		[4]: CameraShaker_upvr (readonly)
		[5]: SkyboxManager_upvr (readonly)
		[6]: Sky_upvr (readonly)
	]]
	var3_upvw = true
	game.TweenService:Create(clone_upvr, TweenInfo.new(1), {
		Brightness = 0.1;
		Contrast = -0.2;
		Saturation = 0.2;
	}):Play()
	any_new_result1_upvr:ShakeSustain(CameraShaker_upvr.Presets.WeakEarthquake)
	local clone = game.ReplicatedStorage.Assets.WindyEffect:Clone()
	clone.Parent = workspace
	game.TweenService:Create(game.Lighting.Atmosphere, TweenInfo.new(1), {
		Density = 0.352;
		Offset = 1;
	}):Play()
	SkyboxManager_upvr.UpdateSkybox(Sky_upvr, 2)
	task.spawn(function() -- Line 63
		--[[ Upvalues[1]:
			[1]: var3_upvw (copied, read and write)
		]]
		repeat
			task.wait()
		until not game.Players.LocalPlayer.Character or game.Players.LocalPlayer.Character:IsDescendantOf(workspace)
		local clone_2 = script.VectorForce:Clone()
		clone_2.Parent = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
		clone_2.Attachment0 = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").RootAttachment
		repeat
			task.wait()
		until var3_upvw == false
		clone_2:Destroy()
	end)
	repeat
		task.wait()
	until var3_upvw == false
	SkyboxManager_upvr.UpdateSkybox(Sky_upvr, 0)
	for _, v in clone:GetChildren() do
		v.Enabled = false
	end
	any_new_result1_upvr:StopSustained(2)
	game.Debris:AddItem(clone, 4)
	game.TweenService:Create(clone_upvr, TweenInfo.new(1), {
		Brightness = 0;
		Contrast = 0;
		Saturation = 0;
	}):Play()
	game.TweenService:Create(game.Lighting.Atmosphere, TweenInfo.new(1), {
		Density = 0;
		Offset = 0;
	}):Play()
end
workspace:GetAttributeChangedSignal("Gale"):Connect(function() -- Line 96
	--[[ Upvalues[2]:
		[1]: CreateEvent_upvr (readonly)
		[2]: var3_upvw (read and write)
	]]
	if workspace:GetAttribute("Gale") then
		CreateEvent_upvr()
	else
		var3_upvw = false
	end
end)
if workspace:GetAttribute("Gale") then
	task.defer(CreateEvent_upvr)
else
	var3_upvw = false
end
return {}