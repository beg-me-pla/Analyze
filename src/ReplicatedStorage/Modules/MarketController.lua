-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:22
-- Luau version 6, Types version 3
-- Time taken: 0.006097 seconds

local MarketplaceService_upvr = game:GetService("MarketplaceService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remotes_upvr = require(ReplicatedStorage.Modules.Remotes)
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local module_upvr = {
	PromptProductPurchaseInitiated = require(ReplicatedStorage.Modules.Signal).new();
}
local tbl_upvr_2 = {}
local Comma_Module_upvr = require(ReplicatedStorage.Comma_Module)
local function update_upvr(arg1) -- Line 31, Named "update"
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: Comma_Module_upvr (readonly)
	]]
	if arg1:IsA("ProximityPrompt") then
		arg1.ObjectText = "???"
	else
		arg1.Text = "???"
	end
	local ProductId = arg1:GetAttribute("ProductId")
	if ProductId == nil then
	else
		local any_GetProductInfo_result1, any_GetProductInfo_result2 = module_upvr:GetProductInfo(ProductId, Enum.InfoType.Product)
		if not any_GetProductInfo_result1 then
			if arg1:IsA("ProximityPrompt") then
				arg1.ObjectText = "Failed to load"
			else
				arg1.Text = "Failed to load"
			end
		end
		local string_gsub_result1 = string.gsub(string.gsub(string.gsub(arg1:GetAttribute("Format") or ":robux::value:", ":robux:", ""), ":value:", Comma_Module_upvr.Comma(any_GetProductInfo_result2.PriceInRobux)), ":rawvalue:", any_GetProductInfo_result2.PriceInRobux)
		if arg1:IsA("ProximityPrompt") then
			arg1.ObjectText = string_gsub_result1
			return
		end
		arg1.Text = string_gsub_result1
	end
end
local function requestUpdate_upvr(arg1) -- Line 65, Named "requestUpdate"
	--[[ Upvalues[2]:
		[1]: tbl_upvr_2 (readonly)
		[2]: update_upvr (readonly)
	]]
	local var16
	for _, v in var16 do
		if v.instance == arg1 then return end
	end
	if arg1:IsA("TextLabel") or arg1:IsA("TextButton") then
		var16 = arg1:FindFirstAncestorWhichIsA("LayerCollector")
	else
		var16 = nil
	end
	if var16 and not var16.Enabled then
		local tbl = {
			screenGui = var16;
		}
		tbl.instance = arg1
		table.insert(tbl_upvr_2, tbl)
	else
		task.spawn(update_upvr, arg1)
	end
end
local function removeFromRequest_upvr(arg1) -- Line 86, Named "removeFromRequest"
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	for i_2 = #tbl_upvr_2, 1, -1 do
		if tbl_upvr_2[i_2].instance == arg1 then
			table.remove(tbl_upvr_2, i_2)
		end
	end
