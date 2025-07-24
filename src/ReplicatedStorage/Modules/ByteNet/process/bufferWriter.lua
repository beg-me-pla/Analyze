-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:08
-- Luau version 6, Types version 3
-- Time taken: 0.004518 seconds

local var1_upvw
local var2_upvw
local var3_upvw
local var4_upvw
local var5_upvw
return {
	alloc = function(arg1) -- Line 27, Named "alloc"
		--[[ Upvalues[3]:
			[1]: var3_upvw (read and write)
			[2]: var2_upvw (read and write)
			[3]: var4_upvw (read and write)
		]]
		if var2_upvw > var3_upvw + arg1 then
		else
			var2_upvw = math.floor(var2_upvw * 1.5)
			local buffer_create_result1_3 = buffer.create(var2_upvw)
			buffer.copy(buffer_create_result1_3, 0, var4_upvw)
			var4_upvw = buffer_create_result1_3
		end
	end;
	dyn_alloc = function(arg1) -- Line 40, Named "dyn_alloc"
		--[[ Upvalues[3]:
			[1]: var3_upvw (read and write)
			[2]: var2_upvw (read and write)
			[3]: var4_upvw (read and write)
		]]
		while var2_upvw <= var3_upvw + arg1 do
			var2_upvw = math.floor(var2_upvw * 1.5)
		end
		local buffer_create_result1_10 = buffer.create(var2_upvw)
		buffer.copy(buffer_create_result1_10, 0, var4_upvw)
		var4_upvw = buffer_create_result1_10
	end;
	u8 = function(arg1) -- Line 56, Named "u8"
		--[[ Upvalues[3]:
			[1]: var3_upvw (read and write)
			[2]: var2_upvw (read and write)
			[3]: var4_upvw (read and write)
		]]
		if var2_upvw > var3_upvw + 1 then
		else
			var2_upvw = math.floor(var2_upvw * 1.5)
			local buffer_create_result1_4 = buffer.create(var2_upvw)
			buffer.copy(buffer_create_result1_4, 0, var4_upvw)
			var4_upvw = buffer_create_result1_4
		end
		buffer.writeu8(var4_upvw, var3_upvw, arg1)
		var3_upvw += 1
	end;
	i8 = function(arg1) -- Line 62, Named "i8"
		--[[ Upvalues[3]:
			[1]: var3_upvw (read and write)
			[2]: var2_upvw (read and write)
			[3]: var4_upvw (read and write)
		]]
		if var2_upvw > var3_upvw + 1 then
		else
			var2_upvw = math.floor(var2_upvw * 1.5)
			local buffer_create_result1_9 = buffer.create(var2_upvw)
			buffer.copy(buffer_create_result1_9, 0, var4_upvw)
			var4_upvw = buffer_create_result1_9
		end
		buffer.writei8(var4_upvw, var3_upvw, arg1)
		var3_upvw += 1
	end;
	reference = function(arg1) -- Line 69, Named "reference"
		--[[ Upvalues[3]:
			[1]: var5_upvw (read and write)
			[2]: var4_upvw (read and write)
			[3]: var3_upvw (read and write)
		]]
		table.insert(var5_upvw, arg1)
		buffer.writeu8(var4_upvw, var3_upvw, #var5_upvw)
		var3_upvw += 1
	end;
	u16 = function(arg1) -- Line 78, Named "u16"
		--[[ Upvalues[3]:
			[1]: var3_upvw (read and write)
			[2]: var2_upvw (read and write)
			[3]: var4_upvw (read and write)
		]]
		if var2_upvw > var3_upvw + 2 then
		else
			var2_upvw = math.floor(var2_upvw * 1.5)
			local buffer_create_result1 = buffer.create(var2_upvw)
			buffer.copy(buffer_create_result1, 0, var4_upvw)
			var4_upvw = buffer_create_result1
		end
		buffer.writeu16(var4_upvw, var3_upvw, arg1)
		var3_upvw += 2
	end;
	i16 = function(arg1) -- Line 84, Named "i16"
		--[[ Upvalues[3]:
			[1]: var3_upvw (read and write)
			[2]: var2_upvw (read and write)
			[3]: var4_upvw (read and write)
		]]
		if var2_upvw > var3_upvw + 2 then
		else
			var2_upvw = math.floor(var2_upvw * 1.5)
			local buffer_create_result1_6 = buffer.create(var2_upvw)
			buffer.copy(buffer_create_result1_6, 0, var4_upvw)
			var4_upvw = buffer_create_result1_6
		end
		buffer.writeu16(var4_upvw, var3_upvw, arg1)
		var3_upvw += 2
	end;
	u32 = function(arg1) -- Line 90, Named "u32"
		--[[ Upvalues[3]:
			[1]: var3_upvw (read and write)
			[2]: var2_upvw (read and write)
			[3]: var4_upvw (read and write)
		]]
		if var2_upvw > var3_upvw + 4 then
		else
			var2_upvw = math.floor(var2_upvw * 1.5)
			local buffer_create_result1_11 = buffer.create(var2_upvw)
			buffer.copy(buffer_create_result1_11, 0, var4_upvw)
			var4_upvw = buffer_create_result1_11
		end
		buffer.writeu32(var4_upvw, var3_upvw, arg1)
		var3_upvw += 4
	end;
	writestring = function(arg1) -- Line 96, Named "writestring"
		--[[ Upvalues[2]:
			[1]: var4_upvw (read and write)
			[2]: var3_upvw (read and write)
		]]
		buffer.writestring(var4_upvw, var3_upvw, arg1)
		var3_upvw += string.len(arg1)
	end;
	i32 = function(arg1) -- Line 101, Named "i32"
		--[[ Upvalues[3]:
			[1]: var3_upvw (read and write)
			[2]: var2_upvw (read and write)
			[3]: var4_upvw (read and write)
		]]
		if var2_upvw > var3_upvw + 4 then
		else
			var2_upvw = math.floor(var2_upvw * 1.5)
			local buffer_create_result1_5 = buffer.create(var2_upvw)
			buffer.copy(buffer_create_result1_5, 0, var4_upvw)
			var4_upvw = buffer_create_result1_5
		end
		buffer.writei32(var4_upvw, var3_upvw, arg1)
		var3_upvw += 4
	end;
	f32NoAlloc = function(arg1) -- Line 107, Named "f32NoAlloc"
		--[[ Upvalues[2]:
			[1]: var4_upvw (read and write)
			[2]: var3_upvw (read and write)
		]]
		buffer.writef32(var4_upvw, var3_upvw, arg1)
		var3_upvw += 4
	end;
	f64NoAlloc = function(arg1) -- Line 112, Named "f64NoAlloc"
		--[[ Upvalues[2]:
			[1]: var4_upvw (read and write)
			[2]: var3_upvw (read and write)
		]]
		buffer.writef64(var4_upvw, var3_upvw, arg1)
		var3_upvw += 4
	end;
	f32 = function(arg1) -- Line 117, Named "f32"
		--[[ Upvalues[3]:
			[1]: var3_upvw (read and write)
			[2]: var2_upvw (read and write)
			[3]: var4_upvw (read and write)
		]]
		if var2_upvw > var3_upvw + 4 then
		else
			var2_upvw = math.floor(var2_upvw * 1.5)
			local buffer_create_result1_7 = buffer.create(var2_upvw)
			buffer.copy(buffer_create_result1_7, 0, var4_upvw)
			var4_upvw = buffer_create_result1_7
		end
		buffer.writef32(var4_upvw, var3_upvw, arg1)
		var3_upvw += 4
	end;
	f64 = function(arg1) -- Line 123, Named "f64"
		--[[ Upvalues[3]:
			[1]: var3_upvw (read and write)
			[2]: var2_upvw (read and write)
			[3]: var4_upvw (read and write)
		]]
		if var2_upvw > var3_upvw + 8 then
		else
			var2_upvw = math.floor(var2_upvw * 1.5)
			local buffer_create_result1_2 = buffer.create(var2_upvw)
			buffer.copy(buffer_create_result1_2, 0, var4_upvw)
			var4_upvw = buffer_create_result1_2
		end
		buffer.writef64(var4_upvw, var3_upvw, arg1)
		var3_upvw += 8
	end;
	copy = function(arg1) -- Line 129, Named "copy"
		--[[ Upvalues[2]:
			[1]: var4_upvw (read and write)
			[2]: var3_upvw (read and write)
		]]
		buffer.copy(var4_upvw, var3_upvw, arg1)
		var3_upvw += buffer.len(arg1)
	end;
	bool = function(arg1) -- Line 134, Named "bool"
		--[[ Upvalues[3]:
			[1]: var3_upvw (read and write)
			[2]: var2_upvw (read and write)
			[3]: var4_upvw (read and write)
		]]
		local var17
		if var2_upvw > var3_upvw + 1 then
		else
			var2_upvw = math.floor(var2_upvw * 1.5)
			local buffer_create_result1_8 = buffer.create(var2_upvw)
			var17 = 0
			buffer.copy(buffer_create_result1_8, var17, var4_upvw)
			var4_upvw = buffer_create_result1_8
		end
		if arg1 then
			var17 = 1
		else
			var17 = 0
		end
		buffer.writeu8(var4_upvw, var3_upvw, var17)
		var3_upvw += 1
	end;
	load = function(arg1) -- Line 140, Named "load"
		--[[ Upvalues[5]:
			[1]: var1_upvw (read and write)
			[2]: var2_upvw (read and write)
			[3]: var3_upvw (read and write)
			[4]: var5_upvw (read and write)
			[5]: var4_upvw (read and write)
		]]
		var1_upvw = arg1
		var2_upvw = arg1.size
		var3_upvw = arg1.cursor
		var5_upvw = arg1.references
		var4_upvw = arg1.buff
	end;
	export = function() -- Line 148, Named "export"
		--[[ Upvalues[5]:
			[1]: var1_upvw (read and write)
			[2]: var2_upvw (read and write)
			[3]: var3_upvw (read and write)
			[4]: var5_upvw (read and write)
			[5]: var4_upvw (read and write)
		]]
		var1_upvw.size = var2_upvw
		var1_upvw.cursor = var3_upvw
		var1_upvw.references = var5_upvw
		var1_upvw.buff = var4_upvw
		return var1_upvw
	end;
}