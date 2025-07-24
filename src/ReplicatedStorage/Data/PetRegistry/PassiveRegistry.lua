-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:45
-- Luau version 6, Types version 3
-- Time taken: 0.019332 seconds

local longstring1 = "Every <Cooldown>s, goes to the cosmetic crate with the highest open time, and reduces its open time by <Amount>s! There is a <Chance>% chance for open time reduction to be multiplied by <Multiplier>x"
local longstring2 = "Every <Cooldown>m opens its frills and spits out venom! The venom spreads to <Number> other random pets, advancing cooldown by <AmountCD> OR granting <AmountXP> xp"
local longstring3 = "Every <Cooldown>m, devours a random mutation from <Amount> fruits in your garden each, then roars, spreading those mutations to 1 random fruit in your garden! Prioritizes applying mutations to a favorited fruit."
return {
	["Milk of the Land"] = {
		Description = "All plants within <Range> studs grow <Multiplier>x faster!";
		States = {
			Range = {
				Base = 10;
				Scale = 0.1;
			};
			Multiplier = {
				Base = 1.25;
				Scale = 0.0125;
			};
		};
	};
	["For the Blue Colony"] = {
		Description = "<Chance>% chance harvested fruit duplicate! Rarer crops have lower chance to duplicate.";
		States = {
			Chance = {
				Base = 10;
				Scale = 0.1;
			};
		};
	};
	["For the Red Colony"] = {
		Description = "<Chance>% chance harvested fruit duplicate! Rarer crops have lower chance to duplicate.";
		States = {
			Chance = {
				Base = 5;
				Scale = 0.1;
			};
		};
	};
	["Candy Harvester"] = {
		Description = "<Chance>% extra chance for Candy type fruit to duplicate!";
		States = {
			Chance = {
				Base = 5;
				Scale = 0.15;
			};
		};
	};
	["Slow and Steady"] = {
		Description = "<Chance>% extra chance harvested plants drop seeds. Rarer plants have lower chance to duplicate.";
		States = {
			Chance = {
				Base = 5;
				Scale = 0.05;
			};
		};
	};
	["Digging Buddy"] = {
		Description = "Every <Cooldown>s, <Chance>% chance to dig up a random seed!";
		States = {
			Cooldown = {
				Min = 5;
				Base = 60;
				Scale = -1;
			};
			Chance = {
				Base = 5;
				Scale = 0.05;
			};
		};
	};
	["Digging Friend"] = {
		Description = "Every <Cooldown>s, <Chance>% chance to dig up a random seed!";
		States = {
			Cooldown = {
				Min = 5;
				Base = 60;
				Scale = -1;
			};
			Chance = {
				Base = 10;
				Scale = 0.1;
			};
		};
	};
	["Carrot Chomper"] = {
		Description = "Every <Cooldown>s, eats a carrot for <Multiplier>x value bonus!";
		States = {
			Cooldown = {
				Min = 5;
				Base = 45;
				Scale = -1;
			};
			Multiplier = {
				Base = 1.5;
				Scale = 0.015;
			};
		};
	};
	["Carrot Devourer"] = {
		Description = "Every <Cooldown>s, eats a carrot for <Multiplier>x value bonus!";
		States = {
			Cooldown = {
				Min = 5;
				Base = 40;
				Scale = -1;
			};
			Multiplier = {
				Base = 3;
				Scale = 0.03;
			};
		};
	};
	["Cat Nap"] = {
		Description = "Every <Cooldown>s, naps for <Duration>s. New fruit within <Range> studs will be <Multiplier>x larger!";
		States = {
			Cooldown = {
				Min = 5;
				Base = 80;
				Scale = -1;
			};
			Duration = {
				Base = 10;
				Scale = 0.1;
			};
			Range = {
				Base = 10;
				Scale = 0.1;
			};
			Multiplier = {
				Base = 1.25;
				Scale = 0.0025;
			};
		};
	};
	["Lazy Nap"] = {
		Description = "Every <Cooldown>s, naps for <Duration>s. New fruit within <Range> studs will be <Multiplier>x larger!";
		States = {
			Cooldown = {
				Min = 5;
				Base = 90;
				Scale = -1;
			};
			Duration = {
				Base = 15;
				Scale = 0.15;
			};
			Range = {
				Base = 15;
				Scale = 0.15;
			};
			Multiplier = {
				Base = 1.5;
				Scale = 0.01;
			};
		};
	};
	Forester = {
		Description = "<Chance>% chance berry fruit stays after harvest!";
		States = {
			Chance = {
				Max = 25;
				Base = 2.5;
				Scale = 0.025;
			};
		};
	};
	["Spotted Forester"] = {
		Description = "<Chance>% chance berry fruit stays after harvest!";
		States = {
			Chance = {
				Max = 30;
				Base = 5;
				Scale = 0.05;
			};
		};
	};
	["Water Spray"] = {
		Description = "Every <Cooldown>s, sprays water on a nearby plant.";
		States = {
			Cooldown = {
				Min = 5;
				Base = 30;
				Scale = -1;
			};
		};
	};
	Eggcelerator = {
		Description = "Increases egg hatch speed by <Multiplier>%!";
		States = {
			Multiplier = {
				Base = 10;
				Scale = 0.1;
			};
		};
	};
	["Better Eggcelerator"] = {
		Description = "Increases egg hatch speed by <Multiplier>%!";
		States = {
			Multiplier = {
				Base = 20;
				Scale = 0.2;
			};
		};
	};
	["Fertilizer Frenzy"] = {
		Description = "Every <Cooldown>s, emits an aura for <Duration>s granting <Multiplier>x chance for new fruit to grow as variants within <Range> studs!";
		States = {
			Cooldown = {
				Min = 5;
				Base = 120;
				Scale = -1;
			};
			Duration = {
				Base = 15;
				Scale = 0.15;
			};
			Range = {
				Base = 15;
				Scale = 0.15;
			};
			Multiplier = {
				Base = 2;
				Scale = 0.01;
			};
		};
	};
	["Turtle Tinkerer"] = {
		Description = "All Sprinklers last <Multiplier>% longer!";
		States = {
			Range = {
				Base = 35;
				Scale = 0.5;
			};
			Multiplier = {
				Base = 20;
				Scale = 0.2;
			};
		};
	};
	["Cheeky Refund"] = {
		Description = "<Chance>% chance to refund fruit back to your inventory. Rarer plants have lower chance to refund!";
		States = {
			Chance = {
				Base = 2.5;
				Scale = 0.025;
			};
		};
	};
	["Premium Cheeky Refund"] = {
		Description = "<Chance>% chance to refund fruit back to your inventory. Rarer plants have lower chance to refund!";
		States = {
			Chance = {
				Base = 7.5;
				Scale = 0.075;
			};
		};
	};
	["Movement Variation"] = {
		Description = ' ';
		States = {
			Cooldown = {
				Min = 8;
				Base = 8;
				Scale = 0;
			};
		};
	};
	Transmutation = {
		Description = "Every <Cooldown>m, turns one random fruit gold!";
		States = {
			Cooldown = {
				Min = 5;
				Base = 300;
				Scale = -3;
				Formatter = "ColonTime";
			};
		};
	};
	["Polar Express"] = {
		Description = "Every <Cooldown>s, <Chance>% chance a nearby fruit becomes Chilled or Frozen!";
		States = {
			Cooldown = {
				Min = 10;
				Base = 80;
				Scale = -1;
			};
			Chance = {
				Base = 10;
				Scale = 0.1;
			};
		};
	};
	Bamboozle = {
		Description = "Every <Cooldown>m, eats bamboo for <Multiplier>x value bonus!";
		States = {
			Cooldown = {
				Min = 60;
				Base = 180;
				Scale = -1;
				Formatter = "ColonTime";
			};
			Multiplier = {
				Base = 1.5;
				Scale = 0.015;
			};
		};
	};
	["Leaf Lover"] = {
		Description = "Passive: All leafy plants grow <Multiplier>x faster!";
		States = {
			Range = {
				Base = 25;
				Scale = 0;
			};
			Multiplier = {
				Base = 1.45;
				Scale = 0.15;
			};
		};
	};
	["Zen Zone"] = {
		Description = "Every <Cooldown>s, prays for <Duration>s granting <Multiplier>x variant chance within <Range> studs!";
		States = {
			Cooldown = {
				Min = 5;
				Base = 80;
				Scale = -1;
			};
			Duration = {
				Base = 10;
				Scale = 0.1;
			};
			Range = {
				Base = 10;
				Scale = 0.1;
			};
			Multiplier = {
				Base = 1.5;
				Scale = 0.005;
			};
		};
	};
	["Prickly Lover"] = {
		Description = "Grants prickly plants in <Range> studs a <Multiplier>x size bonus!";
		States = {
			Multiplier = {
				Max = 2.2;
				Base = 1.5;
				Scale = 0.015;
			};
			Range = {
				Base = 30;
				Scale = 0.2;
			};
		};
	};
	["Nocturnal Nursery"] = {
		Description = "Every <Cooldown>s, goes to the egg with the highest hatch time, and reduces its hatch time by <Amount>s!";
		States = {
			Cooldown = {
				Min = 10;
				Base = 60;
				Scale = -1;
			};
			Amount = {
				Base = 25;
				Scale = 0.25;
			};
		};
	};
	["Treasure Hunter"] = {
		Description = "Every <Cooldown>s, digs down underground to find treasure. Can dig up gear or sheckles!";
		States = {
			Cooldown = {
				Min = 5;
				Base = 80;
				Scale = -2;
			};
		};
	};
	Croak = {
		Description = "Every <Cooldown>m, croaks and a random nearby plant will advance growth by 24 hours!";
		States = {
			Cooldown = {
				Min = 15;
				Base = 604.5;
				Scale = -6;
				Formatter = "ColonTime";
			};
		};
	};
	["Echo Croak"] = {
		Description = "Every <Cooldown>m, croaks and a random nearby plant will advance growth by 24 hours!";
		States = {
			Cooldown = {
				Min = 15;
				Base = 303;
				Scale = -6;
				Formatter = "ColonTime";
			};
		};
	};
	["Prince of the Night"] = {
		Description = "All active pets gain an additional <Chance> XP/s!";
		States = {
			Chance = {
				Base = 0.2;
				Scale = 0.04;
			};
		};
	};
	["King of the Night"] = {
		Description = "All active pets gain an additional <Chance> XP/s!";
		States = {
			Chance = {
				Base = 0.2;
				Scale = 0.04;
			};
		};
	};
	Rascal = {
		Description = "Every <Cooldown>m, goes to another player's plot and steals (duplicate) a random crop and gives it to you!";
		States = {
			Cooldown = {
				Min = 15;
				Base = 904.5;
				Scale = -4;
				Formatter = "ColonTime";
			};
		};
	};
	["Whisker Wisdom"] = {
		Description = "Every <Cooldown>m, gains additional <Amount> bonus experience!";
		States = {
			Cooldown = {
				Min = 10;
				Base = 603;
				Scale = -8;
				Formatter = "ColonTime";
			};
			Amount = {
				Base = 500;
				Scale = 8;
			};
		};
	};
	Scamper = {
		Description = "Grants additional <Chance>% increase to player movement speed!";
		States = {
			Chance = {
				Base = 12;
				Scale = 0.1;
			};
		};
	};
	["Seed Stash"] = {
		Description = "<Chance>% chance to not consume a use when using the Reclaimer!";
		States = {
			Chance = {
				Base = 10;
				Scale = 0.3;
			};
		};
	};
	["Nutty Apology"] = {
		Description = "Gains an additional <Amount> xp per second!";
		States = {
			Amount = {
				Max = 20;
				Base = 3;
				Scale = 0.3;
			};
		};
	};
	["Whiskier Wisdom"] = {
		Description = "Every <Cooldown>m, gains additional <Amount> bonus experience!";
		States = {
			Cooldown = {
				Min = 10;
				Base = 503;
				Scale = -7;
				Formatter = "ColonTime";
			};
			Amount = {
				Base = 750;
				Scale = 11;
			};
		};
	};
	["Cheese Hop"] = {
		Description = "Grants additional <Chance>% increase to player jump height!";
		States = {
			Chance = {
				Base = 12;
				Scale = 0.1;
			};
		};
	};
	["Fruit Harvester"] = {
		Description = "<Chance>% extra chance for Fruit type crops to duplicate!";
		States = {
			Chance = {
				Base = 5;
				Scale = 0.1;
			};
		};
	};
	Scoundrel = {
		Description = "Every <Cooldown>m, goes to another player's random crop tries to get a seed from it and gives it to you. If it succeeds it will try to steal again. Rarer seeds have less chance to succeed stealing!";
		States = {
			Cooldown = {
				Min = 10;
				Base = 443;
				Scale = -5;
				Formatter = "ColonTime";
			};
		};
	};
	Zombify = {
		Description = "Every <Cooldown>m, <Chance>% chance a nearby fruit becomes Zombified!";
		States = {
			Cooldown = {
				Min = 10;
				Base = 1600;
				Scale = -18;
				Formatter = "ColonTime";
			};
			Chance = {
				Base = 20;
				Scale = 0.2;
			};
		};
	};
	["Crimson Cradle"] = {
		Description = "Every <Cooldown>s, goes to the egg with the highest hatch time, and reduces its hatch time by <Amount>s!";
		States = {
			Cooldown = {
				Min = 10;
				Base = 60;
				Scale = -1;
			};
			Amount = {
				Base = 45;
				Scale = 0.45;
			};
		};
	};
	["Monarch of Midnight"] = {
		Description = "All active pets gain an additional <Chance> XP/s!";
		States = {
			Chance = {
				Base = 0.5;
				Scale = 0.08;
			};
		};
	};
	["Sanguine Spike"] = {
		Description = "Grants prickly plants in <Range> studs a <Multiplier>x size bonus!";
		States = {
			Multiplier = {
				Max = 3.2;
				Base = 2;
				Scale = 0.02;
			};
			Range = {
				Base = 30;
				Scale = 0.2;
			};
		};
	};
	["Prickly Blessing"] = {
		Description = "Grants prickly plants in <Range> studs a <Multiplier>x variant chance bonus!";
		States = {
			Multiplier = {
				Max = 2.2;
				Base = 1.15;
				Scale = 0.0115;
			};
			Range = {
				Base = 22;
				Scale = 0.2;
			};
		};
	};
	["Moon Nap"] = {
		Description = "Every <Cooldown>s, naps for <Duration>s. New fruit within <Range> studs will be <Multiplier>x larger!";
		States = {
			Cooldown = {
				Min = 5;
				Base = 70;
				Scale = -1;
			};
			Duration = {
				Base = 20;
				Scale = 0.2;
			};
			Range = {
				Base = 20;
				Scale = 0.2;
			};
			Multiplier = {
				Base = 1.5;
				Scale = 0.01;
			};
		};
	};
	["Moon Harvest"] = {
		Description = "<Chance>% chance Night type fruit stays after harvest!";
		States = {
			Chance = {
				Max = 25;
				Base = 6;
				Scale = 0.6;
			};
		};
	};
	Pollinator = {
		Description = "Every <Cooldown>m, flies to a nearby fruit and pollinates it, applying Pollinated mutation!";
		States = {
			Cooldown = {
				Min = 60;
				Base = 1510;
				Scale = -16;
				Formatter = "ColonTime";
			};
		};
	};
	["Beeter Pollinator"] = {
		Description = "Every <Cooldown>m, flies to a nearby fruit and pollinates it, applying Pollinated mutation!";
		States = {
			Cooldown = {
				Min = 60;
				Base = 1210;
				Scale = -12;
				Formatter = "ColonTime";
			};
		};
	};
	["Flower Harvest"] = {
		Description = "<Chance>% chance Flower type fruit stays after harvest!";
		States = {
			Chance = {
				Max = 5;
				Base = 1;
				Scale = 0.1;
			};
		};
	};
	["Wanna-Bee"] = {
		Description = "Every <Cooldown>m, goes to a nearby fruit and tries to pollinate it, but its not a bee so it fails and turns it to Honey Glazed instead :(";
		States = {
			Cooldown = {
				Min = 60;
				Base = 1510;
				Scale = -16;
				Formatter = "ColonTime";
			};
		};
	};
	["Queen Pollinator"] = {
		Description = "Every <Cooldown>m, a nearby fruit gets magically pollinated, applying Pollinated mutation!";
		States = {
			Cooldown = {
				Min = 60;
				Base = 1220;
				Scale = -16;
				Formatter = "ColonTime";
			};
		};
	};
	["For the Queen"] = {
		Description = "Every <Cooldown>m, the pet with the highest cooldown refreshes its ability!";
		States = {
			Cooldown = {
				Min = 60;
				Base = 1328;
				Scale = -16;
				Formatter = "ColonTime";
			};
		};
	};
	["Wasp Pollinator"] = {
		Description = "Every <Cooldown>m, flies to a nearby fruit and pollinates it, applying Pollinated mutation!";
		States = {
			Cooldown = {
				Min = 60;
				Base = 1800;
				Scale = -18;
				Formatter = "ColonTime";
			};
		};
	};
	Stinger = {
		Description = "Every <Cooldown>m, stings a random pet and advances its ability cooldown by <Amount>s!";
		States = {
			Cooldown = {
				Min = 60;
				Base = 602;
				Scale = -6;
				Formatter = "ColonTime";
			};
			Amount = {
				Base = 60;
				Scale = 0.6;
			};
		};
	};
	["Tarantula Stinger"] = {
		Description = "Every <Cooldown>m, stings a random pet and advances its ability cooldown by <Amount>s!";
		States = {
			Cooldown = {
				Min = 60;
				Base = 302;
				Scale = -3;
				Formatter = "ColonTime";
			};
			Amount = {
				Base = 80;
				Scale = 0.8;
			};
		};
	};
	Silksong = {
		Description = "Every <Cooldown>m, sings to a random pet and restores its hunger to 100%!";
		States = {
			Cooldown = {
				Min = 15;
				Base = 763;
				Scale = -7;
				Formatter = "ColonTime";
			};
		};
	};
	["Rainbow Flutter"] = {
		Description = "Every <Cooldown>m, flies to a nearby fruit with 5+ mutations, removes all mutations from it and turns it Rainbow! Ignores favorited fruit.";
		States = {
			Cooldown = {
				Min = 15;
				Base = 1808;
				Scale = -18;
				Formatter = "ColonTime";
			};
		};
	};
	["Disco Disco"] = {
		Description = "Every <Cooldown>m, <Chance>% chance a nearby fruit becomes Disco!";
		States = {
			Cooldown = {
				Min = 15;
				Base = 906;
				Scale = -12;
				Formatter = "ColonTime";
			};
			Chance = {
				Base = 14;
				Scale = 1;
			};
		};
	};
	["Let Him Cook"] = {
		Description = "Every <Cooldown>m, <Chance>% chance to cook a nearby fruit. Usually Burnt, but occasionally Cooked!";
		States = {
			Cooldown = {
				Min = 15;
				Base = 806;
				Scale = -12;
				Formatter = "ColonTime";
			};
			Chance = {
				Base = 15;
				Scale = 0.25;
			};
		};
	};
	["King of the Grill"] = {
		Description = "All active pets gain an additional <Chance> XP/s! Also very tasty!";
		States = {
			Chance = {
				Base = 0.15;
				Scale = 0.03;
			};
		};
	};
	["Pack Bee"] = {
		Description = "Increases player backpack size by <Chance>!";
		States = {
			Chance = {
				Base = 30;
				Scale = 1;
			};
		};
	};
	["You're a Star"] = {
		Description = "Gains an additional <Amount> xp per second!";
		States = {
			Amount = {
				Max = 25;
				Base = 5;
				Scale = 0.5;
			};
		};
	};
	["Pinch Pocket"] = {
		Description = "Every <Cooldown>m goes to another random player and pinches them for their money and grants you <Amount> - <AmountHigh> sheckles. Pinched player does not lose sheckles.";
		States = {
			Cooldown = {
				Min = 15;
				Base = 378;
				Scale = -4;
				Formatter = "ColonTime";
			};
			Amount = {
				Base = 225;
				Scale = 25;
			};
			AmountHigh = {
				Base = 425;
				Scale = 25;
			};
		};
	};
	Scavenger = {
		Description = "Shoveling plants have a <Chance>% chance to drop the equivalent seed! Does not work on fruit";
		States = {
			Chance = {
				Max = 8;
				Base = 3;
				Scale = 0.3;
			};
		};
	};
	["Tropical Lover"] = {
		Description = "Grants all tropical plants within <Range> studs, a <Multiplier>x size bonus!";
		States = {
			Multiplier = {
				Max = 2.1;
				Base = 1.2;
				Scale = 0.05;
			};
			Range = {
				Base = 25;
				Scale = 0.25;
			};
		};
	};
	["Tropical Blessing"] = {
		Description = "Grants all tropical plants within <Range> studs, a <Multiplier>x variant chance bonus!";
		States = {
			Multiplier = {
				Max = 8;
				Base = 1.15;
				Scale = 0.1;
			};
			Range = {
				Base = 25;
				Scale = 0.25;
			};
		};
	};
	Flamboyance = {
		Description = "Every <Cooldown>m, stands on one leg for <Duration>s. All plants and fruits within <Range> studs will grow <Multiplier>x faster!";
		States = {
			Cooldown = {
				Min = 15;
				Base = 240;
				Scale = -2;
				Formatter = "ColonTime";
			};
			Duration = {
				Base = 15;
				Scale = 0.5;
			};
			Range = {
				Base = 13;
				Scale = 0.3;
			};
			Multiplier = {
				Base = 15;
				Scale = 0.25;
			};
		};
	};
	["Shell Share"] = {
		Description = "Every <Cooldown>m, shares its wisdom with a random pet, granting <Amount> bonus experience!";
		States = {
			Cooldown = {
				Min = 20;
				Base = 720;
				Scale = -6.5;
				Formatter = "ColonTime";
			};
			Amount = {
				Base = 990;
				Scale = 14;
			};
		};
	};
	["Water Splash"] = {
		Description = "Every <Cooldown>s, splashes water at a nearby fruit and it has a <Chance>% chance to become Wet!";
		States = {
			Cooldown = {
				Min = 10;
				Base = 164;
				Scale = -3;
			};
			Chance = {
				Base = 12;
				Scale = 0.2;
			};
		};
	};
	["Seal the Deal"] = {
		Description = "Selling pets have a <Chance>% chance to get the pet back as its egg equivalent!";
		States = {
			Chance = {
				Max = 8;
				Base = 2.5;
				Scale = 0.22;
			};
		};
	};
	["Helping Hands"] = {
		Description = "When crafting, each material used in the recipe has a <Chance>% chance to not get consumed!";
		States = {
			Chance = {
				Max = 7;
				Base = 3;
				Scale = 0.33;
			};
		};
	};
	Eggsperience = {
		Description = "Pets hatched from eggs have a bonus 1 - <Chance> age to their age value!";
		States = {
			Chance = {
				Max = 10;
				Base = 4.5;
				Scale = 0.5;
			};
		};
	};
	["Utter Beauty"] = {
		Description = "Every <Cooldown>m, fans its feathers and all active pets within <Range> studs will advance cooldown for their abilities by <Amount>s!";
		States = {
			Cooldown = {
				Min = 15;
				Base = 606;
				Scale = -6;
				Formatter = "ColonTime";
			};
			Amount = {
				Base = 65;
				Scale = 0.6;
			};
			Range = {
				Base = 20;
				Scale = 0.2;
			};
		};
	};
	["Chill Zone"] = {
		Description = "All pets within <Range> studs won't lose hunger and will gain <Amount> XP every second!";
		States = {
			Amount = {
				Base = 3;
				Scale = 0.3;
			};
			Range = {
				Base = 14.5;
				Scale = 0.25;
			};
		};
	};
	["Verdant Bird"] = {
		Description = "Every <Cooldown>m, <Chance>% chance to mutate a nearby fruit, applying the Verdant mutation";
		States = {
			Cooldown = {
				Min = 15;
				Base = 524;
				Scale = -5;
				Formatter = "ColonTime";
			};
			Chance = {
				Base = 15;
				Scale = 0.5;
			};
		};
	};
	Mimicry = {
		Description = "Every <Cooldown>m, mimics and copies an ability from another pet and performs its ability!";
		States = {
			Cooldown = {
				Min = 15;
				Base = 1212;
				Scale = -12;
				Formatter = "ColonTime";
			};
		};
	};
	["Coiled Commerce"] = {
		Description = "Buying from the seed/gear shop has a <Chance>% chance to duplicate the bought item!";
		States = {
			Chance = {
				Max = 6;
				Base = 1;
				Scale = 0.25;
			};
		};
	};
	Lookout = {
		Description = "Every <Cooldown>m goes to another pet and does a lookout. That pet advances cooldown by <Amount>s! Has a <Chance>% chance to do it again after each lookout.";
		States = {
			Cooldown = {
				Min = 15;
				Base = 444;
				Scale = -4.4;
				Formatter = "ColonTime";
			};
			Amount = {
				Base = 20;
				Scale = 0.5;
			};
			Chance = {
				Max = 100;
				Base = 15;
				Scale = 0.25;
			};
		};
	};
	["Summer Regeneration"] = {
		Description = "<Chance>% chance Summer type fruit stays after collecting!";
		States = {
			Chance = {
				Max = 25;
				Base = 6;
				Scale = 0.3;
			};
		};
	};
	["Cloudtouched Bird"] = {
		Description = "Every <Cooldown>m, <Chance>% chance to mutate a nearby fruit, applying the Cloudtouched mutation!";
		States = {
			Cooldown = {
				Min = 15;
				Base = 486;
				Scale = -4;
				Formatter = "ColonTime";
			};
			Chance = {
				Base = 15;
				Scale = 0.5;
			};
		};
	};
	Sly = {
		Description = "Every <Cooldown>m, goes to another player's random fruit, has a chance to copy 1 random mutation, and apply it to random fruit you own! The higher mutation multiplier the rarer chance to copy.";
		States = {
			Cooldown = {
				Min = 15;
				Base = 1350;
				Scale = -13;
				Formatter = "ColonTime";
			};
		};
	};
	["Hamster Wheel"] = {
		Description = "Every <Cooldown>m, runs in a hamster wheel and boosts crafting speed by <Amount>% for <Duration>s!";
		States = {
			Cooldown = {
				Min = 15;
				Base = 188;
				Scale = -1.5;
				Formatter = "ColonTime";
			};
			Amount = {
				Base = 30;
				Scale = 0.3;
			};
			Duration = {
				Base = 18;
				Scale = 0.5;
			};
		};
	};
	Hamster = {
		Description = "Crafting speed is increased by <Chance>%!";
		States = {
			Chance = {
				Max = 25;
				Base = 15;
				Scale = 0.5;
			};
		};
	};
	["Wings of Freedom"] = {
		Description = "Every <Cooldown>m, takes flight and spreads its wings. All eggs advanced their hatch time by <Amount>s! There's a <Chance>% chance for the time advance to be multiplied by <Multiplier>.";
		States = {
			Cooldown = {
				Min = 424;
				Base = 424;
				Scale = 0;
				Formatter = "ColonTime";
			};
			Amount = {
				Max = 70.4;
				Base = 70.4;
				Scale = 0;
			};
			Chance = {
				Max = 70.4;
				Base = 70.4;
				Scale = 0;
			};
			Multiplier = {
				Base = 1.8;
				Scale = 0.18;
			};
		};
	};
	["Clever Claws"] = {
		Description = "<Chance>% chance fruit gets Amber mutation after collecting! Rarer plants have lesser chance to mutate.";
		States = {
			Chance = {
				Base = 2;
				Scale = 0.2;
			};
		};
	};
	["Raptor Dance"] = {
		Description = "Grants additional <Chance>% increase to player movement speed!";
		States = {
			Chance = {
				Base = 14;
				Scale = 0.25;
			};
		};
	};
	["Tri-Horn"] = {
		Description = "Every <Cooldown>m, rams into <Amount> random plants and advance their growth by <GrowthAmount>m! Has a <Chance>% chance to do it again each time.";
		States = {
			Cooldown = {
				Min = 213;
				Base = 213;
				Scale = 0;
				Formatter = "ColonTime";
			};
			Amount = {
				Max = 3;
				Base = 3;
				Scale = 0;
			};
			GrowthAmount = {
				Max = 2013;
				Base = 2013;
				Scale = 0;
				Formatter = "ColonTime";
			};
			Chance = {
				Base = 15;
				Scale = 0.15;
			};
		};
	};
	["Prehistoric Doubling"] = {
		Description = "<Chance>% chance harvested fruit duplicates! Rarer crops have lower chance to duplicate.";
		States = {
			Chance = {
				Base = 8;
				Scale = 0.15;
			};
		};
	};
	["Prehistoric Harvester"] = {
		Description = "<Chance>% extra chance for Prehistoric type fruit to duplicate!";
		States = {
			Chance = {
				Base = 5;
				Scale = 0.1;
			};
		};
	};
	["Air Time"] = {
		Description = "Grants additional <Chance>% increase to player jump height!";
		States = {
			Chance = {
				Base = 14;
				Scale = 0.25;
			};
		};
	};
	["Giant Incubator"] = {
		Description = "Pets hatched from eggs have a <Chance>% increase in base size and weight! This size bonus is capped at 30% per egg and does not apply to Brontosauruses.";
		States = {
			Chance = {
				Max = 30;
				Base = 5.25;
				Scale = 0.1;
			};
		};
	};
	["Sky Reptile"] = {
		Description = "Every <Cooldown>m, flaps its wings and sends out ripples of wind, causing <Amount> random fruit to get Windstruck, with a <Chance>% chance for Twisted to be applied as well!";
		States = {
			Cooldown = {
				Min = 15;
				Base = 666;
				Scale = -6;
				Formatter = "ColonTime";
			};
			Amount = {
				Base = 3;
				Scale = 0.15;
			};
			Chance = {
				Base = 18.2;
				Scale = 0.25;
			};
		};
	};
	["Apex Predator"] = {
		Description = "Every <Cooldown>m, devours a random mutation from your garden, then roars, spreading that mutation to <Amount> other random fruits in your garden!";
		States = {
			Cooldown = {
				Min = 15;
				Base = 1224;
				Scale = -12;
				Formatter = "ColonTime";
			};
			Amount = {
				Base = 3;
				Scale = 0.2;
			};
		};
	};
	["Crowbar Head"] = {
		Description = longstring1;
		States = {
			Cooldown = {
				Min = 10;
				Base = 82;
				Scale = -1.8;
			};
			Amount = {
				Base = 80;
				Scale = 0.65;
			};
			Chance = {
				Base = 25.5;
				Scale = 0.25;
			};
			Multiplier = {
				Base = 1.5;
				Scale = 0.2;
			};
		};
	};
	["Dino Herd"] = {
		Description = "All active Dinosaur type pets gain an additional <Chance> XP/s!";
		States = {
			Chance = {
				Base = 0.6;
				Scale = 0.06;
			};
		};
	};
	["Crafty Dome"] = {
		Description = "Grants a <Chance>% chance to duplicate a crafted item!";
		States = {
			Chance = {
				Max = 25;
				Base = 6;
				Scale = 0.3;
			};
		};
	};
	["Frilled Reptile"] = {
		Description = longstring2;
		States = {
			Cooldown = {
				Min = 60;
				Base = 846;
				Scale = -8.4;
				Formatter = "ColonTime";
			};
			Number = {
				Base = 3;
				Scale = 0.2;
			};
			AmountCD = {
				Base = 40;
				Scale = 0.5;
			};
			AmountXP = {
				Base = 490;
				Scale = 49;
			};
		};
	};
	["Armored Defender"] = {
		Description = "When another player steals fruit from you, grants a <Chance>% chance you get the stolen fruit as well!";
		States = {
			Chance = {
				Max = 35;
				Base = 18.7;
				Scale = 0.25;
			};
		};
	};
	["Food Chain"] = {
		Description = longstring3;
		States = {
			Cooldown = {
				Min = 15;
				Base = 1224;
				Scale = -12;
				Formatter = "ColonTime";
			};
			Amount = {
				Base = 3;
				Scale = 0.2;
			};
		};
	};
	["Rainbow Crowbar Head"] = {
		Description = longstring1;
		States = {
			Cooldown = {
				Min = 10;
				Base = 41;
				Scale = -0.9;
			};
			Amount = {
				Base = 160;
				Scale = 1.3;
			};
			Chance = {
				Base = 51;
				Scale = 0.5;
			};
			Multiplier = {
				Base = 3;
				Scale = 0.4;
			};
		};
	};
	["Rainbow Dino Herd"] = {
		Description = "All active Dinosaur type pets gain an additional <Chance> XP/s!";
		States = {
			Chance = {
				Base = 1.2;
				Scale = 0.12;
			};
		};
	};
	["Rainbow Crafty Dome"] = {
		Description = "Grants a <Chance>% chance to duplicate a crafted item!";
		States = {
			Chance = {
				Max = 50;
				Base = 12;
				Scale = 0.6;
			};
		};
	};
	["Rainbow Frilled Reptile"] = {
		Description = longstring2;
		States = {
			Cooldown = {
				Min = 15;
				Base = 643;
				Scale = -4.2;
				Formatter = "ColonTime";
			};
			Number = {
				Base = 6;
				Scale = 0.4;
			};
			AmountCD = {
				Base = 80;
				Scale = 1;
			};
			AmountXP = {
				Base = 980;
				Scale = 98;
			};
		};
	};
	["Rainbow Armored Defender"] = {
		Description = "When another player steals fruit from you, grants a <Chance>% chance you get the stolen fruit as well!";
		States = {
			Chance = {
				Max = 60;
				Base = 31.4;
				Scale = 0.5;
			};
		};
	};
	["Rainbow Food Chain"] = {
		Description = longstring3;
		States = {
			Cooldown = {
				Min = 15;
				Base = 912;
				Scale = -6;
				Formatter = "ColonTime";
			};
			Amount = {
				Base = 6;
				Scale = 0.4;
			};
		};
	};
	["Man's Best Tomodachi"] = {
		Description = "Every <Cooldown>s, <Chance>% chance to dig up a random seed!";
		States = {
			Cooldown = {
				Min = 5;
				Base = 60;
				Scale = -1;
			};
			Chance = {
				Base = 15;
				Scale = 0.05;
			};
		};
	};
	Playmate = {
		Description = "Every <Cooldown>s, <Chance>% chance to dig up a random seed!";
		States = {
			Cooldown = {
				Min = 5;
				Base = 60;
				Scale = -1;
			};
			Chance = {
				Base = 15;
				Scale = 0.1;
			};
		};
	};
	["Bathe Time"] = {
		Description = "As long as you have a Hot Spring in your garden: The pet bathes in it and boosts all pets passive by a small percentage";
		States = {
			Boost = {
				Max = 0.05;
				Base = 0.01;
				Scale = 0.005;
			};
		};
	};
	Mischief = {
		Description = "Every <Cooldown>m, causes mischief, doing random different actions in your garden!";
		States = {
			Cooldown = {
				Min = 80;
				Base = 640;
				Scale = -3.6;
				Formatter = "ColonTime";
			};
		};
	};
	["Balance and Harmony"] = {
		Description = "Every <Cooldown>m, meditates for <Duration>s, nearby fruits in a <Range> studs have a <Chance>% chance every second to mutate into Tranquil!";
		States = {
			Cooldown = {
				Min = 60;
				Base = 627;
				Scale = -1;
				Formatter = "ColonTime";
			};
			Duration = {
				Base = 10;
				Scale = 0.1;
			};
			Range = {
				Base = 15;
				Scale = 0.1;
			};
			Chance = {
				Base = 5;
				Scale = 0.05;
			};
		};
	};
	["Water Spirit"] = {
		Description = "Every <Cooldown>s, sprays water on all fruits within <Range> studs, applying Wet mutation. Has a <Chance>% to replace Wet mutations already on fruit with Bloodlit mutation!";
		States = {
			Cooldown = {
				Min = 60;
				Base = 488;
				Scale = -4;
				Formatter = "ColonTime";
			};
			Range = {
				Base = 25;
				Scale = 0.25;
			};
			Chance = {
				Base = 10;
				Scale = 0.1;
			};
		};
	};
	["Nine-Tailed Myth"] = {
		Description = "Every <Cooldown>m, goes to another player's crop, mutates it with <font color=\"rgb(255, 80, 65)\">Chakra</font> then steals (duplicate) and gives it to you! Very rare chance to mutate with <font color=\"rgb(255, 0, 0)\">Foxfire Chakra</font> mutation instead!";
		States = {
			Cooldown = {
				Min = 60;
				Base = 1344.5;
				Scale = -6;
				Formatter = "ColonTime";
			};
		};
	};
	["Fish of Fortune"] = {
		Description = "When hatching eggs there is a <Chance>% chance to get the egg back! Cannot recover Premium/Exotic Eggs.";
		States = {
			Chance = {
				Max = 1.1;
				Base = 0.6;
				Scale = 0.01;
			};
		};
	};
	["Radioactive Lizard"] = {
		Description = "<Chance>% chance fruit gets Plasma mutation after collecting!";
		States = {
			Chance = {
				Base = 10;
				Scale = 0.2;
			};
		};
	};
	["Scorched Soil"] = {
		Description = "Every <Cooldown>s, <Chance>% chance nearby fruit becomes Burnt!";
		States = {
			Cooldown = {
				Min = 5;
				Base = 80;
				Scale = -1;
			};
			Chance = {
				Base = 20;
				Scale = 0.2;
			};
		};
	};
	["Lightning Bug"] = {
		Description = "Every <Cooldown>s, <Chance>% chance a nearby fruit becomes Shocked!";
		States = {
			Cooldown = {
				Min = 10;
				Base = 80;
				Scale = -1;
			};
			Chance = {
				Base = 3;
				Scale = 0.03;
			};
		};
	};
	["Golden Harvest"] = {
		Description = "<Chance>% chance harvested fruit becomes Gold on harvest! Rarer crops have less chance to turn gold!";
		States = {
			Chance = {
				Max = 35;
				Base = 1;
				Scale = 0.1;
			};
		};
	};
	["Egg Laying"] = {
		Description = "Every <Cooldown>m, lays a random pet egg from the pet egg shop. Will not lay eggs if you have no free egg equip slot";
		States = {
			Cooldown = {
				Min = 15;
				Base = 15;
				Scale = -18;
				Formatter = "ColonTime";
			};
		};
	};
	["Helpy Herbivore"] = {
		Description = "Each time you feed a pet, <Chance>% of the hunger points restored are also awarded as experience for that pet! (Only the hunger that is successfully restored counts toward XP).";
		States = {
			Chance = {
				Max = 50;
				Base = 14.65;
				Scale = 0.35;
			};
		};
	};
	["Horsetail Herbivore"] = {
		Description = "Every <Cooldown>m, eats a random fruit in your garden, and has a <Chance>% chance to spit out a Horsetail seed! Ignores favorited fruit.";
		States = {
			Cooldown = {
				Min = 10;
				Base = 82;
				Scale = -1.8;
			};
			Chance = {
				Base = 40;
				Scale = 0.8;
			};
		};
	};
	["Shocked Pet Mutation"] = {
		Description = "<font color=\"rgb(255, 255, 100)\">SHOCKED: During a Thunderstorm: Every <Cooldown>s, has a <Chance>% chance to attract lightning, shocking nearby fruits!</font>";
		States = {
			Cooldown = {
				Min = 45;
				Base = 60;
				Scale = -0.6;
			};
			Chance = {
				Max = 30;
				Base = 25;
				Scale = 0.02;
			};
		};
	};
	["Frozen Pet Mutation"] = {
		Description = "<font color=\"rgb(108, 184, 255)\">FROZEN: Every <Cooldown>m, <Chance>% chance a nearby fruit becomes Frozen!</font>";
		States = {
			Cooldown = {
				Min = 30;
				Base = 300;
				Scale = -3;
				Formatter = "ColonTime";
			};
			Chance = {
				Max = 30;
				Base = 20;
				Scale = 0.03;
			};
		};
	};
	["Windy Pet Mutation"] = {
		Description = "<font color=\"rgb(162, 185, 209)\">WINDY: Every <Cooldown>m, <Chance>% chance a nearby fruit becomes Windstruck!</font>";
		States = {
			Cooldown = {
				Min = 30;
				Base = 300;
				Scale = -3;
				Formatter = "ColonTime";
			};
			Chance = {
				Max = 30;
				Base = 20;
				Scale = 0.03;
			};
		};
	};
	["IronSkin Pet Mutation"] = {
		Description = "<font color=\"rgb(206, 206, 206)\">IRONSKIN: When another player steals fruit from you, grants a <Chance>% chance you get the stolen fruit as well!</font>";
		States = {
			Chance = {
				Max = 45;
				Base = 35;
				Scale = 0.2;
			};
		};
	};
	["Radiant Pet Mutation"] = {
		Description = "<font color=\"rgb(248, 108, 38)\">RADIANT: Every <Cooldown>m, emits sunshine at a random nearby plant and advances their growth by 24 hours!</font>";
		States = {
			Cooldown = {
				Min = 1200;
				Base = 1800;
				Scale = -9;
				Formatter = "ColonTime";
			};
		};
	};
	["Ascended Pet Mutation"] = {
		Description = "<font color=\"rgb(247, 245, 184)\">ASCENDED: Every <Cooldown>m, a nearby fruit ascends to a higher realm, applying the Dawnbound mutation!</font>";
		States = {
			Cooldown = {
				Min = 18000;
				Base = 21621;
				Scale = -21;
				Formatter = "ColonTime";
			};
			Chance = {
				Max = 90;
				Base = 75;
				Scale = 0.03;
			};
		};
	};
	["Tiny Pet Mutation"] = {
		Description = "<font color=\"rgb(173, 216, 230)\">TINY: Pet is very tiny! Has 20% slower hunger rate.</font>";
		States = {
			Amount = {
				Base = -0.2;
				Scale = 0;
			};
		};
	};
	["Tiny Pet Mutation Bonus"] = {
		Description = "<font color=\"rgb(173, 216, 230)\">TINY: Gains an additional <Amount> xp per second!</font>";
		States = {
			Amount = {
				Max = 30;
				Base = 5;
				Scale = 0.15;
			};
		};
	};
	["Mega Pet Mutation"] = {
		Description = "<font color=\"rgb(255, 90, 90)\">MEGA: Pet is gigantic! Has 20% faster hunger rate.</font>";
		States = {
			Amount = {
				Base = 0.2;
				Scale = 0;
			};
		};
	};
	["Mega Pet Mutation Bonus"] = {
		Description = "<font color=\"rgb(255, 90, 90)\">MEGA: Gains an additional <Amount> xp per second!</font>";
		States = {
			Amount = {
				Max = 40;
				Base = 10;
				Scale = 0.15;
			};
		};
	};
	["Golden Pet Mutation"] = {
		Description = "<font color=\"rgb(255, 225, 0)\">GOLDEN: Provides a big increase to the pet's passive!</font>";
		States = {};
	};
	["Rainbow Pet Mutation"] = {
		Description = "<font color=\"rgb(255, 0, 0)\">R</font>".."<font color=\"rgb(255, 127, 0)\">A</font>".."<font color=\"rgb(255, 255, 0)\">I</font>".."<font color=\"rgb(0, 255, 0)\">N</font>".."<font color=\"rgb(0, 0, 255)\">B</font>".."<font color=\"rgb(75, 0, 130)\">O</font>".."<font color=\"rgb(148, 0, 211)\">W</font>".."<font color=\"rgb(4, 175, 236)\">: Provides a bigger increase to the pet's passive!</font>";
		States = {};
	};
	["Shiny Pet Mutation"] = {
		Description = "<font color=\"rgb(145, 207, 221)\">SHINY: Provides an additional 15% boost to the pet's xp per second!</font>";
		States = {};
	};
	["Inverted Pet Mutation"] = {
		Description = "<font color=\"rgb(128, 128, 128)\">INVERTED: Provides an additional 30% boost to the pet's xp per second!</font>";
		States = {};
	};
	["Tranquil Pet Mutation"] = {
		Description = "<font color=\"rgb(247, 245, 184)\">TRANQUIL: Every <Cooldown>m, a nearby fruit finds inner peace, applying the Tranquil mutation!</font>";
		States = {
			Cooldown = {
				Min = 1200;
				Base = 1500;
				Scale = -3;
				Formatter = "ColonTime";
			};
			Chance = {
				Max = 30;
				Base = 20;
				Scale = 0.03;
			};
		};
	};
	["Block Wandering"] = {
		Description = "Block Wander Test";
		States = {};
	};
}