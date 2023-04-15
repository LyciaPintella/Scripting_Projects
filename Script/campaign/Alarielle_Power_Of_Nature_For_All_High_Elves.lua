local alarielle = {
	{subtype = "wh2_dlc10_hef_alarielle", forename = "names_name_898828143"}
};

local factions = {
	"wh2_main_hef_avelorn",
	"wh2_main_hef_caledor",
	"wh2_main_hef_chrace",
	"wh2_main_hef_citadel_of_dusk",
	"wh2_main_hef_cothique",
	"wh2_main_hef_eataine",
	"wh2_main_hef_ellyrion",
	"wh2_main_hef_fortress_of_dawn",
	"wh2_main_hef_high_elves",
	"wh2_main_hef_high_elves_qb1",
	"wh2_main_hef_high_elves_qb2",
	"wh2_main_hef_high_elves_qb3",
	"wh2_main_hef_high_elves_qb4",
	"wh2_main_hef_high_elves_rebels",
	"wh2_main_hef_nagarythe",
	"wh2_main_hef_order_of_loremasters",
	"wh2_main_hef_saphery",
	"wh2_main_hef_tiranoc",
	"wh2_main_hef_tor_elasor",
	"wh2_main_hef_yvresse"
};

local power_of_nature_regions = {};
local power_of_nature_vfx = {full = "scripted_effect7", half = "scripted_effect8"};

local function power_of_nature()
	for i = 1, #factions do
	local faction_str = factions[i].faction;
	local faction_obj = cm:get_faction(faction_str);
	local char_list = faction_obj:character_list();

	cm:add_faction_turn_start_listener_by_name(
	"power_of_nature",
	factions[i],
		function(context)
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
							if region:has_effect_bundle("wh2_dlc10_power_of_nature") then
								cm:remove_effect_bundle_from_region("wh2_dlc10_power_of_nature", region_key);
							end;

							cm:apply_effect_bundle_to_region("wh2_dlc10_power_of_nature", region_key, 15);
							power_of_nature_regions[region_key] = 15;

							cm:add_garrison_residence_vfx(region:garrison_residence():command_queue_index(), power_of_nature_vfx.full, false);
							core:trigger_event("ScriptEventPowerOfNatureTriggered");
						end;
					end;
				end;
			end;
		end,
	true
	);
		
	-- update the vfx on each region each turn
	core:add_listener(
		"power_of_nature_region",
		"RegionTurnStart",
		function(context)
			return power_of_nature_regions[context:region():name()] ~= nil;
		end,
		function(context)
			local region = context:region();
			local region_key = region:name();
			local garrison_residence = region:garrison_residence();
			local garrison_residence_cqi = garrison_residence:command_queue_index();
			local region_owning_faction = region:owning_faction();
			local region_culture = region_owning_faction:culture();
			local region_is_abandoned = region:is_abandoned();
						
			cm:remove_garrison_residence_vfx(garrison_residence_cqi, power_of_nature_vfx.full);
			cm:remove_garrison_residence_vfx(garrison_residence_cqi, power_of_nature_vfx.half);
	
			if region_is_abandoned or region_culture ~= m_hef_culture then
				cm:remove_effect_bundle_from_region("wh2_dlc10_power_of_nature", region_key);
			end

			
			local turns_remaining = power_of_nature_regions[region_key];
			turns_remaining = turns_remaining - 1;
			
			if turns_remaining > 7 then
				-- display full VFX
				cm:add_garrison_residence_vfx(garrison_residence_cqi, power_of_nature_vfx.full, false);
				power_of_nature_regions[region_key] = turns_remaining;
			elseif turns_remaining > 0 then
				-- switch to half strength VFX
				cm:add_garrison_residence_vfx(garrison_residence_cqi, power_of_nature_vfx.half, false);
				power_of_nature_regions[region_key] = turns_remaining;
			else
				power_of_nature_regions[region_key] = nil;
			end
		end,
		true
	);
	end
end;
cm:add_first_tick_callback(function() power_of_nature() end);