-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:42
-- Luau version 6, Types version 3
-- Time taken: 0.033600 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players_upvr = game:GetService("Players")
local LocalPlayer_upvr = Players_upvr.LocalPlayer
local PetsPhysical_upvr = workspace:WaitForChild("PetsPhysical")
local TwoPointCast_upvr = require(ReplicatedStorage.Modules.TwoPointCast)
local PetMutationRegistry_upvr = require(ReplicatedStorage.Data.PetRegistry.PetMutationRegistry)
local var11_upvr = require(ReplicatedStorage.Modules.OptimisationControllers.IsBadDeviceHeuristic)()
local RaycastParams_new_result1_upvr = RaycastParams.new()
RaycastParams_new_result1_upvr.FilterDescendantsInstances = {workspace.Farm}
RaycastParams_new_result1_upvr.FilterType = Enum.RaycastFilterType.Include
local PlatformService_upvr = ReplicatedStorage.Modules.PlatformService
if game:GetService("UserInputService").TouchEnabled then
	PlatformService_upvr = "Mobile"
else
	PlatformService_upvr = "PC"
end
local tbl_upvr_2 = {}
for _, v in ReplicatedStorage.Modules.PetServices.AnimationEvents:GetDescendants() do
	if v:IsA("ModuleScript") then
		tbl_upvr_2[v.Name] = require(v)
	end
end
local PetList_upvr = require(ReplicatedStorage.Data.PetRegistry).PetList
local ActivePetService_upvr = ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("ActivePetService")
local any_new_result1_upvr = require(ReplicatedStorage.Modules.ReplicationClass).new("ActivePetsService_Replicator")
local function _() -- Line 89, Named "GetReplicatedData"
	--[[ Upvalues[1]:
		[1]: any_new_result1_upvr (readonly)
	]]
	return any_new_result1_upvr:YieldUntilData().Table
end
local module_upvr = {}
local tbl_upvr = {}
module_upvr.ClientPetState = tbl_upvr
local function _(arg1, arg2) -- Line 97, Named "WeldInPlace"
	if not arg1 or not arg2 then return end
	local Weld_2 = Instance.new("Weld")
	Weld_2.Part0 = arg1
	Weld_2.Part1 = arg2
	Weld_2.Name = "Weld"
	Weld_2.Parent = arg2
	Weld_2.Name = `{arg1.Name}_{arg2.Name}_WELD`
	return Weld_2
end
local function GetClientPetState(arg1) -- Line 115
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local var25 = tbl_upvr[arg1]
	if not var25 then
		var25 = {}
		tbl_upvr[arg1] = var25
	end
	return var25
