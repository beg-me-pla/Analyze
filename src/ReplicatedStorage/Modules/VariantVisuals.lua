-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:03
-- Luau version 6, Types version 3
-- Time taken: 0.005402 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr = {}
local function InsertEffects_upvr(arg1, arg2) -- Line 19, Named "InsertEffects"
	for _, v in arg2:GetChildren(), nil do
		v:Clone().Parent = arg1
		if v:IsA("Texture") then
			v.Transparency = 1
		end
		if v:IsA("ParticleEmitter") then
			table.insert({}, v)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
local Gold_Reference_upvr = ReplicatedStorage:WaitForChild("Gold_Reference")
local Gold_SFX_upvr = ReplicatedStorage.Assets.SFX:WaitForChild("Gold_SFX")
local function Gold_upvr(arg1) -- Line 38, Named "Gold"
	--[[ Upvalues[3]:
		[1]: Gold_Reference_upvr (readonly)
		[2]: InsertEffects_upvr (readonly)
		[3]: Gold_SFX_upvr (readonly)
	]]
	local function LoopThroughObject(arg1_3) -- Line 39
		--[[ Upvalues[3]:
			[1]: LoopThroughObject (readonly)
			[2]: Gold_Reference_upvr (copied, readonly)
			[3]: InsertEffects_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: Failed to generate AST for function `LoopThroughObject`:
assertion failed!
Traceback:
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K

	end
	LoopThroughObject(arg1)
	local clone_3 = Gold_SFX_upvr:Clone()
	local Handle_2 = arg1:FindFirstChild("Handle")
	if not Handle_2 then
		Handle_2 = arg1:FindFirstChild('1')
		if not Handle_2 then
			Handle_2 = arg1:FindFirstChild("Base")
		end
	end
	if not Handle_2 then
		warn(`VariantVisuals:Gold | {arg1.Name} doesn't have a parent for SFX!`)
	end
	clone_3.Looped = true
	clone_3.Playing = true
	clone_3.Volume = 0.01
	clone_3.PlaybackSpeed = 1 + math.random(-5, 5) / 100
	clone_3.Parent = Handle_2 or arg1
end
local Rainbow_Reference_upvr = ReplicatedStorage:WaitForChild("Rainbow_Reference")
local Rainbow_SFX_upvr = ReplicatedStorage.Assets.SFX:WaitForChild("Rainbow_SFX")
local function Rainbow_upvr(arg1) -- Line 89, Named "Rainbow"
	--[[ Upvalues[3]:
		[1]: InsertEffects_upvr (readonly)
		[2]: Rainbow_Reference_upvr (readonly)
		[3]: Rainbow_SFX_upvr (readonly)
	]]
	if not arg1 then
		warn("VariantVisuals:Rainbow | no plant provided!")
	else
		(function(arg1_5) -- Line 95, Named "LoopThroughObject"
			--[[ Upvalues[2]:
				[1]: InsertEffects_upvr (copied, readonly)
				[2]: Rainbow_Reference_upvr (copied, readonly)
			]]
			for _, v_2 in ipairs(arg1_5:GetDescendants()) do
				if v_2:IsA("BasePart") then
					if v_2:IsA("UnionOperation") then
						v_2.UsePartColor = true
					end
					v_2.Reflectance = 0.25
					InsertEffects_upvr(v_2, Rainbow_Reference_upvr)
					v_2:AddTag("RainbowPart")
				end
			end
		end)(arg1)
		local clone = Rainbow_SFX_upvr:Clone()
		local Handle = arg1:FindFirstChild("Handle")
		if not Handle then
			Handle = arg1:FindFirstChild('1')
			if not Handle then
				Handle = arg1
			end
		end
		if not Handle then
			warn("VariantVisuals:Rainbow | %s doesn't have a parent for SFX!"):format(arg1.Name)
		end
		clone.Looped = true
		clone.Playing = true
		clone.Volume = 0.01
		clone.PlaybackSpeed = 1 + math.random(-5, 5) / 100
		clone.Parent = Handle or arg1
	end
end
local tbl_upvr = {
	Gold = function(arg1, arg2) -- Line 129
		--[[ Upvalues[1]:
			[1]: Gold_upvr (readonly)
		]]
		return Gold_upvr(arg1)
	end;
	Rainbow = function(arg1, arg2) -- Line 132
		--[[ Upvalues[1]:
			[1]: Rainbow_upvr (readonly)
		]]
		return Rainbow_upvr(arg1)
	end;
}
function module_upvr.SetVisuals(arg1, arg2, arg3) -- Line 138
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	if not arg2 then
		warn("VariantVisuals:SetVisuals | plant is nil!")
	else
		task.spawn(function() -- Line 144
			--[[ Upvalues[3]:
				[1]: arg2 (readonly)
				[2]: tbl_upvr (copied, readonly)
				[3]: arg3 (readonly)
			]]
			local Item_Seed = arg2:WaitForChild("Item_Seed")
			local var47
			if not Item_Seed then
				var47 = `VariantVisuals:SetVisuals | {arg2.Name} doesn't have a seed!`
				return warn(var47)
			end
			var47 = Item_Seed.Value
			math.randomseed(var47)
			local Variant = arg2:FindFirstChild("Variant")
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var47 = Variant.Value
				return var47
			end
			if not Variant or not INLINED() then
				var47 = ""
			end
			local var49 = tbl_upvr[var47]
			if var49 and not arg2:GetAttribute("SetVariant") and var47 ~= "" and var47 ~= "Normal" then
				arg2:SetAttribute("SetVariant", true)
				repeat
					task.wait(0.5)
				until arg2:HasTag("PlantGenerated")
				var49(arg2, arg3)
			end
		end)
	end
end
require(ReplicatedStorage.Modules.CreateTagHandler)({
	Tag = "PlantGenerated";
	OnInstanceAdded = function(arg1) -- Line 169, Named "OnInstanceAdded"
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		if arg1:HasTag("Generating") then
		else
			module_upvr:SetVisuals(arg1)
		end
	end;
	OnInstanceRemoved = function(arg1) -- Line 173, Named "OnInstanceRemoved"
	end;
})
return module_upvr