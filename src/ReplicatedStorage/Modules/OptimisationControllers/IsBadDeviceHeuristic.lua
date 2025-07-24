-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:51
-- Luau version 6, Types version 3
-- Time taken: 0.001168 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local tbl_upvr = {813163219, 327423121}
local IsDev_upvr = require(ReplicatedStorage.Modules.IsDev)
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local IsMobile_upvr = require(ReplicatedStorage.Modules.OptimisationControllers.IsMobile)
return function() -- Line 11, Named "IsBadDeviceHeuristic"
	--[[ Upvalues[4]:
		[1]: IsDev_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: LocalPlayer_upvr (readonly)
		[4]: IsMobile_upvr (readonly)
	]]
	local var7
	if IsDev_upvr() then
		var7 = tbl_upvr
		if table.find(var7, LocalPlayer_upvr.UserId) then
			return true
		end
	end
	if not IsMobile_upvr() then
		return false
	end
	var7 = UserSettings().GameSettings
	var7 = Enum.SavedQualitySetting.Automatic
	if var7.SavedQualityLevel == var7 then
		var7 = false
		return var7
	end
	if UserSettings().GameSettings.SavedQualityLevel.Value > Enum.SavedQualitySetting.QualityLevel4.Value then
		var7 = false
	else
		var7 = true
	end
	return var7
end