-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:20
-- Luau version 6, Types version 3
-- Time taken: 0.001901 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local SessionTimeLuckData_upvr = require(ReplicatedStorage_upvr.Data.SessionTimeLuckData)
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local module = {
	GetCurrentLuck = function(arg1) -- Line 12, Named "GetCurrentLuck"
		--[[ Upvalues[2]:
			[1]: LocalPlayer_upvr (readonly)
			[2]: SessionTimeLuckData_upvr (readonly)
		]]
		if not LocalPlayer_upvr:GetAttribute("SessionTimeLuckEnabled") then
			return 0
		end
		local var5 = SessionTimeLuckData_upvr.Timer[LocalPlayer_upvr:GetAttribute("SessionTimeLuckIndex") or 1 or 1]
		if not var5 then
			return 0
		end
		return var5.Luck
	end;
}
local GetFarm_upvr = require(ReplicatedStorage_upvr.Modules.GetFarm)
function module.Start(arg1) -- Line 26
	--[[ Upvalues[4]:
		[1]: GetFarm_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
		[3]: ReplicatedStorage_upvr (readonly)
		[4]: SessionTimeLuckData_upvr (readonly)
	]]
	local var11
	while not var11 do
		var11 = GetFarm_upvr(LocalPlayer_upvr)
		if var11 then break end
		task.wait(1)
	end
	local clone_upvr = ReplicatedStorage_upvr.Assets.Models.Luckboard:Clone()
	local LuckboardSpawn = var11:WaitForChild("LuckboardSpawn", 999)
	if not LuckboardSpawn then
		clone_upvr:Destroy()
	else
		clone_upvr:PivotTo(LuckboardSpawn:GetPivot())
		for i, v in SessionTimeLuckData_upvr.Timer do
			local SOME = clone_upvr.Main.SurfaceGui.Frame:FindFirstChild(tostring(i))
			if SOME then
				SOME.Seconds.Text = `{v.Time // 60} Minutes`
				SOME.TextLabel.Text = `+{v.Luck * 100}% Luck`
			end
		end
		local TextLabel_upvr = clone_upvr.Main.SurfaceGui.Frame.ActiveBoost.TextLabel
		local function update() -- Line 59
			--[[ Upvalues[5]:
				[1]: LocalPlayer_upvr (copied, readonly)
				[2]: clone_upvr (readonly)
				[3]: ReplicatedStorage_upvr (copied, readonly)
				[4]: SessionTimeLuckData_upvr (copied, readonly)
				[5]: TextLabel_upvr (readonly)
			]]
			if not LocalPlayer_upvr:GetAttribute("SessionTimeLuckEnabled") then
				clone_upvr.Parent = ReplicatedStorage_upvr
			else
				clone_upvr.Parent = workspace.MapDecorations
				local var16 = LocalPlayer_upvr:GetAttribute("SessionTimeLuckIndex") or 1 or 1
				local var17 = SessionTimeLuckData_upvr.Timer[var16]
				if var17 then
					var16 = `+{var17.Luck * 100}% Luck`
				else
					var16 = "1x Luck"
				end
				TextLabel_upvr.Text = var16
			end
		end
		LocalPlayer_upvr:GetAttributeChangedSignal("SessionTimeLuckIndex"):Connect(update)
		LocalPlayer_upvr:GetAttributeChangedSignal("SessionTimeLuckEnabled"):Connect(update)
		task.spawn(update)
	end
end
task.spawn(module.Start, module)
return module