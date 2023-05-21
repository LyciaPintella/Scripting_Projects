if not character:is_at_sea() then
    local region = character:region();
    local region_key = region:name();
    local region_owning_faction = region:owning_faction();
    local region_culture = region_owning_faction:culture();
    local region_is_abandoned = region:is_abandoned();

    if not region_is_abandoned and region_culture == self.m_hef_culture then
        if region:has_effect_bundle("wh2_dlc10_power_of_nature") then
            cm:remove_effect_bundle_from_region("wh2_dlc10_power_of_nature", region_key);
        end

        cm:apply_effect_bundle_to_region("wh2_dlc10_power_of_nature", region_key, 15);
        self.power_of_nature_regions[region_key] = 15;

        cm:add_garrison_residence_vfx(region:garrison_residence():command_queue_index(), self.power_of_nature_vfx.full, false);
        core:trigger_event("ScriptEventPowerOfNatureTriggered");
    end
end
