-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:59
-- Luau version 6, Types version 3
-- Time taken: 0.000779 seconds

local TweenService = game:GetService("TweenService")
local TweenInfo_new_result1_2 = TweenInfo.new(2.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
local TweenInfo_new_result1 = TweenInfo.new(2.5, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0)
local any_Create_result1_3 = TweenService:Create(script.Parent, TweenInfo_new_result1_2, {
	Rotation = 5;
})
local any_Create_result1_2 = TweenService:Create(script.Parent, TweenInfo_new_result1, {
	Rotation = 0;
})
local any_Create_result1_4 = TweenService:Create(script.Parent, TweenInfo_new_result1_2, {
	Rotation = -5;
})
local any_Create_result1 = TweenService:Create(script.Parent, TweenInfo_new_result1, {
	Rotation = 0;
})
while true do
	any_Create_result1_3:Play()
	task.wait(TweenInfo_new_result1_2.Time)
	any_Create_result1_2:Play()
	task.wait(TweenInfo_new_result1.Time)
	any_Create_result1_4:Play()
	task.wait(TweenInfo_new_result1_2.Time)
	any_Create_result1:Play()
	task.wait(TweenInfo_new_result1.Time)
end