-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:21
-- Luau version 6, Types version 3
-- Time taken: 0.004406 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local GamepadService_upvr = game:GetService("GamepadService")
local Signal_upvr = require(ReplicatedStorage.Modules.Signal)
local function createStateValue_upvr(arg1) -- Line 28, Named "createStateValue"
	--[[ Upvalues[1]:
		[1]: Signal_upvr (readonly)
	]]
	local any_new_result1_upvr = Signal_upvr.new()
	local module_upvr = {}
	module_upvr._value = arg1
	module_upvr._signal = any_new_result1_upvr
	function module_upvr.Get(arg1_2) -- Line 35
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		return module_upvr._value
	end
	function module_upvr.Set(arg1_3, arg2) -- Line 39
		--[[ Upvalues[2]:
			[1]: module_upvr (readonly)
			[2]: any_new_result1_upvr (readonly)
		]]
		module_upvr._value = arg2
		any_new_result1_upvr:Fire(arg2, module_upvr._value)
	end
	function module_upvr.Listen(arg1_4, arg2) -- Line 45
		--[[ Upvalues[1]:
			[1]: any_new_result1_upvr (readonly)
		]]
		return any_new_result1_upvr:Connect(arg2)
	end
	function module_upvr.Observe(arg1_5, arg2) -- Line 49
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		task.spawn(arg2, arg1_5:Get(), nil)
		local any_Listen_result1_upvr = module_upvr:Listen(arg2)
		return function() -- Line 52
			--[[ Upvalues[1]:
				[1]: any_Listen_result1_upvr (readonly)
			]]
			any_Listen_result1_upvr:Disconnect()
		end
	end
	return module_upvr
end
local module_upvr_2 = {}
local tbl_upvr = {}
function module_upvr_2.GetStateForGui(arg1, arg2) -- Line 72
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: createStateValue_upvr (readonly)
	]]
	local var10 = tbl_upvr[arg2]
	if not var10 then
		var10 = {
			Visible = createStateValue_upvr(false);
			ChangeEnabled = createStateValue_upvr(true);
			CloseKeybinds = createStateValue_upvr({Enum.KeyCode.ButtonB});
		}
		tbl_upvr[arg2] = var10
	end
	return var10
end
local tbl_upvr_2 = {}
function module_upvr_2.GetStateForGroup(arg1, arg2) -- Line 86
	--[[ Upvalues[2]:
		[1]: tbl_upvr_2 (readonly)
		[2]: createStateValue_upvr (readonly)
	]]
	local var14 = tbl_upvr_2[arg2]
	if not var14 then
		var14 = {
			Gui = createStateValue_upvr(nil);
		}
		tbl_upvr_2[arg2] = var14
	end
	return var14
end
function module_upvr_2.GetGroupForGui(arg1, arg2) -- Line 98
	return arg2:GetAttribute("Group") or "Menu"
end
function module_upvr_2.Close(arg1, arg2) -- Line 102
	--[[ Upvalues[2]:
		[1]: module_upvr_2 (readonly)
		[2]: GamepadService_upvr (readonly)
	]]
	local any_GetStateForGroup_result1 = module_upvr_2:GetStateForGroup(module_upvr_2:GetGroupForGui(arg2))
	if any_GetStateForGroup_result1.Gui:Get() ~= arg2 then
	else
		local any_GetStateForGui_result1_2 = module_upvr_2:GetStateForGui(arg2)
		any_GetStateForGui_result1_2.Visible:Set(false)
		any_GetStateForGroup_result1.Gui:Set(nil)
		if any_GetStateForGui_result1_2.ChangeEnabled:Get() then
			arg2.Enabled = false
			GamepadService_upvr:DisableGamepadCursor()
		end
	end
end
function module_upvr_2.Open(arg1, arg2) -- Line 120
	--[[ Upvalues[2]:
		[1]: module_upvr_2 (readonly)
		[2]: GamepadService_upvr (readonly)
	]]
	local any_GetStateForGroup_result1_2 = module_upvr_2:GetStateForGroup(module_upvr_2:GetGroupForGui(arg2))
	local any_Get_result1 = any_GetStateForGroup_result1_2.Gui:Get()
	if any_Get_result1 == arg2 then
	else
		if any_Get_result1 then
			module_upvr_2:Close(any_Get_result1)
		end
		local any_GetStateForGui_result1_5 = module_upvr_2:GetStateForGui(arg2)
		any_GetStateForGui_result1_5.Visible:Set(true)
		any_GetStateForGroup_result1_2.Gui:Set(arg2)
		if any_GetStateForGui_result1_5.ChangeEnabled:Get() then
			arg2.Enabled = true
			GamepadService_upvr:EnableGamepadCursor(arg2:FindFirstChildWhichIsA("GuiObject", true))
		end
	end
