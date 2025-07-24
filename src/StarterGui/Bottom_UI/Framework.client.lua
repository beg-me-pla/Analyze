-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:54
-- Luau version 6, Types version 3
-- Time taken: 0.009933 seconds

local longstring1 = "Small chance for fruit to turn <font color=\"#FF007F\">D</font><font color=\"#FFD700\">I</font><font color=\"#00FFFF\">S</font><font color=\"#00FF00\">C</font><font color=\"#8A2BE2\">O</font>!"
-- KONSTANTERROR: [0] 1. Error Block 25 start (CF ANALYSIS FAILED)
local TweenService_upvr = game:GetService("TweenService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players_upvr = game:GetService("Players")
local PlayerLuck_upvr = require(ReplicatedStorage.Modules.PlayerLuck)
local BottomFrame = script.Parent:WaitForChild("BottomFrame")
local Holder_upvr = BottomFrame:WaitForChild("Holder")
local Info_upvr = BottomFrame:WaitForChild("Info")
local tbl_upvr_2 = {
	Rain = {
		Title = "Rain";
		Description = "+50% Grow Speed! Higher <font color=\"#0055ff\">WET</font> Fruit Chance!";
	};
	ChickenRain = {
		Title = "Fried Chicken";
		Description = "Higher <font color=\"#ffcb2f\">FRIED</font> Fruit Chance!";
	};
	ChocolateRain = {
		Title = "Chocolate Rain";
		Description = "Higher <font color=\"#666633\">Chocolate</font> Fruit Chance!";
	};
	Thunderstorm = {
		Title = "Thunderstorm";
		Description = "+50% Grow Speed! Higher <font color=\"#0055ff\">SHOCKED</font> Fruit Chance!";
	};
	BeeNado = {
		Title = "BeeNado";
		Description = "Your fruit can become POLLINATED!";
	};
	BeeStorm = {
		Title = "BeeStorm";
		Description = "Your fruit can become POLLINATED! Chance of Honey Glazed.";
	};
	Frost = {
		Title = "Frost";
		Description = "+50% Grow Speed! Higher <font color=\"#66ccff\">CHILLED</font> and <font color=\"#00e5ff\">FROZEN</font> Fruit Chance!";
	};
	NightEvent = {
		Title = "Night";
		Description = "Your fruit can become <font color=\"#a347fd\">MOONLIT</font>!";
	};
	BloodMoonEvent = {
		Title = "Blood Moon";
		Description = "Your fruit can become <font color=\"#550000\">BLOODLIT</font>!";
	};
	MeteorShower = {
		Title = "Meteor Shower";
		Description = "Higher <font color=\"#0055ff\">CELESTIAL</font> Fruit Chance!";
	};
	Tornado = {
		Title = "Tornado";
		Description = "Higher <font color=\"#D3D3D3\">TWISTED</font> Fruit Chance!";
	};
	Windy = {
		Title = "Windy";
		Description = "Higher <font color=\"#929292\">Windstruck</font> Fruit Chance!";
	};
	Gale = {
		Title = "Gale";
		Description = "Super High <font color=\"#D3D3D3\">Windstruck</font> Fruit Chance!";
	};
	BeeSwarm = {
		Title = "Bee Swarm";
		Description = "Higher <font color=\"#ff9500\">POLLINATED</font> Fruit Chance!";
	};
	WorkingBeeSwarm = {
		Title = "Working Bee Swarm";
		Description = "x10 Craft Speed! Higher <font color=\"#ff9500\">POLLINATED</font> Fruit Chance!";
	};
	Disco = {
		Title = "DISCO";
		Description = longstring1;
	};
	Blackhole = {
		Title = "Blackhole";
		Description = "Small chance for fruit to turn <font color=\"#E100FF\">Voidtouched!</font>";
	};
	Volcano = {
		Title = "Volcano";
		Description = "Small chance for fruit to turn <font color=\"#DF6400\">Molten!</font>";
	};
	MeteorStrike = {
		Title = "Meteor Strike";
		Description = "Small chance for fruit to turn <font color=\"#491DC1\">Meteoric!</font>";
	};
	AlienInvasion = {
		Title = "Alien Invasion";
		Description = "\n Small chance of UFOs making fruit <font color=\"#33fff6\">ALIENLIKE</font> !";
	};
	Heatwave = {
		Title = "Heatwave";
		Description = "Higher <font color=\"#d76d2d\">SUNDRIED</font> Fruit Chance!";
	};
	SpaceTravel = {
		Title = "Space Travel";
		Description = "+75% Grow Speed! Small chance for fruit to turn <font color=\"#f4b5ff\">GALACTIC!</font>";
	};
	SummerHarvest = {
		Title = "Summer Harvest";
		Description = "Submit your summer fruit in the <font color=\"#2a8c09\">Summer Harvest</font> for a reward at the end of the event!";
	};
	MegaHarvest = {
		Title = "Mega Harvest";
		Description = "<font color=\"#ffb705\">2x SUMMER HARVEST POINTS and GROW SPEED!</font> \n Submit your summer fruit in the <font color=\"#2a8c09\">Summer Harvest</font> for a reward at the end of the event!";
	};
	UnderTheSea = {
		Title = "Under The Sea";
		Description = "Higher <font color=\"#0055ff\">WET</font> Fruit Chance! You can swim around freely!";
	};
	SolarFlare = {
		Title = "Solar Flare";
		Description = "\n The solar flare will apply <font color=\"#d76d2d\">SUNDRIED</font> to some fruit! \n The solar flare will apply <font color=\"#009114\">VERDANT</font> to some fruit!";
	};
	Drought = {
		Title = "Drought";
		Description = "Higher <font color=\"#2dce98\">WILTPROOF</font> Fruit Chance!";
	};
	TropicalRain = {
		Title = "Tropical Rain";
		Description = "+50% Grow Speed! Higher <font color=\"#0037e4\">Drenched</font> Fruit Chance!";
	};
	AuroraBorealis = {
		Title = "Aurora Borealis";
		Description = "+50% Grow Speed! Higher <font color=\"#664fb8\">AURORA</font> Fruit Chance!";
	};
	Sandstorm = {
		Title = "Sandstorm";
		Description = "Higher <font color=\"#cfad57\">SANDY</font> Fruit Chance!";
	};
	DJSandstorm = {
		Title = "DJ Sam";
		Description = longstring1;
	};
	ShootingStars = {
		Title = "Shooting Stars";
		Description = "Higher <font color=\"#a347fd\">MOONLIT</font> Fruit Chance!";
	};
	Obby = {
		Title = "Obby";
		Description = "Complete the obby for a <font color=\"#00bdff\">COSMETIC JUMP PAD REWARD</font>!";
	};
	TextCollect = {
		Title = "Text Collect";
		Description = "Assemble the text by collecting all letters! \nHigher <font color=\"#FF007F\">D</font><font color=\"#FFD700\">I</font><font color=\"#00FFFF\">S</font><font color=\"#00FF00\">C</font><font color=\"#8A2BE2\">O</font> Fruit Chance once finished!";
	};
	CrystalBeams = {
		Title = "Crystal Beams";
		Description = "Activate all crystals! \nOnce finished, plants have a chance to get a few mutations!";
	};
	JandelZombie = {
		Title = "Brains..";
		Description = "Zombie invasion: increased <font color=\"#62ff00\">INFECTED</font> Fruit Chance!";
	};
	PoolParty = {
		Title = "Pool Party!";
		Description = "Party like theres no tomorrow! Everyone gets a free  <font color=\"#00bdff\">Duckfloat</font> cosmetic!";
	};
	RadioactiveCarrot = {
		Title = "The Carrot";
		Description = "Launch the Carrot for <font color=\"#70e700\">RADIOACTIVE</font> Fruit Chance!";
	};
	Armageddon = {
		Title = "Armageddon";
		Description = "EVERYONE IS GOING EXTINCT!!! \nHigher <font color=\"#DF6400\">MOLTEN</font> Fruit Chance!\nHigher <font color=\"#000000\">BURNT</font> Fruit Chance!";
	};
	ZenAura = {
		Title = "Zen Aura";
		Description = "Higher <font color=\"#30a5ff\">TRANQUIL</font> Fruit Chance!";
	};
}
local tbl = {
	Title = "Luck";
}
local SessionTimeLuckController_upvr = require(ReplicatedStorage.Modules.SessionTimeLuckController)
function tbl.Description() -- Line 186
	--[[ Upvalues[1]:
		[1]: SessionTimeLuckController_upvr (readonly)
	]]
	return `+{math.floor(SessionTimeLuckController_upvr:GetCurrentLuck() * 100)}% Playtime Luck`
end
tbl_upvr_2.Luck = tbl
tbl_upvr_2.SolarEclipse = {
	Title = "Solar Eclipse";
	Description = "Higher <font color=\"#2c6fa2\">ECLIPSE</font> Fruit Chance!";
}
tbl_upvr_2.AcidRain = {
	Title = "Acid Rain";
	Description = "Higher <font color=\"#55ff00\">TOXIC</font> Fruit Chance!";
}
local tbl_upvr = {}
local function _(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 205, Named "tweenObject"
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	local var62 = arg4
	if not var62 then
		var62 = Enum.EasingStyle.Linear
	end
	local var63 = arg5
	if not var63 then
		var63 = Enum.EasingDirection.InOut
	end
	local any_Create_result1 = TweenService_upvr:Create(arg1, TweenInfo.new(arg2, var62, var63, 0, false, arg6 or 0), arg3)
	any_Create_result1:Play()
	return any_Create_result1
end
local function _(arg1, arg2, arg3) -- Line 230, Named "popupObject"
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	arg1.Position = UDim2.new(arg1.Position.X.Scale, arg2.X, arg1.Position.Y.Scale, arg2.Y)
	if not arg1.Visible then
		arg1.Visible = true
	end
	local Quad = Enum.EasingStyle.Quad
	if not Quad then
		Quad = Enum.EasingStyle.Linear
	end
	local Out = Enum.EasingDirection.Out
	if not Out then
		Out = Enum.EasingDirection.InOut
	end
	TweenService_upvr:Create(arg1, TweenInfo.new(arg3 or 0.1, Quad, Out, 0, false, 0), {
		Position = UDim2.new(arg1.Position.X.Scale, 0, arg1.Position.Y.Scale, 0);
	}):Play()
end
local function _() -- Line 244, Named "isAnyEventStillVisible"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
	]]
	for _, v in tbl_upvr do
		if tbl_upvr_2[v] then
			return true
		end
	end
	return false
