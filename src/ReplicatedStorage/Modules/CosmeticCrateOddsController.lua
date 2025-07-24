-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:27
-- Luau version 6, Types version 3
-- Time taken: 0.003449 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local GuiController_upvr = require(ReplicatedStorage.Modules.GuiController)
local Odds_UI_upvr = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Odds_UI")
local module = {}
local CosmeticCrates_upvr = require(ReplicatedStorage.Data.CosmeticCrateRegistry.CosmeticCrates)
local any_new_result1_upvr = require(ReplicatedStorage.Modules.Trove).new()
local Items_upvr = Odds_UI_upvr.Frame.Main.Items
local CosmeticList_upvr = require(ReplicatedStorage.Data.CosmeticRegistry).CosmeticList
local RunService_upvr = game:GetService("RunService")
function module.Open(arg1, arg2, arg3) -- Line 20
	--[[ Upvalues[7]:
		[1]: CosmeticCrates_upvr (readonly)
		[2]: GuiController_upvr (readonly)
		[3]: Odds_UI_upvr (readonly)
		[4]: any_new_result1_upvr (readonly)
		[5]: Items_upvr (readonly)
		[6]: CosmeticList_upvr (readonly)
		[7]: RunService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 63 start (CF ANALYSIS FAILED)
	local var34 = CosmeticCrates_upvr[arg2]
	local var35
	if not var34 then
		var35 = `Crate '{arg2}' not found in CosmeticCrates`
		warn(var35)
		return
	end
	var35 = Odds_UI_upvr
	any_new_result1_upvr:Destroy()
	var35 = Items_upvr
	local children, NONE, NONE_2 = var35.ScrollingFrame:GetChildren()
	for _, v in children, NONE, NONE_2 do
		if v:IsA("GuiObject") and v.Name ~= "UIListLayout" then
			v:Destroy()
		end
	end
	NONE = 0
	for _, v_2 in var34.CosmeticRolls.Items do
		NONE += v_2.ItemOdd
	end
	for i_3, v_3 in var34.CosmeticRolls.Items do
		table.insert({}, {
			Name = i_3;
			Item = v_3;
			NormalizedOdd = v_3.ItemOdd / NONE * 100;
		})
		local var41
	end
	table.sort(var41, function(arg1_2, arg2_2) -- Line 53
		local var43
		if arg1_2.NormalizedOdd >= arg2_2.NormalizedOdd then
			var43 = false
		else
			var43 = true
		end
		return var43
	end)
	local const_number = 2
	-- KONSTANTERROR: [0] 1. Error Block 63 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [110] 81. Error Block 15 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [110] 81. Error Block 15 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [94] 69. Error Block 85 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [110.330003]
	if v_3.ItemOdd / NONE * 100 < v_3 then
		-- KONSTANTWARNING: GOTO [119] #89
	end
	-- KONSTANTERROR: [94] 69. Error Block 85 end (CF ANALYSIS FAILED)
end
function module.Start(arg1) -- Line 161
	--[[ Upvalues[2]:
		[1]: GuiController_upvr (readonly)
		[2]: Odds_UI_upvr (readonly)
	]]
	GuiController_upvr:UsePopupAnims(Odds_UI_upvr)
end
task.spawn(module.Start, module)
return module