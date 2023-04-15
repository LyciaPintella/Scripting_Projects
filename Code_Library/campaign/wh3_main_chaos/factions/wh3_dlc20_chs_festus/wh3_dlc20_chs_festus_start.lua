-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
--
--	FACTION SCRIPT
--
--	Custom script for this faction starts here. This script loads in additional
--	scripts depending on the mode the campaign is being started in (first turn vs
--	open), sets up the faction_start object and does some other things
--
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------

if cm:is_new_game() then
	-- position of the camera when cutscene skipped in singleplayer or gameplay starts in multiplayer
	local cam_gameplay_start = {
		x = 22.7,
		y = 256.1,
		d = 11.9,
		b = 0,
		h = 9.4
	};

	local cindy_scene_key = "chs_festus";

	local advice_to_play = {
		"wh3_camp_realm_of_chaos_festus_intro_001",
		"wh3_camp_realm_of_chaos_festus_intro_002",
		"wh3_camp_realm_of_chaos_festus_intro_003",
		"wh3_camp_realm_of_chaos_festus_intro_004"
	};
	
	local function end_callback()
		-- perform non-standard cutscene-end configuration here
		show_intro_story_panel(cm:get_local_faction_name(), "wh3_dlc20_story_panel_intro_chs")
	end;
	
	local function cutscene_configurator(c)
		-- perform non-standard cutscene configuration here
	end;

	local fullscreen_movie = "warhammer3/champions/dlc20_festus_intro";

	-- Hide the faction leader during the cutscene.
	-- Set this to false or nil to not hide/unhide them.
	-- Set this to true or 0 to hide them for the duration of the cutscene, unhiding them at the end
	-- Set this to a positive number to hide them at the start, then unhide them x seconds in to the cutscene.
	local hide_faction_leader_during_cutscene = false;

	-- Invoke common campaign intro setup
	cm:setup_campaign_intro_cutscene(cam_gameplay_start, cindy_scene_key, advice_to_play, end_callback, cutscene_configurator, fullscreen_movie, hide_faction_leader_during_cutscene);

end;