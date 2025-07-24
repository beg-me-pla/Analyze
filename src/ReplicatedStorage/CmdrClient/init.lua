-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:11
-- Luau version 6, Types version 3
-- Time taken: 0.002674 seconds

local RunService = game:GetService("RunService")
local StarterGui = game:GetService("StarterGui")
local Shared = script:WaitForChild("Shared")
local module_upvr = require(Shared:WaitForChild("Util"))
if RunService:IsClient() == false then
	print(RunService:IsClient())
	warn("Server scripts cannot require the client library. Please require the server library to use Cmdr in your own code.")
	return {}
end
local setmetatable_result1_upvw = setmetatable({
	ReplicatedRoot = script;
	RemoteFunction = script:WaitForChild("CmdrFunction");
	RemoteEvent = script:WaitForChild("CmdrEvent");
	ActivationKeys = {
		[Enum.KeyCode.F2] = true;
	};
	Enabled = true;
	MashToEnable = false;
	ActivationUnlocksMouse = false;
	HideOnLostFocus = true;
	PlaceName = "Cmdr";
	Util = module_upvr;
	Events = {};
}, {
	__index = function(arg1, arg2) -- Line 30, Named "__index"
		local var8_upvr = arg1.Dispatcher[arg2]
		if var8_upvr and type(var8_upvr) == "function" then
			return function(arg1_2, ...) -- Line 33
				--[[ Upvalues[2]:
					[1]: var8_upvr (readonly)
					[2]: arg1 (readonly)
				]]
				return var8_upvr(arg1.Dispatcher, ...)
			end
		end
	end;
})
setmetatable_result1_upvw.Registry = require(Shared.Registry)(setmetatable_result1_upvw)
setmetatable_result1_upvw.Dispatcher = require(Shared.Dispatcher)(setmetatable_result1_upvw)
if StarterGui:WaitForChild("Cmdr") and wait() and game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("Cmdr") == nil then
	StarterGui.Cmdr:Clone().Parent = game:GetService("Players").LocalPlayer.PlayerGui
end
local var11_upvr = require(script.CmdrInterface)(setmetatable_result1_upvw)
function setmetatable_result1_upvw.SetActivationKeys(arg1, arg2) -- Line 51
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	arg1.ActivationKeys = module_upvr.MakeDictionary(arg2)
end
function setmetatable_result1_upvw.SetPlaceName(arg1, arg2) -- Line 56
	--[[ Upvalues[1]:
		[1]: var11_upvr (readonly)
	]]
	arg1.PlaceName = arg2
	var11_upvr.Window:UpdateLabel()
end
function setmetatable_result1_upvw.SetEnabled(arg1, arg2) -- Line 62
	arg1.Enabled = arg2
end
function setmetatable_result1_upvw.SetActivationUnlocksMouse(arg1, arg2) -- Line 67
	arg1.ActivationUnlocksMouse = arg2
end
function setmetatable_result1_upvw.Show(arg1) -- Line 72
	--[[ Upvalues[1]:
		[1]: var11_upvr (readonly)
	]]
	if not arg1.Enabled then
	else
		var11_upvr.Window:Show()
	end
end
function setmetatable_result1_upvw.Hide(arg1) -- Line 81
	--[[ Upvalues[1]:
		[1]: var11_upvr (readonly)
	]]
	var11_upvr.Window:Hide()
end
function setmetatable_result1_upvw.Toggle(arg1) -- Line 86
	--[[ Upvalues[1]:
		[1]: var11_upvr (readonly)
	]]
	if not arg1.Enabled then
		return arg1:Hide()
	end
	var11_upvr.Window:SetVisible(not var11_upvr.Window:IsVisible())
end
function setmetatable_result1_upvw.SetMashToEnable(arg1, arg2) -- Line 95
	arg1.MashToEnable = arg2
	if arg2 then
		arg1:SetEnabled(false)
	end
end
function setmetatable_result1_upvw.SetHideOnLostFocus(arg1, arg2) -- Line 104
	arg1.HideOnLostFocus = arg2
end
function setmetatable_result1_upvw.HandleEvent(arg1, arg2, arg3) -- Line 109
	arg1.Events[arg2] = arg3
end
if RunService:IsServer() == false then
	setmetatable_result1_upvw.Registry:RegisterTypesIn(script:WaitForChild("Types"))
	setmetatable_result1_upvw.Registry:RegisterCommandsIn(script:WaitForChild("Commands"))
end
setmetatable_result1_upvw.RemoteEvent.OnClientEvent:Connect(function(arg1, ...) -- Line 120
	--[[ Upvalues[1]:
		[1]: setmetatable_result1_upvw (read and write)
	]]
	if setmetatable_result1_upvw.Events[arg1] then
		setmetatable_result1_upvw.Events[arg1](...)
	end
end)
require(script.DefaultEventHandlers)(setmetatable_result1_upvw)
return setmetatable_result1_upvw