end
local var70_upvw = false
local function updateInterface_upvr() -- Line 251, Named "updateInterface"
	--[[ Upvalues[6]:
		[1]: tbl_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: var70_upvw (read and write)
		[4]: Holder_upvr (readonly)
		[5]: TweenService_upvr (readonly)
		[6]: Info_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 10. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 10. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 5. Error Block 61 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [9.6]
	if nil then
		-- KONSTANTWARNING: GOTO [12] #12
	end
	-- KONSTANTERROR: [4] 5. Error Block 61 end (CF ANALYSIS FAILED)
end
local function addEvent_upvr(arg1, arg2) -- Line 301, Named "addEvent"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: updateInterface_upvr (readonly)
	]]
	table.insert(tbl_upvr, arg1)
	updateInterface_upvr()
	local var71_upvw = false
	task.delay(arg2, function() -- Line 309, Named "removeEventIfStillActive"
		--[[ Upvalues[4]:
			[1]: var71_upvw (read and write)
			[2]: tbl_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: updateInterface_upvr (copied, readonly)
		]]
		if var71_upvw then
		else
			local table_find_result1_4 = table.find(tbl_upvr, arg1)
			if table_find_result1_4 then
				var71_upvw = true
				table.remove(tbl_upvr, table_find_result1_4)
				updateInterface_upvr()
			end
		end
	end)
	if arg1 == "Night" or arg1 == "Blood Moon" or arg1 == "WorkingBeeSwarm" or arg1 == "BeeSwarm" or arg1 == "SummerHarvest" or arg1 == "MegaHarvest" or arg1 == "ZenAura" then
		local var73_upvw = arg1
		if arg1 == "Night" then
			var73_upvw = "NightEvent"
		elseif arg1 == "Blood Moon" then
			var73_upvw = "BloodMoonEvent"
		end
		local var75_upvw
		var75_upvw = workspace:GetAttributeChangedSignal(var73_upvw):Connect(function() -- Line 340
			--[[ Upvalues[6]:
				[1]: var73_upvw (read and write)
				[2]: var75_upvw (read and write)
				[3]: var71_upvw (read and write)
				[4]: tbl_upvr (copied, readonly)
				[5]: arg1 (readonly)
				[6]: updateInterface_upvr (copied, readonly)
			]]
			if not workspace:GetAttribute(var73_upvw) then
				var75_upvw:Disconnect()
				if var71_upvw then return end
				local table_find_result1_3 = table.find(tbl_upvr, arg1)
				if table_find_result1_3 then
					var71_upvw = true
					table.remove(tbl_upvr, table_find_result1_3)
					updateInterface_upvr()
				end
			end
		end)
	end
