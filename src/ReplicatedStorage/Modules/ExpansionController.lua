-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:34
-- Luau version 6, Types version 3
-- Time taken: 0.004382 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local UpdateService_upvr = require(ReplicatedStorage_upvr.Modules.UpdateService)
local DataService_upvr = require(ReplicatedStorage_upvr.Modules.DataService)
local Expansions_upvr = require(ReplicatedStorage_upvr.Data.Expansions)
local module_upvr = {
	GetNextExpansions = function(arg1) -- Line 22, Named "GetNextExpansions"
		--[[ Upvalues[3]:
			[1]: DataService_upvr (readonly)
			[2]: UpdateService_upvr (readonly)
			[3]: Expansions_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 19 start (CF ANALYSIS FAILED)
		if not DataService_upvr:GetData() then
			return {}
		end
		if UpdateService_upvr:IsHiddenFromUpdate("Expansions") then
			return {}
		end
		-- KONSTANTERROR: [0] 1. Error Block 19 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [59] 47. Error Block 14 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [59] 47. Error Block 14 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [27] 21. Error Block 6 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [59.9]
		-- KONSTANTERROR: [27] 21. Error Block 6 end (CF ANALYSIS FAILED)
	end;
}
local GetFarmAsync_upvr = require(ReplicatedStorage_upvr.Modules.GetFarmAsync)
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local Trove_upvr = require(ReplicatedStorage_upvr.Modules.Trove)
local Remotes_upvr = require(ReplicatedStorage_upvr.Modules.Remotes)
local MarketController_upvr = require(ReplicatedStorage_upvr.Modules.MarketController)
local Comma_Module_upvr = require(ReplicatedStorage_upvr.Comma_Module)
local UseDynamicPrices_upvr = require(ReplicatedStorage_upvr.Modules.UseDynamicPrices)
local NumberUtil_upvr = require(ReplicatedStorage_upvr.Modules.NumberUtil)
function module_upvr.Start(arg1) -- Line 59
	--[[ Upvalues[13]:
		[1]: GetFarmAsync_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
		[3]: DataService_upvr (readonly)
		[4]: UpdateService_upvr (readonly)
		[5]: module_upvr (readonly)
		[6]: Expansions_upvr (readonly)
		[7]: ReplicatedStorage_upvr (readonly)
		[8]: Trove_upvr (readonly)
		[9]: Remotes_upvr (readonly)
		[10]: MarketController_upvr (readonly)
		[11]: Comma_Module_upvr (readonly)
		[12]: UseDynamicPrices_upvr (readonly)
		[13]: NumberUtil_upvr (readonly)
	]]
	local var7_result1_upvr = GetFarmAsync_upvr(LocalPlayer_upvr)
	if not var7_result1_upvr then
	else
		local any_GetData_result1_upvr = DataService_upvr:GetData()
		if not any_GetData_result1_upvr then return end
		local tbl_upvr = {}
		local function updateSigns_upvr() -- Line 73, Named "updateSigns"
			--[[ Upvalues[13]:
				[1]: any_GetData_result1_upvr (readonly)
				[2]: UpdateService_upvr (copied, readonly)
				[3]: var7_result1_upvr (readonly)
				[4]: module_upvr (copied, readonly)
				[5]: tbl_upvr (readonly)
				[6]: Expansions_upvr (copied, readonly)
				[7]: ReplicatedStorage_upvr (copied, readonly)
				[8]: Trove_upvr (copied, readonly)
				[9]: Remotes_upvr (copied, readonly)
				[10]: MarketController_upvr (copied, readonly)
				[11]: Comma_Module_upvr (copied, readonly)
				[12]: UseDynamicPrices_upvr (copied, readonly)
				[13]: NumberUtil_upvr (copied, readonly)
			]]
			if not any_GetData_result1_upvr.ExpansionsData.CanSeeExpansions then
			else
				if UpdateService_upvr:IsHiddenFromUpdate("Expansions") then return end
				local any_GetNextExpansions_result1 = module_upvr:GetNextExpansions()
				for i, v in table.clone(tbl_upvr) do
					if not table.find(any_GetNextExpansions_result1, i) then
						v.Trove:Destroy()
						tbl_upvr[i] = nil
					end
				end
				for _, v_2_upvr in any_GetNextExpansions_result1 do
					local var30
					if not tbl_upvr[v_2_upvr] then
						local var31_upvr = Expansions_upvr[v_2_upvr]
						var30 = ReplicatedStorage_upvr.Assets.Expansions
						local SOME = var30.Models:FindFirstChild(tostring(v_2_upvr))
						var30 = SOME
						if var30 then
							var30 = SOME:FindFirstChild("Expand")
						end
						if var30 then
							local any_new_result1 = Trove_upvr.new()
							local clone_2_upvr = any_new_result1:Clone(ReplicatedStorage_upvr.Assets.Expansions.ExpandSign)
							tbl_upvr[v_2_upvr] = {
								Model = clone_2_upvr;
								Trove = any_new_result1;
							}
							clone_2_upvr.Name = "ExpansionSign"
							clone_2_upvr:PivotTo(var7_result1_upvr.Center_Point:GetPivot():ToWorldSpace(SOME:GetPivot():ToObjectSpace(var30:GetPivot())))
							clone_2_upvr.Parent = var7_result1_upvr
							any_new_result1:Add(clone_2_upvr.ProximityPrompt.Triggered:Connect(function(arg1_2) -- Line 121
								--[[ Upvalues[4]:
									[1]: var31_upvr (readonly)
									[2]: any_GetData_result1_upvr (copied, readonly)
									[3]: v_2_upvr (readonly)
									[4]: Remotes_upvr (copied, readonly)
								]]
								local var41
								if var41 then
									var41 = nil
									for i_3, v_3 in any_GetData_result1_upvr.ExpansionsData.ExpansionTimers do
										if v_3.Expansion == v_2_upvr then
											var41 = v_3
										end
									end
									if var41 and workspace:GetServerTimeNow() < var41.Timer then
										i_3 = Remotes_upvr
										i_3.Expansions.SkipTimer.send(v_2_upvr)
										return
									end
								end
								Remotes_upvr.Expansions.Expand.send(v_2_upvr)
							end))
							local var42_upvw = true
							any_new_result1:Add(function() -- Line 141
								--[[ Upvalues[1]:
									[1]: var42_upvw (read and write)
								]]
								var42_upvw = false
							end)
							local var45_upvw
							local TextLabel_upvr = clone_2_upvr.SurfaceGui.TextLabel
							any_new_result1:Add(task.spawn(function() -- Line 148
								--[[ Upvalues[11]:
									[1]: var42_upvw (read and write)
									[2]: any_GetData_result1_upvr (copied, readonly)
									[3]: v_2_upvr (readonly)
									[4]: var45_upvw (read and write)
									[5]: TextLabel_upvr (readonly)
									[6]: clone_2_upvr (readonly)
									[7]: MarketController_upvr (copied, readonly)
									[8]: var31_upvr (readonly)
									[9]: Comma_Module_upvr (copied, readonly)
									[10]: UseDynamicPrices_upvr (copied, readonly)
									[11]: NumberUtil_upvr (copied, readonly)
								]]
								-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
								-- KONSTANTERROR: [0] 1. Error Block 59 start (CF ANALYSIS FAILED)
								local var55
								-- KONSTANTERROR: [0] 1. Error Block 59 end (CF ANALYSIS FAILED)
								-- KONSTANTERROR: [2] 3. Error Block 62 start (CF ANALYSIS FAILED)
								var55 = nil
								for _, v_4 in any_GetData_result1_upvr.ExpansionsData.ExpansionTimers do
									if v_4.Expansion == v_2_upvr then
										var55 = v_4
									end
								end
								if not var55 or not var55.Timer then
								end
								-- KONSTANTERROR: [2] 3. Error Block 62 end (CF ANALYSIS FAILED)
							end))
						end
					end
				end
			end
		end
		xpcall(updateSigns_upvr, warn)
		assert(DataService_upvr:GetPathSignal("ExpansionsData/@")):Connect(updateSigns_upvr)
		task.spawn(function() -- Line 216
			--[[ Upvalues[2]:
				[1]: UpdateService_upvr (copied, readonly)
				[2]: updateSigns_upvr (readonly)
			]]
			while true do
				if not UpdateService_upvr:IsHiddenFromUpdate("Expansions") then
					updateSigns_upvr()
					return
				end
				task.wait(1)
			end
		end)
	end
end
task.spawn(module_upvr.Start, module_upvr)
return module_upvr