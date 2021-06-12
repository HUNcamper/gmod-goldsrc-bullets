hook.Add( "AddToolMenuCategories", "GoldSrcBulletOptionsCategory", function()
	spawnmenu.AddToolCategory( "Options", "GoldSrc", "#GoldSrc" )
end )

hook.Add( "PopulateToolMenu", "GoldSrcBulletOptionsMenu", function()
	spawnmenu.AddToolMenuOption( "Options", "GoldSrc", "GoldSrcBulletOptions", "#goldsrc_bullets.menu_option", "", "", function( panel )
		panel:ClearControls()
        panel:CheckBox("#goldsrc_bullets.option_impact_particles", "gsrc_bullets_particles_impact")
        panel:CheckBox("#goldsrc_bullets.option_blood_particles", "gsrc_bullets_particles_blood")
        panel:CheckBox("#goldsrc_bullets.option_ricochet_sound", "gsrc_bullets_ricochet")
        panel:CheckBox("#goldsrc_bullets.option_headshot_sound", "gsrc_bullets_headshot")
        panel:CheckBox("#goldsrc_bullets.option_headshot_only_players", "gsrc_bullets_headshot_players")
        panel:Help("#goldsrc_bullets.option_armor_for_helmet_sound")
        panel:NumSlider("", "gsrc_bullets_headshot_helmet", 0, 100, 0)
        
        local combobox = panel:ComboBox( "#goldsrc_bullets.option_impact_mode", "gsrc_bullets_mode")
        combobox:AddChoice("Half-Life 1", "hl1")
        combobox:AddChoice("Counter-Strike 1.6", "cs16")

        panel:Help("#goldsrc_bullets.option_disable_default_particle_help")
        panel:CheckBox("#goldsrc_bullets.option_disable_default_particle", "cl_new_impact_effects")
	end )
end )
