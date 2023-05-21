--Script that gets all the characters setups

--Initializing the setup values (true by default)
--Those values are then called from the spawning scripts
LC_settings = {
    setup_dead_grigori = true,
    setup_dead_ice_mage = true,
    setup_dead_kes = true,
    setup_str_abrax = true,
    setup_str_bassiano = true,
    setup_str_braugh = true,
    setup_str_brudd = true,
    setup_str_changeling = true,
    setup_str_frostmaw = true,
    setup_str_fylch = true,
    setup_hcm_hackflay = true,
    setup_str_ilja = true,
    setup_str_katerina = true,
    setup_str_kineater = true,
    setup_kd_kratch_doomclaw = true,
    setup_str_masque = true,
    setup_str_nanye = true,
    setup_str_naryaska = true,
    setup_str_nastasya = true,
    setup_pk_plague_epidemius = true,
    setup_str_scribes = true,
    setup_str_scyla = true,
    setup_str_shadowblade = true,
    setup_wh2_main_skv_ska_bloodtail = true,
    setup_str_skulltaker = true,
    setup_str_slambo = true,
    setup_str_slavin_agent = true,
    setup_str_thyrus = true,
    setup_str_ulrika = true,
    setup_str_valnir = true,
    setup_str_xian = true,
    setup_str_amon = true,
    setup_hcs_morskittar = true,
    setup_str_ragush = true,
    setup_str_serkhet = true,
    setup_str_xuqls = true,
    setup_hkrul_aldred = true,
    setup_werebear_ludwig = true,
    setup_thom_helgar = true,
    setup_mixer_ragush = false,
    setup_str_halagrundsor = true,
    setup_str_dmitry = true,
    setup_mixer_dmitry = false,
    setup_str_marrisith = true,
    setup_str_zlatgar = true,
    setup_str_nyletoth = true,
    setup_str_aurelion = true,    
    setup_str_haargroth = true,
    setup_str_styrkaar = true,
    setup_str_crom = true,
    setup_str_feytor = true,
    setup_str_vandred = true,
    setup_str_fellheart = true,
    setup_str_oreon = true,
    setup_str_erkstein = true,
    setup_mixer_abrax = false,
    setup_mixer_valnir = false,
    setup_mixer_amon = false
}