end
local function _(arg1) -- Line 350, Named "getTitle"
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	local var77 = tbl_upvr_2[arg1]
	if not var77 then
		return "Event Not Found"
	end
	local Title = var77.Title
	if type(Title) == "function" then
		Title = Title()
	end
	return Title
end
local function _(arg1) -- Line 360, Named "getDescription"
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	local var79 = tbl_upvr_2[arg1]
	if not var79 then
		return "Event Not Found"
	end
	local Description_2 = var79.Description
	if type(Description_2) == "function" then
		Description_2 = Description_2()
	end
	return Description_2
end
local tbl_upvw = {}
ReplicatedStorage.GameEvents:WaitForChild("SendClientWeatherEvents").OnClientEvent:Connect(function(arg1, arg2, arg3) -- Line 371
	--[[ Upvalues[2]:
		[1]: tbl_upvw (read and write)
		[2]: addEvent_upvr (readonly)
	]]
	tbl_upvw = arg1
	if not arg2 then
	else
		if not arg3 then return end
		local var83 = arg3 + tbl_upvw[arg2].eventLength - workspace:GetServerTimeNow()
		if var83 <= 0 then return end
		addEvent_upvr(arg2, var83)
	end
end)
ReplicatedStorage.GameEvents:WaitForChild("WeatherEventStarted").OnClientEvent:Connect(function(arg1, arg2) -- Line 384
	--[[ Upvalues[1]:
		[1]: addEvent_upvr (readonly)
	]]
	addEvent_upvr(arg1, arg2)
end)
ReplicatedStorage.GameEvents:WaitForChild("SendClientSpecialEvent").OnClientEvent:Connect(function(arg1, arg2, arg3) -- Line 386
	--[[ Upvalues[1]:
		[1]: addEvent_upvr (readonly)
	]]
	local var86 = arg1 + arg2 - workspace:GetServerTimeNow()
	if var86 <= 0 then
	else
		addEvent_upvr(arg3, var86)
	end
end)
ReplicatedStorage.GameEvents:WaitForChild("SpecialEventStarted").OnClientEvent:Connect(function(arg1, arg2) -- Line 394
	--[[ Upvalues[1]:
		[1]: addEvent_upvr (readonly)
	]]
	addEvent_upvr(arg1, arg2)
end)
for _, v_2_upvr in {"NightEvent", "BloodMoonEvent", "BeeSwarm", "WorkingBeeSwarm", "SummerHarvest", "MegaHarvest", "ZenAura"} do
	workspace:GetAttributeChangedSignal(v_2_upvr):Connect(function() -- Line 399
		--[[ Upvalues[3]:
			[1]: v_2_upvr (readonly)
			[2]: tbl_upvr (readonly)
			[3]: updateInterface_upvr (readonly)
		]]
		local attribute = workspace:GetAttribute(v_2_upvr)
		if not attribute then
			if v_2_upvr == "NightEvent" then
				attribute = "Night"
			elseif v_2_upvr == "BloodMoonEvent" then
				attribute = "Blood Moon"
			elseif v_2_upvr == "BeeSwarm" then
				attribute = "BeeSwarm"
			elseif v_2_upvr == "WorkingBeeSwarm" then
				attribute = "WorkingBeeSwarm"
			elseif v_2_upvr == "SummerHarvest" then
				attribute = "SummerHarvest"
			elseif v_2_upvr == "MegaHarvest" then
				attribute = "MegaHarvest"
			else
				attribute = false
				if v_2_upvr == "ZenAura" then
					attribute = "ZenAura"
				end
			end
			local table_find_result1_2 = table.find(tbl_upvr, attribute)
			if table_find_result1_2 then
				table.remove(tbl_upvr, table_find_result1_2)
				updateInterface_upvr()
			end
		end
	end)
