-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:52
-- Luau version 6, Types version 3
-- Time taken: 0.006606 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players_upvr = game:GetService("Players")
local TimeHelper_upvr = require(ReplicatedStorage.Modules.TimeHelper)
local Value_upvr = game:GetService("ReplicatedFirst").DayInSeconds.Value
local LocalPlayer_upvr = Players_upvr.LocalPlayer
local Character_upvw = LocalPlayer_upvr.Character
if not Character_upvw then
	Character_upvw = LocalPlayer_upvr.CharacterAdded:Wait()
end
LocalPlayer_upvr.CharacterAdded:Connect(function(arg1) -- Line 20
	--[[ Upvalues[1]:
		[1]: Character_upvw (read and write)
	]]
	Character_upvw = arg1
end)
local module_upvr = {
	LinkedPotsToLocalPlayer = {};
	OwnedPots = {};
	MaxPotDistance = 15;
}
local LinkedPotsToLocalPlayer_upvr = module_upvr.LinkedPotsToLocalPlayer
local OwnedPots_upvr = module_upvr.OwnedPots
local PotUI_upvr = script:WaitForChild("PotUI")
local MainFrame = PotUI_upvr.BillboardGui.MainFrame
local tbl = {
	Tag = "FriendshipPotServer";
}
local var14_upvr = require(ReplicatedStorage.Modules.GetFarmAsync)(LocalPlayer_upvr)
local GetFarmAncestor_upvr = require(ReplicatedStorage.Modules.GetFarmAncestor)
function tbl.OnInstanceAdded(arg1) -- Line 47
	--[[ Upvalues[5]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: LinkedPotsToLocalPlayer_upvr (readonly)
		[3]: var14_upvr (readonly)
		[4]: GetFarmAncestor_upvr (readonly)
		[5]: OwnedPots_upvr (readonly)
	]]
	if arg1:GetAttribute("LinkedPlayerID") == LocalPlayer_upvr.UserId then
		LinkedPotsToLocalPlayer_upvr[arg1] = true
	elseif var14_upvr == GetFarmAncestor_upvr(arg1) then
		OwnedPots_upvr[arg1] = true
	end
end
function tbl.OnInstanceRemoved(arg1) -- Line 55
	--[[ Upvalues[2]:
		[1]: LinkedPotsToLocalPlayer_upvr (readonly)
		[2]: OwnedPots_upvr (readonly)
	]]
	LinkedPotsToLocalPlayer_upvr[arg1] = nil
	OwnedPots_upvr[arg1] = nil
