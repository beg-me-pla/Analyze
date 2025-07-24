-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:47
-- Luau version 6, Types version 3
-- Time taken: 0.009716 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local module_upvr = {}
local Assets = ReplicatedStorage_upvr:WaitForChild("Assets")
local CosmeticCrates_upvr = require(ReplicatedStorage_upvr.Data.CosmeticCrateRegistry).CosmeticCrates
local CosmeticCrateService_upvr = ReplicatedStorage_upvr.GameEvents.CosmeticCrateService
local tbl_upvr = {}
local tbl_upvr_2 = {}
local LocalPlayer_upvr = game.Players.LocalPlayer
local function _(arg1) -- Line 42, Named "PlaySound"
	local clone_3_upvr = arg1:Clone()
	clone_3_upvr.Parent = workspace
	clone_3_upvr:Play()
	clone_3_upvr.Ended:Once(function() -- Line 47
		--[[ Upvalues[1]:
			[1]: clone_3_upvr (readonly)
		]]
		clone_3_upvr:Destroy()
	end)
end
function easeOutBack(arg1) -- Line 52
	return math.pow(arg1 - 1, 3) * 2.70158 + 1 + math.pow(arg1 - 1, 2) * 1.70158
end
function easeInBack(arg1) -- Line 58
	return 1.70158 * arg1 * arg1 * (2.70158 * arg1 - 1.70158)
