-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:35
-- Luau version 6, Types version 3
-- Time taken: 0.064362 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remotes_upvr = require(ReplicatedStorage.Modules.Remotes)
local FastTween_upvr = require(ReplicatedStorage.Modules.FastTween)
local RollCrate_UI_upvr = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("RollCrate_UI")
local Frame_upvr = RollCrate_UI_upvr.Frame
local Rolled_upvr = Frame_upvr.Rolled
local Spinner_upvr = Frame_upvr.Section.Spinner
local table_create_result1_upvr = table.create(150)
local var9_upvw = false
local module = {}
local function _(arg1) -- Line 42, Named "isRainbow"
	local var16 = true
	if arg1 ~= "RainbowSeedSackPremium" then
		var16 = true
		if arg1 ~= "RainbowSeedSackBasic" then
			var16 = true
			if arg1 ~= "Rainbow Exotic Flower Seed Pack" then
				var16 = true
				if arg1 ~= "Rainbow Exotic Crafters Seed Pack" then
					var16 = true
					if arg1 ~= "Rainbow Exotic Summer Seed Pack" then
						var16 = true
						if arg1 ~= "Rainbow Exotic Ancient Seed Pack" then
							if arg1 ~= "Rainbow Exotic Zen Seed Pack" then
								var16 = false
							else
								var16 = true
							end
						end
					end
				end
			end
		end
	end
	return var16
end
local function tweenHolder_upvr(arg1, arg2) -- Line 48, Named "tweenHolder"
	--[[ Upvalues[2]:
		[1]: Frame_upvr (readonly)
		[2]: FastTween_upvr (readonly)
	]]
	if arg1 then
		if arg2 then
			Frame_upvr.Position = UDim2.fromScale(0.5, 0.5)
		else
			Frame_upvr.Position = UDim2.fromScale(0.5, 1.5)
			FastTween_upvr(Frame_upvr, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
				Position = UDim2.fromScale(0.5, 0.5);
			})
		end
	end
	if arg2 then
		Frame_upvr.Position = UDim2.fromScale(0.5, 1.5)
	else
		Frame_upvr.Position = UDim2.fromScale(0.5, 0.5)
		FastTween_upvr(Frame_upvr, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {
			Position = UDim2.fromScale(0.5, 1.5);
		})
	end
end
local function tweenRolled_upvr(arg1, arg2) -- Line 70, Named "tweenRolled"
	--[[ Upvalues[2]:
		[1]: Rolled_upvr (readonly)
		[2]: FastTween_upvr (readonly)
	]]
	if arg1 then
		if arg2 then
			Rolled_upvr.ImageTransparency = 0
			Rolled_upvr.Label.TextTransparency = 0
			Rolled_upvr.Label.UIStroke.Transparency = 0
		else
			local TweenInfo_new_result1_2 = TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
			Rolled_upvr.ImageTransparency = 1
			Rolled_upvr.Label.TextTransparency = 1
			Rolled_upvr.Label.UIStroke.Transparency = 1
			FastTween_upvr(Rolled_upvr, TweenInfo_new_result1_2, {
				ImageTransparency = 0;
			})
			FastTween_upvr(Rolled_upvr.Label, TweenInfo_new_result1_2, {
				TextTransparency = 0;
			})
			FastTween_upvr(Rolled_upvr.Label.UIStroke, TweenInfo_new_result1_2, {
				Transparency = 0;
			})
		end
	end
	if arg2 then
		Rolled_upvr.ImageTransparency = 1
		Rolled_upvr.Label.TextTransparency = 1
		Rolled_upvr.Label.UIStroke.Transparency = 1
	else
		local TweenInfo_new_result1 = TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
		Rolled_upvr.ImageTransparency = 0
		Rolled_upvr.Label.TextTransparency = 0
		Rolled_upvr.Label.UIStroke.Transparency = 0
		FastTween_upvr(Rolled_upvr, TweenInfo_new_result1, {
			ImageTransparency = 1;
		})
		FastTween_upvr(Rolled_upvr.Label, TweenInfo_new_result1, {
			TextTransparency = 1;
		})
		FastTween_upvr(Rolled_upvr.Label.UIStroke, TweenInfo_new_result1, {
			Transparency = 1;
		})
	end
