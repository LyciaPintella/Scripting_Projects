local mct = get_mct()

local mct_mod = mct:register_mod("jadawin_dynamic_difficulty")

mct_mod:set_title ("Dynamic Difficulty", false)
mct_mod:set_author ("Jadawin v220917")
mct_mod:set_description ("AI bonuses start lower but increase as the player's empire grows. They end up higher than Vanilla, making the early game easier and the late game harder", false)

local mct_section = mct_mod:get_section_by_key ("default")
mct_section:set_localised_text ("Dynamic Difficulty Options", false)
mct_section:set_option_sort_function ("index_sort")

local option_dyndif_settings_locked = mct_mod:add_new_option ("settings_locked", "checkbox")
option_dyndif_settings_locked:set_text("Lock settings during campaigns")
option_dyndif_settings_locked:set_tooltip_text("If enabled, you can't change these settings during a campaign, only from the main menu before starting one.")
option_dyndif_settings_locked:set_default_value(false)
option_dyndif_settings_locked:set_read_only(true)

local option_dyndif_replenish = mct_mod:add_new_option ("enable_replenishment", "checkbox")
option_dyndif_replenish:set_text("Use Replenishment Cheats")
option_dyndif_replenish:set_tooltip_text("When disabled, AI does not get much extra replenishment. Slightly easier, much less grindy.")
option_dyndif_replenish:set_default_value(false)

local option_dyndif_recruit = mct_mod:add_new_option ("enable_recruitment", "checkbox")
option_dyndif_recruit:set_text("Use Recruitment Cheats")
option_dyndif_recruit:set_tooltip_text("When disabled, AI does not get many extra recruitment slots. Slightly easier, much less grindy.")
option_dyndif_recruit:set_default_value(false)

local option_dyndif_extra_difficulty = mct_mod:add_new_option ("extra_difficulty", "slider")
option_dyndif_extra_difficulty:set_text("Extra Difficulty")
option_dyndif_extra_difficulty:set_tooltip_text("Every step adds 5% extra to all AI bonuses to growth, income, construction cost reduction, and upkeep costs.")
option_dyndif_extra_difficulty:slider_set_min_max(0, 20)
option_dyndif_extra_difficulty:slider_set_step_size(1)
option_dyndif_extra_difficulty:set_default_value(0)