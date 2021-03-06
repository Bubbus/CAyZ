




// Start editing below here
// ---------------------------------------------------------------------------------------------------------------------------------------

class CA_ZeusUI_Units
{

	// Category definition
	class BLUFOR_Infantry
	{
		categoryName = "BLUFOR Infantry";			// This is the name of the category which you will see in-game.
		gear = "blu_f";					// This is the faction code as used in the F3 framework. Here, "blu_f", means the gear will be taken from the BLUFOR gearscript (aka BLUFOR).
		side = "west";					// "west" means the units will bear allegiance to the western side (aka BLUFOR). Available options are: "west", "east", "resistance" and "civilian".

		// Units definition
		class Rifleman
		{
			unitName = "BLUFOR Rifleman";		// This is the name of the squad which will be shown in-game.
			units[] = {"rif"};			// This is the squad which will spawn - this just spawns one rifleman.
		};

		class Fireteam_4x
		{
			unitName = "BLUFOR Fireteam 4x";
			units[] = {"ftl", "ar", "lat", "rif"};
		};
		
		class Squad_6x
		{
			unitName = "BLUFOR Squad 6x";
			units[] = {"ftl", "ar", "aar", "lat", "rif", "mk"};	// This spawns a full 6-man fireteam. You can have as many or as few units in a squad as you want.
		};
		
		class Section_9x
		{
			unitName = "BLUFOR Section 9x";
			units[] = {"ftl", "ar", "aar", "lat", "med", "mk", "rif", "rif", "rif"};
		};

		class LAT_Team
		{
			unitName = "BLUFOR LAT Team";
			units[] = {"rif", "lat"};
		};

		class AR_Team
		{
			unitName = "BLUFOR AR Team";
			units[] = {"aar", "ar"};
		};
		
		class MK_Team
		{
			unitName = "BLUFOR MK Team";
			units[] = {"rif", "mk"};
		};
	};

	class BLUFOR_Vehicles
	{
		categoryName = "BLUFOR Vehicles";
		gear = "blu_f";
		side = "west";

		class M2A4_Slammer_UP
		{
			unitName = "M2A4 Slammer UP";		// This is the name of the vehicle which will be shown in-game.
			vehicle = "B_MBT_01_TUSK_F";		// This is the classname of the vehicle. You can get it by right-clicking a vehicle in 3DEN and selecting "Log > Log classes to clipboard"
			units[] = {"crew", "crew", "crew"};		// This is the crew of the vehicle.  The first unit in the list is always the commander.
		};

		class AMV7_Marshall		// Classnames can't contain '-'
		{
			unitName = "AMV-7 Marshall";
			vehicle = "B_APC_Wheeled_01_cannon_F";
			units[] = {"crew", "crew", "crew"};
		};

		class IFV6C_Panther
		{
			unitName = "IFV-6C Panther";
			vehicle = "B_APC_Tracked_01_rcws_F";
			units[] = {"crew", "crew", "crew"};
		};

		class Hunter_HMG
		{
			unitName = "Hunter HMG";
			vehicle = "B_MRAP_01_HMG_F";
			units[] = {"crew", "crew", "crew"};
		};
	};

	class OPFOR_Infantry
	{
		categoryName = "Looty Boys";
		gear = "opf_f";
		side = "east";

		// Units definition
		class Rifleman
		{
			unitName = "OPFOR Rifleman";		// This is the name of the squad which will be shown in-game.
			units[] = {"rif"};			// This is the squad which will spawn - this just spawns one rifleman.
		};

		class Patrol_2x
		{
			unitName = "OPFOR Patrol 2x";
			units[] = {"rif", "ar"};
		};

		class Fireteam_4x
		{
			unitName = "OPFOR Fireteam 4x";
			units[] = {"ftl", "ar", "lat", "rif"};
		};
		
		class Squad_6x
		{
			unitName = "OPFOR Squad 6x";
			units[] = {"ftl", "ar", "aar", "lat", "rif", "mk"};	// This spawns a full 6-man fireteam. You can have as many or as few units in a squad as you want.
		};
		
		class Section_9x
		{
			unitName = "OPFOR Section 9x";
			units[] = {"ftl", "ar", "aar", "lat", "med", "mk", "rif", "rif", "rif"};
		};

