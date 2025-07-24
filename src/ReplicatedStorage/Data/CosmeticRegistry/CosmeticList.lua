-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:50
-- Luau version 6, Types version 3
-- Time taken: 0.073767 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local RunService = game:GetService("RunService")
local var18
local function INLINED() -- Internal function, doesn't exist in bytecode
	var18 = game:GetService("ServerStorage"):WaitForChild("Cosmetics")
	return var18
end
if not RunService:IsServer() or not INLINED() then
	var18 = Instance.new("Folder")
end
local module = {
	["Monster Mash Trophy"] = {
		Description = "Monster Mash Trophy gained by participating in the WORLD RECORD monster mash!";
		Rarity = "Prismatic";
		Icon = "rbxassetid://77599265819344";
		Model = var18:FindFirstChild("Monster Mash Trophy");
		Actions = {};
		Tags = {"STATUE"};
	};
	["Grilled Moon Lit Owl"] = {
		Description = "rip little birdy";
		Rarity = "Prismatic";
		Icon = "rbxassetid://102528497739104";
		Model = var18:FindFirstChild("Grilled Moon Lit Owl");
		Actions = {};
		Tags = {"STATUE"};
	};
	["Jump Pad"] = {
		Description = "You completed the obby!";
		Rarity = "Prismatic";
		Icon = "rbxassetid://86613236531689";
		Model = var18:FindFirstChild("Jump Pad");
		Actions = {};
		Tags = {"MISC"};
	};
	["Yellow Umbrella"] = {
		Description = "Sunshine on a stick.";
		Rarity = "Common";
		Icon = "rbxassetid://94314012476539";
		Model = var18:FindFirstChild("Yellow Umbrella");
		Actions = {};
		Tags = {"MISC"};
	};
	["Orange Umbrella"] = {
		Description = "Citrusy shade for sunny days.";
		Rarity = "Common";
		Icon = "rbxassetid://88274038012868";
		Model = var18:FindFirstChild("Orange Umbrella");
		Actions = {};
		Tags = {"MISC"};
	};
	["Brick Stack"] = {
		Description = "Stacked with brickstar power.";
		Rarity = "Common";
		Icon = "rbxassetid://128357565698061";
		Model = var18:FindFirstChild("Brick Stack");
		Actions = {};
		Tags = {"MISC"};
	};
	["Compost Bin"] = {
		Description = "Trash to treasure, garden edition.";
		Rarity = "Common";
		Icon = "rbxassetid://96378933887328";
		Model = var18:FindFirstChild("Compost Bin");
		Actions = {};
		Tags = {"MISC"};
	};
	Log = {
		Description = "The OG garden decor.";
		Rarity = "Common";
		Icon = "rbxassetid://76301661478378";
		Model = var18:FindFirstChild("Log");
		Actions = {};
		Tags = {"MISC"};
	};
	["Rock Pile"] = {
		Description = "Rocks with sedimental value.";
		Rarity = "Common";
		Icon = "rbxassetid://115500068524301";
		Model = var18:FindFirstChild("Rock Pile");
		Actions = {};
		Tags = {"MISC"};
	};
	Rake = {
		Description = "Tools with cult-ivation.";
		Rarity = "Common";
		Icon = "rbxassetid://112597085006662";
		Model = var18:FindFirstChild("Rake");
		Actions = {};
		Tags = {"MISC"};
	};
	Shovel = {
		Description = "Tools with cult-ivation.";
		Rarity = "Common";
		Icon = "rbxassetid://91314518527541";
		Model = var18:FindFirstChild("Shovel");
		Actions = {};
		Tags = {"MISC"};
	};
	Torch = {
		Description = "Light up the night—flamingly.";
		Rarity = "Common";
		Icon = "rbxassetid://138930375147694";
		Model = var18:FindFirstChild("Torch");
		Actions = {};
		Tags = {"MISC"};
	};
	["Red Pottery"] = {
		Description = "Clay-zy for garden decor.";
		Rarity = "Common";
		Icon = "rbxassetid://116715517791414";
		Model = var18:FindFirstChild("Red Pottery");
		Actions = {};
		Tags = {"MISC"};
	};
	["White Pottery"] = {
		Description = "Clay-zy for garden decor.";
		Rarity = "Common";
		Icon = "rbxassetid://98046045828300";
		Model = var18:FindFirstChild("White Pottery");
		Actions = {};
		Tags = {"MISC"};
	};
	["Wood Pile"] = {
		Description = "Logging some serious style points.";
		Rarity = "Common";
		Icon = "rbxassetid://123525466548522";
		Model = var18:FindFirstChild("Wood Pile");
		Actions = {};
		Tags = {"MISC"};
	};
	["Small Circle Tile"] = {
		Description = "Going in circles never looked so good.";
		Rarity = "Common";
		Icon = "rbxassetid://140549587097599";
		Model = var18:FindFirstChild("Small Circle Tile");
		Actions = {};
		Tags = {"MISC"};
	};
	["Medium Circle Tile"] = {
		Description = "Going in circles never looked so good.";
		Rarity = "Common";
		Icon = "rbxassetid://114920818848221";
		Model = var18:FindFirstChild("Medium Circle Tile");
		Actions = {};
		Tags = {"MISC"};
	};
	["Small Path Tile"] = {
		Description = "Pave the way to floral fame.";
		Rarity = "Common";
		Icon = "rbxassetid://115709059245481";
		Model = var18:FindFirstChild("Small Path Tile");
		Actions = {};
		Tags = {"MISC"};
	};
	["Medium Path Tile"] = {
		Description = "Pave the way to floral fame.";
		Rarity = "Common";
		Icon = "rbxassetid://71405070143013";
		Model = var18:FindFirstChild("Medium Path Tile");
		Actions = {};
		Tags = {"MISC"};
	};
	["Large Path Tile"] = {
		Description = "Pave the way to floral fame.";
		Rarity = "Common";
		Icon = "rbxassetid://85801904008201";
		Model = var18:FindFirstChild("Large Path Tile");
		Actions = {};
		Tags = {"MISC"};
	};
	Duckfloat = {
		Description = "Ducky Floaty Hehe.";
		Rarity = "Rare";
		Icon = "rbxassetid://122002865494426";
		Model = var18:FindFirstChild("Duckfloat");
		Actions = {};
		Tags = {"MISC"};
	};
	["Axe Stump"] = {
		Description = "Chopped, but never forgotten.";
		Rarity = "Uncommon";
		Icon = "rbxassetid://96264914166618";
		Model = var18:FindFirstChild("Axe Stump");
		Actions = {};
		Tags = {"MISC"};
	};
	Bookshelf = {
		Description = "Grow your mind while your garden grows.";
		Rarity = "Uncommon";
		Icon = "rbxassetid://115973373909016";
		Model = var18:FindFirstChild("Bookshelf");
		Actions = {};
		Tags = {"MISC"};
	};
	["Brown Bench"] = {
		Description = "Sit, stay, bloom.";
		Rarity = "Uncommon";
		Icon = "rbxassetid://98910490474013";
		Model = var18:FindFirstChild("Brown Bench");
		Actions = {};
		Tags = {"MISC"};
	};
	["Hay Bale"] = {
		Description = "Bale-out plan for bland gardens.";
		Rarity = "Uncommon";
		Icon = "rbxassetid://87723268241453";
		Model = var18:FindFirstChild("Hay Bale");
		Actions = {};
		Tags = {"MISC"};
	};
	["Light On Ground"] = {
		Description = "Bright ideas start here.";
		Rarity = "Uncommon";
		Icon = "rbxassetid://117164021377008";
		Model = var18:FindFirstChild("Light On Ground");
		Actions = {};
		Tags = {"MISC"};
	};
	["Log Bench"] = {
		Description = "Take a seat and branch out.";
		Rarity = "Uncommon";
		Icon = "rbxassetid://70530203579288";
		Model = var18:FindFirstChild("Log Bench");
		Actions = {};
		Tags = {"MISC"};
	};
	["Mini TV"] = {
		Description = "Binge-watch your plants grow.";
		Rarity = "Uncommon";
		Icon = "rbxassetid://131992955716873";
		Model = var18:FindFirstChild("Mini TV");
		Actions = {};
		Tags = {"MISC"};
	};
	["Shovel Grave"] = {
		Description = "RIP, dear tool—you dug your last hole.";
		Rarity = "Uncommon";
		Icon = "rbxassetid://120224305204338";
		Model = var18:FindFirstChild("Shovel Grave");
		Actions = {};
		Tags = {"MISC"};
	};
	["Small Stone Lantern"] = {
		Description = "Glow stoned.";
		Rarity = "Uncommon";
		Icon = "rbxassetid://106313535982394";
		Model = var18:FindFirstChild("Small Stone Lantern");
		Actions = {};
		Tags = {"MISC"};
	};
	["Small Stone Pad"] = {
		Description = "Rock your garden's world.";
		Rarity = "Uncommon";
		Icon = "rbxassetid://76334118664068";
		Model = var18:FindFirstChild("Small Stone Pad");
		Actions = {};
		Tags = {"MISC"};
	};
	["Large Stone Pad"] = {
		Description = "Rock your garden's world.";
		Rarity = "Uncommon";
		Icon = "rbxassetid://136964060505236";
		Model = var18:FindFirstChild("Large Stone Pad");
		Actions = {};
		Tags = {"MISC"};
	};
	["Stone Lantern"] = {
		Description = "Glow stoned.";
		Rarity = "Uncommon";
		Icon = "rbxassetid://119551465521930";
		Model = var18:FindFirstChild("Stone Lantern");
		Actions = {};
		Tags = {"MISC"};
	};
	["Viney Beam"] = {
		Description = "Nature's way of saying, 'Hang in there.'";
		Rarity = "Uncommon";
		Icon = "rbxassetid://124170877039835";
		Model = var18:FindFirstChild("Viney Beam");
		Actions = {};
		Tags = {"MISC"};
	};
	["Water Trough"] = {
		Description = "Hydration station for your green nation.";
		Rarity = "Uncommon";
		Icon = "rbxassetid://75910954482613";
		Model = var18:FindFirstChild("Water Trough");
		Actions = {};
		Tags = {"MISC"};
	};
	["White Bench"] = {
		Description = "Sit, stay, bloom.";
		Rarity = "Uncommon";
		Icon = "rbxassetid://84377225645349";
		Model = var18:FindFirstChild("White Bench");
		Actions = {};
		Tags = {"MISC"};
	};
	["Wood Fence"] = {
		Description = "Good fences make good gardeners.";
		Rarity = "Uncommon";
		Icon = "rbxassetid://132290111901072";
		Model = var18:FindFirstChild("Wood Fence");
		Actions = {};
		Tags = {"MISC"};
	};
	["Small Wood Flooring"] = {
		Description = "Floors so nice, you'll wood not believe it.";
		Rarity = "Uncommon";
		Icon = "rbxassetid://130831326552652";
		Model = var18:FindFirstChild("Small Wood Flooring");
		Actions = {};
		Tags = {"MISC"};
	};
	["Medium Wood Flooring"] = {
		Description = "Floors so nice, you'll wood not believe it.";
		Rarity = "Uncommon";
		Icon = "rbxassetid://77772412695376";
		Model = var18:FindFirstChild("Medium Wood Flooring");
		Actions = {};
		Tags = {"MISC"};
	};
	["Large Wood Flooring"] = {
		Description = "Floors so nice, you'll wood not believe it.";
		Rarity = "Uncommon";
		Icon = "rbxassetid://74406299280955";
		Model = var18:FindFirstChild("Large Wood Flooring");
		Actions = {};
		Tags = {"MISC"};
	};
	["Small Stone Table"] = {
		Description = "Dine rock-style.";
		Rarity = "Uncommon";
		Icon = "rbxassetid://93138997640716";
		Model = var18:FindFirstChild("Small Stone Table");
		Actions = {};
		Tags = {"MISC"};
	};
	["Medium Stone Table"] = {
		Description = "Dine rock-style.";
		Rarity = "Uncommon";
		Icon = "rbxassetid://83559202798747";
		Model = var18:FindFirstChild("Medium Stone Table");
		Actions = {};
		Tags = {"MISC"};
	};
	["Long Stone Table"] = {
		Description = "Dine rock-style.";
		Rarity = "Uncommon";
		Icon = "rbxassetid://119328686937204";
		Model = var18:FindFirstChild("Long Stone Table");
		Actions = {};
		Tags = {"MISC"};
	};
	["Lamp Post"] = {
		Description = "Shine bright like a garden diamond.";
		Rarity = "Rare";
		Icon = "rbxassetid://138744299024719";
		Model = var18:FindFirstChild("Lamp Post");
		Actions = {};
		Tags = {"MISC"};
	};
	["Bamboo Wind Chime"] = {
		Description = "Let the wind drop the beat.";
		Rarity = "Rare";
		Icon = "rbxassetid://78310105473480";
		Model = var18:FindFirstChild("Bamboo Wind Chime");
		Actions = {};
		Tags = {"MISC"};
	};
	["Metal Wind Chime"] = {
		Description = "Let the wind drop the beat.";
		Rarity = "Rare";
		Icon = "rbxassetid://111513959090645";
		Model = var18:FindFirstChild("Metal Wind Chime");
		Actions = {};
		Tags = {"MISC"};
	};
	["Bird Bath"] = {
		Description = "A spa day for your feathered friends.";
		Rarity = "Rare";
		Icon = "rbxassetid://114210337316371";
		Model = var18:FindFirstChild("Bird Bath");
		Actions = {};
		Tags = {"MISC"};
	};
	["Brown Stone Pillar"] = {
		Description = "Pillars of rock-solid style.";
		Rarity = "Rare";
		Icon = "rbxassetid://80217593163027";
		Model = var18:FindFirstChild("Brown Stone Pillar");
		Actions = {};
		Tags = {"MISC"};
	};
	["Dark Stone Pillar"] = {
		Description = "Pillars of rock-solid style.";
		Rarity = "Rare";
		Icon = "rbxassetid://115143090894918";
		Model = var18:FindFirstChild("Dark Stone Pillar");
		Actions = {};
		Tags = {"MISC"};
	};
	["Grey Stone Pillar"] = {
		Description = "Pillars of rock-solid style.";
		Rarity = "Rare";
		Icon = "rbxassetid://108713406223798";
		Model = var18:FindFirstChild("Grey Stone Pillar");
		Actions = {};
		Tags = {"MISC"};
	};
	Campfire = {
		Description = "For lit garden vibes.";
		Rarity = "Rare";
		Icon = "rbxassetid://114219794929389";
		Model = var18:FindFirstChild("Campfire");
		Actions = {};
		Tags = {"MISC"};
	};
	Clothesline = {
		Description = "Hang your worries out to dry.";
		Rarity = "Rare";
		Icon = "rbxassetid://135426465898486";
		Model = var18:FindFirstChild("Clothesline");
		Actions = {};
		Tags = {"MISC"};
	};
	["Cooking Pot"] = {
		Description = "Stirring up some botanical brews.";
		Rarity = "Rare";
		Icon = "rbxassetid://74493838787153";
		Model = var18:FindFirstChild("Cooking Pot");
		Actions = {};
		Tags = {"MISC"};
	};
	["Curved Canopy"] = {
		Description = "Shelter with arch-appeal.";
		Rarity = "Rare";
		Icon = "rbxassetid://140452365544446";
		Model = var18:FindFirstChild("Curved Canopy");
		Actions = {};
		Tags = {"MISC"};
	};
	["Flat Canopy"] = {
		Description = "Shelter with arch-appeal.";
		Rarity = "Rare";
		Icon = "rbxassetid://98042972289231";
		Model = var18:FindFirstChild("Flat Canopy");
		Actions = {};
		Tags = {"MISC"};
	};
	["Small Wood Arbour"] = {
		Description = "Walk this way—blossom that way.";
		Rarity = "Rare";
		Icon = "rbxassetid://101767783873802";
		Model = var18:FindFirstChild("Small Wood Arbour");
		Actions = {};
		Tags = {"MISC"};
	};
	["Square Metal Arbour"] = {
		Description = "Walk this way—blossom that way.";
		Rarity = "Rare";
		Icon = "rbxassetid://124482021450642";
		Model = var18:FindFirstChild("Square Metal Arbour");
		Actions = {};
		Tags = {"MISC"};
	};
	["Small Wood Table"] = {
		Description = "Gather 'round the stump speech.";
		Rarity = "Rare";
		Icon = "rbxassetid://79156265194662";
		Model = var18:FindFirstChild("Small Wood Table");
		Actions = {};
		Tags = {"MISC"};
	};
	["Large Wood Table"] = {
		Description = "Gather 'round the stump speech.";
		Rarity = "Rare";
		Icon = "rbxassetid://81844858986120";
		Model = var18:FindFirstChild("Large Wood Table");
		Actions = {};
		Tags = {"MISC"};
	};
	Wheelbarrow = {
		Description = "Hauling blooms and dad jokes since forever.";
		Rarity = "Rare";
		Icon = "rbxassetid://129661977849436";
		Model = var18:FindFirstChild("Wheelbarrow");
		Actions = {};
		Tags = {"MISC"};
	};
	["Blue Well"] = {
		Description = "Make a wish—petals crossed!";
		Rarity = "Legendary";
		Icon = "rbxassetid://137217556459922";
		Model = var18:FindFirstChild("Blue Well");
		Actions = {};
		Tags = {"MISC"};
	};
	["Brown Well"] = {
		Description = "Make a wish—petals crossed!";
		Rarity = "Legendary";
		Icon = "rbxassetid://97081445435777";
		Model = var18:FindFirstChild("Brown Well");
		Actions = {};
		Tags = {"MISC"};
	};
	["Red Well"] = {
		Description = "Make a wish—petals crossed!";
		Rarity = "Legendary";
		Icon = "rbxassetid://100605398217067";
		Model = var18:FindFirstChild("Red Well");
		Actions = {};
		Tags = {"MISC"};
	};
	["Green Tractor"] = {
		Description = "Crop-tastic cruising.";
		Rarity = "Legendary";
		Icon = "rbxassetid://127815398735746";
		Model = var18:FindFirstChild("Green Tractor");
		Actions = {};
		Tags = {"MACHINE"};
	};
	["Red Tractor"] = {
		Description = "Crop-tastic cruising.";
		Rarity = "Legendary";
		Icon = "rbxassetid://88340270174678";
		Model = var18:FindFirstChild("Red Tractor");
		Actions = {};
		Tags = {"MACHINE"};
	};
	["Ring Walkway"] = {
		Description = "Walk in circles, but make it fashion.";
		Rarity = "Legendary";
		Icon = "rbxassetid://111450830262119";
		Model = var18:FindFirstChild("Ring Walkway");
		Actions = {};
		Tags = {"MISC"};
	};
	["Viney Ring Walkway"] = {
		Description = "Step into the vine zone.";
		Rarity = "Legendary";
		Icon = "rbxassetid://96399926163763";
		Model = var18:FindFirstChild("Viney Ring Walkway");
		Actions = {};
		Tags = {"MISC"};
	};
	["Large Wood Arbour"] = {
		Description = "Walk this way—blossom that way.";
		Rarity = "Legendary";
		Icon = "rbxassetid://114586442817919";
		Model = var18:FindFirstChild("Large Wood Arbour");
		Actions = {};
		Tags = {"MISC"};
	};
	["Round Metal Arbour"] = {
		Description = "Walk this way—blossom that way.";
		Rarity = "Legendary";
		Icon = "rbxassetid://104999736010025";
		Model = var18:FindFirstChild("Round Metal Arbour");
		Actions = {};
		Tags = {"MISC"};
	};
	["Frog Fountain"] = {
		Description = "Ribbit and relax.";
		Rarity = "Legendary";
		Icon = "rbxassetid://124446917752784";
		Model = var18:FindFirstChild("Frog Fountain");
		Actions = {};
		Tags = {"MISC"};
	};
	["Arcade Machine"] = {
		Description = "";
		Rarity = "";
		Icon = "rbxassetid://80636317407905";
		Model = var18:FindFirstChild("ArcadeMachine");
		Actions = {};
		Tags = {"MACHINE"};
	};
	["Beach Towel Blue"] = {
		Description = "";
		Rarity = "";
		Icon = "rbxassetid://99004531154140";
		Model = var18:FindFirstChild("BeachTowelBlue");
		Actions = {};
		Tags = {"MISC"};
	};
	["Beach Towel Pink"] = {
		Description = "";
		Rarity = "";
		Icon = "rbxassetid://109969533331323";
		Model = var18:FindFirstChild("BeachTowelPink");
		Actions = {};
		Tags = {"MISC"};
	};
	["Beach Towel Red"] = {
		Description = "";
		Rarity = "";
		Icon = "rbxassetid://107120167826878";
		Model = var18:FindFirstChild("BeachTowelRed");
		Actions = {};
		Tags = {"MISC"};
	};
	["Beach Towel Yellow"] = {
		Description = "";
		Rarity = "";
		Icon = "rbxassetid://116055841484575";
		Model = var18:FindFirstChild("BeachTowelYellow");
		Actions = {};
		Tags = {"MISC"};
	};
	["Bean Bag Toss Blue"] = {
		Description = "";
		Rarity = "";
		Icon = "rbxassetid://131369979026921";
		Model = var18:FindFirstChild("BeanBagTossBlue");
		Actions = {};
		Tags = {"MISC"};
	};
	["Bean Bag Toss Red"] = {
		Description = "";
		Rarity = "";
		Icon = "rbxassetid://93045760456133";
		Model = var18:FindFirstChild("BeanBagTossRed");
		Actions = {};
		Tags = {"MISC"};
	};
	["Blue Beach Ball"] = {
		Description = "";
		Rarity = "";
		Icon = "rbxassetid://71837625336616";
		Model = var18:FindFirstChild("BlueBeachBall");
		Actions = {};
		Tags = {"MISC"};
	};
	["Blue Cooler Chest"] = {
		Description = "";
		Rarity = "Rare";
		Icon = "rbxassetid://103573199416660";
		Model = var18:FindFirstChild("BlueCoolerChest");
		Actions = {};
		Tags = {"MISC"};
	};
	["Pink Cooler Chest"] = {
		Description = "";
		Rarity = "Rare";
		Icon = "rbxassetid://100763899517565";
		Model = var18:FindFirstChild("PinkCoolerChest");
		Actions = {};
		Tags = {"MISC"};
	};
	["Blue Popsicle"] = {
		Description = "";
		Rarity = "";
		Icon = "rbxassetid://132544002490198";
		Model = var18:FindFirstChild("BluePopsicle");
		Actions = {};
		Tags = {"MISC"};
	};
	["Blue Short Beach Chair"] = {
		Description = "";
		Rarity = "";
		Icon = "rbxassetid://106287089125606";
		Model = var18:FindFirstChild("BlueShortBeachChair");
		Actions = {};
		Tags = {"MISC"};
	};
	["Blue Beach Umbrella"] = {
		Description = "";
		Rarity = "";
		Icon = "rbxassetid://95490603436919";
		Model = var18:FindFirstChild("Blue Beach Umbrella");
		Actions = {};
		Tags = {"MISC"};
	};
	Cabana = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://122281158985851";
		Model = var18:FindFirstChild("Cabana");
		Actions = {};
		Tags = {"MISC"};
	};
	["Ice Cream Cart"] = {
		Description = "";
		Rarity = "";
		Icon = "rbxassetid://73029854192902";
		Model = var18:FindFirstChild("IceCreamCart");
		Actions = {};
		Tags = {"MACHINE"};
	};
	["Lemonade Stand"] = {
		Description = "";
		Rarity = "Mythical";
		Icon = "rbxassetid://83319614843666";
		Model = var18:FindFirstChild("LemonadeStand");
		Actions = {};
		Tags = {"MISC"};
	};
	["Market Cart"] = {
		Description = "";
		Rarity = "Mythical";
		Icon = "rbxassetid://110100785748233";
		Model = var18:FindFirstChild("MarketCart");
		Actions = {};
		Tags = {"MISC"};
	};
	["Red Surf Board"] = {
		Description = "";
		Rarity = "";
		Icon = "rbxassetid://90176745523850";
		Model = var18:FindFirstChild("RedSurfBoard");
		Actions = {};
		Tags = {"MISC"};
	};
	["Blue Surf Board"] = {
		Description = "";
		Rarity = "";
		Icon = "rbxassetid://95460515956088";
		Model = var18:FindFirstChild("BlueSurfBoard");
		Actions = {};
		Tags = {"MISC"};
	};
	["Yellow Surf Board"] = {
		Description = "";
		Rarity = "";
		Icon = "rbxassetid://89453521848259";
		Model = var18:FindFirstChild("YellowSurfBoard");
		Actions = {};
		Tags = {"MISC"};
	};
	["Pink Surf Board"] = {
		Description = "";
		Rarity = "";
		Icon = "rbxassetid://114981177780072";
		Model = var18:FindFirstChild("PinkSurfBoard");
		Actions = {};
		Tags = {"MISC"};
	};
	["Pink Beach Ball"] = {
		Description = "";
		Rarity = "";
		Icon = "rbxassetid://117179532514857";
		Model = var18:FindFirstChild("PinkBeachBall");
		Actions = {};
		Tags = {"MISC"};
	};
	["Pink Popsicle"] = {
		Description = "";
		Rarity = "";
		Icon = "rbxassetid://138395803583239";
		Model = var18:FindFirstChild("PinkPopsicle");
		Actions = {};
		Tags = {"MISC"};
	};
	["Pink Short Beach Chair"] = {
		Description = "";
		Rarity = "";
		Icon = "rbxassetid://102436585837305";
		Model = var18:FindFirstChild("PinkShortBeachChair");
		Actions = {};
		Tags = {"MISC"};
	};
	["Pink Beach Umbrella"] = {
		Description = "";
		Rarity = "";
		Icon = "rbxassetid://104654926646080";
		Model = var18:FindFirstChild("Pink Beach Umbrella");
		Actions = {};
		Tags = {"MISC"};
	};
	["Red Beach Ball"] = {
		Description = "";
		Rarity = "";
		Icon = "rbxassetid://80096178020566";
		Model = var18:FindFirstChild("RedBeachBall");
		Actions = {};
		Tags = {"MISC"};
	};
	["Red Cooler Chest"] = {
		Description = "";
		Rarity = "Rare";
		Icon = "rbxassetid://103299416006910";
		Model = var18:FindFirstChild("RedCoolerChest");
		Actions = {};
		Tags = {"MISC"};
	};
	["Blue Hammock"] = {
		Description = "";
		Rarity = "Rare";
		Icon = "rbxassetid://94505677915520";
		Model = var18:FindFirstChild("BlueHammock");
		Actions = {};
		Tags = {"MISC"};
	};
	["Red Hammock"] = {
		Description = "";
		Rarity = "Rare";
		Icon = "rbxassetid://82064982360485";
		Model = var18:FindFirstChild("RedHammock");
		Actions = {};
		Tags = {"MISC"};
	};
	["Red Long Beach Chair"] = {
		Description = "";
		Rarity = "";
		Icon = "rbxassetid://88627619442635";
		Model = var18:FindFirstChild("RedLongBeachChair");
		Actions = {};
		Tags = {"MISC"};
	};
	["Red Popsicle"] = {
		Description = "";
		Rarity = "";
		Icon = "rbxassetid://120788253745071";
		Model = var18:FindFirstChild("RedPopsicle");
		Actions = {};
		Tags = {"MISC"};
	};
	["Red Short Beach Chair"] = {
		Description = "";
		Rarity = "";
		Icon = "rbxassetid://106546394681244";
		Model = var18:FindFirstChild("RedShortBeachChair");
		Actions = {};
		Tags = {"MISC"};
	};
	["Red Beach Umbrella"] = {
		Description = "";
		Rarity = "";
		Icon = "rbxassetid://136165125481786";
		Model = var18:FindFirstChild("Red Beach Umbrella");
		Actions = {};
		Tags = {"MISC"};
	};
	Speakers = {
		Description = "";
		Rarity = "";
		Icon = "rbxassetid://80430866675960";
		Model = var18:FindFirstChild("Speakers");
		Actions = {};
		Tags = {"MACHINE"};
	};
	["Tiki Bar"] = {
		Description = "";
		Rarity = "Mythical";
		Icon = "rbxassetid://106886101958316";
		Model = var18:FindFirstChild("TikiBar");
		Actions = {};
		Tags = {"MISC"};
	};
	["Volley Ball Net"] = {
		Description = "";
		Rarity = "";
		Icon = "rbxassetid://129721262517254";
		Model = var18:FindFirstChild("VolleyBallNet");
		Actions = {};
		Tags = {"MISC"};
	};
	["Yellow Beach Ball"] = {
		Description = "";
		Rarity = "";
		Icon = "rbxassetid://136111379252509";
		Model = var18:FindFirstChild("YellowBeachBall");
		Actions = {};
		Tags = {"MISC"};
	};
	["Yellow Long Beach Chair"] = {
		Description = "";
		Rarity = "";
		Icon = "rbxassetid://120486654324450";
		Model = var18:FindFirstChild("YellowLongBeachChair");
		Actions = {};
		Tags = {"MISC"};
	};
	["Yellow Short Beach Chair"] = {
		Description = "";
		Rarity = "";
		Icon = "rbxassetid://95784261871354";
		Model = var18:FindFirstChild("YellowShortBeachChair");
		Actions = {};
		Tags = {"MISC"};
	};
	["Yellow Beach Umbrella"] = {
		Description = "";
		Rarity = "";
		Icon = "rbxassetid://72656459420319";
		Model = var18:FindFirstChild("Yellow Beach Umbrella");
		Actions = {};
		Tags = {"MISC"};
	};
	Mower = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://135914882416689";
		Model = var18:FindFirstChild("Mower");
		Actions = {};
		Tags = {"MACHINE"};
	};
	["Beta Gnome"] = {
		Description = "Crash test Gnomey.";
		Rarity = "Rare";
		Icon = "rbxassetid://82942574971091";
		Model = var18:FindFirstChild("BetaGnome");
		Actions = {};
		Tags = {"GNOME"};
	};
	["Green Gnome"] = {
		Description = "Gree-gnome.";
		Rarity = "Rare";
		Icon = "rbxassetid://114712911840962";
		Model = var18:FindFirstChild("GreenGnome");
		Actions = {};
		Tags = {"GNOME"};
	};
	["Blue Gnome"] = {
		Description = "No one hates blue!";
		Rarity = "Rare";
		Icon = "rbxassetid://126793677651227";
		Model = var18:FindFirstChild("BlueGnome");
		Actions = {};
		Tags = {"GNOME"};
	};
	["No Trespassing Sign"] = {
		Description = "Sign here for sass.";
		Rarity = "Rare";
		Icon = "rbxassetid://111642019686941";
		Model = var18:FindFirstChild("NoTrespassingSign");
		Actions = {};
		Tags = {"SIGN"};
	};
	["Beware Of Dog Sign"] = {
		Description = "Sign here for sass.";
		Rarity = "Rare";
		Icon = "rbxassetid://89778210976821";
		Model = var18:FindFirstChild("BewareOfDogSign");
		Actions = {};
		Tags = {"SIGN"};
	};
	["Mean Gardener Sign"] = {
		Description = "Sign here for sass.";
		Rarity = "Rare";
		Icon = "rbxassetid://74001450966740";
		Model = var18:FindFirstChild("MeanGardenerSign");
		Actions = {};
		Tags = {"SIGN"};
	};
	["Keep Out Sign"] = {
		Description = "Sign here for sass.";
		Rarity = "Rare";
		Icon = "rbxassetid://137279504847698";
		Model = var18:FindFirstChild("KeepOutSign");
		Actions = {};
		Tags = {"SIGN"};
	};
	["Smile On Cam Sign"] = {
		Description = "Sign here for sass.";
		Rarity = "Rare";
		Icon = "rbxassetid://135786183918317";
		Model = var18:FindFirstChild("SmileOnCamSign");
		Actions = {};
		Tags = {"SIGN"};
	};
	["No Stealing Sign"] = {
		Description = "Sign here for sass.";
		Rarity = "Legendary";
		Icon = "rbxassetid://96708017956784";
		Model = var18:FindFirstChild("NoStealingSign");
		Actions = {};
		Tags = {"SIGN"};
	};
	["Sleepy Gnome"] = {
		Description = "Catching some zzzzeeds.";
		Rarity = "Rare";
		Icon = "rbxassetid://104198914328516";
		Model = var18:FindFirstChild("SleepyGnome");
		Actions = {};
		Tags = {"GNOME"};
	};
	["Silly Gnome"] = {
		Description = "If you wait long enough it'll do a backflip";
		Rarity = "Rare";
		Icon = "rbxassetid://85284169151224";
		Model = var18:FindFirstChild("SillyGnome");
		Actions = {};
		Tags = {"GNOME"};
	};
	["Crazy Gnome"] = {
		Description = "Gnome way out.";
		Rarity = "Rare";
		Icon = "rbxassetid://114913163768225";
		Model = var18:FindFirstChild("CrazyGnome");
		Actions = {};
		Tags = {"GNOME"};
	};
	["Grumpy Gnome"] = {
		Description = "You are gnot going to like me when grumpy!";
		Rarity = "Rare";
		Icon = "rbxassetid://113529246996386";
		Model = var18:FindFirstChild("GrumpyGnome");
		Actions = {};
		Tags = {"GNOME"};
	};
	["Fearless Gnome"] = {
		Description = "I AM LE-GNOME!";
		Rarity = "Legendary";
		Icon = "rbxassetid://71291637119739";
		Model = var18:FindFirstChild("FearlessGnome");
		Actions = {};
		Tags = {"GNOME"};
	};
	Roundabout = {
		Description = "Spin your garden drama away.";
		Rarity = "Legendary";
		Icon = "rbxassetid://127576228279994";
		Model = var18:FindFirstChild("Roundabout");
		Actions = {};
		Tags = {"MISC"};
	};
	Seesaw = {
		Description = "Ups and downs, but make it playful.";
		Rarity = "Legendary";
		Icon = "rbxassetid://129298071024340";
		Model = var18:FindFirstChild("Seesaw");
		Actions = {};
		Tags = {"MISC"};
	};
	["Swing set"] = {
		Description = "Swinging into serenity.";
		Rarity = "Legendary";
		Icon = "rbxassetid://97650946469601";
		Model = var18:FindFirstChild("Swingset");
		Actions = {};
		Tags = {"MISC"};
	};
	["Red Flag"] = {
		Description = "Claim your petal territory.";
		Rarity = "Legendary";
		Icon = "rbxassetid://108826376055758";
		Model = var18:FindFirstChild("RedFlag");
		Actions = {};
		Tags = {"MISC"};
	};
	["Blue Flag"] = {
		Description = "Claim your petal territory.";
		Rarity = "Legendary";
		Icon = "rbxassetid://86956824591443";
		Model = var18:FindFirstChild("BlueFlag");
		Actions = {};
		Tags = {"MISC"};
	};
	Trampoline = {
		Description = "Bounce into botanical bliss.";
		Rarity = "Mythical";
		Icon = "rbxassetid://72039279547348";
		Model = var18:FindFirstChild("Trampoline");
		Actions = {};
		Tags = {"MISC"};
	};
	["Raphael Gnome"] = {
		Description = "A gnome of Raphael, owner of the pet stall!";
		Rarity = "Rare";
		Icon = "rbxassetid://83040285262266";
		Model = var18:FindFirstChild("RaphaelGnome");
		Actions = {};
		Tags = {"GNOME"};
	};
	["Steven Gnome"] = {
		Description = "A gnome of Steven, owner of the sell stall!";
		Rarity = "Rare";
		Icon = "rbxassetid://130945698778443";
		Model = var18:FindFirstChild("StevenGnome");
		Actions = {};
		Tags = {"GNOME"};
	};
	["Eloise Gnome"] = {
		Description = "A gnome of Eloise, owner of the gear shop!";
		Rarity = "Legendary";
		Icon = "rbxassetid://111228051132202";
		Model = var18:FindFirstChild("EloiseGnome");
		Actions = {};
		Tags = {"GNOME"};
	};
	["Sam Gnome"] = {
		Description = "A gnome of Sam, owner of the seed shop!";
		Rarity = "Legendary";
		Icon = "rbxassetid://120985613541798";
		Model = var18:FindFirstChild("SamGnome");
		Actions = {};
		Tags = {"GNOME"};
	};
	["Cleetus Gnome"] = {
		Description = "HOWDY!";
		Rarity = "Mythical";
		Icon = "rbxassetid://105475165224126";
		Model = var18:FindFirstChild("CleetusGnome");
		Actions = {};
		Tags = {"GNOME"};
	};
	["Builderman Gnome"] = {
		Description = "He will design a gnomenclature!";
		Rarity = "Mythical";
		Icon = "rbxassetid://112903384537909";
		Model = var18:FindFirstChild("BuildermanGnome");
		Actions = {};
		Tags = {"GNOME"};
	};
	["Bacon Gnome"] = {
		Description = "Cant get enough of (GNO)ME!";
		Rarity = "Mythical";
		Icon = "rbxassetid://120778286675384";
		Model = var18:FindFirstChild("BaconGnome");
		Actions = {};
		Tags = {"GNOME"};
	};
	["Zombie Gnome"] = {
		Description = "These are real zombie hours!";
		Rarity = "Mythical";
		Icon = "rbxassetid://133857140992876";
		Model = var18:FindFirstChild("ZombieGnome");
		Actions = {};
		Tags = {"GNOME"};
	};
	["Noob Gnome"] = {
		Description = "You as a gnome!";
		Rarity = "Mythical";
		Icon = "rbxassetid://98160377296946";
		Model = var18:FindFirstChild("NoobGnome");
		Actions = {};
		Tags = {"GNOME"};
	};
	["Gold Gnome"] = {
		Description = "You've been golden gnomed!";
		Rarity = "Divine";
		Icon = "rbxassetid://107517587303429";
		Model = var18:FindFirstChild("GoldGnome");
		Actions = {};
		Tags = {"GNOME"};
	};
	["Female Scarecrow"] = {
		Description = "Scare the crows, charm the neighbors.";
		Rarity = "Rare";
		Icon = "rbxassetid://104939198269666";
		Model = var18:FindFirstChild("FemaleScarecrow");
		Actions = {};
		Tags = {"STATUE"};
	};
	["Male Scarecrow"] = {
		Description = "Scare the crows, charm the neighbors.";
		Rarity = "Rare";
		Icon = "rbxassetid://135026002683202";
		Model = var18:FindFirstChild("MaleScarecrow");
		Actions = {};
		Tags = {"STATUE"};
	};
	["Stone Mango Statue"] = {
		Description = "Rock solid style for your garden!";
		Rarity = "Legendary";
		Icon = "rbxassetid://91117322281959";
		Model = var18:FindFirstChild("StoneMangoStatue");
		Actions = {};
		Tags = {"STATUE"};
	};
	["Mossy Stone Blossom Statue"] = {
		Description = "Rock solid style for your garden!";
		Rarity = "Legendary";
		Icon = "rbxassetid://125324768942930";
		Model = var18:FindFirstChild("MossyStoneBlossomStatue");
		Actions = {};
		Tags = {"STATUE"};
	};
	["Stone Candy Blossom Statue"] = {
		Description = "Rock solid style for your garden!";
		Rarity = "Mythical";
		Icon = "rbxassetid://107207612180537";
		Model = var18:FindFirstChild("StoneCandyBlossomStatue");
		Actions = {};
		Tags = {"STATUE"};
	};
	["Stone Bunny Statue"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://83622392226670";
		Model = var18:FindFirstChild("StoneBunnyStatue");
		Actions = {};
		Tags = {"STATUE"};
	};
	["Gold Pillar"] = {
		Description = "";
		Rarity = "Mythical";
		Icon = "rbxassetid://73954265276442";
		Model = var18:FindFirstChild("GoldPillar");
		Actions = {};
		Tags = {"MISC"};
	};
	["Gold Fire Pit"] = {
		Description = "";
		Rarity = "Mythical";
		Icon = "rbxassetid://138669093930760";
		Model = var18:FindFirstChild("GoldFirePit");
		Actions = {};
		Tags = {"MISC"};
	};
	["Gold Torii"] = {
		Description = "";
		Rarity = "Divine";
		Icon = "rbxassetid://133029271065028";
		Model = var18:FindFirstChild("GoldTorii");
		Actions = {};
		Tags = {"MISC"};
	};
	["Gold Water Fountain"] = {
		Description = "";
		Rarity = "Divine";
		Icon = "rbxassetid://133358999373894";
		Model = var18:FindFirstChild("GoldWaterFountain");
		Actions = {};
		Tags = {"MISC"};
	};
	["Gold Candy Blossom Statue"] = {
		Description = "";
		Rarity = "Divine";
		Icon = "rbxassetid://136237571582291";
		Model = var18:FindFirstChild("GoldCandyBlossomStatue");
		Actions = {};
		Tags = {"STATUE"};
	};
	["Platinum Candy Blossom Statue"] = {
		Description = "Rock solid style for your garden!";
		Rarity = "Prismatic";
		Icon = "rbxassetid://97698023241956";
		Model = var18:FindFirstChild("PlatinumCandyBlossomStatue");
		Actions = {};
		Tags = {"STATUE"};
	};
	["Twilight Ring Walkway"] = {
		Description = "Rock solid style for your garden!";
		Rarity = "Prismatic";
		Icon = "rbxassetid://108295843838649";
		Model = var18:FindFirstChild("Twilight Ring Walkway");
		Actions = {};
		Tags = {"MISC"};
	};
	["Twilight Pillar"] = {
		Description = "Rock solid style for your garden!";
		Rarity = "Prismatic";
		Icon = "rbxassetid://76251994949545";
		Model = var18:FindFirstChild("Twilight Pillar");
		Actions = {};
		Tags = {"MISC"};
	};
	["Twilight Fence"] = {
		Description = "Rock solid style for your garden!";
		Rarity = "Prismatic";
		Icon = "rbxassetid://111459308259276";
		Model = var18:FindFirstChild("Twilight Fence");
		Actions = {};
		Tags = {"MISC"};
	};
	["Twilight Night Owl Statue"] = {
		Description = "Rock solid style for your garden!";
		Rarity = "Prismatic";
		Icon = "rbxassetid://71069798187910";
		Model = var18:FindFirstChild("Twilight Night Owl Statue");
		Actions = {};
		Tags = {"STATUE"};
	};
	["Twilight Fire Pit"] = {
		Description = "Rock solid style for your garden!";
		Rarity = "Prismatic";
		Icon = "rbxassetid://128525890363803";
		Model = var18:FindFirstChild("Twilight Fire Pit");
		Actions = {};
		Tags = {"MISC"};
	};
	["Blood Bench"] = {
		Description = "Rock solid style for your garden!";
		Rarity = "Prismatic";
		Icon = "rbxassetid://91426040633172";
		Model = var18:FindFirstChild("Blood Bench");
		Actions = {};
		Tags = {"MISC"};
	};
	["Blood Lamp"] = {
		Description = "Rock solid style for your garden!";
		Rarity = "Prismatic";
		Icon = "rbxassetid://130449439996161";
		Model = var18:FindFirstChild("Blood Lamp");
		Actions = {};
		Tags = {"MISC"};
	};
	["Blood Chain"] = {
		Description = "Rock solid style for your garden!";
		Rarity = "Prismatic";
		Icon = "rbxassetid://129878935477772";
		Model = var18:FindFirstChild("Blood Chain");
		Actions = {};
		Tags = {"MISC"};
	};
	["Blood Fence"] = {
		Description = "Rock solid style for your garden!";
		Rarity = "Prismatic";
		Icon = "rbxassetid://114306578289240";
		Model = var18:FindFirstChild("Blood Fence");
		Actions = {};
		Tags = {"MISC"};
	};
	["Blood Fire Pit"] = {
		Description = "Rock solid style for your garden!";
		Rarity = "Prismatic";
		Icon = "rbxassetid://87320185293134";
		Model = var18:FindFirstChild("Blood Fire Pit");
		Actions = {};
		Tags = {"MISC"};
	};
	["Bee Chair"] = {
		Description = "";
		Rarity = "Common";
		Icon = "rbxassetid://124322647736138";
		Model = var18:FindFirstChild("BeeChair");
		Actions = {};
		Tags = {"MISC"};
	};
	["Honey Comb"] = {
		Description = "";
		Rarity = "Rare";
		Icon = "rbxassetid://127458246297955";
		Model = var18:FindFirstChild("HoneyComb");
		Actions = {};
		Tags = {"MISC"};
	};
	["Honey Walkway"] = {
		Description = "";
		Rarity = "Rare";
		Icon = "rbxassetid://92765418822065";
		Model = var18:FindFirstChild("HoneyWalkway");
		Actions = {};
		Tags = {"MISC"};
	};
	["Honey Torch"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://73494334572183";
		Model = var18:FindFirstChild("HoneyTorch");
		Actions = {};
		Tags = {"MISC"};
	};
	["Honey Barrel"] = {
		Description = "";
		Rarity = "Prismatic";
		Icon = "rbxassetid://95914467481199";
		Model = var18:FindFirstChild("HoneyBarrel");
		Actions = {};
		Tags = {"MISC"};
	};
	["Honey Fountain"] = {
		Description = "";
		Rarity = "Prismatic";
		Icon = "rbxassetid://77404037269428";
		Model = var18:FindFirstChild("HoneyFountain");
		Actions = {};
		Tags = {"MISC"};
	};
	["Honey Pillar"] = {
		Description = "";
		Rarity = "Prismatic";
		Icon = "rbxassetid://134173394113465";
		Model = var18:FindFirstChild("HoneyPillar");
		Actions = {};
		Tags = {"MISC"};
	};
	["Honey Pot"] = {
		Description = "";
		Rarity = "Prismatic";
		Icon = "rbxassetid://133164059676431";
		Model = var18:FindFirstChild("HoneyPot");
		Actions = {};
		Tags = {"MISC"};
	};
	["Bee Podium"] = {
		Description = "";
		Rarity = "Prismatic";
		Icon = "rbxassetid://130464966061346";
		Model = var18:FindFirstChild("BeePodium");
		Actions = {};
		Tags = {"MACHINE"};
	};
	BeeHive = {
		Description = "";
		Rarity = "Prismatic";
		Icon = "rbxassetid://77959075692985";
		Model = var18:FindFirstChild("ActiveBeeHive");
		Actions = {};
		Tags = {"MISC"};
	};
	["Honey Gate"] = {
		Description = "";
		Rarity = "Prismatic";
		Icon = "rbxassetid://101078824256085";
		Model = var18:FindFirstChild("HoneyGate");
		Actions = {};
		Tags = {"MISC"};
	};
	["Bee Flag"] = {
		Description = "";
		Rarity = "Prismatic";
		Icon = "rbxassetid://126322654949831";
		Model = var18:FindFirstChild("BeeFlag");
		Actions = {};
		Tags = {"MISC"};
	};
	["Bee Hunter Statue"] = {
		Description = "";
		Rarity = "Prismatic";
		Icon = "rbxassetid://74475541400439";
		Model = var18:FindFirstChild("BeeHunterStatue");
		Actions = {};
		Tags = {"STATUE"};
	};
	["Bee Mailbox"] = {
		Description = "";
		Rarity = "Prismatic";
		Icon = "rbxassetid://97954964771347";
		Model = var18:FindFirstChild("BeeMailbox");
		Actions = {};
		Tags = {"MISC"};
	};
	["Bee Painting"] = {
		Description = "";
		Rarity = "Prismatic";
		Icon = "rbxassetid://87070081617616";
		Model = var18:FindFirstChild("BeePainting");
		Actions = {};
		Tags = {"MISC"};
	};
	["Bee Rug"] = {
		Description = "";
		Rarity = "Prismatic";
		Icon = "rbxassetid://111312932734327";
		Model = var18:FindFirstChild("BeeRug");
		Actions = {};
		Tags = {"MISC"};
	};
	["Bee Stinger Painting"] = {
		Description = "";
		Rarity = "Prismatic";
		Icon = "rbxassetid://98657062197407";
		Model = var18:FindFirstChild("BeeStingerPainting");
		Actions = {};
		Tags = {"MISC"};
	};
	["Queen Bee Painting"] = {
		Description = "";
		Rarity = "Prismatic";
		Icon = "rbxassetid://95766006476194";
		Model = var18:FindFirstChild("QueenBeePainting");
		Actions = {};
		Tags = {"MISC"};
	};
	["1x1x1x1 Gnome"] = {
		Description = "";
		Rarity = "Mythical";
		Icon = "rbxassetid://131967223688140";
		Model = var18:FindFirstChild("1x1x1x1Gnome");
		Actions = {};
		Tags = {"GNOME"};
	};
	["Bloxy Cola Gnome"] = {
		Description = "";
		Rarity = "Mythical";
		Icon = "rbxassetid://75332180369848";
		Model = var18:FindFirstChild("BloxyColaGnome");
		Actions = {};
		Tags = {"GNOME"};
	};
	["Candy Blossom Gnome"] = {
		Description = "";
		Rarity = "Mythical";
		Icon = "rbxassetid://92609695018363";
		Model = var18:FindFirstChild("CandyBlossomGnome");
		Actions = {};
		Tags = {"GNOME"};
	};
	["Guest Gnome"] = {
		Description = "";
		Rarity = "Mythical";
		Icon = "rbxassetid://100014278372173";
		Model = var18:FindFirstChild("GuestGnome");
		Actions = {};
		Tags = {"GNOME"};
	};
	["Shedletsky Gnome"] = {
		Description = "";
		Rarity = "Divine";
		Icon = "rbxassetid://117836343477747";
		Model = var18:FindFirstChild("ShedletskyGnome");
		Actions = {};
		Tags = {"GNOME"};
	};
	["Blue Long Beach Chair"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://71991465120758";
		Model = var18:FindFirstChild("Blue Long Beach Chair");
		Actions = {};
		Tags = {"MISC"};
	};
	["Pink Long Beach Chair"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://91651365490043";
		Model = var18:FindFirstChild("Pink Long Beach Chair");
		Actions = {};
		Tags = {"MISC"};
	};
	Heart = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://108059871334863";
		Model = var18:FindFirstChild("Heart");
		Actions = {};
		Tags = {"MISC"};
	};
	Slide = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://105765854848210";
		Model = var18:FindFirstChild("Slide");
		Actions = {};
		Tags = {"MISC"};
	};
	Pool = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://104950169841584";
		Model = var18:FindFirstChild("Pool");
		Actions = {};
		Tags = {"MISC"};
	};
	["Boat Painting"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://113199592747087";
		Model = var18:FindFirstChild("Boat Painting");
		Actions = {};
		Tags = {"MISC"};
	};
	["Palm Tree Painting"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://122087058031386";
		Model = var18:FindFirstChild("Palm Tree Painting");
		Actions = {};
		Tags = {"MISC"};
	};
	["Sun Carpet"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://132563627216085";
		Model = var18:FindFirstChild("Sun Carpet");
		Actions = {};
		Tags = {"MISC"};
	};
	["Sun Gate"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://77503031812482";
		Model = var18:FindFirstChild("Sun Gate");
		Actions = {};
		Tags = {"MISC"};
	};
	["Sun Painting"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://135714213682077";
		Model = var18:FindFirstChild("Sun Painting");
		Actions = {};
		Tags = {"MISC"};
	};
	["Surfer Statue"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://118898226476172";
		Model = var18:FindFirstChild("Surfer Statue");
		Actions = {};
		Tags = {"STATUE"};
	};
	["Throne Sun"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://101215048324104";
		Model = var18:FindFirstChild("Throne Sun");
		Actions = {};
		Tags = {"MISC"};
	};
	["Dino Skull"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://135977449505109";
		Model = var18:FindFirstChild("Dino Skull");
		Actions = {};
		Tags = {"MISC"};
	};
	["Dinosaur Footprints"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://118119830496962";
		Model = var18:FindFirstChild("Dinosaur Footprints");
		Actions = {};
		Tags = {"MISC"};
	};
	["Dino Proof Fence"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://132790191705590";
		Model = var18:FindFirstChild("Dino Proof Fence");
		Actions = {};
		Tags = {"MISC"};
	};
	Bone = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://70986536992671";
		Model = var18:FindFirstChild("Bone");
		Actions = {};
		Tags = {"MISC"};
	};
	["Rock Car"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://84416518410872";
		Model = var18:FindFirstChild("Rock Car");
		Actions = {};
		Tags = {"MACHINE"};
	};
	["Skeleton Statue"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://137874336811380";
		Model = var18:FindFirstChild("Skeleton Statue");
		Actions = {};
		Tags = {"STATUE"};
	};
	["Spine Fence"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://119358212260594";
		Model = var18:FindFirstChild("Spine Fence");
		Actions = {};
		Tags = {"MISC"};
	};
	["DNA Container"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://104144486946979";
		Model = var18:FindFirstChild("DNA Container");
		Actions = {};
		Tags = {"MISC"};
	};
	["Archeology Tool Rack"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://124130509505417";
		Model = var18:FindFirstChild("Archeology Tool Rack");
		Actions = {};
		Tags = {"MISC"};
	};
	["Dino Lamp"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://133738368629123";
		Model = var18:FindFirstChild("Dino Lamp");
		Actions = {};
		Tags = {"MISC"};
	};
	["Dino Trophy"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://120457261434549";
		Model = var18:FindFirstChild("Dino Trophy");
		Actions = {};
		Tags = {"MISC"};
	};
	["Dino Bone Case"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://90556385672649";
		Model = var18:FindFirstChild("Dino Bone Case");
		Actions = {};
		Tags = {"MISC"};
	};
	["Dino Slayer Statue"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://88357970667971";
		Model = var18:FindFirstChild("Dino Slayer Statue");
		Actions = {};
		Tags = {"STATUE"};
	};
	["Long Neck Dino Statue"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://107433332329644";
		Model = var18:FindFirstChild("Long Neck Dino Statue");
		Actions = {};
		Tags = {"STATUE"};
	};
	Volcano = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://138206771411283";
		Model = var18:FindFirstChild("Volcano");
		Actions = {};
		Tags = {"MISC"};
	};
	["America Banner"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://79593589083679";
		Model = var18:FindFirstChild("America Banner");
		Actions = {};
		Tags = {"MISC"};
	};
	["America Flag Badge"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://120228722090334";
		Model = var18:FindFirstChild("America Flag Badge");
		Actions = {};
		Tags = {"MISC"};
	};
	["American Flag"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://92722333236046";
		Model = var18:FindFirstChild("American Flag");
		Actions = {};
		Tags = {"MISC"};
	};
	["Bald Eagle Statue"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://126085067316745";
		Model = var18:FindFirstChild("Bald Eagle Statue");
		Actions = {};
		Tags = {"STATUE"};
	};
	["July 4th Toy"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://81836108062745";
		Model = var18:FindFirstChild("July 4th Toy");
		Actions = {};
		Tags = {"MISC"};
	};
	["Uncle Sam Gnome"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://120023580280311";
		Model = var18:FindFirstChild("Uncle Sam Gnome");
		Actions = {};
		Tags = {"GNOME"};
	};
	["Dark Ninja Gnome"] = {
		Description = '.';
		Rarity = "Legendary";
		Icon = "rbxassetid://93038221719499";
		Model = var18:FindFirstChild("Dark Ninja Gnome");
		Actions = {};
		Tags = {"GNOME"};
	};
	["Light Ninja Gnome"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://110343561582804";
		Model = var18:FindFirstChild("Light Ninja Gnome");
		Actions = {};
		Tags = {"GNOME"};
	};
	["Zen Channeller Gnome"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://130020217436802";
		Model = var18:FindFirstChild("Zen Channeller Gnome");
		Actions = {};
		Tags = {"GNOME"};
	};
	["Panda Gnome"] = {
		Description = "You are gnot going to like me when grumpy!";
		Rarity = "Legendary";
		Icon = "rbxassetid://136464590894047";
		Model = var18:FindFirstChild("Panda Gnome");
		Actions = {};
		Tags = {"GNOME"};
	};
	["Samurai Gnome"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://98408249952275";
		Model = var18:FindFirstChild("Samurai Gnome");
		Actions = {};
		Tags = {"GNOME"};
	};
	["Whispering Torii"] = {
		Description = "";
		Rarity = "Mythical";
		Icon = "rbxassetid://123218145042358";
		Model = var18:FindFirstChild("Whispering Torii");
		Actions = {};
		Tags = {"MISC"};
	};
	["Hot Spring"] = {
		Description = "";
		Rarity = "Mythical";
		Icon = "rbxassetid://102701113946399";
		Model = var18:FindFirstChild("Hot Spring");
		Actions = {};
		Tags = {"MISC"};
	};
	["Zen Sand"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://89555305118515";
		Model = var18:FindFirstChild("Zen Sand");
		Actions = {};
		Tags = {"MISC"};
	};
	["Temple Lamp"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://118855603196154";
		Model = var18:FindFirstChild("Temple Lamp");
		Actions = {};
		Tags = {"MISC"};
	};
	["Bamboo Fence"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://108164141573262";
		Model = var18:FindFirstChild("Bamboo Fence");
		Actions = {};
		Tags = {"MISC"};
	};
	["Bamboo Tech"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://136277100467130";
		Model = var18:FindFirstChild("Bamboo Tech");
		Actions = {};
		Tags = {"MISC"};
	};
	["Japanese Gong"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://98584483995379";
		Model = var18:FindFirstChild("Japanese Gong");
		Actions = {};
		Tags = {"MISC"};
	};
	["Zen Bridge"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://107695376294579";
		Model = var18:FindFirstChild("Zen Bridge");
		Actions = {};
		Tags = {"MISC"};
	};
	["Zen Waterfall"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://82333210563868";
		Model = var18:FindFirstChild("Zen Waterfall");
		Actions = {};
		Tags = {"MISC"};
	};
	["Buddha Statue"] = {
		Description = "";
		Rarity = "Legendary";
		Icon = "rbxassetid://129654063898982";
		Model = var18:FindFirstChild("Buddha Statue");
		Actions = {};
		Tags = {"STATUE"};
	};
}
local tbl = {
	Description = "This item has no description! Please write one!";
	Rarity = "Common";
	Icon = "rbxassetid://6937742258";
}
local any_IsServer_result1 = RunService:IsServer()
if any_IsServer_result1 then
	any_IsServer_result1 = var18:WaitForChild("Axe Stump")
end
tbl.Model = any_IsServer_result1
for i, v in module do
	for i_2, v_2 in tbl do
		local var490
		if not var490 and (i_2 ~= "Model" or RunService:IsServer()) then
			warn(i, `Does not have Index: [{i_2}] filling in with default value.`)
			if i_2 ~= "Model" or not var18:FindFirstChild(i) then
			end
			v[i_2] = v_2
		end
	end
	local var491
	if RunService:IsServer() then
		local Model = v.Model
		var491 = Model.PrimaryPart
		local var493 = var491
		if not var493 then
			v_2 = "HitBox"
			var493 = Model:FindFirstChild(v_2)
		end
		Model.PrimaryPart = var493
		if not var491 then
			i_2 = i
			v_2 = "Model, does not have PrimaryPart generating (possibly inaccurate) hitbox to compensate!"
			warn(i_2, v_2)
			i_2 = Model
			var491 = require(game:GetService("ReplicatedStorage").Modules.CreateHitBoxFor)(i_2)
			v_2 = "CosmeticHitBox"
			var491:AddTag(v_2)
		end
		Model.Name = i
		v_2 = "CosmeticHitBox"
		var491:AddTag(v_2)
		var491.Anchored = true
	end
end
return module