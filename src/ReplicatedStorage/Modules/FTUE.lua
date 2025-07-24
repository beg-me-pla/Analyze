-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:19
-- Luau version 6, Types version 3
-- Time taken: 0.003029 seconds

local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local function _(arg1, arg2) -- Line 5, Named "pathResolver"
	return function() -- Line 6
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		local var7
		for _, v in arg2 do
			var7 = var7:WaitForChild(v, 10)
			if not var7 then
				return nil
			end
		end
		return var7
	end
end
local tbl_upvr_4 = {}
local tbl_upvr = {"Gear Stands"}
local NPCS_upvr = workspace.NPCS
tbl_upvr = workspace.MapDecorations
local tbl_upvr_8 = {"GearShopSign"}
function NPCS_upvr() -- Line 6
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: tbl_upvr_8 (readonly)
	]]
	local var23
	for _, v_3 in tbl_upvr_8 do
		var23 = var23:WaitForChild(v_3, 10)
		if not var23 then
			return nil
		end
	end
	return var23
end
tbl_upvr_8 = workspace.NPCS
local tbl_upvr_7 = {"Raphael"}
function tbl_upvr() -- Line 6
	--[[ Upvalues[2]:
		[1]: tbl_upvr_8 (readonly)
		[2]: tbl_upvr_7 (readonly)
	]]
	local var30
	for _, v_4 in tbl_upvr_7 do
		var30 = var30:WaitForChild(v_4, 10)
		if not var30 then
			return nil
		end
	end
	return var30
end
tbl_upvr_7 = workspace.NPCS
local tbl_upvr_5 = {"Eloise"}
function tbl_upvr_8() -- Line 6
	--[[ Upvalues[2]:
		[1]: tbl_upvr_7 (readonly)
		[2]: tbl_upvr_5 (readonly)
	]]
	local var37
	for _, v_5 in tbl_upvr_5 do
		var37 = var37:WaitForChild(v_5, 10)
		if not var37 then
			return nil
		end
	end
	return var37
end
tbl_upvr_5 = workspace.NPCS
local tbl_upvr_6 = {"Quest Stand"}
function tbl_upvr_7() -- Line 6
	--[[ Upvalues[2]:
		[1]: tbl_upvr_5 (readonly)
		[2]: tbl_upvr_6 (readonly)
	]]
	local var44
	for _, v_6 in tbl_upvr_6 do
		var44 = var44:WaitForChild(v_6, 10)
		if not var44 then
			return nil
		end
	end
	return var44
end
tbl_upvr_6 = workspace.NPCS
local tbl_upvr_3 = {"Pet Stand"}
function tbl_upvr_5() -- Line 6
	--[[ Upvalues[2]:
		[1]: tbl_upvr_6 (readonly)
		[2]: tbl_upvr_3 (readonly)
	]]
	local var51
	for _, v_7 in tbl_upvr_3 do
		var51 = var51:WaitForChild(v_7, 10)
		if not var51 then
			return nil
		end
	end
	return var51
end
tbl_upvr_3 = workspace.NPCS
local tbl_upvr_2 = {"CosmeticStand"}
function tbl_upvr_6() -- Line 6
	--[[ Upvalues[2]:
		[1]: tbl_upvr_3 (readonly)
		[2]: tbl_upvr_2 (readonly)
	]]
	local var58
	for _, v_8 in tbl_upvr_2 do
		var58 = var58:WaitForChild(v_8, 10)
		if not var58 then
			return nil
		end
	end
	return var58
end
tbl_upvr_4[1] = function() -- Line 6
	--[[ Upvalues[2]:
		[1]: NPCS_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	local var16
	for _, v_2 in tbl_upvr do
		var16 = var16:WaitForChild(v_2, 10)
		if not var16 then
			return nil
		end
	end
	return var16
end
tbl_upvr_4[2] = NPCS_upvr
tbl_upvr_4[3] = tbl_upvr
tbl_upvr_4[4] = tbl_upvr_8
tbl_upvr_4[5] = tbl_upvr_7
tbl_upvr_4[6] = tbl_upvr_5
tbl_upvr_4[7] = tbl_upvr_6
local function HandleFTUE() -- Line 28
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: tbl_upvr_4 (readonly)
	]]
	if not LocalPlayer_upvr:GetAttribute("FirstTimePlayer") then
	else
		for _, var60_upvr in tbl_upvr_4 do
			task.spawn(function() -- Line 35
				--[[ Upvalues[1]:
					[1]: var60_upvr (readonly)
				]]
				local var60_result1 = var60_upvr()
				if not var60_result1 then return end
				var60_result1.Parent = nil
			end)
		end
	end
end
NPCS_upvr = task.spawn
tbl_upvr = HandleFTUE
NPCS_upvr(tbl_upvr)
tbl_upvr_8 = "FirstTimePlayer"
NPCS_upvr = LocalPlayer_upvr:GetAttributeChangedSignal(tbl_upvr_8)
tbl_upvr_8 = HandleFTUE
NPCS_upvr = NPCS_upvr:Connect
NPCS_upvr(tbl_upvr_8)
NPCS_upvr = {}
return NPCS_upvr