end
-- KONSTANTERROR: [0] 1. Error Block 25 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [559] 386. Error Block 30 start (CF ANALYSIS FAILED)
BottomFrame.Position = UDim2.new(1, 0, 0.1, 0)
Info_upvr.Position = UDim2.new(0.95, 0, 1.8, 0)
for _, v_3_upvr in Holder_upvr.List:GetChildren() do
	if v_3_upvr:IsA("Frame") then
		v_3_upvr.InputBegan:Connect(function() -- Line 426
			--[[ Upvalues[4]:
				[1]: tbl_upvr (readonly)
				[2]: v_3_upvr (readonly)
				[3]: Info_upvr (readonly)
				[4]: tbl_upvr_2 (readonly)
			]]
			for _, v_4 in tbl_upvr do
				if v_3_upvr.Name == v_4 then
					local var100 = Info_upvr
					local var101 = tbl_upvr_2[v_4]
					local var102
					if not var101 then
						var100 = "Event Not Found"
					else
						var102 = var101.Title
						if type(var102) == "function" then
							var102 = var102()
						end
						var100 = var102
					end
					var100.Title.Text = var100
					var100 = Info_upvr
					local var103 = var100
					local var104 = tbl_upvr_2[v_4]
					local var105
					if not var104 then
						var103 = "Event Not Found"
					else
						var105 = var104.Description
						if type(var105) == "function" then
							var105 = var105()
						end
						var103 = var105
					end
					var103.Description.Text = var103
					Info_upvr.Visible = true
				end
			end
		end)
		v_3_upvr.InputEnded:Connect(function() -- Line 436
			--[[ Upvalues[1]:
				[1]: Info_upvr (readonly)
			]]
			Info_upvr.Visible = false
		end)
	end
end
PlayerLuck_upvr.Listen(Players_upvr.LocalPlayer, function() -- Line 457
	--[[ Upvalues[4]:
		[1]: PlayerLuck_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: updateInterface_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 16. Error Block 3 start (CF ANALYSIS FAILED)
	table.insert(tbl_upvr, "Luck")
	updateInterface_upvr()
	do
		return
	end
	-- KONSTANTERROR: [19] 16. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [29] 24. Error Block 7 start (CF ANALYSIS FAILED)
	local table_find_result1 = table.find(tbl_upvr, "Luck")
	if table_find_result1 then
		table.remove(tbl_upvr, table_find_result1)
		updateInterface_upvr()
	end
	-- KONSTANTERROR: [29] 24. Error Block 7 end (CF ANALYSIS FAILED)
end)
-- KONSTANTERROR: [559] 386. Error Block 30 end (CF ANALYSIS FAILED)