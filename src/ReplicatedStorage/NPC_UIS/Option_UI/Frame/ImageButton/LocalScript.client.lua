-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:57
-- Luau version 6, Types version 3
-- Time taken: 0.000915 seconds

local TweenService = game:GetService("TweenService")
local TweenInfo_new_result1 = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0)
local UIPadding = script.Parent.Parent.Frame.Text_Element.UIPadding
local ImageLabel = script.Parent.Parent.ImageLabel
local Hover_upvr = game.SoundService.Hover
local any_Create_result1_upvr = TweenService:Create(UIPadding, TweenInfo_new_result1, {
	PaddingLeft = UDim.new(0.04, 0);
})
local any_Create_result1_upvr_4 = TweenService:Create(ImageLabel, TweenInfo_new_result1, {
	ImageTransparency = 0;
})
script.Parent.MouseEnter:Connect(function() -- Line 12
	--[[ Upvalues[3]:
		[1]: Hover_upvr (readonly)
		[2]: any_Create_result1_upvr (readonly)
		[3]: any_Create_result1_upvr_4 (readonly)
	]]
	Hover_upvr.PlaybackSpeed = 1 + math.random(-5, 5) / 100
	Hover_upvr.Playing = true
	Hover_upvr.TimePosition = 0
	any_Create_result1_upvr:Play()
	any_Create_result1_upvr_4:Play()
end)
local any_Create_result1_upvr_3 = TweenService:Create(UIPadding, TweenInfo_new_result1, {
	PaddingLeft = UDim.new(0, 0);
})
local any_Create_result1_upvr_2 = TweenService:Create(ImageLabel, TweenInfo_new_result1, {
	ImageTransparency = script.Parent.Parent.ImageLabel.ImageTransparency;
})
script.Parent.MouseLeave:Connect(function() -- Line 19
	--[[ Upvalues[2]:
		[1]: any_Create_result1_upvr_3 (readonly)
		[2]: any_Create_result1_upvr_2 (readonly)
	]]
	any_Create_result1_upvr_3:Play()
	any_Create_result1_upvr_2:Play()
end)