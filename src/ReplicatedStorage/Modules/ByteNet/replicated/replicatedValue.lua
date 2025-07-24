-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:08
-- Luau version 6, Types version 3
-- Time taken: 0.001150 seconds

local HttpService_upvr = game:GetService("HttpService")
local var2_upvr
if game:GetService("RunService"):IsServer() then
	var2_upvr = "server"
else
	var2_upvr = "client"
end
local tbl = {}
local tbl_upvr = {
	__index = tbl;
}
function tbl.write(arg1, arg2) -- Line 16
	--[[ Upvalues[2]:
		[1]: var2_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	local var5
	if var2_upvr ~= "server" then
		var5 = false
	else
		var5 = true
	end
	assert(var5, "cannot write to replicatdvalue on client")
	arg1._luauData = arg2
	var5 = HttpService_upvr:JSONEncode(arg2)
	arg1._value.Value = var5
end
function tbl.read(arg1) -- Line 25
	return arg1._luauData
end
return function(arg1) -- Line 29
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: var2_upvr (readonly)
		[3]: HttpService_upvr (readonly)
	]]
	local setmetatable_result1_upvr = setmetatable({}, tbl_upvr)
	setmetatable_result1_upvr._luauData = {}
	setmetatable_result1_upvr._value = arg1
	if var2_upvr == "client" then
		setmetatable_result1_upvr._luauData = table.freeze(HttpService_upvr:JSONDecode(arg1.Value))
		arg1.Changed:Connect(function(arg1_2) -- Line 40
			--[[ Upvalues[2]:
				[1]: setmetatable_result1_upvr (readonly)
				[2]: HttpService_upvr (copied, readonly)
			]]
			if not arg1_2 then
			else
				setmetatable_result1_upvr._luauData = table.freeze(HttpService_upvr:JSONDecode(arg1_2))
			end
		end)
	end
	return setmetatable_result1_upvr
end