end
require(ReplicatedStorage.Modules.CreateTagHandler)(tbl)
local function FindTargetPots_upvr() -- Line 61, Named "FindTargetPots"
	--[[ Upvalues[3]:
		[1]: Character_upvw (read and write)
		[2]: LinkedPotsToLocalPlayer_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var20
	for i in LinkedPotsToLocalPlayer_upvr do
		local Magnitude = (i:GetPivot().Position - Character_upvw:GetPivot().Position).Magnitude
		if math.huge > Magnitude and module_upvr.MaxPotDistance > Magnitude then
		end
	end
	return nil, Magnitude
end
local function FindOwnedPots_upvr() -- Line 79, Named "FindOwnedPots"
	--[[ Upvalues[3]:
		[1]: Character_upvw (read and write)
		[2]: OwnedPots_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var26
	for i_2 in OwnedPots_upvr do
		local Magnitude_2 = (i_2:GetPivot().Position - Character_upvw:GetPivot().Position).Magnitude
		if math.huge > Magnitude_2 and module_upvr.MaxPotDistance > Magnitude_2 then
		end
	end
	return nil, Magnitude_2
end
local DataService_upvr = require(ReplicatedStorage.Modules.DataService)
local function HasLocalUserPlacedDownPlotFor_upvr(arg1, arg2) -- Line 97, Named "HasLocalUserPlacedDownPlotFor"
	--[[ Upvalues[1]:
		[1]: DataService_upvr (readonly)
	]]
	for _, v in DataService_upvr:GetData().SavedObjects do
		if v.ObjectType == "FriendshipPot" then
			local Data = v.Data
			if Data.PotType == arg2 and Data.LinkedPlayerID == arg1.UserId then
				return true
			end
		end
	end
end
local function GetOwnerFromPot_upvr(arg1) -- Line 114, Named "GetOwnerFromPot"
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	local var36 = arg1:FindFirstAncestor("Farm")
	if var36 then
		var36 = arg1:FindFirstAncestor("Farm"):FindFirstChild("Important")
	end
	local var37 = var36
	if var37 then
		var37 = var36:FindFirstChild("Data")
	end
	local var38 = var37
	if var38 then
		var38 = var37:FindFirstChild("Owner")
	end
	return Players_upvr:FindFirstChild(var38.Value)
end
local function GetUsernameFromPot_upvr(arg1) -- Line 128, Named "GetUsernameFromPot"
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	local LinkedPlayerID_upvr = arg1:GetAttribute("LinkedPlayerID")
	if LinkedPlayerID_upvr then
		local pcall_result1, pcall_result2_2 = pcall(function() -- Line 132
			--[[ Upvalues[2]:
				[1]: Players_upvr (copied, readonly)
				[2]: LinkedPlayerID_upvr (readonly)
			]]
			return Players_upvr:GetNameFromUserIdAsync(LinkedPlayerID_upvr)
		end)
		if pcall_result1 then
			arg1:SetAttribute("LinkedPlayerID_NAME", pcall_result2_2)
		end
	end
	return arg1:GetAttribute("LinkedPlayerID_NAME") or "UNKNOWN"
end
local var47_upvw = 0
task.spawn(function() -- Line 147
	--[[ Upvalues[1]:
		[1]: var47_upvw (read and write)
	]]
	while true do
		var47_upvw = workspace:GetServerTimeNow()
		task.wait(1)
	end
end)
local function _() -- Line 154, Named "GetCurrentDay"
	--[[ Upvalues[2]:
		[1]: var47_upvw (read and write)
		[2]: Value_upvr (readonly)
	]]
	return math.floor(var47_upvw / Value_upvr)
end
local function _(arg1) -- Line 159, Named "CanTendToStreak"
	--[[ Upvalues[2]:
		[1]: Value_upvr (readonly)
		[2]: var47_upvw (read and write)
	]]
	if arg1 then
	else
	end
	if 0 == math.floor(var47_upvw / Value_upvr) then
	else
	end
	return true
end
local function _(arg1) -- Line 166, Named "CanTend"
	--[[ Upvalues[2]:
		[1]: Value_upvr (readonly)
		[2]: var47_upvw (read and write)
	]]
	if arg1 then
	else
	end
	if math.floor(0 / Value_upvr) == math.floor(var47_upvw / Value_upvr) then
	else
	end
	return true
end
local function _(arg1) -- Line 173, Named "GetTimeUntilYouCanTend"
	--[[ Upvalues[3]:
		[1]: var47_upvw (read and write)
		[2]: Value_upvr (readonly)
		[3]: TimeHelper_upvr (readonly)
	]]
	return TimeHelper_upvr:GenerateColonFormatFromTime((math.floor(var47_upvw / Value_upvr) + 1) * Value_upvr - var47_upvw)
end
local function _(arg1) -- Line 181, Named "IsStreakFailed"
	--[[ Upvalues[2]:
		[1]: var47_upvw (read and write)
		[2]: Value_upvr (readonly)
	]]
	local floored = math.floor(arg1:GetAttribute("LastStreakTime") / Value_upvr)
	local var50 = false
	if 0 < floored then
		if floored + 1 >= math.floor(var47_upvw / Value_upvr) then
			var50 = false
		else
			var50 = true
		end
	end
	return var50
end
local function _() -- Line 190, Named "GetExpiryTime"
	--[[ Upvalues[3]:
		[1]: var47_upvw (read and write)
		[2]: Value_upvr (readonly)
		[3]: TimeHelper_upvr (readonly)
	]]
	return TimeHelper_upvr:GenerateColonFormatFromTime((math.floor(var47_upvw / Value_upvr) + 1) * Value_upvr - var47_upvw)
end
local STATE_TEXT_upvr = MainFrame.STATE_TEXT
local TIMER_TEXT_upvr = MainFrame.TIMER_TEXT
local EXPIRY_TEXT_upvr = MainFrame.EXPIRY_TEXT
local var54_upvw = false
local function UpdatePotUserInterface_upvr() -- Line 196, Named "UpdatePotUserInterface"
	--[[ Upvalues[13]:
		[1]: FindOwnedPots_upvr (readonly)
		[2]: FindTargetPots_upvr (readonly)
		[3]: Value_upvr (readonly)
		[4]: GetOwnerFromPot_upvr (readonly)
		[5]: HasLocalUserPlacedDownPlotFor_upvr (readonly)
		[6]: var47_upvw (read and write)
		[7]: TimeHelper_upvr (readonly)
		[8]: GetUsernameFromPot_upvr (readonly)
		[9]: STATE_TEXT_upvr (readonly)
		[10]: TIMER_TEXT_upvr (readonly)
		[11]: EXPIRY_TEXT_upvr (readonly)
		[12]: var54_upvw (read and write)
		[13]: PotUI_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 110 start (CF ANALYSIS FAILED)
	local FindOwnedPots_upvr_result1, FindOwnedPots_upvr_result2 = FindOwnedPots_upvr()
	local FindTargetPots_result1, FindTargetPots_result2 = FindTargetPots_upvr()
	local var59
	if FindOwnedPots_upvr_result1 and FindTargetPots_result1 then
		if FindTargetPots_result2 <= FindOwnedPots_upvr_result2 then
			var59 = FindTargetPots_result1
		else
			var59 = FindOwnedPots_upvr_result1
		end
	else
		var59 = FindOwnedPots_upvr_result1 or FindTargetPots_result1
	end
	if var59 then
	else
	end
	-- KONSTANTERROR: [0] 1. Error Block 110 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [30] 28. Error Block 13 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [30] 28. Error Block 13 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [33] 31. Error Block 14 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [33] 31. Error Block 14 end (CF ANALYSIS FAILED)
end
task.spawn(function() -- Line 243
	--[[ Upvalues[1]:
		[1]: UpdatePotUserInterface_upvr (readonly)
	]]
	while true do
		task.wait(0.25)
		UpdatePotUserInterface_upvr()
	end
end)
return module_upvr