--Listener for MCT values, triggers very early before first_tick, do not do anything else than getting those values with it
core:add_listener(
    "LCSetup",
    "MctInitialized",
    true,
    function(context)
        local mct = context:mct()
        local LC = mct:get_mod_by_key("str_LC")
        --setup_emp_stefan_von_kessel
        local emp_stefan_von_kessel = LC:get_option_by_key("str_LC_lord_menu_dead_kes")
        LC_settings.setup_dead_kes = emp_stefan_von_kessel:get_finalized_setting()
        --setup_emp_thyrus_gorman
        local emp_thyrus_gorman = LC:get_option_by_key("str_LC_lord_menu_str_thyrus")
        LC_settings.setup_str_thyrus = emp_thyrus_gorman:get_finalized_setting()
        --setup_sla_nastasya
        local sla_nastasya = LC:get_option_by_key("str_LC_lord_menu_str_nastasya")
        LC_settings.setup_str_nastasya = sla_nastasya:get_finalized_setting()
        --setup_kho_abrax
        local kho_abrax = LC:get_option_by_key("str_LC_lord_menu_str_abrax")
        LC_settings.setup_str_abrax = kho_abrax:get_finalized_setting()
        --setup_nur_valnir
        local nur_valnir = LC:get_option_by_key("str_LC_lord_menu_str_valnir")
        LC_settings.setup_str_valnir = nur_valnir:get_finalized_setting()
        --setup_skv_kratch_doomclaw
        local skv_kratch_doomclaw = LC:get_option_by_key("str_LC_lord_menu_kd_kratch_doomclaw")
        LC_settings.setup_kd_kratch_doomclaw = skv_kratch_doomclaw:get_finalized_setting()
        --setup_dae_slavin
        local dae_slavin = LC:get_option_by_key("str_LC_lord_menu_str_slavin_agent")
        LC_settings.setup_str_slavin_agent = dae_slavin:get_finalized_setting()
        local str_amon = LC:get_option_by_key("str_LC_lord_menu_str_amon")
        LC_settings.setup_str_amon = str_amon:get_finalized_setting()
        local hcs_morskittar = LC:get_option_by_key("str_LC_lord_menu_hcs_morskittar")
        LC_settings.setup_hcs_morskittar = hcs_morskittar:get_finalized_setting()
        local str_ragush = LC:get_option_by_key("str_LC_lord_menu_str_ragush")
        LC_settings.setup_str_ragush = str_ragush:get_finalized_setting()   
        local thom_helgar = LC:get_option_by_key("str_LC_lord_menu_thom_helgar")
        LC_settings.setup_thom_helgar = thom_helgar:get_finalized_setting() 
        local str_dmitry = LC:get_option_by_key("str_LC_lord_menu_str_dmitry")
        LC_settings.setup_str_dmitry = str_dmitry:get_finalized_setting() 
        local str_marrisith = LC:get_option_by_key("str_LC_lord_menu_str_marrisith")
        LC_settings.setup_str_marrisith = str_marrisith:get_finalized_setting() 
        local str_zlatgar = LC:get_option_by_key("str_LC_lord_menu_str_zlatgar")
        LC_settings.setup_str_zlatgar = str_zlatgar:get_finalized_setting() 
        local str_haargroth = LC:get_option_by_key("str_LC_lord_menu_str_haargroth")
        LC_settings.setup_str_haargroth = str_haargroth:get_finalized_setting() 
        local str_styrkaar = LC:get_option_by_key("str_LC_lord_menu_str_styrkaar")
        LC_settings.setup_str_styrkaar = str_styrkaar:get_finalized_setting() 
        local str_crom = LC:get_option_by_key("str_LC_lord_menu_str_crom")
        LC_settings.setup_str_crom = str_crom:get_finalized_setting() 
        local str_feytor = LC:get_option_by_key("str_LC_lord_menu_str_feytor")
        LC_settings.setup_str_feytor = str_feytor:get_finalized_setting() 
        local str_vandred = LC:get_option_by_key("str_LC_lord_menu_str_vandred")
        LC_settings.setup_str_vandred = str_vandred:get_finalized_setting() 
        local str_fellheart = LC:get_option_by_key("str_LC_lord_menu_str_fellheart")
        LC_settings.setup_str_fellheart = str_fellheart:get_finalized_setting() 
        local str_oreon = LC:get_option_by_key("str_LC_lord_menu_str_oreon")
        LC_settings.setup_str_oreon = str_oreon:get_finalized_setting() 
        local str_erkstein = LC:get_option_by_key("str_LC_lord_menu_str_erkstein")
        LC_settings.setup_str_erkstein = str_erkstein:get_finalized_setting() 

        local dead_grigori = LC:get_option_by_key("str_LC_hero_menu_dead_grigori")
        LC_settings.setup_dead_grigori = dead_grigori:get_finalized_setting()
        local dead_ice_mage = LC:get_option_by_key("str_LC_hero_menu_dead_ice_mage")
        LC_settings.setup_dead_ice_mage = dead_ice_mage:get_finalized_setting()        
        local str_bassiano = LC:get_option_by_key("str_LC_hero_menu_str_bassiano")
        LC_settings.setup_str_bassiano = str_bassiano:get_finalized_setting()
        local str_braugh = LC:get_option_by_key("str_LC_hero_menu_str_braugh")
        LC_settings.setup_str_braugh = str_braugh:get_finalized_setting() 
        local str_brudd = LC:get_option_by_key("str_LC_hero_menu_str_brudd")
        LC_settings.setup_str_brudd = str_brudd:get_finalized_setting()
        local str_changeling = LC:get_option_by_key("str_LC_hero_menu_str_changeling")
        LC_settings.setup_str_changeling = str_changeling:get_finalized_setting()        
        local str_frostmaw = LC:get_option_by_key("str_LC_hero_menu_str_frostmaw")
        LC_settings.setup_str_frostmaw = str_frostmaw:get_finalized_setting()
        local str_fylch = LC:get_option_by_key("str_LC_hero_menu_str_fylch")
        LC_settings.setup_str_fylch = str_fylch:get_finalized_setting()
        local hcm_hackflay = LC:get_option_by_key("str_LC_hero_menu_hcm_hackflay")
        LC_settings.setup_hcm_hackflay = hcm_hackflay:get_finalized_setting()
        local str_ilja = LC:get_option_by_key("str_LC_hero_menu_str_ilja")
        LC_settings.setup_str_ilja = str_ilja:get_finalized_setting()        
        local str_katerina = LC:get_option_by_key("str_LC_hero_menu_str_katerina")
        LC_settings.setup_str_katerina = str_katerina:get_finalized_setting()
        local str_kineater = LC:get_option_by_key("str_LC_hero_menu_str_kineater")
        LC_settings.setup_str_kineater = str_kineater:get_finalized_setting()
        local str_masque = LC:get_option_by_key("str_LC_hero_menu_str_masque")
        LC_settings.setup_str_masque = str_masque:get_finalized_setting()
        local str_nanye = LC:get_option_by_key("str_LC_hero_menu_str_nanye")
        LC_settings.setup_str_nanye = str_nanye:get_finalized_setting()        
        local str_naryaska = LC:get_option_by_key("str_LC_hero_menu_str_naryaska")
        LC_settings.setup_str_naryaska = str_naryaska:get_finalized_setting()
        local pk_plague_epidemius = LC:get_option_by_key("str_LC_hero_menu_pk_plague_epidemius")
        LC_settings.setup_pk_plague_epidemius = pk_plague_epidemius:get_finalized_setting()
        local str_scribes = LC:get_option_by_key("str_LC_hero_menu_str_scribes")
        LC_settings.setup_str_scribes = str_scribes:get_finalized_setting()
        local str_scyla = LC:get_option_by_key("str_LC_hero_menu_str_scyla")
        LC_settings.setup_str_scyla = str_scyla:get_finalized_setting()        
        local str_shadowblade = LC:get_option_by_key("str_LC_hero_menu_str_shadowblade")
        LC_settings.setup_str_shadowblade = str_shadowblade:get_finalized_setting()
        local wh2_main_skv_ska_bloodtail = LC:get_option_by_key("str_LC_hero_menu_wh2_main_skv_ska_bloodtail")
        LC_settings.setup_wh2_main_skv_ska_bloodtail = wh2_main_skv_ska_bloodtail:get_finalized_setting()   
        local str_skulltaker = LC:get_option_by_key("str_LC_hero_menu_str_skulltaker")
        LC_settings.setup_str_skulltaker = str_skulltaker:get_finalized_setting()        
        local str_slambo = LC:get_option_by_key("str_LC_hero_menu_str_slambo")
        LC_settings.setup_str_slambo = str_slambo:get_finalized_setting()
        local str_ulrika = LC:get_option_by_key("str_LC_hero_menu_str_ulrika")
        LC_settings.setup_str_ulrika = str_ulrika:get_finalized_setting() 
        local str_xian = LC:get_option_by_key("str_LC_hero_menu_str_xian")
        LC_settings.setup_str_xian = str_xian:get_finalized_setting() 
        local str_serkhet = LC:get_option_by_key("str_LC_hero_menu_str_serkhet")
        LC_settings.setup_str_serkhet = str_serkhet:get_finalized_setting()
        local str_xuqls = LC:get_option_by_key("str_LC_hero_menu_str_xuqls")
        LC_settings.setup_str_xuqls = str_xuqls:get_finalized_setting() 
        local hkrul_aldred = LC:get_option_by_key("str_LC_hero_menu_hkrul_aldred")
        LC_settings.setup_hkrul_aldred = hkrul_aldred:get_finalized_setting() 
        local werebear_ludwig = LC:get_option_by_key("str_LC_hero_menu_werebear_ludwig")
        LC_settings.setup_werebear_ludwig = werebear_ludwig:get_finalized_setting() 
        local str_halagrundsor = LC:get_option_by_key("str_LC_hero_menu_str_halagrundsor")
        LC_settings.setup_str_halagrundsor = str_halagrundsor:get_finalized_setting()  
        local str_aurelion = LC:get_option_by_key("str_LC_hero_menu_str_aurelion")
        LC_settings.setup_str_aurelion = str_aurelion:get_finalized_setting() 
        local str_nyletoth = LC:get_option_by_key("str_LC_hero_menu_str_nyletoth")
        LC_settings.setup_str_nyletoth = str_nyletoth:get_finalized_setting() 

        local mixer_ragush = LC:get_option_by_key("str_LC_mixer_menu_mixer_ragush")
        LC_settings.setup_mixer_ragush = mixer_ragush:get_finalized_setting() 
        local mixer_dmitry = LC:get_option_by_key("str_LC_mixer_menu_mixer_dmitry")
        LC_settings.setup_mixer_dmitry = mixer_dmitry:get_finalized_setting() 
        local mixer_abrax = LC:get_option_by_key("str_LC_mixer_menu_mixer_abrax")
        LC_settings.setup_mixer_abrax = mixer_abrax:get_finalized_setting() 
        local mixer_valnir = LC:get_option_by_key("str_LC_mixer_menu_mixer_valnir")
        LC_settings.setup_mixer_valnir = mixer_valnir:get_finalized_setting()
        local mixer_amon = LC:get_option_by_key("str_LC_mixer_menu_mixer_amon")
        LC_settings.setup_mixer_amon = mixer_amon:get_finalized_setting() 
    end,
    true
)
