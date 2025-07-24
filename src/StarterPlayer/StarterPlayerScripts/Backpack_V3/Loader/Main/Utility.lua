-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:33:11
-- Luau version 6, Types version 3
-- Time taken: 0.115568 seconds

local Color3_fromRGB_result1_upvr_7 = Color3.fromRGB(204, 204, 204)
local Color3_fromRGB_result1_upvr = Color3.fromRGB(255, 255, 255)
local HttpService_upvr = game:GetService("HttpService")
local UserInputService_upvr = game:GetService("UserInputService")
local GuiService_upvr = game:GetService("GuiService")
local RunService_upvr = game:GetService("RunService")
local PlayerGui_upvr = game.Players.LocalPlayer.PlayerGui
local ContextActionService_upvr = game:GetService("ContextActionService")
local VRService_upvr = game:GetService("VRService")
local pcall_result1, pcall_result2 = pcall(function() -- Line 39
	return false
end)
local tbl_3_upvr = {}
local function Create(arg1) -- Line 48
	return function(arg1_2) -- Line 49
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local any_2 = Instance.new(arg1)
		local var23
		for i, v in pairs(arg1_2) do
			if type(i) == "number" then
				v.Parent = any_2
			elseif i == "Parent" then
				var23 = v
			else
				any_2[i] = v
			end
		end
		if var23 then
			any_2.Parent = var23
		end
		return any_2
	end
end
tbl_3_upvr.Create = Create
local tbl_7_upvr = {}
setmetatable(tbl_7_upvr, {
	__mode = 'k';
})
local var27_upvr = tbl_3_upvr.Create("ImageLabel")({
	Image = "";
	BackgroundTransparency = 1;
})
function clamp(arg1, arg2, arg3) -- Line 81
	return math.max(arg1, math.min(arg2, arg3))
end
function ClampVector2(arg1, arg2, arg3) -- Line 85
	return Vector2.new(clamp(arg1.x, arg2.x, arg3.x), clamp(arg1.y, arg2.y, arg3.y))
end
local function Linear_upvr(arg1, arg2, arg3, arg4) -- Line 90, Named "Linear"
	if arg4 <= arg1 then
		return arg2 + arg3
	end
	return arg3 * arg1 / arg4 + arg2
end
local function EaseOutQuad_upvr(arg1, arg2, arg3, arg4) -- Line 98, Named "EaseOutQuad"
	if arg4 <= arg1 then
		return arg2 + arg3
	end
	local var28 = arg1 / arg4
	return arg2 - arg3 * var28 * (var28 - 2)
end
local function EaseInOutQuad_upvr(arg1, arg2, arg3, arg4) -- Line 107, Named "EaseInOutQuad"
	if arg4 <= arg1 then
		return arg2 + arg3
	end
	local var29 = arg1 / arg4
	if var29 < 0.5 then
		return 2 * arg3 * var29 * var29 + arg2
	end
	return arg2 + arg3 * (2 * (2 - var29) * var29 - 1)
end
function PropertyTweener(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 119
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	local module_upvr_4 = {
		StartTime = tick();
		EndTime = module_upvr_4.StartTime + arg5;
		Cancelled = false;
	}
	local var31_upvw = false
	local var32_upvw = 0
	local function _() -- Line 128, Named "finalize"
		--[[ Upvalues[8]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: arg6 (readonly)
			[4]: arg3 (readonly)
			[5]: arg4 (readonly)
			[6]: var31_upvw (read and write)
			[7]: var32_upvw (read and write)
			[8]: arg7 (readonly)
		]]
		if arg1 then
			arg1[arg2] = arg6(1, arg3, arg4 - arg3, 1)
		end
		var31_upvw = true
		var32_upvw = 1
		if arg7 then
			arg7()
		end
	end
	arg1[arg2] = arg6(0, arg3, arg4 - arg3, arg5)
	coroutine.wrap(function() -- Line 141
		--[[ Upvalues[11]:
			[1]: module_upvr_4 (readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: arg6 (readonly)
			[5]: arg3 (readonly)
			[6]: arg4 (readonly)
			[7]: arg5 (readonly)
			[8]: var32_upvw (read and write)
			[9]: RunService_upvr (copied, readonly)
			[10]: var31_upvw (read and write)
			[11]: arg7 (readonly)
		]]
		local tick_result1 = tick()
		while tick_result1 < module_upvr_4.EndTime and arg1 do
			if module_upvr_4.Cancelled then return end
			arg1[arg2] = arg6(tick_result1 - module_upvr_4.StartTime, arg3, arg4 - arg3, arg5)
			var32_upvw = clamp(0, 1, (tick_result1 - module_upvr_4.StartTime) / arg5)
			RunService_upvr.RenderStepped:wait()
		end
		if module_upvr_4.Cancelled == false and arg1 then
			if arg1 then
				arg1[arg2] = arg6(1, arg3, arg4 - arg3, 1)
			end
			var31_upvw = true
			var32_upvw = 1
			if arg7 then
				arg7()
			end
		end
	end)()
	function module_upvr_4.GetFinal(arg1_3) -- Line 157
		--[[ Upvalues[1]:
			[1]: arg4 (readonly)
		]]
		return arg4
	end
	function module_upvr_4.GetPercentComplete(arg1_4) -- Line 161
		--[[ Upvalues[1]:
			[1]: var32_upvw (read and write)
		]]
		return var32_upvw
	end
	function module_upvr_4.IsFinished(arg1_5) -- Line 165
		--[[ Upvalues[1]:
			[1]: var31_upvw (read and write)
		]]
		return var31_upvw
	end
	function module_upvr_4.Finish(arg1_6) -- Line 169
		--[[ Upvalues[8]:
			[1]: var31_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: arg6 (readonly)
			[5]: arg3 (readonly)
			[6]: arg4 (readonly)
			[7]: var32_upvw (read and write)
			[8]: arg7 (readonly)
		]]
		if not var31_upvw then
			arg1_6:Cancel()
			if arg1 then
				arg1[arg2] = arg6(1, arg3, arg4 - arg3, 1)
			end
			var31_upvw = true
			var32_upvw = 1
			if arg7 then
				arg7()
			end
		end
	end
	function module_upvr_4.Cancel(arg1_7) -- Line 176
		--[[ Upvalues[1]:
			[1]: module_upvr_4 (readonly)
		]]
		module_upvr_4.Cancelled = true
	end
	return module_upvr_4
end
local function CreateSignal() -- Line 185
	local module = {}
	local BindableEvent_upvr_4 = Instance.new("BindableEvent")
	local var37_upvw
	local var38_upvw
	function module.fire(arg1, ...) -- Line 193
		--[[ Upvalues[3]:
			[1]: var37_upvw (read and write)
			[2]: var38_upvw (read and write)
			[3]: BindableEvent_upvr_4 (readonly)
		]]
		var37_upvw = {...}
		var38_upvw = select('#', ...)
		BindableEvent_upvr_4:Fire()
	end
	function module.connect(arg1, arg2) -- Line 199
		--[[ Upvalues[3]:
			[1]: BindableEvent_upvr_4 (readonly)
			[2]: var37_upvw (read and write)
			[3]: var38_upvw (read and write)
		]]
		if not arg2 then
			error("connect(nil)", 2)
		end
		return BindableEvent_upvr_4.Event:Connect(function() -- Line 201
			--[[ Upvalues[3]:
				[1]: arg2 (readonly)
				[2]: var37_upvw (copied, read and write)
				[3]: var38_upvw (copied, read and write)
			]]
			arg2(unpack(var37_upvw, 1, var38_upvw))
		end)
	end
	function module.wait(arg1) -- Line 206
		--[[ Upvalues[3]:
			[1]: BindableEvent_upvr_4 (readonly)
			[2]: var37_upvw (read and write)
			[3]: var38_upvw (read and write)
		]]
		BindableEvent_upvr_4.Event:wait()
		if not var37_upvw then
			error("Missing arg data, likely due to :TweenSize/Position corrupting threadrefs.")
		end
		return unpack(var37_upvw, 1, var38_upvw)
	end
	return module
end
local function getViewportSize_upvr() -- Line 217, Named "getViewportSize"
	while not workspace.CurrentCamera do
		workspace.Changed:wait()
	end
	while not (workspace.CurrentCamera.ViewportSize == Vector2.new(0, 0) or workspace.CurrentCamera.ViewportSize ~= Vector2.new(1, 1)) do
		workspace.CurrentCamera.Changed:wait()
	end
	return workspace.CurrentCamera.ViewportSize
end
local function _() -- Line 232, Named "isSmallTouchScreen"
	--[[ Upvalues[2]:
		[1]: getViewportSize_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
	]]
	local getViewportSize_result1_2 = getViewportSize_upvr()
	local TouchEnabled = UserInputService_upvr.TouchEnabled
	if TouchEnabled then
		TouchEnabled = true
		if getViewportSize_result1_2.Y >= 500 then
			if getViewportSize_result1_2.X >= 700 then
				TouchEnabled = false
			else
				TouchEnabled = true
			end
		end
	end
	return TouchEnabled
end
local function _() -- Line 237, Named "isPortrait"
	--[[ Upvalues[1]:
		[1]: getViewportSize_upvr (readonly)
	]]
	local getViewportSize_result1_5 = getViewportSize_upvr()
	local var46
	if getViewportSize_result1_5.X >= getViewportSize_result1_5.Y then
		var46 = false
	else
		var46 = true
	end
	return var46
end
local function _() -- Line 242, Named "isTenFootInterface"
	return false
end
local function _() -- Line 246, Named "usesSelectedObject"
	--[[ Upvalues[2]:
		[1]: VRService_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
	]]
	if VRService_upvr.VREnabled then
		return false
	end
	if UserInputService_upvr.TouchEnabled and not UserInputService_upvr.GamepadEnabled then
		return false
	end
	return true
end
local function _(arg1, arg2, arg3) -- Line 255, Named "isPosOverGui"
	local x_7 = arg2.AbsolutePosition.x
	local y_9 = arg2.AbsolutePosition.y
	local var55 = false
	if x_7 < arg1.x then
		var55 = false
		if arg1.x < x_7 + arg2.AbsoluteSize.x then
			var55 = false
			if y_9 < arg1.y then
				if arg1.y >= y_9 + arg2.AbsoluteSize.y then
					var55 = false
				else
					var55 = true
				end
			end
		end
	end
	return var55
end
local function _(arg1, arg2) -- Line 263, Named "isPosOverGuiWithClipping"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 54 start (CF ANALYSIS FAILED)
	local x_9 = arg2.AbsolutePosition.x
	local y_12 = arg2.AbsolutePosition.y
	local var74 = false
	if x_9 < arg1.x then
		var74 = false
		if arg1.x < x_9 + arg2.AbsoluteSize.x then
			var74 = false
			if y_12 < arg1.y then
				if arg1.y >= y_12 + arg2.AbsoluteSize.y then
					var74 = false
				else
					var74 = true
				end
			end
		end
	end
	if not var74 then
		return false
	end
	local var75 = arg2
	-- KONSTANTERROR: [0] 1. Error Block 54 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [75] 54. Error Block 58 start (CF ANALYSIS FAILED)
	local var76
	if var75:IsA("LayerCollector") or var75.ClipsDescendants then
		local var77 = var75
		local x_10 = var77.AbsolutePosition.x
		local y = var77.AbsolutePosition.y
		if x_10 < arg1.x then
			if arg1.x < x_10 + var77.AbsoluteSize.x then
				if y < arg1.y then
					if arg1.y >= y + var77.AbsoluteSize.y then
					else
					end
				end
			end
		end
		if not true then
			-- KONSTANTWARNING: GOTO [129] #89
		end
	end
	-- KONSTANTERROR: [75] 54. Error Block 58 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [44] 29. Error Block 60 start (CF ANALYSIS FAILED)
	local function INLINED() -- Internal function, doesn't exist in bytecode
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return true
	end
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return true
	end
	if var75.Parent == nil or not INLINED() and not INLINED_2() then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		if var75.Parent and true then
			-- KONSTANTWARNING: GOTO [129] #89
		end
		-- KONSTANTWARNING: GOTO [129] #89
	end
	-- KONSTANTERROR: [44] 29. Error Block 60 end (CF ANALYSIS FAILED)
end
local function _(arg1, arg2) -- Line 296, Named "areGuisIntersecting"
	local x_13 = arg1.AbsolutePosition.x
	local y_11 = arg1.AbsolutePosition.y
	local x_2 = arg2.AbsolutePosition.x
	local y_7 = arg2.AbsolutePosition.y
	local var84 = false
	if x_13 < x_2 + arg2.AbsoluteSize.x then
		if x_2 >= x_13 + arg1.AbsoluteSize.x then
			var84 = false
		else
			var84 = true
		end
	end
	local var85 = false
	if y_11 < y_7 + arg2.AbsoluteSize.y then
		if y_7 >= y_11 + arg1.AbsoluteSize.y then
			var85 = false
		else
			var85 = true
		end
	end
	return var84 and var85
end
local function _(arg1, arg2) -- Line 311, Named "isGuiVisible"
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var86 = arg1
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [33] 28. Error Block 50 start (CF ANALYSIS FAILED)
	local var87
	if var86:IsA("LayerCollector") or var86.ClipsDescendants then
		local var88 = var86
		local x_5 = var88.AbsolutePosition.x
		local y_6 = var88.AbsolutePosition.y
		local x_4 = arg1.AbsolutePosition.x
		local y_10 = arg1.AbsolutePosition.y
		var87 = false
		if x_5 < x_4 + arg1.AbsoluteSize.x then
			if x_4 >= x_5 + var88.AbsoluteSize.x then
				var87 = false
			else
				var87 = true
			end
		end
		local var93 = false
		if y_6 < y_10 + arg1.AbsoluteSize.y then
			if y_10 >= y_6 + var88.AbsoluteSize.y then
				var93 = false
			else
				var93 = true
			end
		end
		if not (var87 and var93) then
			-- KONSTANTWARNING: GOTO [100] #72
		end
	end
	-- KONSTANTERROR: [33] 28. Error Block 50 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 53 start (CF ANALYSIS FAILED)
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return var87 and var93
	end
	local function INLINED_4() -- Internal function, doesn't exist in bytecode
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return var87 and var93
	end
	if var86.Parent == nil or not INLINED_3() and not INLINED_4() then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if var86.Parent then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if var87 and var93 then
				-- KONSTANTWARNING: GOTO [100] #72
			end
			-- KONSTANTWARNING: GOTO [100] #72
		end
		-- KONSTANTWARNING: GOTO [100] #72
	end
	-- KONSTANTERROR: [2] 3. Error Block 53 end (CF ANALYSIS FAILED)
end
local function addHoverState_upvr(arg1, arg2, arg3, arg4) -- Line 340, Named "addHoverState"
	local function onNormalButtonStateCallback() -- Line 341
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: arg3 (readonly)
			[3]: arg2 (readonly)
		]]
		if arg1.Active then
			arg3(arg2)
		end
	end
	local function onHoverButtonStateCallback() -- Line 346
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: arg4 (readonly)
			[3]: arg2 (readonly)
		]]
		if arg1.Active then
			arg4(arg2)
		end
	end
	arg1.MouseEnter:Connect(onHoverButtonStateCallback)
	arg1.SelectionGained:Connect(onHoverButtonStateCallback)
	arg1.MouseLeave:Connect(onNormalButtonStateCallback)
	arg1.SelectionLost:Connect(onNormalButtonStateCallback)
	arg3(arg2)
end
local function addOnResizedCallback_upvr(arg1, arg2) -- Line 360, Named "addOnResizedCallback"
	--[[ Upvalues[2]:
		[1]: tbl_7_upvr (readonly)
		[2]: getViewportSize_upvr (readonly)
	]]
	tbl_7_upvr[arg1] = arg2
	local getViewportSize_result1 = getViewportSize_upvr()
	local var95
	if getViewportSize_result1.X >= getViewportSize_result1.Y then
		var95 = false
	else
		var95 = true
	end
	arg2(getViewportSize_upvr(), var95)
