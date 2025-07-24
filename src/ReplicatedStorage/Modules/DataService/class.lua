-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:00
-- Luau version 6, Types version 3
-- Time taken: 0.003189 seconds

local tbl_upvr_2 = {"Set", "Get", "Private", "ReadOnly", "WriteOnly", "Constructor", "GlobalGetFunction", "GlobalSetFunction"}
local function DeepCopy_upvr(arg1) -- Line 5, Named "DeepCopy"
	--[[ Upvalues[1]:
		[1]: DeepCopy_upvr (readonly)
	]]
	local module = {}
	for i, v in arg1 do
		local var7
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var7 = DeepCopy_upvr(v)
			return var7
		end
		if type(v) ~= "table" or not INLINED() then
			var7 = v
		end
		module[i] = var7
	end
	return module
end
return function(arg1) -- Line 13, Named "class"
	--[[ Upvalues[2]:
		[1]: DeepCopy_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
	]]
	local module_2_upvr = {}
	module_2_upvr.__index = module_2_upvr
	module_2_upvr.__customclass = true
	local Set = arg1.Set
	if not Set then
		Set = {}
	end
	local DeepCopy_upvr_result1_upvr_5 = DeepCopy_upvr(Set)
	local Get = arg1.Get
	if not Get then
		Get = {}
	end
	local DeepCopy_upvr_result1_upvr_4 = DeepCopy_upvr(Get)
	local ReadOnly = arg1.ReadOnly
	if not ReadOnly then
		ReadOnly = {}
	end
	local DeepCopy_upvr_result1_upvr_3 = DeepCopy_upvr(ReadOnly)
	local WriteOnly = arg1.WriteOnly
	if not WriteOnly then
		WriteOnly = {}
	end
	local DeepCopy_upvr_result1_upvr = DeepCopy_upvr(WriteOnly)
	local Private = arg1.Private
	if not Private then
		Private = {}
	end
	local DeepCopy_upvr_result1_upvr_2 = DeepCopy_upvr(Private)
	table.freeze(DeepCopy_upvr_result1_upvr_5)
	table.freeze(DeepCopy_upvr_result1_upvr_4)
	table.freeze(DeepCopy_upvr_result1_upvr_3)
	table.freeze(DeepCopy_upvr_result1_upvr)
	table.freeze(DeepCopy_upvr_result1_upvr_2)
	table.freeze(arg1)
	local GlobalGetFunction_upvr = arg1.GlobalGetFunction
	local GlobalSetFunction_upvr = arg1.GlobalSetFunction
	local Constructor_upvr = arg1.Constructor
	function module_2_upvr.new(...) -- Line 35
		--[[ Upvalues[12]:
			[1]: arg1 (read and write)
			[2]: DeepCopy_upvr (copied, readonly)
			[3]: tbl_upvr_2 (copied, readonly)
			[4]: DeepCopy_upvr_result1_upvr_2 (readonly)
			[5]: DeepCopy_upvr_result1_upvr (readonly)
			[6]: DeepCopy_upvr_result1_upvr_4 (readonly)
			[7]: GlobalGetFunction_upvr (readonly)
			[8]: module_2_upvr (readonly)
			[9]: DeepCopy_upvr_result1_upvr_3 (readonly)
			[10]: DeepCopy_upvr_result1_upvr_5 (readonly)
			[11]: GlobalSetFunction_upvr (readonly)
			[12]: Constructor_upvr (readonly)
		]]
		local tbl_upvr = {}
		local tbl_upvr_3 = {}
		arg1 = DeepCopy_upvr(arg1)
		for i_2, v_2 in arg1 do
			if not table.find(tbl_upvr_2, i_2) then
				tbl_upvr[i_2] = v_2
			end
		end
		local setmetatable_result1 = setmetatable({
			RealData = tbl_upvr;
		}, {
			__index = function(arg1_2, arg2) -- Line 50, Named "__index"
				--[[ Upvalues[7]:
					[1]: DeepCopy_upvr_result1_upvr_2 (copied, readonly)
					[2]: tbl_upvr_3 (readonly)
					[3]: DeepCopy_upvr_result1_upvr (copied, readonly)
					[4]: DeepCopy_upvr_result1_upvr_4 (copied, readonly)
					[5]: GlobalGetFunction_upvr (copied, readonly)
					[6]: module_2_upvr (copied, readonly)
					[7]: tbl_upvr (readonly)
				]]
				local func_2 = debug.info(2, 'f')
				if not tbl_upvr_3[func_2] and DeepCopy_upvr_result1_upvr_2[arg2] then
					return error(`Cannot access private function {func_2} from {debug.info(2, 'f')}`)
				end
				if DeepCopy_upvr_result1_upvr[arg2] then
					return error(`Cannot read from write only property {arg2}`)
				end
				if GlobalGetFunction_upvr then
					GlobalGetFunction_upvr(arg1_2, arg2)
				end
				local var32
				local function INLINED_2() -- Internal function, doesn't exist in bytecode
					var32 = DeepCopy_upvr_result1_upvr_4[arg2](arg1_2)
					return var32
				end
				if not var32 and (not DeepCopy_upvr_result1_upvr_4[arg2] or not INLINED_2()) then
					var32 = rawget(tbl_upvr, arg2)
				end
				return var32
			end;
			__newindex = function(arg1_3, arg2, arg3) -- Line 73, Named "__newindex"
				--[[ Upvalues[6]:
					[1]: DeepCopy_upvr_result1_upvr_2 (copied, readonly)
					[2]: tbl_upvr_3 (readonly)
					[3]: DeepCopy_upvr_result1_upvr_3 (copied, readonly)
					[4]: DeepCopy_upvr_result1_upvr_5 (copied, readonly)
					[5]: tbl_upvr (readonly)
					[6]: GlobalSetFunction_upvr (copied, readonly)
				]]
				local func = debug.info(2, 'f')
				if not tbl_upvr_3[func] and DeepCopy_upvr_result1_upvr_2[arg2] then
					return error(`Cannot access private function {func} from {debug.info(2, 'f')}`)
				end
				if DeepCopy_upvr_result1_upvr_3[arg2] then
					return error(`Cannot write to read only property {arg2}`)
				end
				local var34 = DeepCopy_upvr_result1_upvr_5[arg2]
				if var34 then
					var34(arg1_3, arg2, arg3)
				else
					rawset(tbl_upvr, arg2, arg3)
				end
				if GlobalSetFunction_upvr then
					GlobalSetFunction_upvr(arg1_3, arg2, arg3)
				end
			end;
		})
		for _, v_3 in module_2_upvr do
			if type(v_3) == "function" then
				tbl_upvr_3[v_3] = true
			end
		end
		tbl_upvr_3[debug.info(1, 'f')] = true
		if Constructor_upvr then
			Constructor_upvr(setmetatable_result1, ...)
		end
		return setmetatable_result1
	end
	return module_2_upvr
end