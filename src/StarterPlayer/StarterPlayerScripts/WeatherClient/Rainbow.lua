-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:33:01
-- Luau version 6, Types version 3
-- Time taken: 0.002007 seconds

local var1_upvw = false
local Sky_upvr = script.Sky
local SkyboxManager_upvr = require(game.ReplicatedStorage.Modules.SkyboxManager)
local clone = game.Lighting.ColorCorrection:Clone()
clone.Name = script.Name
clone.Parent = game.Lighting
SkyboxManager_upvr.AddSkybox(Sky_upvr, 0)
local function CreateEvent_upvr() -- Line 20, Named "CreateEvent"
	--[[ Upvalues[3]:
		[1]: var1_upvw (read and write)
		[2]: SkyboxManager_upvr (readonly)
		[3]: Sky_upvr (readonly)
	]]
	var1_upvw = true
	SkyboxManager_upvr.UpdateSkybox(Sky_upvr, 2)
	local clone_2_upvr = game.ReplicatedStorage.Assets.Rainbow:Clone()
	clone_2_upvr.Parent = workspace
	local Beam_upvr = clone_2_upvr:FindFirstChild("Beam", true)
	;(function() -- Line 31, Named "RainbowLoop"
		--[[ Upvalues[2]:
			[1]: clone_2_upvr (readonly)
			[2]: Beam_upvr (readonly)
		]]
		clone_2_upvr.End.PixelSmoke.Enabled = false
		clone_2_upvr.Start.PixelSmoke.Enabled = false
		local const_number = 0.001
		clone_2_upvr.Start.PixelSmoke.Enabled = true
		while const_number < 3 do
			local clamped_2 = math.clamp(0.052 + math.clamp(game.TweenService:GetValue((const_number + game:GetService("RunService").Heartbeat:Wait()) / 3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), 0, 1) * 0.898, 0.052, 0.949)
			Beam_upvr.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.05, 1), NumberSequenceKeypoint.new(0.051, 0), NumberSequenceKeypoint.new(math.clamp(clamped_2 - 0.1, 0.052, 0.95), 0), NumberSequenceKeypoint.new(math.clamp(clamped_2, 0.053, 0.95), 1), NumberSequenceKeypoint.new(0.95, 1), NumberSequenceKeypoint.new(1, 1)})
		end
		clone_2_upvr.End.PixelSmoke.Enabled = true
	end)()
	repeat
		task.wait(0.1)
	until var1_upvw == false
	SkyboxManager_upvr.UpdateSkybox(Sky_upvr, 0)
	;(function() -- Line 70, Named "RainbowLoop2"
		--[[ Upvalues[2]:
			[1]: clone_2_upvr (readonly)
			[2]: Beam_upvr (readonly)
		]]
		clone_2_upvr.End.PixelSmoke.Enabled = false
		clone_2_upvr.Start.PixelSmoke.Enabled = false
		local const_number_2 = 0
		while const_number_2 < 3 do
			local clamped = math.clamp(game.TweenService:GetValue((const_number_2 + game:GetService("RunService").Heartbeat:Wait()) / 3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), 0, 1)
			Beam_upvr.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.05, 1), NumberSequenceKeypoint.new(0.051, clamped), NumberSequenceKeypoint.new(0.949, clamped), NumberSequenceKeypoint.new(0.95, 1), NumberSequenceKeypoint.new(1, 1)})
		end
	end)()
	game.Debris:AddItem(clone_2_upvr, 4)
end
workspace:GetAttributeChangedSignal("Rainbow"):Connect(function() -- Line 104
	--[[ Upvalues[2]:
		[1]: CreateEvent_upvr (readonly)
		[2]: var1_upvw (read and write)
	]]
	if workspace:GetAttribute("Rainbow") then
		CreateEvent_upvr()
	else
		var1_upvw = false
	end
end)
if workspace:GetAttribute("Rainbow") then
	task.defer(CreateEvent_upvr)
else
	var1_upvw = false
end
return {}