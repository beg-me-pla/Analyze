-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:43
-- Luau version 6, Types version 3
-- Time taken: 0.011140 seconds

local RunService = game:GetService("RunService")
local table_freeze_result1 = table.freeze({
	Normal = {
		DisplayName = "Normal Seed Pack";
		Icon = "rbxassetid://101410959894969";
		Items = {{
			Type = "Seed";
			RewardId = "Pumpkin";
			Chance = 25;
		}, {
			Type = "Seed";
			RewardId = "Watermelon";
			Chance = 20;
		}, {
			Type = "Seed";
			RewardId = "Peach";
			Chance = 20;
		}, {
			Type = "Seed";
			RewardId = "Raspberry";
			Chance = 10;
		}, {
			Type = "Seed";
			RewardId = "Dragon Fruit";
			Chance = 10;
		}, {
			Type = "Seed";
			RewardId = "Cactus";
			Chance = 10;
		}, {
			Type = "Seed";
			RewardId = "Mango";
			Chance = 5;
		}};
	};
	Exotic = {
		DisplayName = "Exotic Seed Pack";
		Items = {{
			Type = "Seed";
			RewardId = "Papaya";
			Icon = "rbxassetid://137358951402692";
			Chance = 40;
		}, {
			Type = "Seed";
			RewardId = "Banana";
			Icon = "rbxassetid://118516260773130";
			Chance = 38;
		}, {
			Type = "Seed";
			RewardId = "Passionfruit";
			Icon = "rbxassetid://139621938553116";
			Chance = 20;
		}, {
			Type = "Seed";
			RewardId = "Soul Fruit";
			Icon = "rbxassetid://111245465505679";
			Chance = 1.5;
		}, {
			Type = "Seed";
			RewardId = "Cursed Fruit";
			Icon = "rbxassetid://89675695188581";
			Chance = 0.5;
		}};
	};
	SeedSackBasic = {
		DisplayName = "Basic Seed Pack";
		Items = {{
			Type = "Seed";
			RewardId = "Raspberry";
			Icon = "rbxassetid://86654246455569";
			Chance = 40;
			RemoveChance = true;
		}, {
			Type = "Seed";
			RewardId = "Cranberry";
			Icon = "rbxassetid://84025739268823";
			Chance = 30;
			RemoveChance = true;
		}, {
			Type = "Seed";
			RewardId = "Durian";
			Icon = "rbxassetid://80039191190165";
			Chance = 21;
			RemoveChance = true;
		}, {
			Type = "Seed";
			RewardId = "Eggplant";
			Icon = "rbxassetid://99580594965602";
			Chance = 8.735;
			RemoveChance = true;
		}, {
			Type = "Seed";
			RewardId = "Lotus";
			Icon = "rbxassetid://104511535272743";
			Chance = 0.25;
			RemoveChance = true;
		}, {
			Type = "Seed";
			RewardId = "Venus Fly Trap";
			Icon = "rbxassetid://139210236985330";
			Chance = 0.01;
			RemoveChance = true;
		}, {
			Type = "Pack";
			DisplayName = "Rainbow Sack";
			RewardId = "RainbowSeedSackBasic";
			Icon = "rbxassetid://102551065819622";
			Chance = 0.005;
			RemoveChance = true;
		}};
	};
	SeedSackPremium = {
		DisplayName = "Premium Seed Pack";
		Items = {{
			Type = "Seed";
			RewardId = "Cranberry";
			Icon = "rbxassetid://84025739268823";
			Chance = 45;
		}, {
			Type = "Seed";
			RewardId = "Durian";
			Icon = "rbxassetid://80039191190165";
			Chance = 35;
		}, {
			Type = "Seed";
			RewardId = "Eggplant";
			Icon = "rbxassetid://99580594965602";
			Chance = 16;
		}, {
			Type = "Seed";
			RewardId = "Lotus";
			Icon = "rbxassetid://104511535272743";
			Chance = 2.5;
		}, {
			Type = "Seed";
			RewardId = "Venus Fly Trap";
			Icon = "rbxassetid://139210236985330";
			Chance = 1;
		}, {
			Type = "Pack";
			DisplayName = "Rainbow Sack";
			RewardId = "RainbowSeedSackPremium";
			Icon = "rbxassetid://102551065819622";
			Chance = 0.5;
		}};
	};
	RainbowSeedSackBasic = {
		DisplayName = "Rainbow Basic Seed Pack";
		Items = {{
			Type = "RainbowSeed";
			RewardId = "Cranberry";
			Icon = "rbxassetid://84025739268823";
			Chance = 55;
			RemoveChance = true;
		}, {
			Type = "RainbowSeed";
			RewardId = "Durian";
			Icon = "rbxassetid://80039191190165";
			Chance = 36;
			RemoveChance = true;
		}, {
			Type = "RainbowSeed";
			RewardId = "Eggplant";
			Icon = "rbxassetid://99580594965602";
			Chance = 8.735;
			RemoveChance = true;
		}, {
			Type = "RainbowSeed";
			RewardId = "Lotus";
			Icon = "rbxassetid://104511535272743";
			Chance = 0.25;
			RemoveChance = true;
		}, {
			Type = "RainbowSeed";
			RewardId = "Venus Fly Trap";
			Icon = "rbxassetid://139210236985330";
			Chance = 0.01;
			RemoveChance = true;
		}};
	};
	RainbowSeedSackPremium = {
		DisplayName = "Rainbow Premium Seed Pack";
		Items = {{
			Type = "RainbowSeed";
			RewardId = "Cranberry";
			Icon = "rbxassetid://84025739268823";
			Chance = 45;
		}, {
			Type = "RainbowSeed";
			RewardId = "Durian";
			Icon = "rbxassetid://80039191190165";
			Chance = 35;
		}, {
			Type = "RainbowSeed";
			RewardId = "Eggplant";
			Icon = "rbxassetid://99580594965602";
			Chance = 16;
		}, {
			Type = "RainbowSeed";
			RewardId = "Lotus";
			Icon = "rbxassetid://104511535272743";
			Chance = 2.5;
		}, {
			Type = "RainbowSeed";
			RewardId = "Venus Fly Trap";
			Icon = "rbxassetid://139210236985330";
			Chance = 1;
		}};
	};
	Night = {
		DisplayName = "Night Seed Pack";
		Items = {{
			Type = "Seed";
			RewardId = "Nightshade";
			Chance = 40;
		}, {
			Type = "Seed";
			RewardId = "Glowshroom";
			Chance = 20;
		}, {
			Type = "Seed";
			RewardId = "Mint";
			Chance = 15;
		}, {
			Type = "Seed";
			RewardId = "Moonflower";
			Chance = 10;
		}, {
			Type = "Seed";
			RewardId = "Starfruit";
			Chance = 9.5;
		}, {
			Type = "Seed";
			RewardId = "Moonglow";
			Chance = 5;
		}, {
			Type = "Seed";
			RewardId = "Moon Blossom";
			Chance = 0.5;
		}};
	};
	["Flower Seed Pack"] = {
		DisplayName = "Flower Seed Pack";
		Icon = "rbxassetid://89208043739859";
		Items = {{
			Type = "Seed";
			RewardId = "Rose";
			Icon = "rbxassetid://72881701628573";
			Chance = 40;
		}, {
			Type = "Seed";
			RewardId = "Foxglove";
			Icon = "rbxassetid://122695141895194";
			Chance = 25;
		}, {
			Type = "Seed";
			RewardId = "Lilac";
			Icon = "rbxassetid://87876725757563";
			Chance = 20;
		}, {
			Type = "Seed";
			RewardId = "Pink Lily";
			Icon = "rbxassetid://96953921719864";
			Chance = 10;
		}, {
			Type = "Seed";
			RewardId = "Purple Dahlia";
			Icon = "rbxassetid://76967631138624";
			Chance = 4.5;
		}, {
			Type = "Seed";
			RewardId = "Sunflower";
			Icon = "rbxassetid://73557086822633";
			Chance = 0.5;
		}};
	};
	["Exotic Flower Seed Pack"] = {
		DisplayName = "Exotic Flower Seed Pack";
		Items = {{
			Type = "Seed";
			RewardId = "Rose";
			Icon = "rbxassetid://72881701628573";
			Chance = 39;
		}, {
			Type = "Seed";
			RewardId = "Foxglove";
			Icon = "rbxassetid://122695141895194";
			Chance = 25;
		}, {
			Type = "Seed";
			RewardId = "Lilac";
			Icon = "rbxassetid://87876725757563";
			Chance = 20;
		}, {
			Type = "Seed";
			RewardId = "Pink Lily";
			Icon = "rbxassetid://96953921719864";
			Chance = 10;
		}, {
			Type = "Seed";
			RewardId = "Purple Dahlia";
			Icon = "rbxassetid://76967631138624";
			Chance = 4.5;
		}, {
			Type = "Seed";
			RewardId = "Sunflower";
			Icon = "rbxassetid://73557086822633";
			Chance = 0.5;
		}, {
			Type = "Pack";
			DisplayName = "Rainbow Pack";
			RewardId = "Rainbow Exotic Flower Seed Pack";
			Icon = "rbxassetid://100169804106156";
			Chance = 1;
		}};
	};
	["Rainbow Exotic Flower Seed Pack"] = {
		DisplayName = "Rainbow Exotic Flower Seed Pack";
		Items = {{
			Type = "RainbowSeed";
			RewardId = "Rose";
			Icon = "rbxassetid://72881701628573";
			Chance = 30;
		}, {
			Type = "RainbowSeed";
			RewardId = "Foxglove";
			Icon = "rbxassetid://122695141895194";
			Chance = 25;
		}, {
			Type = "RainbowSeed";
			RewardId = "Lilac";
			Icon = "rbxassetid://87876725757563";
			Chance = 20;
		}, {
			Type = "RainbowSeed";
			RewardId = "Pink Lily";
			Icon = "rbxassetid://96953921719864";
			Chance = 10;
		}, {
			Type = "RainbowSeed";
			RewardId = "Purple Dahlia";
			Icon = "rbxassetid://76967631138624";
			Chance = 8;
		}, {
			Type = "RainbowSeed";
			RewardId = "Sunflower";
			Icon = "rbxassetid://73557086822633";
			Chance = 7;
		}};
	};
	["Crafters Seed Pack"] = {
		DisplayName = "Crafters Seed Pack";
		Icon = "rbxassetid://87806233108357";
		Items = {{
			Type = "Seed";
			RewardId = "Crocus";
			Icon = "rbxassetid://121292386968832";
			Chance = 40;
		}, {
			Type = "Seed";
			RewardId = "Succulent";
			Icon = "rbxassetid://92324210469117";
			Chance = 25;
		}, {
			Type = "Seed";
			RewardId = "Violet Corn";
			Icon = "rbxassetid://96798056059927";
			Chance = 20;
		}, {
			Type = "Seed";
			RewardId = "Bendboo";
			Icon = "rbxassetid://127696002130952";
			Chance = 10;
		}, {
			Type = "Seed";
			RewardId = "Cocovine";
			Icon = "rbxassetid://103933603917731";
			Chance = 4.5;
		}, {
			Type = "Seed";
			RewardId = "Dragon Pepper";
			Icon = "rbxassetid://78076429931317";
			Chance = 0.5;
		}};
	};
	["Exotic Crafters Seed Pack"] = {
		DisplayName = "Exotic Crafters Seed Pack";
		Items = {{
			Type = "Seed";
			RewardId = "Crocus";
			Icon = "rbxassetid://121292386968832";
			Chance = 39;
		}, {
			Type = "Seed";
			RewardId = "Succulent";
			Icon = "rbxassetid://92324210469117";
			Chance = 25;
		}, {
			Type = "Seed";
			RewardId = "Violet Corn";
			Icon = "rbxassetid://96798056059927";
			Chance = 20;
		}, {
			Type = "Seed";
			RewardId = "Bendboo";
			Icon = "rbxassetid://127696002130952";
			Chance = 10;
		}, {
			Type = "Seed";
			RewardId = "Cocovine";
			Icon = "rbxassetid://103933603917731";
			Chance = 4.5;
		}, {
			Type = "Seed";
			RewardId = "Dragon Pepper";
			Icon = "rbxassetid://78076429931317";
			Chance = 0.5;
		}, {
			Type = "Pack";
			DisplayName = "Rainbow Pack";
			RewardId = "Rainbow Exotic Crafters Seed Pack";
			Icon = "rbxassetid://109579584893006";
			Chance = 1;
		}};
	};
	["Rainbow Exotic Crafters Seed Pack"] = {
		DisplayName = "Rainbow Exotic Crafters Seed Pack";
		Items = {{
			Type = "RainbowSeed";
			RewardId = "Crocus";
			Icon = "rbxassetid://121292386968832";
			Chance = 30;
		}, {
			Type = "RainbowSeed";
			RewardId = "Succulent";
			Icon = "rbxassetid://92324210469117";
			Chance = 25;
		}, {
			Type = "RainbowSeed";
			RewardId = "Violet Corn";
			Icon = "rbxassetid://96798056059927";
			Chance = 20;
		}, {
			Type = "RainbowSeed";
			RewardId = "Bendboo";
			Icon = "rbxassetid://127696002130952";
			Chance = 10;
		}, {
			Type = "RainbowSeed";
			RewardId = "Cocovine";
			Icon = "rbxassetid://103933603917731";
			Chance = 8;
		}, {
			Type = "RainbowSeed";
			RewardId = "Dragon Pepper";
			Icon = "rbxassetid://78076429931317";
			Chance = 7;
		}};
	};
	["Summer Seed Pack"] = {
		DisplayName = "Summer Seed Pack";
		Icon = "rbxassetid://87843809427532";
		Items = {{
			Type = "Seed";
			RewardId = "Wild Carrot";
			Icon = "rbxassetid://72854521502613";
			Chance = 40;
		}, {
			Type = "Seed";
			RewardId = "Pear";
			Icon = "rbxassetid://91934825764433";
			Chance = 25;
		}, {
			Type = "Seed";
			RewardId = "Cantaloupe";
			Icon = "rbxassetid://95818249215044";
			Chance = 20;
		}, {
			Type = "Seed";
			RewardId = "Parasol Flower";
			Icon = "rbxassetid://119758485597210";
			Chance = 10;
		}, {
			Type = "Seed";
			RewardId = "Rosy Delight";
			Icon = "rbxassetid://92579553790588";
			Chance = 4.5;
		}, {
			Type = "Seed";
			RewardId = "Elephant Ears";
			Icon = "rbxassetid://119701335732381";
			Chance = 0.5;
		}};
	};
	["Exotic Summer Seed Pack"] = {
		DisplayName = "Exotic Summer Seed Pack";
		Items = {{
			Type = "Seed";
			RewardId = "Wild Carrot";
			Icon = "rbxassetid://72854521502613";
			Chance = 39;
		}, {
			Type = "Seed";
			RewardId = "Pear";
			Icon = "rbxassetid://91934825764433";
			Chance = 25;
		}, {
			Type = "Seed";
			RewardId = "Cantaloupe";
			Icon = "rbxassetid://95818249215044";
			Chance = 20;
		}, {
			Type = "Seed";
			RewardId = "Parasol Flower";
			Icon = "rbxassetid://119758485597210";
			Chance = 10;
		}, {
			Type = "Seed";
			RewardId = "Rosy Delight";
			Icon = "rbxassetid://92579553790588";
			Chance = 4.5;
		}, {
			Type = "Seed";
			RewardId = "Elephant Ears";
			Icon = "rbxassetid://119701335732381";
			Chance = 0.5;
		}, {
			Type = "Pack";
			DisplayName = "Rainbow Pack";
			RewardId = "Rainbow Exotic Summer Seed Pack";
			Icon = "rbxassetid://120279580075160";
			Chance = 1;
		}};
	};
	["Rainbow Exotic Summer Seed Pack"] = {
		DisplayName = "Rainbow Exotic Summer Seed Pack";
		Items = {{
			Type = "RainbowSeed";
			RewardId = "Wild Carrot";
			Icon = "rbxassetid://72854521502613";
			Chance = 30;
		}, {
			Type = "RainbowSeed";
			RewardId = "Pear";
			Icon = "rbxassetid://91934825764433";
			Chance = 25;
		}, {
			Type = "RainbowSeed";
			RewardId = "Cantaloupe";
			Icon = "rbxassetid://95818249215044";
			Chance = 20;
		}, {
			Type = "RainbowSeed";
			RewardId = "Parasol Flower";
			Icon = "rbxassetid://119758485597210";
			Chance = 10;
		}, {
			Type = "RainbowSeed";
			RewardId = "Rosy Delight";
			Icon = "rbxassetid://92579553790588";
			Chance = 8;
		}, {
			Type = "RainbowSeed";
			RewardId = "Elephant Ears";
			Icon = "rbxassetid://119701335732381";
			Chance = 7;
		}};
	};
	["Ancient Seed Pack"] = {
		DisplayName = "Ancient Seed Pack";
		Icon = "rbxassetid://129787954191127";
		Items = {{
			Type = "Seed";
			RewardId = "Stonebite";
			Icon = "rbxassetid://110227673162287";
			Chance = 40;
		}, {
			Type = "Seed";
			RewardId = "Paradise Petal";
			Icon = "rbxassetid://73887260192647";
			Chance = 25;
		}, {
			Type = "Seed";
			RewardId = "Horned Dinoshroom";
			Icon = "rbxassetid://113476956759836";
			Chance = 20;
		}, {
			Type = "Seed";
			RewardId = "Boneboo";
			Icon = "rbxassetid://88824192085169";
			Chance = 10;
		}, {
			Type = "Seed";
			RewardId = "Firefly Fern";
			Icon = "rbxassetid://95168789830686";
			Chance = 4.5;
		}, {
			Type = "Seed";
			RewardId = "Fossilight";
			Icon = "rbxassetid://112026504427742";
			Chance = 0.5;
		}};
	};
	["Exotic Ancient Seed Pack"] = {
		DisplayName = "Exotic Ancient Seed Pack";
		Icon = "rbxassetid://125063622378760";
		Items = {{
			Type = "Seed";
			RewardId = "Stonebite";
			Icon = "rbxassetid://110227673162287";
			Chance = 39;
		}, {
			Type = "Seed";
			RewardId = "Paradise Petal";
			Icon = "rbxassetid://73887260192647";
			Chance = 25;
		}, {
			Type = "Seed";
			RewardId = "Horned Dinoshroom";
			Icon = "rbxassetid://113476956759836";
			Chance = 20;
		}, {
			Type = "Seed";
			RewardId = "Boneboo";
			Icon = "rbxassetid://88824192085169";
			Chance = 10;
		}, {
			Type = "Seed";
			RewardId = "Firefly Fern";
			Icon = "rbxassetid://95168789830686";
			Chance = 4.5;
		}, {
			Type = "Seed";
			RewardId = "Fossilight";
			Icon = "rbxassetid://112026504427742";
			Chance = 0.5;
		}, {
			Type = "Pack";
			DisplayName = "Rainbow Pack";
			RewardId = "Rainbow Exotic Ancient Seed Pack";
			Icon = "rbxassetid://90010389653960";
			Chance = 1;
		}};
	};
	["Rainbow Exotic Ancient Seed Pack"] = {
		DisplayName = "Rainbow Exotic Ancient Seed Pack";
		Icon = "rbxassetid://125063622378760";
		Items = {{
			Type = "RainbowSeed";
			RewardId = "Stonebite";
			Icon = "rbxassetid://110227673162287";
			Chance = 30;
		}, {
			Type = "RainbowSeed";
			RewardId = "Paradise Petal";
			Icon = "rbxassetid://73887260192647";
			Chance = 25;
		}, {
			Type = "RainbowSeed";
			RewardId = "Horned Dinoshroom";
			Icon = "rbxassetid://113476956759836";
			Chance = 20;
		}, {
			Type = "RainbowSeed";
			RewardId = "Boneboo";
			Icon = "rbxassetid://88824192085169";
			Chance = 10;
		}, {
			Type = "RainbowSeed";
			RewardId = "Firefly Fern";
			Icon = "rbxassetid://95168789830686";
			Chance = 8;
		}, {
			Type = "RainbowSeed";
			RewardId = "Fossilight";
			Icon = "rbxassetid://112026504427742";
			Chance = 7;
		}};
	};
	NightPremium = {
		DisplayName = "Premium Night Seed Pack";
		Items = {{
			Type = "Seed";
			RewardId = "Glowshroom";
			Chance = 30;
		}, {
			Type = "Seed";
			RewardId = "Mint";
			Chance = 22;
		}, {
			Type = "Seed";
			RewardId = "Moonflower";
			Chance = 18;
		}, {
			Type = "Seed";
			RewardId = "Starfruit";
			Chance = 15.5;
		}, {
			Type = "Seed";
			RewardId = "Moonglow";
			Chance = 12;
		}, {
			Type = "Seed";
			RewardId = "Moon Blossom";
			Chance = 2.5;
		}};
	};
	["Zen Seed Pack"] = {
		DisplayName = "Zen Seed Pack";
		Icon = "rbxassetid://86615661639589";
		Items = {{
			Type = "Seed";
			RewardId = "Monoblooma";
			Icon = "rbxassetid://107989871465566";
			Chance = 40;
		}, {
			Type = "Seed";
			RewardId = "Serenity";
			Icon = "rbxassetid://137574233665259";
			Chance = 25;
		}, {
			Type = "Seed";
			RewardId = "Taro Flower";
			Icon = "rbxassetid://76385999229710";
			Chance = 20;
		}, {
			Type = "Seed";
			RewardId = "Zen Rocks";
			Icon = "rbxassetid://130822723633121";
			Chance = 10;
		}, {
			Type = "Seed";
			RewardId = "Hinomai";
			Icon = "rbxassetid://92612486902506";
			Chance = 4.5;
		}, {
			Type = "Seed";
			RewardId = "Maple Apple";
			Icon = "rbxassetid://131021954395430";
			Chance = 0.5;
		}};
	};
	["Exotic Zen Seed Pack"] = {
		DisplayName = "Exotic Zen Seed Pack";
		Icon = "rbxassetid://79063061377528";
		Items = {{
			Type = "Seed";
			RewardId = "Monoblooma";
			Icon = "rbxassetid://107989871465566";
			Chance = 39;
		}, {
			Type = "Seed";
			RewardId = "Serenity";
			Icon = "rbxassetid://137574233665259";
			Chance = 25;
		}, {
			Type = "Seed";
			RewardId = "Taro Flower";
			Icon = "rbxassetid://76385999229710";
			Chance = 20;
		}, {
			Type = "Seed";
			RewardId = "Zen Rocks";
			Icon = "rbxassetid://130822723633121";
			Chance = 10;
		}, {
			Type = "Seed";
			RewardId = "Hinomai";
			Icon = "rbxassetid://92612486902506";
			Chance = 4.5;
		}, {
			Type = "Seed";
			RewardId = "Maple Apple";
			Icon = "rbxassetid://131021954395430";
			Chance = 0.5;
		}, {
			Type = "Pack";
			DisplayName = "Rainbow Pack";
			RewardId = "Rainbow Exotic Zen Seed Pack";
			Icon = "rbxassetid://72241872838922";
			Chance = 1;
		}};
	};
	["Rainbow Exotic Zen Seed Pack"] = {
		DisplayName = "Rainbow Exotic Zen Seed Pack";
		Icon = "rbxassetid://72241872838922";
		Items = {{
			Type = "RainbowSeed";
			RewardId = "Monoblooma";
			Icon = "rbxassetid://107989871465566";
			Chance = 30;
		}, {
			Type = "RainbowSeed";
			RewardId = "Serenity";
			Icon = "rbxassetid://137574233665259";
			Chance = 25;
		}, {
			Type = "RainbowSeed";
			RewardId = "Taro Flower";
			Icon = "rbxassetid://76385999229710";
			Chance = 20;
		}, {
			Type = "RainbowSeed";
			RewardId = "Zen Rocks";
			Icon = "rbxassetid://130822723633121";
			Chance = 10;
		}, {
			Type = "RainbowSeed";
			RewardId = "Hinomai";
			Icon = "rbxassetid://92612486902506";
			Chance = 8;
		}, {
			Type = "RainbowSeed";
			RewardId = "Maple Apple";
			Icon = "rbxassetid://131021954395430";
			Chance = 7;
		}};
	};
})
if RunService:IsStudio() and RunService:IsServer() then
	for i, v in table_freeze_result1 do
		if string.find(i, "Rainbow") then
			for i_2, v_2 in v.Items do
				if v_2.Type == "Seed" then
					warn(`Item index {i_2} was expected to be Rainbow, but instead is a Normal seed in {i}`)
				end
			end
		end
	end
end
return {
	Packs = table_freeze_result1;
	GetTextDisplayForItem = function(arg1, arg2) -- Line 1056, Named "GetTextDisplayForItem"
		if arg2.DisplayName then
			return arg2.DisplayName
		end
		return arg2.RewardId
	end;
}