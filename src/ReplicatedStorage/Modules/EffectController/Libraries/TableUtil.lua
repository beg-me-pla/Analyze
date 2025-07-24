-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:16
-- Luau version 6, Types version 3
-- Time taken: 0.015145 seconds

local module_upvr = {}
local HttpService_upvr = game:GetService("HttpService")
local random_state_upvr = Random.new()
local function Sync_upvr(arg1, arg2) -- Line 76, Named "Sync"
	--[[ Upvalues[1]:
		[1]: Sync_upvr (readonly)
	]]
	local var15
	if type(arg1) ~= "table" then
		var15 = false
	else
		var15 = true
	end
	assert(var15, "First argument must be a table")
	if type(arg2) ~= "table" then
		var15 = false
	else
		var15 = true
	end
	assert(var15, "Second argument must be a table")
	var15 = arg1
	local clone_2 = table.clone(var15)
	var15 = pairs(clone_2)
	local pairs_result1_2, pairs_result2_3, pairs_result3 = pairs(clone_2)
	for i_2, v_2 in pairs_result1_2, pairs_result2_3, pairs_result3 do
		local var20 = arg2[i_2]
		if var20 == nil then
			clone_2[i_2] = nil
		elseif type(v_2) ~= type(var20) then
			if type(var20) == "table" then
				local function DeepCopy(arg1_3) -- Line 40
					--[[ Upvalues[1]:
						[1]: DeepCopy (readonly)
					]]
					local clone = table.clone(arg1_3)
					for i_32, v_27 in clone do
						if type(v_27) == "table" then
							clone[i_32] = DeepCopy(v_27)
						end
					end
					return clone
				end
				clone_2[i_2] = DeepCopy(var20)
			else
				clone_2[i_2] = var20
			end
		else
			DeepCopy = v_2
			if type(DeepCopy) == "table" then
				DeepCopy = v_2
				clone_2[i_2] = Sync_upvr(DeepCopy, var20)
			end
		end
	end
	pairs_result1_2 = pairs(arg2)
	for i_3, v_3 in pairs(arg2) do
		if clone_2[i_3] == nil then
			DeepCopy = v_3
			if type(DeepCopy) == "table" then
				function DeepCopy(arg1_4) -- Line 40
					--[[ Upvalues[1]:
						[1]: var27_upvr (readonly)
					]]
					local clone_9 = table.clone(arg1_4)
					for i_4, v_4 in clone_9 do
						if type(v_4) == "table" then
							clone_9[i_4] = var27_upvr(v_4)
						end
					end
					return clone_9
				end
				local var27_upvr = DeepCopy
				clone_2[i_3] = var27_upvr(v_3)
			else
				clone_2[i_3] = v_3
			end
		end
	end
	return clone_2
end
local function Reconcile_upvr(arg1, arg2) -- Line 145, Named "Reconcile"
	--[[ Upvalues[1]:
		[1]: Reconcile_upvr (readonly)
	]]
	local var35
	if type(arg1) ~= "table" then
		var35 = false
	else
		var35 = true
	end
	assert(var35, "First argument must be a table")
	if type(arg2) ~= "table" then
		var35 = false
	else
		var35 = true
	end
	assert(var35, "Second argument must be a table")
	var35 = arg1
	var35 = arg2
	for i_5, v_5 in var35 do
		local var36 = arg1[i_5]
		if var36 == nil then
			if type(v_5) == "table" then
				local function DeepCopy_upvr(arg1_5) -- Line 40, Named "DeepCopy"
					--[[ Upvalues[1]:
						[1]: DeepCopy_upvr (readonly)
					]]
					local clone_10 = table.clone(arg1_5)
					for i_6, v_6 in clone_10 do
						if type(v_6) == "table" then
							clone_10[i_6] = DeepCopy_upvr(v_6)
						end
					end
					return clone_10
				end
				table.clone(var35)[i_5] = DeepCopy_upvr(v_5)
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.clone(var35)[i_5] = v_5
			end
		else
			DeepCopy_upvr = var36
			if type(DeepCopy_upvr) == "table" then
				DeepCopy_upvr = v_5
				if type(DeepCopy_upvr) == "table" then
					DeepCopy_upvr = var36
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					table.clone(var35)[i_5] = Reconcile_upvr(DeepCopy_upvr, v_5)
				else
					function DeepCopy_upvr(arg1_6) -- Line 40, Named "DeepCopy"
						--[[ Upvalues[1]:
							[1]: var40_upvr (readonly)
						]]
						local clone_8 = table.clone(arg1_6)
						for i_7, v_7 in clone_8 do
							if type(v_7) == "table" then
								clone_8[i_7] = var40_upvr(v_7)
							end
						end
						return clone_8
					end
					local var40_upvr = DeepCopy_upvr
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					table.clone(var35)[i_5] = var40_upvr(var36)
				end
			end
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return table.clone(var35)
end
local function Map_upvr(arg1, arg2) -- Line 241, Named "Map"
	local var51
	if type(arg1) ~= "table" then
		var51 = false
	else
		var51 = true
	end
	assert(var51, "First argument must be a table")
	if type(arg2) ~= "function" then
		var51 = false
	else
		var51 = true
	end
	assert(var51, "Second argument must be a function")
	var51 = #arg1
	var51 = arg1
	for i_8, v_8 in var51 do
		table.create(var51)[i_8] = arg2(v_8, i_8, arg1)
		local var53
	end
	return var53
