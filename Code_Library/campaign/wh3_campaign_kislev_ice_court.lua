local ice_court_traits_lord = {
	"wh3_main_trait_ice_court_agent_of_brutality",
	"wh3_main_trait_ice_court_artillerist",
	"wh3_main_trait_ice_court_better_bows_for_bodyguards",
	"wh3_main_trait_ice_court_better_swords_for_shielders",
	"wh3_main_trait_ice_court_blessed_are_the_footsoldiers",
	"wh3_main_trait_ice_court_blessed_cavalry",
	"wh3_main_trait_ice_court_builder",
	"wh3_main_trait_ice_court_cavalry_focused",
	"wh3_main_trait_ice_court_clerical_conspirator",
	"wh3_main_trait_ice_court_court_controller",
	"wh3_main_trait_ice_court_economist",
	"wh3_main_trait_ice_court_fighter",
	"wh3_main_trait_ice_court_glacial_blaster",
	"wh3_main_trait_ice_court_growth_is_great",
	"wh3_main_trait_ice_court_ice_charioteer",
	"wh3_main_trait_ice_court_ice_shard_wielder",
	"wh3_main_trait_ice_court_infantry_focused",
	"wh3_main_trait_ice_court_magical_warrior",
	"wh3_main_trait_ice_court_martial_encouragement",
	"wh3_main_trait_ice_court_martial_magician",
	"wh3_main_trait_ice_court_perfect_vigour",
	"wh3_main_trait_ice_court_raider",
	"wh3_main_trait_ice_court_ranger",
	"wh3_main_trait_ice_court_sacker",
	"wh3_main_trait_ice_court_scourge_of_the_corrupt",
	"wh3_main_trait_ice_court_stalker",
	"wh3_main_trait_ice_court_unbreakable",
	"wh3_main_trait_ice_court_vanguard_deployer"
};

local ice_court_traits_hero = {
	"wh3_main_trait_ice_court_artillerist_hero",
	"wh3_main_trait_ice_court_battler",
	"wh3_main_trait_ice_court_better_bows_for_bodyguards_hero",
	"wh3_main_trait_ice_court_better_swords_for_shielders_hero",
	"wh3_main_trait_ice_court_campaigner",
	"wh3_main_trait_ice_court_cavalry_focused_hero",
	"wh3_main_trait_ice_court_court_controller",
	"wh3_main_trait_ice_court_economist",
	"wh3_main_trait_ice_court_eldritch_defender",
	"wh3_main_trait_ice_court_fighter",
	"wh3_main_trait_ice_court_glacial_blaster",
	"wh3_main_trait_ice_court_growth_is_great",
	"wh3_main_trait_ice_court_ice_charioteer_hero",
	"wh3_main_trait_ice_court_ice_shard_wielder",
	"wh3_main_trait_ice_court_infantry_focused_hero",
	"wh3_main_trait_ice_court_magical_warrior_hero",
	"wh3_main_trait_ice_court_martial_encouragement_hero",
	"wh3_main_trait_ice_court_martial_magician",
	"wh3_main_trait_ice_court_ownership_is_theft",
	"wh3_main_trait_ice_court_perfect_vigour",
	"wh3_main_trait_ice_court_province_protector",
	"wh3_main_trait_ice_court_quiet_warrior",
	"wh3_main_trait_ice_court_ranger_hero",
	"wh3_main_trait_ice_court_scourge_of_the_corrupt",
	"wh3_main_trait_ice_court_stalker",
	"wh3_main_trait_ice_court_unbreakable",
	"wh3_main_trait_ice_court_vanguard_deployer",
	"wh3_main_trait_ice_court_wounder"
};

local kislev_culture = "wh3_main_ksl_kislev";

