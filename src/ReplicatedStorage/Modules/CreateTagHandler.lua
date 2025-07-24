-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:27
-- Luau version 6, Types version 3
-- Time taken: 0.001088 seconds

local CollectionService_upvr = game:GetService("CollectionService")
return function(arg1) -- Line 3, Named "CreateTagHandler"
	--[[ Upvalues[1]:
		[1]: CollectionService_upvr (readonly)
	]]
	local Tag = arg1.Tag
	local var8
	if not var8 then
		function var8() -- Line 5
		end
	end
	local OnInstanceRemoved = arg1.OnInstanceRemoved
	if not OnInstanceRemoved then
		function OnInstanceRemoved() -- Line 6
		end
	end
	for _, v in CollectionService_upvr:GetTagged(Tag), nil do
		task.spawn(var8, v)
	end
	CollectionService_upvr:GetInstanceAddedSignal(Tag):Connect(var8)
	CollectionService_upvr:GetInstanceRemovedSignal(Tag):Connect(OnInstanceRemoved)
end