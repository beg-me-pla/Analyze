-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:07
-- Luau version 6, Types version 3
-- Time taken: 0.001820 seconds

local packetIDs_upvr = script.Parent.packetIDs
if game:GetService("RunService"):IsServer() then
	packetIDs_upvr = "server"
else
	packetIDs_upvr = "client"
end
local values_upvr = require(script.Parent.Parent.replicated.values)
local namespacesDependencies_upvr = require(script.Parent.namespacesDependencies)
local var5_upvw = 0
local packetIDs_upvr_2_upvr = require(packetIDs_upvr)
return function(arg1, arg2) -- Line 19
	--[[ Upvalues[5]:
		[1]: values_upvr (readonly)
		[2]: namespacesDependencies_upvr (readonly)
		[3]: packetIDs_upvr (readonly)
		[4]: var5_upvw (read and write)
		[5]: packetIDs_upvr_2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_access_result1 = values_upvr.access(arg1)
	namespacesDependencies_upvr.start(arg1)
	local arg2_result1 = arg2()
	local module = {}
	if packetIDs_upvr == "server" then
		for i in arg2_result1 do
			var5_upvw += 1
			;({
				structs = {};
				packets = {};
			}).packets[i] = var5_upvw
			module[i] = arg2_result1[i](var5_upvw)
			packetIDs_upvr_2_upvr.set(var5_upvw, module[i])
			local var31
		end
		for i_2, v in namespacesDependencies_upvr.empty(), nil do
			var31.structs[i_2] = v
			local var32
		end
		any_access_result1:write(var32)
		return module
	end
	if packetIDs_upvr == "client" then
		local any_read_result1 = any_access_result1:read()
		for i_3, v_2 in arg2_result1 do
			module[i_3] = v_2(any_read_result1.packets[i_3])
			packetIDs_upvr_2_upvr.set(any_read_result1.packets[i_3], module[i_3])
			local _
		end
	end
	return module
end