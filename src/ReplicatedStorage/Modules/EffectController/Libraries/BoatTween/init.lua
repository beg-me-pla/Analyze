-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:17
-- Luau version 6, Types version 3
-- Time taken: 0.014263 seconds

local RunService_upvr = game:GetService("RunService")
local TweenFunctions = require(script.TweenFunctions)
local module = {}
local tbl_upvr = {
	Heartbeat = true;
	Stepped = true;
	RenderStepped = true;
}
if not RunService_upvr:IsClient() then
	tbl_upvr.RenderStepped = nil
end
local tbl_upvr_2 = {
	FabricAccelerate = {
		In = TweenFunctions.InFabricAccelerate;
		Out = TweenFunctions.OutFabricAccelerate;
		InOut = TweenFunctions.InOutFabricAccelerate;
		OutIn = TweenFunctions.OutInFabricAccelerate;
	};
	UWPAccelerate = {
		In = TweenFunctions.InUWPAccelerate;
		Out = TweenFunctions.OutUWPAccelerate;
		InOut = TweenFunctions.InOutUWPAccelerate;
		OutIn = TweenFunctions.OutInUWPAccelerate;
	};
	Circ = {
		In = TweenFunctions.InCirc;
		Out = TweenFunctions.OutCirc;
		InOut = TweenFunctions.InOutCirc;
		OutIn = TweenFunctions.OutInCirc;
	};
	RevBack = {
		In = TweenFunctions.InRevBack;
		Out = TweenFunctions.OutRevBack;
		InOut = TweenFunctions.InOutRevBack;
		OutIn = TweenFunctions.OutInRevBack;
	};
	Spring = {
		In = TweenFunctions.InSpring;
		Out = TweenFunctions.OutSpring;
		InOut = TweenFunctions.InOutSpring;
		OutIn = TweenFunctions.OutInSpring;
	};
	Standard = {
		In = TweenFunctions.InStandard;
		Out = TweenFunctions.OutStandard;
		InOut = TweenFunctions.InOutStandard;
		OutIn = TweenFunctions.OutInStandard;
	};
	StandardExpressive = {
		In = TweenFunctions.InStandardExpressive;
		Out = TweenFunctions.OutStandardExpressive;
		InOut = TweenFunctions.InOutStandardExpressive;
		OutIn = TweenFunctions.OutInStandardExpressive;
	};
	Linear = {
		In = TweenFunctions.InLinear;
		Out = TweenFunctions.OutLinear;
		InOut = TweenFunctions.InOutLinear;
		OutIn = TweenFunctions.OutInLinear;
	};
	ExitProductive = {
		In = TweenFunctions.InExitProductive;
		Out = TweenFunctions.OutExitProductive;
		InOut = TweenFunctions.InOutExitProductive;
		OutIn = TweenFunctions.OutInExitProductive;
	};
	Deceleration = {
		In = TweenFunctions.InDeceleration;
		Out = TweenFunctions.OutDeceleration;
		InOut = TweenFunctions.InOutDeceleration;
		OutIn = TweenFunctions.OutInDeceleration;
	};
	Smoother = {
		In = TweenFunctions.InSmoother;
		Out = TweenFunctions.OutSmoother;
		InOut = TweenFunctions.InOutSmoother;
		OutIn = TweenFunctions.OutInSmoother;
	};
	FabricStandard = {
		In = TweenFunctions.InFabricStandard;
		Out = TweenFunctions.OutFabricStandard;
		InOut = TweenFunctions.InOutFabricStandard;
		OutIn = TweenFunctions.OutInFabricStandard;
	};
	RidiculousWiggle = {
		In = TweenFunctions.InRidiculousWiggle;
		Out = TweenFunctions.OutRidiculousWiggle;
		InOut = TweenFunctions.InOutRidiculousWiggle;
		OutIn = TweenFunctions.OutInRidiculousWiggle;
	};
	MozillaCurve = {
		In = TweenFunctions.InMozillaCurve;
		Out = TweenFunctions.OutMozillaCurve;
		InOut = TweenFunctions.InOutMozillaCurve;
		OutIn = TweenFunctions.OutInMozillaCurve;
	};
	Expo = {
		In = TweenFunctions.InExpo;
		Out = TweenFunctions.OutExpo;
		InOut = TweenFunctions.InOutExpo;
		OutIn = TweenFunctions.OutInExpo;
	};
	Sine = {
		In = TweenFunctions.InSine;
		Out = TweenFunctions.OutSine;
		InOut = TweenFunctions.InOutSine;
		OutIn = TweenFunctions.OutInSine;
	};
	Cubic = {
		In = TweenFunctions.InCubic;
		Out = TweenFunctions.OutCubic;
		InOut = TweenFunctions.InOutCubic;
		OutIn = TweenFunctions.OutInCubic;
	};
	EntranceExpressive = {
		In = TweenFunctions.InEntranceExpressive;
		Out = TweenFunctions.OutEntranceExpressive;
		InOut = TweenFunctions.InOutEntranceExpressive;
		OutIn = TweenFunctions.OutInEntranceExpressive;
	};
	Elastic = {
		In = TweenFunctions.InElastic;
		Out = TweenFunctions.OutElastic;
		InOut = TweenFunctions.InOutElastic;
		OutIn = TweenFunctions.OutInElastic;
	};
	Quint = {
		In = TweenFunctions.InQuint;
		Out = TweenFunctions.OutQuint;
		InOut = TweenFunctions.InOutQuint;
		OutIn = TweenFunctions.OutInQuint;
	};
	EntranceProductive = {
		In = TweenFunctions.InEntranceProductive;
		Out = TweenFunctions.OutEntranceProductive;
		InOut = TweenFunctions.InOutEntranceProductive;
		OutIn = TweenFunctions.OutInEntranceProductive;
	};
	Bounce = {
		In = TweenFunctions.InBounce;
		Out = TweenFunctions.OutBounce;
		InOut = TweenFunctions.InOutBounce;
		OutIn = TweenFunctions.OutInBounce;
	};
	Smooth = {
		In = TweenFunctions.InSmooth;
		Out = TweenFunctions.OutSmooth;
		InOut = TweenFunctions.InOutSmooth;
		OutIn = TweenFunctions.OutInSmooth;
	};
	Back = {
		In = TweenFunctions.InBack;
		Out = TweenFunctions.OutBack;
		InOut = TweenFunctions.InOutBack;
		OutIn = TweenFunctions.OutInBack;
	};
	Quart = {
		In = TweenFunctions.InQuart;
		Out = TweenFunctions.OutQuart;
		InOut = TweenFunctions.InOutQuart;
		OutIn = TweenFunctions.OutInQuart;
	};
	StandardProductive = {
		In = TweenFunctions.InStandardProductive;
		Out = TweenFunctions.OutStandardProductive;
		InOut = TweenFunctions.InOutStandardProductive;
		OutIn = TweenFunctions.OutInStandardProductive;
	};
	Quad = {
		In = TweenFunctions.InQuad;
		Out = TweenFunctions.OutQuad;
		InOut = TweenFunctions.InOutQuad;
		OutIn = TweenFunctions.OutInQuad;
	};
	FabricDecelerate = {
		In = TweenFunctions.InFabricDecelerate;
		Out = TweenFunctions.OutFabricDecelerate;
		InOut = TweenFunctions.InOutFabricDecelerate;
		OutIn = TweenFunctions.OutInFabricDecelerate;
	};
	Acceleration = {
		In = TweenFunctions.InAcceleration;
		Out = TweenFunctions.OutAcceleration;
		InOut = TweenFunctions.InOutAcceleration;
		OutIn = TweenFunctions.OutInAcceleration;
	};
	SoftSpring = {
		In = TweenFunctions.InSoftSpring;
		Out = TweenFunctions.OutSoftSpring;
		InOut = TweenFunctions.InOutSoftSpring;
		OutIn = TweenFunctions.OutInSoftSpring;
	};
	ExitExpressive = {
		In = TweenFunctions.InExitExpressive;
		Out = TweenFunctions.OutExitExpressive;
		InOut = TweenFunctions.InOutExitExpressive;
		OutIn = TweenFunctions.OutInExitExpressive;
	};
	Sharp = {
		In = TweenFunctions.InSharp;
		Out = TweenFunctions.OutSharp;
		InOut = TweenFunctions.InOutSharp;
		OutIn = TweenFunctions.OutInSharp;
	};
}
local Lerps_upvr = require(script.Lerps)
function module.Create(arg1, arg2, arg3) -- Line 315
	--[[ Upvalues[4]:
		[1]: tbl_upvr (readonly)
		[2]: RunService_upvr (readonly)
		[3]: tbl_upvr_2 (readonly)
		[4]: Lerps_upvr (readonly)
	]]
	if not arg2 or typeof(arg2) ~= "Instance" then
		return warn("Invalid object to tween:", arg2)
	end
	if type(arg3) ~= "table" or not arg3 then
	end
	local tbl_upvw = {}
	if not tbl_upvr[tbl_upvw.StepType] or not RunService_upvr[tbl_upvw.StepType] then
	end
	if type(tbl_upvw.Time) ~= "number" or not tbl_upvw.Time then
	end
	if type(tbl_upvw.Goal) ~= "table" or not tbl_upvw.Goal then
	end
	if type(tbl_upvw.DelayTime) == "number" then
		if 0.027 < tbl_upvw.DelayTime then
		end
	end
	if type(tbl_upvw.RepeatCount) ~= "number" or not math.max(tbl_upvw.RepeatCount, -1) then
	end
	for i, v in pairs({}) do
		({})[i] = Lerps_upvr[typeof(v)](arg2[i], v)
		local var108_upvr
	end
	local BindableEvent_upvr_5 = Instance.new("BindableEvent")
	local BindableEvent_upvr_3 = Instance.new("BindableEvent")
	local BindableEvent_upvr_6 = Instance.new("BindableEvent")
	local var112_upvw
	local var113_upvw = 0
	local module_upvw_2 = {}
	module_upvw_2.Instance = arg2
	module_upvw_2.PlaybackState = Enum.PlaybackState.Begin
	module_upvw_2.Completed = BindableEvent_upvr_5.Event
	module_upvw_2.Resumed = BindableEvent_upvr_6.Event
	module_upvw_2.Stopped = BindableEvent_upvr_3.Event
	function module_upvw_2.Destroy() -- Line 353
		--[[ Upvalues[5]:
			[1]: var112_upvw (read and write)
			[2]: BindableEvent_upvr_5 (readonly)
			[3]: BindableEvent_upvr_3 (readonly)
			[4]: BindableEvent_upvr_6 (readonly)
			[5]: module_upvw_2 (read and write)
		]]
		if var112_upvw then
			var112_upvw:Disconnect()
			var112_upvw = nil
		end
		BindableEvent_upvr_5:Destroy()
		BindableEvent_upvr_3:Destroy()
		BindableEvent_upvr_6:Destroy()
		module_upvw_2 = {}
	end
	local var115_upvw = false
	local var116_upvw = 0
	local var117_upvr = 0 + 1
	local DelayTime_upvr = tbl_upvw.DelayTime
	local os_clock_result1_upvw_2 = os.clock()
	local Stepped_upvr_2 = RunService_upvr.Stepped
	local maximum_upvr_2 = math.max(1, 0.001)
	local var122_upvr = tbl_upvr_2[tbl_upvw.EasingStyle or "Quad"][tbl_upvw.EasingDirection or "In"]
	local function Play(arg1_3, arg2_3) -- Line 369
		--[[ Upvalues[16]:
			[1]: var112_upvw (read and write)
			[2]: var117_upvr (readonly)
			[3]: module_upvw_2 (read and write)
			[4]: BindableEvent_upvr_5 (readonly)
			[5]: var115_upvw (read and write)
			[6]: var116_upvw (read and write)
			[7]: DelayTime_upvr (readonly)
			[8]: os_clock_result1_upvw_2 (read and write)
			[9]: var113_upvw (read and write)
			[10]: Stepped_upvr_2 (readonly)
			[11]: maximum_upvr_2 (readonly)
			[12]: var108_upvr (readonly)
			[13]: arg2 (readonly)
			[14]: Play (readonly)
			[15]: tbl_upvw (read and write)
			[16]: var122_upvr (readonly)
		]]
		if var112_upvw then
			var112_upvw:Disconnect()
			var112_upvw = nil
		end
		local var123_upvw = arg1_3 or 1
		if var117_upvr ~= 0 and var117_upvr < var123_upvw then
			module_upvw_2.PlaybackState = Enum.PlaybackState.Completed
			BindableEvent_upvr_5:Fire()
			var115_upvw = false
			var116_upvw = 1
		else
			var116_upvw = var123_upvw
			if arg2_3 then
				var115_upvw = true
			end
			if DelayTime_upvr then
				module_upvw_2.PlaybackState = Enum.PlaybackState.Delayed
				task.wait(DelayTime_upvr)
			end
			os_clock_result1_upvw_2 = os.clock() - var113_upvw
			var112_upvw = Stepped_upvr_2:Connect(function() -- Line 399
				--[[ Upvalues[11]:
					[1]: var113_upvw (copied, read and write)
					[2]: os_clock_result1_upvw_2 (copied, read and write)
					[3]: maximum_upvr_2 (copied, readonly)
					[4]: arg2_3 (readonly)
					[5]: var108_upvr (copied, readonly)
					[6]: arg2 (copied, readonly)
					[7]: var112_upvw (copied, read and write)
					[8]: Play (copied, readonly)
					[9]: var123_upvw (read and write)
					[10]: tbl_upvw (copied, read and write)
					[11]: var122_upvr (copied, readonly)
				]]
				-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
				var113_upvw = os.clock() - os_clock_result1_upvw_2
				local var149
				if maximum_upvr_2 <= var149 then
					var149 = arg2_3
					if var149 then
						var149 = pairs(var108_upvr)
						local pairs_result1_2, pairs_result2_4, pairs_result3_5 = pairs(var108_upvr)
						for i_2, v_2 in pairs_result1_2, pairs_result2_4, pairs_result3_5 do
							arg2[i_2] = v_2(0)
						end
					else
						pairs_result1_2 = pairs(var108_upvr)
						local pairs_result1_3, pairs_result2_3, pairs_result3_2 = pairs(var108_upvr)
						for i_3, v_3 in pairs_result1_3, pairs_result2_3, pairs_result3_2 do
							arg2[i_3] = v_3(1)
						end
					end
					pairs_result1_3 = var112_upvw:Disconnect
					pairs_result1_3()
					pairs_result1_3 = nil
					var112_upvw = pairs_result1_3
					pairs_result1_3 = arg2_3
					if pairs_result1_3 then
						pairs_result1_3 = 0
						var113_upvw = pairs_result1_3
						pairs_result1_3 = Play
						pairs_result1_3(var123_upvw + 1, false)
					else
						pairs_result1_3 = tbl_upvw.Reverses
						if pairs_result1_3 then
							pairs_result1_3 = 0
							var113_upvw = pairs_result1_3
							pairs_result1_3 = Play
							pairs_result1_3(var123_upvw, true)
							return
						end
						pairs_result1_3 = 0
						var113_upvw = pairs_result1_3
						pairs_result1_3 = Play
						pairs_result1_3(var123_upvw + 1, false)
					end
				end
				local function INLINED_3() -- Internal function, doesn't exist in bytecode
					pairs_result1_3 = 1 - var113_upvw / maximum_upvr_2
					return pairs_result1_3
				end
				if not arg2_3 or not INLINED_3() then
					pairs_result1_3 = var113_upvw / maximum_upvr_2
				end
				for i_4, v_4 in pairs(var108_upvr) do
					arg2[i_4] = v_4(math.clamp(var122_upvr(pairs_result1_3), 0, 1))
					local _
				end
			end)
			module_upvw_2.PlaybackState = Enum.PlaybackState.Playing
		end
	end
	function module_upvw_2.Play() -- Line 439
		--[[ Upvalues[2]:
			[1]: var113_upvw (read and write)
			[2]: Play (readonly)
		]]
		var113_upvw = 0
		Play(1, false)
	end
	function module_upvw_2.Stop() -- Line 444
		--[[ Upvalues[3]:
			[1]: var112_upvw (read and write)
			[2]: module_upvw_2 (read and write)
			[3]: BindableEvent_upvr_3 (readonly)
		]]
		if var112_upvw then
			var112_upvw:Disconnect()
			var112_upvw = nil
			module_upvw_2.PlaybackState = Enum.PlaybackState.Cancelled
			BindableEvent_upvr_3:Fire()
		end
	end
	function module_upvw_2.Resume() -- Line 453
		--[[ Upvalues[4]:
			[1]: Play (readonly)
			[2]: var116_upvw (read and write)
			[3]: var115_upvw (read and write)
			[4]: BindableEvent_upvr_6 (readonly)
		]]
		Play(var116_upvw, var115_upvw)
		BindableEvent_upvr_6:Fire()
	end
	return module_upvw_2
end
return module