end
local SFX_upvr = Assets.SFX
local CosmeticList_upvr = require(ReplicatedStorage_upvr.Data.CosmeticRegistry).CosmeticList
local SelectiveAssetReplication_upvr = require(ReplicatedStorage_upvr.Modules.SelectiveAssetReplication)
local RunService_upvr = game:GetService("RunService")
local function TryDoOpenAnim_upvr(arg1, arg2) -- Line 64, Named "TryDoOpenAnim"
	--[[ Upvalues[7]:
		[1]: tbl_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: SFX_upvr (readonly)
		[4]: CosmeticList_upvr (readonly)
		[5]: SelectiveAssetReplication_upvr (readonly)
		[6]: RunService_upvr (readonly)
		[7]: module_upvr (readonly)
	]]
	if not arg1 then
		warn("DoOpenAnim | No server Crate!")
	else
		local var21 = tbl_upvr[arg1]
		if not var21 then
			warn("DoOpenAnim | No state data for server Crate")
			return
		end
		local Asset_upvr = var21.Asset
		if not Asset_upvr then
			warn("DoOpenAnim | No asset!")
			return
		end
		local OBJECT_UUID = arg1:GetAttribute("OBJECT_UUID")
		if not OBJECT_UUID then
			return warn("DoOpenAnim | No Crate uuid!")
		end
		if Asset_upvr:GetAttribute("DoingOpen") then return end
		Asset_upvr:SetAttribute("DoingOpen", true)
		Asset_upvr.Parent = workspace.Visuals
		local var24 = tbl_upvr_2[OBJECT_UUID]
		for _, v in Asset_upvr:GetDescendants() do
			if v:IsA("Weld") then
				v.Enabled = false
			end
		end
		local clone_upvr = SFX_upvr.CrateOpen:Clone()
		clone_upvr.Parent = workspace
		clone_upvr:Play()
		clone_upvr.Ended:Once(function() -- Line 47
			--[[ Upvalues[1]:
				[1]: clone_upvr (readonly)
			]]
			clone_upvr:Destroy()
		end)
		if var24 and var24 ~= "" then
			clone_upvr = CosmeticList_upvr
			clone_upvr = SelectiveAssetReplication_upvr:GetAssetAsync("Cosmetics", var24):Clone()
			local var30_upvr = clone_upvr
			if var30_upvr.PrimaryPart then
				var30_upvr.PrimaryPart.Anchored = true
			end
			var30_upvr.Parent = workspace.Visuals
			for _, v_2 in var30_upvr:GetDescendants() do
				if v_2:IsA("BasePart") then
					v_2.CanCollide = false
					v_2.CanQuery = false
				end
			end
			local any_GetPivot_result1_upvr = arg1:GetPivot()
			local any_GetExtentsSize_result1_upvr = arg1:GetExtentsSize()
			task.spawn(function() -- Line 112
				--[[ Upvalues[6]:
					[1]: var30_upvr (readonly)
					[2]: any_GetPivot_result1_upvr (readonly)
					[3]: any_GetExtentsSize_result1_upvr (readonly)
					[4]: RunService_upvr (copied, readonly)
					[5]: arg2 (readonly)
					[6]: SFX_upvr (copied, readonly)
				]]
				local var37_upvr = any_GetPivot_result1_upvr * CFrame.new(0, -any_GetExtentsSize_result1_upvr.Y / 2, 0) * CFrame.new(0, var30_upvr:GetExtentsSize().Y / 2, 0)
				var30_upvr:ScaleTo(0.01)
				var30_upvr:PivotTo(var37_upvr)
				local var39_upvw = true
				local var40_upvw = 0
				task.spawn(function() -- Line 129
					--[[ Upvalues[5]:
						[1]: var39_upvw (read and write)
						[2]: var30_upvr (copied, readonly)
						[3]: RunService_upvr (copied, readonly)
						[4]: var40_upvw (read and write)
						[5]: var37_upvr (readonly)
					]]
					while var39_upvw and var30_upvr:IsDescendantOf(workspace) do
						var40_upvw += RunService_upvr.Heartbeat:Wait()
						var30_upvr:PivotTo(var37_upvr * CFrame.new(0, math.sin(var40_upvw * math.pi * 2 / 1.5) * 0.5, 0) * CFrame.Angles(0, math.rad(var40_upvw * 65), 0))
					end
				end)
				local const_number_2 = 0
				while const_number_2 < 0.8 and var30_upvr:IsDescendantOf(workspace) do
					var30_upvr:ScaleTo(0.01 + (arg2 - 0.01) * easeOutBack(math.clamp((const_number_2 + RunService_upvr.Heartbeat:Wait()) / 0.8, 0, 1)))
				end
				while tick() - tick() < 3 and var30_upvr:IsDescendantOf(workspace) do
					RunService_upvr.Heartbeat:Wait()
				end
				local const_number = 0
				while const_number < 0.8 and var30_upvr:IsDescendantOf(workspace) do
					var30_upvr:ScaleTo(math.max(arg2 * (1 - math.clamp(easeInBack(math.clamp((const_number + RunService_upvr.Heartbeat:Wait()) / 0.8, 0, 1)), 0, 1.2)), 0.01))
				end
				var39_upvw = false
				local clone_4_upvr = SFX_upvr.PopSound:Clone()
				clone_4_upvr.Parent = workspace
				clone_4_upvr:Play()
				clone_4_upvr.Ended:Once(function() -- Line 47
					--[[ Upvalues[1]:
						[1]: clone_4_upvr (readonly)
					]]
					clone_4_upvr:Destroy()
				end)
				var30_upvr:Destroy()
			end)
		end
		var30_upvr = Asset_upvr:GetBoundingBox()
		var30_upvr = Random.new()
		local var45 = var30_upvr
		for _, v_3 in Asset_upvr:GetDescendants() do
			if v_3:IsA("BasePart") then
				v_3.Anchored = false
				v_3.CanCollide = false
				v_3.CanQuery = false
				v_3.CanTouch = false
				local NumberRange_new_result1 = NumberRange.new(20, 40)
				v_3.AssemblyLinearVelocity = (v_3.Position - var30_upvr.Position).Unit * 15 + Vector3.new(var45:NextNumber(-10, 10), var45:NextNumber(NumberRange_new_result1.Min, NumberRange_new_result1.Max), var45:NextNumber(-10, 10))
				v_3.AssemblyAngularVelocity = Vector3.new(var45:NextNumber(-3, 3), var45:NextNumber(-3, 3), var45:NextNumber(-3, 3))
			end
		end
		task.delay(5, function() -- Line 209
			--[[ Upvalues[3]:
				[1]: Asset_upvr (readonly)
				[2]: module_upvr (copied, readonly)
				[3]: arg1 (readonly)
			]]
			Asset_upvr:SetAttribute("DoingOpen", false)
			module_upvr:DerenderCrate(arg1)
		end)
	end
