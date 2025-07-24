-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:27
-- Luau version 6, Types version 3
-- Time taken: 0.000607 seconds

local CurrentCamera_upvw = workspace.CurrentCamera
workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function() -- Line 5
	--[[ Upvalues[1]:
		[1]: CurrentCamera_upvw (read and write)
	]]
	CurrentCamera_upvw = workspace.CurrentCamera
end)
local UserInputService_upvr = game:GetService("UserInputService")
local GuiService_upvr = game:GetService("GuiService")
return function(arg1, arg2) -- Line 9, Named "GetMouseToWorld"
	--[[ Upvalues[3]:
		[1]: UserInputService_upvr (readonly)
		[2]: GuiService_upvr (readonly)
		[3]: CurrentCamera_upvw (read and write)
	]]
	local any_GetMouseLocation_result1 = UserInputService_upvr:GetMouseLocation()
	local any_GetGuiInset_result1 = GuiService_upvr:GetGuiInset()
	local any_ScreenPointToRay_result1 = CurrentCamera_upvw:ScreenPointToRay(any_GetMouseLocation_result1.X + any_GetGuiInset_result1.X, any_GetMouseLocation_result1.Y - any_GetGuiInset_result1.Y)
	return workspace:Raycast(any_ScreenPointToRay_result1.Origin, any_ScreenPointToRay_result1.Direction * (arg2 or 1000), arg1)
end