end
local var27_upvw = false
local SeedPackData_upvr = require(ReplicatedStorage.Data.SeedPackData)
local WeightRandom_upvr = require(ReplicatedStorage.Modules.WeightRandom)
local SeedData_upvr = require(ReplicatedStorage.Data.SeedData)
local Item_Module_upvr = require(ReplicatedStorage.Item_Module)
local SoundService_upvr = game:GetService("SoundService")
local TweenService_upvr = game:GetService("TweenService")
local Shake_upvr = require(ReplicatedStorage.Modules.Shake)
local RunService_upvr = game:GetService("RunService")
local function spinAction_upvr(arg1) -- Line 122, Named "spinAction"
	--[[ Upvalues[17]:
		[1]: var27_upvw (read and write)
		[2]: RollCrate_UI_upvr (readonly)
		[3]: tweenHolder_upvr (readonly)
		[4]: Frame_upvr (readonly)
		[5]: SeedPackData_upvr (readonly)
		[6]: Rolled_upvr (readonly)
		[7]: WeightRandom_upvr (readonly)
		[8]: table_create_result1_upvr (readonly)
		[9]: SeedData_upvr (readonly)
		[10]: Item_Module_upvr (readonly)
		[11]: SoundService_upvr (readonly)
		[12]: Spinner_upvr (readonly)
		[13]: TweenService_upvr (readonly)
		[14]: FastTween_upvr (readonly)
		[15]: Shake_upvr (readonly)
		[16]: RunService_upvr (readonly)
		[17]: tweenRolled_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var529 = var27_upvw
	local var530 = false
	RollCrate_UI_upvr.Enabled = true
	tweenHolder_upvr(true, var529)
	Frame_upvr.Visible = true
	local const_number_5 = 140
	local seedPackType_3 = arg1.seedPackType
	local var533 = true
	if seedPackType_3 ~= "RainbowSeedSackPremium" then
		var533 = true
		if seedPackType_3 ~= "RainbowSeedSackBasic" then
			var533 = true
			if seedPackType_3 ~= "Rainbow Exotic Flower Seed Pack" then
				var533 = true
				if seedPackType_3 ~= "Rainbow Exotic Crafters Seed Pack" then
					var533 = true
					if seedPackType_3 ~= "Rainbow Exotic Summer Seed Pack" then
						var533 = true
						if seedPackType_3 ~= "Rainbow Exotic Ancient Seed Pack" then
							if seedPackType_3 ~= "Rainbow Exotic Zen Seed Pack" then
								var533 = false
							else
								var533 = true
							end
						end
					end
				end
			end
		end
	end
	if var533 then
		local _ = "Rainbow"
	elseif string.find(arg1.seedPackType, "Night") then
	else
	end
	local Items_5 = SeedPackData_upvr.Packs[arg1.seedPackType].Items
	local var536 = Items_5[arg1.resultIndex]
	for _, v in Frame_upvr.Decorations:GetChildren() do
		local var540
		if v.Name ~= "Normal" then
			var540 = false
		else
			var540 = true
		end
		v.Visible = var540
	end
	for _, v_2 in Rolled_upvr.Decorations:GetChildren() do
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if v_2.Name ~= "Normal" then
			var540 = false
		else
			var540 = true
		end
		v_2.Visible = var540
	end
	if var536.Type == "Pack" then
		local RewardId_8 = var536.RewardId
		local var545 = true
		if RewardId_8 ~= "RainbowSeedSackPremium" then
			var545 = true
			if RewardId_8 ~= "RainbowSeedSackBasic" then
				var545 = true
				if RewardId_8 ~= "Rainbow Exotic Flower Seed Pack" then
					var545 = true
					if RewardId_8 ~= "Rainbow Exotic Crafters Seed Pack" then
						var545 = true
						if RewardId_8 ~= "Rainbow Exotic Summer Seed Pack" then
							var545 = true
							if RewardId_8 ~= "Rainbow Exotic Ancient Seed Pack" then
								if RewardId_8 ~= "Rainbow Exotic Zen Seed Pack" then
									var545 = false
								else
									var545 = true
								end
							end
						end
					end
				end
			end
		end
		if var545 then
			var530 = true
		end
	end
	for i_3 = 1, 150 do
		local var546
		if i_3 == const_number_5 then
		else
			var540 = WeightRandom_upvr.array
			var546 = Random.new()
			var540 = var540(Items_5, var546)
		end
		if not var540 then
		else
			var540 = table_create_result1_upvr[i_3]
			var546 = "Normal"
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if var540.Type == "Pack" then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				local RewardId_2 = var540.RewardId
				local var548 = true
				if RewardId_2 ~= "RainbowSeedSackPremium" then
					var548 = true
					if RewardId_2 ~= "RainbowSeedSackBasic" then
						var548 = true
						if RewardId_2 ~= "Rainbow Exotic Flower Seed Pack" then
							var548 = true
							if RewardId_2 ~= "Rainbow Exotic Crafters Seed Pack" then
								var548 = true
								if RewardId_2 ~= "Rainbow Exotic Summer Seed Pack" then
									var548 = true
									if RewardId_2 ~= "Rainbow Exotic Ancient Seed Pack" then
										if RewardId_2 ~= "Rainbow Exotic Zen Seed Pack" then
											var548 = false
										else
											var548 = true
										end
									end
								end
							end
						end
					end
				end
				if var548 then
					var546 = "Custom_RainbowCrate"
				end
			end
			for i_4, v_3 in var540:GetChildren() do
				local var552
				if v_3.Name ~= var546 then
					var552 = false
				else
					var552 = true
				end
				v_3.Visible = var552
				if var552 then
					local var553 = v_3
				end
			end
			if var553 then
				if i_3 == const_number_5 - 1 then
					local var554 = var553
				end
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x3)
				if var540.Type == "Seed" or var540.Type == "RainbowSeed" or SeedData_upvr[var540.RewardId] then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					local var555 = SeedData_upvr[var540.RewardId]
					local any_Return_Rarity_Data_result1_4 = Item_Module_upvr.Return_Rarity_Data(var555.SeedRarity)
					if any_Return_Rarity_Data_result1_4 then
						i_4 = any_Return_Rarity_Data_result1_4[1]
						var553.Rarity.Text = i_4
						i_4 = any_Return_Rarity_Data_result1_4[2]
						var553.Rarity.TextColor3 = i_4
					end
					i_4 = true
					var553.Vector.Visible = i_4
					i_4 = var555.Asset
					var553.Vector.Image = i_4
				else
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					if var540.Type == "Pack" then
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						var553.Vector.Image = var540.Icon or ""
						var553.Vector.Visible = true
					else
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						v_3 = var540.RewardId
						warn(`Seed data not found for {v_3}`)
					end
				end
				i_4 = var540
				var553.Label.Text = SeedPackData_upvr:GetTextDisplayForItem(i_4)
			end
		end
	end
	local NumberValue_upvr_6 = Instance.new("NumberValue")
	NumberValue_upvr_6.Value = 5
	local var558_upvw
	local var559_upvw
	local function updatePosition_upvr() -- Line 221, Named "updatePosition"
		--[[ Upvalues[6]:
			[1]: NumberValue_upvr_6 (readonly)
			[2]: var558_upvw (read and write)
			[3]: var559_upvw (read and write)
			[4]: SoundService_upvr (copied, readonly)
			[5]: var27_upvw (copied, read and write)
			[6]: Spinner_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local Value_5 = NumberValue_upvr_6.Value
		local var561 = Value_5 // 1
		if var561 ~= var558_upvw then
			local var562
			if var558_upvw and (not var559_upvw or 0.05 < os.clock() - var559_upvw) then
				if var27_upvw then
				else
				end
				SoundService_upvr:PlayLocalSound(SoundService_upvr["Seed Pack"].NormalTick)
				var559_upvw = os.clock()
			end
			var558_upvw = var561
		end
		Spinner_upvr.Position = UDim2.new(0.5, -Value_5 * Spinner_upvr.AbsoluteSize.Y, 0.5, 0)
	end
	task.spawn(updatePosition_upvr)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local var563_upvr = const_number_5 - 1 - 0.5 + (math.random() - 0.5) * 0.5
	local any_Create_result1_4 = TweenService_upvr:Create(NumberValue_upvr_6, TweenInfo.new(5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
		Value = var563_upvr;
	})
	any_Create_result1_4:Play()
	local var566_upvw = false
	local current_thread_upvr_6 = coroutine.running()
	local function resume() -- Line 251
		--[[ Upvalues[2]:
			[1]: var566_upvw (read and write)
			[2]: current_thread_upvr_6 (readonly)
		]]
		if var566_upvw then
		else
			var566_upvw = true
			if coroutine.status(current_thread_upvr_6) == "suspended" then
				task.spawn(current_thread_upvr_6)
			end
		end
	end
	if not var566_upvw then
		coroutine.yield()
	end
	Frame_upvr.Skip.Activated:Once(resume):Disconnect()
	any_Create_result1_4.Completed:Once(resume):Disconnect()
	any_Create_result1_4:Cancel()
	any_Create_result1_4:Destroy()
	NumberValue_upvr_6.Changed:Connect(updatePosition_upvr):Disconnect()
	Spinner_upvr:GetPropertyChangedSignal("AbsoluteSize"):Connect(updatePosition_upvr):Disconnect()
	task.defer(function() -- Line 279
		--[[ Upvalues[3]:
			[1]: NumberValue_upvr_6 (readonly)
			[2]: var563_upvr (readonly)
			[3]: updatePosition_upvr (readonly)
		]]
		NumberValue_upvr_6.Value = var563_upvr
		updatePosition_upvr()
		NumberValue_upvr_6:Destroy()
	end)
	if var530 and var554 then
		SoundService_upvr["Seed Pack"].RainbowReward:Play()
		task.wait(0.3)
		local any_new_result1_upvr_5 = Shake_upvr.new()
		any_new_result1_upvr_5.FadeInTime = 0.5
		any_new_result1_upvr_5.FadeOutTime = 1.5
		any_new_result1_upvr_5.Frequency = 0.08
		any_new_result1_upvr_5.Amplitude = 15
		any_new_result1_upvr_5.Sustain = true
		any_new_result1_upvr_5.PositionInfluence = Vector3.new(1, 1, 0)
		any_new_result1_upvr_5.RotationInfluence = Vector3.new(0, 0, 0)
		local var573_upvw
		var573_upvw = RunService_upvr.PostSimulation:Connect(function() -- Line 310
			--[[ Upvalues[3]:
				[1]: any_new_result1_upvr_5 (readonly)
				[2]: Frame_upvr (copied, readonly)
				[3]: var573_upvw (read and write)
			]]
			local any_Update_result1_4, _, any_Update_result3_5 = any_new_result1_upvr_5:Update()
			Frame_upvr.Position = UDim2.fromScale(0.5, 0.5) + UDim2.fromOffset(any_Update_result1_4.X, any_Update_result1_4.Y)
			if any_Update_result3_5 then
				var573_upvw:Disconnect()
			end
		end)
		task.wait(1.2)
		RollCrate_UI_upvr.Fade.BackgroundTransparency = 0
		FastTween_upvr(RollCrate_UI_upvr.Fade, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0.2), {
			BackgroundTransparency = 1;
		})
		FastTween_upvr(var554.Vector, TweenInfo.new(0.1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {
			ImageColor3 = Color3.new(1, 1, 1);
		}):Cancel()
		FastTween_upvr(var554, TweenInfo.new(0.1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {
			ImageColor3 = Color3.new(1, 1, 1);
		}):Cancel()
		task.delay(0.3, function() -- Line 329
			--[[ Upvalues[1]:
				[1]: any_new_result1_upvr_5 (readonly)
			]]
			any_new_result1_upvr_5:StopSustain()
		end)
	else
		any_new_result1_upvr_5 = SoundService_upvr
		any_new_result1_upvr_5["Seed Pack"].Reward:Play()
		any_new_result1_upvr_5 = `x1 {SeedPackData_upvr:GetTextDisplayForItem(var536)}`
		Rolled_upvr.Label.Text = any_new_result1_upvr_5
		tweenRolled_upvr(true)
		task.wait(2)
		tweenHolder_upvr(false)
		task.wait(0.5)
		tweenRolled_upvr(false)
	end
	Frame_upvr.Visible = false
	RollCrate_UI_upvr.Enabled = false
	if var529 then
		var27_upvw = false
	end
	if var530 then
		var27_upvw = true
	end
end
local var579_upvw = false
function module.Spin(arg1, arg2) -- Line 360
	--[[ Upvalues[4]:
		[1]: var9_upvw (read and write)
		[2]: var579_upvw (read and write)
		[3]: spinAction_upvr (readonly)
		[4]: Remotes_upvr (readonly)
	]]
	while not var9_upvw do
		task.wait()
	end
	while var579_upvw do
		task.wait()
	end
	var579_upvw = true
	xpcall(spinAction_upvr, warn, arg2)
	var579_upvw = false
	Remotes_upvr.SeedPack.SpinFinished.send()
end
function module.Start(arg1) -- Line 376
	--[[ Upvalues[5]:
		[1]: RollCrate_UI_upvr (readonly)
		[2]: Remotes_upvr (readonly)
		[3]: Spinner_upvr (readonly)
		[4]: table_create_result1_upvr (readonly)
		[5]: var9_upvw (read and write)
	]]
	RollCrate_UI_upvr.Frame.Visible = false
	RollCrate_UI_upvr.Frame.Position = UDim2.fromScale(0.5, 1.5)
	RollCrate_UI_upvr.Frame.Rolled.ImageTransparency = 1
	RollCrate_UI_upvr.Frame.Rolled.Label.TextTransparency = 1
	RollCrate_UI_upvr.Frame.Rolled.Label.UIStroke.Transparency = 1
	for _, v_4_upvr in RollCrate_UI_upvr.Frame.Rolled.Decorations:GetChildren() do
		v_4_upvr.ImageTransparency = RollCrate_UI_upvr.Frame.Rolled.ImageTransparency
		RollCrate_UI_upvr.Frame.Rolled:GetPropertyChangedSignal("ImageTransparency"):Connect(function() -- Line 387
			--[[ Upvalues[2]:
				[1]: v_4_upvr (readonly)
				[2]: RollCrate_UI_upvr (copied, readonly)
			]]
			v_4_upvr.ImageTransparency = RollCrate_UI_upvr.Frame.Rolled.ImageTransparency
		end)
	end
	Remotes_upvr.SeedPack.Result.listen(function(arg1_2) -- Line 392
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:Spin(arg1_2)
	end)
	for i_6 = 1, 150 do
		local clone = Spinner_upvr.UIListLayout.Template:Clone()
		clone.Name = tostring(i_6)
		clone.LayoutOrder = i_6
		clone.Parent = Spinner_upvr
		table_create_result1_upvr[i_6] = clone
		if i_6 % 10 == 0 then
			task.wait(0.1)
		end
	end
	var9_upvw = true
end
task.spawn(module.Start, module)
return module