end
local tbl_upvr = {}
local var20_upvw = 0
local RetryPcall_upvr = require(ReplicatedStorage.Modules.RetryPcall)
function module_upvr.GetProductInfo(arg1, arg2, arg3, arg4) -- Line 108
	--[[ Upvalues[4]:
		[1]: tbl_upvr (readonly)
		[2]: var20_upvw (read and write)
		[3]: RetryPcall_upvr (readonly)
		[4]: MarketplaceService_upvr (readonly)
	]]
	while true do
		local var22 = tbl_upvr[tostring(arg2)]
		if not var22 then break end
		if not var22.fetching then break end
		task.wait(1)
	end
	local var23 = tbl_upvr[tostring(arg2)]
	if var23 and not var23.fetching and var23.success then
		return true, var23.data
	end
	var20_upvw += 1
	task.delay(60, function() -- Line 124
		--[[ Upvalues[1]:
			[1]: var20_upvw (copied, read and write)
		]]
		var20_upvw -= 1
	end)
	while 36 < var20_upvw do
		task.wait(1)
	end
	tbl_upvr[tostring(arg2)] = {
		fetching = true;
		timestamp = workspace:GetServerTimeNow();
	}
	local var21_result1, RetryPcall_upvr_result2 = RetryPcall_upvr(arg4 or 10, 30, function() -- Line 139
		--[[ Upvalues[3]:
			[1]: MarketplaceService_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: arg3 (readonly)
		]]
		return MarketplaceService_upvr:GetProductInfo(arg2, arg3)
	end)
	if not var21_result1 or RetryPcall_upvr_result2 == nil then
		tbl_upvr[tostring(arg2)] = nil
		return false, nil
	end
	tbl_upvr[tostring(arg2)] = {
		fetching = false;
		timestamp = workspace:GetServerTimeNow();
		success = true;
		data = RetryPcall_upvr_result2;
	}
	task.delay(180, function() -- Line 156
		--[[ Upvalues[2]:
			[1]: tbl_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		tbl_upvr[tostring(arg2)] = nil
	end)
	return true, RetryPcall_upvr_result2
end
local Notification_upvr = require(ReplicatedStorage.Modules.Notification)
function module_upvr.PromptPurchase(arg1, arg2, arg3) -- Line 163
	--[[ Upvalues[5]:
		[1]: Notification_upvr (readonly)
		[2]: Remotes_upvr (readonly)
		[3]: module_upvr (readonly)
		[4]: LocalPlayer_upvr (readonly)
		[5]: MarketplaceService_upvr (readonly)
	]]
	if arg3 == Enum.InfoType.Product then
		if workspace:GetAttribute("AllowFakePurchases") then
			Notification_upvr:CreateNotification(`Invoking fake purchase for "{arg2}"`)
			task.wait(0.5)
			Remotes_upvr.Market.FakePurchase.send(arg2)
			task.wait(1)
		else
			module_upvr.PromptProductPurchaseInitiated:Fire(LocalPlayer_upvr, arg2)
			MarketplaceService_upvr:PromptProductPurchase(LocalPlayer_upvr, arg2)
		end
	end
	if arg3 == Enum.InfoType.GamePass then
		MarketplaceService_upvr:PromptGamePassPurchase(LocalPlayer_upvr, arg2)
	else
		if arg3 == Enum.InfoType.Asset then
			MarketplaceService_upvr:PromptPurchase(LocalPlayer_upvr, arg2)
			return
		end
		if arg3 == Enum.InfoType.Bundle then
			MarketplaceService_upvr:PromptBundlePurchase(LocalPlayer_upvr, arg2)
		end
	end
end
function module_upvr.RemovePriceLabel(arg1, arg2) -- Line 184
	arg2:RemoveTag("PriceLabel")
end
function module_upvr.SetPriceLabel(arg1, arg2, arg3, arg4) -- Line 188
	--[[ Upvalues[1]:
		[1]: requestUpdate_upvr (readonly)
	]]
	arg2:SetAttribute("Format", ":robux::value:")
	arg2:SetAttribute("ProductId", arg3)
	arg2:AddTag("PriceLabel")
	requestUpdate_upvr(arg2)
end
local Observers_upvr = require(ReplicatedStorage.Modules.Observers)
local PlayerGui_upvr = LocalPlayer_upvr.PlayerGui
function module_upvr.Start(arg1) -- Line 195
	--[[ Upvalues[8]:
		[1]: Remotes_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Observers_upvr (readonly)
		[4]: requestUpdate_upvr (readonly)
		[5]: removeFromRequest_upvr (readonly)
		[6]: tbl_upvr_2 (readonly)
		[7]: update_upvr (readonly)
		[8]: PlayerGui_upvr (readonly)
	]]
	Remotes_upvr.Market.PromptPurchase.listen(function(arg1_2) -- Line 196
		--[[ Upvalues[1]:
			[1]: module_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 23 start (CF ANALYSIS FAILED)
		local var37
		if arg1_2.type == 1 then
			var37 = Enum.InfoType.Product
			-- KONSTANTWARNING: GOTO [28] #17
		end
		-- KONSTANTERROR: [0] 1. Error Block 23 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [8] 6. Error Block 24 start (CF ANALYSIS FAILED)
		if arg1_2.type == 2 then
			var37 = Enum.InfoType.GamePass
		elseif arg1_2.type == 3 then
			var37 = Enum.InfoType.Asset
		elseif arg1_2.type == 4 then
			var37 = Enum.InfoType.Bundle
		end
		if not var37 then
		else
			module_upvr:PromptPurchase(arg1_2.id, var37)
			-- KONSTANTERROR: [8] 6. Error Block 24 end (CF ANALYSIS FAILED)
		end
	end)
	Observers_upvr.observeTag("PriceLabel", function(arg1_3) -- Line 215
		--[[ Upvalues[3]:
			[1]: Observers_upvr (copied, readonly)
			[2]: requestUpdate_upvr (copied, readonly)
			[3]: removeFromRequest_upvr (copied, readonly)
		]]
		if not arg1_3:IsA("TextButton") and not arg1_3:IsA("TextLabel") and not arg1_3:IsA("ProximityPrompt") then
			return nil
		end
		return Observers_upvr.observeAttribute(arg1_3, "ProductId", function(arg1_4) -- Line 220
			--[[ Upvalues[3]:
				[1]: requestUpdate_upvr (copied, readonly)
				[2]: arg1_3 (readonly)
				[3]: removeFromRequest_upvr (copied, readonly)
			]]
			requestUpdate_upvr(arg1_3)
			return function() -- Line 223
				--[[ Upvalues[2]:
					[1]: removeFromRequest_upvr (copied, readonly)
					[2]: arg1_3 (copied, readonly)
				]]
				removeFromRequest_upvr(arg1_3)
			end
		end)
	end)
	PlayerGui_upvr.ChildAdded:Connect(function(arg1_5) -- Line 229, Named "onGuiAdded"
		--[[ Upvalues[2]:
			[1]: tbl_upvr_2 (copied, readonly)
			[2]: update_upvr (copied, readonly)
		]]
		if not arg1_5:IsA("LayerCollector") then
		else
			arg1_5:GetPropertyChangedSignal("Enabled"):Connect(function() -- Line 234
				--[[ Upvalues[3]:
					[1]: arg1_5 (readonly)
					[2]: tbl_upvr_2 (copied, readonly)
					[3]: update_upvr (copied, readonly)
				]]
				if not arg1_5.Enabled then
				else
					for var42 = #tbl_upvr_2, 1, -1 do
						local var43 = tbl_upvr_2[var42]
						if var43.screenGui == arg1_5 then
							task.spawn(update_upvr, var43.instance)
						end
					end
				end
			end)
		end
	end)
	for _, v_2_upvr in PlayerGui_upvr:GetChildren() do
		if not v_2_upvr:IsA("LayerCollector") then
		else
			v_2_upvr:GetPropertyChangedSignal("Enabled"):Connect(function() -- Line 234
				--[[ Upvalues[3]:
					[1]: v_2_upvr (readonly)
					[2]: tbl_upvr_2 (copied, readonly)
					[3]: update_upvr (copied, readonly)
				]]
				if not v_2_upvr.Enabled then
				else
					for var48 = #tbl_upvr_2, 1, -1 do
						local var49 = tbl_upvr_2[var48]
						if var49.screenGui == v_2_upvr then
							task.spawn(update_upvr, var49.instance)
						end
					end
				end
			end)
		end
	end
end
task.spawn(module_upvr.Start, module_upvr)
return module_upvr