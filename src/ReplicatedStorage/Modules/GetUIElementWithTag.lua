-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:32
-- Luau version 6, Types version 3
-- Time taken: 0.001050 seconds

local CollectionService_upvr = game:GetService("CollectionService")
local UserInputService_upvr = game:GetService("UserInputService")
local GuiService_upvr = game:GetService("GuiService")
local PlayerGui_upvr = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
return function(arg1) -- Line 9, Named "GetUIElementWithTag"
	--[[ Upvalues[4]:
		[1]: CollectionService_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
		[3]: GuiService_upvr (readonly)
		[4]: PlayerGui_upvr (readonly)
	]]
	local var7 = UserInputService_upvr:GetMouseLocation() - GuiService_upvr:GetGuiInset()
	for _, v in CollectionService_upvr:GetTagged(arg1), nil do
		if v:IsDescendantOf(PlayerGui_upvr) and table.find(PlayerGui_upvr:GetGuiObjectsAtPosition(var7.X, var7.Y), v) then
			return v
		end
	end
	return nil
end