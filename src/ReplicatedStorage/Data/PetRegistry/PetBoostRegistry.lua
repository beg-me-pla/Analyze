-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:47
-- Luau version 6, Types version 3
-- Time taken: 0.000899 seconds

return {
	BoostTypeToBaseValue = {
		PASSIVE_BOOST = 1;
		PET_XP_BOOST = 1;
		SIZE_MODIFICATION = 1;
	};
	PetModelNameToBoostType = {
		Toy = "PASSIVE_BOOST";
		Treat = "PET_XP_BOOST";
		Bowl = "SIZE_MODIFICATION";
		["Levelup Lollipop"] = "LEVEL_BOOST";
	};
	BoostTypeToPetModelName = {
		PASSIVE_BOOST = "Toy";
		PET_XP_BOOST = "Treat";
		SIZE_MODIFICATION = "Bowl";
		LEVEL_BOOST = "Levelup Lollipop";
	};
	CleanBoostType = {
		PASSIVE_BOOST = "Passive Boost";
		PET_XP_BOOST = "XP Boost";
		SIZE_MODIFICATION = "Size Boost";
	};
	BoostTypeStatData = {
		PASSIVE_BOOST = {
			BaseValue = 1;
			Amount = {
				Small = 0.1;
				Medium = 0.2;
			};
			Time = {
				Small = 300;
				Medium = 300;
			};
		};
		PET_XP_BOOST = {
			BaseValue = 1;
			Amount = {
				Small = 0.5;
				Medium = 2;
			};
			Time = {
				Small = 43200;
				Medium = 86400;
			};
		};
		SIZE_MODIFICATION = {
			BaseValue = 1;
			Amount = {
				Small = 10;
				Medium = 30;
			};
			Time = {
				Small = 10;
				Medium = 30;
			};
		};
		LEVEL_BOOST = {
			BaseValue = 1;
			Amount = {
				Small = 1;
				Medium = 1;
			};
			Time = {
				Small = 1;
				Medium = 1;
			};
		};
	};
}