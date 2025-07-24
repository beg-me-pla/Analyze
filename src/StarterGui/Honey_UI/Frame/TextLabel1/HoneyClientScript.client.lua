-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:55
-- Luau version 6, Types version 3
-- Time taken: 0.003641 seconds

local TweenService_upvr = game:GetService("TweenService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local DataService_upvr = require(ReplicatedStorage.Modules.DataService)
local SpecialCurrencyUIOverlap = workspace:FindFirstChild("SpecialCurrencyUIOverlap", true)
local var6_upvw = false
local Parent_upvr_2 = script.Parent.Parent
local Parent_upvr = script.Parent
local val_upvr = Parent_upvr.val
local module_upvr = require(game.ReplicatedStorage:WaitForChild("Comma_Module"))
local TweenInfo_new_result1_upvr = TweenInfo.new(0.7, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local function updateValue_upvr() -- Line 36, Named "updateValue"
	--[[ Upvalues[6]:
		[1]: Parent_upvr_2 (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: val_upvr (readonly)
		[4]: TweenInfo_new_result1_upvr (readonly)
		[5]: DataService_upvr (readonly)
		[6]: var6_upvw (read and write)
	]]
	Parent_upvr_2.Visible = true
	TweenService_upvr:Create(val_upvr, TweenInfo_new_result1_upvr, {
		Value = DataService_upvr:GetData().SpecialCurrency.Honey or 0;
	}):Play()
	task.wait(4)
	Parent_upvr_2.Visible = var6_upvw
end
local Appear_Effect_upvr = game.ReplicatedStorage:WaitForChild("Appear_Effect")
local Debris_upvr = game:GetService("Debris")
local SoundService_upvr = game:GetService("SoundService")
local function showEffect_upvr(arg1, arg2) -- Line 49, Named "showEffect"
	--[[ Upvalues[6]:
		[1]: module_upvr (readonly)
		[2]: Appear_Effect_upvr (readonly)
		[3]: Parent_upvr (readonly)
		[4]: TweenService_upvr (readonly)
		[5]: Debris_upvr (readonly)
		[6]: SoundService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local TweenInfo_new_result1 = TweenInfo.new(math.random(7, 11) * 0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	local clone = Appear_Effect_upvr:Clone()
	clone.Parent = Parent_upvr.Parent
	clone.Position = Parent_upvr.Position
	local var18
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var18 = Color3.new(1, 1, 0)
		return var18
	end
	if not arg2 or not INLINED() then
		var18 = Color3.new(1, 0, 0)
	end
	clone.TextColor3 = var18
	if arg2 then
	else
	end
	var18 = '-'..module_upvr.Comma(arg1)..""
	clone.Text = var18
	if arg2 then
		var18 = 0.1
	else
		var18 = math.random(4, 7) * 0.01
	end
	TweenService_upvr:Create(clone, TweenInfo_new_result1, {
		Position = clone.Position - UDim2.new(0, 0, var18, 0);
	}):Play()
	TweenService_upvr:Create(clone, TweenInfo_new_result1, {
		TextTransparency = 1;
		TextStrokeTransparency = 1;
	}):Play()
	Debris_upvr:AddItem(clone, TweenInfo_new_result1.Time)
	local Cash_Register = SoundService_upvr:FindFirstChild("Cash Register")
	if Cash_Register then
		Cash_Register.TimePosition = 0
		Cash_Register.PlaybackSpeed = 1 + math.random(-15, 15) / 100
		Cash_Register:Play()
	end
end
ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("ShecklesClient").OnClientEvent:Connect(function(arg1) -- Line 79
end)
val_upvr:GetPropertyChangedSignal("Value"):Connect(function() -- Line 88
	--[[ Upvalues[3]:
		[1]: Parent_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: val_upvr (readonly)
	]]
	Parent_upvr.Text = module_upvr.Comma(tostring(math.round(val_upvr.Value)))..""
end)
if not game:GetService("UserInputService").GamepadEnabled then
end
updateValue_upvr()
local var25_upvw = DataService_upvr:GetData().SpecialCurrency.Honey or 0
DataService_upvr:GetPathSignal("SpecialCurrency"):Connect(function() -- Line 105
	--[[ Upvalues[4]:
		[1]: DataService_upvr (readonly)
		[2]: var25_upvw (read and write)
		[3]: showEffect_upvr (readonly)
		[4]: updateValue_upvr (readonly)
	]]
	local var26 = DataService_upvr:GetData().SpecialCurrency.Honey or 0
	local var27
	if var25_upvw == var26 then
	else
		local absolute = math.abs(var26 - var25_upvw)
		if absolute == 0 then return end
		if var25_upvw >= var26 then
			var27 = false
		else
			var27 = true
		end
		showEffect_upvr(absolute, var27)
		var25_upvw = var26
		updateValue_upvr()
	end
end)
SpecialCurrencyUIOverlap.Touched:Connect(function(arg1) -- Line 119, Named "onTouch"
	--[[ Upvalues[3]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: Parent_upvr_2 (readonly)
		[3]: var6_upvw (read and write)
	]]
	if arg1.Parent == LocalPlayer_upvr.character then
		Parent_upvr_2.Visible = true
		var6_upvw = true
	end
end)
SpecialCurrencyUIOverlap.TouchEnded:Connect(function(arg1) -- Line 129, Named "onTouchEnded"
	--[[ Upvalues[3]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: Parent_upvr_2 (readonly)
		[3]: var6_upvw (read and write)
	]]
	if arg1.Parent == LocalPlayer_upvr.character then
		Parent_upvr_2.Visible = false
		var6_upvw = false
	end
end)