-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:23
-- Luau version 6, Types version 3
-- Time taken: 0.003243 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Arrow_Module_upvr = require(ReplicatedStorage_upvr.Arrow_Module)
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local Notification_upvr = require(ReplicatedStorage_upvr.Modules.Notification)
local TutorialUtils_upvr = require(ReplicatedStorage_upvr.Modules.TutorialController.TutorialUtils)
return function() -- Line 14
	--[[ Upvalues[5]:
		[1]: Arrow_Module_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
		[3]: Notification_upvr (readonly)
		[4]: TutorialUtils_upvr (readonly)
		[5]: ReplicatedStorage_upvr (readonly)
	]]
	local tbl_upvr = {}
	local function _(arg1) -- Line 16, Named "createArrow"
		--[[ Upvalues[3]:
			[1]: Arrow_Module_upvr (copied, readonly)
			[2]: LocalPlayer_upvr (copied, readonly)
			[3]: tbl_upvr (readonly)
		]]
		local any_GenerateArrow_result1_upvr_3 = Arrow_Module_upvr.GenerateArrow(LocalPlayer_upvr, arg1, math.random(1, 1000000))
		table.insert(tbl_upvr, any_GenerateArrow_result1_upvr_3)
		return function() -- Line 20
			--[[ Upvalues[3]:
				[1]: tbl_upvr (copied, readonly)
				[2]: any_GenerateArrow_result1_upvr_3 (readonly)
				[3]: Arrow_Module_upvr (copied, readonly)
			]]
			local table_find_result1_2 = table.find(tbl_upvr, any_GenerateArrow_result1_upvr_3)
			if table_find_result1_2 then
				Arrow_Module_upvr.Remove_Arrow(any_GenerateArrow_result1_upvr_3)
				table.remove(tbl_upvr, table_find_result1_2)
			end
		end
	end
	local task_spawn_result1_upvr = task.spawn(function() -- Line 29
		--[[ Upvalues[6]:
			[1]: Arrow_Module_upvr (copied, readonly)
			[2]: LocalPlayer_upvr (copied, readonly)
			[3]: tbl_upvr (readonly)
			[4]: Notification_upvr (copied, readonly)
			[5]: TutorialUtils_upvr (copied, readonly)
			[6]: ReplicatedStorage_upvr (copied, readonly)
		]]
		local any_GenerateArrow_result1_upvr = Arrow_Module_upvr.GenerateArrow(LocalPlayer_upvr, workspace.Tutorial_Points.Tutorial_Point_1.Position, math.random(1, 1000000))
		table.insert(tbl_upvr, any_GenerateArrow_result1_upvr)
		any_GenerateArrow_result1_upvr = 5
		local task_delay_result1 = task.delay(any_GenerateArrow_result1_upvr, function() -- Line 31
			--[[ Upvalues[1]:
				[1]: Notification_upvr (copied, readonly)
			]]
			Notification_upvr:CreateNotification("Go buy your first seed!")
		end)
		any_GenerateArrow_result1_upvr = TutorialUtils_upvr.waitForSeed
		any_GenerateArrow_result1_upvr()
		any_GenerateArrow_result1_upvr = coroutine.status(task_delay_result1)
		if any_GenerateArrow_result1_upvr == "suspended" then
			any_GenerateArrow_result1_upvr = task.cancel
			any_GenerateArrow_result1_upvr(task_delay_result1)
		end
		function any_GenerateArrow_result1_upvr() -- Line 20
			--[[ Upvalues[3]:
				[1]: tbl_upvr (copied, readonly)
				[2]: any_GenerateArrow_result1_upvr (readonly)
				[3]: Arrow_Module_upvr (copied, readonly)
			]]
			local table_find_result1_4 = table.find(tbl_upvr, any_GenerateArrow_result1_upvr)
			if table_find_result1_4 then
				Arrow_Module_upvr.Remove_Arrow(any_GenerateArrow_result1_upvr)
				table.remove(tbl_upvr, table_find_result1_4)
			end
		end
		any_GenerateArrow_result1_upvr()
		any_GenerateArrow_result1_upvr = TutorialUtils_upvr.waitForFarm()
		Notification_upvr:CreateNotification("Go plant your seed!")
		local any_GenerateArrow_result1_upvr_2 = Arrow_Module_upvr.GenerateArrow(LocalPlayer_upvr, (any_GenerateArrow_result1_upvr.Spawn_Point.CFrame * CFrame.new(0, 0, -10)).Position, math.random(1, 1000000))
		table.insert(tbl_upvr, any_GenerateArrow_result1_upvr_2)
		any_GenerateArrow_result1_upvr_2 = TutorialUtils_upvr
		any_GenerateArrow_result1_upvr_2.waitUntilSellableItem()
		;(function() -- Line 20
			--[[ Upvalues[3]:
				[1]: tbl_upvr (copied, readonly)
				[2]: any_GenerateArrow_result1_upvr_2 (readonly)
				[3]: Arrow_Module_upvr (copied, readonly)
			]]
			local table_find_result1_3 = table.find(tbl_upvr, any_GenerateArrow_result1_upvr_2)
			if table_find_result1_3 then
				Arrow_Module_upvr.Remove_Arrow(any_GenerateArrow_result1_upvr_2)
				table.remove(tbl_upvr, table_find_result1_3)
			end
		end)()
		Notification_upvr:CreateNotification("Go sell your plant!")
		any_GenerateArrow_result1_upvr_2 = workspace.Tutorial_Points.Tutorial_Point_2.Position
		local any_GenerateArrow_result1_upvr_4 = Arrow_Module_upvr.GenerateArrow(LocalPlayer_upvr, any_GenerateArrow_result1_upvr_2, math.random(1, 1000000))
		table.insert(tbl_upvr, any_GenerateArrow_result1_upvr_4)
		any_GenerateArrow_result1_upvr_4 = TutorialUtils_upvr
		any_GenerateArrow_result1_upvr_2 = any_GenerateArrow_result1_upvr_4.waitUntilNoSellableItems
		any_GenerateArrow_result1_upvr_2()
		function any_GenerateArrow_result1_upvr_2() -- Line 20
			--[[ Upvalues[3]:
				[1]: tbl_upvr (copied, readonly)
				[2]: any_GenerateArrow_result1_upvr_4 (readonly)
				[3]: Arrow_Module_upvr (copied, readonly)
			]]
			local table_find_result1 = table.find(tbl_upvr, any_GenerateArrow_result1_upvr_4)
			if table_find_result1 then
				Arrow_Module_upvr.Remove_Arrow(any_GenerateArrow_result1_upvr_4)
				table.remove(tbl_upvr, table_find_result1)
			end
		end
		any_GenerateArrow_result1_upvr_2()
		any_GenerateArrow_result1_upvr_4 = ReplicatedStorage_upvr.GameEvents
		any_GenerateArrow_result1_upvr_2 = any_GenerateArrow_result1_upvr_4.SetTutorialFinished:FireServer
		any_GenerateArrow_result1_upvr_2()
	end)
	return function() -- Line 60
		--[[ Upvalues[3]:
			[1]: task_spawn_result1_upvr (readonly)
			[2]: tbl_upvr (readonly)
			[3]: Arrow_Module_upvr (copied, readonly)
		]]
		if coroutine.status(task_spawn_result1_upvr) == "suspended" then
			task.cancel(task_spawn_result1_upvr)
		end
		for _, v in tbl_upvr do
			Arrow_Module_upvr.Remove_Arrow(v)
		end
		table.clear(tbl_upvr)
	end
end