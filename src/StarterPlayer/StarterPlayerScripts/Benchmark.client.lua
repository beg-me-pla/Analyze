-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:33:09
-- Luau version 6, Types version 3
-- Time taken: 0.001036 seconds

local function _() -- Line 10, Named "RawFunction"
	return 0 + 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10
end
local function Benchmark(arg1, arg2) -- Line 19
	for _ = 1, 100000 do
		arg2()
	end
	local var3 = os.clock() - os.clock()
	print(arg1.." took "..var3.." seconds.")
	return var3
end
local Benchmark_result1_upvr = Benchmark("RawFunction", function() -- Line 32
end)
local module_upvr = require(game:GetService("ReplicatedStorage"):WaitForChild("BenchmarkTest"):WaitForChild("OptimizedModule"))
local function _(arg1, arg2) -- Line 47, Named "Compare"
	--[[ Upvalues[1]:
		[1]: Benchmark_result1_upvr (readonly)
	]]
	print(string.format("%s is %.2f%% slower than RawFunction", arg1, (arg2 - Benchmark_result1_upvr) / Benchmark_result1_upvr * 100))
end
print(string.format("%s is %.2f%% slower than RawFunction", "OptimizedModule", (Benchmark("OptimizedModule", function() -- Line 36
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.DoWork()
end) - Benchmark_result1_upvr) / Benchmark_result1_upvr * 100))