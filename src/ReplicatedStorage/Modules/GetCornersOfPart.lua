-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:34
-- Luau version 6, Types version 3
-- Time taken: 0.000734 seconds

return function(arg1) -- Line 1, Named "GetCornersOfPart"
	local Size = arg1.Size
	local CFrame = arg1.CFrame
	return {CFrame * CFrame.new(Size.X / 2, Size.Y / 2, Size.Z / 2), CFrame * CFrame.new(-Size.X / 2, Size.Y / 2, Size.Z / 2), CFrame * CFrame.new(Size.X / 2, -Size.Y / 2, Size.Z / 2), CFrame * CFrame.new(-Size.X / 2, -Size.Y / 2, Size.Z / 2), CFrame * CFrame.new(Size.X / 2, Size.Y / 2, -Size.Z / 2), CFrame * CFrame.new(-Size.X / 2, Size.Y / 2, -Size.Z / 2), CFrame * CFrame.new(Size.X / 2, -Size.Y / 2, -Size.Z / 2), CFrame * CFrame.new(-Size.X / 2, -Size.Y / 2, -Size.Z / 2)}
end