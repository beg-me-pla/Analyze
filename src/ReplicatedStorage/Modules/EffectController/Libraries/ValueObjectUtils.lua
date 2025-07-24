-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:16
-- Luau version 6, Types version 3
-- Time taken: 0.000486 seconds

local module = {}
local module_2_upvr = {
	["nil"] = "StringValue";
	boolean = "BoolValue";
	BrickColor = "BrickColorValue";
	CFrame = "CFrameValue";
	Color3 = "Color3Value";
	number = "NumberValue";
	Instance = "ObjectValue";
	Ray = "RayValue";
	string = "StringValue";
	Vector3 = "Vector3Value";
}
function module.GetClassFromType(arg1) -- Line 19
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	return module_2_upvr[arg1]
end
function module.ConvertTypeToClass(arg1) -- Line 23
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	return Instance.new(module_2_upvr[arg1])
end
return module