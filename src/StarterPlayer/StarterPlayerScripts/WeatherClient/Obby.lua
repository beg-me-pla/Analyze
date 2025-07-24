-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:33:03
-- Luau version 6, Types version 3
-- Time taken: 0.002405 seconds

local var1_upvw = false
local var2_upvw
local Notification_upvr = require(game.ReplicatedStorage.Modules.Notification)
local function CreateEvent_upvr(arg1) -- Line 15, Named "CreateEvent"
	--[[ Upvalues[3]:
		[1]: var1_upvw (read and write)
		[2]: Notification_upvr (readonly)
		[3]: var2_upvw (read and write)
	]]
	if var1_upvw == true then
	else
		var1_upvw = true
		local OBBY_2 = workspace.WeatherVisuals:WaitForChild("OBBY", 10)
		if OBBY_2 == nil then
			warn("NO OBBY")
			return
		end
		for _, v_upvr in OBBY_2:GetDescendants() do
			if v_upvr:IsA("BasePart") then
				task.spawn(function() -- Line 29
					--[[ Upvalues[1]:
						[1]: v_upvr (readonly)
					]]
					local var11 = v_upvr
					var11.CFrame *= CFrame.new(math.random(-500, 500), math.random(300, 500), math.random(-500, 500))
					task.wait(math.random(1, 100) * 0.01)
					game.TweenService:Create(v_upvr, TweenInfo.new(1.5), {
						CFrame = v_upvr.CFrame;
					}):Play()
				end)
			end
		end
		local var14_upvw
		OBBY_2.Destroying:Once(function() -- Line 42
			--[[ Upvalues[1]:
				[1]: var14_upvw (read and write)
			]]
			if var14_upvw then
				var14_upvw:Disconnect()
			end
		end)
		var14_upvw = OBBY_2.winners.ChildAdded:Connect(function(arg1_2) -- Line 46
			--[[ Upvalues[1]:
				[1]: Notification_upvr (copied, readonly)
			]]
			local any_GetPlayerByUserId_result1 = game.Players:GetPlayerByUserId(arg1_2.Name)
			if any_GetPlayerByUserId_result1 then
				Notification_upvr:CreateNotification(any_GetPlayerByUserId_result1.Name.." completed the obby and won a Jump Pad cosmetic!")
			end
		end)
		var2_upvw = script.ObbyTimer:Clone()
		var2_upvw.Parent = game.Players.LocalPlayer.PlayerGui
		local var18_upvw
		var2_upvw.Destroying:Once(function() -- Line 59
			--[[ Upvalues[1]:
				[1]: var18_upvw (read and write)
			]]
			if var18_upvw then
				var18_upvw:Disconnect()
			end
		end)
		var18_upvw = OBBY_2:WaitForChild("Timer").Changed:Connect(function(arg1_3) -- Line 63
			--[[ Upvalues[1]:
				[1]: var2_upvw (copied, read and write)
			]]
			if arg1_3 < 11 then
				var2_upvw.ding:Play()
			end
			var2_upvw.TextLabel.Text = "Obby Time: "..math.clamp(arg1_3, 0, 999)
		end)
	end
end
local function ResetEvent_upvr(arg1) -- Line 73, Named "ResetEvent"
	--[[ Upvalues[2]:
		[1]: var1_upvw (read and write)
		[2]: var2_upvw (read and write)
	]]
	if var1_upvw == false then
	else
		if var2_upvw then
			var2_upvw:Destroy()
		end
		var1_upvw = false
		local OBBY = workspace.WeatherVisuals:WaitForChild("OBBY", 10)
		if OBBY == nil then
			warn("NO OBBY")
			return
		end
		for _, v_2_upvr in OBBY:GetDescendants() do
			if v_2_upvr:IsA("BasePart") then
				task.spawn(function() -- Line 91
					--[[ Upvalues[1]:
						[1]: v_2_upvr (readonly)
					]]
					task.wait(math.random(1, 100) * 0.01)
					game.TweenService:Create(v_2_upvr, TweenInfo.new(1.5), {
						CFrame = v_2_upvr.CFrame * CFrame.new(math.random(-500, 500), math.random(300, 500), math.random(-500, 500));
					}):Play()
				end)
			end
		end
	end
end
workspace:GetAttributeChangedSignal("Obby"):Connect(function() -- Line 104
	--[[ Upvalues[2]:
		[1]: CreateEvent_upvr (readonly)
		[2]: ResetEvent_upvr (readonly)
	]]
	if workspace:GetAttribute("Obby") then
		CreateEvent_upvr()
	else
		ResetEvent_upvr()
	end
end)
if workspace:GetAttribute("Obby") then
	task.defer(function() -- Line 113
		--[[ Upvalues[1]:
			[1]: CreateEvent_upvr (readonly)
		]]
		CreateEvent_upvr(true)
	end)
else
	ResetEvent_upvr(true)
end
return {}