end
function module_upvr_2.Toggle(arg1, arg2) -- Line 141
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	local any_GetStateForGui_result1_3 = module_upvr_2:GetStateForGui(arg2)
	if any_GetStateForGui_result1_3.Visible:Get() then
		module_upvr_2:Close(arg2)
	else
		module_upvr_2:Open(arg2)
	end
	return any_GetStateForGui_result1_3.Visible
end
local Frame_Popup_Module_upvr = require(ReplicatedStorage.Frame_Popup_Module)
function module_upvr_2.UsePopupAnims(arg1, arg2) -- Line 151
	--[[ Upvalues[2]:
		[1]: module_upvr_2 (readonly)
		[2]: Frame_Popup_Module_upvr (readonly)
	]]
	local Main = arg2:FindFirstChild("Main")
	if not Main then
		Main = arg2:FindFirstChild("Frame")
		if not Main then
			Main = arg2:FindFirstChild("MainFrame")
		end
	end
	if not Main then
		error(`No root frame found for {arg2:GetFullName()}`)
	else
		arg2.Enabled = false
		local any_GetStateForGui_result1 = module_upvr_2:GetStateForGui(arg2)
		any_GetStateForGui_result1.ChangeEnabled:Set(true)
		any_GetStateForGui_result1.Visible:Observe(function(arg1_7) -- Line 162
			--[[ Upvalues[2]:
				[1]: Frame_Popup_Module_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			if arg1_7 then
				Frame_Popup_Module_upvr.Show(arg2)
			else
				Frame_Popup_Module_upvr.Hide(arg2)
			end
		end)
	end
end
local ContextActionService_upvr = game:GetService("ContextActionService")
function module_upvr_2.Start(arg1) -- Line 173
	--[[ Upvalues[2]:
		[1]: module_upvr_2 (readonly)
		[2]: ContextActionService_upvr (readonly)
	]]
	local var34_upvw
	module_upvr_2:GetStateForGroup("Menu").Gui:Observe(function(arg1_8) -- Line 177
		--[[ Upvalues[3]:
			[1]: var34_upvw (read and write)
			[2]: module_upvr_2 (copied, readonly)
			[3]: ContextActionService_upvr (copied, readonly)
		]]
		if type(var34_upvw) == "function" then
			task.spawn(var34_upvw)
		end
		if arg1_8 then
			local any_Observe_result1_upvr = module_upvr_2:GetStateForGui(arg1_8).CloseKeybinds:Observe(function(arg1_9) -- Line 184
				--[[ Upvalues[3]:
					[1]: ContextActionService_upvr (copied, readonly)
					[2]: module_upvr_2 (copied, readonly)
					[3]: arg1_8 (readonly)
				]]
				ContextActionService_upvr:UnbindAction("UICloseButton")
				ContextActionService_upvr:BindAction("UICloseButton", function(arg1_10, arg2, arg3) -- Line 187
					--[[ Upvalues[2]:
						[1]: module_upvr_2 (copied, readonly)
						[2]: arg1_8 (copied, readonly)
					]]
					if arg2 == Enum.UserInputState.End then
						module_upvr_2:Close(arg1_8)
						return Enum.ContextActionResult.Sink
					end
					return Enum.ContextActionResult.Pass
				end, false, table.unpack(arg1_9))
			end)
			function var34_upvw() -- Line 197
				--[[ Upvalues[2]:
					[1]: any_Observe_result1_upvr (readonly)
					[2]: ContextActionService_upvr (copied, readonly)
				]]
				any_Observe_result1_upvr()
				ContextActionService_upvr:UnbindAction("UICloseButton")
			end
		end
	end)
end
task.spawn(module_upvr_2.Start, module_upvr_2)
return module_upvr_2