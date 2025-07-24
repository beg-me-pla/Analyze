-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:33:06
-- Luau version 6, Types version 3
-- Time taken: 0.001191 seconds

local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local function updateToolTips(arg1) -- Line 5
	--[[ Upvalues[1]:
		[1]: LocalPlayer_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local Backpack = LocalPlayer_upvr:FindFirstChild("Backpack")
	if not Backpack then
	else
		for _, v in ipairs(Backpack:GetChildren()) do
			(function(arg1_2) -- Line 11, Named "processTool"
				if arg1_2:IsA("Tool") and string.find(arg1_2.Name, "(kg)") then
					arg1_2.ToolTip = arg1_2.Name
					arg1_2:GetPropertyChangedSignal("Name"):Connect(function() -- Line 17
						--[[ Upvalues[1]:
							[1]: arg1_2 (readonly)
						]]
						if string.find(arg1_2.Name, "(kg)") then
							arg1_2.ToolTip = arg1_2.Name
						end
					end)
				end
			end)(v)
			local var15_upvr
		end
		Backpack.ChildAdded:Connect(function(arg1_3) -- Line 31
			--[[ Upvalues[1]:
				[1]: var15_upvr (readonly)
			]]
			var15_upvr(arg1_3)
		end)
	end
end
LocalPlayer_upvr.CharacterAdded:Connect(updateToolTips)
if LocalPlayer_upvr.Character then
	updateToolTips(LocalPlayer_upvr.Character)
end