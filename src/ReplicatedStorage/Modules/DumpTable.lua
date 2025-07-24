-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:19
-- Luau version 6, Types version 3
-- Time taken: 0.008994 seconds

function dump(arg1) -- Line 1
	local tbl_upvr = {
		['\a'] = "\\a";
		['\b'] = "\\b";
		['\f'] = "\\f";
		['\n'] = "\\n";
		['\r'] = "\\r";
		['\t'] = "\\t";
		['\v'] = "\\v";
		['\x00'] = "\\0";
	}
	local tbl_2_upvr = {
		["and"] = true;
		["break"] = true;
		["do"] = true;
		["else"] = true;
		["elseif"] = true;
		["end"] = true;
		["false"] = true;
		["for"] = true;
		["function"] = true;
		["if"] = true;
		["in"] = true;
		["local"] = true;
		["nil"] = true;
		["not"] = true;
		["or"] = true;
		["repeat"] = true;
		["return"] = true;
		["then"] = true;
		["true"] = true;
		["until"] = true;
		while = true;
		continue = true;
	}
	local tbl_upvr_2 = {
		[DockWidgetPluginGuiInfo.new] = "DockWidgetPluginGuiInfo.new";
		[warn] = "warn";
		[CFrame.fromMatrix] = "CFrame.fromMatrix";
		[CFrame.fromAxisAngle] = "CFrame.fromAxisAngle";
		[CFrame.fromOrientation] = "CFrame.fromOrientation";
		[CFrame.fromEulerAnglesXYZ] = "CFrame.fromEulerAnglesXYZ";
		[CFrame.Angles] = "CFrame.Angles";
		[CFrame.fromEulerAnglesYXZ] = "CFrame.fromEulerAnglesYXZ";
		[CFrame.new] = "CFrame.new";
		[gcinfo] = "gcinfo";
		[os.clock] = "os.clock";
		[os.difftime] = "os.difftime";
		[os.time] = "os.time";
		[os.date] = "os.date";
		[tick] = "tick";
		[bit32.band] = "bit32.band";
		[bit32.extract] = "bit32.extract";
		[bit32.bor] = "bit32.bor";
		[bit32.bnot] = "bit32.bnot";
		[bit32.arshift] = "bit32.arshift";
		[bit32.rshift] = "bit32.rshift";
		[bit32.rrotate] = "bit32.rrotate";
		[bit32.replace] = "bit32.replace";
		[bit32.lshift] = "bit32.lshift";
		[bit32.lrotate] = "bit32.lrotate";
		[bit32.btest] = "bit32.btest";
		[bit32.bxor] = "bit32.bxor";
		[pairs] = "pairs";
		[NumberSequence.new] = "NumberSequence.new";
		[assert] = "assert";
		[tonumber] = "tonumber";
		[Color3.fromHSV] = "Color3.fromHSV";
		[Color3.toHSV] = "Color3.toHSV";
		[Color3.fromRGB] = "Color3.fromRGB";
		[Color3.new] = "Color3.new";
		[Delay] = "Delay";
		[Stats] = "Stats";
		[UserSettings] = "UserSettings";
		[coroutine.resume] = "coroutine.resume";
		[coroutine.yield] = "coroutine.yield";
		[coroutine.running] = "coroutine.running";
		[coroutine.status] = "coroutine.status";
		[coroutine.wrap] = "coroutine.wrap";
		[coroutine.create] = "coroutine.create";
		[coroutine.isyieldable] = "coroutine.isyieldable";
		[NumberRange.new] = "NumberRange.new";
		[PhysicalProperties.new] = "PhysicalProperties.new";
		[PluginManager] = "PluginManager";
		[Ray.new] = "Ray.new";
		[NumberSequenceKeypoint.new] = "NumberSequenceKeypoint.new";
		[Version] = "Version";
		[Vector2.new] = "Vector2.new";
		[Instance.new] = "Instance.new";
		[delay] = "delay";
		[spawn] = "spawn";
		[unpack] = "unpack";
		[string.split] = "string.split";
		[string.match] = "string.match";
		[string.gmatch] = "string.gmatch";
		[string.upper] = "string.upper";
		[string.gsub] = "string.gsub";
		[string.format] = "string.format";
		[string.lower] = "string.lower";
		[string.sub] = "string.sub";
		[string.pack] = "string.pack";
		[string.rep] = "string.rep";
		[string.char] = "string.char";
		[string.packsize] = "string.packsize";
		[string.reverse] = "string.reverse";
		[string.byte] = "string.byte";
		[string.unpack] = "string.unpack";
		[string.len] = "string.len";
		[string.find] = "string.find";
		[CellId.new] = "CellId.new";
		[ypcall] = "ypcall";
		[version] = "version";
		[print] = "print";
		[stats] = "stats";
		[printidentity] = "printidentity";
		[settings] = "settings";
		[UDim2.fromOffset] = "UDim2.fromOffset";
		[UDim2.fromScale] = "UDim2.fromScale";
		[UDim2.new] = "UDim2.new";
		[table.pack] = "table.pack";
		[table.move] = "table.move";
		[table.insert] = "table.insert";
		[table.getn] = "table.getn";
		[table.foreachi] = "table.foreachi";
		[table.maxn] = "table.maxn";
		[table.foreach] = "table.foreach";
		[table.concat] = "table.concat";
		[table.unpack] = "table.unpack";
		[table.find] = "table.find";
		[table.create] = "table.create";
		[table.sort] = "table.sort";
		[table.remove] = "table.remove";
		[TweenInfo.new] = "TweenInfo.new";
		[loadstring] = "loadstring";
		[require] = "require";
		[Vector3.FromNormalId] = "Vector3.FromNormalId";
		[Vector3.FromAxis] = "Vector3.FromAxis";
		[Vector3.fromAxis] = "Vector3.fromAxis";
		[Vector3.fromNormalId] = "Vector3.fromNormalId";
		[Vector3.new] = "Vector3.new";
		[Vector3int16.new] = "Vector3int16.new";
		[setmetatable] = "setmetatable";
		[next] = "next";
		[Wait] = "Wait";
		[wait] = "wait";
		[ipairs] = "ipairs";
		[elapsedTime] = "elapsedTime";
		[time] = "time";
		[rawequal] = "rawequal";
		[Vector2int16.new] = "Vector2int16.new";
		[collectgarbage] = "collectgarbage";
		[newproxy] = "newproxy";
		[Spawn] = "Spawn";
		[PluginDrag.new] = "PluginDrag.new";
		[Region3.new] = "Region3.new";
		[utf8.offset] = "utf8.offset";
		[utf8.codepoint] = "utf8.codepoint";
		[utf8.nfdnormalize] = "utf8.nfdnormalize";
		[utf8.char] = "utf8.char";
		[utf8.codes] = "utf8.codes";
		[utf8.len] = "utf8.len";
		[utf8.graphemes] = "utf8.graphemes";
		[utf8.nfcnormalize] = "utf8.nfcnormalize";
		[xpcall] = "xpcall";
		[tostring] = "tostring";
		[rawset] = "rawset";
		[PathWaypoint.new] = "PathWaypoint.new";
		[DateTime.fromUnixTimestamp] = "DateTime.fromUnixTimestamp";
		[DateTime.now] = "DateTime.now";
		[DateTime.fromIsoDate] = "DateTime.fromIsoDate";
		[DateTime.fromUnixTimestampMillis] = "DateTime.fromUnixTimestampMillis";
		[DateTime.fromLocalTime] = "DateTime.fromLocalTime";
		[DateTime.fromUniversalTime] = "DateTime.fromUniversalTime";
		[Random.new] = "Random.new";
		[typeof] = "typeof";
		[RaycastParams.new] = "RaycastParams.new";
		[math.log] = "math.log";
		[math.ldexp] = "math.ldexp";
		[math.rad] = "math.rad";
		[math.cosh] = "math.cosh";
		[math.random] = "math.random";
		[math.frexp] = "math.frexp";
		[math.tanh] = "math.tanh";
		[math.floor] = "math.floor";
		[math.max] = "math.max";
		[math.sqrt] = "math.sqrt";
		[math.modf] = "math.modf";
		[math.pow] = "math.pow";
		[math.atan] = "math.atan";
		[math.tan] = "math.tan";
		[math.cos] = "math.cos";
		[math.sign] = "math.sign";
		[math.clamp] = "math.clamp";
		[math.log10] = "math.log10";
		[math.noise] = "math.noise";
		[math.acos] = "math.acos";
		[math.abs] = "math.abs";
		[math.sinh] = "math.sinh";
		[math.asin] = "math.asin";
		[math.min] = "math.min";
		[math.deg] = "math.deg";
		[math.fmod] = "math.fmod";
		[math.randomseed] = "math.randomseed";
		[math.atan2] = "math.atan2";
		[math.ceil] = "math.ceil";
		[math.sin] = "math.sin";
		[math.exp] = "math.exp";
		[getfenv] = "getfenv";
		[pcall] = "pcall";
		[ColorSequenceKeypoint.new] = "ColorSequenceKeypoint.new";
		[ColorSequence.new] = "ColorSequence.new";
		[type] = "type";
		[Region3int16.new] = "Region3int16.new";
		[ElapsedTime] = "ElapsedTime";
		[select] = "select";
		[getmetatable] = "getmetatable";
		[rawget] = "rawget";
		[Faces.new] = "Faces.new";
		[Rect.new] = "Rect.new";
		[BrickColor.Blue] = "BrickColor.Blue";
		[BrickColor.White] = "BrickColor.White";
		[BrickColor.Yellow] = "BrickColor.Yellow";
		[BrickColor.Red] = "BrickColor.Red";
		[BrickColor.Gray] = "BrickColor.Gray";
		[BrickColor.palette] = "BrickColor.palette";
		[BrickColor.New] = "BrickColor.New";
		[BrickColor.Black] = "BrickColor.Black";
		[BrickColor.Green] = "BrickColor.Green";
		[BrickColor.Random] = "BrickColor.Random";
		[BrickColor.DarkGray] = "BrickColor.DarkGray";
		[BrickColor.random] = "BrickColor.random";
		[BrickColor.new] = "BrickColor.new";
		[setfenv] = "setfenv";
		[UDim.new] = "UDim.new";
		[Axes.new] = "Axes.new";
		[error] = "error";
		[debug.traceback] = "debug.traceback";
		[debug.profileend] = "debug.profileend";
		[debug.profilebegin] = "debug.profilebegin";
	}
	local function GetHierarchy_upvr(arg1_2) -- Line 6, Named "GetHierarchy"
		--[[ Upvalues[2]:
			[1]: tbl_upvr (readonly)
			[2]: tbl_2_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local module = {}
		local var6
		while arg1_2 do
			var6 += 1
		end
		local var7 = arg1_2
		while var7 do
			local var8 = 0 + 1
			local Name = var7.Name
			if var7 == game then
				Name = "game"
			else
				Name = string.gsub(Name, "[%c%z]", tbl_upvr)
			end
			local var10 = Name
			if tbl_2_upvr[var10] or not string.match(var10, "^[_%a][_%w]*$") then
			elseif var8 ~= var6 - 1 then
			end
			module[var6 - var8] = '.'.."[\""..var10.."\"]"
		end
		return table.concat(module)
	end
	local function SerializeType_upvr(arg1_3, arg2) -- Line 37, Named "SerializeType"
		--[[ Upvalues[3]:
			[1]: tbl_upvr (readonly)
			[2]: GetHierarchy_upvr (readonly)
			[3]: tbl_upvr_2 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		if arg2 == "string" then
			return string.format("\"%s\"", string.gsub(arg1_3, "[%c%z]", tbl_upvr))
		end
		if arg2 == "Instance" then
			return GetHierarchy_upvr(arg1_3)
		end
		if type(arg1_3) ~= arg2 then
			return arg2..".new("..tostring(arg1_3)..')'
		end
		if arg2 == "function" then
			local var11
			if not tbl_upvr_2[arg1_3] then
				if pcall(setfenv, arg1_3, getfenv(arg1_3)) then
					var11 = "Lua"
				else
					var11 = 'C'
				end
			end
			return "'[Unknown "..var11..' '..tostring(arg1_3).."]'"
		end
		if arg2 == "userdata" then
			return "newproxy("..tostring(not not getmetatable(arg1_3))..')'
		end
		if arg2 == "thread" then
			return "'"..tostring(arg1_3)..", status: "..coroutine.status(arg1_3).."'"
		end
		return tostring(arg1_3)
	end
	local function TableToString_upvr(arg1_4, arg2, arg3, arg4) -- Line 55, Named "TableToString"
		--[[ Upvalues[4]:
			[1]: tbl_upvr (readonly)
			[2]: tbl_2_upvr (readonly)
			[3]: TableToString_upvr (readonly)
			[4]: SerializeType_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 76 start (CF ANALYSIS FAILED)
		local var12 = arg2
		if not var12 then
			var12 = {}
		end
		local var13 = var12
		local var14 = var13[arg1_4]
		local var15
		if var14 then
			if var14[1] == arg3[1] - 1 then
				var15 = "'[Cyclic Parent "
			else
				var15 = "'[Cyclic "
			end
			return var15..tostring(arg1_4)..", path: "..var14[2].."]'"
		end
		local var16 = arg4 or "ROOT"
		if not arg3 then
			local tbl = {}
			var15 = 0
			tbl[1] = var15
			tbl[2] = var16
		end
		local var18 = tbl
		local var19 = var18[1] + 1
		var18[1] = var19
		var18[2] = var16
		var13[arg1_4] = var18
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [64.16]
		if 1 ~= nil then
		else
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local typeof_result1_2 = typeof(nil)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [76.17]
		local typeof_result1 = typeof(nil)
		if typeof_result1_2 == "string" then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local string_gsub_result1 = string.gsub(nil, "[%c%z]", tbl_upvr)
			if tbl_2_upvr[string_gsub_result1] or not string.match(string_gsub_result1, "^[_%a][_%w]*$") then
				local formatted = string.format("[\"%s\"]", string_gsub_result1)
				-- KONSTANTWARNING: GOTO [135] #117
			end
		else
			local function INLINED() -- Internal function, doesn't exist in bytecode
				tbl_3[2] = var16
				tbl_3[1] = var19
				local tbl_3 = {}
				return string.gsub(TableToString_upvr(formatted, var13, tbl_3), "^%s*(.-)%s*$", "%1")
			end
			if typeof_result1_2 ~= "table" or not INLINED() then
			end
			local var26
		end
		if typeof_result1 == "table" then
			if true then
				var26 = ""
			else
				var26 = '.'
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if not TableToString_upvr(nil, var13, {var19, var16}, var16..var26..'['..SerializeType_upvr(formatted, typeof_result1_2)..']') then
				-- KONSTANTERROR: [155] 134. Error Block 49 start (CF ANALYSIS FAILED)
				local var29
				-- KONSTANTERROR: [155] 134. Error Block 49 end (CF ANALYSIS FAILED)
			end
			local var28_result1 = SerializeType_upvr(var29, typeof_result1)
			if not false or not var28_result1 then
				var26 = var28_result1
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			end
			-- KONSTANTWARNING: GOTO [63] #56
		end
		-- KONSTANTERROR: [0] 1. Error Block 76 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [155] 134. Error Block 49 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [155] 134. Error Block 49 end (CF ANALYSIS FAILED)
	end
	return TableToString_upvr(arg1)
end
return dump