-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:34
-- Luau version 6, Types version 3
-- Time taken: 0.007857 seconds

local RunService_upvr = game:GetService("RunService")
local Util_upvr = require(script.Parent.Util)
local module_3_upvr = {
	TypeMethods = Util_upvr.MakeDictionary({"Transform", "Validate", "Autocomplete", "Parse", "DisplayName", "Listable", "ValidateOnce", "Prefixes", "Default", "ArgumentOperatorAliases"});
	CommandMethods = Util_upvr.MakeDictionary({"Name", "Aliases", "AutoExec", "Description", "Args", "Run", "ClientRun", "Data", "Group"});
	CommandArgProps = Util_upvr.MakeDictionary({"Name", "Type", "Description", "Optional", "Default"});
	Types = {};
	TypeAliases = {};
	Commands = {};
	CommandsArray = {};
	Cmdr = nil;
	Hooks = {
		BeforeRun = {};
		AfterRun = {};
	};
	Stores = setmetatable({}, {
		__index = function(arg1, arg2) -- Line 20, Named "__index"
			arg1[arg2] = {}
			return arg1[arg2]
		end;
	});
	AutoExecBuffer = {};
}
function module_3_upvr.RegisterType(arg1, arg2, arg3) -- Line 30
	if not arg2 or typeof(arg2) ~= "string" then
		error("Invalid type name provided: nil")
	end
	if not arg2:find("^[%d%l]%w*$") then
		error("Invalid type name provided: \"%s\", type names must be alphanumeric and start with a lower-case letter or a digit.":format(arg2))
	end
	for i in pairs(arg3) do
		if arg1.TypeMethods[i] == nil then
			error("Unknown key/method in type \""..arg2.."\": "..i)
		end
	end
	if arg1.Types[arg2] ~= nil then
		i = arg2
		error("Type \"%s\" has already been registered.":format(i))
	end
	arg3.Name = arg2
	arg3.DisplayName = arg3.DisplayName or arg2
	arg1.Types[arg2] = arg3
	if arg3.Prefixes then
		i = arg3.Prefixes
		arg1:RegisterTypePrefix(arg2, i)
	end
end
function module_3_upvr.RegisterTypePrefix(arg1, arg2, arg3) -- Line 59
	if not arg1.TypeAliases[arg2] then
		arg1.TypeAliases[arg2] = arg2
	end
	arg1.TypeAliases[arg2] = "%s %s":format(arg1.TypeAliases[arg2], arg3)
end
function module_3_upvr.RegisterTypeAlias(arg1, arg2, arg3) -- Line 67
	local var13
	if arg1.TypeAliases[arg2] ~= nil then
		var13 = false
	else
		var13 = true
	end
	assert(var13, "Type alias %s already exists!":format(arg3))
	arg1.TypeAliases[arg2] = arg3
end
function module_3_upvr.RegisterTypesIn(arg1, arg2) -- Line 73
	for _, v in pairs(arg2:GetChildren()) do
		if v:IsA("ModuleScript") then
			v.Parent = arg1.Cmdr.ReplicatedRoot.Types
			require(v)(arg1)
		else
			arg1:RegisterTypesIn(v)
		end
	end
end
module_3_upvr.RegisterHooksIn = module_3_upvr.RegisterTypesIn
function module_3_upvr.RegisterCommandObject(arg1, arg2, arg3) -- Line 90
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	for i_3 in pairs(arg2) do
		if arg1.CommandMethods[i_3] == nil then
			error("Unknown key/method in command "..(arg2.Name or "unknown command")..": "..i_3)
		end
	end
	if arg2.Args then
		for i_4, v_2 in pairs(arg2.Args) do
			if type(v_2) == "table" then
				for i_5 in pairs(v_2) do
					if arg1.CommandArgProps[i_5] == nil then
						error("Unknown property in command \"%s\" argument #%d: %s":format(arg2.Name or "unknown", i_4, i_5))
					end
				end
			end
		end
	end
	if arg2.AutoExec and RunService_upvr:IsClient() then
		table.insert(arg1.AutoExecBuffer, arg2.AutoExec)
		arg1:FlushAutoExecBufferDeferred()
	end
	local var36 = arg1.Commands[arg2.Name:lower()]
	if var36 and var36.Aliases then
		local pairs_result1, pairs_result2_4, pairs_result3_7 = pairs(var36.Aliases)
		for _, v_3 in pairs_result1, pairs_result2_4, pairs_result3_7 do
			i_5 = nil
			arg1.Commands[v_3:lower()] = i_5
		end
	elseif not var36 then
		pairs_result3_7 = arg2
		table.insert(arg1.CommandsArray, pairs_result3_7)
	end
	arg1.Commands[arg2.Name:lower()] = arg2
	if arg2.Aliases then
		for _, v_4 in pairs(arg2.Aliases) do
			arg1.Commands[v_4:lower()] = arg2
		end
	end