end
local SkinService_upvr = require(ReplicatedStorage.Modules.SkinService)
local PetSoundHandler_upvr = require(ReplicatedStorage.Modules.PetServices.PetSoundHandler)
local PetVFXHandler_upvr = require(ReplicatedStorage.Modules.PetServices.PetVFXHandler)
local function CreatePetWithScale_upvr(arg1, arg2, arg3) -- Line 126, Named "CreatePetWithScale"
	--[[ Upvalues[12]:
		[1]: tbl_upvr (readonly)
		[2]: any_new_result1_upvr (readonly)
		[3]: PetList_upvr (readonly)
		[4]: PetsPhysical_upvr (readonly)
		[5]: SkinService_upvr (readonly)
		[6]: module_upvr (readonly)
		[7]: Players_upvr (readonly)
		[8]: TwoPointCast_upvr (readonly)
		[9]: RaycastParams_new_result1_upvr (readonly)
		[10]: PlatformService_upvr (readonly)
		[11]: PetSoundHandler_upvr (readonly)
		[12]: PetVFXHandler_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var37 = tbl_upvr[arg1]
	if not var37 then
		var37 = {}
		tbl_upvr[arg1] = var37
	end
	local var38 = var37
	if not var38 then
		local tonumber_result1 = tonumber(arg1)
		local var40 = tbl_upvr[tonumber_result1]
		if not var40 then
			var40 = {}
			tbl_upvr[tonumber_result1] = var40
		end
		var38 = var40
	end
	local var41 = var38[arg2]
	local PlayerPetData_3 = any_new_result1_upvr:YieldUntilData().Table.PlayerPetData
	local var43 = PlayerPetData_3[arg1]
	if not var43 then
		var43 = PlayerPetData_3[tonumber(arg1)]
	end
	local PetType_2 = var43.PetInventory.Data[arg2].PetType
	local var45 = PetList_upvr[PetType_2]
	if var45 then
	end
	local Asset_3 = var41.Asset
	if not Asset_3 then return end
	local Model_2 = var41.Model
	if Model_2 then
		Model_2:Destroy()
	end
	local SOME_2 = PetsPhysical_upvr:WaitForChild(arg2)
	if not SOME_2 then return end
	local var49 = SOME_2
	local Variant = var45.Variant
	if Variant then
		SkinService_upvr:SetSkin(var49, Variant)
	end
	var49:ScaleTo(math.max(arg3 * 1, 0.1) * (module_upvr:CalculateBoost(Players_upvr:FindFirstChild(arg1), arg2, "SIZE_MODIFICATION") or 1))
	local var9_result1_2 = TwoPointCast_upvr(Asset_3.Position + Vector3.new(0, 1, 0), Asset_3.Position - Vector3.new(0, 1, 0), RaycastParams_new_result1_upvr)
	if not var9_result1_2 or not var9_result1_2.Position.Y then
	end
	var49:PivotTo(Asset_3.CFrame * CFrame.new(0, 0 + var49:GetExtentsSize().Y / 2, 0))
	var49:AddTag("PetModel")
	if PlatformService_upvr == "PC" then
	end
	var41.PetSoundHandler = PetSoundHandler_upvr.new(PetType_2, var49, arg2)
	var41.PetVFXHandler = PetVFXHandler_upvr.new(PetType_2, var49, arg2)
	if not var49.PrimaryPart then
		warn(var49, "DOES NOT HAVE A PRIMARY_PART??")
		return
	end
	local PrimaryPart = var49.PrimaryPart
	if not PrimaryPart or not Asset_3 then
		local _
	else
		local Weld = Instance.new("Weld")
		Weld.Part0 = PrimaryPart
		Weld.Part1 = Asset_3
		Weld.Name = "Weld"
		Weld.Parent = Asset_3
		Weld.Name = `{PrimaryPart.Name}_{Asset_3.Name}_WELD`
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	Weld.C1 *= var45.WeldOffset
	var41.Model = var49
	local var56_upvr = var49:FindFirstChild("AnimationController")
	if var56_upvr then
		var56_upvr = var49:FindFirstChild("AnimationController"):FindFirstChild("Animator")
	end
	if var56_upvr then
		local tbl_upvr_4 = {}
		var41.LoadedAnimations = tbl_upvr_4
		for i_2_upvr, v_2_upvr in var45.Animations do
			task.spawn(function() -- Line 193
				--[[ Upvalues[4]:
					[1]: var56_upvr (readonly)
					[2]: v_2_upvr (readonly)
					[3]: tbl_upvr_4 (readonly)
					[4]: i_2_upvr (readonly)
				]]
				local any_LoadAnimation_result1 = var56_upvr:LoadAnimation(v_2_upvr)
				any_LoadAnimation_result1.Looped = true
				tbl_upvr_4[i_2_upvr] = any_LoadAnimation_result1
				if i_2_upvr == "Idle" then
					any_LoadAnimation_result1:Play()
				end
			end)
			local _
		end
	end
	return var49
end
local function RemovePet_upvr(arg1, arg2) -- Line 213, Named "RemovePet"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
	]]
	local var61 = tbl_upvr[arg1]
	if not var61 then
		var61 = {}
		tbl_upvr[arg1] = var61
	end
	local var62 = var61
	local var63 = var62[arg2]
	if var63 then
		if var63.PetSoundHandler then
			var63.PetSoundHandler:destroy()
		end
		var63.Asset:Destroy()
		local Model = var63.Model
		if Model then
			Model:Destroy()
		end
	end
	local CurrentAnimation_3 = var63.CurrentAnimation
	local var66
	if CurrentAnimation_3 then
		var66 = tbl_upvr_2
		local var67 = var66[CurrentAnimation_3.Name]
		var66 = var67
		if var66 then
			var66 = var67.AnimationEnded
		end
		if var66 then
			var66(arg2)
		end
		CurrentAnimation_3:Stop()
	end
	var62[arg2] = nil
