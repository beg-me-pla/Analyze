-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:25
-- Luau version 6, Types version 3
-- Time taken: 0.003277 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
local var3_upvw
local function RunHandlerInFreeThread_upvr(arg1, ...) -- Line 48, Named "RunHandlerInFreeThread"
	--[[ Upvalues[1]:
		[1]: var3_upvw (read and write)
	]]
	var3_upvw = nil
	arg1(...)
	var3_upvw = var3_upvw
end
local function CreateFreeThread_upvr() -- Line 57, Named "CreateFreeThread"
	--[[ Upvalues[2]:
		[1]: var3_upvw (read and write)
		[2]: RunHandlerInFreeThread_upvr (readonly)
	]]
	var3_upvw = coroutine.running()
	while true do
		RunHandlerInFreeThread_upvr(coroutine.yield())
	end
end
function module_upvr.new() -- Line 71
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return setmetatable({
		_active = true;
		_head = nil;
	}, module_upvr)
end
function module_upvr.Is(arg1) -- Line 93
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var5 = false
	if typeof(arg1) == "table" then
		if getmetatable(arg1) ~= module_upvr then
			var5 = false
		else
			var5 = true
		end
	end
	return var5
end
function module_upvr.IsActive(arg1) -- Line 110
	local var6
	if arg1._active ~= true then
		var6 = false
	else
		var6 = true
	end
	return var6
end
function module_upvr.Connect(arg1, arg2) -- Line 132
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local var7
	if typeof(arg2) ~= "function" then
		var7 = false
	else
		var7 = true
	end
	assert(var7, "Must be function")
	if arg1._active ~= true then
		var7 = {}
		var7.Connected = false
		var7._node = nil
		return setmetatable(var7, tbl_upvr)
	end
	local _head_2 = arg1._head
	var7 = {}
	var7._signal = arg1
	var7._connection = nil
	var7._handler = arg2
	var7._next = _head_2
	var7._prev = nil
	if _head_2 ~= nil then
		_head_2._prev = var7
	end
	arg1._head = var7
	local setmetatable_result1 = setmetatable({
		Connected = true;
		_node = var7;
	}, tbl_upvr)
	var7._connection = setmetatable_result1
	return setmetatable_result1
end
function module_upvr.Once(arg1, arg2) -- Line 194
	local var11
	if typeof(arg2) ~= "function" then
		var11 = false
	else
		var11 = true
	end
	assert(var11, "Must be function")
	local var13_upvw
	var11 = arg1:Connect(function(...) -- Line 204
		--[[ Upvalues[2]:
			[1]: var13_upvw (read and write)
			[2]: arg2 (readonly)
		]]
		var13_upvw:Disconnect()
		arg2(...)
	end)
	var13_upvw = var11
	return var13_upvw
end
module_upvr.ConnectOnce = module_upvr.Once
function module_upvr.Wait(arg1) -- Line 231
	local var15_upvw
	local current_thread_upvw = coroutine.running()
	var15_upvw = arg1:Connect(function(...) -- Line 236
		--[[ Upvalues[2]:
			[1]: var15_upvw (read and write)
			[2]: current_thread_upvw (read and write)
		]]
		var15_upvw:Disconnect()
		task.spawn(current_thread_upvw, ...)
	end)
	return coroutine.yield()
end
function module_upvr.Fire(arg1, ...) -- Line 261
	--[[ Upvalues[2]:
		[1]: var3_upvw (read and write)
		[2]: CreateFreeThread_upvr (readonly)
	]]
	local _head = arg1._head
	while _head ~= nil do
		if _head._connection ~= nil then
			if var3_upvw == nil then
				task.spawn(CreateFreeThread_upvr)
			end
			task.spawn(var3_upvw, _head._handler, ...)
		end
	end
end
function module_upvr.DisconnectAll(arg1) -- Line 292
	local _head_3 = arg1._head
	while _head_3 ~= nil do
		local _connection = _head_3._connection
		if _connection ~= nil then
			_connection.Connected = false
			_connection._node = nil
			_head_3._connection = nil
		end
	end
	arg1._head = nil
end
function module_upvr.Destroy(arg1) -- Line 321
	if arg1._active ~= true then
	else
		arg1:DisconnectAll()
		arg1._active = false
	end
end
function tbl_upvr.Disconnect(arg1) -- Line 344
	if arg1.Connected ~= true then
	else
		arg1.Connected = false
		local _node = arg1._node
		local _prev = _node._prev
		local _next = _node._next
		if _next ~= nil then
			_next._prev = _prev
		end
		if _prev ~= nil then
			_prev._next = _next
		else
			_node._signal._head = _next
		end
		_node._connection = nil
		arg1._node = nil
	end
end
tbl_upvr.Destroy = tbl_upvr.Disconnect
return module_upvr