end
local function ActivateCrate_upvr(arg1, arg2) -- Line 216, Named "ActivateCrate"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: TryDoOpenAnim_upvr (readonly)
	]]
	if not arg1 then
		warn("ActivateCrate | No server Crate!")
	else
		local var51 = tbl_upvr[arg1]
		if not var51 then
			warn("ActivateCrate | No state data for server Crate")
			return
		end
		local Asset = var51.Asset
		if not Asset then
			warn("ActivateCrate | No asset!")
			return
		end
		local ProximityPrompt_2 = Asset:FindFirstChild("ProximityPrompt")
		if not ProximityPrompt_2 then
			return warn(`CosmeticCrateRenderer:RenderCrate | No Proximity Prompt found for {Asset}`)
		end
		ProximityPrompt_2:Destroy()
		TryDoOpenAnim_upvr(arg1, arg2)
	end
end
local function CheckCrateTimer_upvr(arg1) -- Line 233, Named "CheckCrateTimer"
	--[[ Upvalues[3]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: CosmeticCrates_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var54
	if arg1:GetAttribute("OWNER") ~= LocalPlayer_upvr.Name then
	else
		local TimeToOpen = arg1:GetAttribute("TimeToOpen")
		local var56 = tbl_upvr[arg1]
		if not var56 then
			warn("CheckCrateTimer | No state data for server Crate")
			return
		end
		local Asset_2 = var56.Asset
		if not Asset_2 then
			warn("CheckCrateTimer | No asset!")
			return
		end
		local ProximityPrompt = Asset_2:FindFirstChild("ProximityPrompt")
		if not ProximityPrompt then
			var54 = `CheckCrateTimer | No Proximity Prompt found for {Asset_2}`
			return warn(var54)
		end
		var54 = "CrateType"
		local attribute = arg1:GetAttribute(var54)
		if not attribute then
			var54 = `CheckCrateTimer | No CrateType for {arg1}`
			return warn(var54)
		end
		var54 = CosmeticCrates_upvr[attribute].TimeIsTimestamp
		if var54 == true then
		else
		end
		if TimeToOpen > 0 then
			var54 = false
		else
			var54 = true
		end
		ProximityPrompt.Enabled = var54
		if true then
			var54 = Asset_2:FindFirstChild("SkipPrompt")
			if not var54 then
				return warn(`CheckCrateTimer | No Skip Prompt found for {Asset_2}`)
			end
			if 0 >= TimeToOpen then
			else
			end
			var54.Enabled = true
		end
	end
end
local CrateModels_upvr = Assets:WaitForChild("Models"):WaitForChild("CrateModels")
function module_upvr.RenderCrate(arg1, arg2) -- Line 256
	--[[ Upvalues[7]:
		[1]: CrateModels_upvr (readonly)
		[2]: CheckCrateTimer_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: LocalPlayer_upvr (readonly)
		[5]: ReplicatedStorage_upvr (readonly)
		[6]: CosmeticCrateService_upvr (readonly)
		[7]: CosmeticCrates_upvr (readonly)
	]]
	local var68
	if not arg2:GetAttribute("READY") then
		arg2:GetAttributeChangedSignal("READY"):Wait()
	end
	if not arg2:GetAttribute("CrateType") then
		repeat
			task.wait(0.5)
			local CrateType = arg2:GetAttribute("CrateType")
			print("tryting to CrateType for", arg2:GetFullName(), CrateType)
		until 5 <= 0 + 1 and CrateType
	end
	if not CrateType then
	else
		local SOME = CrateModels_upvr:FindFirstChild(CrateType)
		if not SOME then
			return warn(`Could not find Crate model associated with {CrateType}`)
		end
		local clone_5_upvr = SOME:Clone()
		clone_5_upvr.PrimaryPart.Anchored = true
		local var65_upvw = Vector3.new(0, 1.5, 0)
		local var67_upvw = 0
		task.spawn(function() -- Line 296
			--[[ Upvalues[4]:
				[1]: var67_upvw (read and write)
				[2]: var65_upvw (read and write)
				[3]: clone_5_upvr (readonly)
				[4]: arg2 (readonly)
			]]
			while var67_upvw < 0.25 do
				var67_upvw += game:GetService("RunService").Heartbeat:Wait()
				var65_upvw = Vector3.new(0, 3, 0):Lerp(Vector3.new(0, 0, 0), game.TweenService:GetValue(var67_upvw / 0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out))
				clone_5_upvr:PivotTo(arg2:GetPivot() * CFrame.new(0, var65_upvw.Y + clone_5_upvr:GetExtentsSize().Y * 0.5, 0))
			end
		end)
		var68 = "TimeToOpen"
		function var68() -- Line 309
			--[[ Upvalues[2]:
				[1]: CheckCrateTimer_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			CheckCrateTimer_upvr(arg2)
		end
		arg2:GetAttributeChangedSignal(var68):Connect(var68)
		tbl_upvr[arg2] = {
			Asset = clone_5_upvr;
		}
		clone_5_upvr:PivotTo(arg2:GetPivot() * CFrame.new(0, var65_upvw.Y + clone_5_upvr:GetExtentsSize().Y * 0.4, 0))
		clone_5_upvr.Parent = arg2
		var68 = LocalPlayer_upvr.Name
		if arg2:GetAttribute("OWNER") ~= var68 then return end
		var68 = ReplicatedStorage_upvr
		local clone = var68.ProximityPrompt:Clone()
		if not clone then
			var68 = warn("CosmeticCrateRenderer:RenderCrate | No Proximity Prompt found in ReplicatedStorage!")
			return var68
		end
		clone.Parent = clone_5_upvr
		var68 = "Open!"
		clone.ActionText = var68
		var68 = 1
		clone.HoldDuration = var68
		var68 = false
		clone.Enabled = var68
		var68 = clone.Triggered
		var68 = var68:Connect
		var68(function() -- Line 330
			--[[ Upvalues[2]:
				[1]: CosmeticCrateService_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			CosmeticCrateService_upvr:FireServer("OpenCrate", arg2)
		end)
		if CosmeticCrates_upvr[CrateType].TimeIsTimestamp == true then
			var68 = false
		else
			var68 = true
		end
		if var68 then
			local clone_2 = ReplicatedStorage_upvr.ProximityPrompt:Clone()
			if not clone_2 then
				return warn("CosmeticCrateRenderer:RenderCrate | No Proximity Prompt found in ReplicatedStorage!")
			end
			clone_2.Parent = clone_5_upvr
			clone_2.ActionText = "Skip Open Time"
			clone_2.Name = "SkipPrompt"
			clone_2.HoldDuration = 1
			clone_2.Enabled = false
			clone_2.Triggered:Connect(function() -- Line 345
				--[[ Upvalues[2]:
					[1]: CosmeticCrateService_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				CosmeticCrateService_upvr:FireServer("AuthorisePurchase", arg2)
			end)
		end
		CheckCrateTimer_upvr(arg2)
	end
end
function module_upvr.DerenderCrate(arg1, arg2) -- Line 354
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	if not arg2 then
		warn("CosmeticCrateRenderer:DerenderCrate | No server Crate to derender")
	else
		local var74 = tbl_upvr[arg2]
		if not var74 then
			warn("CosmeticCrateRenderer:DerenderCrate | No state data for server Crate")
			return
		end
		local Asset_3 = var74.Asset
		if not Asset_3 then
			warn("CosmeticCrateRenderer:DerenderCrate | No asset to derender")
			return
		end
		if not Asset_3:GetAttribute("DoingOpen") then
			Asset_3:Destroy()
			tbl_upvr[arg2] = nil
		end
	end
end
require(ReplicatedStorage_upvr.Modules.CreateTagHandler)({
	Tag = "CosmeticCrateServer";
	OnInstanceAdded = function(arg1) -- Line 373, Named "OnInstanceAdded"
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		if not arg1:IsDescendantOf(workspace) then
		else
			module_upvr:RenderCrate(arg1)
		end
	end;
	OnInstanceRemoved = function(arg1) -- Line 377, Named "OnInstanceRemoved"
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		module_upvr:DerenderCrate(arg1)
	end;
})
ReplicatedStorage_upvr.GameEvents.CrateReadyToOpen_RE.OnClientEvent:Connect(function(arg1, arg2) -- Line 382
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	tbl_upvr_2[arg2] = arg1
end)
CosmeticCrateService_upvr.OnClientEvent:Connect(function(arg1, arg2) -- Line 386
	--[[ Upvalues[1]:
		[1]: ActivateCrate_upvr (readonly)
	]]
	ActivateCrate_upvr(arg1, arg2)
end)
return module_upvr