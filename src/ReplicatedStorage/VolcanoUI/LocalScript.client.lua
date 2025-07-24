-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:57
-- Luau version 6, Types version 3
-- Time taken: 0.000538 seconds

local Parent = script.Parent
local UIScale = Parent.Holder.UIScale
Parent.Holder.Visible = true
game.TweenService:Create(UIScale, TweenInfo.new(1, Enum.EasingStyle.Bounce, Enum.EasingDirection.In), {
	Scale = 1;
}):Play()
game.TweenService:Create(Parent.Holder.Frame.Frame, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, -1, true), {
	GroupTransparency = 0;
}):Play()
task.wait(5)
game.TweenService:Create(UIScale, TweenInfo.new(1, Enum.EasingStyle.Bounce, Enum.EasingDirection.In), {
	Scale = 0;
}):Play()
task.wait(1)
Parent:Destroy()