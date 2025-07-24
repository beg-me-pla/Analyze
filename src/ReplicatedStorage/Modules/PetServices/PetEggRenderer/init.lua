-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:43
-- Luau version 6, Types version 3
-- Time taken: 0.009145 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local module_upvr = {}
local PetRegistry_upvr = require(ReplicatedStorage_upvr.Data.PetRegistry)
local PetEggService_upvr = ReplicatedStorage_upvr.GameEvents.PetEggService
local tbl_upvr = {}
local tbl_upvr_2 = {}
local tbl_upvr_3 = {}
for _, v in script.EggEffects:GetChildren() do
	tbl_upvr_2[v.Name] = require(v)
end
local LocalPlayer_upvr = game.Players.LocalPlayer
local function _(arg1) -- Line 40, Named "PlaySound"
	local clone_2_upvr = arg1:Clone()
	clone_2_upvr.Parent = workspace
	clone_2_upvr:Play()
	clone_2_upvr.Ended:Once(function() -- Line 45
		--[[ Upvalues[1]:
			[1]: clone_2_upvr (readonly)
		]]
		clone_2_upvr:Destroy()
	end)
end
local function TryDoHatchAnim_upvr(arg1, arg2) -- Line 51, Named "TryDoHatchAnim"
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: tbl_upvr_3 (readonly)
		[3]: tbl_upvr_2 (readonly)
	]]
	if not arg1 then
		warn("DoHatchAnim | No server egg!")
	else
		local var19 = tbl_upvr[arg1]
		if not var19 then
			warn("DoHatchAnim | No state data for server egg")
			return
		end
		local Asset_2 = var19.Asset
		if not Asset_2 then
			warn("DoHatchAnim | No asset!")
			return
		end
		local OBJECT_UUID = arg1:GetAttribute("OBJECT_UUID")
		if not OBJECT_UUID then
			return warn("DoHatchAnim | No egg uuid!")
		end
		if Asset_2:GetAttribute("DoingHatch") then return end
		Asset_2:SetAttribute("DoingHatch", true)
		Asset_2.Parent = workspace.Visuals
		local var22 = tbl_upvr_3[OBJECT_UUID]
		local EggName = arg1:GetAttribute("EggName")
		if tbl_upvr_2[EggName] then
			tbl_upvr_2[EggName](Asset_2, var22, arg2)
			return
		end
		if EggName == "Rare Egg" or EggName == "Legendary Egg" or EggName == "Mythical Egg" then
			tbl_upvr_2.Rare(Asset_2, var22, arg2)
			return
		end
		tbl_upvr_2.Normal(Asset_2, var22, arg2)
	end
end
local function ActivateEgg_upvr(arg1, arg2) -- Line 82, Named "ActivateEgg"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: TryDoHatchAnim_upvr (readonly)
	]]
	if not arg1 then
		warn("ActivateEgg | No server egg!")
	else
		local var24 = tbl_upvr[arg1]
		if not var24 then
			warn("ActivateEgg | No state data for server egg")
			return
		end
		local Asset_4 = var24.Asset
		if not Asset_4 then
			warn("ActivateEgg | No asset!")
			return
		end
		local ProximityPrompt = Asset_4:FindFirstChild("ProximityPrompt")
		if not ProximityPrompt then
			return warn(`PetEggRender:RenderEgg | No Proximity Prompt found for {Asset_4}`)
		end
		ProximityPrompt:Destroy()
		TryDoHatchAnim_upvr(arg1, arg2)
	end