end
local tbl_10_upvr = {
	[Enum.UserInputType.Gamepad1] = true;
	[Enum.UserInputType.Gamepad2] = true;
	[Enum.UserInputType.Gamepad3] = true;
	[Enum.UserInputType.Gamepad4] = true;
	[Enum.UserInputType.Gamepad5] = true;
	[Enum.UserInputType.Gamepad6] = true;
	[Enum.UserInputType.Gamepad7] = true;
	[Enum.UserInputType.Gamepad8] = true;
}
local function MakeDefaultButton_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 376, Named "MakeDefaultButton"
	--[[ Upvalues[5]:
		[1]: tbl_3_upvr (readonly)
		[2]: tbl_10_upvr (readonly)
		[3]: UserInputService_upvr (readonly)
		[4]: GuiService_upvr (readonly)
		[5]: VRService_upvr (readonly)
	]]
	local tbl_17 = {
		Name = arg1.."Button";
		Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButton.png";
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(8, 6, 46, 44);
		AutoButtonColor = false;
		BackgroundTransparency = 1;
	}
	tbl_17.Size = arg2
	tbl_17.ZIndex = 2
	tbl_17.SelectionImageObject = tbl_3_upvr.Create("ImageLabel")({
		Image = "";
		BackgroundTransparency = 1;
	})
	local var99_upvr = tbl_3_upvr.Create("ImageButton")(tbl_17)
	local _ = {
		Name = "Enabled";
		Parent = var99_upvr;
		Value = true;
	}
	if arg3 then
		var99_upvr.MouseButton1Click:Connect(function() -- Line 404
			--[[ Upvalues[3]:
				[1]: arg3 (readonly)
				[2]: tbl_10_upvr (copied, readonly)
				[3]: UserInputService_upvr (copied, readonly)
			]]
			arg3(tbl_10_upvr[UserInputService_upvr:GetLastInputType()] or false)
		end)
	end
	local function _(arg1_8) -- Line 409, Named "isPointerInput"
		local var102 = true
		if arg1_8.UserInputType ~= Enum.UserInputType.MouseMovement then
			if arg1_8.UserInputType ~= Enum.UserInputType.Touch then
				var102 = false
			else
				var102 = true
			end
		end
		return var102
	end
	local var103_upvw
	local function _() -- Line 418, Named "selectButton"
		--[[ Upvalues[4]:
			[1]: arg5 (readonly)
			[2]: arg4 (readonly)
			[3]: var99_upvr (readonly)
			[4]: var103_upvw (read and write)
		]]
		local var104
		if var104 == nil and arg4 then
			var104 = arg4.HubRef
			local var105
		end
		local function INLINED_5() -- Internal function, doesn't exist in bytecode
			var105 = var104.Active
			return var105
		end
		if var104 and INLINED_5() or var104 == nil then
			var105 = var99_upvr
			var105.Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButtonSelected.png"
			var105 = var99_upvr
			if var103_upvw then
				var105 = var103_upvw
			end
			if var104 then
				var104:ScrollToFrame(var105)
			end
		end
	end
	local function _() -- Line 439, Named "deselectButton"
		--[[ Upvalues[1]:
			[1]: var99_upvr (readonly)
		]]
		var99_upvr.Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButton.png"
	end
	var99_upvr.InputBegan:Connect(function(arg1_10) -- Line 443
		--[[ Upvalues[4]:
			[1]: var99_upvr (readonly)
			[2]: arg5 (readonly)
			[3]: arg4 (readonly)
			[4]: var103_upvw (read and write)
		]]
		if var99_upvr.Selectable then
			local var107 = true
			if arg1_10.UserInputType ~= Enum.UserInputType.MouseMovement then
				if arg1_10.UserInputType ~= Enum.UserInputType.Touch then
					var107 = false
				else
					var107 = true
				end
			end
			if var107 then
				var107 = arg5
				if var107 == nil then
					if arg4 then
						var107 = arg4.HubRef
						local var108
					end
				end
				local function INLINED_6() -- Internal function, doesn't exist in bytecode
					var108 = var107.Active
					return var108
				end
				if var107 and INLINED_6() or var107 == nil then
					var108 = var99_upvr
					var108.Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButtonSelected.png"
					var108 = var99_upvr
					if var103_upvw then
						var108 = var103_upvw
					end
					if var107 then
						var107:ScrollToFrame(var108)
					end
				end
			end
		end
	end)
	var99_upvr.InputEnded:Connect(function(arg1_11) -- Line 448
		--[[ Upvalues[2]:
			[1]: var99_upvr (readonly)
			[2]: GuiService_upvr (copied, readonly)
		]]
		if var99_upvr.Selectable and GuiService_upvr.SelectedCoreObject ~= var99_upvr then
			local var110 = true
			if arg1_11.UserInputType ~= Enum.UserInputType.MouseMovement then
				if arg1_11.UserInputType ~= Enum.UserInputType.Touch then
					var110 = false
				else
					var110 = true
				end
			end
			if var110 then
				var99_upvr.Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButton.png"
			end
		end
	end)
	var99_upvr.SelectionGained:Connect(function() -- Line 455
		--[[ Upvalues[4]:
			[1]: arg5 (readonly)
			[2]: arg4 (readonly)
			[3]: var99_upvr (readonly)
			[4]: var103_upvw (read and write)
		]]
		local var112
		if var112 == nil and arg4 then
			var112 = arg4.HubRef
			local var113
		end
		local function INLINED_7() -- Internal function, doesn't exist in bytecode
			var113 = var112.Active
			return var113
		end
		if var112 and INLINED_7() or var112 == nil then
			var113 = var99_upvr
			var113.Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButtonSelected.png"
			var113 = var99_upvr
			if var103_upvw then
				var113 = var103_upvw
			end
			if var112 then
				var112:ScrollToFrame(var113)
			end
		end
	end)
	var99_upvr.SelectionLost:Connect(function() -- Line 458
		--[[ Upvalues[1]:
			[1]: var99_upvr (readonly)
		]]
		var99_upvr.Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButton.png"
	end)
	local function _(arg1_12) -- Line 462
		--[[ Upvalues[7]:
			[1]: VRService_upvr (copied, readonly)
			[2]: UserInputService_upvr (copied, readonly)
			[3]: GuiService_upvr (copied, readonly)
			[4]: var99_upvr (readonly)
			[5]: arg5 (readonly)
			[6]: arg4 (readonly)
			[7]: var103_upvw (read and write)
		]]
		if arg1_12 ~= "SelectedCoreObject" then
		else
			if VRService_upvr.VREnabled then
			elseif UserInputService_upvr.TouchEnabled and not UserInputService_upvr.GamepadEnabled then
			else
			end
			if not true then return end
			if GuiService_upvr.SelectedCoreObject == nil or GuiService_upvr.SelectedCoreObject ~= var99_upvr then
				var99_upvr.Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButton.png"
				return
			end
			if var99_upvr.Selectable then
				local var116
				if var116 == nil and arg4 then
					var116 = arg4.HubRef
					local var117
				end
				local function INLINED_8() -- Internal function, doesn't exist in bytecode
					var117 = var116.Active
					return var117
				end
				if var116 and INLINED_8() or var116 == nil then
					var117 = var99_upvr
					var117.Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButtonSelected.png"
					var117 = var99_upvr
					if var103_upvw then
						var117 = var103_upvw
					end
					if var116 then
						var116:ScrollToFrame(var117)
					end
				end
			end
		end
	end
	return var99_upvr, function(arg1_9) -- Line 414, Named "setRowRef"
		--[[ Upvalues[1]:
			[1]: var103_upvw (read and write)
		]]
		var103_upvw = arg1_9
	end
