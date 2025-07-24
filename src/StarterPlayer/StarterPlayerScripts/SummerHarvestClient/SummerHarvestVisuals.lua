-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:33:08
-- Luau version 6, Types version 3
-- Time taken: 0.002392 seconds

local clone_2_upvr = game.Lighting.ColorCorrection:Clone()
clone_2_upvr.Name = script.Name
clone_2_upvr.Parent = game.Lighting
local var2_upvw = false
local function CreateEvent_upvr(arg1) -- Line 15, Named "CreateEvent"
	--[[ Upvalues[2]:
		[1]: var2_upvw (read and write)
		[2]: clone_2_upvr (readonly)
	]]
	if var2_upvw == true then
	else
		var2_upvw = true
		game.ReplicatedStorage.Summer_Harvest.Value = true
		if workspace.WeatherVisuals:FindFirstChild("FruitRing") then
			workspace.WeatherVisuals.FruitRing:Destroy()
		end
		local clone = script.FruitRing:Clone()
		clone.Parent = workspace.WeatherVisuals
		clone.sfx.Sound:Play()
		game.TweenService:Create(clone.Beam, TweenInfo.new(3), {
			Width0 = 50;
			Width1 = 50;
		}):Play()
		game.TweenService:Create(clone.Beam2, TweenInfo.new(3), {
			Width0 = 50;
			Width1 = 50;
		}):Play()
		game.TweenService:Create(game.Lighting, TweenInfo.new(3), {
			Ambient = Color3.fromRGB(255, 213, 196);
			ExposureCompensation = 0.12;
			Brightness = 0.8;
		}):Play()
		game.TweenService:Create(clone_2_upvr, TweenInfo.new(3), {
			Brightness = 0;
			Saturation = 0;
			TintColor = Color3.fromRGB(255, 255, 229);
		}):Play()
		game.Workspace.Terrain.Clouds.Enabled = true
		game.Workspace.Terrain.Clouds.Color = Color3.fromRGB(210, 249, 255)
		game.TweenService:Create(game.Workspace.Terrain.Clouds, TweenInfo.new(3), {
			Cover = 0.7;
			Density = 0.12;
		}):Play()
		if arg1 then return end
	end
end
local function ResetEvent_upvr(arg1) -- Line 74, Named "ResetEvent"
	--[[ Upvalues[2]:
		[1]: var2_upvw (read and write)
		[2]: clone_2_upvr (readonly)
	]]
	if var2_upvw == false then
	else
		var2_upvw = false
		game.ReplicatedStorage.Summer_Harvest.Value = false
		local FruitRing_upvr = workspace.WeatherVisuals:FindFirstChild("FruitRing")
		if FruitRing_upvr then
			game.TweenService:Create(FruitRing_upvr.Beam, TweenInfo.new(2), {
				Width0 = 0;
				Width1 = 0;
			}):Play()
			game.TweenService:Create(FruitRing_upvr.Beam2, TweenInfo.new(2), {
				Width0 = 0;
				Width1 = 0;
			}):Play()
			task.delay(2, function() -- Line 98
				--[[ Upvalues[1]:
					[1]: FruitRing_upvr (readonly)
				]]
				FruitRing_upvr:Destroy()
			end)
		end
		game.TweenService:Create(clone_2_upvr, TweenInfo.new(3), {
			Brightness = 0;
			Saturation = 0;
			TintColor = Color3.fromRGB(255, 255, 255);
		}):Play()
		game.TweenService:Create(game.Lighting, TweenInfo.new(3), {
			Ambient = game.Lighting:GetAttribute("DefaultAmbient");
			ExposureCompensation = game.Lighting:GetAttribute("DefaultExposure");
			Brightness = game.Lighting:GetAttribute("DefaultBrightness");
		}):Play()
		task.delay(3, function() -- Line 118
			game.Workspace.Terrain.Clouds.Enabled = false
			game.Workspace.Terrain.Clouds.Color = Color3.fromRGB(22, 40, 70)
		end)
		if arg1 then return end
	end
end
workspace:GetAttributeChangedSignal("SummerHarvest"):Connect(function() -- Line 131
	--[[ Upvalues[2]:
		[1]: CreateEvent_upvr (readonly)
		[2]: ResetEvent_upvr (readonly)
	]]
	if workspace:GetAttribute("SummerHarvest") then
		CreateEvent_upvr()
	else
		ResetEvent_upvr()
	end
end)
if workspace:GetAttribute("SummerHarvest") then
	task.defer(function() -- Line 141
		--[[ Upvalues[1]:
			[1]: CreateEvent_upvr (readonly)
		]]
		CreateEvent_upvr(true)
	end)
else
	ResetEvent_upvr(true)
end
return {}