end
local function CheckEggTimer_upvr(arg1) -- Line 99, Named "CheckEggTimer"
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	local var27
	if arg1:GetAttribute("OWNER") ~= LocalPlayer_upvr.Name then
	else
		local var28 = tbl_upvr[arg1]
		if not var28 then
			warn("CheckEggTimer | No state data for server egg")
			return
		end
		local Asset = var28.Asset
		if not Asset then
			warn("CheckEggTimer | No asset!")
			return
		end
		local ProximityPrompt_2 = Asset:FindFirstChild("ProximityPrompt")
		var27 = "SkipPrompt"
		local SOME = Asset:FindFirstChild(var27)
		if not ProximityPrompt_2 then
			var27 = `CheckEggTimer | No Proximity Prompt found for {Asset}`
			return warn(var27)
		end
		if not SOME then
			var27 = `CheckEggTimer | No Skip Prompt found for {Asset}`
			return warn(var27)
		end
		local ShowTime = arg1:GetAttribute("ShowTime")
		if ShowTime then
			if ShowTime > workspace:GetServerTimeNow() then
				var27 = false
			else
				var27 = true
			end
		else
			var27 = true
		end
		if not var27 then
			ProximityPrompt_2.Enabled = false
			SOME.Enabled = false
			return
		end
		if arg1:GetAttribute("TimeToHatch") <= 0 then
			ProximityPrompt_2.Enabled = true
			SOME.Enabled = false
			return
		end
		ProximityPrompt_2.Enabled = false
		SOME.Enabled = true
	end
