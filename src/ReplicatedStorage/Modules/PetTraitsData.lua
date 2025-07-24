-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:39
-- Luau version 6, Types version 3
-- Time taken: 0.001089 seconds

local module_upvr = {}
for i, v in {
	Dinosaur = {"Raptor", "Triceratops", "Stegosaurus", "Pterodactyl", "Brontosaurus", "T-Rex", "Iguanodon", "Parasaurolophus", "Pachycephalosaurus", "Dilophosaurus", "Ankylosaurus", "Spinosaurus"};
} do
	local tbl = {}
	for _, v_2 in v do
		tbl[v_2] = true
	end
	module_upvr[i] = tbl
end
function module_upvr.HasTrait(arg1, arg2) -- Line 31
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if not arg1 or arg1 == "" then
		warn("PetTraitsData.HasTrait | No pet name given!")
		return false
	end
	if not arg2 or arg2 == "" then
		warn("PetTraitsData.HasTrait | No trait name given!")
		return false
	end
	local var13 = module_upvr[arg2]
	if typeof(var13) ~= "table" then
		return false
	end
	if var13[arg1] ~= true then
	else
	end
	return true
end
return module_upvr