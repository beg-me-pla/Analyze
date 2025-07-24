-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:33:08
-- Luau version 6, Types version 3
-- Time taken: 0.000674 seconds

local CollectionService_upvr = game:GetService("CollectionService")
task.spawn(function() -- Line 6
	--[[ Upvalues[1]:
		[1]: CollectionService_upvr (readonly)
	]]
	while true do
		for _, v in CollectionService_upvr:GetTagged("HamsterWheel"), nil do
			if v:IsA("Model") and v.PrimaryPart == nil then
				v:PivotTo(v:GetPivot() * CFrame.Angles(0, 0, math.rad(-90 * task.wait())))
			end
		end
	end
end)