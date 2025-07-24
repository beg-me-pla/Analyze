-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:33:01
-- Luau version 6, Types version 3
-- Time taken: 0.001276 seconds

local RaycastParams_new_result1 = RaycastParams.new()
RaycastParams_new_result1.FilterDescendantsInstances = {workspace.Terrain, workspace}
RaycastParams_new_result1.FilterType = Enum.RaycastFilterType.Include
local var3_upvw = false
local clone_upvr = game.Lighting.ColorCorrection:Clone()
clone_upvr.Name = script.Name
clone_upvr.Parent = game.Lighting
local function CreateEvent_upvr() -- Line 26, Named "CreateEvent"
	--[[ Upvalues[2]:
		[1]: var3_upvw (read and write)
		[2]: clone_upvr (readonly)
	]]
	var3_upvw = true
	game.TweenService:Create(clone_upvr, TweenInfo.new(3), {
		TintColor = Color3.fromRGB(255, 241, 208);
	}):Play()
	game.TweenService:Create(game.Lighting, TweenInfo.new(3), {
		Ambient = Color3.fromRGB(226, 204, 180);
		ExposureCompensation = 0.5;
		Brightness = 0.85;
	}):Play()
	repeat
		task.wait()
	until var3_upvw == false
	game.TweenService:Create(clone_upvr, TweenInfo.new(3), {
		TintColor = Color3.fromRGB(255, 255, 255);
		Saturation = 0;
	}):Play()
	game.TweenService:Create(game.Lighting, TweenInfo.new(3), {
		Ambient = game.Lighting:GetAttribute("DefaultAmbient");
		ExposureCompensation = game.Lighting:GetAttribute("DefaultExposure");
		Brightness = game.Lighting:GetAttribute("DefaultBrightness");
	}):Play()
end
workspace:GetAttributeChangedSignal("HeatwaveEvent"):Connect(function() -- Line 63
	--[[ Upvalues[2]:
		[1]: CreateEvent_upvr (readonly)
		[2]: var3_upvw (read and write)
	]]
	if workspace:GetAttribute("HeatwaveEvent") then
		CreateEvent_upvr()
	else
		var3_upvw = false
	end
end)
if workspace:GetAttribute("HeatwaveEvent") then
	task.defer(CreateEvent_upvr)
else
	var3_upvw = false
end
return {}