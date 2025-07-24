-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:33:09
-- Luau version 6, Types version 3
-- Time taken: 0.000636 seconds

local Debris_upvr = game:GetService("Debris")
game:GetService("ReplicatedStorage").GameEvents.HapticEvent.OnClientEvent:Connect(function(arg1) -- Line 5
	--[[ Upvalues[1]:
		[1]: Debris_upvr (readonly)
	]]
	assert(Enum.HapticEffectType:FromName(arg1), `HapticReceiver got an invalid HapticType ({typeof(arg1)}: {arg1})`)
	if game:GetService("RunService"):IsStudio() then
		print("received haptic request of type", arg1)
	end
	local HapticEffect = Instance.new("HapticEffect")
	HapticEffect.Type = Enum.HapticEffectType:FromName(arg1)
	HapticEffect.Parent = workspace
	HapticEffect:Play()
	Debris_upvr:AddItem(HapticEffect, 5)
end)