-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:37
-- Luau version 6, Types version 3
-- Time taken: 0.005515 seconds

local module_upvr = require(script:WaitForChild("Table"))
local module_upvr_2 = {}
module_upvr_2.__index = module_upvr_2
module_upvr_2.__type = "PartCache"
local cframe_upvr = CFrame.new(0, 1000000000, 0)
local function _(arg1, arg2) -- Line 60, Named "assertwarn"
	if arg1 == false then
		warn(arg2)
	end
end
local function _(arg1, arg2) -- Line 67, Named "MakeFromTemplate"
	--[[ Upvalues[1]:
		[1]: cframe_upvr (readonly)
	]]
	local clone_5 = arg1:Clone()
	clone_5.CFrame = cframe_upvr
	clone_5.Anchored = true
	clone_5.Parent = arg2
	return clone_5
end
function module_upvr_2.new(arg1, arg2, arg3) -- Line 77
	--[[ Upvalues[3]:
		[1]: module_upvr_2 (readonly)
		[2]: module_upvr (readonly)
		[3]: cframe_upvr (readonly)
	]]
	if not arg3 then
		local Folder = Instance.new("Folder")
		Folder.Parent = workspace
	end
	local var8 = Folder
	if not var8 then
		var8 = workspace
	end
	if 0 >= arg2 then
	else
	end
	assert(true, "PrecreatedParts can not be negative!")
	if arg2 == 0 then
	else
	end
	if true == false then
		warn("PrecreatedParts is 0! This may have adverse effects when initially using the cache.")
	end
	if arg1.Archivable == false then
		warn("The template's Archivable property has been set to false, which prevents it from being cloned. It will temporarily be set to true.")
	end
	arg1.Archivable = true
	arg1.Archivable = arg1.Archivable
	local clone_3 = arg1:Clone()
	local tbl = {
		Open = {};
		InUse = {};
		CurrentCacheParent = var8;
		Template = clone_3;
		ExpansionSize = 30;
	}
	setmetatable(tbl, module_upvr_2)
	for _ = 1, arg2 or 5 do
		local clone = clone_3:Clone()
		clone.CFrame = cframe_upvr
		clone.Anchored = true
		clone.Parent = tbl.CurrentCacheParent
		module_upvr.insert(tbl.Open, clone)
		local var12
	end
	var12.Template.Parent = nil
	return var12
