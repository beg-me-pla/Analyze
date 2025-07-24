-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:33:07
-- Luau version 6, Types version 3
-- Time taken: 0.002204 seconds

local tbl_2_upvr = {Color3.fromHex("#ff50b3"), Color3.fromHex("#fff94a"), Color3.fromHex("#49ff46"), Color3.fromHex("#4ee2ff"), Color3.fromHex("#ff4646")}
local TweenService_upvr = game:GetService("TweenService")
local TweenInfo_new_result1_upvr_2 = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
local TweenInfo_new_result1_upvr = TweenInfo.new(2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
workspace:GetAttributeChangedSignal("DiscoEvent"):Connect(function() -- Line 24
	--[[ Upvalues[3]:
		[1]: TweenService_upvr (readonly)
		[2]: TweenInfo_new_result1_upvr_2 (readonly)
		[3]: TweenInfo_new_result1_upvr (readonly)
	]]
	local _
	if workspace:GetAttribute("DiscoEvent") then
		TweenService_upvr:Create(game.Lighting.ColorCorrection, TweenInfo_new_result1_upvr_2, {
			Saturation = 0.3;
		}):Play()
		if workspace:GetAttribute("DiscoEvent") then
			for i, v in {Color3.fromHex("#FF007F"), Color3.fromHex("#FFD700"), Color3.fromHex("#00FFFF"), Color3.fromHex("#7FFF00"), Color3.fromHex("#8A2BE2")} do
				local tbl = {
					ColorShift_Top = v;
				}
				task.wait(1)
				if not workspace:GetAttribute("DiscoEvent") then break end
			end
			-- KONSTANTWARNING: GOTO [53] #40
		end
	else
		if TweenService_upvr:Create(game.Lighting, TweenInfo_new_result1_upvr, tbl):Play() then
			TweenService_upvr:Create(game.Lighting, TweenInfo_new_result1_upvr, tbl):Play():Cancel()
		end
		v = game
		i = v.Lighting
		i = TweenInfo_new_result1_upvr_2
		v = {}
		local var12 = v
		var12.Saturation = 0
		TweenService_upvr:Create(i.ColorCorrection, i, var12):Play()
		task.delay(1.5, function() -- Line 57
			--[[ Upvalues[2]:
				[1]: TweenService_upvr (copied, readonly)
				[2]: TweenInfo_new_result1_upvr_2 (copied, readonly)
			]]
			TweenService_upvr:Create(game.Lighting, TweenInfo_new_result1_upvr_2, {
				ColorShift_Top = Color3.fromRGB(0, 0, 0);
			}):Play()
		end)
	end
end)
local CollectionService_upvr = game:GetService("CollectionService")
local var17_upvw = 1
task.spawn(function() -- Line 63
	--[[ Upvalues[3]:
		[1]: CollectionService_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: var17_upvw (read and write)
	]]
	while true do
		for _, v_2 in CollectionService_upvr:GetTagged("Discofied"), nil do
			v_2.Color = tbl_2_upvr[var17_upvw]
			local _
		end
		task.wait(1)
		var17_upvw += 1
		if 5 < var17_upvw then
			var17_upvw = 1
		end
	end
end)
game.ReplicatedStorage.GameEvents.DiscoSetColor_RE.OnClientEvent:Connect(function(arg1) -- Line 83
	if not arg1 then
	else
		for _, var29 in arg1 do
			local Part_2 = var29.Part
			if Part_2 then
				local Color_2 = var29.Color
				if Color_2 then
					Part_2.Color = Color_2
				end
			end
		end
	end
end)