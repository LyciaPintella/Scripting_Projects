local alarielle = {{
    subtype = "wh2_dlc10_hef_alarielle",
    forename = "names_name_898828143"
}};

local hef_factions = {"wh2_main_hef_avelorn", "wh2_main_hef_caledor", "wh2_main_hef_chrace", "wh2_main_hef_citadel_of_dusk", "wh2_main_hef_cothique", "wh2_main_hef_eataine",
                      "wh2_main_hef_ellyrion", "wh2_main_hef_fortress_of_dawn", "wh2_main_hef_high_elves", "wh2_main_hef_high_elves_qb1", "wh2_main_hef_high_elves_qb2",
                      "wh2_main_hef_high_elves_qb3", "wh2_main_hef_high_elves_qb4", "wh2_main_hef_high_elves_rebels", "wh2_main_hef_nagarythe", "wh2_main_hef_order_of_loremasters",
                      "wh2_main_hef_saphery", "wh2_main_hef_tiranoc", "wh2_main_hef_tor_elasor", "wh2_main_hef_yvresse"};

local m_hef_culture = "wh2_main_hef_high_elves"

local power_of_nature_regions = {};
local power_of_nature_vfx = {
    full = "scripted_effect7",
    half = "scripted_effect8"
};

local alarielle_faction_key = "wh2_main_hef_avelorn";
local hellebron_faction_key = "wh2_main_def_har_ganeth";

local defender_of_ulthuan_effect = "";
local defender_of_ulthuan_level = 1;

local ulthuan_regions = {
    ["outer"] = {
        ["wh3_main_combi_region_vauls_anvil_ulthuan"] = true,
        ["wh3_main_combi_region_tor_sethai"] = true,
        ["wh3_main_combi_region_whitepeak"] = true,
        ["wh3_main_combi_region_tor_anroc"] = true,
        ["wh3_main_combi_region_avethir"] = true,
        ["wh3_main_combi_region_tor_dranil"] = true,
        ["wh3_main_combi_region_tor_anlec"] = true,
        ["wh3_main_combi_region_shrine_of_khaine"] = true,
        ["wh3_main_combi_region_tor_achare"] = true,
        ["wh3_main_combi_region_elisia"] = true,
        ["wh3_main_combi_region_shrine_of_kurnous"] = true,
        ["wh3_main_combi_region_mistnar"] = true,
        ["wh3_main_combi_region_tor_koruali"] = true,
        ["wh3_main_combi_region_tor_yvresse"] = true,
        ["wh3_main_combi_region_elessaeli"] = true,
        ["wh3_main_combi_region_tralinia"] = true,
        ["wh3_main_combi_region_shrine_of_loec"] = true,
        ["wh3_main_combi_region_cairn_thel"] = true
    },
    ["inner"] = {
        ["wh3_main_combi_region_lothern"] = true,
        ["wh3_main_combi_region_tower_of_lysean"] = true,
        ["wh3_main_combi_region_tor_elyr"] = true,
        ["wh3_main_combi_region_eagle_gate"] = true,
        ["wh3_main_combi_region_whitefire_tor"] = true,
        ["wh3_main_combi_region_griffon_gate"] = true,
        ["wh3_main_combi_region_evershale"] = true,
        ["wh3_main_combi_region_unicorn_gate"] = true,
        ["wh3_main_combi_region_phoenix_gate"] = true,
        ["wh3_main_combi_region_tor_saroir"] = true,
        ["wh3_main_combi_region_gaean_vale"] = true,
        ["wh3_main_combi_region_tor_finu"] = true,
        ["wh3_main_combi_region_white_tower_of_hoeth"] = true,
        ["wh3_main_combi_region_port_elistor"] = true,
        ["wh3_main_combi_region_angerrial"] = true,
        ["wh3_main_combi_region_shrine_of_asuryan"] = true
    },
    ["outer_lost"] = 0,
    ["inner_lost"] = 0
};

local function power_of_nature_for_all_high_elves()
    for i = 1, #hef_factions do
        local faction_str = hef_factions:item_at(i);
        local faction_obj = cm:get_faction(faction_str);
        local char_list = faction_obj:character_list();
        local avelorn_key = cm:get_faction(alarielle_faction_key);
        cm:add_faction_turn_start_listener_by_name("power_of_nature_for_all_high_elves", faction_str, function(context)
            for j = 0, char_list:num_items() - 1 do
                local current_char = char_list:item_at(j);

                if current_char:is_null_interface() == false and current_char:character_subtype_key() == alarielle.subtype and current_char:get_forename() == alarielle.forename then
                    local character = context:current_char();

                    if not character:is_at_sea() then
                        local region = character:region();
                        local region_key = region:name();
                        local region_owning_faction = region:owning_faction();
                        local region_culture = region_owning_faction:culture();
                        local region_is_abandoned = region:is_abandoned();

                        if not region_is_abandoned and region_culture == m_hef_culture then

                        end

                        if ((region_owning_faction:name() == avelorn_key) or region_owning_faction:allied_with(avelorn_key) or region_owning_faction:is_vassal_of(avelorn_key) or
                            avelorn_key:is_vassal_of(region_owning_faction)) then
                            if region:has_effect_bundle("wh2_dlc10_power_of_nature") then
                                cm:remove_effect_bundle_from_region("wh2_dlc10_power_of_nature", region_key);
                            end

                            cm:apply_effect_bundle_to_region("wh2_dlc10_power_of_nature", region_key, 15);
                            power_of_nature_regions[region_key] = 15;

                            cm:add_garrison_residence_vfx(region:garrison_residence():command_queue_index(), power_of_nature_vfx.full, false);
                            core:trigger_event("ScriptEventPowerOfNatureTriggered");
                        end
                    end
                end
            end
        end, true);
    end
end
cm:add_post_first_tick_callback(function()
    power_of_nature_for_all_high_elves()
end);