end
function module_3_upvr.RegisterCommand(arg1, arg2, arg3, arg4) -- Line 135
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	local arg2 = require(arg2)
	local var46
	if typeof(arg2) ~= "table" then
		var46 = false
	else
		var46 = true
	end
	assert(var46, `Invalid return value from command script "{arg2.Name}" (CommandDefinition expected, got {typeof(arg2)})`)
	if arg3 then
		var46 = RunService_upvr:IsServer()
		assert(var46, "The commandServerScript parameter is not valid for client usage.")
		var46 = arg3
		arg2.Run = require(var46)
	end
	if arg4 then
		var46 = arg2
		if not arg4(var46) then return end
	end
	arg1:RegisterCommandObject(arg2)
	var46 = arg1.Cmdr.ReplicatedRoot
	arg2.Parent = var46.Commands
end
function module_3_upvr.RegisterCommandsIn(arg1, arg2, arg3) -- Line 157
	for _, v_5 in pairs(arg2:GetChildren()) do
		if v_5:IsA("ModuleScript") then
			if not v_5.Name:find("Server") then
				local SOME = arg2:FindFirstChild(v_5.Name.."Server")
				if SOME then
					({})[SOME] = true
				end
				arg1:RegisterCommand(v_5, SOME, arg3)
			else
				({})[v_5] = true
			end
		else
			arg1:RegisterCommandsIn(v_5, arg3)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	for i_9 in pairs({}) do
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if not ({})[i_9] then
			warn("Command script "..i_9.Name.." was skipped because it has 'Server' in its name, and has no equivalent shared script.")
		end
	end
end
function module_3_upvr.RegisterDefaultCommands(arg1, arg2) -- Line 187
	--[[ Upvalues[2]:
		[1]: RunService_upvr (readonly)
		[2]: Util_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local assert = assert
	assert(RunService_upvr:IsServer(), "RegisterDefaultCommands cannot be called from the client.")
	local var58_upvw
	if type(arg2) ~= "table" then
		assert = false
	else
		assert = true
	end
	if assert then
		var58_upvw = Util_upvr.MakeDictionary(var58_upvw)
	end
	local function INLINED() -- Internal function, doesn't exist in bytecode
		return function(arg1_2) -- Line 196
			--[[ Upvalues[1]:
				[1]: var58_upvw (read and write)
			]]
			return var58_upvw[arg1_2.Group] or false
		end
	end
	if not assert or not INLINED() then
	end
	arg1:RegisterCommandsIn(arg1.Cmdr.DefaultCommandsFolder, var58_upvw)
end
function module_3_upvr.GetCommand(arg1, arg2) -- Line 202
	return arg1.Commands[arg2 or "":lower()]
end
function module_3_upvr.GetCommands(arg1) -- Line 208
	return arg1.CommandsArray
end
function module_3_upvr.GetCommandNames(arg1) -- Line 213
	local module = {}
	for _, v_6 in pairs(arg1.CommandsArray) do
		table.insert(module, v_6.Name)
	end
	return module
end
module_3_upvr.GetCommandsAsStrings = module_3_upvr.GetCommandNames
function module_3_upvr.GetTypeNames(arg1) -- Line 226
	local module_2 = {}
	for i_11 in pairs(arg1.Types) do
		table.insert(module_2, i_11)
	end
	return module_2
end
function module_3_upvr.GetType(arg1, arg2) -- Line 238
	return arg1.Types[arg2]
end
function module_3_upvr.GetTypeName(arg1, arg2) -- Line 243
	return arg1.TypeAliases[arg2] or arg2
end
function module_3_upvr.RegisterHook(arg1, arg2, arg3, arg4) -- Line 248
	if not arg1.Hooks[arg2] then
		error("Invalid hook name: %q":format(arg2), 2)
	end
	local tbl = {}
	tbl.callback = arg3
	tbl.priority = arg4 or 0
	table.insert(arg1.Hooks[arg2], tbl)
	table.sort(arg1.Hooks[arg2], function(arg1_3, arg2_2) -- Line 254
		local var76
		if arg1_3.priority >= arg2_2.priority then
			var76 = false
		else
			var76 = true
		end
		return var76
	end)
end
module_3_upvr.AddHook = module_3_upvr.RegisterHook
function module_3_upvr.GetStore(arg1, arg2) -- Line 262
	return arg1.Stores[arg2]
end
function module_3_upvr.FlushAutoExecBufferDeferred(arg1) -- Line 267
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	if arg1.AutoExecFlushConnection then
	else
		arg1.AutoExecFlushConnection = RunService_upvr.Heartbeat:Connect(function() -- Line 272
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.AutoExecFlushConnection:Disconnect()
			arg1.AutoExecFlushConnection = nil
			arg1:FlushAutoExecBuffer()
		end)
	end
end
function module_3_upvr.FlushAutoExecBuffer(arg1) -- Line 280
	for _, v_7 in ipairs(arg1.AutoExecBuffer) do
		for _, v_8 in ipairs(v_7) do
			arg1.Cmdr.Dispatcher:EvaluateAndRun(v_8)
		end
	end
	arg1.AutoExecBuffer = {}
end
return function(arg1) -- Line 290
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	module_3_upvr.Cmdr = arg1
	return module_3_upvr
end