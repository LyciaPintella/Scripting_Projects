local object_oriented = {
    object_oriented = true;
};

function add_kislev_listeners()
	core:add_listener(
			"DmitryBuildingCompleted",
			"BuildingCompleted",
			function(context)
				local building = context:building()
				local building_faction = building:faction()
				return building:name() == "wh3_main_special_ksl_kislev_1_2" and building_faction == "wh3_main_ksl_the_ice_court" and LC_settings.setup_str_dmitry and not LC_settings.setup_mixer_dmitry
			end,
			function(context)
				local faction_name = context:building():faction():name()  
				cm:spawn_character_to_pool(faction_name, "names_name_66990223", "names_name_66990224", "", "", 50, true, "general", "dead_ksl_dmitri_tzaryov", true, "");
			end,
			false
	)

	core:add_listener(
			"KatarinBuildingCompleted",
			"BuildingCompleted",
			function(context)
				local building = context:building()
				local building_faction = building:faction()
				return building:name() == "wh3_main_special_ksl_kislev_1_2" and building_faction == "wh3_main_ksl_the_ice_court" and LC_settings.setup_mixer_dmitry
			end,
			function(context)
				local faction_name = context:building():faction():name()  
				cm:spawn_character_to_pool(faction_name, "names_name_1506497736", "names_name_2147358958", "", "", 50, true, "general", "wh3_main_ksl_katarin", true, "");
			end,
			false
	)
end;
cm:add_post_first_tick_callback(function() add_kislev_listeners() end);

local function edit_starting_army()
    if cm:is_new_game() then
        local custom_starting_army = {
            -- Dmitri Tzaryov
            {faction = "wh3_main_ksl_the_ice_court", subtype = "dead_ksl_dmitri_tzaryov", forename = "names_name_72169798", units = {"wh3_main_ksl_inf_ice_guard_0", "wh3_main_ksl_inf_ice_guard_1", "wh3_main_ksl_inf_tzar_guard_0", "wh3_main_ksl_inf_tzar_guard_0", "wh3_main_ksl_inf_tzar_guard_0", "wh3_main_ksl_inf_tzar_guard_0", "wh3_main_ksl_cav_gryphon_legion_0","wh3_main_ksl_cav_gryphon_legion_0", "wh3_main_ksl_inf_kossars_0", "wh3_main_ksl_inf_kossars_0","wh3_main_ksl_mon_elemental_bear_0","kossar_bardiche", "kossar_bardiche" }}
        };

        for i = 1, #custom_starting_army do
            local faction_str = custom_starting_army[i].faction;
            local faction_obj = cm:get_faction(faction_str);
            local char_list = faction_obj:character_list();
            local general_subtype = custom_starting_army[i].subtype;
            local general_forename = custom_starting_army[i].forename;
            local unit_list = custom_starting_army[i].units;

            for j = 0, char_list:num_items() - 1 do
                local current_char = char_list:item_at(j);
        
                if current_char:is_null_interface() == false and current_char:character_subtype_key() == general_subtype and current_char:get_forename() == general_forename and current_char:has_military_force() == true then
                    cm:remove_all_units_from_general(current_char);
                    out("Removing starting units from " .. general_subtype .. " with forename " .. general_forename);
                    out("Granting new starting units to " .. general_subtype .. " with forename " .. general_forename);
                    for k = 1, #unit_list do
                        local unit = unit_list[k];
                        cm:grant_unit_to_character(cm:char_lookup_str(current_char:cqi()), unit);
                   end;
                end;
            end;
        end;
    end;
end;
cm:add_post_first_tick_callback_new(function() edit_starting_army() end);

function dmitry_replace_ll()    
        out("XXX Dmitry Begin XXX");
        local rictus = cm:get_faction("wh3_main_ksl_the_ice_court");
        local rictus_faction_leader_cqi = rictus:faction_leader():command_queue_index();
        cm:disable_event_feed_events(true, "wh_event_category_character", "", "")
        cm:set_character_immortality(cm:char_lookup_str(rictus_faction_leader_cqi), false);          
        cm:kill_character(rictus_faction_leader_cqi, true, true);
        cm:disable_event_feed_events(false, "wh_event_category_character", "", "")
        cm:create_force_with_general(
                        -- faction_key, unit_list, region_key, x, y, agent_type, agent_subtype, forename, clan_name, family_name, other_name, id, make_faction_leader, success_callback
                        "wh3_main_ksl_the_ice_court",
                        "", -- unit list
                        "wh3_main_combi_region_kislev",
                        700,
                        735,
                        "general",
                        "dead_ksl_dmitri_tzaryov",
                        "names_name_66990223",
                        "",
                        "names_name_66990224",
                        "",
                        true,-- make_faction_leader,
                        function(cqi) -- callback
                            local str = "character_cqi:" .. cqi
                            cm:set_character_immortality(str, true);
                            cm:set_character_unique(str, true);
                        end
                    ); 
        
        out("XXX Dmitry Finished XXX");
end

cm:add_first_tick_callback_new(
  function()
    if LC_settings.setup_str_dmitry and LC_settings.setup_mixer_dmitry then
        dmitry_replace_ll()
    end
  end
)