end
local ValueObjectUtils_upvr = require(script.Parent.ValueObjectUtils)
function module_upvr.Copy(arg1, arg2) -- Line 36
	if not arg2 then
		return table.clone(arg1)
	end
	local function DeepCopy(arg1_2) -- Line 40
		--[[ Upvalues[1]:
			[1]: DeepCopy (readonly)
		]]
		local clone_7 = table.clone(arg1_2)
		for i, v in clone_7 do
			if type(v) == "table" then
				clone_7[i] = DeepCopy(v)
			end
		end
		return clone_7
	end
	return DeepCopy(arg1)
end
module_upvr.Sync = Sync_upvr
module_upvr.Reconcile = Reconcile_upvr
function module_upvr.SwapRemove(arg1, arg2) -- Line 194
	local len_4 = #arg1
	arg1[arg2] = arg1[len_4]
	arg1[len_4] = nil
end
function module_upvr.SwapRemoveFirstValue(arg1, arg2) -- Line 216
	local table_find_result1 = table.find(arg1, arg2)
	if table_find_result1 then
		local len = #arg1
		arg1[table_find_result1] = arg1[len]
		arg1[len] = nil
	end
	return table_find_result1
end
module_upvr.Map = Map_upvr
function module_upvr.Filter(arg1, arg2) -- Line 268
	local var62
	if type(arg1) ~= "table" then
		var62 = false
	else
		var62 = true
	end
	assert(var62, "First argument must be a table")
	if type(arg2) ~= "function" then
		var62 = false
	else
		var62 = true
	end
	assert(var62, "Second argument must be a function")
	var62 = #arg1
	local table_create_result1_4 = table.create(var62)
	var62 = #arg1
	if 0 < var62 then
		var62 = 0
		for i_9, v_9 in arg1 do
			if arg2(v_9, i_9, arg1) then
				var62 += 1
				table_create_result1_4[var62] = v_9
			end
		end
		return table_create_result1_4
	end
	var62 = arg1
	for i_10, _ in var62 do
		if arg2(i_9, i_10, arg1) then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			table_create_result1_4[i_10] = i_9
		end
	end
	return table_create_result1_4
end
function module_upvr.Reduce(arg1, arg2, arg3) -- Line 308
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var76
	if type(arg1) ~= "table" then
		var76 = false
	else
		var76 = true
	end
	assert(var76, "First argument must be a table")
	if type(arg2) ~= "function" then
		var76 = false
	else
		var76 = true
	end
	assert(var76, "Second argument must be a function")
	var76 = #arg1
	if 0 < var76 then
		var76 = 1
		if arg3 == nil then
			var76 = 2
		end
		for i_11 = var76, #arg1 do
		end
		return arg2(arg1[1], arg1[i_11], i_11, arg1)
	end
	if arg3 == nil then
		local next_result1 = next(arg1)
	end
	for i_12, v_11 in next, arg1, next_result1 do
	end
	return arg2(next_result1, v_11, i_12, arg1)
end
function module_upvr.Assign(arg1, ...) -- Line 349
	local clone_5 = table.clone(arg1)
	for _, v_12 in {...} do
		for i_14, v_13 in v_12 do
			clone_5[i_14] = v_13
		end
	end
	return clone_5
end
function module_upvr.Extend(arg1, arg2) -- Line 375
	local clone_6 = table.clone(arg1)
	for _, v_14 in arg2 do
		table.insert(clone_6, v_14)
	end
	return clone_6
end
function module_upvr.Reverse(arg1) -- Line 397
	local len_2 = #arg1
	local table_create_result1_2 = table.create(len_2)
	for i_16 = 1, len_2 do
		table_create_result1_2[i_16] = arg1[len_2 - i_16 + 1]
	end
	return table_create_result1_2
