-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:29
-- Luau version 6, Types version 3
-- Time taken: 0.002391 seconds

local module = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local InsertionPoint_upvr = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Notifications").InsertionPoint
local var4_upvw = 0
local NotificationTemplate_upvr = InsertionPoint_upvr:WaitForChild("NotificationTemplate")
local WaitForDescendant_upvr = require(ReplicatedStorage.Modules.WaitForDescendant)
local TweenService_upvr = game:GetService("TweenService")
local SetupHoverAnimations_upvr = require(ReplicatedStorage.Modules.SetupHoverAnimations)
local PlayHoverSound_upvr = require(ReplicatedStorage.Modules.PlayHoverSound)
function module.CreateNotification(arg1, arg2) -- Line 39
	--[[ Upvalues[7]:
		[1]: var4_upvw (read and write)
		[2]: NotificationTemplate_upvr (readonly)
		[3]: WaitForDescendant_upvr (readonly)
		[4]: TweenService_upvr (readonly)
		[5]: SetupHoverAnimations_upvr (readonly)
		[6]: PlayHoverSound_upvr (readonly)
		[7]: InsertionPoint_upvr (readonly)
	]]
	var4_upvw += 1
	local Id = arg2.Id
	if not Id then
		Id = var4_upvw
	end
	arg2.Id = Id
	if not arg2.EnabledComponents then
		local tbl = {
			OptionSet = true;
			Confirm = true;
			Decline = true;
			IconSet = true;
		}
	end
	local clone_upvr = NotificationTemplate_upvr:Clone()
	clone_upvr.Visible = true
	local UIScale_upvr = clone_upvr:WaitForChild("UIScale")
	WaitForDescendant_upvr(clone_upvr, "NOTIFICATION_TEXT").Text = arg2.Text or "Notification Text!"
	WaitForDescendant_upvr(clone_upvr, "NOTIFICATION_ICON").Image = arg2.Icon or "rbxassetid://13488010851"
	local WaitForDescendant_upvr_result1 = WaitForDescendant_upvr(clone_upvr, "NOTIFICATION_OPTION_SET")
	local WaitForDescendant_upvr_result1_2 = WaitForDescendant_upvr(WaitForDescendant_upvr_result1, "NOTIFICATION_CONFIRM")
	local var6_result1 = WaitForDescendant_upvr(WaitForDescendant_upvr_result1, "NOTIFICATION_DECLINE")
	WaitForDescendant_upvr_result1.Visible = tbl.OptionSet
	WaitForDescendant_upvr_result1_2.Parent.Visible = tbl.Confirm
	local function _() -- Line 77, Named "Show"
		--[[ Upvalues[2]:
			[1]: TweenService_upvr (copied, readonly)
			[2]: UIScale_upvr (readonly)
		]]
		TweenService_upvr:Create(UIScale_upvr, TweenInfo.new(0.2), {
			Scale = 1.5;
		}):Play()
	end
	local function HideAndDestroy_upvr() -- Line 83, Named "HideAndDestroy"
		--[[ Upvalues[3]:
			[1]: TweenService_upvr (copied, readonly)
			[2]: UIScale_upvr (readonly)
			[3]: clone_upvr (readonly)
		]]
		local any_Create_result1 = TweenService_upvr:Create(UIScale_upvr, TweenInfo.new(0.2), {
			Scale = 0;
		})
		any_Create_result1:Play()
		any_Create_result1.Completed:Once(function() -- Line 89
			--[[ Upvalues[1]:
				[1]: clone_upvr (copied, readonly)
			]]
			clone_upvr:Destroy()
		end)
	end
	if tbl.Confirm then
		local var8_result1 = SetupHoverAnimations_upvr(WaitForDescendant_upvr_result1_2)
		var8_result1.MouseEnter:Connect(function() -- Line 99
			--[[ Upvalues[1]:
				[1]: PlayHoverSound_upvr (copied, readonly)
			]]
			PlayHoverSound_upvr()
		end)
		local OnConfirm_upvr = arg2.OnConfirm
		var8_result1.MouseButton1Down:Connect(function() -- Line 103
			--[[ Upvalues[3]:
				[1]: OnConfirm_upvr (readonly)
				[2]: arg2 (readonly)
				[3]: HideAndDestroy_upvr (readonly)
			]]
			if OnConfirm_upvr then
				OnConfirm_upvr(arg2)
			end
			HideAndDestroy_upvr()
		end)
	end
	OnConfirm_upvr = tbl.Decline
	var6_result1.Parent.Visible = OnConfirm_upvr
	if tbl.Decline then
		OnConfirm_upvr = var6_result1
		local SetupHoverAnimations_upvr_result1 = SetupHoverAnimations_upvr(OnConfirm_upvr)
		OnConfirm_upvr = arg2.OnDecline
		SetupHoverAnimations_upvr_result1.MouseEnter:Connect(function() -- Line 116
			--[[ Upvalues[1]:
				[1]: PlayHoverSound_upvr (copied, readonly)
			]]
			PlayHoverSound_upvr()
		end)
		SetupHoverAnimations_upvr_result1.MouseButton1Down:Connect(function() -- Line 120
			--[[ Upvalues[3]:
				[1]: OnConfirm_upvr (readonly)
				[2]: arg2 (readonly)
				[3]: HideAndDestroy_upvr (readonly)
			]]
			if OnConfirm_upvr then
				OnConfirm_upvr(arg2)
			end
			HideAndDestroy_upvr()
		end)
	end
	WaitForDescendant_upvr(clone_upvr, "NOTIFICATION_ICON_SET").Visible = tbl.IconSet
	clone_upvr.Parent = InsertionPoint_upvr
	TweenService_upvr:Create(UIScale_upvr, TweenInfo.new(0.2), {
		Scale = 1.5;
	}):Play()
	local Lifetime = arg2.Lifetime
	if Lifetime then
		OnConfirm_upvr = task.delay
		OnConfirm_upvr(Lifetime, function() -- Line 134
			--[[ Upvalues[1]:
				[1]: HideAndDestroy_upvr (readonly)
			]]
			HideAndDestroy_upvr()
		end)
	end
	return arg2
end
return module