end
local GetFarm_upvr = require(ReplicatedStorage.Modules.GetFarm)
local function GetPet_upvr(arg1, arg2) -- Line 248, Named "GetPet"
	--[[ Upvalues[10]:
		[1]: tbl_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: GetFarm_upvr (readonly)
		[4]: PetsPhysical_upvr (readonly)
		[5]: any_new_result1_upvr (readonly)
		[6]: PetList_upvr (readonly)
		[7]: TwoPointCast_upvr (readonly)
		[8]: RaycastParams_new_result1_upvr (readonly)
		[9]: CreatePetWithScale_upvr (readonly)
		[10]: RemovePet_upvr (readonly)
	]]
	local tostring_result1_upvw = tostring(arg1)
	local var70 = tostring_result1_upvw
	local var71 = tbl_upvr[var70]
	if not var71 then
		var71 = {}
		tbl_upvr[var70] = var71
	end
	local var72 = var71
	if not var72 then
		local tonumber_result1_2 = tonumber(tostring_result1_upvw)
		local var74 = tbl_upvr[tonumber_result1_2]
		if not var74 then
			var74 = {}
			tbl_upvr[tonumber_result1_2] = var74
		end
		var72 = var74
	end
	local var75 = var72[arg2]
	local SOME_3 = Players_upvr:FindFirstChild(tostring_result1_upvw)
	if not SOME_3 then return end
	local var68_result1 = GetFarm_upvr(SOME_3)
	if not var68_result1 then
		do
			return
		end
		local var78
	end
	if not var75 then
		local SOME = PetsPhysical_upvr:WaitForChild(arg2, 2)
		if not SOME then
			return nil
		end
		local Part = Instance.new("Part")
		Part.Size = Vector3.new(2, 2, 2)
		Part.Transparency = 1
		Part.Material = Enum.Material.Neon
		Part.Color = Color3.fromRGB(15, 119, 255)
		Part.Anchored = true
		Part.CanQuery = false
		Part:AddTag("PetTargetable")
		Part:SetAttribute("UUID", arg2)
		Part:SetAttribute("OWNER", tostring(tostring_result1_upvw))
		Part.Name = "PetMover"
		Part.CanCollide = false
		local Table = any_new_result1_upvr:YieldUntilData().Table
		local PlayerPetData = Table.PlayerPetData
		local ActivePetStates_5 = Table.ActivePetStates
		local var84 = PlayerPetData[tostring_result1_upvw]
		if not var84 then
			var84 = PlayerPetData[tonumber(tostring_result1_upvw)]
		end
		if not var84 then return end
		local PetInventory = var84.PetInventory
		if not PetInventory then return end
		local var86 = PetInventory.Data[arg2]
		if not var86 then return end
		local PetType = var86.PetType
		local var88 = PetList_upvr[PetType]
		if var88 then
		end
		if not var88 then
			warn(PetType, "does not have foundpettypedata")
			return
		end
		local var89 = var86.PetData.BaseWeight + var88.ModelScalePerLevel * var86.PetData.Level
		local var90 = ActivePetStates_5[tostring_result1_upvw]
		if not var90 then
			var90 = ActivePetStates_5[tonumber(tostring_result1_upvw)]
		end
		local var91 = var90[arg2]
		if not var91 then return end
		var78 = Vector3.new(0, 2, 0)
		local TwoPointCast_upvr_result1 = TwoPointCast_upvr(Part.Position + Vector3.new(0, 2, 0), Part.Position - var78, RaycastParams_new_result1_upvr)
		local var93 = TwoPointCast_upvr_result1
		if var93 then
			var93 = TwoPointCast_upvr_result1.Position.Y
		end
		var78 = var88.YHeightScaler
		local var94 = (var93 or 0) + (var78 or 0) * var89
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var78 = CFrame.new(var91.CurrentCFrame.X, var94, var91.CurrentCFrame.Z)
			return var78
		end
		if var88.MovementType ~= "Grounded" or not INLINED() then
			var78 = var91.CurrentCFrame
			if not var78 then
				var78 = var68_result1:FindFirstChild("PetArea").CFrame
			end
		end
		Part:PivotTo(var78)
		var72[arg2] = {
			Asset = Part;
			LoadedAnimations = {};
		}
		local CreatePetWithScale_upvr_result1 = CreatePetWithScale_upvr(tostring_result1_upvw, arg2, var89)
		if not CreatePetWithScale_upvr_result1 then
			Part:Destroy()
			var72[arg2] = nil
			return nil
		end
		SOME:PivotTo(CreatePetWithScale_upvr_result1:GetPivot() * CFrame.new(0, var94 + CreatePetWithScale_upvr_result1:GetExtentsSize().Y, 0))
		SOME.PrimaryPart.Anchored = false
		SOME.Parent = Part
		Part.Parent = PetsPhysical_upvr
		SOME.Destroying:Once(function() -- Line 339
			--[[ Upvalues[3]:
				[1]: RemovePet_upvr (copied, readonly)
				[2]: tostring_result1_upvw (read and write)
				[3]: arg2 (readonly)
			]]
			RemovePet_upvr(tostring_result1_upvw, arg2)
		end)
	end
	return var75
