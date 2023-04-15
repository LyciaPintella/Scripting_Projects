local object_oriented = {
    object_oriented = true;
};
local function edit_starting_army()         
  if cm:is_new_game() then
        local custom_starting_army = {
            --  Marienburg, van de Kuypers de Groot
            {faction = "wh_main_emp_marienburg", subtype = "hkrul_jk", forename = "names_name_7470711888", units = {"reiksguard_foot", "wh_main_emp_cav_reiksguard", "out_scout", "wh_main_emp_inf_spearmen_0","wh_main_emp_inf_spearmen_0","wh_main_emp_inf_spearmen_0", "wh_main_emp_inf_greatswords","wh_main_emp_inf_halberdiers","wh_main_emp_inf_crossbowmen","wh_main_emp_inf_crossbowmen","wh_main_emp_inf_handgunners", "wh_main_emp_art_great_cannon" }}
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