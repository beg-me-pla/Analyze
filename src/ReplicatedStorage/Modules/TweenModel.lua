-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:28
-- Luau version 6, Types version 3
-- Time taken: 0.001845 seconds

local RunService = game:GetService("RunService")
if not RunService:IsServer() or not RunService.Heartbeat then
end
local tbl_2_upvr = {}
local TweenService_upvr = game:GetService("TweenService")
return function(arg1, arg2, arg3) -- Line 10, Named "TweenModel"
	--[[ Upvalues[2]:
		[1]: tbl_2_upvr (readonly)
		[2]: TweenService_upvr (readonly)
	]]
	local var4 = tbl_2_upvr[arg1]
	if var4 then
		var4:Cancel()
		var4:Destroy()
		task.cancel(var4.Thread)
		tbl_2_upvr[arg1] = nil
		print("Cancel last Loop!", arg1)
	end
	local NumberValue_upvr = Instance.new("NumberValue")
	NumberValue_upvr.Value = arg1:GetScale()
	local CFrameValue_upvr = Instance.new("CFrameValue")
	CFrameValue_upvr.Value = arg1:GetPivot()
	local any_Create_result1_upvr = TweenService_upvr:Create(NumberValue_upvr, arg2, {
		Value = arg3.Scale;
	})
	local any_Create_result1_upvr_2 = TweenService_upvr:Create(CFrameValue_upvr, arg2, {
		Value = arg3.CFrame;
	})
	local tbl = {}
	tbl.Instance = arg1
	local var13_upvw
	function tbl.Play() -- Line 50
		--[[ Upvalues[7]:
			[1]: any_Create_result1_upvr (readonly)
			[2]: any_Create_result1_upvr_2 (readonly)
			[3]: var13_upvw (read and write)
			[4]: arg3 (readonly)
			[5]: arg1 (readonly)
			[6]: NumberValue_upvr (readonly)
			[7]: CFrameValue_upvr (readonly)
		]]
		any_Create_result1_upvr:Play()
		any_Create_result1_upvr_2:Play()
		task.spawn(function() -- Line 54
			--[[ Upvalues[6]:
				[1]: var13_upvw (copied, read and write)
				[2]: any_Create_result1_upvr (copied, readonly)
				[3]: arg3 (copied, readonly)
				[4]: arg1 (copied, readonly)
				[5]: NumberValue_upvr (copied, readonly)
				[6]: CFrameValue_upvr (copied, readonly)
			]]
			while true do
				task.wait(0.01)
				var13_upvw.PlaybackState = any_Create_result1_upvr.PlaybackState
				if any_Create_result1_upvr.PlaybackState ~= Enum.PlaybackState.Playing then break end
				if arg3.Scale then
					arg1:ScaleTo(math.clamp(NumberValue_upvr.Value, 1e-09, math.huge))
				end
				if arg3.CFrame then
					arg1:PivotTo(CFrameValue_upvr.Value)
				end
			end
		end)
	end
	function tbl.Pause() -- Line 70
		--[[ Upvalues[2]:
			[1]: any_Create_result1_upvr (readonly)
			[2]: any_Create_result1_upvr_2 (readonly)
		]]
		any_Create_result1_upvr:Pause()
		any_Create_result1_upvr_2:Pause()
	end
	function tbl.Destroy() -- Line 74
		--[[ Upvalues[2]:
			[1]: any_Create_result1_upvr (readonly)
			[2]: any_Create_result1_upvr_2 (readonly)
		]]
		any_Create_result1_upvr:Destroy()
		any_Create_result1_upvr_2:Destroy()
	end
	function tbl.Cancel() -- Line 78
		--[[ Upvalues[2]:
			[1]: any_Create_result1_upvr (readonly)
			[2]: any_Create_result1_upvr_2 (readonly)
		]]
		any_Create_result1_upvr:Cancel()
		any_Create_result1_upvr_2:Cancel()
	end
	tbl.PlaybackState = Enum.PlaybackState.Begin
	tbl.TweenInfo = arg2
	tbl.Completed = any_Create_result1_upvr.Completed
	tbl.Thread = task.delay(180, function() -- Line 86
		--[[ Upvalues[2]:
			[1]: tbl_2_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		tbl_2_upvr[arg1] = nil
	end)
	var13_upvw = tbl
	local var19 = var13_upvw
	tbl_2_upvr[arg1] = var19
	return var19
end