end
local function _(arg1) -- Line 348, Named "RemoveClientPetState"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: RemovePet_upvr (readonly)
	]]
	local var100 = tbl_upvr[arg1]
	if not var100 then
		var100 = {}
		tbl_upvr[arg1] = var100
	end
	local var101 = var100
	if var101 then
		for i_3 in var101 do
			RemovePet_upvr(arg1, i_3)
		end
	end
	tbl_upvr[arg1] = nil
end
local function UpdateRegistry_upvr() -- Line 360, Named "UpdateRegistry"
	--[[ Upvalues[7]:
		[1]: any_new_result1_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: RemovePet_upvr (readonly)
		[4]: var11_upvr (readonly)
		[5]: LocalPlayer_upvr (readonly)
		[6]: PetsPhysical_upvr (readonly)
		[7]: GetPet_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local ActivePetStates_4 = any_new_result1_upvr:YieldUntilData().Table.ActivePetStates
	local var111
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [13.5]
	var111 = tostring(nil)
	local var112 = var111
	var111 = ActivePetStates_4[var112]
	if not var111 then
		var111 = ActivePetStates_4[tonumber(var112)]
	end
	if not var111 then
		local var113 = var112
		local var114 = tbl_upvr[var113]
		if not var114 then
			var114 = {}
			tbl_upvr[var113] = var114
		end
		local var115 = var114
		if var115 then
			for i_4 in var115 do
				RemovePet_upvr(var113, i_4)
				local var116
			end
		end
		tbl_upvr[var116] = nil
		-- KONSTANTWARNING: GOTO [12] #10
	end
	for _ in var116, var115, tbl_upvr do
		if not i_4 then
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x3)
end
local function _(arg1, arg2, arg3, arg4) -- Line 407, Named "GetPredictedPosition"
	local var117 = (arg2 - arg1).Magnitude / arg4
	local var118 = os.clock() - arg3
	if var117 <= var118 then
		return arg2
	end
	return arg1:Lerp(arg2, var118 / var117)
end
local var119_upvw = 0
local tbl_upvr_3 = {}
local tbl_upvr_5 = {}
local PetUtilities_upvr = require(ReplicatedStorage.Modules.PetServices.PetUtilities)
local function UpdatePositioning_upvr(arg1) -- Line 422, Named "UpdatePositioning"
	--[[ Upvalues[15]:
		[1]: var119_upvw (read and write)
		[2]: tbl_upvr_3 (readonly)
		[3]: tbl_upvr_5 (readonly)
		[4]: any_new_result1_upvr (readonly)
		[5]: tbl_upvr (readonly)
		[6]: var11_upvr (readonly)
		[7]: LocalPlayer_upvr (readonly)
		[8]: PetList_upvr (readonly)
		[9]: PetUtilities_upvr (readonly)
		[10]: module_upvr (readonly)
		[11]: Players_upvr (readonly)
		[12]: TwoPointCast_upvr (readonly)
		[13]: RaycastParams_new_result1_upvr (readonly)
		[14]: PlatformService_upvr (readonly)
		[15]: tbl_upvr_2 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	var119_upvw = 0
	table.clear(tbl_upvr_3)
	table.clear(tbl_upvr_5)
	local Table_3 = any_new_result1_upvr:YieldUntilData().Table
	local ActivePetStates = Table_3.ActivePetStates
	local PlayerPetData_6 = Table_3.PlayerPetData
	for i_6, v_3 in tbl_upvr do
		local var213
		local function INLINED_4() -- Internal function, doesn't exist in bytecode
			var213 = LocalPlayer_upvr.Name
			return i_6 == var213
		end
		if not var213 or INLINED_4() then
			var213 = tostring(i_6)
			i_6 = var213
			var213 = ActivePetStates[i_6]
			if not var213 then
				var213 = ActivePetStates[tonumber(i_6)]
				local var214 = var213
			end
			if var214 then
				for i_7, v_4 in v_3 do
					local var215 = var214[i_7]
					if var215 then
						local Asset_2 = v_4.Asset
						local CurrentCFrame = var215.CurrentCFrame
						if CurrentCFrame then
							local LastUpdatedPosition_2 = tbl_upvr.LastUpdatedPosition
							if not LastUpdatedPosition_2 then
								LastUpdatedPosition_2 = CurrentCFrame.Position
							end
							local var219
							if (LastUpdatedPosition_2 - Asset_2.Position).Magnitude > 2 or v_4.IsNotFirstTime then
								v_4.LastUpdatedPosition = Asset_2.Position
								v_4.IsNotFirstTime = true
								local class_Model = Asset_2:FindFirstChildWhichIsA("Model", true)
								var219 = PlayerPetData_6[i_6]
								if not var219 then
									var219 = PlayerPetData_6[tonumber(i_6)]
									local var221
								end
								if var219 then
									local var222 = var219.PetInventory.Data[i_7]
									var221 = class_Model
									if var221 then
										var221 = class_Model.PrimaryPart
									end
									if var221 then
									end
									if not var221 then return end
									if not var222 then return end
									local var223 = PetList_upvr[var222.PetType]
									local MovementType = var223.MovementType
									local any_Lerp_result1_2 = Asset_2.Position:Lerp(CurrentCFrame.Position, math.clamp(var215.MovementSpeed * arg1 / (CurrentCFrame.Position - Asset_2.Position).Magnitude, 0, 1))
									local var226 = (var222.PetData.BaseWeight + var223.ModelScalePerLevel * PetUtilities_upvr:CalculateWeight(var222.PetData.BaseWeight or 1, var222.PetData.Level)) * (module_upvr:CalculateBoost(Players_upvr:FindFirstChild(i_6), i_7, "SIZE_MODIFICATION") or 1)
									if v_4.LastScale ~= var226 then
										class_Model:ScaleTo(math.max(0.01, var226 * 1))
										v_4.LastScale = var226
									end
									local TwoPointCast_upvr_result1_2 = TwoPointCast_upvr(Asset_2.Position + Vector3.new(0, 2, 0), Asset_2.Position - Vector3.new(0, 2, 0), RaycastParams_new_result1_upvr)
									local var228 = TwoPointCast_upvr_result1_2
									if var228 then
										var228 = TwoPointCast_upvr_result1_2.Position.Y
									end
									local var229 = var228 or 0
									if not v_4 then return end
									v_4.LastYHeight = math.lerp(v_4.LastYHeight or var229, var229, 5 * arg1)
									if MovementType == "Grounded" then
									else
									end
									local Position_2 = var221.Position
									local Position_3 = CurrentCFrame.Position
									if MovementType == "Grounded" then
										if (Vector2.new(Position_2.X, Position_2.Z) - Vector2.new(Position_3.X, Position_3.Z)).Magnitude > 2.5 then
										else
										end
									end
									local var233 = false
									if MovementType == "Flight" then
										if (Position_2 - Position_3).Magnitude > 1 then
											var233 = false
										else
											var233 = true
										end
									end
									if not var215.CustomAnimationState then
										if var233 or true then
											local _ = "Idle"
										else
										end
									end
									if not v_4.LastAnimationState or v_4.LastAnimationState ~= "Walk" then
										if PlatformService_upvr == "PC" and v_4.PetSoundHandler then
											-- KONSTANTERROR: Expression was reused, decompilation is incorrect
											v_4.PetSoundHandler:playSound("Walk")
										end
										-- KONSTANTERROR: Expression was reused, decompilation is incorrect
										v_4.PetVFXHandler:playVFX("Walk")
										-- KONSTANTERROR: Expression was reused, decompilation is incorrect
										v_4.LastAnimationState = "Walk"
									end
									local LoadedAnimations = v_4.LoadedAnimations
									-- KONSTANTERROR: Expression was reused, decompilation is incorrect
									local Walk_2 = LoadedAnimations.Walk
									local CurrentAnimation_2 = v_4.CurrentAnimation
									if CurrentAnimation_2 ~= Walk_2 and Walk_2 then
										local var238
										for i_8, v_5 in LoadedAnimations, var238 do
											v_5:Stop()
										end
										if CurrentAnimation_2 then
											var238 = tbl_upvr_2
											local var239 = var238[CurrentAnimation_2.Name]
											var238 = var239
											local var240 = var238
											if var240 then
												var240 = var239.AnimationEnded
											end
											if var240 then
												i_8 = i_7
												var240(i_8)
											end
											CurrentAnimation_2:Stop()
										end
										v_4.CurrentAnimation = Walk_2
										local var241
										if Walk_2 then
											var241 = tbl_upvr_2
											local var242 = var241[Walk_2.Name]
											var241 = var242
											if var241 then
												var241 = var242.AnimationStarted
											end
											if var241 then
												i_8 = i_7
												var241(i_8)
											end
											Walk_2:Play()
										end
									end
									local var243
									if v_4.LastTargetCFrame ~= CurrentCFrame or not v_4.LastAngles then
										local function INLINED_5() -- Internal function, doesn't exist in bytecode
											i_8 = CurrentCFrame.Position
											return PetUtilities_upvr:GetLookAt(Asset_2.Position, i_8)
										end
										if MovementType ~= "Grounded" or not INLINED_5() then
										end
										local any_ToEulerAnglesXYZ_result1, any_ToEulerAnglesXYZ_result2, any_ToEulerAnglesXYZ_result3_2 = CFrame.new(Asset_2.Position, CurrentCFrame.Position):ToEulerAnglesXYZ()
										if any_ToEulerAnglesXYZ_result1 ~= any_ToEulerAnglesXYZ_result1 or any_ToEulerAnglesXYZ_result2 ~= any_ToEulerAnglesXYZ_result2 or any_ToEulerAnglesXYZ_result3_2 ~= any_ToEulerAnglesXYZ_result3_2 then
											any_ToEulerAnglesXYZ_result1 = 0
											any_ToEulerAnglesXYZ_result3_2 = 0
										end
										local cframe_2 = CFrame.Angles(any_ToEulerAnglesXYZ_result1, 0, 0)
										local any_Lerp_result1 = v_4.LastAngles or cframe_2:Lerp(cframe_2, 6 * arg1)
										var119_upvw += 1
										tbl_upvr_5[var119_upvw] = Asset_2
										tbl_upvr_3[var119_upvw] = CFrame.new(any_Lerp_result1_2) * any_Lerp_result1
										v_4.LastAngles = any_Lerp_result1
									else
										var119_upvw += 1
										tbl_upvr_5[var119_upvw] = Asset_2
										-- KONSTANTERROR: Expression was reused, decompilation is incorrect
										tbl_upvr_3[var119_upvw] = CFrame.new(any_Lerp_result1_2) * v_4.LastAngles
									end
								end
							end
						end
					end
				end
			end
		end
	end
	workspace:BulkMoveTo(tbl_upvr_5, tbl_upvr_3, Enum.BulkMoveMode.FireCFrameChanged)
end
task.spawn(function() -- Line 606
	--[[ Upvalues[2]:
		[1]: PlatformService_upvr (readonly)
		[2]: UpdatePositioning_upvr (readonly)
	]]
	while true do
		local var250
		if PlatformService_upvr == "Mobile" then
			var250 = 0.025
		else
			var250 = 0.015
		end
		var250 = task.spawn
		local task_wait_result1_upvr = task.wait(var250)
		var250(function() -- Line 611
			--[[ Upvalues[2]:
				[1]: UpdatePositioning_upvr (copied, readonly)
				[2]: task_wait_result1_upvr (readonly)
			]]
			UpdatePositioning_upvr(task_wait_result1_upvr)
		end)
	end
end)
function module_upvr.GetServerState(arg1, arg2, arg3) -- Line 617
	--[[ Upvalues[1]:
		[1]: any_new_result1_upvr (readonly)
	]]
	local ActivePetStates_3 = any_new_result1_upvr:YieldUntilData().Table.ActivePetStates
	local var254 = ActivePetStates_3[arg2]
	if not var254 then
		var254 = ActivePetStates_3[tonumber(arg2)]
	end
	if not var254 then return end
	return var254[arg3]
end
function module_upvr.GetPlayerDatastorePetData(arg1, arg2) -- Line 627
	--[[ Upvalues[1]:
		[1]: any_new_result1_upvr (readonly)
	]]
	local PlayerPetData_5 = any_new_result1_upvr:YieldUntilData().Table.PlayerPetData
	local var256 = PlayerPetData_5[arg2]
	if not var256 then
		var256 = PlayerPetData_5[tonumber(arg2)]
	end
	if not var256 then return end
	return var256
end
function module_upvr.GetPetData(arg1, arg2, arg3) -- Line 635
	--[[ Upvalues[1]:
		[1]: any_new_result1_upvr (readonly)
	]]
	local PlayerPetData_4 = any_new_result1_upvr:YieldUntilData().Table.PlayerPetData
	local var258 = PlayerPetData_4[arg2]
	if not var258 then
		var258 = PlayerPetData_4[tonumber(arg2)]
	end
	if not var258 then return end
	return var258.PetInventory.Data[arg3]
end
function module_upvr.GetPetDataFromPetObject(arg1, arg2) -- Line 647
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if not arg2 then return end
	return module_upvr:GetPetData(arg2:GetAttribute("OWNER"), arg2:GetAttribute("UUID"))
end
function module_upvr.SetPetState(arg1, arg2, arg3, arg4) -- Line 654
	--[[ Upvalues[1]:
		[1]: ActivePetService_upvr (readonly)
	]]
	ActivePetService_upvr:FireServer("SetPetState", arg2, arg3, arg4)
end
function module_upvr.GetClientPetState(arg1, arg2) -- Line 658
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local var259 = tbl_upvr[arg2]
	if not var259 then
		var259 = {}
		tbl_upvr[arg2] = var259
	end
	return var259
end
function module_upvr.CalculateBoost(arg1, arg2, arg3, arg4) -- Line 662
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: PetMutationRegistry_upvr (readonly)
	]]
	if not arg2 then
		return 1
	end
	local any_GetPetData_result1 = module_upvr:GetPetData(arg2.Name, arg3)
	if not any_GetPetData_result1 then
		return 1
	end
	local MutationType_2 = any_GetPetData_result1.PetData.MutationType
	local var270 = 1
	if MutationType_2 then
		for _, v_6 in PetMutationRegistry_upvr.PetMutationRegistry[PetMutationRegistry_upvr.EnumToPetMutation[MutationType_2]].Boosts do
			if v_6.BoostType == arg4 then
				var270 += v_6.BoostAmount
			end
		end
	end
	local Boosts_2 = any_GetPetData_result1.PetData.Boosts
	if not Boosts_2 then
		return var270
	end
	for _, v_7 in Boosts_2 do
		if v_7.BoostType == arg4 then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var270 += v_7.BoostAmount
		end
	end
	return var270
end
function module_upvr.GetBoostsOfType(arg1, arg2, arg3, arg4) -- Line 692
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: PetMutationRegistry_upvr (readonly)
	]]
	local any_GetPetData_result1_2 = module_upvr:GetPetData(arg2.Name, arg3)
	if not any_GetPetData_result1_2 then return end
	local Boosts = any_GetPetData_result1_2.PetData.Boosts
	if not Boosts then return end
	for i_11, v_8 in Boosts do
		if v_8.BoostType == arg4 then
			table.insert({}, v_8)
		end
	end
	local MutationType = any_GetPetData_result1_2.PetData.MutationType
	if MutationType then
		i_11 = PetMutationRegistry_upvr
		v_8 = PetMutationRegistry_upvr
		i_11 = v_8.PetMutationRegistry
		i_11 = i_11[i_11.EnumToPetMutation[MutationType]].Boosts
		v_8 = nil
		for _, v_9 in i_11, v_8 do
			if v_9.BoostType == arg4 then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert({}, v_9)
			end
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
function module_upvr.GetClientPetStateUUID(arg1, arg2, arg3) -- Line 723
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any_GetClientPetState_result1 = module_upvr:GetClientPetState(arg2)
	if not any_GetClientPetState_result1 then
		any_GetClientPetState_result1 = module_upvr:GetClientPetState(tonumber(arg2))
	end
	if not any_GetClientPetState_result1 then return end
	return any_GetClientPetState_result1[arg3]
