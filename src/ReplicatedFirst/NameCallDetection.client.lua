-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:06
-- Luau version 6, Types version 3
-- Time taken: 0.000822 seconds

local var2_upvw
task.spawn(function() -- Line 2
	--[[ Upvalues[1]:
		[1]: var2_upvw (read and write)
	]]
	while true do
		task.wait(1)
		xpcall(function() -- Line 6
			return game:________SKIBIDI_TOILET()
		end, function() -- Line 8
			--[[ Upvalues[1]:
				[1]: var2_upvw (copied, read and write)
			]]
			local func = debug.info(2, 'f')
			if not var2_upvw then
				var2_upvw = func
			end
			if func ~= var2_upvw then
				while true do
				end
			end
		end)
	end
end)