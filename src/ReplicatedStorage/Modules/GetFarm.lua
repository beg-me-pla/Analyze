-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:24
-- Luau version 6, Types version 3
-- Time taken: 0.001373 seconds

local module_upvr = {}
for _, v_upvr in workspace.Farm:GetChildren() do
	local Data_3 = v_upvr:FindFirstChild("Important"):FindFirstChild("Data")
	module_upvr[Data_3.Owner.Value] = v_upvr
	local Value_upvw = Data_3.Owner.Value
	Data_3.Owner.Changed:Connect(function(arg1) -- Line 11
		--[[ Upvalues[3]:
			[1]: module_upvr (readonly)
			[2]: Value_upvw (read and write)
			[3]: v_upvr (readonly)
		]]
		module_upvr[Value_upvw] = nil
		module_upvr[arg1] = v_upvr
		Value_upvw = arg1
	end)
end
local function GetFarm_Legacy_upvr(arg1) -- Line 18, Named "GetFarm_Legacy"
	if not arg1 then
	else
		for _, v_2 in workspace.Farm:GetChildren() do
			local Important = v_2:FindFirstChild("Important")
			if Important then
				local Data_2 = Important:FindFirstChild("Data")
				if Data_2 and Data_2.Owner.Value == arg1.Name then
					return v_2
				end
			end
		end
	end
end
return function(arg1) -- Line 28, Named "GetFarm"
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: GetFarm_Legacy_upvr (readonly)
	]]
	if not arg1 then return end
	if not module_upvr[arg1.Name] then
		return GetFarm_Legacy_upvr(arg1)
	end
	return module_upvr[arg1.Name]
end