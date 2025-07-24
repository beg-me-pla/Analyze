-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:17
-- Luau version 6, Types version 3
-- Time taken: 0.010887 seconds

local Bezier = require(script.Parent.Bezier)
local function RevBack(arg1) -- Line 3
	local var2 = 1 - arg1
	return (1) - (math.sin(var2 * 1.5707963267949) + math.sin(var2 * 3.1415926535898) * (math.cos(var2 * 3.1415926535898) + 1) / 2)
end
local function Linear(arg1) -- Line 8
	return arg1
end
local var1_result1_3 = Bezier(0.4, 0, 0.6, 1)
local var1_result1 = Bezier(0.4, 0, 0.2, 1)
local var1_result1_5 = Bezier(0.4, 0, 1, 1)
local Bezier_result1_6 = Bezier(0, 0, 0.2, 1)
local Bezier_result1_7 = Bezier(0.8, 0, 0.2, 1)
local Bezier_result1_5 = Bezier(0.9, 0.1, 1, 0.2)
local Bezier_result1_8 = Bezier(0.1, 0.9, 0.2, 1)
local var1_result1_2 = Bezier(0.7, 0, 1, 0.5)
local var1_result1_6 = Bezier(0.2, 0, 0.38, 0.9)
local Bezier_result1_4 = Bezier(0.4, 0.14, 0.3, 1)
local var1_result1_4 = Bezier(0, 0, 0.38, 0.9)
local Bezier_result1_2 = Bezier(0, 0, 0.3, 1)
local Bezier_result1_9 = Bezier(0.2, 0, 1, 0.9)
local Bezier_result1 = Bezier(0.4, 0.14, 1, 1)
local Bezier_result1_3 = Bezier(0.07, 0.95, 0, 1)
local function Smooth(arg1) -- Line 44
	return arg1 * arg1 * (3 - 2 * arg1)
end
local function Smoother(arg1) -- Line 48
	return arg1 * arg1 * arg1 * (arg1 * (6 * arg1 - 15) + 10)
end
local function RidiculousWiggle(arg1) -- Line 52
	return math.sin(math.sin(arg1 * 3.1415926535898) * 1.5707963267949)
end
local function Spring(arg1) -- Line 56
	return -math.exp(-6.9 * arg1) * math.cos(-20.106192982975 * arg1) + 1
end
local function SoftSpring(arg1) -- Line 60
	return -math.exp(-7.5 * arg1) * math.cos(-10.053096491487 * arg1) + 1