end
function module_upvr_2.GetPart(arg1) -- Line 120
	--[[ Upvalues[3]:
		[1]: module_upvr_2 (readonly)
		[2]: module_upvr (readonly)
		[3]: cframe_upvr (readonly)
	]]
	local var15
	if getmetatable(arg1) ~= module_upvr_2 then
		var15 = false
	else
		var15 = true
	end
	assert(var15, "Cannot statically invoke method '%s' - It is an instance method. Call it on an instance of this class created via %s":format("GetPart", "PartCache.new"))
	var15 = arg1.Open
	if #var15 == 0 then
		var15 = "No parts available in the cache! Creating ["..arg1.ExpansionSize.."] new part instance(s) - this amount can be edited by changing the ExpansionSize property of the PartCache instance... (This cache now contains a grand total of "..tostring(#arg1.Open + #arg1.InUse + arg1.ExpansionSize).." parts.)"
		warn(var15)
		var15 = 1
		for _ = 1, arg1.ExpansionSize, var15 do
			local clone_2 = arg1.Template:Clone()
			clone_2.CFrame = cframe_upvr
			clone_2.Anchored = true
			clone_2.Parent = arg1.CurrentCacheParent
			module_upvr.insert(arg1.Open, clone_2)
		end
	end
	var15 = arg1.Open
	local var17 = var15[#arg1.Open]
	var15 = arg1.Open
	var15[#arg1.Open] = nil
	var15 = module_upvr.insert
	var15(arg1.InUse, var17)
	return var17
end
function module_upvr_2.ReturnPart(arg1, arg2) -- Line 136
	--[[ Upvalues[3]:
		[1]: module_upvr_2 (readonly)
		[2]: module_upvr (readonly)
		[3]: cframe_upvr (readonly)
	]]
	local var18
	if getmetatable(arg1) ~= module_upvr_2 then
		var18 = false
	else
		var18 = true
	end
	assert(var18, "Cannot statically invoke method '%s' - It is an instance method. Call it on an instance of this class created via %s":format("ReturnPart", "PartCache.new"))
	var18 = module_upvr
	var18 = arg1.InUse
	local any_indexOf_result1 = var18.indexOf(var18, arg2)
	if any_indexOf_result1 ~= nil then
		var18 = module_upvr.remove
		var18(arg1.InUse, any_indexOf_result1)
		var18 = module_upvr.insert
		var18(arg1.Open, arg2)
		var18 = cframe_upvr
		arg2.CFrame = var18
		var18 = true
		arg2.Anchored = var18
	else
		var18 = error
		var18("Attempted to return part \""..arg2.Name.."\" ("..arg2:GetFullName()..") to the cache, but it's not in-use! Did you call this on the wrong part?")
	end
end
function module_upvr_2.SetCacheParent(arg1, arg2) -- Line 151
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	local var24
	if getmetatable(arg1) ~= module_upvr_2 then
		var24 = false
	else
		var24 = true
	end
	assert(var24, "Cannot statically invoke method '%s' - It is an instance method. Call it on an instance of this class created via %s":format("SetCacheParent", "PartCache.new"))
	var24 = arg2:IsDescendantOf(workspace)
	if not var24 then
		if arg2 ~= workspace then
			var24 = false
		else
			var24 = true
		end
	end
	assert(var24, "Cache parent is not a descendant of Workspace! Parts should be kept where they will remain in the visible world.")
	arg1.CurrentCacheParent = arg2
	var24 = 1
	for i_3 = 1, #arg1.Open, var24 do
		arg1.Open[i_3].Parent = arg2
	end
	var24 = 1
	for i_4 = 1, #arg1.InUse, var24 do
		arg1.InUse[i_4].Parent = arg2
	end
end
function module_upvr_2.Expand(arg1, arg2) -- Line 165
	--[[ Upvalues[3]:
		[1]: module_upvr_2 (readonly)
		[2]: module_upvr (readonly)
		[3]: cframe_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var29
	if getmetatable(arg1) ~= module_upvr_2 then
		var29 = false
	else
		var29 = true
	end
	assert(var29, "Cannot statically invoke method '%s' - It is an instance method. Call it on an instance of this class created via %s":format("Expand", "PartCache.new"))
	if arg2 == nil then
	end
	var29 = 1
	for _ = 1, arg1.ExpansionSize, var29 do
		local clone_4 = arg1.Template:Clone()
		clone_4.CFrame = cframe_upvr
		clone_4.Anchored = true
		clone_4.Parent = arg1.CurrentCacheParent
		module_upvr.insert(arg1.Open, clone_4)
	end
end
function module_upvr_2.Dispose(arg1) -- Line 177
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	local var35
	if getmetatable(arg1) ~= module_upvr_2 then
		var35 = false
	else
		var35 = true
	end
	assert(var35, "Cannot statically invoke method '%s' - It is an instance method. Call it on an instance of this class created via %s":format("Dispose", "PartCache.new"))
	var35 = 1
	for i_6 = 1, #arg1.Open, var35 do
		arg1.Open[i_6]:Destroy()
	end
	var35 = 1
	for i_7 = 1, #arg1.InUse, var35 do
		arg1.InUse[i_7]:Destroy()
	end
	arg1.Template:Destroy()
	arg1.Open = {}
	arg1.InUse = {}
	arg1.CurrentCacheParent = nil
	arg1.GetPart = nil
	arg1.ReturnPart = nil
	arg1.SetCacheParent = nil
	arg1.Expand = nil
	arg1.Dispose = nil
end
return module_upvr_2