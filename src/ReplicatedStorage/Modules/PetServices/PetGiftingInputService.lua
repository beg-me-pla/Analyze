-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:45
-- Luau version 6, Types version 3
-- Time taken: 0.004926 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players_upvr = game:GetService("Players")
local LocalPlayer_upvr = Players_upvr.LocalPlayer
local Character_3_upvw = LocalPlayer_upvr.Character
if not Character_3_upvw then
	Character_3_upvw = LocalPlayer_upvr.CharacterAdded:Wait()
end
LocalPlayer_upvr.CharacterAdded:Connect(function(arg1) -- Line 7
	--[[ Upvalues[1]:
		[1]: Character_3_upvw (read and write)
	]]
	Character_3_upvw = arg1
end)
local ActivePetsService_upvr = require(ReplicatedStorage.Modules.PetServices.ActivePetsService)
local MINIMUM_DISTANCE_FOR_GIFTING_upvr = require(ReplicatedStorage.Data.PetRegistry).PetConfig.PET_GIFTING_CONFIG.MINIMUM_DISTANCE_FOR_GIFTING
local function GetClosestCharacter_upvr() -- Line 27, Named "GetClosestCharacter"
	--[[ Upvalues[5]:
		[1]: ActivePetsService_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
		[3]: Players_upvr (readonly)
		[4]: Character_3_upvw (read and write)
		[5]: MINIMUM_DISTANCE_FOR_GIFTING_upvr (readonly)
	]]
	local players_2 = Players_upvr:GetPlayers()
	local table_find_result1 = table.find(players_2, LocalPlayer_upvr)
	local var23
	if table_find_result1 then
		table.remove(players_2, table_find_result1)
	end
	for _, v in players_2 do
		local Character_2 = v.Character
		if Character_2 then
			local Magnitude = (Character_2:GetPivot().Position - Character_3_upvw:GetPivot().Position).Magnitude
			if math.huge > Magnitude and MINIMUM_DISTANCE_FOR_GIFTING_upvr > Magnitude then
				var23 = Character_2
			end
		end
	end
	return var23
end
local ProximityPrompt_upvr = Instance.new("ProximityPrompt")
ProximityPrompt_upvr.Exclusivity = Enum.ProximityPromptExclusivity.AlwaysShow
ProximityPrompt_upvr.KeyboardKeyCode = Enum.KeyCode.E
ProximityPrompt_upvr.RequiresLineOfSight = false
ProximityPrompt_upvr.HoldDuration = 0.5
ProximityPrompt_upvr.MaxActivationDistance = math.huge
local var27_upvw
local PetGiftingService_upvr = require(ReplicatedStorage.Modules.PetServices.PetGiftingService)
ProximityPrompt_upvr.Triggered:Connect(function() -- Line 61
	--[[ Upvalues[3]:
		[1]: var27_upvw (read and write)
		[2]: Players_upvr (readonly)
		[3]: PetGiftingService_upvr (readonly)
	]]
	if not var27_upvw then
		return warn("No Closest")
	end
	local any_GetPlayerFromCharacter_result1 = Players_upvr:GetPlayerFromCharacter(var27_upvw)
	if not any_GetPlayerFromCharacter_result1 then
		return warn("No player")
	end
	PetGiftingService_upvr:GivePet(any_GetPlayerFromCharacter_result1)
end)
local InventoryServiceEnums_upvr = require(ReplicatedStorage.Data.EnumRegistry.InventoryServiceEnums)
task.spawn(function() -- Line 70
	--[[ Upvalues[5]:
		[1]: Character_3_upvw (read and write)
		[2]: ProximityPrompt_upvr (readonly)
		[3]: InventoryServiceEnums_upvr (readonly)
		[4]: GetClosestCharacter_upvr (readonly)
		[5]: var27_upvw (read and write)
	]]
	while true do
		task.wait(0.5)
		local class_Tool = Character_3_upvw:FindFirstChildWhichIsA("Tool")
		if not class_Tool then
			ProximityPrompt_upvr.Enabled = false
		elseif not class_Tool:GetAttribute("PET_UUID") then
			ProximityPrompt_upvr.Enabled = false
		elseif class_Tool:GetAttribute(InventoryServiceEnums_upvr.Favorite) == true then
			ProximityPrompt_upvr.Enabled = false
		else
			local GetClosestCharacter_result1 = GetClosestCharacter_upvr()
			var27_upvw = GetClosestCharacter_result1
			if not GetClosestCharacter_result1 then
				ProximityPrompt_upvr.Enabled = false
			else
				ProximityPrompt_upvr.ObjectText = GetClosestCharacter_result1.Name
				ProximityPrompt_upvr.ActionText = `Gift Pet {class_Tool.Name}`
				ProximityPrompt_upvr.Enabled = true
				local PrimaryPart = GetClosestCharacter_result1.PrimaryPart
				if not PrimaryPart then
					PrimaryPart = GetClosestCharacter_result1:FindFirstChildWhichIsA("BasePart", true)
				end
				ProximityPrompt_upvr.Parent = PrimaryPart
			end
		end
	end
end)
return {}