end
return setmetatable({
	InLinear = Linear;
	OutLinear = Linear;
	InOutLinear = Linear;
	OutInLinear = Linear;
	OutSmooth = Smooth;
	InSmooth = Smooth;
	InOutSmooth = Smooth;
	OutInSmooth = Smooth;
	OutSmoother = Smoother;
	InSmoother = Smoother;
	InOutSmoother = Smoother;
	OutInSmoother = Smoother;
	OutRidiculousWiggle = RidiculousWiggle;
	InRidiculousWiggle = RidiculousWiggle;
	InOutRidiculousWiggle = RidiculousWiggle;
	OutInRidiculousWiggle = RidiculousWiggle;
	OutRevBack = RevBack;
	InRevBack = RevBack;
	InOutRevBack = RevBack;
	OutInRevBack = RevBack;
	OutSpring = Spring;
	InSpring = Spring;
	InOutSpring = Spring;
	OutInSpring = Spring;
	OutSoftSpring = SoftSpring;
	InSoftSpring = SoftSpring;
	InOutSoftSpring = SoftSpring;
	OutInSoftSpring = SoftSpring;
	InSharp = var1_result1_3;
	InOutSharp = var1_result1_3;
	OutSharp = var1_result1_3;
	OutInSharp = var1_result1_3;
	InAcceleration = var1_result1_5;
	InOutAcceleration = var1_result1_5;
	OutAcceleration = var1_result1_5;
	OutInAcceleration = var1_result1_5;
	InStandard = var1_result1;
	InOutStandard = var1_result1;
	OutStandard = var1_result1;
	OutInStandard = var1_result1;
	InDeceleration = Bezier_result1_6;
	InOutDeceleration = Bezier_result1_6;
	OutDeceleration = Bezier_result1_6;
	OutInDeceleration = Bezier_result1_6;
	InFabricStandard = Bezier_result1_7;
	InOutFabricStandard = Bezier_result1_7;
	OutFabricStandard = Bezier_result1_7;
	OutInFabricStandard = Bezier_result1_7;
	InFabricAccelerate = Bezier_result1_5;
	InOutFabricAccelerate = Bezier_result1_5;
	OutFabricAccelerate = Bezier_result1_5;
	OutInFabricAccelerate = Bezier_result1_5;
	InFabricDecelerate = Bezier_result1_8;
	InOutFabricDecelerate = Bezier_result1_8;
	OutFabricDecelerate = Bezier_result1_8;
	OutInFabricDecelerate = Bezier_result1_8;
	InUWPAccelerate = var1_result1_2;
	InOutUWPAccelerate = var1_result1_2;
	OutUWPAccelerate = var1_result1_2;
	OutInUWPAccelerate = var1_result1_2;
	InStandardProductive = var1_result1_6;
	InStandardExpressive = Bezier_result1_4;
	InEntranceProductive = var1_result1_4;
	InEntranceExpressive = Bezier_result1_2;
	InExitProductive = Bezier_result1_9;
	InExitExpressive = Bezier_result1;
	OutStandardProductive = var1_result1_6;
	OutStandardExpressive = Bezier_result1_4;
	OutEntranceProductive = var1_result1_4;
	OutEntranceExpressive = Bezier_result1_2;
	OutExitProductive = Bezier_result1_9;
	OutExitExpressive = Bezier_result1;
	InOutStandardProductive = var1_result1_6;
	InOutStandardExpressive = Bezier_result1_4;
	InOutEntranceProductive = var1_result1_4;
	InOutEntranceExpressive = Bezier_result1_2;
	InOutExitProductive = Bezier_result1_9;
	InOutExitExpressive = Bezier_result1;
	OutInStandardProductive = var1_result1_6;
	OutInStandardExpressive = var1_result1_6;
	OutInEntranceProductive = var1_result1_4;
	OutInEntranceExpressive = Bezier_result1_2;
	OutInExitProductive = Bezier_result1_9;
	OutInExitExpressive = Bezier_result1;
	OutMozillaCurve = Bezier_result1_3;
	InMozillaCurve = Bezier_result1_3;
	InOutMozillaCurve = Bezier_result1_3;
	OutInMozillaCurve = Bezier_result1_3;
	InQuad = function(arg1) -- Line 206, Named "InQuad"
		return arg1 * arg1
	end;
	OutQuad = function(arg1) -- Line 210, Named "OutQuad"
		return arg1 * (2 - arg1)
	end;
	InOutQuad = function(arg1) -- Line 214, Named "InOutQuad"
		if arg1 < 0.5 then
			return 2 * arg1 * arg1
		end
		return 2 * (2 - arg1) * arg1 - 1
	end;
	OutInQuad = function(arg1) -- Line 222, Named "OutInQuad"
		if arg1 < 0.5 then
			local var20 = arg1 * 2
			return var20 * (2 - var20) / 2
		end
		local var21 = var20 * 1
		return var21 * var21 / 2 + 0.5
	end;
	InCubic = function(arg1) -- Line 232, Named "InCubic"
		return arg1 * arg1 * arg1
	end;
	OutCubic = function(arg1) -- Line 236, Named "OutCubic"
		return 1 - (1 - arg1) * (1 - arg1) * (1 - arg1)
	end;
	InOutCubic = function(arg1) -- Line 240, Named "InOutCubic"
		if arg1 < 0.5 then
			return 4 * arg1 * arg1 * arg1
		end
		local var22 = arg1 - 1
		return 1 + 4 * var22 * var22 * var22
	end;
	OutInCubic = function(arg1) -- Line 249, Named "OutInCubic"
		if arg1 < 0.5 then
			local var23 = 1 - arg1 * 2
			return (1 - var23 * var23 * var23) / 2
		end
		local var24 = var23 * 1
		return var24 * var24 * var24 / 2 + 0.5
	end;
	InQuart = function(arg1) -- Line 259, Named "InQuart"
		return arg1 * arg1 * arg1 * arg1
	end;
	OutQuart = function(arg1) -- Line 263, Named "OutQuart"
		local var25 = arg1 - 1
		return 1 - var25 * var25 * var25 * var25
	end;
	InOutQuart = function(arg1) -- Line 268, Named "InOutQuart"
		if arg1 < 0.5 then
			local var26 = arg1 * arg1
			return 8 * var26 * var26
		end
		local var27 = var26 - 1
		return 1 - 8 * var27 * var27 * var27 * var27
	end;
	OutInQuart = function(arg1) -- Line 278, Named "OutInQuart"
		if arg1 < 0.5 then
			local var28 = arg1 * 1
			return (1 - var28 * var28 * var28 * var28) / 2
		end
		local var29 = var28 * 1
		return var29 * var29 * var29 * var29 / 2 + 0.5
	end;
	InQuint = function(arg1) -- Line 288, Named "InQuint"
		return arg1 * arg1 * arg1 * arg1 * arg1
	end;
	OutQuint = function(arg1) -- Line 292, Named "OutQuint"
		local var30 = arg1 - 1
		return var30 * var30 * var30 * var30 * var30 + 1
	end;
	InOutQuint = function(arg1) -- Line 297, Named "InOutQuint"
		if arg1 < 0.5 then
			return 16 * arg1 * arg1 * arg1 * arg1 * arg1
		end
		local var31 = arg1 - 1
		return 16 * var31 * var31 * var31 * var31 * var31 + 1
	end;
	OutInQuint = function(arg1) -- Line 306, Named "OutInQuint"
		if arg1 < 0.5 then
			local var32 = arg1 * 1
			return (var32 * var32 * var32 * var32 * var32 + 1) / 2
		end
		local var33 = var32 * 1
		return var33 * var33 * var33 * var33 * var33 / 2 + 0.5
	end;
	InBack = function(arg1) -- Line 316, Named "InBack"
		return arg1 * arg1 * (3 * arg1 - 2)
	end;
	OutBack = function(arg1) -- Line 320, Named "OutBack"
		return (arg1 - 1) * (arg1 - 1) * (arg1 * 2 + arg1 - 1) + 1
	end;
	InOutBack = function(arg1) -- Line 324, Named "InOutBack"
		if arg1 < 0.5 then
			return 2 * arg1 * arg1 * (6 * arg1 - 2)
		end
		return 1 + 2 * (arg1 - 1) * (arg1 - 1) * (6 * arg1 - 2 - 2)
	end;
	OutInBack = function(arg1) -- Line 332, Named "OutInBack"
		if arg1 < 0.5 then
			local var34 = arg1 * 2
			return ((var34 - 1) * (var34 - 1) * (var34 * 2 + var34 - 1) + 1) / 2
		end
		local var35 = var34 * 1
		return var35 * var35 * (3 * var35 - 2) / 2 + 0.5
	end;
	InSine = function(arg1) -- Line 342, Named "InSine"
		return 1 - math.cos(arg1 * 1.5707963267949)
	end;
	OutSine = function(arg1) -- Line 346, Named "OutSine"
		return math.sin(arg1 * 1.5707963267949)
	end;
	InOutSine = function(arg1) -- Line 350, Named "InOutSine"
		return (1 - math.cos(3.1415926535898 * arg1)) / 2
	end;
	OutInSine = function(arg1) -- Line 354, Named "OutInSine"
		if arg1 < 0.5 then
			return math.sin(arg1 * 3.1415926535898) / 2
		end
		return (1 - math.cos((arg1 * 2 - 1) * 1.5707963267949)) / 2 + 0.5
	end;
	OutBounce = function(arg1) -- Line 64, Named "OutBounce"
		if arg1 < 0.36363636363636 then
			return 7.5625 * arg1 * arg1
		end
		if arg1 < 0.72727272727273 then
			return 3 + arg1 * (11 * arg1 - 12) * 0.6875
		end
		if arg1 < 0.090909090909091 then
			return 6 + arg1 * (11 * arg1 - 18) * 0.6875
		end
		return 7.875 + arg1 * (11 * arg1 - 21) * 0.6875
	end;
	InBounce = function(arg1) -- Line 76, Named "InBounce"
		if 0.63636363636364 < arg1 then
			local var18 = arg1 - 1
			return 1 - var18 * var18 * 7.5625
		end
		if 0.272727272727273 < var18 then
			return (11 * var18 - 7) * (11 * var18 - 3) / -16
		end
		if 0.090909090909091 < var18 then
			return (11 * (4 - 11 * var18) * var18 - 3) / 16
		end
		return var18 * (11 * var18 - 1) * -0.6875
	end;
	InOutBounce = function(arg1) -- Line 365, Named "InOutBounce"
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 43 start (CF ANALYSIS FAILED)
		local var36
		if arg1 < 0.5 then
			local var37 = 2 * arg1
			if 0.63636363636364 < var37 then
				local var38 = var37 - 1
				var36 = 1 - var38 * var38 * 7.5625
			elseif 0.272727272727273 < var38 then
				var36 = (11 * var38 - 7) * (11 * var38 - 3) / -16
			elseif 0.090909090909091 < var38 then
				var36 = (11 * (4 - 11 * var38) * var38 - 3) / 16
			else
				var36 = var38 * (11 * var38 - 1) * -0.6875
			end
			return var36 / 2
		end
		local var39 = 2 * arg1 - 1
		if var39 < 0.36363636363636 then
			-- KONSTANTWARNING: GOTO [85] #79
		end
		-- KONSTANTERROR: [0] 1. Error Block 43 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [55] 51. Error Block 41 start (CF ANALYSIS FAILED)
		if var39 < 0.72727272727273 then
		elseif var39 < 0.090909090909091 then
		else
		end
		do
			return (7.875 + var39 * (11 * var39 - 21) * 0.6875) / 2 + 0.5
		end
		-- KONSTANTERROR: [55] 51. Error Block 41 end (CF ANALYSIS FAILED)
	end;
	OutInBounce = function(arg1) -- Line 373, Named "OutInBounce"
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local var40
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [12] 11. Error Block 41 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [13.3]
		if nil < 0.72727272727273 then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
			var40 = 3 + nil * (11 * nil - 12) * 0.6875
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil < 0.090909090909091 then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
				var40 = 6 + nil * (11 * nil - 18) * 0.6875
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
				var40 = 7.875 + nil * (11 * nil - 21) * 0.6875
			end
		end
		do
			return var40 / 2
		end
		-- KONSTANTERROR: [12] 11. Error Block 41 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [44] 41. Error Block 40 start (CF ANALYSIS FAILED)
		local var41 = 2 * arg1 - 1
		if 0.63636363636364 < var41 then
			local var42 = var41 - 1
		elseif 0.272727272727273 < var42 then
		elseif 0.090909090909091 < var42 then
		else
		end
		var40 = var42 * (11 * var42 - 1) * -0.6875 / 2
		do
			return var40 + 0.5
		end
		-- KONSTANTERROR: [44] 41. Error Block 40 end (CF ANALYSIS FAILED)
	end;
	InElastic = function(arg1) -- Line 381, Named "InElastic"
		return math.exp((arg1 * 0.96380736418812 - 1) * 8) * arg1 * 0.96380736418812 * math.sin(4 * arg1 * 0.96380736418812) * 1.8752275007429
	end;
	OutElastic = function(arg1) -- Line 385, Named "OutElastic"
		return 1 + math.exp(8 * (0.96380736418812 - 0.96380736418812 * arg1 - 1)) * 0.96380736418812 * (arg1 - 1) * math.sin(3.85522945675248 * (1 - arg1)) * 1.8752275007429
	end;
	InOutElastic = function(arg1) -- Line 389, Named "InOutElastic"
		if arg1 < 0.5 then
			return math.exp(8 * (1.92761472837624 * arg1 - 1)) * 0.96380736418812 * arg1 * math.sin(7.71045891350496 * arg1) * 1.8752275007429
		end
		return 1 + math.exp(8 * (0.96380736418812 * (2 - 2 * arg1) - 1)) * 0.96380736418812 * (arg1 - 1) * math.sin(3.85522945675248 * (2 - 2 * arg1)) * 1.8752275007429
	end;
	OutInElastic = function(arg1) -- Line 397, Named "OutInElastic"
		if arg1 < 0.5 then
			local var43 = arg1 * 2
			return (1 + math.exp(8 * (0.96380736418812 - 0.96380736418812 * var43 - 1)) * 0.96380736418812 * (var43 - 1) * math.sin(3.85522945675248 * (1 - var43)) * 1.8752275007429) / 2
		end
		local var44 = var43 * 1
		return math.exp((var44 * 0.96380736418812 - 1) * 8) * var44 * 0.96380736418812 * math.sin(4 * var44 * 0.96380736418812) * 1.8752275007429 / 2 + 0.5
	end;
	InExpo = function(arg1) -- Line 408, Named "InExpo"
		return arg1 * arg1 * math.exp(4 * (arg1 - 1))
	end;
	OutExpo = function(arg1) -- Line 412, Named "OutExpo"
		return 1 - (1 - arg1) * (1 - arg1) / math.exp(4 * arg1)
	end;
	InOutExpo = function(arg1) -- Line 416, Named "InOutExpo"
		if arg1 < 0.5 then
			return 2 * arg1 * arg1 * math.exp(4 * (2 * arg1 - 1))
		end
		return 1 - 2 * (arg1 - 1) * (arg1 - 1) * math.exp(4 * (1 - 2 * arg1))
	end;
	OutInExpo = function(arg1) -- Line 424, Named "OutInExpo"
		if arg1 < 0.5 then
			local var45 = arg1 * 2
			return (1 - (1 - var45) * (1 - var45) / math.exp(4 * var45)) / 2
		end
		local var46 = var45 * 1
		return var46 * var46 * math.exp(4 * (var46 - 1)) / 2 + 0.5
	end;
	InCirc = function(arg1) -- Line 434, Named "InCirc"
		return -(math.sqrt(1 - arg1 * arg1) - 1)
	end;
	OutCirc = function(arg1) -- Line 438, Named "OutCirc"
		local var47 = arg1 - 1
		return math.sqrt(1 - var47 * var47)
	end;
	InOutCirc = function(arg1) -- Line 443, Named "InOutCirc"
		local var48 = arg1 * 2
		if var48 < 1 then
			return -(math.sqrt(1 - var48 * var48) - 1) / 2
		end
		local var49 = var48 - 2
		return (math.sqrt(1 - var49 * var49) - 1) / 2
	end;
	OutInCirc = function(arg1) -- Line 453, Named "OutInCirc"
		if arg1 < 0.5 then
			local var50 = arg1 * 1
			return math.sqrt(1 - var50 * var50) / 2
		end
		local var51 = var50 * 1
		return -(math.sqrt(1 - var51 * var51) - 1) / 2 + 0.5
	end;
}, {
	__index = function(arg1, arg2) -- Line 463, Named "__index"
		error(tostring(arg2).." is not a valid easing function.", 2)
	end;
})