end
local EggModels_upvr = ReplicatedStorage_upvr:WaitForChild("Assets"):WaitForChild("Models"):WaitForChild("EggModels")
function module_upvr.RenderEgg(arg1, arg2) -- Line 140
	--[[ Upvalues[7]:
		[1]: EggModels_upvr (readonly)
		[2]: PetRegistry_upvr (readonly)
		[3]: CheckEggTimer_upvr (readonly)
		[4]: tbl_upvr (readonly)
		[5]: LocalPlayer_upvr (readonly)
		[6]: ReplicatedStorage_upvr (readonly)
		[7]: PetEggService_upvr (readonly)
	]]
	local var38
	if not arg2:GetAttribute("READY") then
		var38 = "READY"
		arg2:GetAttributeChangedSignal(var38):Wait()
	end
	var38 = "ShowTime"
	local attribute = arg2:GetAttribute(var38)
	if attribute then
		var38 = workspace:GetServerTimeNow()
		if attribute > var38 then
		else
		end
	else
	end
	var38 = arg2:GetAttribute("EggName")
	if not var38 then
		repeat
			task.wait(0.5)
			var38 = arg2:GetAttribute("EggName")
		until 5 <= 0 + 1 and var38
	end
	if not var38 then
	else
		local SOME_2 = EggModels_upvr:FindFirstChild(var38)
		if not SOME_2 then
			return warn(`Could not find egg model associated with {var38}`)
		end
		local clone_3_upvr = SOME_2:Clone()
		clone_3_upvr.PrimaryPart.Anchored = true
		local HatchTime_upvr = PetRegistry_upvr.PetEggs[var38].HatchTime
		clone_3_upvr:ScaleTo(math.clamp(1 - (0.5) * (arg2:GetAttribute("TimeToHatch") / HatchTime_upvr), 0.2, 1))
		workspace.Terrain.EggParticle.WorldCFrame = arg2:GetPivot()
		for _, v_2 in workspace.Terrain.EggParticle:GetDescendants() do
			v_2:Emit(v_2:GetAttribute("EmitCount"))
		end
		local var46_upvw = Vector3.new(0, 1.5, 0)
		local var48_upvw = 0
		task.spawn(function() -- Line 187
			--[[ Upvalues[4]:
				[1]: var48_upvw (read and write)
				[2]: var46_upvw (read and write)
				[3]: clone_3_upvr (readonly)
				[4]: arg2 (readonly)
			]]
			while var48_upvw < 0.25 do
				var48_upvw += game:GetService("RunService").Heartbeat:Wait()
				var46_upvw = Vector3.new(0, 3, 0):Lerp(Vector3.new(0, 0, 0), game.TweenService:GetValue(var48_upvw / 0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out))
				clone_3_upvr:PivotTo(arg2:GetPivot() * CFrame.new(0, var46_upvw.Y + clone_3_upvr:GetExtentsSize().Y * 0.5, 0))
			end
		end)
		arg2:GetAttributeChangedSignal("TimeToHatch"):Connect(function() -- Line 200
			--[[ Upvalues[5]:
				[1]: clone_3_upvr (readonly)
				[2]: arg2 (readonly)
				[3]: HatchTime_upvr (readonly)
				[4]: var46_upvw (read and write)
				[5]: CheckEggTimer_upvr (copied, readonly)
			]]
			clone_3_upvr:ScaleTo(math.clamp(1 - (0.5) * (arg2:GetAttribute("TimeToHatch") / HatchTime_upvr), 0.2, 1))
			clone_3_upvr:PivotTo(arg2:GetPivot() * CFrame.new(0, var46_upvw.Y + clone_3_upvr:GetExtentsSize().Y * 0.5, 0))
			CheckEggTimer_upvr(arg2)
		end)
		tbl_upvr[arg2] = {
			Asset = clone_3_upvr;
		}
		clone_3_upvr:PivotTo(arg2:GetPivot() * CFrame.new(0, var46_upvw.Y + clone_3_upvr:GetExtentsSize().Y * 0.4, 0))
		clone_3_upvr.Parent = arg2
		if arg2:GetAttribute("OWNER") ~= LocalPlayer_upvr.Name then return end
		local clone = ReplicatedStorage_upvr.ProximityPrompt:Clone()
		if not clone then
			return warn("PetEggRender:RenderEgg | No Proximity Prompt found in ReplicatedStorage!")
		end
		clone.Parent = clone_3_upvr
		clone.ActionText = "Hatch!"
		clone.HoldDuration = 1
		clone.Enabled = false
		clone.Triggered:Connect(function() -- Line 230
			--[[ Upvalues[2]:
				[1]: PetEggService_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			PetEggService_upvr:FireServer("HatchPet", arg2)
		end)
		local clone_4 = ReplicatedStorage_upvr.ProximityPrompt:Clone()
		if not clone_4 then
			return warn("PetEggRender:RenderEgg | No Proximity Prompt found in ReplicatedStorage!")
		end
		clone_4.Parent = clone_3_upvr
		clone_4.ActionText = "Skip Growth"
		clone_4.Name = "SkipPrompt"
		clone_4.HoldDuration = 1
		clone_4.Enabled = false
		clone_4.Triggered:Connect(function() -- Line 240
			--[[ Upvalues[2]:
				[1]: PetEggService_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			PetEggService_upvr:FireServer("AuthorisePurchase", arg2)
		end)
		CheckEggTimer_upvr(arg2)
	end
end
function module_upvr.DerenderEgg(arg1, arg2) -- Line 249
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	if not arg2 then
		warn("PetEggRender:DerenderEgg | No server egg to derender")
	else
		local var55 = tbl_upvr[arg2]
		if not var55 then
			warn("PetEggRender:DerenderEgg | No state data for server egg")
			return
		end
		local Asset_3 = var55.Asset
		if not Asset_3 then
			warn("PetEggRender:DerenderEgg | No asset to derender")
			return
		end
		if not Asset_3:GetAttribute("DoingHatch") then
			Asset_3:Destroy()
		end
	end
end
require(ReplicatedStorage_upvr.Modules.CreateTagHandler)({
	Tag = "PetEggServer";
	OnInstanceAdded = function(arg1) -- Line 267, Named "OnInstanceAdded"
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		if not arg1:IsDescendantOf(workspace) then
		else
			module_upvr:RenderEgg(arg1)
		end
	end;
	OnInstanceRemoved = function(arg1) -- Line 271, Named "OnInstanceRemoved"
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		module_upvr:DerenderEgg(arg1)
	end;
})
ReplicatedStorage_upvr.GameEvents.EggReadyToHatch_RE.OnClientEvent:Connect(function(arg1, arg2) -- Line 276
	--[[ Upvalues[1]:
		[1]: tbl_upvr_3 (readonly)
	]]
	tbl_upvr_3[arg2] = arg1
end)
PetEggService_upvr.OnClientEvent:Connect(function(arg1, arg2) -- Line 280
	--[[ Upvalues[1]:
		[1]: ActivateEgg_upvr (readonly)
	]]
	ActivateEgg_upvr(arg1, arg2)
end)
local SkipEgg_upvr = require(script.SkipEgg)
ReplicatedStorage_upvr.GameEvents.PetSkipped.OnClientEvent:Connect(function(arg1) -- Line 285
	--[[ Upvalues[1]:
		[1]: SkipEgg_upvr (readonly)
	]]
	SkipEgg_upvr(arg1)
end)
return module_upvr