-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:10
-- Luau version 6, Types version 3
-- Time taken: 0.001291 seconds

local module = {}
local LocalPlayer_upvr = game.Players.LocalPlayer
function module.Setup() -- Line 4
	--[[ Upvalues[1]:
		[1]: LocalPlayer_upvr (readonly)
	]]
	LocalPlayer_upvr:SetAttribute("Core_FOV", 70)
end
function module.Change_FOV_CORE(arg1) -- Line 7
	--[[ Upvalues[1]:
		[1]: LocalPlayer_upvr (readonly)
	]]
	if LocalPlayer_upvr and arg1 then
		LocalPlayer_upvr:SetAttribute("Core_FOV", arg1)
	end
end
function module.Return_Core_FOV() -- Line 12
	--[[ Upvalues[1]:
		[1]: LocalPlayer_upvr (readonly)
	]]
	return LocalPlayer_upvr:GetAttribute("Core_FOV")
end
local TweenService_upvr = game:GetService("TweenService")
function module.Change_FOV(arg1, arg2) -- Line 15
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: TweenService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var4
	if game.Workspace.CurrentCamera then
		if var4 == nil then
			var4 = 0.5
		end
		if arg1 == 70 then
		end
		local TweenInfo_new_result1 = TweenInfo.new((var4) * (math.random(95, 105) * 0.01), Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
		local any_Create_result1 = TweenService_upvr:Create(game.Workspace.CurrentCamera, TweenInfo_new_result1, {
			FieldOfView = LocalPlayer_upvr:GetAttribute("Core_FOV");
		})
		any_Create_result1:Play()
		game.Debris:AddItem(any_Create_result1, TweenInfo_new_result1.Time)
	end
end
return module