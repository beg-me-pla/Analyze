-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:33:12
-- Luau version 6, Types version 3
-- Time taken: 0.002645 seconds

local var1_upvw
local var2_upvw
local var3_upvw
local var4_upvw
local BindableEvent_upvr = Instance.new("BindableEvent")
local function handlePlayerOrLocaleChanged_upvr() -- Line 14, Named "handlePlayerOrLocaleChanged"
	--[[ Upvalues[3]:
		[1]: var2_upvw (read and write)
		[2]: var3_upvw (read and write)
		[3]: BindableEvent_upvr (readonly)
	]]
	if var2_upvw and var2_upvw.LocaleId ~= var3_upvw then
		var3_upvw = var2_upvw.LocaleId
		BindableEvent_upvr:Fire(var3_upvw)
	end
end
local function _() -- Line 21, Named "reset"
	--[[ Upvalues[3]:
		[1]: var1_upvw (read and write)
		[2]: var2_upvw (read and write)
		[3]: var4_upvw (read and write)
	]]
	var1_upvw = nil
	var2_upvw = nil
	if var4_upvw then
		var4_upvw:Disconnect()
		var4_upvw = nil
	end
end
local Players_upvr = game:GetService("Players")
local LocalizationService_upvr = game:GetService("LocalizationService")
local function _() -- Line 31, Named "getTranslator"
	--[[ Upvalues[8]:
		[1]: var1_upvw (read and write)
		[2]: var2_upvw (read and write)
		[3]: Players_upvr (readonly)
		[4]: LocalizationService_upvr (readonly)
		[5]: var3_upvw (read and write)
		[6]: BindableEvent_upvr (readonly)
		[7]: var4_upvw (read and write)
		[8]: handlePlayerOrLocaleChanged_upvr (readonly)
	]]
	if not var1_upvw then
		var2_upvw = Players_upvr.LocalPlayer
		if var2_upvw then
			var1_upvw = LocalizationService_upvr:GetTranslatorForPlayer(var2_upvw)
			if var2_upvw and var2_upvw.LocaleId ~= var3_upvw then
				var3_upvw = var2_upvw.LocaleId
				BindableEvent_upvr:Fire(var3_upvw)
			end
			var4_upvw = var2_upvw:GetPropertyChangedSignal("LocaleId"):Connect(handlePlayerOrLocaleChanged_upvr)
		end
	end
	return var1_upvw
end
local tbl_upvr = {}
local function _(arg1) -- Line 46, Named "unregisterGui"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	tbl_upvr[arg1].connection:Disconnect()
	tbl_upvr[arg1] = nil
end
local function _(arg1, arg2) -- Line 51, Named "makeAncestryChangedHandler"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	return function(arg1_2, arg2_2) -- Line 52
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: tbl_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [11] 9. Error Block 3 start (CF ANALYSIS FAILED)
		local var10 = arg1
		tbl_upvr[var10].connection:Disconnect()
		tbl_upvr[var10] = nil
		do
			return
		end
		-- KONSTANTERROR: [11] 9. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [23] 19. Error Block 4 start (CF ANALYSIS FAILED)
		arg2.hasBeenAdded = true
		-- KONSTANTERROR: [23] 19. Error Block 4 end (CF ANALYSIS FAILED)
	end
end
local function _(arg1, arg2, arg3) -- Line 63, Named "updateRegistryInfo"
	arg1.context = arg2
	arg1.text = arg3
end
local function makeRegistryInfo_upvr(arg1, arg2, arg3) -- Line 68, Named "makeRegistryInfo"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local module_upvr = {
		hasBeenAdded = game:IsAncestorOf(arg1);
	}
	module_upvr.context = arg2
	module_upvr.text = arg3
	module_upvr.connection = arg1.AncestryChanged:Connect(function(arg1_3, arg2_3) -- Line 52
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: module_upvr (readonly)
			[3]: tbl_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [11] 9. Error Block 3 start (CF ANALYSIS FAILED)
		local var13 = arg1
		tbl_upvr[var13].connection:Disconnect()
		tbl_upvr[var13] = nil
		do
			return
		end
		-- KONSTANTERROR: [11] 9. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [23] 19. Error Block 4 start (CF ANALYSIS FAILED)
		module_upvr.hasBeenAdded = true
		-- KONSTANTERROR: [23] 19. Error Block 4 end (CF ANALYSIS FAILED)
	end)
	return module_upvr
end
local function _(arg1, arg2, arg3) -- Line 76, Named "registerGui"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: makeRegistryInfo_upvr (readonly)
	]]
	if tbl_upvr[arg1] == nil then
		tbl_upvr[arg1] = makeRegistryInfo_upvr(arg1, arg2, arg3)
	else
		local var14 = tbl_upvr[arg1]
		var14.context = arg2
		var14.text = arg3
	end
end
local module_upvr_2 = {
	LocaleChanged = BindableEvent_upvr.Event;
	TranslateGameText = function(arg1, arg2, arg3) -- Line 102, Named "TranslateGameText"
		return arg3
	end;
}
local function _() -- Line 115, Named "retranslateAll"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr_2 (readonly)
	]]
	for i, v in pairs(tbl_upvr) do
		i.Text = module_upvr_2:TranslateGameText(v.context, v.text)
	end
end
function module_upvr_2.TranslateAndRegister(arg1, arg2, arg3, arg4) -- Line 125
	return arg4
end
return module_upvr_2