end
function module_upvr.Shuffle(arg1, arg2) -- Line 421
	--[[ Upvalues[1]:
		[1]: random_state_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var101
	if type(arg1) ~= "table" then
		var101 = false
	else
		var101 = true
	end
	assert(var101, "First argument must be a table")
	var101 = arg1
	local clone_4 = table.clone(var101)
	if typeof(arg2) == "Random" then
		var101 = arg2
	else
		var101 = random_state_upvr
	end
	for i_17 = #arg1, 2, -1 do
		local any_NextInteger_result1 = var101:NextInteger(1, i_17)
		clone_4[i_17] = clone_4[any_NextInteger_result1]
		clone_4[any_NextInteger_result1] = clone_4[i_17]
		local var104
	end
	return var104
end
function module_upvr.Sample(arg1, arg2, arg3) -- Line 448
	--[[ Upvalues[1]:
		[1]: random_state_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 25 start (CF ANALYSIS FAILED)
	local var109
	if type(arg1) ~= "table" then
		var109 = false
	else
		var109 = true
	end
	assert(var109, "First argument must be a table")
	if type(arg2) ~= "number" then
		var109 = false
		-- KONSTANTWARNING: GOTO [24] #19
	end
	-- KONSTANTERROR: [0] 1. Error Block 25 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 18. Error Block 27 start (CF ANALYSIS FAILED)
	var109 = true
	assert(var109, "Second argument must be a number")
	var109 = arg1
	local clone_3 = table.clone(var109)
	var109 = table.create(arg2)
	if typeof(arg3) == "Random" then
	else
	end
	local len_5 = #arg1
	local clamped_2 = math.clamp(arg2, 1, len_5)
	for i_18 = 1, clamped_2 do
		local any_NextInteger_result1_2 = random_state_upvr:NextInteger(i_18, len_5)
		clone_3[i_18] = clone_3[any_NextInteger_result1_2]
		clone_3[any_NextInteger_result1_2] = clone_3[i_18]
		local _
	end
	table.move(clone_3, 1, clamped_2, 1, var109)
	do
		return var109
	end
	-- KONSTANTERROR: [23] 18. Error Block 27 end (CF ANALYSIS FAILED)
end
function module_upvr.Flat(arg1, arg2) -- Line 482
	local var115_upvr
	if type(arg2) == "number" then
		var115_upvr = arg2
	else
		var115_upvr = 1
	end
	local table_create_result1_upvr_2 = table.create(#arg1)
	local function Scan(arg1_7, arg2_2) -- Line 485
		--[[ Upvalues[3]:
			[1]: var115_upvr (readonly)
			[2]: Scan (readonly)
			[3]: table_create_result1_upvr_2 (readonly)
		]]
		for _, v_15 in arg1_7 do
			if type(v_15) == "table" and arg2_2 < var115_upvr then
				Scan(v_15, arg2_2 + 1)
			else
				table.insert(table_create_result1_upvr_2, v_15)
			end
		end
	end
	Scan(arg1, 0)
	return table_create_result1_upvr_2
end
function module_upvr.FlatMap(arg1, arg2) -- Line 516
	--[[ Upvalues[1]:
		[1]: Map_upvr (readonly)
	]]
	local Map_upvr_result1 = Map_upvr(arg1, arg2)
	local table_create_result1_upvr = table.create(#Map_upvr_result1)
	local var121_upvr = 1
	local function Scan_upvr(arg1_8, arg2_3) -- Line 485, Named "Scan"
		--[[ Upvalues[3]:
			[1]: var121_upvr (readonly)
			[2]: Scan_upvr (readonly)
			[3]: table_create_result1_upvr (readonly)
		]]
		for _, v_16 in arg1_8 do
			if type(v_16) == "table" and arg2_3 < var121_upvr then
				Scan_upvr(v_16, arg2_3 + 1)
			else
				table.insert(table_create_result1_upvr, v_16)
			end
		end
	end
	var121_upvr = Scan_upvr
	var121_upvr(Map_upvr_result1, 0)
	return table_create_result1_upvr
end
function module_upvr.Keys(arg1) -- Line 539
	local table_create_result1 = table.create(#arg1)
	for i_21 in arg1 do
		table.insert(table_create_result1, i_21)
	end
	return table_create_result1
end
function module_upvr.Values(arg1) -- Line 566
	local table_create_result1_3 = table.create(#arg1)
	for _, v_17 in arg1 do
		table.insert(table_create_result1_3, v_17)
	end
	return table_create_result1_3
end
function module_upvr.Find(arg1, arg2) -- Line 600
	for i_23, v_18 in arg1 do
		if arg2(v_18, i_23, arg1) then
			return v_18, i_23
		end
	end
	return nil, nil
end
function module_upvr.Every(arg1, arg2) -- Line 625
	for i_24, v_19 in arg1 do
		if not arg2(v_19, i_24, arg1) then
			return false
		end
	end
	return true
end
function module_upvr.Some(arg1, arg2) -- Line 650
	for i_25, v_20 in arg1 do
		if arg2(v_20, i_25, arg1) then
			return true
		end
	end
	return false
end
function module_upvr.Truncate(arg1, arg2) -- Line 674
	local len_3 = #arg1
	local clamped = math.clamp(arg2, 1, len_3)
	if clamped == len_3 then
		return table.clone(arg1)
	end
	return table.move(arg1, 1, clamped, 1, table.create(clamped))
end
function module_upvr.Zip(...) -- Line 703
	local ZipIteratorMap
	if 0 >= select('#', ...) then
		ZipIteratorMap = false
	else
		ZipIteratorMap = true
	end
	assert(ZipIteratorMap, "Must supply at least 1 table")
	function ZipIteratorMap(arg1, arg2) -- Line 718
		for i_27, v_22 in arg1 do
			local next_result1_2 = next(v_22, arg2)
			if next_result1_2 ~= nil then
				({})[i_27] = next_result1_2
			else
				return nil, nil
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return arg2, {}
	end
	local args_list = {...}
	if 0 < #args_list[1] then
		return function(arg1, arg2) -- Line 705, Named "ZipIteratorArray"
			local var143 = arg2 + 1
			for i_26, v_21 in arg1 do
				local var144 = v_21[var143]
				if var144 ~= nil then
					({})[i_26] = var144
				else
					return nil, nil
				end
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return var143, {}
		end, args_list, 0
	end
	return ZipIteratorMap, args_list, nil
end
function module_upvr.Lock(arg1) -- Line 754
	local function Freeze_upvr(arg1_9) -- Line 755, Named "Freeze"
		--[[ Upvalues[1]:
			[1]: Freeze_upvr (readonly)
		]]
		for i_28, v_23 in pairs(arg1_9) do
			if type(v_23) == "table" then
				arg1_9[i_28] = Freeze_upvr(v_23)
			end
		end
		return table.freeze(arg1_9)
	end
	return Freeze_upvr(arg1)
end
function module_upvr.IsEmpty(arg1) -- Line 782
	local var154
	if next(arg1) ~= nil then
		var154 = false
	else
		var154 = true
	end
	return var154
end
function module_upvr.EncodeJSON(arg1) -- Line 793
	--[[ Upvalues[1]:
		[1]: HttpService_upvr (readonly)
	]]
	return HttpService_upvr:JSONEncode(arg1)
end
function module_upvr.DecodeJSON(arg1) -- Line 804
	--[[ Upvalues[1]:
		[1]: HttpService_upvr (readonly)
	]]
	return HttpService_upvr:JSONDecode(arg1)
end
function module_upvr.ToFolder(arg1) -- Line 808
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: ValueObjectUtils_upvr (readonly)
	]]
	for i_29, v_24 in pairs(arg1) do
		local typeof_result1 = typeof(v_24)
		if typeof_result1 == "table" then
			local any_ToFolder_result1 = module_upvr.ToFolder(v_24)
			any_ToFolder_result1.Name = tostring(i_29)
			any_ToFolder_result1.Parent = Instance.new("Folder")
		else
			local any_ConvertTypeToClass_result1 = ValueObjectUtils_upvr.ConvertTypeToClass(typeof_result1)
			any_ConvertTypeToClass_result1.Value = v_24
			any_ConvertTypeToClass_result1.Name = tostring(i_29)
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			any_ConvertTypeToClass_result1.Parent = Instance.new("Folder")
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return Instance.new("Folder")
end
function module_upvr.ToTable(arg1) -- Line 828
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	for _, v_25 in arg1:GetChildren() do
		if v_25:IsA("Folder") then
			({})[v_25.Name] = module_upvr.ToTable(v_25)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
function module_upvr.ToRawTable(arg1) -- Line 841
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	for _, v_26 in ipairs(arg1:GetChildren()) do
		if v_26:IsA("Folder") then
			({})[v_26.Name] = module_upvr.ToTable(v_26)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
return module_upvr