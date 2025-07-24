-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:15
-- Luau version 6, Types version 3
-- Time taken: 0.000678 seconds

local module = {
	Name = "replace";
	Aliases = {"gsub", "//"};
	Description = "Replaces text A with text B";
	Group = "DefaultUtil";
	AutoExec = {"alias \"map|Maps a CSV into another CSV\" replace $1{string|CSV} ([^,]+) \"$2{string|mapped value|Use %1 to insert the element}\"", "alias \"join|Joins a CSV with a specified delimiter\" replace $1{string|CSV} , $2{string|Delimiter}"};
	Args = {{
		Type = "string";
		Name = "Haystack";
		Description = "The source string upon which to perform replacement.";
	}, {
		Type = "string";
		Name = "Needle";
		Description = "The string pattern search for.";
	}, {
		Type = "string";
		Name = "Replacement";
		Description = "The string to replace matches (%1 to insert matches).";
		Default = "";
	}};
}
function module.Run(arg1, arg2, arg3, arg4) -- Line 29
	return arg2:gsub(arg3, arg4)
end
return module