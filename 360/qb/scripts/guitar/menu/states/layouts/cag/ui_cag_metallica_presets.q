
script ui_create_cag_metallica_presets \{stance = Stance_Select_Guitar}
	spawnscriptnow ui_create_cag_metallica_presets_spawned params = {<...>}
endscript

script ui_create_cag_metallica_presets_spawned 
	make_list_menu {
		vmenu_id = create_cag_metallica_vmenu
		pad_back_script = list_exit_restore
		icon = <hist_tex>
	}
	setup_cas_menu_handlers vmenu_id = create_cag_metallica_vmenu camera_list = <camera_list> zoom_camera = <zoom_camera>
	get_part_current_desc_id part = <part>
	<current_part> = 0
	<num_parts_added> = 0
	if (<part> = CAS_Guitar_Body)
		<cas_presets> = CAS_Preset_Metallica_Guitars
	elseif (<part> = CAS_Bass_Body)
		<cas_presets> = CAS_Preset_Metallica_Basses
	endif
	GetArraySize ($<cas_presets>)
	<num_presets> = <array_size>
	<i> = 0
	begin
	<desc_id> = ($<cas_presets> [<i>].desc_id)
	if (<desc_id> = <current_desc_id>)
		<current_part> = <num_parts_added>
	endif
	GetArraySize ($<part>)
	<num_bodies> = <array_size>
	<add_item> = 1
	<j> = 0
	begin
	if ($<part> [<j>].desc_id = <desc_id>)
		if is_part_unlocked part = (<part>) desc_id = <desc_id> savegame = ($cas_current_savegame)
			if NOT is_part_purchased part = (<part>) desc_id = <desc_id> savegame = ($cas_current_savegame)
				price = (($<part> [<j>].price))
				FormatText TextName = pad_choose_dialogue qs("Would you like to purchase this %s?") s = ((($<part>) [<j>]).frontend_desc)
				show_purchasable = 1
				pad_back_script = generic_event_back
			endif
			<item_text> = ($<part> [<j>].frontend_desc)
		else
			<add_item> = 0
		endif
		if StructureContains Structure = ($<part> [<j>]) exclusive
			<add_item> = 0
		endif
		break
	endif
	<j> = (<j> + 1)
	repeat <num_bodies>
	if (<add_item> = 1)
		add_list_item {
			text = <item_text>
			pad_choose_script = cag_metallica_presets_choose
			pad_choose_params = {part = <part>}
			camera_list = <camera_list>
			zoom_camera = <zoom_camera>
			additional_focus_script = cag_metallica_presets_update
			additional_focus_params = {cas_presets = <cas_presets> part = <part> index = <i> disable_rotation_zoom = <disable_rotation_zoom>
				show_purchasable = <show_purchasable>}
			price = <price>
			pad_choose_dialogue = <pad_choose_dialogue>
		}
		<num_parts_added> = (<num_parts_added> + 1)
	endif
	if GotParam \{price}
		RemoveParameter \{price}
	endif
	if GotParam \{pad_choose_dialogue}
		RemoveParameter \{pad_choose_dialogue}
	endif
	if GotParam \{show_purchasable}
		RemoveParameter \{show_purchasable}
	endif
	<i> = (<i> + 1)
	repeat <num_presets>
	clean_up_user_control_helpers
	menu_finish \{car_helper_text}
	LaunchEvent type = focus target = create_cag_metallica_vmenu data = {child_index = <current_part>}
endscript

script cag_metallica_presets_update 
	<preset> = ($<cas_presets> [<index>])
	if (<part> = CAS_Guitar_Body)
		cag_metallica_presets_update_guitar preset = <preset>
	elseif (<part> = CAS_Bass_Body)
		cag_metallica_presets_update_bass preset = <preset>
	endif
	RebuildCurrentCASModel
endscript

script ui_destroy_cag_metallica_presets 
	generic_list_destroy
	menu_finish \{car_helper_text}
endscript

script ui_init_cag_metallica_presets 
	PushTemporaryCASAppearance
	ui_load_cas_rawpak part = <part>
endscript

script ui_deinit_cag_metallica_presets 
	PopTemporaryCASAppearance
	cleanup_cas_menu_handlers
endscript

script cag_metallica_presets_update_guitar 
	update_part_cap preset = <preset> part = CAS_Guitar_Body
	update_part_cap preset = <preset> part = CAS_Guitar_Neck
	update_part_cap preset = <preset> part = CAS_Guitar_Head
	update_part_cap preset = <preset> part = CAS_Guitar_Pickguards
	update_part_cap preset = <preset> part = CAS_Guitar_Bridges
	update_part_cap preset = <preset> part = CAS_Guitar_Knobs
	update_part_cap preset = <preset> part = CAS_Guitar_Pickups
endscript

script cag_metallica_presets_update_bass 
	update_part_cap preset = <preset> part = CAS_Bass_Body
	update_part_cap preset = <preset> part = CAS_Bass_Neck
	update_part_cap preset = <preset> part = CAS_Bass_Head
	update_part_cap preset = <preset> part = CAS_Bass_Pickguards
	update_part_cap preset = <preset> part = CAS_Bass_Bridges
	update_part_cap preset = <preset> part = CAS_Bass_Knobs
	update_part_cap preset = <preset> part = CAS_Bass_Pickups
endscript

script update_part_cap 
	EditCASAppearance target = SetPart targetParams = {part = <part> desc_id = (<preset>.<part>.desc_id)}
	if StructureContains Structure = (<preset>.<part>) cap
		<CAP_array> = (<preset>.<part>.cap)
		SetCASAppearanceCAP part = <part> cap = <CAP_array>
	endif
	if StructureContains Structure = (<preset>.<part>) chosen_materials
		<chosen_materials> = (<preset>.<part>.chosen_materials)
		SetCASAppearanceMaterial part = <part> material = material1 value = (<chosen_materials>.material1)
	endif
endscript

script cag_metallica_presets_choose 
	if (<part> = CAS_Guitar_Body)
		SetGlobalTags savegame = ($cas_current_savegame) cas_helper_dialogue params = {guitar_category = metallica}
	elseif (<part> = CAS_Bass_Body)
		SetGlobalTags savegame = ($cas_current_savegame) cas_helper_dialogue params = {bass_category = metallica}
	endif
	generic_event_back
endscript
