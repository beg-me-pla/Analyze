-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:53
-- Luau version 6, Types version 3
-- Time taken: 0.022871 seconds

local tbl = {
	["Lightning Rod"] = {
		Inputs = {{
			ItemType = "Sprinkler";
			ItemData = {
				ItemName = "Basic Sprinkler";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Sprinkler";
			ItemData = {
				ItemName = "Advanced Sprinkler";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Sprinkler";
			ItemData = {
				ItemName = "Godly Sprinkler";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "Gear";
			ItemData = {
				ItemName = "Lightning Rod";
				Quantity = 1;
			};
		}};
		TimeToCraft = 2700;
		PurchaseID = 3265946758;
		RobuxPrice = 179;
		LayoutOrder = 5;
		MachineTypes = {"GearEventWorkbench"};
		Cost = {
			CurrencyType = "Sheckles";
			Amount = 500000;
		};
	};
	Reclaimer = {
		Inputs = {{
			ItemType = "PetEgg";
			ItemData = {
				ItemName = "Common Egg";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Harvest Tool";
			ItemData = {
				ItemName = "Harvest Tool";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "Gear";
			ItemData = {
				ItemName = "Reclaimer";
				Quantity = 3;
			};
		}};
		TimeToCraft = 1500;
		PurchaseID = 3309686533;
		RobuxPrice = 199;
		LayoutOrder = 8;
		MachineTypes = {"GearEventWorkbench"};
		Cost = {
			CurrencyType = "Sheckles";
			Amount = 500000;
		};
	};
	["Small Toy"] = {
		Inputs = {{
			ItemType = "PetEgg";
			ItemData = {
				ItemName = "Common Egg";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Seed";
			ItemData = {
				ItemName = "Coconut";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Coconut";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "Gear";
			ItemData = {
				ItemName = "Small Toy";
				Quantity = 3;
			};
		}};
		TimeToCraft = 600;
		PurchaseID = 3329526448;
		RobuxPrice = 139;
		LayoutOrder = 113;
		MachineTypes = {"GearEventWorkbench"};
		Cost = {
			CurrencyType = "Sheckles";
			Amount = 1000000;
		};
	};
	["Small Treat"] = {
		Inputs = {{
			ItemType = "PetEgg";
			ItemData = {
				ItemName = "Common Egg";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Seed";
			ItemData = {
				ItemName = "Dragon Fruit";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Blueberry";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "Gear";
			ItemData = {
				ItemName = "Small Treat";
				Quantity = 3;
			};
		}};
		TimeToCraft = 600;
		PurchaseID = 3329527534;
		RobuxPrice = 89;
		LayoutOrder = 115;
		MachineTypes = {"GearEventWorkbench"};
		Cost = {
			CurrencyType = "Sheckles";
			Amount = 1000000;
		};
	};
	["Tropical Mist Sprinkler"] = {
		Inputs = {{
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Coconut";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Dragon Fruit";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Mango";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Sprinkler";
			ItemData = {
				ItemName = "Godly Sprinkler";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "Gear";
			ItemData = {
				ItemName = "Tropical Mist Sprinkler";
				Quantity = 1;
			};
		}};
		TimeToCraft = 3600;
		PurchaseID = 3306484251;
		RobuxPrice = 229;
		LayoutOrder = 10;
		MachineTypes = {"GearEventWorkbench"};
	};
	["Berry Blusher Sprinkler"] = {
		Inputs = {{
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Grape";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Blueberry";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Strawberry";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Sprinkler";
			ItemData = {
				ItemName = "Godly Sprinkler";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "Gear";
			ItemData = {
				ItemName = "Berry Blusher Sprinkler";
				Quantity = 1;
			};
		}};
		TimeToCraft = 3600;
		PurchaseID = 3306484242;
		RobuxPrice = 229;
		LayoutOrder = 20;
		MachineTypes = {"GearEventWorkbench"};
	};
	["Spice Spritzer Sprinkler"] = {
		Inputs = {{
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Pepper";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Ember Lily";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Cacao";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Sprinkler";
			ItemData = {
				ItemName = "Master Sprinkler";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "Gear";
			ItemData = {
				ItemName = "Spice Spritzer Sprinkler";
				Quantity = 1;
			};
		}};
		TimeToCraft = 3600;
		PurchaseID = 3306484232;
		RobuxPrice = 229;
		LayoutOrder = 30;
		MachineTypes = {"GearEventWorkbench"};
	};
	["Sweet Soaker Sprinkler"] = {
		Inputs = {{
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Watermelon";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Watermelon";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Watermelon";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Sprinkler";
			ItemData = {
				ItemName = "Master Sprinkler";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "Gear";
			ItemData = {
				ItemName = "Sweet Soaker Sprinkler";
				Quantity = 1;
			};
		}};
		TimeToCraft = 3600;
		PurchaseID = 3306484252;
		RobuxPrice = 229;
		LayoutOrder = 40;
		MachineTypes = {"GearEventWorkbench"};
	};
	["Flower Froster Sprinkler"] = {
		Inputs = {{
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Orange Tulip";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Daffodil";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Sprinkler";
			ItemData = {
				ItemName = "Advanced Sprinkler";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Sprinkler";
			ItemData = {
				ItemName = "Basic Sprinkler";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "Gear";
			ItemData = {
				ItemName = "Flower Froster Sprinkler";
				Quantity = 1;
			};
		}};
		TimeToCraft = 3600;
		PurchaseID = 3306484243;
		RobuxPrice = 229;
		LayoutOrder = 50;
		MachineTypes = {"GearEventWorkbench"};
	};
	["Stalk Sprout Sprinkler"] = {
		Inputs = {{
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Bamboo";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Beanstalk";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Mushroom";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Sprinkler";
			ItemData = {
				ItemName = "Advanced Sprinkler";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "Gear";
			ItemData = {
				ItemName = "Stalk Sprout Sprinkler";
				Quantity = 1;
			};
		}};
		TimeToCraft = 3600;
		PurchaseID = 3306484241;
		RobuxPrice = 229;
		LayoutOrder = 60;
		MachineTypes = {"GearEventWorkbench"};
	};
	["Mutation Spray Choc"] = {
		Inputs = {{
			ItemType = "SprayBottle";
			ItemData = {
				ItemName = "Cleaning Spray";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Cacao";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "Gear";
			ItemData = {
				ItemName = "Mutation Spray Choc";
				Quantity = 1;
			};
		}};
		TimeToCraft = 720;
		PurchaseID = 3306484247;
		RobuxPrice = 179;
		LayoutOrder = 70;
		MachineTypes = {"GearEventWorkbench"};
		Cost = {
			CurrencyType = "Sheckles";
			Amount = 200000;
		};
	};
	["Mutation Spray Chilled"] = {
		Inputs = {{
			ItemType = "SprayBottle";
			ItemData = {
				ItemName = "Cleaning Spray";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Sprinkler";
			ItemData = {
				ItemName = "Godly Sprinkler";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "Gear";
			ItemData = {
				ItemName = "Mutation Spray Chilled";
				Quantity = 1;
			};
		}};
		TimeToCraft = 300;
		PurchaseID = 3317772898;
		RobuxPrice = 189;
		LayoutOrder = 80;
		MachineTypes = {"GearEventWorkbench"};
		Cost = {
			CurrencyType = "Sheckles";
			Amount = 500000;
		};
	};
	["Mutation Spray Pollinated"] = {
		Inputs = {{
			ItemType = "SprayBottle";
			ItemData = {
				ItemName = "Cleaning Spray";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Bee Balm";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "Gear";
			ItemData = {
				ItemName = "Mutation Spray Pollinated";
				Quantity = 1;
			};
		}};
		TimeToCraft = 300;
		PurchaseID = 3306484250;
		RobuxPrice = 179;
		LayoutOrder = 80;
		MachineTypes = {"GearEventWorkbench"};
		Cost = {
			CurrencyType = "Honey";
			Amount = 25;
		};
		DisplayInCrafting = false;
	};
	["Mutation Spray Shocked"] = {
		Inputs = {{
			ItemType = "SprayBottle";
			ItemData = {
				ItemName = "Cleaning Spray";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Lightning Rod";
			ItemData = {
				ItemName = "Lightning Rod";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "Gear";
			ItemData = {
				ItemName = "Mutation Spray Shocked";
				Quantity = 1;
			};
		}};
		TimeToCraft = 1800;
		PurchaseID = 3306484253;
		RobuxPrice = 199;
		LayoutOrder = 90;
		MachineTypes = {"GearEventWorkbench"};
		Cost = {
			CurrencyType = "Sheckles";
			Amount = 1000000;
		};
	};
	["Honey Crafters Crate"] = {
		Inputs = {{
			ItemType = "CosmeticCrate";
			ItemData = {
				ItemName = "Bee Crate";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "CosmeticCrate";
			ItemData = {
				ItemName = "Honey Crafters Crate";
				Quantity = 1;
			};
		}};
		TimeToCraft = 1800;
		PurchaseID = 3306484248;
		RobuxPrice = 179;
		LayoutOrder = 100;
		MachineTypes = {"GearEventWorkbench"};
		Cost = {
			CurrencyType = "Honey";
			Amount = 12;
		};
		DisplayInCrafting = false;
	};
	["Anti Bee Egg"] = {
		Inputs = {{
			ItemType = "PetEgg";
			ItemData = {
				ItemName = "Bee Egg";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "PetEgg";
			ItemData = {
				ItemName = "Anti Bee Egg";
				Quantity = 1;
			};
		}};
		TimeToCraft = 7200;
		PurchaseID = 3306484244;
		RobuxPrice = 149;
		LayoutOrder = 110;
		MachineTypes = {"GearEventWorkbench"};
		Cost = {
			CurrencyType = "Honey";
			Amount = 25;
		};
	};
	["Pack Bee"] = {
		Inputs = {{
			ItemType = "PetEgg";
			ItemData = {
				ItemName = "Anti Bee Egg";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Sunflower";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Purple Dahlia";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "Pet";
			ItemData = {
				ItemName = "Pack Bee";
				Quantity = 1;
			};
		}};
		TimeToCraft = 14400;
		PurchaseID = 3306484257;
		RobuxPrice = 799;
		LayoutOrder = 120;
		MachineTypes = {"GearEventWorkbench"};
		Cost = {
			CurrencyType = "Honey";
			Amount = 250;
		};
	};
	["Crafters Seed Pack"] = {
		Inputs = {{
			ItemType = "Seed Pack";
			ItemData = {
				ItemName = "Flower Seed Pack";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "Seed Pack";
			ItemData = {
				ItemName = "Crafters Seed Pack";
				Quantity = 1;
			};
		}};
		TimeToCraft = 1200;
		PurchaseID = 3306485034;
		RobuxPrice = 199;
		LayoutOrder = 130;
		MachineTypes = {"SeedEventWorkbench"};
		Cost = {
			CurrencyType = "Honey";
			Amount = 10;
		};
		DisplayInCrafting = false;
	};
	["Peace Lily"] = {
		Inputs = {{
			ItemType = "Seed";
			ItemData = {
				ItemName = "Rafflesia";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Seed";
			ItemData = {
				ItemName = "Cauliflower";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "Seed";
			ItemData = {
				ItemName = "Peace Lily";
				Quantity = 1;
			};
		}};
		TimeToCraft = 600;
		PurchaseID = 3317730044;
		RobuxPrice = 129;
		LayoutOrder = 140;
		MachineTypes = {"SeedEventWorkbench"};
		Cost = {
			CurrencyType = "SummerCoins";
			Amount = 3;
		};
	};
	["Aloe Vera"] = {
		Inputs = {{
			ItemType = "Seed";
			ItemData = {
				ItemName = "Peace Lily";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Prickly Pear";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "Seed";
			ItemData = {
				ItemName = "Aloe Vera";
				Quantity = 1;
			};
		}};
		TimeToCraft = 600;
		PurchaseID = 3317175501;
		RobuxPrice = 299;
		LayoutOrder = 143;
		MachineTypes = {"SeedEventWorkbench"};
		Cost = {
			CurrencyType = "SummerCoins";
			Amount = 18;
		};
	};
	Guanabana = {
		Inputs = {{
			ItemType = "Seed";
			ItemData = {
				ItemName = "Aloe Vera";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Seed";
			ItemData = {
				ItemName = "Prickly Pear";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Banana";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "Seed";
			ItemData = {
				ItemName = "Guanabana";
				Quantity = 1;
			};
		}};
		TimeToCraft = 600;
		PurchaseID = 3317175618;
		RobuxPrice = 779;
		LayoutOrder = 145;
		MachineTypes = {"SeedEventWorkbench"};
		Cost = {
			CurrencyType = "SummerCoins";
			Amount = 30;
		};
	};
	["Manuka Flower"] = {
		Inputs = {{
			ItemType = "Seed";
			ItemData = {
				ItemName = "Daffodil";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Seed";
			ItemData = {
				ItemName = "Orange Tulip";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "Seed";
			ItemData = {
				ItemName = "Manuka Flower";
				Quantity = 1;
			};
		}};
		TimeToCraft = 600;
		PurchaseID = 3306485030;
		RobuxPrice = 99;
		LayoutOrder = 140;
		MachineTypes = {"SeedEventWorkbench"};
		Cost = {
			CurrencyType = "Honey";
			Amount = 6;
		};
		DisplayInCrafting = false;
	};
	Dandelion = {
		Inputs = {{
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Bamboo";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Bamboo";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Seed";
			ItemData = {
				ItemName = "Manuka Flower";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "Seed";
			ItemData = {
				ItemName = "Dandelion";
				Quantity = 1;
			};
		}};
		TimeToCraft = 960;
		PurchaseID = 3306485029;
		RobuxPrice = 199;
		LayoutOrder = 150;
		MachineTypes = {"SeedEventWorkbench"};
		Cost = {
			CurrencyType = "Honey";
			Amount = 20;
		};
		DisplayInCrafting = false;
	};
	Lumira = {
		Inputs = {{
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Pumpkin";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Pumpkin";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Seed";
			ItemData = {
				ItemName = "Dandelion";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Seed Pack";
			ItemData = {
				ItemName = "Flower Seed Pack";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "Seed";
			ItemData = {
				ItemName = "Lumira";
				Quantity = 1;
			};
		}};
		TimeToCraft = 1200;
		PurchaseID = 3306485023;
		RobuxPrice = 529;
		LayoutOrder = 160;
		MachineTypes = {"SeedEventWorkbench"};
		Cost = {
			CurrencyType = "Honey";
			Amount = 40;
		};
		DisplayInCrafting = false;
	};
	Honeysuckle = {
		Inputs = {{
			ItemType = "Seed";
			ItemData = {
				ItemName = "Pink Lily";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Seed";
			ItemData = {
				ItemName = "Purple Dahlia";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "Seed";
			ItemData = {
				ItemName = "Honeysuckle";
				Quantity = 1;
			};
		}};
		TimeToCraft = 1440;
		PurchaseID = 3306485032;
		RobuxPrice = 619;
		LayoutOrder = 170;
		MachineTypes = {"SeedEventWorkbench"};
		Cost = {
			CurrencyType = "Honey";
			Amount = 80;
		};
		DisplayInCrafting = false;
	};
	["Bee Balm"] = {
		Inputs = {{
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Crocus";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Lavender";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "Seed";
			ItemData = {
				ItemName = "Bee Balm";
				Quantity = 1;
			};
		}};
		TimeToCraft = 900;
		PurchaseID = 3306485036;
		RobuxPrice = 179;
		LayoutOrder = 180;
		MachineTypes = {"SeedEventWorkbench"};
		Cost = {
			CurrencyType = "Honey";
			Amount = 10;
		};
		DisplayInCrafting = false;
	};
	["Nectar Thorn"] = {
		Inputs = {{
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Cactus";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Cactus";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Seed";
			ItemData = {
				ItemName = "Cactus";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Seed";
			ItemData = {
				ItemName = "Nectarshade";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "Seed";
			ItemData = {
				ItemName = "Nectar Thorn";
				Quantity = 1;
			};
		}};
		TimeToCraft = 1800;
		PurchaseID = 3306485033;
		RobuxPrice = 659;
		LayoutOrder = 190;
		MachineTypes = {"SeedEventWorkbench"};
		Cost = {
			CurrencyType = "Honey";
			Amount = 20;
		};
		DisplayInCrafting = false;
	};
	Suncoil = {
		Inputs = {{
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Crocus";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Daffodil";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Dandelion";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Pink Lily";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "Seed";
			ItemData = {
				ItemName = "Suncoil";
				Quantity = 1;
			};
		}};
		TimeToCraft = 2700;
		PurchaseID = 3306485035;
		RobuxPrice = 749;
		LayoutOrder = 200;
		MachineTypes = {"SeedEventWorkbench"};
		Cost = {
			CurrencyType = "Honey";
			Amount = 40;
		};
		DisplayInCrafting = false;
	};
	["Mutation Spray Amber"] = {
		Inputs = {{
			ItemType = "SprayBottle";
			ItemData = {
				ItemName = "Cleaning Spray";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "PetEgg";
			ItemData = {
				ItemName = "Dinosaur Egg";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "Gear";
			ItemData = {
				ItemName = "Mutation Spray Amber";
				Quantity = 1;
			};
		}};
		TimeToCraft = 3600;
		PurchaseID = 3322971805;
		RobuxPrice = 189;
		LayoutOrder = 90;
		MachineTypes = {"DinoEventWorkbench"};
		Cost = {
			CurrencyType = "Sheckles";
			Amount = 1000000;
		};
	};
	["Ancient Seed Pack"] = {
		Inputs = {{
			ItemType = "PetEgg";
			ItemData = {
				ItemName = "Dinosaur Egg";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "Seed Pack";
			ItemData = {
				ItemName = "Ancient Seed Pack";
				Quantity = 2;
			};
		}};
		TimeToCraft = 3600;
		PurchaseID = 3324600388;
		RobuxPrice = 199;
		LayoutOrder = 100;
		MachineTypes = {"DinoEventWorkbench"};
		Cost = {
			CurrencyType = "Sheckles";
			Amount = 5500000;
		};
	};
	["Dino Crate"] = {
		Inputs = {{
			ItemType = "PetEgg";
			ItemData = {
				ItemName = "Dinosaur Egg";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "CosmeticCrate";
			ItemData = {
				ItemName = "Dino Crate";
				Quantity = 2;
			};
		}};
		TimeToCraft = 1800;
		PurchaseID = 3324601485;
		RobuxPrice = 179;
		LayoutOrder = 110;
		MachineTypes = {"DinoEventWorkbench"};
		Cost = {
			CurrencyType = "Sheckles";
			Amount = 5500000;
		};
	};
	["Archaeologist Crate"] = {
		Inputs = {{
			ItemType = "PetEgg";
			ItemData = {
				ItemName = "Dinosaur Egg";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "CosmeticCrate";
			ItemData = {
				ItemName = "Archaeologist Crate";
				Quantity = 2;
			};
		}};
		TimeToCraft = 1800;
		PurchaseID = 3329654888;
		RobuxPrice = 179;
		LayoutOrder = 115;
		MachineTypes = {"DinoEventWorkbench"};
		Cost = {
			CurrencyType = "Sheckles";
			Amount = 5500000;
		};
	};
	["Dinosaur Egg"] = {
		Inputs = {{
			ItemType = "PetEgg";
			ItemData = {
				ItemName = "Common Egg";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Bone Blossom";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "PetEgg";
			ItemData = {
				ItemName = "Dinosaur Egg";
				Quantity = 1;
			};
		}};
		TimeToCraft = 1800;
		PurchaseID = 3329519291;
		RobuxPrice = 149;
		LayoutOrder = 120;
		IsUnlockable = true;
		MachineTypes = {"DinoEventWorkbench"};
		Cost = {
			CurrencyType = "Sheckles";
			Amount = 5500000;
		};
	};
	["Primal Egg"] = {
		Inputs = {{
			ItemType = "PetEgg";
			ItemData = {
				ItemName = "Dinosaur Egg";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Bone Blossom";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "PetEgg";
			ItemData = {
				ItemName = "Primal Egg";
				Quantity = 1;
			};
		}};
		TimeToCraft = 1800;
		PurchaseID = 3329518200;
		RobuxPrice = 149;
		LayoutOrder = 130;
		IsUnlockable = true;
		MachineTypes = {"DinoEventWorkbench"};
		Cost = {
			CurrencyType = "Sheckles";
			Amount = 5500000;
		};
	};
	Horsetail = {
		Inputs = {{
			ItemType = "Seed";
			ItemData = {
				ItemName = "Stonebite";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Bamboo";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Corn";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "Seed";
			ItemData = {
				ItemName = "Horsetail";
				Quantity = 1;
			};
		}};
		TimeToCraft = 900;
		PurchaseID = 3329520820;
		RobuxPrice = 199;
		LayoutOrder = 5;
		MachineTypes = {"SeedEventWorkbench"};
		Cost = {
			CurrencyType = "Sheckles";
			Amount = 15000;
		};
	};
	Lingonberry = {
		Inputs = {{
			ItemType = "Seed";
			ItemData = {
				ItemName = "Blueberry";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Seed";
			ItemData = {
				ItemName = "Blueberry";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Seed";
			ItemData = {
				ItemName = "Blueberry";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Horsetail";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "Seed";
			ItemData = {
				ItemName = "Lingonberry";
				Quantity = 1;
			};
		}};
		TimeToCraft = 900;
		PurchaseID = 3329520955;
		RobuxPrice = 209;
		LayoutOrder = 10;
		MachineTypes = {"SeedEventWorkbench"};
		Cost = {
			CurrencyType = "Sheckles";
			Amount = 450000;
		};
	};
	["Amber Spine"] = {
		Inputs = {{
			ItemType = "Seed";
			ItemData = {
				ItemName = "Cactus";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Pumpkin";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Horsetail";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "Seed";
			ItemData = {
				ItemName = "Amber Spine";
				Quantity = 1;
			};
		}};
		TimeToCraft = 1800;
		PurchaseID = 3329520620;
		RobuxPrice = 625;
		LayoutOrder = 20;
		MachineTypes = {"SeedEventWorkbench"};
		Cost = {
			CurrencyType = "Sheckles";
			Amount = 650000;
		};
	};
	["Grand Volcania"] = {
		Inputs = {{
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Ember Lily";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Holdable";
			ItemData = {
				ItemName = "Ember Lily";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "PetEgg";
			ItemData = {
				ItemName = "Dinosaur Egg";
				AcceptAllTypes = false;
			};
		}, {
			ItemType = "Seed Pack";
			ItemData = {
				ItemName = "Ancient Seed Pack";
				AcceptAllTypes = false;
			};
		}};
		Outputs = {{
			ItemType = "Seed";
			ItemData = {
				ItemName = "Grand Volcania";
				Quantity = 1;
			};
		}};
		TimeToCraft = 2700;
		PurchaseID = 3329521774;
		RobuxPrice = 819;
		LayoutOrder = 30;
		MachineTypes = {"SeedEventWorkbench"};
		Cost = {
			CurrencyType = "Sheckles";
			Amount = 900000;
		};
	};
}
local tbl_upvr = {}
local function _(arg1) -- Line 775, Named "GetTableForMachineType"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local var471 = tbl_upvr[arg1]
	if not var471 then
		var471 = {}
		tbl_upvr[arg1] = var471
	end
	return var471
end
for i, v in tbl do
	for _, v_2 in v.MachineTypes do
		local var472 = tbl_upvr[v_2]
		if not var472 then
			var472 = {}
			tbl_upvr[v_2] = var472
		end
		var472[i] = v
	end
end
return {
	ItemRecipes = tbl;
	RecipiesSortedByMachineType = tbl_upvr;
}