function setup_ice_court_ai()
	-- assign random traits to characters in the start pos
	if cm:is_new_game() then
		local faction_list = cm:model():world():faction_list();
		
		for i = 0, faction_list:num_items() - 1 do
			local current_faction = faction_list:item_at(i);
			
			if current_faction:culture() == kislev_culture then
				local character_list = current_faction:character_list();
				
				for j = 0, character_list:num_items() - 1 do
					local current_character = character_list:item_at(j);
					local current_character_subtype = current_character:character_subtype_key();
					
					if current_character_subtype:starts_with("wh3_main_ksl_frost_maiden_") or current_character_subtype:starts_with("wh3_main_ksl_ice_witch_") then
						add_ice_court_traits_to_character_details(current_character:character_details(), current_character:character_type_key());
					end;
				end;
			end;
		end;
	end;
	
	core:add_listener(
		"reset_ice_court_ai_cooldown",
		"ScriptEventIceCourtExpired",
		true,
		function(context)
			local separator_pos = string.find(context.string, ",");
			
			if not separator_pos then
				script_error("ScriptEventIceCourtExpired triggered but context.string " .. tostring(context.string) .. " could not be separated into faction and agent key");
				return;
			end;
			
			cm:set_saved_value(string.sub(context.string, 1, separator_pos - 1) .. "_" .. string.sub(context.string, separator_pos + 1) .. "_ice_court_on_cooldown", false);
		end,
		true
	);
	
	core:add_listener(
		"ice_court_frost_maiden_ai",
		"FactionTurnStart",
		function(context)
			return is_valid_to_spawn_ice_court_character_for_ai(
				context:faction(),
				"wizard",
				{
					"wh3_main_tech_ksl_1_06",
					"wh3_main_tech_ksl_3_03"
				}
			);
		end,
		function(context)
			spawn_ice_court_character_for_ai(
				context:faction():name(),
				"wizard",
				{
					"wh3_main_ksl_frost_maiden_ice",
					"wh3_main_ksl_frost_maiden_tempest"
				}
			);
		end,
		true
	);
	
	core:add_listener(
		"ice_court_ice_witch_ai",
		"FactionTurnStart",
		function(context)
			return is_valid_to_spawn_ice_court_character_for_ai(
				context:faction(),
				"general",
				{
					"wh3_main_tech_ksl_2_03",
					"wh3_main_tech_ksl_4_03"
				}
			);
		end,
		function(context)
			spawn_ice_court_character_for_ai(
				context:faction():name(),
				"general",
				{
					"wh3_main_ksl_ice_witch_ice",
					"wh3_main_ksl_ice_witch_tempest"
				}
			);
		end,
		true
	);
end;

function add_ice_court_traits_to_character_details(character_details, agent)
	local selected_traits = false;
	
	if agent == "general" then
		selected_traits = cm:random_sort_copy(ice_court_traits_lord);
	else
		selected_traits = cm:random_sort_copy(ice_court_traits_hero);
	end;

	local char_forename = character_details:get_forename();
	if char_forename ~= "" then
		char_forename = common.get_localised_string(char_forename);
	end;

	local char_surname = character_details:get_surname();
	if char_surname ~= "" then
		char_surname = common.get_localised_string(char_surname);
	end;

	for i = 1, 3 do
		local trait = selected_traits[i];
		out.design("\t...adding trait " .. trait .. " to character [" .. char_forename .. (char_surname == "" and "" or (" " .. char_surname)) .. "]");
		cm:force_add_trait_to_character_details(character_details, trait);
	end;
end;

function spawn_ice_court_character_for_ai(faction_name, agent, subtypes)
	local chosen_subtype = subtypes[cm:random_number(#subtypes)];
	
	out.design("Ice Court - spawning [" .. agent .. "] with subtype [" .. chosen_subtype .. "] for faction [" .. faction_name .. "]");
	local character_details = cm:spawn_character_to_pool(faction_name, "", "", "", "", 22, agent == "general", agent, chosen_subtype, false, "");
	
	add_ice_court_traits_to_character_details(character_details, agent)

	cm:set_saved_value(faction_name .. "_" .. agent .. "_ice_court_on_cooldown", true);
	
	local count = cm:get_saved_value(faction_name .. "_" .. agent .. "_ice_court_use_count") or 0;
	cm:set_saved_value(faction_name .. "_" .. agent .. "_ice_court_use_count", count + 1);
	
	cm:add_turn_countdown_event(faction_name, 8, "ScriptEventIceCourtExpired", faction_name .. "," .. agent);
end;

function is_valid_to_spawn_ice_court_character_for_ai(faction, agent, techs)
	if faction:culture() == kislev_culture and not faction:is_human() then
		local faction_name = faction:name();
		
		if cm:get_saved_value(faction_name .. "_" .. agent .. "_ice_court_on_cooldown") or (agent == "wizard" and faction:agent_cap_remaining("wizard") <= 0) or (cm:get_saved_value(faction_name .. "_" .. agent .. "_ice_court_use_count") or 0) > 15 then
			return false;
		end;
		
		for i = 1, #techs do
			if faction:has_technology(techs[i]) and cm:random_number(2) == 2 then
				return true;
			end;
		end;
	end;
end;