		class LAT_Team
		{
			unitName = "OPFOR LAT Team";
			units[] = {"rif", "lat"};
		};

		class AR_Team
		{
			unitName = "OPFOR AR Team";
			units[] = {"aar", "ar"};
		};
		
		class MK_Team
		{
			unitName = "OPFOR MK Team";
			units[] = {"rif", "mk"};
		};
	};

	class OPFOR_Vehicles
	{
		categoryName = "Looty Cars";
		gear = "opf_f";
		side = "east";

		class Hilux_Dshkm	
		{
			unitName = "Hilux (Dshkm)";
			vehicle = "UK3CB_TKM_O_Hilux_Dshkm";
			units[] = {"rif", "rif", "rif"};
		};

		class Hilux
		{
			unitName = "Hilux";
			vehicle = "UK3CB_TKM_O_Hilux_Open";
			units[] = {"rif", "rif", "rif"};
		};

		class Hilux_Rocket
		{
			unitName = "Hilux (Rocket)";
			vehicle = "UK3CB_TKM_O_Hilux_Rocket_Arty";
			units[] = {"rif", "rif"};
		};
		class Hilux_PKM
		{
			unitName = "Hilux (PKM)";
			vehicle = "UK3CB_TKM_O_Hilux_Pkm";
			units[] = {"rif", "rif", "rif"};
		};
				
		class Hilux_SPG
		{
			unitName = "Hilux (SPG)";
			vehicle = "UK3CB_TKM_O_Hilux_Spg9";
			units[] = {"rif", "rif", "rif"};
		};
	};

	class INDFOR_Infantry
	{
		categoryName = "Lobsterbacks";
		gear = "ind_f";
		side = "resistance";

		// Units definition
		class Rifleman
		{
			unitName = "INDFOR Rifleman";		// This is the name of the squad which will be shown in-game.
			units[] = {"rif"};			// This is the squad which will spawn - this just spawns one rifleman.
		};

		class Patrol_2x
		{
			unitName = "INDFOR Patrol 2x";
			units[] = {"rif", "ar"};
		};

		class Fireteam_4x
		{
			unitName = "INDFOR Fireteam 4x";
			units[] = {"ftl", "ar", "lat", "rif"};
		};
		
		class Squad_6x
		{
			unitName = "INDFOR Squad 6x";
			units[] = {"ftl", "ar", "aar", "lat", "rif", "mk"};	// This spawns a full 6-man fireteam. You can have as many or as few units in a squad as you want.
		};
		
		class Section_9x
		{
			unitName = "INDFOR Section 9x";
			units[] = {"ftl", "ar", "aar", "lat", "med", "mk", "rif", "rif", "rif"};
		};

		class LAT_Team
		{
			unitName = "INDFOR LAT Team";
			units[] = {"rif", "lat"};
		};

		class AR_Team
		{
			unitName = "INDFOR AR Team";
			units[] = {"aar", "ar"};
		};
		
		class MK_Team
		{
			unitName = "INDFOR MK Team";
			units[] = {"rif", "mk"};
		};
	};

	class INDFOR_Vehicles
	{
		categoryName = "Lobstercars";
		gear = "ind_f";
		side = "resistance";

		class MBT52_Kuma		// Classnames can't contain '-'
		{
			unitName = "Husky HMG";
			vehicle = "UK3CB_BAF_Husky_Passenger_HMG_Green_DPMT";
			units[] = {"rif", "rif", "rif"};
		};

		class AFV4_Gorgon
		{
			unitName = "Transport Truck";
			vehicle = "UK3CB_BAF_MAN_HX58_Transport_Green_DPMT";
			units[] = {"rif", "rif"};
		};

		class FV720_Mora
		{
			unitName = "Bulldog RWS (APC)";
			vehicle = "UK3CB_BAF_FV432_Mk3_RWS_Green_DPMT";
			units[] = {"rif", "rif", "rif"};
		};

		class Strider_HMG
		{
			unitName = "Warrior (Big Bad APC)";
			vehicle = "UK3CB_BAF_Warrior_A3_W_MTP";
			units[] = {"rif", "rif", "rif"};
		};
	};
};
