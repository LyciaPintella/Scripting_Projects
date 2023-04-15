-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
--
--	REQUIRED FILES
--
--	Add any files that need to be loaded for this campaign here
--
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------

package.path = package.path .. ";" .. cm:get_campaign_folder() .. "/?.lua";

-- general campaign behaviour
force_require("wh_campaign_setup");

-- campaign advice interventions
force_require("wh_campaign_interventions");

-- help pages
force_require("wh_campaign_help_pages");

-- Scripted Tours
require("scripted_tours/campaign_tours")

require("wh_start");
require("wh2_campaign_traits");
require("wh2_campaign_encounters_at_sea");
require("wh2_campaign_random_armies");
require("wh_quests");
require("wh_campaign_ror_recruitment");

-- narrative events
require("wh3_campaign_payload_remapping");
require("wh3_chaos_narrative_events");

require("wh3_tol_helpers");
require("wh3_tol_darkness_and_disharmony");
require("wh3_tol_something_rotten_in_kislev");

require("wh3_campaign_slaanesh_devotees");
require("wh3_campaign_slaanesh_seductive_influence");
require("wh3_campaign_daemon_cults");
require("wh3_campaign_kislev_ice_court");
require("wh3_campaign_kislev_devotion");
require("wh3_campaign_character_initiative_unlocks");
require("wh3_campaign_greater_daemons");
require("wh3_campaign_ogre_contracts");
require("wh3_campaign_khorne_skulls");
require("wh3_campaign_recruited_unit_health");
require("wh3_campaign_nurgle_plagues")
require("wh3_campaign_great_game");
require("wh3_starting_armies");
require("wh2_campaign_generated_constants");
require("wh2_campaign_quest_battle_helper");
require("wh3_boris");
require("wh3_campaign_followers");
require("wh3_campaign_corruption");
require("wh3_campaign_ai");
require("wh3_campaign_great_bastion");
require("wh3_campaign_ivory_road_events");
require("wh3_campaign_character_upgrading");
require("wh3_dlc20_campaign_chs_dark_authority");
require("wh3_dlc20_narrative_champions");
require("wh3_dlc20_campaign_norscan_vassal_personality")
require("wh3_dlc20_campaign_chs_eye_of_the_gods")
require("wh3_dlc20_campaign_chs_vassal_dilemmas")
require("wh3_campaign_reveal_chaos_realm_mission_areas")
require("wh3_campaign_scripted_occupation_options")


require("realms/wh3_realm_common");
require("realms/wh3_realm_khorne");
require("realms/wh3_realm_nurgle");
require("realms/wh3_realm_slaanesh");
require("realms/wh3_realm_tzeentch");
require("realms/wh3_realm_tzeentch_data");

-- Game systems
require("victory_objectives");
require("corruption_swing");

require("DEBUG_economy_logging");

require("wh2_campaign_custom_starts");