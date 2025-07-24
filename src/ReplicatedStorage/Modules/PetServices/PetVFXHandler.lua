-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:46
-- Luau version 6, Types version 3
-- Time taken: 0.006626 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
local tbl_upvr = {
	Dog = {
		Dig = {
			effect = "DigEffect";
			duration = 1.5;
		};
	};
	["Golden Lab"] = {
		Dig = {
			effect = "DigEffect";
			duration = 1.5;
		};
	};
	Cat = {
		Nap = {
			effect = "ZzzEffect";
			duration = 10;
		};
	};
	["Orange Tabby"] = {
		Nap = {
			effect = "ZzzEffect";
			duration = 10;
		};
	};
	["Moon Cat"] = {
		Nap = {
			effect = "ZzzEffect";
			duration = 10;
		};
	};
	Bunny = {
		Chomp = {
			effect = "CarrotParticles";
			duration = 1.5;
		};
	};
	["Black Bunny"] = {
		Chomp = {
			effect = "CarrotParticles";
			duration = 1.5;
		};
	};
	Panda = {
		Chomp = {
			effect = "BambooParticles";
			duration = 1.5;
		};
	};
	Pig = {
		Frenzy = {
			effect = "MudSplashEffect";
			duration = 15;
		};
	};
	["Polar Bear"] = {
		Roar = {
			effect = "FrostBreath";
			duration = 3;
		};
	};
	["Praying Mantis"] = {
		Pray = {
			effect = "ShinyEffect";
			duration = 10;
		};
	};
	Kiwi = {
		Nurse = {
			effect = "MusicNotes";
			duration = 3;
		};
	};
	Mole = {
		DigDown = {
			effect = "DigAroundEffect";
			duration = 2;
		};
		DigUp = {
			effect = "DigAroundEffect";
			duration = 2;
		};
	};
	Frog = {
		Croak = {
			effect = "Shockwave";
			duration = 2;
		};
	};
	["Echo Frog"] = {
		Croak = {
			effect = "ShockwaveCool";
			duration = 2;
		};
	};
	["Chicken Zombie"] = {
		Zombify = {
			effect = "ZombieBeam";
			duration = 2;
		};
	};
	["Blood Kiwi"] = {
		Nurse = {
			effect = "RedMusicNotes";
			duration = 3;
		};
	};
	Bee = {
		Pollinate = {
			effect = "PollenDrops";
			duration = 5;
		};
	};
	["Petal Bee"] = {
		Pollinate = {
			effect = "PollenDrops";
			duration = 5;
		};
	};
	["Golden Bee"] = {
		Pollinate = {
			effect = "PollenDrops";
			duration = 5;
		};
	};
	["Bear Bee"] = {
		Sit = {
			effect = "PollenMessy";
			duration = 5;
		};
	};
	["Queen Bee"] = {
		Spin = {
			effect = "MagicPollenTornado";
			duration = 5;
		};
	};
	Wasp = {
		Pollinate = {
			effect = "PollenDrops";
			duration = 5;
		};
	};
	["Tarantula Hawk"] = {
		Pollinate = {
			effect = "PollenDrops";
			duration = 5;
		};
	};
	Moth = {
		Sing = {
			effect = "MusicNotes";
			duration = 5;
		};
	};
	Butterfly = {
		Flutter = {
			effect = "RainbowPollenTornado";
			duration = 5;
		};
	};
	["Disco Bee"] = {
		Pollinate = {
			effect = "RainbowMusicNotes";
			duration = 10;
		};
	};
	["Cooked Owl"] = {
		Cook = {
			effect = "CookBreath";
			duration = 3;
		};
	};
	Flamingo = {
		Stand = {
			effect = "ZzzEffect";
			duration = 10;
		};
	};
	["Sea Turtle"] = {
		Flip = {
			effect = "SandScatter";
			duration = 2;
		};
		Splash = {
			effect = "WaterSplash";
			duration = 2;
		};
	};
	Peacock = {
		Fan = {
			effect = "Shimmer";
			duration = 2;
		};
	};
	["Scarlet Macaw"] = {
		Spin = {
			effect = "MacawLights";
			duration = 3;
		};
	};
	["Mimic Octopus"] = {
		Mimicry = {
			effect = "Transform";
			duration = 3;
		};
	};
	["Hyacinth Macaw"] = {
		Spin = {
			effect = "MacawLights";
			duration = 3;
		};
	};
	["Dilophosaurus "] = {
		Frill = {
			effect = "FrillPoison";
			duration = 2;
		};
	};
}
function module_upvr.new(arg1, arg2, arg3) -- Line 272
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr)
	setmetatable_result1.PetType = arg1
	setmetatable_result1.PetModel = arg2
	setmetatable_result1.UUID = arg3
	setmetatable_result1.ActiveEmitters = {}
	setmetatable_result1.CurrentAnimation = nil
	return setmetatable_result1