end
local function MakeButton_upvr(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 479, Named "MakeButton"
	--[[ Upvalues[4]:
		[1]: MakeDefaultButton_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: getViewportSize_upvr (readonly)
		[4]: UserInputService_upvr (readonly)
	]]
	local MakeDefaultButton_result1_2, MakeDefaultButton_result2 = MakeDefaultButton_upvr(arg1, arg3, arg4, arg5, arg6)
	local tbl_11 = {
		Name = arg1.."TextLabel";
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Size = UDim2.new(1, 0, 1, -8);
		Position = UDim2.new(0, 0, 0, 0);
		TextColor3 = Color3.fromRGB(255, 255, 255);
		TextYAlignment = Enum.TextYAlignment.Center;
		Font = Enum.Font.SourceSansBold;
		TextSize = 24;
	}
	tbl_11.Text = arg2
	tbl_11.TextScaled = true
	tbl_11.TextWrapped = true
	tbl_11.ZIndex = 2
	tbl_11.Parent = MakeDefaultButton_result1_2
	local var127 = tbl_3_upvr.Create("TextLabel")(tbl_11)
	local getViewportSize_result1_4 = getViewportSize_upvr()
	local TouchEnabled_2 = UserInputService_upvr.TouchEnabled
	if TouchEnabled_2 then
		TouchEnabled_2 = true
		if getViewportSize_result1_4.Y >= 500 then
			if getViewportSize_result1_4.X >= 700 then
				TouchEnabled_2 = false
			else
				TouchEnabled_2 = true
			end
		end
	end
	if TouchEnabled_2 then
		var127.TextSize = 18
	elseif false then
		var127.TextSize = 36
	end
	Instance.new("UITextSizeConstraint", var127).MaxTextSize = var127.TextSize
	return MakeDefaultButton_result1_2, var127, MakeDefaultButton_result2
end
local function MakeImageButton_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 511, Named "MakeImageButton"
	--[[ Upvalues[2]:
		[1]: MakeDefaultButton_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
	]]
	local MakeDefaultButton_result1, MakeDefaultButton_result2_2 = MakeDefaultButton_upvr(arg1, arg3, arg5, arg6, arg7)
	local module_2 = {
		Name = arg1.."ImageLabel";
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
	}
	module_2.Size = arg4
	module_2.Position = UDim2.new(0.5, 0, 0.5, 0)
	module_2.AnchorPoint = Vector2.new(0.5, 0.5)
	module_2.Image = arg2
	module_2.ZIndex = 2
	module_2.Parent = MakeDefaultButton_result1
	return MakeDefaultButton_result1, tbl_3_upvr.Create("ImageLabel")(module_2), MakeDefaultButton_result2_2
end
local function AddButtonRow(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 530
	--[[ Upvalues[2]:
		[1]: MakeButton_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
	]]
	local MakeButton_upvr_result1, MakeButton_result2, MakeButton_upvr_result3 = MakeButton_upvr(arg2, arg3, arg4, arg5, arg1, arg6)
	local var137 = tbl_3_upvr.Create("Frame")({
		Name = arg2.."Row";
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, arg4.Y.Scale, arg4.Y.Offset);
		Parent = arg1.Page;
	})
	MakeButton_upvr_result1.Parent = var137
	MakeButton_upvr_result1.AnchorPoint = Vector2.new(1, 0)
	MakeButton_upvr_result1.Position = UDim2.new(1, -20, 0, 0)
	return var137, MakeButton_upvr_result1, MakeButton_result2, MakeButton_upvr_result3
end
local function CreateDropDown_upvr(arg1, arg2, arg3) -- Line 545, Named "CreateDropDown"
	--[[ Upvalues[8]:
		[1]: HttpService_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: PlayerGui_upvr (readonly)
		[4]: VRService_upvr (readonly)
		[5]: UserInputService_upvr (readonly)
		[6]: GuiService_upvr (readonly)
		[7]: ContextActionService_upvr (readonly)
		[8]: MakeButton_upvr (readonly)
	]]
	local Color3_fromRGB_result1_upvr_4 = Color3.fromRGB(178, 178, 178)
	local Color3_fromRGB_result1_upvr_8 = Color3.fromRGB(229, 229, 229)
	local Color3_fromRGB_result1_upvr_5 = Color3.fromRGB(255, 255, 255)
	local var141_upvw
	local module_upvr_2 = {
		CurrentIndex = nil;
	}
	Instance.new("BindableEvent").Name = "IndexChanged"
	if type(arg1) ~= "table" then
		error("CreateDropDown dropDownStringTable (first arg) is not a table", 2)
		return module_upvr_2
	end
	local BindableEvent_upvr_2 = Instance.new("BindableEvent")
	BindableEvent_upvr_2.Name = "IndexChanged"
	local var144_upvw = true
	local any_GenerateGUID_result1_upvr = HttpService_upvr:GenerateGUID(false)
	local var146_upvw
	local var147_upvw = arg1
	local var149_upvr = tbl_3_upvr.Create("ImageButton")({
		Name = "DropDownFullscreenFrame";
		BackgroundTransparency = 0.2;
		BorderSizePixel = 0;
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundColor3 = Color3.fromRGB(0, 0, 0);
		ZIndex = 10;
		Active = true;
		Visible = false;
		Selectable = false;
		AutoButtonColor = false;
		Parent = PlayerGui_upvr.RobloxGui;
	})
	local function onVREnabled(arg1_13) -- Line 592
		--[[ Upvalues[5]:
			[1]: VRService_upvr (copied, readonly)
			[2]: PlayerGui_upvr (copied, readonly)
			[3]: var149_upvr (readonly)
			[4]: module_upvr_2 (readonly)
			[5]: var147_upvw (read and write)
		]]
		if arg1_13 ~= "VREnabled" then
		else
			if VRService_upvr.VREnabled then
				var149_upvr.Parent = require(PlayerGui_upvr.RobloxGui.Modules.VR.Panel3D).Get("SettingsMenu"):GetGUI()
				var149_upvr.BackgroundTransparency = 1
			else
				var149_upvr.Parent = PlayerGui_upvr.RobloxGui
				var149_upvr.BackgroundTransparency = 0.2
			end
			if module_upvr_2.UpdateDropDownList then
				module_upvr_2:UpdateDropDownList(var147_upvw)
			end
		end
	end
	VRService_upvr.Changed:Connect(onVREnabled)
	onVREnabled("VREnabled")
	local var151_upvr = tbl_3_upvr.Create("ImageLabel")({
		Name = "DropDownSelectionFrame";
		Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButton.png";
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(8, 6, 46, 44);
		BackgroundTransparency = 1;
		Size = UDim2.new(0.6, 0, 0.9, 0);
		Position = UDim2.new(0.5, 0, 0.5, 0);
		AnchorPoint = Vector2.new(0.5, 0.5);
		ZIndex = 10;
		Parent = var149_upvr;
	})
	local var153_upvw
	local var154_upvw = false
	local function var155_upvr(arg1_14, arg2_2) -- Line 640
		--[[ Upvalues[14]:
			[1]: module_upvr_2 (readonly)
			[2]: var144_upvw (read and write)
			[3]: arg3 (readonly)
			[4]: var149_upvr (readonly)
			[5]: VRService_upvr (copied, readonly)
			[6]: UserInputService_upvr (copied, readonly)
			[7]: GuiService_upvr (copied, readonly)
			[8]: var141_upvw (read and write)
			[9]: var153_upvw (read and write)
			[10]: ContextActionService_upvr (copied, readonly)
			[11]: any_GenerateGUID_result1_upvr (readonly)
			[12]: var146_upvw (read and write)
			[13]: var154_upvw (read and write)
			[14]: PlayerGui_upvr (copied, readonly)
		]]
		if arg1_14 ~= nil and arg2_2 ~= Enum.UserInputState.Begin then
		else
			module_upvr_2.DropDownFrame.Selectable = var144_upvw
			arg3:SetActive(true)
			local Visible = var149_upvr.Visible
			if Visible then
				if VRService_upvr.VREnabled then
					Visible = false
				elseif UserInputService_upvr.TouchEnabled and not UserInputService_upvr.GamepadEnabled then
					Visible = false
				else
					Visible = true
				end
				if Visible then
					Visible = GuiService_upvr
					Visible.SelectedCoreObject = var141_upvw
				end
			end
			var149_upvr.Visible = false
			if var153_upvw then
				var153_upvw:Disconnect()
			end
			ContextActionService_upvr:UnbindAction(any_GenerateGUID_result1_upvr.."Action")
			ContextActionService_upvr:UnbindAction(any_GenerateGUID_result1_upvr.."FreezeAction")
			var146_upvw.Value = var144_upvw
			var154_upvw = false
			if VRService_upvr.VREnabled then
				require(PlayerGui_upvr.RobloxGui.Modules.VR.Panel3D).Get("SettingsMenu"):SetSubpanelDepth(var149_upvr, 0)
			end
		end
	end
	local function var157_upvr() -- Line 664
	end
	local function var158_upvr() -- Line 666
		--[[ Upvalues[18]:
			[1]: var144_upvw (read and write)
			[2]: module_upvr_2 (readonly)
			[3]: var154_upvw (read and write)
			[4]: var149_upvr (readonly)
			[5]: VRService_upvr (copied, readonly)
			[6]: PlayerGui_upvr (copied, readonly)
			[7]: var141_upvw (read and write)
			[8]: GuiService_upvr (copied, readonly)
			[9]: var153_upvw (read and write)
			[10]: Color3_fromRGB_result1_upvr_5 (readonly)
			[11]: Color3_fromRGB_result1_upvr_8 (readonly)
			[12]: Color3_fromRGB_result1_upvr_4 (readonly)
			[13]: ContextActionService_upvr (copied, readonly)
			[14]: any_GenerateGUID_result1_upvr (readonly)
			[15]: var157_upvr (readonly)
			[16]: var155_upvr (readonly)
			[17]: arg3 (readonly)
			[18]: var146_upvw (read and write)
		]]
		if not var144_upvw then
		else
			module_upvr_2.DropDownFrame.Selectable = false
			var154_upvw = true
			var149_upvr.Visible = true
			if VRService_upvr.VREnabled then
				require(PlayerGui_upvr.RobloxGui.Modules.VR.Panel3D).Get("SettingsMenu"):SetSubpanelDepth(var149_upvr, 0.5)
			end
			var141_upvw = module_upvr_2.DropDownFrame
			if module_upvr_2.CurrentIndex and 0 < module_upvr_2.CurrentIndex then
				GuiService_upvr.SelectedCoreObject = module_upvr_2.Selections[module_upvr_2.CurrentIndex]
			end
			var153_upvw = GuiService_upvr:GetPropertyChangedSignal("SelectedCoreObject"):Connect(function() -- Line 683
				--[[ Upvalues[6]:
					[1]: module_upvr_2 (copied, readonly)
					[2]: GuiService_upvr (copied, readonly)
					[3]: Color3_fromRGB_result1_upvr_5 (copied, readonly)
					[4]: VRService_upvr (copied, readonly)
					[5]: Color3_fromRGB_result1_upvr_8 (copied, readonly)
					[6]: Color3_fromRGB_result1_upvr_4 (copied, readonly)
				]]
				for i_20 = 1, #module_upvr_2.Selections do
					local var162
					if GuiService_upvr.SelectedCoreObject == var162 then
						var162 = module_upvr_2.Selections
						var162 = Color3_fromRGB_result1_upvr_5
						var162[i_20].TextColor3 = var162
					else
						var162 = module_upvr_2.Selections
						local function INLINED_9() -- Internal function, doesn't exist in bytecode
							var162 = Color3_fromRGB_result1_upvr_8
							return var162
						end
						if not VRService_upvr.VREnabled or not INLINED_9() then
							var162 = Color3_fromRGB_result1_upvr_4
						end
						var162[i_20].TextColor3 = var162
					end
				end
			end)
			ContextActionService_upvr:BindActionAtPriority(any_GenerateGUID_result1_upvr.."FreezeAction", var157_upvr, false, Enum.ContextActionPriority.High.Value, Enum.UserInputType.Keyboard, Enum.UserInputType.Gamepad1)
			ContextActionService_upvr:BindActionAtPriority(any_GenerateGUID_result1_upvr.."Action", var155_upvr, false, Enum.ContextActionPriority.High.Value, Enum.KeyCode.ButtonB, Enum.KeyCode.Escape)
			arg3:SetActive(false)
			var146_upvw.Value = false
		end
	end
	module_upvr_2.DropDownFrame = MakeButton_upvr("DropDownFrame", "Choose One", UDim2.new(0.6, 0, 0, 50), var158_upvr, nil, arg3)
	module_upvr_2.DropDownFrame.Position = UDim2.new(1, 0, 0.5, 0)
	module_upvr_2.DropDownFrame.AnchorPoint = Vector2.new(1, 0.5)
	var146_upvw = module_upvr_2.DropDownFrame.Enabled
	local DropDownFrameTextLabel_upvr = module_upvr_2.DropDownFrame.DropDownFrameTextLabel
	DropDownFrameTextLabel_upvr.Position = UDim2.new(0, 15, 0, 0)
	DropDownFrameTextLabel_upvr.Size = UDim2.new(1, -50, 1, -8)
	DropDownFrameTextLabel_upvr.ClipsDescendants = true
	DropDownFrameTextLabel_upvr.TextXAlignment = Enum.TextXAlignment.Left
	local var165_upvr = tbl_3_upvr.Create("ImageLabel")({
		Name = "DropDownImage";
		Image = "rbxasset://textures/ui/Settings/DropDown/DropDown.png";
		BackgroundTransparency = 1;
		AnchorPoint = Vector2.new(1, 0.5);
		Size = UDim2.new(0, 15, 0, 10);
		Position = UDim2.new(1, -12, 0.5, 0);
		ZIndex = 2;
		Parent = module_upvr_2.DropDownFrame;
	})
	module_upvr_2.DropDownImage = var165_upvr
	local function setSelection(arg1_15) -- Line 727
		--[[ Upvalues[3]:
			[1]: module_upvr_2 (readonly)
			[2]: DropDownFrameTextLabel_upvr (readonly)
			[3]: BindableEvent_upvr_2 (readonly)
		]]
		local var173
		for i_2, v_2 in pairs(module_upvr_2.Selections) do
			if i_2 == arg1_15 then
				DropDownFrameTextLabel_upvr.Text = v_2.Text
				module_upvr_2.CurrentIndex = i_2
			end
		end
		if nil then
			BindableEvent_upvr_2:Fire(arg1_15)
		end
	end
	local function setSelectionByValue_upvr(arg1_16) -- Line 743, Named "setSelectionByValue"
		--[[ Upvalues[3]:
			[1]: module_upvr_2 (readonly)
			[2]: DropDownFrameTextLabel_upvr (readonly)
			[3]: BindableEvent_upvr_2 (readonly)
		]]
		local var181
		for i_3, v_3 in pairs(module_upvr_2.Selections) do
			if v_3.Text == arg1_16 then
				DropDownFrameTextLabel_upvr.Text = v_3.Text
				module_upvr_2.CurrentIndex = i_3
				var181 = true
			end
		end
		if var181 then
			i_3 = module_upvr_2
			BindableEvent_upvr_2:Fire(i_3.CurrentIndex)
		end
		return var181
	end
	local var182_upvw = false
	local function processInput(arg1_17) -- Line 761
		--[[ Upvalues[4]:
			[1]: GuiService_upvr (copied, readonly)
			[2]: module_upvr_2 (readonly)
			[3]: var182_upvw (read and write)
			[4]: var158_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [32] 21. Error Block 20 start (CF ANALYSIS FAILED)
		var182_upvw = true
		do
			return
		end
		-- KONSTANTERROR: [32] 21. Error Block 20 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [35] 24. Error Block 21 start (CF ANALYSIS FAILED)
		if arg1_17.UserInputState == Enum.UserInputState.End and arg1_17.KeyCode == Enum.KeyCode.Return and var182_upvw then
			var182_upvw = false
			if GuiService_upvr.SelectedCoreObject == module_upvr_2.DropDownFrame then
				var158_upvr()
				return
			end
			if module_upvr_2.SelectionInfo and module_upvr_2.SelectionInfo[GuiService_upvr.SelectedCoreObject] then
				module_upvr_2.SelectionInfo[GuiService_upvr.SelectedCoreObject].Clicked()
			end
		end
		-- KONSTANTERROR: [35] 24. Error Block 21 end (CF ANALYSIS FAILED)
	end
	local function _(arg1_18) -- Line 781, Named "setIsFaded"
		--[[ Upvalues[1]:
			[1]: module_upvr_2 (readonly)
		]]
		if arg1_18 then
			module_upvr_2.DropDownFrame.DropDownFrameTextLabel.TextTransparency = 0.5
			module_upvr_2.DropDownFrame.ImageTransparency = 0.5
			module_upvr_2.DropDownImage.ImageTransparency = 0.5
		else
			module_upvr_2.DropDownFrame.DropDownFrameTextLabel.TextTransparency = 0
			module_upvr_2.DropDownFrame.ImageTransparency = 0
			module_upvr_2.DropDownImage.ImageTransparency = 0
		end
	end
	module_upvr_2.IndexChanged = BindableEvent_upvr_2.Event
	local function SetSelectionIndex(arg1_19, arg2_3) -- Line 797
		--[[ Upvalues[1]:
			[1]: setSelection (readonly)
		]]
		setSelection(arg2_3)
	end
	module_upvr_2.SetSelectionIndex = SetSelectionIndex
	function module_upvr_2.SetSelectionByValue(arg1_20, arg2_4) -- Line 801
		--[[ Upvalues[1]:
			[1]: setSelectionByValue_upvr (readonly)
		]]
		return setSelectionByValue_upvr(arg2_4)
	end
	function module_upvr_2.ResetSelectionIndex(arg1_21) -- Line 805
		--[[ Upvalues[3]:
			[1]: module_upvr_2 (readonly)
			[2]: DropDownFrameTextLabel_upvr (readonly)
			[3]: var155_upvr (readonly)
		]]
		module_upvr_2.CurrentIndex = nil
		DropDownFrameTextLabel_upvr.Text = "Choose One"
		var155_upvr()
	end
	local function GetSelectedIndex(arg1_22) -- Line 811
		--[[ Upvalues[1]:
			[1]: module_upvr_2 (readonly)
		]]
		return module_upvr_2.CurrentIndex
	end
	module_upvr_2.GetSelectedIndex = GetSelectedIndex
	local function SetZIndex(arg1_23, arg2_5) -- Line 815
		--[[ Upvalues[3]:
			[1]: module_upvr_2 (readonly)
			[2]: var165_upvr (readonly)
			[3]: DropDownFrameTextLabel_upvr (readonly)
		]]
		module_upvr_2.DropDownFrame.ZIndex = arg2_5
		var165_upvr.ZIndex = arg2_5
		DropDownFrameTextLabel_upvr.ZIndex = arg2_5
	end
	module_upvr_2.SetZIndex = SetZIndex
	local function SetInteractable(arg1_24, arg2_6) -- Line 821
		--[[ Upvalues[6]:
			[1]: var144_upvw (read and write)
			[2]: module_upvr_2 (readonly)
			[3]: var155_upvr (readonly)
			[4]: VRService_upvr (copied, readonly)
			[5]: var146_upvw (read and write)
			[6]: var154_upvw (read and write)
		]]
		var144_upvw = arg2_6
		module_upvr_2.DropDownFrame.Selectable = var144_upvw
		if not var144_upvw then
			var155_upvr()
			if VRService_upvr.VREnabled then
				module_upvr_2.DropDownFrame.DropDownFrameTextLabel.TextTransparency = 0.5
				module_upvr_2.DropDownFrame.ImageTransparency = 0.5
				module_upvr_2.DropDownImage.ImageTransparency = 0.5
			else
				module_upvr_2.DropDownFrame.DropDownFrameTextLabel.TextTransparency = 0
				module_upvr_2.DropDownFrame.ImageTransparency = 0
				module_upvr_2.DropDownImage.ImageTransparency = 0
			end
			if not VRService_upvr.VREnabled then
				module_upvr_2:SetZIndex(1)
				-- KONSTANTWARNING: GOTO [95] #68
			end
		else
			module_upvr_2.DropDownFrame.DropDownFrameTextLabel.TextTransparency = 0
			module_upvr_2.DropDownFrame.ImageTransparency = 0
			module_upvr_2.DropDownImage.ImageTransparency = 0
			if not VRService_upvr.VREnabled then
				module_upvr_2:SetZIndex(2)
			end
		end
		local var183 = arg2_6
		if var183 then
			var183 = not var154_upvw
		end
		var146_upvw.Value = var183
	end
	module_upvr_2.SetInteractable = SetInteractable
	local var184_upvr = tbl_3_upvr.Create("ScrollingFrame")({
		Name = "DropDownScrollingFrame";
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Size = UDim2.new(1, -20, 1, -25);
		Position = UDim2.new(0, 10, 0, 10);
		ZIndex = 10;
		Parent = var151_upvr;
	})
	function module_upvr_2.UpdateDropDownList(arg1_25, arg2_7) -- Line 842
		--[[ Upvalues[17]:
			[1]: var147_upvw (read and write)
			[2]: module_upvr_2 (readonly)
			[3]: VRService_upvr (copied, readonly)
			[4]: tbl_3_upvr (copied, readonly)
			[5]: Color3_fromRGB_result1_upvr_8 (readonly)
			[6]: Color3_fromRGB_result1_upvr_4 (readonly)
			[7]: var184_upvr (readonly)
			[8]: arg2 (readonly)
			[9]: DropDownFrameTextLabel_upvr (readonly)
			[10]: Color3_fromRGB_result1_upvr_5 (readonly)
			[11]: var155_upvr (readonly)
			[12]: BindableEvent_upvr_2 (readonly)
			[13]: UserInputService_upvr (copied, readonly)
			[14]: GuiService_upvr (copied, readonly)
			[15]: any_GenerateGUID_result1_upvr (readonly)
			[16]: var149_upvr (readonly)
			[17]: var151_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		var147_upvw = arg2_7
		local var197
		if module_upvr_2.Selections then
			var197 = module_upvr_2.Selections
			for _ = 1, #var197 do
				var197 = module_upvr_2.Selections[_]:Destroy
				var197()
			end
		end
		module_upvr_2.Selections = {}
		module_upvr_2.SelectionInfo = {}
		local VREnabled_3 = VRService_upvr.VREnabled
		if not VREnabled_3 or not Enum.Font.SourceSansBold then
		end
		if VREnabled_3 then
			_ = 36
		else
		end
		if VREnabled_3 then
			var197 = 70
		else
			var197 = 50
		end
		local var199 = var197 + 1
		if VREnabled_3 then
		else
		end
		for i_5_upvr, v_4 in pairs(arg2_7) do
			local tbl = {
				Name = "Selection"..tostring(i_5_upvr);
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				AutoButtonColor = false;
				Size = UDim2.new(1, -28, 0, var197);
				Position = UDim2.new(0, 14, 0, (i_5_upvr - 1) * var199);
			}
			local var205
			local function INLINED_10() -- Internal function, doesn't exist in bytecode
				var205 = Color3_fromRGB_result1_upvr_8
				return var205
			end
			if not VRService_upvr.VREnabled or not INLINED_10() then
				var205 = Color3_fromRGB_result1_upvr_4
			end
			tbl.TextColor3 = var205
			tbl.Font = Enum.Font.SourceSans
			tbl.TextSize = 24
			tbl.Text = v_4
			var205 = 10
			tbl.ZIndex = var205
			tbl.SelectionImageObject = tbl_3_upvr.Create("Frame")({
				BackgroundTransparency = 0.7;
				BorderSizePixel = 0;
				Size = UDim2.new(1, 0, 1, 0);
			})
			var205 = var184_upvr
			tbl.Parent = var205
			local var206_upvr = tbl_3_upvr.Create("TextButton")(tbl)
			if i_5_upvr == arg2 then
				module_upvr_2.CurrentIndex = i_5_upvr
				DropDownFrameTextLabel_upvr.Text = v_4
				var206_upvr.TextColor3 = Color3_fromRGB_result1_upvr_5
			elseif not arg2 and i_5_upvr == 1 then
				var206_upvr.TextColor3 = Color3_fromRGB_result1_upvr_5
			end
			local function var207() -- Line 896
				--[[ Upvalues[6]:
					[1]: DropDownFrameTextLabel_upvr (copied, readonly)
					[2]: var206_upvr (readonly)
					[3]: var155_upvr (copied, readonly)
					[4]: module_upvr_2 (copied, readonly)
					[5]: i_5_upvr (readonly)
					[6]: BindableEvent_upvr_2 (copied, readonly)
				]]
				DropDownFrameTextLabel_upvr.Text = var206_upvr.Text
				var155_upvr()
				module_upvr_2.CurrentIndex = i_5_upvr
				BindableEvent_upvr_2:Fire(i_5_upvr)
			end
			var205 = var206_upvr.MouseButton1Click:Connect
			var205(var207)
			var205 = var206_upvr.MouseEnter
			var205 = var205:Connect
			var205(function() -- Line 905
				--[[ Upvalues[4]:
					[1]: VRService_upvr (copied, readonly)
					[2]: UserInputService_upvr (copied, readonly)
					[3]: GuiService_upvr (copied, readonly)
					[4]: var206_upvr (readonly)
				]]
				local var209
				if VRService_upvr.VREnabled then
					var209 = false
				elseif UserInputService_upvr.TouchEnabled and not UserInputService_upvr.GamepadEnabled then
					var209 = false
				else
					var209 = true
				end
				if var209 then
					var209 = GuiService_upvr
					var209.SelectedCoreObject = var206_upvr
				end
			end)
			var205 = module_upvr_2.Selections
			var205[i_5_upvr] = var206_upvr
			var205 = module_upvr_2.SelectionInfo
			var205[var206_upvr] = {
				Clicked = var207;
			}
		end
		GuiService_upvr:RemoveSelectionGroup(any_GenerateGUID_result1_upvr)
		GuiService_upvr:AddSelectionTuple(any_GenerateGUID_result1_upvr, unpack(module_upvr_2.Selections))
		var206_upvr = #arg2_7
		var184_upvr.CanvasSize = UDim2.new(1, -20, 0, var206_upvr * var199)
		local var211_upvr = 400
		local function updateDropDownSize_upvr() -- Line 920, Named "updateDropDownSize"
			--[[ Upvalues[4]:
				[1]: var184_upvr (copied, readonly)
				[2]: var149_upvr (copied, readonly)
				[3]: var151_upvr (copied, readonly)
				[4]: var211_upvr (readonly)
			]]
			if var184_upvr.CanvasSize.Y.Offset < var149_upvr.AbsoluteSize.Y - 10 then
				var151_upvr.Size = UDim2.new(0, var211_upvr, 0, var184_upvr.CanvasSize.Y.Offset + 25)
			else
				var151_upvr.Size = UDim2.new(0, var211_upvr, 0.9, 0)
			end
		end
		var149_upvr.Changed:Connect(function(arg1_26) -- Line 929
			--[[ Upvalues[1]:
				[1]: updateDropDownSize_upvr (readonly)
			]]
			if arg1_26 ~= "AbsoluteSize" then
			else
				updateDropDownSize_upvr()
			end
		end)
		updateDropDownSize_upvr()
	end
	module_upvr_2:UpdateDropDownList(arg1)
	var149_upvr.MouseButton1Click:Connect(var155_upvr)
	arg3.PoppedMenu:Connect(function(arg1_27) -- Line 942
		--[[ Upvalues[2]:
			[1]: var149_upvr (readonly)
			[2]: var155_upvr (readonly)
		]]
		if arg1_27 == var149_upvr then
			var155_upvr()
		end
	end)
	return module_upvr_2
end
local Color3_fromRGB_result1_upvr_3 = Color3.fromRGB(150, 150, 150)
local function CreateSelector_upvr(arg1, arg2) -- Line 952, Named "CreateSelector"
	--[[ Upvalues[12]:
		[1]: tbl_3_upvr (readonly)
		[2]: var27_upvr (readonly)
		[3]: Color3_fromRGB_result1_upvr_7 (readonly)
		[4]: UserInputService_upvr (readonly)
		[5]: Color3_fromRGB_result1_upvr (readonly)
		[6]: addHoverState_upvr (readonly)
		[7]: VRService_upvr (readonly)
		[8]: GuiService_upvr (readonly)
		[9]: EaseOutQuad_upvr (readonly)
		[10]: Color3_fromRGB_result1_upvr_3 (readonly)
		[11]: tbl_7_upvr (readonly)
		[12]: getViewportSize_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module_3_upvr = {
		HubRef = nil;
	}
	local var317
	if type(arg1) ~= "table" then
		error("CreateSelector selectionStringTable (first arg) is not a table", 2)
		return module_3_upvr
	end
	local BindableEvent_upvr_3 = Instance.new("BindableEvent")
	BindableEvent_upvr_3.Name = "IndexChanged"
	local var226_upvw = true
	module_3_upvr.CurrentIndex = 0
	module_3_upvr.SelectorFrame = tbl_3_upvr.Create("ImageButton")({
		Name = "Selector";
		Image = "";
		AutoButtonColor = false;
		NextSelectionLeft = module_3_upvr.SelectorFrame;
		NextSelectionRight = module_3_upvr.SelectorFrame;
		BackgroundTransparency = 1;
		Size = UDim2.new(0.6, 0, 0, 50);
		Position = UDim2.new(1, 0, 0.5, 0);
		AnchorPoint = Vector2.new(1, 0.5);
		ZIndex = 2;
		SelectionImageObject = var27_upvr;
	})
	local var229_upvr = tbl_3_upvr.Create("ImageButton")({
		Name = "LeftButton";
		BackgroundTransparency = 1;
		AnchorPoint = Vector2.new(0, 0.5);
		Position = UDim2.new(0, 0, 0.5, 0);
		Size = UDim2.new(0, 50, 0, 50);
		Image = "";
		ZIndex = 3;
		Selectable = false;
		SelectionImageObject = var27_upvr;
		Parent = module_3_upvr.SelectorFrame;
	})
	local var231_upvr = tbl_3_upvr.Create("ImageButton")({
		Name = "RightButton";
		BackgroundTransparency = 1;
		AnchorPoint = Vector2.new(1, 0.5);
		Position = UDim2.new(1, 0, 0.5, 0);
		Size = UDim2.new(0, 50, 0, 50);
		Image = "";
		ZIndex = 3;
		Selectable = false;
		SelectionImageObject = var27_upvr;
		Parent = module_3_upvr.SelectorFrame;
	})
	local var233_upvr = tbl_3_upvr.Create("ImageLabel")({
		Name = "LeftButton";
		BackgroundTransparency = 1;
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.new(0.5, 0, 0.5, 0);
		Size = UDim2.new(0, 18, 0, 30);
		Image = "rbxasset://textures/ui/Settings/Slider/Left.png";
		ImageColor3 = Color3_fromRGB_result1_upvr_7;
		ZIndex = 4;
		Parent = var229_upvr;
	})
	local var235_upvr = tbl_3_upvr.Create("ImageLabel")({
		Name = "RightButton";
		BackgroundTransparency = 1;
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.new(0.5, 0, 0.5, 0);
		Size = UDim2.new(0, 18, 0, 30);
		Image = "rbxasset://textures/ui/Settings/Slider/Right.png";
		ImageColor3 = Color3_fromRGB_result1_upvr_7;
		ZIndex = 4;
		Parent = var231_upvr;
	})
	if not UserInputService_upvr.TouchEnabled then
		local function var236(arg1_28) -- Line 1043
			--[[ Upvalues[1]:
				[1]: Color3_fromRGB_result1_upvr_7 (copied, readonly)
			]]
			arg1_28.ImageColor3 = Color3_fromRGB_result1_upvr_7
		end
		local function var237(arg1_29) -- Line 1044
			--[[ Upvalues[1]:
				[1]: Color3_fromRGB_result1_upvr (copied, readonly)
			]]
			arg1_29.ImageColor3 = Color3_fromRGB_result1_upvr
		end
		addHoverState_upvr(var229_upvr, var233_upvr, var236, var237)
		addHoverState_upvr(var231_upvr, var235_upvr, var236, var237)
	end
	module_3_upvr.Selections = {}
	local tbl_12_upvw = {}
	local tbl_2_upvr = {}
	local var241_upvr = tbl_3_upvr.Create("ImageButton")({
		Name = "AutoSelectButton";
		BackgroundTransparency = 1;
		Image = "";
		Position = UDim2.new(0, var229_upvr.Size.X.Offset, 0, 0);
		Size = UDim2.new(1, var229_upvr.Size.X.Offset * -2, 1, 0);
		Parent = module_3_upvr.SelectorFrame;
		ZIndex = 2;
		SelectionImageObject = var27_upvr;
	})
	var241_upvr.MouseButton1Click:Connect(function() -- Line 1064
		--[[ Upvalues[5]:
			[1]: var226_upvw (read and write)
			[2]: module_3_upvr (readonly)
			[3]: VRService_upvr (copied, readonly)
			[4]: UserInputService_upvr (copied, readonly)
			[5]: GuiService_upvr (copied, readonly)
		]]
		local var243
		if not var226_upvw then
		else
			var243 = module_3_upvr.Selections
			var243 = 1
			if #var243 <= var243 then return end
			var243 = module_3_upvr.CurrentIndex
			local var244 = var243 + 1
			var243 = #module_3_upvr.Selections
			if var243 < var244 then
				var244 = 1
			end
			var243 = module_3_upvr:SetSelectionIndex
			var243(var244)
			if VRService_upvr.VREnabled then
				var243 = false
			elseif UserInputService_upvr.TouchEnabled and not UserInputService_upvr.GamepadEnabled then
				var243 = false
			else
				var243 = true
			end
			if var243 then
				var243 = GuiService_upvr
				var243.SelectedCoreObject = module_3_upvr.SelectorFrame
			end
		end
	end)
	tbl_2_upvr[var241_upvr] = true
	local function setSelection_upvr(arg1_30, arg2_8) -- Line 1079, Named "setSelection"
		--[[ Upvalues[5]:
			[1]: module_3_upvr (readonly)
			[2]: var229_upvr (readonly)
			[3]: tbl_12_upvw (read and write)
			[4]: EaseOutQuad_upvr (copied, readonly)
			[5]: BindableEvent_upvr_3 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var256
		for i_6, v_5 in pairs(module_3_upvr.Selections) do
			if i_6 ~= arg1_30 then
			else
			end
			var256 = 0
			var256 = UDim2.new(0, var229_upvr.Size.X.Offset * arg2_8 * 3, 0, 0)
			if tbl_12_upvw[v_5] then
				var256 = UDim2.new(0, var229_upvr.Size.X.Offset * -arg2_8 * 3, 0, 0)
			end
			if var256.X.Offset < 0 then
				var256 = UDim2.new(0, var256.X.Offset + v_5.AbsoluteSize.X / 4, 0, 0)
			end
			if true then
				tbl_12_upvw[v_5] = true
				v_5.Position = var256
				v_5.Visible = true
				PropertyTweener(v_5, "TextTransparency", 1, 0, 0.165, EaseOutQuad_upvr)
				if v_5:IsDescendantOf(game) then
					v_5:TweenPosition(UDim2.new(var256, var229_upvr.Size.X.Offset, 0, 0), Enum.EasingDirection.In, Enum.EasingStyle.Quad, 0.15, true)
				else
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					v_5.Position = UDim2.new(var256, var229_upvr.Size.X.Offset, 0, 0)
				end
				module_3_upvr.CurrentIndex = i_6
				BindableEvent_upvr_3:Fire(arg1_30)
			elseif tbl_12_upvw[v_5] then
				tbl_12_upvw[v_5] = false
				PropertyTweener(v_5, "TextTransparency", 0, 1, 0.165, EaseOutQuad_upvr)
				if v_5:IsDescendantOf(game) then
					v_5:TweenPosition(var256, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.135, true)
				else
					v_5.Position = UDim2.new(var256)
				end
			end
		end
	end
	local function stepFunc_upvr(arg1_31, arg2_9) -- Line 1118, Named "stepFunc"
		--[[ Upvalues[6]:
			[1]: var226_upvw (read and write)
			[2]: VRService_upvr (copied, readonly)
			[3]: UserInputService_upvr (copied, readonly)
			[4]: GuiService_upvr (copied, readonly)
			[5]: module_3_upvr (readonly)
			[6]: setSelection_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 47 start (CF ANALYSIS FAILED)
		if not var226_upvw then
		else
			if arg1_31 ~= nil then
				if arg1_31.UserInputType ~= Enum.UserInputType.MouseButton1 then
					if arg1_31.UserInputType ~= Enum.UserInputType.Gamepad1 then
						if arg1_31.UserInputType ~= Enum.UserInputType.Gamepad2 then
							if arg1_31.UserInputType ~= Enum.UserInputType.Gamepad3 then
								if arg1_31.UserInputType ~= Enum.UserInputType.Gamepad4 then
									if arg1_31.UserInputType ~= Enum.UserInputType.Keyboard then return end
								end
							end
						end
					end
				end
			end
			if VRService_upvr.VREnabled then
				-- KONSTANTWARNING: GOTO [59] #38
			end
			-- KONSTANTERROR: [0] 1. Error Block 47 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [48] 29. Error Block 48 start (CF ANALYSIS FAILED)
			local var259
			if UserInputService_upvr.TouchEnabled and not UserInputService_upvr.GamepadEnabled then
				var259 = false
			else
				var259 = true
			end
			if var259 then
				var259 = GuiService_upvr
				var259.SelectedCoreObject = module_3_upvr.SelectorFrame
			end
			var259 = arg2_9 + module_3_upvr.CurrentIndex
			local var260 = 0
			if module_3_upvr.CurrentIndex < var259 then
				var260 = 1
			else
				var260 = -1
			end
			if #module_3_upvr.Selections < var259 then
				var259 = 1
			elseif var259 < 1 then
				var259 = #module_3_upvr.Selections
			end
			setSelection_upvr(var259, var260)
			-- KONSTANTERROR: [48] 29. Error Block 48 end (CF ANALYSIS FAILED)
		end
	end
	local var261_upvw
	local function _() -- Line 1149, Named "connectToGuiService"
		--[[ Upvalues[5]:
			[1]: var261_upvw (read and write)
			[2]: GuiService_upvr (copied, readonly)
			[3]: module_3_upvr (readonly)
			[4]: tbl_2_upvr (readonly)
			[5]: VRService_upvr (copied, readonly)
		]]
		var261_upvw = GuiService_upvr:GetPropertyChangedSignal("SelectedCoreObject"):Connect(function() -- Line 1150
			--[[ Upvalues[4]:
				[1]: module_3_upvr (copied, readonly)
				[2]: GuiService_upvr (copied, readonly)
				[3]: tbl_2_upvr (copied, readonly)
				[4]: VRService_upvr (copied, readonly)
			]]
			if #module_3_upvr.Selections <= 0 then
			else
				if GuiService_upvr.SelectedCoreObject == module_3_upvr.SelectorFrame then
					module_3_upvr.Selections[module_3_upvr.CurrentIndex].TextTransparency = 0
					return
				end
				if GuiService_upvr.SelectedCoreObject ~= nil and tbl_2_upvr[GuiService_upvr.SelectedCoreObject] then
					if VRService_upvr.VREnabled then
						module_3_upvr.Selections[module_3_upvr.CurrentIndex].TextTransparency = 0
					else
						GuiService_upvr.SelectedCoreObject = module_3_upvr.SelectorFrame
					end
				end
				module_3_upvr.Selections[module_3_upvr.CurrentIndex].TextTransparency = 0.5
			end
		end)
	end
	module_3_upvr.IndexChanged = BindableEvent_upvr_3.Event
	function module_3_upvr.SetSelectionIndex(arg1_32, arg2_10) -- Line 1174
		--[[ Upvalues[1]:
			[1]: setSelection_upvr (readonly)
		]]
		setSelection_upvr(arg2_10, 1)
	end
	function module_3_upvr.GetSelectedIndex(arg1_33) -- Line 1178
		--[[ Upvalues[1]:
			[1]: module_3_upvr (readonly)
		]]
		return module_3_upvr.CurrentIndex
	end
	local function SetZIndex(arg1_34, arg2_11) -- Line 1182
		--[[ Upvalues[5]:
			[1]: var229_upvr (readonly)
			[2]: var231_upvr (readonly)
			[3]: var233_upvr (readonly)
			[4]: var235_upvr (readonly)
			[5]: module_3_upvr (readonly)
		]]
		var229_upvr.ZIndex = arg2_11
		var231_upvr.ZIndex = arg2_11
		var233_upvr.ZIndex = arg2_11
		var235_upvr.ZIndex = arg2_11
		for i_7 = 1, #module_3_upvr.Selections do
			module_3_upvr.Selections[i_7].ZIndex = arg2_11
		end
	end
	module_3_upvr.SetZIndex = SetZIndex
	local function SetInteractable(arg1_35, arg2_12) -- Line 1193
		--[[ Upvalues[8]:
			[1]: var226_upvw (read and write)
			[2]: module_3_upvr (readonly)
			[3]: var229_upvr (readonly)
			[4]: var231_upvr (readonly)
			[5]: var233_upvr (readonly)
			[6]: Color3_fromRGB_result1_upvr_3 (copied, readonly)
			[7]: var235_upvr (readonly)
			[8]: Color3_fromRGB_result1_upvr_7 (copied, readonly)
		]]
		var226_upvw = arg2_12
		module_3_upvr.SelectorFrame.Selectable = var226_upvw
		var229_upvr.Active = var226_upvw
		var231_upvr.Active = var226_upvw
		if not var226_upvw then
			for _, v_6 in pairs(module_3_upvr.Selections) do
				v_6.TextColor3 = Color3.fromRGB(49, 49, 49)
			end
			var233_upvr.ImageColor3 = Color3_fromRGB_result1_upvr_3
			var235_upvr.ImageColor3 = Color3_fromRGB_result1_upvr_3
		else
			for _, v_13 in pairs(module_3_upvr.Selections) do
				v_13.TextColor3 = Color3.fromRGB(255, 255, 255)
			end
			var233_upvr.ImageColor3 = Color3_fromRGB_result1_upvr_7
			var235_upvr.ImageColor3 = Color3_fromRGB_result1_upvr_7
		end
	end
	module_3_upvr.SetInteractable = SetInteractable
	function module_3_upvr.UpdateOptions(arg1_36, arg2_13) -- Line 1215
		--[[ Upvalues[6]:
			[1]: module_3_upvr (readonly)
			[2]: tbl_12_upvw (read and write)
			[3]: tbl_3_upvr (copied, readonly)
			[4]: var229_upvr (readonly)
			[5]: arg2 (readonly)
			[6]: var231_upvr (readonly)
		]]
		local _, pairs_result2_3, pairs_result3 = pairs(module_3_upvr.Selections)
		local var285
		for _, v_7 in var285, pairs_result2_3, pairs_result3 do
			v_7:Destroy()
		end
		var285 = {}
		tbl_12_upvw = var285
		var285 = module_3_upvr
		var285.Selections = {}
		var285 = pairs(arg2_13)
		local pairs_result1_8, pairs_result2, pairs_result3_9 = pairs(arg2_13)
		for i_10, v_8 in pairs_result1_8, pairs_result2, pairs_result3_9 do
			local var290 = tbl_3_upvr.Create("TextLabel")({
				Name = "Selection"..tostring(i_10);
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				Size = UDim2.new(1, var229_upvr.Size.X.Offset * -2, 1, 0);
				Position = UDim2.new(1, 0, 0, 0);
				TextColor3 = Color3.fromRGB(255, 255, 255);
				TextYAlignment = Enum.TextYAlignment.Center;
				TextTransparency = 0.5;
				Font = Enum.Font.SourceSans;
				TextSize = 24;
				Text = v_8;
				ZIndex = 2;
				Visible = false;
				Parent = module_3_upvr.SelectorFrame;
			})
			if false then
				var290.TextSize = 36
			end
			if i_10 == arg2 then
				module_3_upvr.CurrentIndex = i_10
				var290.Position = UDim2.new(0, var229_upvr.Size.X.Offset, 0, 0)
				var290.Visible = true
				tbl_12_upvw[var290] = true
			else
				tbl_12_upvw[var290] = false
			end
			module_3_upvr.Selections[i_10] = var290
		end
		if 1 >= #module_3_upvr.Selections then
			pairs_result1_8 = false
		else
			pairs_result1_8 = true
		end
		var229_upvr.Visible = pairs_result1_8
		var231_upvr.Visible = pairs_result1_8
	end
	local function onVREnabled(arg1_37) -- Line 1264
		--[[ Upvalues[4]:
			[1]: VRService_upvr (copied, readonly)
			[2]: var229_upvr (readonly)
			[3]: var231_upvr (readonly)
			[4]: var241_upvr (readonly)
		]]
		if arg1_37 ~= "VREnabled" then
		else
			local VREnabled_2 = VRService_upvr.VREnabled
			var229_upvr.Selectable = VREnabled_2
			var231_upvr.Selectable = VREnabled_2
			var241_upvr.Selectable = VREnabled_2
		end
	end
	VRService_upvr.Changed:Connect(onVREnabled)
	local VREnabled = VRService_upvr.VREnabled
	var229_upvr.Selectable = VREnabled
	var231_upvr.Selectable = VREnabled
	var241_upvr.Selectable = VREnabled
	var229_upvr.InputBegan:Connect(function(arg1_38) -- Line 1276
		--[[ Upvalues[1]:
			[1]: stepFunc_upvr (readonly)
		]]
		if arg1_38.UserInputType == Enum.UserInputType.Touch then
			stepFunc_upvr(nil, -1)
		end
	end)
	var229_upvr.MouseButton1Click:Connect(function() -- Line 1281
		--[[ Upvalues[2]:
			[1]: UserInputService_upvr (copied, readonly)
			[2]: stepFunc_upvr (readonly)
		]]
		if not UserInputService_upvr.TouchEnabled then
			stepFunc_upvr(nil, -1)
		end
	end)
	var231_upvr.InputBegan:Connect(function(arg1_39) -- Line 1286
		--[[ Upvalues[1]:
			[1]: stepFunc_upvr (readonly)
		]]
		if arg1_39.UserInputType == Enum.UserInputType.Touch then
			stepFunc_upvr(nil, 1)
		end
	end)
	var231_upvr.MouseButton1Click:Connect(function() -- Line 1291
		--[[ Upvalues[2]:
			[1]: UserInputService_upvr (copied, readonly)
			[2]: stepFunc_upvr (readonly)
		]]
		if not UserInputService_upvr.TouchEnabled then
			stepFunc_upvr(nil, 1)
		end
	end)
	local var297_upvw = true
	module_3_upvr:UpdateOptions(arg1)
	UserInputService_upvr.InputBegan:Connect(function(arg1_40) -- Line 1300
		--[[ Upvalues[5]:
			[1]: var226_upvw (read and write)
			[2]: var297_upvw (read and write)
			[3]: GuiService_upvr (copied, readonly)
			[4]: module_3_upvr (readonly)
			[5]: stepFunc_upvr (readonly)
		]]
		if not var226_upvw then
		else
			if not var297_upvw then return end
			if arg1_40.UserInputType ~= Enum.UserInputType.Gamepad1 and arg1_40.UserInputType ~= Enum.UserInputType.Keyboard then return end
			if GuiService_upvr.SelectedCoreObject ~= module_3_upvr.SelectorFrame then return end
			if arg1_40.KeyCode == Enum.KeyCode.DPadLeft or arg1_40.KeyCode == Enum.KeyCode.Left or arg1_40.KeyCode == Enum.KeyCode.A then
				stepFunc_upvr(arg1_40, -1)
				return
			end
			if arg1_40.KeyCode == Enum.KeyCode.DPadRight or arg1_40.KeyCode == Enum.KeyCode.Right or arg1_40.KeyCode == Enum.KeyCode.D then
				stepFunc_upvr(arg1_40, 1)
			end
		end
	end)
	local var300_upvw = 0
	UserInputService_upvr.InputChanged:Connect(function(arg1_41) -- Line 1314
		--[[ Upvalues[6]:
			[1]: var226_upvw (read and write)
			[2]: var297_upvw (read and write)
			[3]: var300_upvw (read and write)
			[4]: GuiService_upvr (copied, readonly)
			[5]: module_3_upvr (readonly)
			[6]: stepFunc_upvr (readonly)
		]]
		if not var226_upvw then
		else
			if not var297_upvw then
				var300_upvw = 0
				return
			end
			if arg1_41.UserInputType ~= Enum.UserInputType.Gamepad1 then return end
			local SelectedCoreObject_2 = GuiService_upvr.SelectedCoreObject
			if not SelectedCoreObject_2 or not SelectedCoreObject_2:IsDescendantOf(module_3_upvr.SelectorFrame.Parent) then return end
			if arg1_41.KeyCode ~= Enum.KeyCode.Thumbstick1 then return end
			if 0.8 < arg1_41.Position.X and 0 < arg1_41.Delta.X and var300_upvw ~= 1 then
				var300_upvw = 1
				stepFunc_upvr(arg1_41, var300_upvw)
				return
			end
			if arg1_41.Position.X < -0.8 and arg1_41.Delta.X < 0 and var300_upvw ~= -1 then
				var300_upvw = -1
				stepFunc_upvr(arg1_41, var300_upvw)
				return
			end
			if math.abs(arg1_41.Position.X) < 0.8 then
				var300_upvw = 0
			end
		end
	end)
	module_3_upvr.SelectorFrame.AncestryChanged:Connect(function(arg1_42, arg2_14) -- Line 1337
		--[[ Upvalues[6]:
			[1]: var297_upvw (read and write)
			[2]: var261_upvw (read and write)
			[3]: GuiService_upvr (copied, readonly)
			[4]: module_3_upvr (readonly)
			[5]: tbl_2_upvr (readonly)
			[6]: VRService_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		var297_upvw = arg2_14
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 6. Error Block 3 start (CF ANALYSIS FAILED)
		var261_upvw:Disconnect()
		do
			return
		end
		-- KONSTANTERROR: [5] 6. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [10] 10. Error Block 4 start (CF ANALYSIS FAILED)
		var261_upvw = GuiService_upvr:GetPropertyChangedSignal("SelectedCoreObject"):Connect(function() -- Line 1150
			--[[ Upvalues[4]:
				[1]: module_3_upvr (copied, readonly)
				[2]: GuiService_upvr (copied, readonly)
				[3]: tbl_2_upvr (copied, readonly)
				[4]: VRService_upvr (copied, readonly)
			]]
			if #module_3_upvr.Selections <= 0 then
			else
				if GuiService_upvr.SelectedCoreObject == module_3_upvr.SelectorFrame then
					module_3_upvr.Selections[module_3_upvr.CurrentIndex].TextTransparency = 0
					return
				end
				if GuiService_upvr.SelectedCoreObject ~= nil and tbl_2_upvr[GuiService_upvr.SelectedCoreObject] then
					if VRService_upvr.VREnabled then
						module_3_upvr.Selections[module_3_upvr.CurrentIndex].TextTransparency = 0
					else
						GuiService_upvr.SelectedCoreObject = module_3_upvr.SelectorFrame
					end
				end
				module_3_upvr.Selections[module_3_upvr.CurrentIndex].TextTransparency = 0.5
			end
		end)
		-- KONSTANTERROR: [10] 10. Error Block 4 end (CF ANALYSIS FAILED)
	end)
	local function onResized(arg1_43, arg2_15) -- Line 1346
		--[[ Upvalues[1]:
			[1]: module_3_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 18 start (CF ANALYSIS FAILED)
		local var308
		if arg2_15 then
			-- KONSTANTWARNING: GOTO [10] #11
		end
		-- KONSTANTERROR: [0] 1. Error Block 18 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [4] 5. Error Block 19 start (CF ANALYSIS FAILED)
		if false then
			var308 = 36
		else
			var308 = 24
		end
		var308 = pairs(module_3_upvr.Selections)
		for _, v_9 in pairs(module_3_upvr.Selections) do
			v_9.TextSize = var308
			local _
		end
		-- KONSTANTERROR: [4] 5. Error Block 19 end (CF ANALYSIS FAILED)
	end
	tbl_7_upvr[module_3_upvr.SelectorFrame] = onResized
	local getViewportSize_result1_3 = getViewportSize_upvr()
	if getViewportSize_result1_3.X >= getViewportSize_result1_3.Y then
		var317 = false
	else
		var317 = true
	end
	if var317 then
	elseif false then
	else
	end
	for _, v_10 in pairs(module_3_upvr.Selections) do
		v_10.TextSize = 24
	end
	var317 = "SelectedCoreObject"
	function var317() -- Line 1150
		--[[ Upvalues[4]:
			[1]: module_3_upvr (readonly)
			[2]: GuiService_upvr (copied, readonly)
			[3]: tbl_2_upvr (readonly)
			[4]: VRService_upvr (copied, readonly)
		]]
		if #module_3_upvr.Selections <= 0 then
		else
			if GuiService_upvr.SelectedCoreObject == module_3_upvr.SelectorFrame then
				module_3_upvr.Selections[module_3_upvr.CurrentIndex].TextTransparency = 0
				return
			end
			if GuiService_upvr.SelectedCoreObject ~= nil and tbl_2_upvr[GuiService_upvr.SelectedCoreObject] then
				if VRService_upvr.VREnabled then
					module_3_upvr.Selections[module_3_upvr.CurrentIndex].TextTransparency = 0
				else
					GuiService_upvr.SelectedCoreObject = module_3_upvr.SelectorFrame
				end
			end
			module_3_upvr.Selections[module_3_upvr.CurrentIndex].TextTransparency = 0.5
		end
	end
	var261_upvw = GuiService_upvr:GetPropertyChangedSignal(var317):Connect(var317)
	return module_3_upvr
end
local function ShowAlert(arg1, arg2, arg3, arg4, arg5) -- Line 1365
	--[[ Upvalues[8]:
		[1]: PlayerGui_upvr (readonly)
		[2]: VRService_upvr (readonly)
		[3]: tbl_3_upvr (readonly)
		[4]: HttpService_upvr (readonly)
		[5]: ContextActionService_upvr (readonly)
		[6]: GuiService_upvr (readonly)
		[7]: MakeButton_upvr (readonly)
		[8]: UserInputService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local RobloxGui_upvw = PlayerGui_upvr.RobloxGui
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 7. Error Block 2 start (CF ANALYSIS FAILED)
	do
		return
	end
	-- KONSTANTERROR: [8] 7. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 9. Error Block 3 start (CF ANALYSIS FAILED)
	local var319_upvw
	local function onVREnabled(arg1_44) -- Line 1374
		--[[ Upvalues[4]:
			[1]: VRService_upvr (copied, readonly)
			[2]: PlayerGui_upvr (copied, readonly)
			[3]: RobloxGui_upvw (read and write)
			[4]: var319_upvw (read and write)
		]]
		if arg1_44 ~= "VREnabled" then
		else
			if VRService_upvr.VREnabled then
				local any_Get_result1_2 = require(PlayerGui_upvr.RobloxGui.Modules.VR.Panel3D).Get("SettingsMenu")
				RobloxGui_upvw = any_Get_result1_2:GetGUI()
			else
				RobloxGui_upvw = PlayerGui_upvr.RobloxGui
			end
			if var319_upvw and var319_upvw.Parent ~= nil then
				var319_upvw.Parent = RobloxGui_upvw
				if VRService_upvr.VREnabled then
					any_Get_result1_2:SetSubpanelDepth(var319_upvw, 0.5)
				end
			end
		end
	end
	var319_upvw = tbl_3_upvr.Create("ImageLabel")({
		Name = "AlertViewBacking";
		Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButton.png";
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(8, 6, 46, 44);
		BackgroundTransparency = 1;
		ImageTransparency = 1;
		Size = UDim2.new(0, 400, 0, 350);
		Position = UDim2.new(0.5, -200, 0.5, -175);
		ZIndex = 9;
		Parent = RobloxGui_upvw;
	})
	onVREnabled("VREnabled")
	-- KONSTANTERROR: [10] 9. Error Block 3 end (CF ANALYSIS FAILED)
end
local Color3_fromRGB_result1_upvr_2 = Color3.fromRGB(0, 162, 255)
local Color3_fromRGB_result1_upvr_6 = Color3.fromRGB(78, 84, 96)
local function CreateNewSlider(arg1, arg2, arg3) -- Line 1506
	--[[ Upvalues[14]:
		[1]: HttpService_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: var27_upvr (readonly)
		[4]: UserInputService_upvr (readonly)
		[5]: Color3_fromRGB_result1_upvr (readonly)
		[6]: Color3_fromRGB_result1_upvr_7 (readonly)
		[7]: Color3_fromRGB_result1_upvr (readonly)
		[8]: addHoverState_upvr (readonly)
		[9]: getViewportSize_upvr (readonly)
		[10]: Color3_fromRGB_result1_upvr_2 (readonly)
		[11]: Color3_fromRGB_result1_upvr_6 (readonly)
		[12]: VRService_upvr (readonly)
		[13]: GuiService_upvr (readonly)
		[14]: RunService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module_upvr_3 = {}
	local tonumber_result1_upvr = tonumber(arg1)
	local var335_upvw = arg2
	local var336_upvw = 0
	local var337_upvw
	local var338_upvw = true
	local var348
	if tonumber_result1_upvr <= 0 then
		error("CreateNewSlider failed because numOfSteps (first arg) is 0 or negative, please supply a positive integer", 2)
		return
	end
	local BindableEvent_upvr_5 = Instance.new("BindableEvent")
	BindableEvent_upvr_5.Name = "ValueChanged"
	local tbl_6 = {
		Name = "Slider";
		Image = "";
		AutoButtonColor = false;
		NextSelectionLeft = module_upvr_3.SliderFrame;
		NextSelectionRight = module_upvr_3.SliderFrame;
		BackgroundTransparency = 1;
	}
	var348 = 0
	tbl_6.Size = UDim2.new(0.6, var348, 0, 50)
	var348 = 0
	tbl_6.Position = UDim2.new(1, var348, 0.5, 0)
	var348 = 0.5
	tbl_6.AnchorPoint = Vector2.new(1, var348)
	tbl_6.SelectionImageObject = var27_upvr
	tbl_6.ZIndex = 2
	module_upvr_3.SliderFrame = tbl_3_upvr.Create("ImageButton")(tbl_6)
	local tbl_4 = {
		Name = "StepsContainer";
	}
	var348 = 0
	tbl_4.Position = UDim2.new(0.5, var348, 0.5, 0)
	var348 = -100
	tbl_4.Size = UDim2.new(1, var348, 1, 0)
	var348 = 0.5
	tbl_4.AnchorPoint = Vector2.new(0.5, var348)
	tbl_4.BackgroundTransparency = 1
	tbl_4.Parent = module_upvr_3.SliderFrame
	module_upvr_3.StepsContainer = tbl_3_upvr.Create("Frame")(tbl_4)
	local tbl_9 = {
		Name = "LeftButton";
		BackgroundTransparency = 1;
	}
	var348 = 0.5
	tbl_9.AnchorPoint = Vector2.new(0, var348)
	var348 = 0
	tbl_9.Position = UDim2.new(0, var348, 0.5, 0)
	var348 = 50
	tbl_9.Size = UDim2.new(0, var348, 0, 50)
	tbl_9.Image = ""
	tbl_9.ZIndex = 3
	tbl_9.Selectable = false
	tbl_9.SelectionImageObject = var27_upvr
	tbl_9.Active = true
	tbl_9.Parent = module_upvr_3.SliderFrame
	local var344_upvr = tbl_3_upvr.Create("ImageButton")(tbl_9)
	local tbl_8 = {
		Name = "RightButton";
		BackgroundTransparency = 1;
	}
	var348 = 1
	tbl_8.AnchorPoint = Vector2.new(var348, 0.5)
	var348 = 1
	tbl_8.Position = UDim2.new(var348, 0, 0.5, 0)
	var348 = 0
	tbl_8.Size = UDim2.new(var348, 50, 0, 50)
	tbl_8.Image = ""
	tbl_8.ZIndex = 3
	tbl_8.Selectable = false
	tbl_8.SelectionImageObject = var27_upvr
	tbl_8.Active = true
	tbl_8.Parent = module_upvr_3.SliderFrame
	local var346_upvr = tbl_3_upvr.Create("ImageButton")(tbl_8)
	local tbl_14 = {}
	var348 = "LeftButton"
	tbl_14.Name = var348
	var348 = 1
	tbl_14.BackgroundTransparency = var348
	var348 = Vector2.new(0.5, 0.5)
	tbl_14.AnchorPoint = var348
	var348 = UDim2.new(0.5, 0, 0.5, 0)
	tbl_14.Position = var348
	var348 = UDim2.new(0, 30, 0, 30)
	tbl_14.Size = var348
	var348 = "rbxasset://textures/ui/Settings/Slider/Less.png"
	tbl_14.Image = var348
	var348 = 4
	tbl_14.ZIndex = var348
	tbl_14.Parent = var344_upvr
	local function INLINED_11() -- Internal function, doesn't exist in bytecode
		var348 = Color3_fromRGB_result1_upvr
		return var348
	end
	if not UserInputService_upvr.TouchEnabled or not INLINED_11() then
		var348 = Color3_fromRGB_result1_upvr_7
	end
	tbl_14.ImageColor3 = var348
	var348 = tbl_3_upvr
	var348 = "ImageLabel"
	var348 = {}
	var348.Name = "RightButton"
	var348.BackgroundTransparency = 1
	var348.AnchorPoint = Vector2.new(0.5, 0.5)
	var348.Position = UDim2.new(0.5, 0, 0.5, 0)
	var348.Size = UDim2.new(0, 30, 0, 30)
	var348.Image = "rbxasset://textures/ui/Settings/Slider/More.png"
	var348.ZIndex = 4
	var348.Parent = var346_upvr
	if not UserInputService_upvr.TouchEnabled or not Color3_fromRGB_result1_upvr then
	end
	var348.ImageColor3 = Color3_fromRGB_result1_upvr_7
	var348 = UserInputService_upvr.TouchEnabled
	if not var348 then
		function var348(arg1_45) -- Line 1615
			--[[ Upvalues[1]:
				[1]: Color3_fromRGB_result1_upvr_7 (copied, readonly)
			]]
			arg1_45.ImageColor3 = Color3_fromRGB_result1_upvr_7
		end
		local function var349(arg1_46) -- Line 1616
			--[[ Upvalues[1]:
				[1]: Color3_fromRGB_result1_upvr (copied, readonly)
			]]
			arg1_46.ImageColor3 = Color3_fromRGB_result1_upvr
		end
		addHoverState_upvr(var344_upvr, tbl_3_upvr.Create("ImageLabel")(tbl_14), var348, var349)
		addHoverState_upvr(var346_upvr, var348.Create(var348)(var348), var348, var349)
	end
	var348 = {}
	module_upvr_3.Steps = var348
	var348 = 35
	local getViewportSize_result1_11 = getViewportSize_upvr()
	if UserInputService_upvr.TouchEnabled and getViewportSize_result1_11.Y >= 500 then
		if getViewportSize_result1_11.X >= 700 then
		else
		end
	end
	if true then
		var348 = 25
	end
	local var351 = 1 / tonumber_result1_upvr
	var348 = 0
	for i_13 = 1, tonumber_result1_upvr do
		local var353 = tbl_3_upvr.Create("ImageButton")({
			Name = "Step"..tostring(i_13);
			BackgroundColor3 = Color3_fromRGB_result1_upvr_2;
			BackgroundTransparency = 0.36;
			BorderSizePixel = 0;
			AutoButtonColor = false;
			Active = false;
			AnchorPoint = Vector2.new(0, 0.5);
			Position = UDim2.new((i_13 - 1) * var351, 2, 0.5, 0);
			Size = UDim2.new(var351, -4, 0.48, 0);
			Image = "";
			ZIndex = 3;
			Selectable = false;
			ImageTransparency = 0.36;
			Parent = module_upvr_3.StepsContainer;
			SelectionImageObject = var27_upvr;
		})
		if var335_upvw < i_13 then
			var353.BackgroundColor3 = Color3_fromRGB_result1_upvr_6
		end
		if i_13 == 1 or i_13 == tonumber_result1_upvr then
			var353.BackgroundTransparency = 1
			var353.ScaleType = Enum.ScaleType.Slice
			var353.SliceCenter = Rect.new(3, 3, 32, 21)
			if i_13 <= var335_upvw then
				if i_13 == 1 then
					var353.Image = "rbxasset://textures/ui/Settings/Slider/SelectedBarLeft.png"
				else
					var353.Image = "rbxasset://textures/ui/Settings/Slider/SelectedBarRight.png"
				end
			elseif i_13 == 1 then
				var353.Image = "rbxasset://textures/ui/Settings/Slider/BarLeft.png"
			else
				var353.Image = "rbxasset://textures/ui/Settings/Slider/BarRight.png"
			end
		end
		module_upvr_3.Steps[#module_upvr_3.Steps + 1] = var353
	end
	local function hideSelection_upvr() -- Line 1680, Named "hideSelection"
		--[[ Upvalues[3]:
			[1]: tonumber_result1_upvr (readonly)
			[2]: module_upvr_3 (readonly)
			[3]: Color3_fromRGB_result1_upvr_6 (copied, readonly)
		]]
		for i_14 = 1, tonumber_result1_upvr do
			module_upvr_3.Steps[i_14].BackgroundColor3 = Color3_fromRGB_result1_upvr_6
			if i_14 == 1 then
				module_upvr_3.Steps[i_14].Image = "rbxasset://textures/ui/Settings/Slider/BarLeft.png"
			elseif i_14 == tonumber_result1_upvr then
				module_upvr_3.Steps[i_14].Image = "rbxasset://textures/ui/Settings/Slider/BarRight.png"
			end
		end
	end
	local function showSelection_upvr() -- Line 1690, Named "showSelection"
		--[[ Upvalues[4]:
			[1]: tonumber_result1_upvr (readonly)
			[2]: var335_upvw (read and write)
			[3]: module_upvr_3 (readonly)
			[4]: Color3_fromRGB_result1_upvr_2 (copied, readonly)
		]]
		for i_15 = 1, tonumber_result1_upvr do
			if var335_upvw < i_15 then break end
			module_upvr_3.Steps[i_15].BackgroundColor3 = Color3_fromRGB_result1_upvr_2
			if i_15 == 1 then
				module_upvr_3.Steps[i_15].Image = "rbxasset://textures/ui/Settings/Slider/SelectedBarLeft.png"
			elseif i_15 == tonumber_result1_upvr then
				module_upvr_3.Steps[i_15].Image = "rbxasset://textures/ui/Settings/Slider/SelectedBarRight.png"
			end
		end
	end
	local function modifySelection_upvr(arg1_47) -- Line 1701, Named "modifySelection"
		--[[ Upvalues[2]:
			[1]: tonumber_result1_upvr (readonly)
			[2]: module_upvr_3 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 15 start (CF ANALYSIS FAILED)
		local var356 = 1
		if var356 ~= 1 then
			if var356 == tonumber_result1_upvr then
				-- KONSTANTERROR: [9] 8. Error Block 11 start (CF ANALYSIS FAILED)
				module_upvr_3.Steps[var356].ImageTransparency = arg1_47
				-- KONSTANTERROR: [9] 8. Error Block 11 end (CF ANALYSIS FAILED)
			else
				module_upvr_3.Steps[var356].BackgroundTransparency = arg1_47
			end
			-- KONSTANTWARNING: GOTO [4] #5
		end
		-- KONSTANTERROR: [0] 1. Error Block 15 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [9] 8. Error Block 11 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [9] 8. Error Block 11 end (CF ANALYSIS FAILED)
	end
	local function setCurrentStep_upvr(arg1_48) -- Line 1711, Named "setCurrentStep"
		--[[ Upvalues[9]:
			[1]: arg3 (read and write)
			[2]: var344_upvr (readonly)
			[3]: var346_upvr (readonly)
			[4]: tonumber_result1_upvr (readonly)
			[5]: var335_upvw (read and write)
			[6]: hideSelection_upvr (readonly)
			[7]: showSelection_upvr (readonly)
			[8]: var337_upvw (read and write)
			[9]: BindableEvent_upvr_5 (readonly)
		]]
		local var357
		if not arg3 then
			arg3 = 0
		end
		var344_upvr.Visible = true
		var346_upvr.Visible = true
		if var357 <= arg3 then
			var357 = arg3
			var344_upvr.Visible = false
		end
		if tonumber_result1_upvr <= var357 then
			var357 = tonumber_result1_upvr
			var346_upvr.Visible = false
		end
		if var335_upvw == var357 then
		else
			var335_upvw = var357
			hideSelection_upvr()
			showSelection_upvr()
			var337_upvw = tick()
			BindableEvent_upvr_5:Fire(var335_upvw)
		end
	end
	local function _(arg1_49) -- Line 1737, Named "isActivateEvent"
		if not arg1_49 then
			return false
		end
		local var359 = true
		if arg1_49.UserInputType ~= Enum.UserInputType.MouseButton1 then
			var359 = true
			if arg1_49.UserInputType ~= Enum.UserInputType.Touch then
				var359 = false
				if arg1_49.UserInputType == Enum.UserInputType.Gamepad1 then
					if arg1_49.KeyCode ~= Enum.KeyCode.ButtonA then
						var359 = false
					else
						var359 = true
					end
				end
			end
		end
		return var359
	end
	local function mouseDownFunc_upvr(arg1_50, arg2_16, arg3_2) -- Line 1741, Named "mouseDownFunc"
		--[[ Upvalues[9]:
			[1]: var338_upvw (read and write)
			[2]: VRService_upvr (copied, readonly)
			[3]: UserInputService_upvr (copied, readonly)
			[4]: GuiService_upvr (copied, readonly)
			[5]: module_upvr_3 (readonly)
			[6]: var336_upvw (read and write)
			[7]: var335_upvw (read and write)
			[8]: tonumber_result1_upvr (readonly)
			[9]: setCurrentStep_upvr (readonly)
		]]
		local var367_upvw
		if not var367_upvw then
		else
			if arg1_50 == nil then return end
			if not arg1_50 then
				var367_upvw = false
			else
				var367_upvw = true
				if arg1_50.UserInputType ~= Enum.UserInputType.MouseButton1 then
					var367_upvw = true
					if arg1_50.UserInputType ~= Enum.UserInputType.Touch then
						var367_upvw = false
						if arg1_50.UserInputType == Enum.UserInputType.Gamepad1 then
							if arg1_50.KeyCode ~= Enum.KeyCode.ButtonA then
								var367_upvw = false
							else
								var367_upvw = true
							end
						end
					end
				end
			end
			if not var367_upvw then return end
			if VRService_upvr.VREnabled then
				var367_upvw = false
			elseif UserInputService_upvr.TouchEnabled and not UserInputService_upvr.GamepadEnabled then
				var367_upvw = false
			else
				var367_upvw = true
			end
			if var367_upvw then
				var367_upvw = VRService_upvr.VREnabled
				if not var367_upvw then
					var367_upvw = GuiService_upvr
					var367_upvw.SelectedCoreObject = module_upvr_3.SliderFrame
				end
			end
			var367_upvw = VRService_upvr.VREnabled
			if not var367_upvw then
				if arg3_2 then
					var367_upvw = arg2_16 - var335_upvw
					var336_upvw = var367_upvw
				else
					var367_upvw = 0
					var336_upvw = var367_upvw
					var367_upvw = nil
					var367_upvw = UserInputService_upvr.InputChanged:Connect(function(arg1_53) -- Line 1761
						--[[ Upvalues[3]:
							[1]: tonumber_result1_upvr (copied, readonly)
							[2]: module_upvr_3 (copied, readonly)
							[3]: setCurrentStep_upvr (copied, readonly)
						]]
						if arg1_53.UserInputType ~= Enum.UserInputType.MouseMovement then
						else
							local X = arg1_53.Position.X
							for i_24 = 1, tonumber_result1_upvr do
								local X_3 = module_upvr_3.Steps[i_24].AbsolutePosition.X
								if X_3 <= X and X <= X_3 + module_upvr_3.Steps[i_24].AbsoluteSize.X then
									setCurrentStep_upvr(i_24)
									return
								end
								if i_24 == 1 and X < X_3 then
									setCurrentStep_upvr(0)
									return
								end
								if i_24 == tonumber_result1_upvr and X_3 <= X then
									setCurrentStep_upvr(i_24)
									return
								end
							end
						end
					end)
					local var373_upvw
					var373_upvw = UserInputService_upvr.InputEnded:Connect(function(arg1_54) -- Line 1780
						--[[ Upvalues[3]:
							[1]: var336_upvw (copied, read and write)
							[2]: var373_upvw (read and write)
							[3]: var367_upvw (read and write)
						]]
						if not arg1_54 then
						elseif arg1_54.UserInputType ~= Enum.UserInputType.MouseButton1 then
							if arg1_54.UserInputType ~= Enum.UserInputType.Touch then
								if arg1_54.UserInputType == Enum.UserInputType.Gamepad1 then
									if arg1_54.KeyCode ~= Enum.KeyCode.ButtonA then
									else
									end
								end
							end
						end
						if not true then
						else
							var336_upvw = 0
							var373_upvw:Disconnect()
							var367_upvw:Disconnect()
						end
					end)
				end
			else
				var336_upvw = 0
			end
			setCurrentStep_upvr(arg2_16)
		end
	end
	local function _(arg1_55) -- Line 1795, Named "mouseUpFunc"
		--[[ Upvalues[2]:
			[1]: var338_upvw (read and write)
			[2]: var336_upvw (read and write)
		]]
		local var375
		if not var375 then
		else
			if not arg1_55 then
				var375 = false
			else
				var375 = true
				if arg1_55.UserInputType ~= Enum.UserInputType.MouseButton1 then
					var375 = true
					if arg1_55.UserInputType ~= Enum.UserInputType.Touch then
						var375 = false
						if arg1_55.UserInputType == Enum.UserInputType.Gamepad1 then
							if arg1_55.KeyCode ~= Enum.KeyCode.ButtonA then
								var375 = false
							else
								var375 = true
							end
						end
					end
				end
			end
			if not var375 then return end
			var375 = 0
			var336_upvw = var375
		end
	end
	local function _(arg1_56, arg2_17, arg3_3) -- Line 1802, Named "touchClickFunc"
		--[[ Upvalues[1]:
			[1]: mouseDownFunc_upvr (readonly)
		]]
		mouseDownFunc_upvr(arg1_56, arg2_17, arg3_3)
	end
	module_upvr_3.ValueChanged = BindableEvent_upvr_5.Event
	local function SetValue(arg1_57, arg2_18) -- Line 1809
		--[[ Upvalues[1]:
			[1]: setCurrentStep_upvr (readonly)
		]]
		setCurrentStep_upvr(arg2_18)
	end
	module_upvr_3.SetValue = SetValue
	function module_upvr_3.GetValue(arg1_58) -- Line 1813
		--[[ Upvalues[1]:
			[1]: var335_upvw (read and write)
		]]
		return var335_upvw
	end
	local function SetInteractable(arg1_59, arg2_19) -- Line 1817
		--[[ Upvalues[5]:
			[1]: var336_upvw (read and write)
			[2]: var338_upvw (read and write)
			[3]: module_upvr_3 (readonly)
			[4]: hideSelection_upvr (readonly)
			[5]: showSelection_upvr (readonly)
		]]
		var336_upvw = 0
		var338_upvw = arg2_19
		module_upvr_3.SliderFrame.Selectable = arg2_19
		if not var338_upvw then
			hideSelection_upvr()
		else
			showSelection_upvr()
		end
	end
	module_upvr_3.SetInteractable = SetInteractable
	local var376_upvr = tbl_3_upvr.Create("ImageLabel")(tbl_14)
	local var377_upvr = var348.Create(var348)(var348)
	local function SetZIndex(arg1_60, arg2_20) -- Line 1828
		--[[ Upvalues[5]:
			[1]: var344_upvr (readonly)
			[2]: var346_upvr (readonly)
			[3]: var376_upvr (readonly)
			[4]: var377_upvr (readonly)
			[5]: module_upvr_3 (readonly)
		]]
		var344_upvr.ZIndex = arg2_20
		var346_upvr.ZIndex = arg2_20
		var376_upvr.ZIndex = arg2_20
		var377_upvr.ZIndex = arg2_20
		for i_16 = 1, #module_upvr_3.Steps do
			module_upvr_3.Steps[i_16].ZIndex = arg2_20
		end
	end
	module_upvr_3.SetZIndex = SetZIndex
	function module_upvr_3.SetMinStep(arg1_61, arg2_21) -- Line 1839
		--[[ Upvalues[5]:
			[1]: tonumber_result1_upvr (readonly)
			[2]: arg3 (read and write)
			[3]: var335_upvw (read and write)
			[4]: var344_upvr (readonly)
			[5]: var346_upvr (readonly)
		]]
		if 0 <= arg2_21 and arg2_21 <= tonumber_result1_upvr then
			arg3 = arg2_21
		end
		if var335_upvw <= arg3 then
			var335_upvw = arg3
			var344_upvr.Visible = false
		end
		if tonumber_result1_upvr <= var335_upvw then
			var335_upvw = tonumber_result1_upvr
			var346_upvr.Visible = false
		end
	end
	var344_upvr.InputBegan:Connect(function(arg1_62) -- Line 1856
		--[[ Upvalues[2]:
			[1]: mouseDownFunc_upvr (readonly)
			[2]: var335_upvw (read and write)
		]]
		mouseDownFunc_upvr(arg1_62, var335_upvw - 1, true)
	end)
	var344_upvr.InputEnded:Connect(function(arg1_63) -- Line 1857
		--[[ Upvalues[2]:
			[1]: var338_upvw (read and write)
			[2]: var336_upvw (read and write)
		]]
		local var381
		if not var381 then
		else
			if not arg1_63 then
				var381 = false
			else
				var381 = true
				if arg1_63.UserInputType ~= Enum.UserInputType.MouseButton1 then
					var381 = true
					if arg1_63.UserInputType ~= Enum.UserInputType.Touch then
						var381 = false
						if arg1_63.UserInputType == Enum.UserInputType.Gamepad1 then
							if arg1_63.KeyCode ~= Enum.KeyCode.ButtonA then
								var381 = false
							else
								var381 = true
							end
						end
					end
				end
			end
			if not var381 then return end
			var381 = 0
			var336_upvw = var381
		end
	end)
	var346_upvr.InputBegan:Connect(function(arg1_64) -- Line 1858
		--[[ Upvalues[2]:
			[1]: mouseDownFunc_upvr (readonly)
			[2]: var335_upvw (read and write)
		]]
		mouseDownFunc_upvr(arg1_64, var335_upvw + 1, true)
	end)
	var346_upvr.InputEnded:Connect(function(arg1_65) -- Line 1859
		--[[ Upvalues[2]:
			[1]: var338_upvw (read and write)
			[2]: var336_upvw (read and write)
		]]
		local var384
		if not var384 then
		else
			if not arg1_65 then
				var384 = false
			else
				var384 = true
				if arg1_65.UserInputType ~= Enum.UserInputType.MouseButton1 then
					var384 = true
					if arg1_65.UserInputType ~= Enum.UserInputType.Touch then
						var384 = false
						if arg1_65.UserInputType == Enum.UserInputType.Gamepad1 then
							if arg1_65.KeyCode ~= Enum.KeyCode.ButtonA then
								var384 = false
							else
								var384 = true
							end
						end
					end
				end
			end
			if not var384 then return end
			var384 = 0
			var336_upvw = var384
		end
	end)
	local function onVREnabled(arg1_66) -- Line 1861
		--[[ Upvalues[6]:
			[1]: VRService_upvr (copied, readonly)
			[2]: var344_upvr (readonly)
			[3]: var338_upvw (read and write)
			[4]: var346_upvr (readonly)
			[5]: module_upvr_3 (readonly)
			[6]: tonumber_result1_upvr (readonly)
		]]
		if arg1_66 ~= "VREnabled" then
		else
			if VRService_upvr.VREnabled then
				var344_upvr.Selectable = var338_upvw
				var346_upvr.Selectable = var338_upvw
				module_upvr_3.SliderFrame.Selectable = var338_upvw
				for i_22 = 1, tonumber_result1_upvr do
					module_upvr_3.Steps[i_22].Selectable = var338_upvw
					module_upvr_3.Steps[i_22].Active = var338_upvw
				end
				return
			end
			var344_upvr.Selectable = false
			var346_upvr.Selectable = false
			module_upvr_3.SliderFrame.Selectable = var338_upvw
			for i_23 = 1, tonumber_result1_upvr do
				module_upvr_3.Steps[i_23].Selectable = false
				module_upvr_3.Steps[i_23].Active = false
			end
		end
	end
	VRService_upvr.Changed:Connect(onVREnabled)
	onVREnabled("VREnabled")
	for i_17_upvr = 1, tonumber_result1_upvr do
		module_upvr_3.Steps[i_17_upvr].InputBegan:Connect(function(arg1_67) -- Line 1888
			--[[ Upvalues[2]:
				[1]: mouseDownFunc_upvr (readonly)
				[2]: i_17_upvr (readonly)
			]]
			mouseDownFunc_upvr(arg1_67, i_17_upvr)
		end)
		module_upvr_3.Steps[i_17_upvr].InputEnded:Connect(function(arg1_68) -- Line 1891
			--[[ Upvalues[2]:
				[1]: var338_upvw (read and write)
				[2]: var336_upvw (read and write)
			]]
			local var389
			if not var389 then
			else
				if not arg1_68 then
					var389 = false
				else
					var389 = true
					if arg1_68.UserInputType ~= Enum.UserInputType.MouseButton1 then
						var389 = true
						if arg1_68.UserInputType ~= Enum.UserInputType.Touch then
							var389 = false
							if arg1_68.UserInputType == Enum.UserInputType.Gamepad1 then
								if arg1_68.KeyCode ~= Enum.KeyCode.ButtonA then
									var389 = false
								else
									var389 = true
								end
							end
						end
					end
				end
				if not var389 then return end
				var389 = 0
				var336_upvw = var389
			end
		end)
		local var390_upvr
	end
	module_upvr_3.SliderFrame.InputBegan:Connect(function(arg1_69) -- Line 1895
		--[[ Upvalues[5]:
			[1]: VRService_upvr (copied, readonly)
			[2]: GuiService_upvr (copied, readonly)
			[3]: module_upvr_3 (readonly)
			[4]: var390_upvr (readonly)
			[5]: var335_upvw (read and write)
		]]
		local function INLINED_12() -- Internal function, doesn't exist in bytecode
			local SelectedCoreObject_3 = GuiService_upvr.SelectedCoreObject
			return SelectedCoreObject_3
		end
		if VRService_upvr.VREnabled and (not INLINED_12() or not SelectedCoreObject_3:IsDescendantOf(module_upvr_3.SliderFrame.Parent)) then
		else
			var390_upvr(arg1_69, var335_upvw)
		end
	end)
	module_upvr_3.SliderFrame.InputEnded:Connect(function(arg1_70) -- Line 1902
		--[[ Upvalues[5]:
			[1]: VRService_upvr (copied, readonly)
			[2]: GuiService_upvr (copied, readonly)
			[3]: module_upvr_3 (readonly)
			[4]: var338_upvw (read and write)
			[5]: var336_upvw (read and write)
		]]
		local var395
		local function INLINED_14() -- Internal function, doesn't exist in bytecode
			var395 = GuiService_upvr.SelectedCoreObject
			return var395
		end
		if var395 and (not INLINED_14() or not var395:IsDescendantOf(module_upvr_3.SliderFrame.Parent)) then
		else
			var395 = var338_upvw
			if not var395 then return end
			if not arg1_70 then
				var395 = false
			else
				var395 = true
				if arg1_70.UserInputType ~= Enum.UserInputType.MouseButton1 then
					var395 = true
					if arg1_70.UserInputType ~= Enum.UserInputType.Touch then
						var395 = false
						if arg1_70.UserInputType == Enum.UserInputType.Gamepad1 then
							if arg1_70.KeyCode ~= Enum.KeyCode.ButtonA then
								var395 = false
							else
								var395 = true
							end
						end
					end
				end
			end
			if not var395 then return end
			var395 = 0
			var336_upvw = var395
		end
	end)
	local function var396_upvr() -- Line 1911
		--[[ Upvalues[4]:
			[1]: var337_upvw (read and write)
			[2]: setCurrentStep_upvr (readonly)
			[3]: var335_upvw (read and write)
			[4]: var336_upvw (read and write)
		]]
		if var337_upvw == nil then
		elseif 0.2 <= tick() - var337_upvw then
			setCurrentStep_upvr(var335_upvw + var336_upvw)
		end
	end
	local var397_upvw = true
	local tbl_13_upvr = {
		[Enum.KeyCode.Thumbstick1] = true;
		[Enum.KeyCode.DPadLeft] = -1;
		[Enum.KeyCode.DPadRight] = 1;
		[Enum.KeyCode.Left] = -1;
		[Enum.KeyCode.Right] = 1;
		[Enum.KeyCode.A] = -1;
		[Enum.KeyCode.D] = 1;
		[Enum.KeyCode.ButtonA] = true;
	}
	UserInputService_upvr.InputBegan:Connect(function(arg1_71) -- Line 1935
		--[[ Upvalues[8]:
			[1]: var338_upvw (read and write)
			[2]: var397_upvw (read and write)
			[3]: GuiService_upvr (copied, readonly)
			[4]: module_upvr_3 (readonly)
			[5]: tbl_13_upvr (readonly)
			[6]: var336_upvw (read and write)
			[7]: setCurrentStep_upvr (readonly)
			[8]: var335_upvw (read and write)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
		do
			return
		end
		-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [3] 4. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [3] 4. Error Block 3 end (CF ANALYSIS FAILED)
	end)
	UserInputService_upvr.InputEnded:Connect(function(arg1_72) -- Line 1952
		--[[ Upvalues[5]:
			[1]: var338_upvw (read and write)
			[2]: GuiService_upvr (copied, readonly)
			[3]: module_upvr_3 (readonly)
			[4]: tbl_13_upvr (readonly)
			[5]: var336_upvw (read and write)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
		do
			return
		end
		-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [3] 4. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [3] 4. Error Block 3 end (CF ANALYSIS FAILED)
	end)
	UserInputService_upvr.InputChanged:Connect(function(arg1_73) -- Line 1964
		--[[ Upvalues[7]:
			[1]: var338_upvw (read and write)
			[2]: var336_upvw (read and write)
			[3]: var397_upvw (read and write)
			[4]: GuiService_upvr (copied, readonly)
			[5]: module_upvr_3 (readonly)
			[6]: setCurrentStep_upvr (readonly)
			[7]: var335_upvw (read and write)
		]]
		if not var338_upvw then
			var336_upvw = 0
		else
			if not var397_upvw then
				var336_upvw = 0
				return
			end
			if arg1_73.UserInputType ~= Enum.UserInputType.Gamepad1 then return end
			local SelectedCoreObject = GuiService_upvr.SelectedCoreObject
			if not SelectedCoreObject or not SelectedCoreObject:IsDescendantOf(module_upvr_3.SliderFrame.Parent) then return end
			if arg1_73.KeyCode ~= Enum.KeyCode.Thumbstick1 then return end
			if 0.8 < arg1_73.Position.X and 0 < arg1_73.Delta.X and var336_upvw ~= 1 then
				var336_upvw = 1
				setCurrentStep_upvr(var335_upvw + 1)
				return
			end
			if arg1_73.Position.X < -0.8 and arg1_73.Delta.X < 0 and var336_upvw ~= -1 then
				var336_upvw = -1
				setCurrentStep_upvr(var335_upvw - 1)
				return
			end
			if math.abs(arg1_73.Position.X) < 0.8 then
				var336_upvw = 0
			end
		end
	end)
	local var404_upvw = false
	local any_GenerateGUID_result1_upvr_2 = HttpService_upvr:GenerateGUID(false)
	GuiService_upvr.Changed:Connect(function(arg1_74) -- Line 1991
		--[[ Upvalues[8]:
			[1]: GuiService_upvr (copied, readonly)
			[2]: module_upvr_3 (readonly)
			[3]: modifySelection_upvr (readonly)
			[4]: var404_upvw (read and write)
			[5]: var337_upvw (read and write)
			[6]: RunService_upvr (copied, readonly)
			[7]: any_GenerateGUID_result1_upvr_2 (readonly)
			[8]: var396_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 2. Error Block 2 start (CF ANALYSIS FAILED)
		do
			return
		end
		-- KONSTANTERROR: [2] 2. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [3] 3. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [3] 3. Error Block 3 end (CF ANALYSIS FAILED)
	end)
	module_upvr_3.SliderFrame.AncestryChanged:Connect(function(arg1_75, arg2_22) -- Line 2012
		--[[ Upvalues[1]:
			[1]: var397_upvw (read and write)
		]]
		var397_upvw = arg2_22
	end)
	setCurrentStep_upvr(var335_upvw)
	return module_upvr_3
end
local var407_upvw = 50
if false then
	var407_upvw = 90
end
local tbl_20_upvr = {}
local var409_upvr = pcall_result1 and pcall_result2
local function AddNewRow(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 2025
	--[[ Upvalues[14]:
		[1]: tbl_20_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: var407_upvw (read and write)
		[4]: var27_upvr (readonly)
		[5]: var409_upvr (readonly)
		[6]: getViewportSize_upvr (readonly)
		[7]: tbl_7_upvr (readonly)
		[8]: CreateNewSlider (readonly)
		[9]: CreateSelector_upvr (readonly)
		[10]: CreateDropDown_upvr (readonly)
		[11]: VRService_upvr (readonly)
		[12]: UserInputService_upvr (readonly)
		[13]: GuiService_upvr (readonly)
		[14]: PlayerGui_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var410
	if arg3 == "TextBox" then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	if tbl_20_upvr[arg1] then
		var410 = tbl_20_upvr[arg1]
	end
	local var413_upvw = tbl_3_upvr.Create("ImageButton")({
		Name = arg2.."Frame";
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Image = "rbxasset://textures/ui/VR/rectBackgroundWhite.png";
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(2, 2, 18, 18);
		ImageTransparency = 1;
		Active = false;
		AutoButtonColor = false;
		Size = UDim2.new(1, 0, 0, var407_upvw);
		Position = UDim2.new(0, 0, 0, var410);
		ZIndex = 2;
		Selectable = false;
		SelectionImageObject = var27_upvr;
		Parent = arg1.Page;
	})
	var413_upvw.ImageColor3 = var413_upvw.BackgroundColor3
	local var414_upvw
	if var413_upvw and arg6 then
		var414_upvw = var413_upvw.Position
		var414_upvw = var413_upvw.Position.Y
		var414_upvw = var413_upvw.Position.Y.Offset + arg6
		var413_upvw.Position = UDim2.new(var413_upvw.Position.X.Scale, var414_upvw.X.Offset, var414_upvw.Scale, var414_upvw)
	end
	local tbl_5 = {}
	var414_upvw = arg2
	tbl_5.Name = var414_upvw.."Label"
	tbl_5.Text = arg2
	tbl_5.Font = Enum.Font.SourceSansBold
	tbl_5.TextSize = 16
	var414_upvw = 255
	tbl_5.TextColor3 = Color3.fromRGB(var414_upvw, 255, 255)
	tbl_5.TextXAlignment = Enum.TextXAlignment.Left
	tbl_5.BackgroundTransparency = 1
	var414_upvw = 0
	tbl_5.Size = UDim2.new(var414_upvw, 200, 1, 0)
	var414_upvw = 0
	tbl_5.Position = UDim2.new(var414_upvw, 10, 0, 0)
	tbl_5.ZIndex = 2
	tbl_5.Parent = var413_upvw
	local var416_upvw = tbl_3_upvr.Create("TextLabel")(tbl_5)
	local UITextSizeConstraint_upvr = Instance.new("UITextSizeConstraint")
	if var409_upvr then
		var414_upvw = 0
		var416_upvw.Size = UDim2.new(0.35, var414_upvw, 1, 0)
		var416_upvw.TextScaled = true
		var416_upvw.TextWrapped = true
		UITextSizeConstraint_upvr.Parent = var416_upvw
		UITextSizeConstraint_upvr.MaxTextSize = 16
	end
	if not true then
		var416_upvw.Text = ""
	end
	local function onResized(arg1_76, arg2_23) -- Line 2088
		--[[ Upvalues[2]:
			[1]: var416_upvw (read and write)
			[2]: UITextSizeConstraint_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 13 start (CF ANALYSIS FAILED)
		if arg2_23 then
			var416_upvw.TextSize = 16
			-- KONSTANTWARNING: GOTO [14] #13
		end
		-- KONSTANTERROR: [0] 1. Error Block 13 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [6] 6. Error Block 14 start (CF ANALYSIS FAILED)
		if false then
		else
		end
		var416_upvw.TextSize = 24
		UITextSizeConstraint_upvr.MaxTextSize = var416_upvw.TextSize
		-- KONSTANTERROR: [6] 6. Error Block 14 end (CF ANALYSIS FAILED)
	end
	local getViewportSize_result1_10 = getViewportSize_upvr()
	if getViewportSize_result1_10.X >= getViewportSize_result1_10.Y then
		var414_upvw = false
	else
		var414_upvw = true
	end
	if var414_upvw then
		var416_upvw.TextSize = 16
		-- KONSTANTWARNING: GOTO [240] #173
	end
	if false then
	else
	end
	var416_upvw.TextSize = 24
	UITextSizeConstraint_upvr.MaxTextSize = var416_upvw.TextSize
	var414_upvw = tbl_7_upvr
	var414_upvw[var413_upvw] = onResized
	var414_upvw = getViewportSize_upvr()
	local getViewportSize_upvr_result1 = getViewportSize_upvr()
	if getViewportSize_upvr_result1.X >= getViewportSize_upvr_result1.Y then
		-- KONSTANTWARNING: GOTO [259] #187
	end
	if true then
		var416_upvw.TextSize = 16
		-- KONSTANTWARNING: GOTO [271] #197
	end
	if false then
	else
	end
	var416_upvw.TextSize = 24
	UITextSizeConstraint_upvr.MaxTextSize = var416_upvw.TextSize
	var414_upvw = nil
	if arg3 == "Slider" then
		var414_upvw = CreateNewSlider(arg4, arg5)
		var414_upvw.SliderFrame.Parent = var413_upvw
		local _ = var414_upvw.SliderFrame
	elseif arg3 == "Selector" then
		var414_upvw = CreateSelector_upvr(arg4, arg5)
		var414_upvw.SelectorFrame.Parent = var413_upvw
	elseif arg3 == "DropDown" then
		var414_upvw = CreateDropDown_upvr(arg4, arg5, arg1.HubRef)
		var414_upvw.DropDownFrame.Parent = var413_upvw
	elseif arg3 == "TextBox" then
		local var421_upvw = false
		var414_upvw = {}
		var414_upvw.HubRef = nil
		local tbl_19 = {
			AnchorPoint = Vector2.new(1, 0.5);
			Size = UDim2.new(0.6, 0, 1, 0);
			Position = UDim2.new(1, 0, 0.5, 0);
		}
		tbl_19.Text = arg2
		tbl_19.TextColor3 = Color3.fromRGB(49, 49, 49)
		tbl_19.BackgroundTransparency = 0.5
		tbl_19.BorderSizePixel = 0
		tbl_19.TextYAlignment = Enum.TextYAlignment.Top
		tbl_19.TextXAlignment = Enum.TextXAlignment.Left
		tbl_19.TextWrapped = true
		tbl_19.Font = Enum.Font.SourceSans
		tbl_19.TextSize = 24
		tbl_19.ZIndex = 2
		tbl_19.SelectionImageObject = tbl_3_upvr.Create("ImageLabel")({
			Image = "";
			BackgroundTransparency = 1;
		})
		tbl_19.ClearTextOnFocus = false
		tbl_19.Parent = var413_upvw
		local var424_upvr = tbl_3_upvr.Create("TextBox")(tbl_19)
		local var425_upvw = var424_upvr
		var424_upvr.Focused:Connect(function() -- Line 2146
			--[[ Upvalues[5]:
				[1]: VRService_upvr (copied, readonly)
				[2]: UserInputService_upvr (copied, readonly)
				[3]: GuiService_upvr (copied, readonly)
				[4]: var424_upvr (readonly)
				[5]: arg2 (readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 18 start (CF ANALYSIS FAILED)
			if VRService_upvr.VREnabled then
				-- KONSTANTWARNING: GOTO [17] #15
			end
			-- KONSTANTERROR: [0] 1. Error Block 18 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [6] 6. Error Block 19 start (CF ANALYSIS FAILED)
			local var427
			if UserInputService_upvr.TouchEnabled and not UserInputService_upvr.GamepadEnabled then
				var427 = false
			else
				var427 = true
			end
			if var427 then
				var427 = GuiService_upvr
				var427.SelectedCoreObject = var424_upvr
			end
			var427 = var424_upvr.Text
			if var427 == arg2 then
				var427 = var424_upvr
				var427.Text = ""
			end
			-- KONSTANTERROR: [6] 6. Error Block 19 end (CF ANALYSIS FAILED)
		end)
		var424_upvr.FocusLost:Connect(function(arg1_77, arg2_24) -- Line 2155
			--[[ Upvalues[1]:
				[1]: var421_upvw (read and write)
			]]
			var421_upvw = false
		end)
		if arg6 then
			var424_upvr.Position = UDim2.new(var424_upvr.Position.X.Scale, var424_upvr.Position.X.Offset, var424_upvr.Position.Y.Scale, var424_upvr.Position.Y.Offset + arg6)
		end
		var425_upvw.SelectionGained:Connect(function() -- Line 2163
			--[[ Upvalues[5]:
				[1]: VRService_upvr (copied, readonly)
				[2]: UserInputService_upvr (copied, readonly)
				[3]: var424_upvr (readonly)
				[4]: var414_upvw (read and write)
				[5]: var425_upvw (read and write)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 17 start (CF ANALYSIS FAILED)
			if VRService_upvr.VREnabled then
				-- KONSTANTWARNING: GOTO [17] #15
			end
			-- KONSTANTERROR: [0] 1. Error Block 17 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [6] 6. Error Block 18 start (CF ANALYSIS FAILED)
			local var431
			if UserInputService_upvr.TouchEnabled and not UserInputService_upvr.GamepadEnabled then
				var431 = false
			else
				var431 = true
			end
			if var431 then
				var431 = var424_upvr
				var431.BackgroundTransparency = 0.1
				var431 = var414_upvw.HubRef
				if var431 then
					var431 = var414_upvw.HubRef:ScrollToFrame
					var431(var425_upvw)
				end
			end
			-- KONSTANTERROR: [6] 6. Error Block 18 end (CF ANALYSIS FAILED)
		end)
		var425_upvw.SelectionLost:Connect(function() -- Line 2172
			--[[ Upvalues[3]:
				[1]: VRService_upvr (copied, readonly)
				[2]: UserInputService_upvr (copied, readonly)
				[3]: var424_upvr (readonly)
			]]
			local var433
			if VRService_upvr.VREnabled then
				var433 = false
			elseif UserInputService_upvr.TouchEnabled and not UserInputService_upvr.GamepadEnabled then
				var433 = false
			else
				var433 = true
			end
			if var433 then
				var433 = var424_upvr
				var433.BackgroundTransparency = 0.5
			end
		end)
		local var435_upvw = false
		local function processInput(arg1_78) -- Line 2189
			--[[ Upvalues[4]:
				[1]: GuiService_upvr (copied, readonly)
				[2]: var425_upvw (read and write)
				[3]: var421_upvw (read and write)
				[4]: var424_upvr (readonly)
			]]
			if arg1_78.UserInputState == Enum.UserInputState.Begin and arg1_78.KeyCode == Enum.KeyCode.Return and GuiService_upvr.SelectedCoreObject == var425_upvw then
				var421_upvw = true
				var424_upvr:CaptureFocus()
			end
		end
		var424_upvr.MouseEnter:Connect(function() -- Line 2178
			--[[ Upvalues[7]:
				[1]: PlayerGui_upvr (copied, readonly)
				[2]: var425_upvw (read and write)
				[3]: VRService_upvr (copied, readonly)
				[4]: UserInputService_upvr (copied, readonly)
				[5]: arg1 (readonly)
				[6]: GuiService_upvr (copied, readonly)
				[7]: var435_upvw (read and write)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			local DropDownFullscreenFrame_3 = PlayerGui_upvr.RobloxGui:FindFirstChild("DropDownFullscreenFrame")
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [8] 7. Error Block 2 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [8] 7. Error Block 2 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [11] 9. Error Block 3 start (CF ANALYSIS FAILED)
			do
				return
			end
			-- KONSTANTERROR: [11] 9. Error Block 3 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [12] 10. Error Block 4 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [12] 10. Error Block 4 end (CF ANALYSIS FAILED)
		end)
		UserInputService_upvr.InputBegan:Connect(processInput)
	elseif arg3 == "TextEntry" then
		local var437_upvw = false
		var414_upvw = {}
		var414_upvw.HubRef = nil
		local tbl_18 = {
			AnchorPoint = Vector2.new(1, 0.5);
			Size = UDim2.new(0.4, -10, 0, 40);
			Position = UDim2.new(1, 0, 0.5, 0);
		}
		tbl_18.Text = arg2
		tbl_18.TextColor3 = Color3.fromRGB(178, 178, 178)
		tbl_18.BackgroundTransparency = 1
		tbl_18.BorderSizePixel = 0
		tbl_18.TextYAlignment = Enum.TextYAlignment.Center
		tbl_18.TextXAlignment = Enum.TextXAlignment.Center
		tbl_18.TextWrapped = false
		tbl_18.Font = Enum.Font.SourceSans
		tbl_18.TextSize = 24
		tbl_18.ZIndex = 2
		tbl_18.SelectionImageObject = tbl_3_upvr.Create("ImageLabel")({
			Image = "";
			BackgroundTransparency = 1;
		})
		tbl_18.ClearTextOnFocus = false
		tbl_18.Parent = var413_upvw
		local var440_upvr = tbl_3_upvr.Create("TextBox")(tbl_18)
		var425_upvw = var440_upvr
		local var441_upvw = var425_upvw
		var440_upvr.Focused:Connect(function() -- Line 2236
			--[[ Upvalues[5]:
				[1]: VRService_upvr (copied, readonly)
				[2]: UserInputService_upvr (copied, readonly)
				[3]: GuiService_upvr (copied, readonly)
				[4]: var440_upvr (readonly)
				[5]: arg2 (readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 18 start (CF ANALYSIS FAILED)
			if VRService_upvr.VREnabled then
				-- KONSTANTWARNING: GOTO [17] #15
			end
			-- KONSTANTERROR: [0] 1. Error Block 18 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [6] 6. Error Block 19 start (CF ANALYSIS FAILED)
			local var443
			if UserInputService_upvr.TouchEnabled and not UserInputService_upvr.GamepadEnabled then
				var443 = false
			else
				var443 = true
			end
			if var443 then
				var443 = GuiService_upvr
				var443.SelectedCoreObject = var440_upvr
			end
			var443 = var440_upvr.Text
			if var443 == arg2 then
				var443 = var440_upvr
				var443.Text = ""
			end
			-- KONSTANTERROR: [6] 6. Error Block 19 end (CF ANALYSIS FAILED)
		end)
		var440_upvr.FocusLost:Connect(function(arg1_79, arg2_25) -- Line 2245
			--[[ Upvalues[1]:
				[1]: var437_upvw (read and write)
			]]
			var437_upvw = false
		end)
		if arg6 then
			var440_upvr.Position = UDim2.new(var440_upvr.Position.X.Scale, var440_upvr.Position.X.Offset, var440_upvr.Position.Y.Scale, var440_upvr.Position.Y.Offset + arg6)
		end
		var441_upvw.SelectionGained:Connect(function() -- Line 2253
			--[[ Upvalues[5]:
				[1]: VRService_upvr (copied, readonly)
				[2]: UserInputService_upvr (copied, readonly)
				[3]: var440_upvr (readonly)
				[4]: var414_upvw (read and write)
				[5]: var441_upvw (read and write)
			]]
			local var446
			if VRService_upvr.VREnabled then
				var446 = false
			elseif UserInputService_upvr.TouchEnabled and not UserInputService_upvr.GamepadEnabled then
				var446 = false
			else
				var446 = true
			end
			if var446 then
				var446 = var440_upvr
				var446.BackgroundTransparency = 0.8
				var446 = var414_upvw.HubRef
				if var446 then
					var446 = var414_upvw.HubRef:ScrollToFrame
					var446(var441_upvw)
				end
			end
		end)
		var441_upvw.SelectionLost:Connect(function() -- Line 2262
			--[[ Upvalues[3]:
				[1]: VRService_upvr (copied, readonly)
				[2]: UserInputService_upvr (copied, readonly)
				[3]: var440_upvr (readonly)
			]]
			local var448
			if VRService_upvr.VREnabled then
				var448 = false
			elseif UserInputService_upvr.TouchEnabled and not UserInputService_upvr.GamepadEnabled then
				var448 = false
			else
				var448 = true
			end
			if var448 then
				var448 = var440_upvr
				var448.BackgroundTransparency = 1
			end
		end)
		local var450_upvw = false
		var413_upvw.MouseEnter:Connect(function() -- Line 2268
			--[[ Upvalues[7]:
				[1]: PlayerGui_upvr (copied, readonly)
				[2]: var441_upvw (read and write)
				[3]: VRService_upvr (copied, readonly)
				[4]: UserInputService_upvr (copied, readonly)
				[5]: arg1 (readonly)
				[6]: GuiService_upvr (copied, readonly)
				[7]: var450_upvw (read and write)
			]]
			local DropDownFullscreenFrame_4 = PlayerGui_upvr.RobloxGui:FindFirstChild("DropDownFullscreenFrame")
			if DropDownFullscreenFrame_4 and DropDownFullscreenFrame_4.Visible then
			else
				local var452 = var441_upvw
				if var452 then
					if var452.Visible then
						local ZIndex = var452.ZIndex
						if 1 < ZIndex then
							if VRService_upvr.VREnabled then
								ZIndex = false
							elseif UserInputService_upvr.TouchEnabled and not UserInputService_upvr.GamepadEnabled then
								ZIndex = false
							else
								ZIndex = true
							end
							if ZIndex then
								ZIndex = arg1.Active
								if ZIndex then
									ZIndex = GuiService_upvr
									ZIndex.SelectedCoreObject = var452
									ZIndex = true
									var450_upvw = ZIndex
								end
							end
						end
					end
				end
			end
		end)
		function var414_upvw.SetZIndex(arg1_81, arg2_26) -- Line 2291
			--[[ Upvalues[1]:
				[1]: var440_upvr (readonly)
			]]
			var440_upvr.ZIndex = arg2_26
		end
		function var414_upvw.SetInteractable(arg1_82, arg2_27) -- Line 2295
			--[[ Upvalues[1]:
				[1]: var440_upvr (readonly)
			]]
			var440_upvr.Selectable = arg2_27
			if not arg2_27 then
				var440_upvr.TextColor3 = Color3.fromRGB(49, 49, 49)
				var440_upvr.ZIndex = 1
			else
				var440_upvr.TextColor3 = Color3.fromRGB(178, 178, 178)
				var440_upvr.ZIndex = 2
			end
		end
		function var414_upvw.SetValue(arg1_83, arg2_28) -- Line 2306
			--[[ Upvalues[1]:
				[1]: var440_upvr (readonly)
			]]
			var440_upvr.Text = arg2_28
		end
		local BindableEvent_upvr = Instance.new("BindableEvent")
		BindableEvent_upvr.Name = "ValueChanged"
		var440_upvr.FocusLost:Connect(function() -- Line 2313
			--[[ Upvalues[2]:
				[1]: BindableEvent_upvr (readonly)
				[2]: var440_upvr (readonly)
			]]
			BindableEvent_upvr:Fire(var440_upvr.Text)
		end)
		var414_upvw.ValueChanged = BindableEvent_upvr.Event
		UserInputService_upvr.InputBegan:Connect(function(arg1_80) -- Line 2279, Named "processInput"
			--[[ Upvalues[4]:
				[1]: GuiService_upvr (copied, readonly)
				[2]: var441_upvw (read and write)
				[3]: var437_upvw (read and write)
				[4]: var440_upvr (readonly)
			]]
			if arg1_80.UserInputState == Enum.UserInputState.Begin and arg1_80.KeyCode == Enum.KeyCode.Return and GuiService_upvr.SelectedCoreObject == var441_upvw then
				var437_upvw = true
				var440_upvr:CaptureFocus()
			end
		end)
	end
	var414_upvw.Name = arg2.."ValueChanger"
	var410 += var407_upvw
	if arg6 then
		var410 += arg6
	end
	tbl_20_upvr[arg1] = var410
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if true then
		var413_upvw.MouseEnter:Connect(function() -- Line 2332
			--[[ Upvalues[6]:
				[1]: PlayerGui_upvr (copied, readonly)
				[2]: var414_upvw (read and write)
				[3]: VRService_upvr (copied, readonly)
				[4]: UserInputService_upvr (copied, readonly)
				[5]: arg1 (readonly)
				[6]: GuiService_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			local DropDownFullscreenFrame = PlayerGui_upvr.RobloxGui:FindFirstChild("DropDownFullscreenFrame")
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [8] 7. Error Block 2 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [8] 7. Error Block 2 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [11] 9. Error Block 3 start (CF ANALYSIS FAILED)
			do
				return
			end
			-- KONSTANTERROR: [11] 9. Error Block 3 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [12] 10. Error Block 4 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [12] 10. Error Block 4 end (CF ANALYSIS FAILED)
		end)
		VRService_upvr.Changed:Connect(function(arg1_84) -- Line 2354, Named "onVREnabled"
			--[[ Upvalues[4]:
				[1]: VRService_upvr (copied, readonly)
				[2]: var413_upvw (read and write)
				[3]: var441_upvw (read and write)
				[4]: GuiService_upvr (copied, readonly)
			]]
			if arg1_84 == "VREnabled" then
				if VRService_upvr.VREnabled then
					var413_upvw.Selectable = true
					var413_upvw.Active = true
					var441_upvw.Active = true
					GuiService_upvr.Changed:Connect(function(arg1_85) -- Line 2360
						--[[ Upvalues[2]:
							[1]: GuiService_upvr (copied, readonly)
							[2]: var413_upvw (copied, read and write)
						]]
						-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
						-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
						-- KONSTANTERROR: [23] 18. Error Block 7 start (CF ANALYSIS FAILED)
						var413_upvw.ImageTransparency = 1
						var413_upvw.BackgroundTransparency = 1
						-- KONSTANTERROR: [23] 18. Error Block 7 end (CF ANALYSIS FAILED)
						-- KONSTANTERROR: [31] 24. Error Block 8 start (CF ANALYSIS FAILED)
						-- KONSTANTERROR: [31] 24. Error Block 8 end (CF ANALYSIS FAILED)
					end)
					return
				end
				var413_upvw.Selectable = false
				var413_upvw.Active = false
			end
		end)
		if VRService_upvr.VREnabled then
			var413_upvw.Selectable = true
			var413_upvw.Active = true
			var441_upvw.Active = true
			GuiService_upvr.Changed:Connect(function(arg1_86) -- Line 2360
				--[[ Upvalues[2]:
					[1]: GuiService_upvr (copied, readonly)
					[2]: var413_upvw (read and write)
				]]
				-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [23] 18. Error Block 7 start (CF ANALYSIS FAILED)
				var413_upvw.ImageTransparency = 1
				var413_upvw.BackgroundTransparency = 1
				-- KONSTANTERROR: [23] 18. Error Block 7 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [31] 24. Error Block 8 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [31] 24. Error Block 8 end (CF ANALYSIS FAILED)
			end)
		else
			var413_upvw.Selectable = false
			var413_upvw.Active = false
		end
		var441_upvw.SelectionGained:Connect(function() -- Line 2381
			--[[ Upvalues[4]:
				[1]: VRService_upvr (copied, readonly)
				[2]: UserInputService_upvr (copied, readonly)
				[3]: var413_upvw (read and write)
				[4]: var414_upvw (read and write)
			]]
			local var464
			if VRService_upvr.VREnabled then
				var464 = false
			elseif UserInputService_upvr.TouchEnabled and not UserInputService_upvr.GamepadEnabled then
				var464 = false
			else
				var464 = true
			end
			if var464 then
				var464 = VRService_upvr.VREnabled
				if var464 then
					var464 = var413_upvw
					var464.ImageTransparency = 0.5
					var464 = var413_upvw
					var464.BackgroundTransparency = 1
				else
					var464 = var413_upvw
					var464.ImageTransparency = 1
					var464 = var413_upvw
					var464.BackgroundTransparency = 0.5
				end
				var464 = var414_upvw.HubRef
				if var464 then
					var464 = var414_upvw.HubRef:ScrollToFrame
					var464(var413_upvw)
				end
			end
		end)
		var441_upvw.SelectionLost:Connect(function() -- Line 2396
			--[[ Upvalues[3]:
				[1]: VRService_upvr (copied, readonly)
				[2]: UserInputService_upvr (copied, readonly)
				[3]: var413_upvw (read and write)
			]]
			local var466
			if VRService_upvr.VREnabled then
				var466 = false
			elseif UserInputService_upvr.TouchEnabled and not UserInputService_upvr.GamepadEnabled then
				var466 = false
			else
				var466 = true
			end
			if var466 then
				var466 = var413_upvw
				var466.ImageTransparency = 1
				var466 = var413_upvw
				var466.BackgroundTransparency = 1
			end
		end)
	end
	arg1:AddRow(var413_upvw, var416_upvw, var414_upvw, arg6, false)
	var414_upvw.Selection = var441_upvw
	return var413_upvw, var416_upvw, var414_upvw
end
local function AddNewRowObject(arg1, arg2, arg3, arg4) -- Line 2411
	--[[ Upvalues[8]:
		[1]: tbl_20_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: var407_upvw (read and write)
		[4]: var27_upvr (readonly)
		[5]: tbl_7_upvr (readonly)
		[6]: getViewportSize_upvr (readonly)
		[7]: GuiService_upvr (readonly)
		[8]: VRService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
	local var467 = 0
	local var468
	if tbl_20_upvr[arg1] then
		var467 = tbl_20_upvr[arg1]
	end
	local tbl_16 = {
		Name = arg2.."Frame";
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Image = "rbxasset://textures/ui/VR/rectBackgroundWhite.png";
		ScaleType = Enum.ScaleType.Slice;
	}
	var468 = 10
	tbl_16.SliceCenter = Rect.new(10, 10, var468, 10)
	tbl_16.ImageTransparency = 1
	tbl_16.Active = false
	tbl_16.AutoButtonColor = false
	var468 = 0
	tbl_16.Size = UDim2.new(1, 0, var468, var407_upvw)
	var468 = 0
	tbl_16.Position = UDim2.new(0, 0, var468, var467)
	tbl_16.ZIndex = 2
	tbl_16.Selectable = false
	tbl_16.SelectionImageObject = var27_upvr
	tbl_16.Parent = arg1.Page
	local var470_upvr = tbl_3_upvr.Create("ImageButton")(tbl_16)
	var470_upvr.ImageColor3 = var470_upvr.BackgroundColor3
	var470_upvr.SelectionGained:Connect(function() -- Line 2437
		--[[ Upvalues[1]:
			[1]: var470_upvr (readonly)
		]]
		var470_upvr.BackgroundTransparency = 0.5
	end)
	var470_upvr.SelectionLost:Connect(function() -- Line 2440
		--[[ Upvalues[1]:
			[1]: var470_upvr (readonly)
		]]
		var470_upvr.BackgroundTransparency = 1
	end)
	local tbl_15 = {}
	var468 = "Label"
	tbl_15.Name = arg2..var468
	tbl_15.Text = arg2
	tbl_15.Font = Enum.Font.SourceSansBold
	tbl_15.TextSize = 16
	var468 = 255
	tbl_15.TextColor3 = Color3.fromRGB(255, var468, 255)
	tbl_15.TextXAlignment = Enum.TextXAlignment.Left
	tbl_15.BackgroundTransparency = 1
	var468 = 200
	tbl_15.Size = UDim2.new(0, var468, 1, 0)
	local var474 = 0
	var468 = 10
	tbl_15.Position = UDim2.new(var474, var468, 0, 0)
	tbl_15.ZIndex = 2
	tbl_15.Parent = var470_upvr
	local var475_upvr = tbl_3_upvr.Create("TextLabel")(tbl_15)
	tbl_7_upvr[var470_upvr] = function(arg1_87, arg2_29) -- Line 2458, Named "onResized"
		--[[ Upvalues[1]:
			[1]: var475_upvr (readonly)
		]]
		if arg2_29 then
			var475_upvr.TextSize = 16
		else
			if false then
			else
			end
			var475_upvr.TextSize = 24
		end
	end
	var468 = getViewportSize_upvr()
	if var468.X >= var468.Y then
		var474 = false
	else
		var474 = true
	end
	if var474 then
		var468 = 16
		var475_upvr.TextSize = var468
		-- KONSTANTWARNING: GOTO [185] #137
	end
	-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [178] 131. Error Block 27 start (CF ANALYSIS FAILED)
	if false then
		var468 = 36
	else
		var468 = 24
	end
	var475_upvr.TextSize = var468
	if arg4 then
		var468 = var470_upvr.Position.X
		var468 = var470_upvr.Position.X.Offset
		var470_upvr.Position = UDim2.new(var468.Scale, var468, var470_upvr.Position.Y.Scale, var470_upvr.Position.Y.Offset + arg4)
	end
	var467 += var407_upvw
	local var476 = var467
	if arg4 then
		var476 += arg4
	end
	tbl_20_upvr[arg1] = var476
	var470_upvr.MouseEnter:Connect(function() -- Line 2479
		--[[ Upvalues[2]:
			[1]: var470_upvr (readonly)
			[2]: GuiService_upvr (copied, readonly)
		]]
		if var470_upvr.Visible then
			GuiService_upvr.SelectedCoreObject = var470_upvr
		end
	end)
	arg3.SelectionImageObject = var27_upvr
	arg3.SelectionGained:Connect(function() -- Line 2488
		--[[ Upvalues[2]:
			[1]: VRService_upvr (copied, readonly)
			[2]: var470_upvr (readonly)
		]]
		if VRService_upvr.VREnabled then
			var470_upvr.ImageTransparency = 0.5
			var470_upvr.BackgroundTransparency = 1
		else
			var470_upvr.ImageTransparency = 1
			var470_upvr.BackgroundTransparency = 0.5
		end
	end)
	arg3.SelectionLost:Connect(function() -- Line 2497
		--[[ Upvalues[1]:
			[1]: var470_upvr (readonly)
		]]
		var470_upvr.ImageTransparency = 1
		var470_upvr.BackgroundTransparency = 1
	end)
	arg3.Parent = var470_upvr
	arg1:AddRow(var470_upvr, var475_upvr, arg3, arg4, true)
	do
		return var470_upvr
	end
	-- KONSTANTERROR: [178] 131. Error Block 27 end (CF ANALYSIS FAILED)
end
local module_upvr = {
	Create = function(arg1, arg2) -- Line 2511, Named "Create"
		return function(arg1_88) -- Line 2512
			--[[ Upvalues[1]:
				[1]: arg2 (readonly)
			]]
			local any = Instance.new(arg2)
			local var490
			for i_18, v_11 in pairs(arg1_88) do
				if type(i_18) == "number" then
					v_11.Parent = any
				elseif i_18 == "Parent" then
					var490 = v_11
				else
					any[i_18] = v_11
				end
			end
			if var490 then
				any.Parent = var490
			end
			return any
		end
	end;
	RayPlaneIntersection = function(arg1, arg2, arg3, arg4) -- Line 2533, Named "RayPlaneIntersection"
		local unit = arg3.unit
		local Unit = arg2.Unit
		local any_Dot_result1 = unit:Dot(Unit.Direction)
		if any_Dot_result1 == 0 then
			return nil
		end
		local var494 = unit:Dot(arg4 - Unit.Origin) / any_Dot_result1
		if var494 < 0 then
			return nil
		end
		return Unit.Origin + Unit.Direction * var494
	end;
	GetEaseLinear = function(arg1) -- Line 2551, Named "GetEaseLinear"
		--[[ Upvalues[1]:
			[1]: Linear_upvr (readonly)
		]]
		return Linear_upvr
	end;
	GetEaseOutQuad = function(arg1) -- Line 2554, Named "GetEaseOutQuad"
		--[[ Upvalues[1]:
			[1]: EaseOutQuad_upvr (readonly)
		]]
		return EaseOutQuad_upvr
	end;
	GetEaseInOutQuad = function(arg1) -- Line 2557, Named "GetEaseInOutQuad"
		--[[ Upvalues[1]:
			[1]: EaseInOutQuad_upvr (readonly)
		]]
		return EaseInOutQuad_upvr
	end;
	CreateNewSlider = function(arg1, arg2, arg3, arg4) -- Line 2561, Named "CreateNewSlider"
		--[[ Upvalues[1]:
			[1]: CreateNewSlider (readonly)
		]]
		return CreateNewSlider(arg2, arg3, arg4)
	end;
	CreateNewSelector = function(arg1, arg2, arg3) -- Line 2565, Named "CreateNewSelector"
		--[[ Upvalues[1]:
			[1]: CreateSelector_upvr (readonly)
		]]
		return CreateSelector_upvr(arg2, arg3)
	end;
	CreateNewDropDown = function(arg1, arg2, arg3) -- Line 2569, Named "CreateNewDropDown"
		--[[ Upvalues[1]:
			[1]: CreateDropDown_upvr (readonly)
		]]
		return CreateDropDown_upvr(arg2, arg3, nil)
	end;
	AddNewRow = function(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 2573, Named "AddNewRow"
		--[[ Upvalues[1]:
			[1]: AddNewRow (readonly)
		]]
		return AddNewRow(arg2, arg3, arg4, arg5, arg6, arg7)
	end;
	AddNewRowObject = function(arg1, arg2, arg3, arg4, arg5) -- Line 2577, Named "AddNewRowObject"
		--[[ Upvalues[1]:
			[1]: AddNewRowObject (readonly)
		]]
		return AddNewRowObject(arg2, arg3, arg4, arg5)
	end;
	ShowAlert = function(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 2581, Named "ShowAlert"
		--[[ Upvalues[1]:
			[1]: ShowAlert (readonly)
		]]
		ShowAlert(arg2, arg3, arg4, arg5, arg6)
	end;
	IsSmallTouchScreen = function(arg1) -- Line 2585, Named "IsSmallTouchScreen"
		--[[ Upvalues[2]:
			[1]: getViewportSize_upvr (readonly)
			[2]: UserInputService_upvr (readonly)
		]]
		local getViewportSize_result1_8 = getViewportSize_upvr()
		local TouchEnabled_3 = UserInputService_upvr.TouchEnabled
		if TouchEnabled_3 then
			TouchEnabled_3 = true
			if getViewportSize_result1_8.Y >= 500 then
				if getViewportSize_result1_8.X >= 700 then
					TouchEnabled_3 = false
				else
					TouchEnabled_3 = true
				end
			end
		end
		return TouchEnabled_3
	end;
	IsPortrait = function(arg1) -- Line 2589, Named "IsPortrait"
		--[[ Upvalues[1]:
			[1]: getViewportSize_upvr (readonly)
		]]
		local getViewportSize_result1_7 = getViewportSize_upvr()
		local var498
		if getViewportSize_result1_7.X >= getViewportSize_result1_7.Y then
			var498 = false
		else
			var498 = true
		end
		return var498
	end;
	MakeStyledButton = function(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 2593, Named "MakeStyledButton"
		--[[ Upvalues[1]:
			[1]: MakeButton_upvr (readonly)
		]]
		return MakeButton_upvr(arg2, arg3, arg4, arg5, arg6, arg7)
	end;
	MakeStyledImageButton = function(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- Line 2597, Named "MakeStyledImageButton"
		--[[ Upvalues[1]:
			[1]: MakeImageButton_upvr (readonly)
		]]
		return MakeImageButton_upvr(arg2, arg3, arg4, arg5, arg6, arg7, arg8)
	end;
	AddButtonRow = function(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 2601, Named "AddButtonRow"
		--[[ Upvalues[1]:
			[1]: AddButtonRow (readonly)
		]]
		return AddButtonRow(arg2, arg3, arg4, arg5, arg6, arg7)
	end;
	CreateSignal = function(arg1) -- Line 2605, Named "CreateSignal"
		--[[ Upvalues[1]:
			[1]: CreateSignal (readonly)
		]]
		return CreateSignal()
	end;
	UsesSelectedObject = function(arg1) -- Line 2609, Named "UsesSelectedObject"
		--[[ Upvalues[2]:
			[1]: VRService_upvr (readonly)
			[2]: UserInputService_upvr (readonly)
		]]
		if VRService_upvr.VREnabled then
			return false
		end
		if UserInputService_upvr.TouchEnabled and not UserInputService_upvr.GamepadEnabled then
			return false
		end
		return true
	end;
	TweenProperty = function(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- Line 2613, Named "TweenProperty"
		return PropertyTweener(arg2, arg3, arg4, arg5, arg6, arg7, arg8)
	end;
	OnResized = function(arg1, arg2, arg3) -- Line 2617, Named "OnResized"
		--[[ Upvalues[1]:
			[1]: addOnResizedCallback_upvr (readonly)
		]]
		return addOnResizedCallback_upvr(arg2, arg3)
	end;
}
function module_upvr.FireOnResized(arg1) -- Line 2621
	--[[ Upvalues[3]:
		[1]: getViewportSize_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: tbl_7_upvr (readonly)
	]]
	local getViewportSize_result1_9 = getViewportSize_upvr()
	local any_IsPortrait_result1 = module_upvr:IsPortrait()
	for _, v_12 in pairs(tbl_7_upvr) do
		v_12(getViewportSize_result1_9, any_IsPortrait_result1)
	end
end
function module_upvr.Lerp(arg1, arg2, arg3, arg4) -- Line 2632
	return (1 - arg2) * arg3 + arg2 * arg4
end
function module_upvr.Round(arg1, arg2) -- Line 2637
	local var508
	local function INLINED_15() -- Internal function, doesn't exist in bytecode
		var508 = math.ceil(arg2)
		return var508
	end
	if 0.5 > arg2 % 1 or not INLINED_15() then
		var508 = math.floor(arg2)
	end
	return var508
end
return module_upvr