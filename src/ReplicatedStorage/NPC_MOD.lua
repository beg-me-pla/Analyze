-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:07
-- Luau version 6, Types version 3
-- Time taken: 0.001054 seconds

local module = {}
local Field_Of_View_Module_upvr = require(game.ReplicatedStorage.Field_Of_View_Module)
function module.Can_Speak(arg1) -- Line 4
	--[[ Upvalues[1]:
		[1]: Field_Of_View_Module_upvr (readonly)
	]]
	local var3 = false
	if Field_Of_View_Module_upvr.Return_Core_FOV() == 70 then
		var3 = true
	end
	return var3
end
function module.Start_Speak(arg1) -- Line 13
	--[[ Upvalues[1]:
		[1]: Field_Of_View_Module_upvr (readonly)
	]]
	Field_Of_View_Module_upvr.Change_FOV_CORE(65)
	Field_Of_View_Module_upvr.Change_FOV(65, 2)
end
local Frame_Popup_Module_upvr = require(game.ReplicatedStorage.Frame_Popup_Module)
function module.End_Speak(arg1) -- Line 17
	--[[ Upvalues[2]:
		[1]: Frame_Popup_Module_upvr (readonly)
		[2]: Field_Of_View_Module_upvr (readonly)
	]]
	if Frame_Popup_Module_upvr.Can() == true then
		Field_Of_View_Module_upvr.Change_FOV_CORE(70)
		Field_Of_View_Module_upvr.Change_FOV(70, 1)
	end
end
return module