end
function module_upvr.cleanupVFX(arg1, arg2) -- Line 284
	if arg1.ActiveEmitters[arg2] then
		for _, v in pairs(arg1.ActiveEmitters[arg2]) do
			v:Destroy()
		end
		arg1.ActiveEmitters[arg2] = nil
	end
end
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
function module_upvr.playVFX(arg1, arg2) -- Line 294
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: ReplicatedStorage_upvr (readonly)
	]]
	if arg1.CurrentAnimation == arg2 then
	else
		if arg1.CurrentAnimation then
			arg1:cleanupVFX(arg1.CurrentAnimation)
		end
		arg1.CurrentAnimation = arg2
		local var82 = tbl_upvr[arg1.PetType]
		if not var82 then return end
		local var83 = var82[arg2]
		if not var83 then return end
		local effect = var83.effect
		if not effect then return end
		local SOME = ReplicatedStorage_upvr:FindFirstChild("Assets"):FindFirstChild("PetVFX"):FindFirstChild(effect)
		if not SOME then return end
		local clone_upvr = SOME:Clone()
		local PrimaryPart = arg1.PetModel.PrimaryPart
		if not PrimaryPart then
			PrimaryPart = arg1.PetModel
		end
		clone_upvr.Parent = PrimaryPart
		clone_upvr.Name = effect
		if not arg1.ActiveEmitters[arg2] then
			arg1.ActiveEmitters[arg2] = {}
		end
		table.insert(arg1.ActiveEmitters[arg2], clone_upvr)
		if var83.duration then
			task.delay(var83.duration, function() -- Line 338
				--[[ Upvalues[3]:
					[1]: clone_upvr (readonly)
					[2]: arg1 (readonly)
					[3]: arg2 (readonly)
				]]
				if clone_upvr then
					local var121
					if var121 then
						var121 = clone_upvr
						var121.Enabled = false
						var121 = 0
						for _, v_4 in ipairs(clone_upvr:GetChildren()) do
							if v_4:IsA("ParticleEmitter") then
								for _, v_5 in ipairs(v_4.Lifetime:GetKeypoints()) do
									var121 = math.max(var121, v_5.Value)
								end
							end
						end
						task.delay(var121, function() -- Line 352
							--[[ Upvalues[3]:
								[1]: clone_upvr (copied, readonly)
								[2]: arg1 (copied, readonly)
								[3]: arg2 (copied, readonly)
							]]
							if clone_upvr then
								if clone_upvr.Parent then
									clone_upvr:Destroy()
									local var133 = arg1.ActiveEmitters[arg2]
									if not var133 then
										var133 = {}
									end
									for i_6, v_6 in pairs(var133) do
										if v_6 == clone_upvr then
											table.remove(arg1.ActiveEmitters[arg2], i_6)
											return
										end
									end
								end
							end
						end)
					end
				end
			end)
		end
	end
end
function module_upvr.destroy(arg1) -- Line 368
	for _, v_2 in pairs(arg1.ActiveEmitters) do
		for _, v_3 in pairs(v_2) do
			v_3:Destroy()
		end
	end
	arg1.ActiveEmitters = {}
end
return module_upvr