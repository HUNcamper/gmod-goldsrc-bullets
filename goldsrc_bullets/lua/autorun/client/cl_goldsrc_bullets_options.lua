hook.Add( "AddToolMenuCategories", "GoldSrcBulletOptionsCategory", function()
	spawnmenu.AddToolCategory( "Options", "GoldSrc", "#GoldSrc" )
end )

hook.Add( "PopulateToolMenu", "GoldSrcBulletOptionsMenu", function()
	spawnmenu.AddToolMenuOption( "Options", "GoldSrc", "GoldSrcBulletOptions", "#GoldSrc Bullets", "", "", function( panel )
		panel:ClearControls()
        panel:CheckBox("Enable impact particles", "gsrc_bullets_particles_impact")
        panel:CheckBox("Enable blood particles", "gsrc_bullets_particles_blood")
        panel:CheckBox("Enable ricochet sound", "gsrc_bullets_ricochet")
        panel:CheckBox("Enable headshot sound", "gsrc_bullets_headshot")
        panel:CheckBox("Headshot only on players", "gsrc_bullets_headshot_players")
        panel:Help("Minimum armor for helmet sound")
        panel:NumSlider("", "gsrc_bullets_headshot_helmet", 0, 100, 0)
        local combobox = panel:ComboBox( "Mode", "gsrc_bullets_mode")

        combobox:AddChoice("Half-Life 1", "hl1")
        combobox:AddChoice("Counter-Strike 1.6", "cs16")
	end )
end )