end
Players_upvr.PlayerRemoving:Connect(function(arg1) -- Line 728
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: RemovePet_upvr (readonly)
	]]
	local var283 = tbl_upvr[arg1]
	if not var283 then
		var283 = {}
		tbl_upvr[arg1] = var283
	end
	local var284 = var283
	if var284 then
		for i_13 in var284 do
			RemovePet_upvr(arg1, i_13)
		end
	end
	tbl_upvr[arg1] = nil
end)
function module_upvr.Feed(arg1, arg2) -- Line 732
	--[[ Upvalues[1]:
		[1]: ActivePetService_upvr (readonly)
	]]
	ActivePetService_upvr:FireServer("Feed", arg2)
end
task.delay(2, function() -- Line 736
	--[[ Upvalues[2]:
		[1]: UpdateRegistry_upvr (readonly)
		[2]: any_new_result1_upvr (readonly)
	]]
	UpdateRegistry_upvr()
	any_new_result1_upvr:GetPathSignal("ActivePetStates/@"):Connect(function(...) -- Line 738
		--[[ Upvalues[1]:
			[1]: UpdateRegistry_upvr (copied, readonly)
		]]
		UpdateRegistry_upvr()
	end)
end)
UpdateRegistry_upvr()
task.spawn(function() -- Line 748
	--[[ Upvalues[1]:
		[1]: UpdateRegistry_upvr (readonly)
	]]
	while true do
		task.wait(2)
		UpdateRegistry_upvr()
	end
end)
return module_upvr