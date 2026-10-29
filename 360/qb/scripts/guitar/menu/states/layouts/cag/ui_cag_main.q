cag_instrument_type = none

script ui_create_cag_main 
	change \{randomize_from_cai_menu = 1}
	SetButtonEventMappings \{block_menu_input}
	GetCASAppearance
	if StructureContains Structure = <appearance> CAS_Full_Instrument
		make_generic_menu \{vmenu_id = create_cag_main_vmenu
			pad_back_script = generic_event_back
			title = qs("Premade Instrument Demo")
			num_icons = 2
			show_history}
		setup_cas_menu_handlers \{vmenu_id = create_cag_main_vmenu}
		add_generic_menu_text_item \{text = qs("Temp Full Instrument")
			choose_state = UIstate_popout_select_part
			choose_state_data = {
				part = CAS_Full_Instrument
				is_popup
				hist_tex = icon_load
			}}
	elseif ((<instrument_info>.desc_id) = guitar)
		change \{cag_instrument_type = guitar}
		if NOT GotParam \{old_guitar_save_checksum}
			globaltag_getarraychecksum savegame = ($cas_current_savegame) array_name = player_guitar_save
			old_guitar_save_checksum = <array_checksum>
			ui_event_add_params old_guitar_save_checksum = <old_guitar_save_checksum>
		endif
		make_generic_menu \{vmenu_id = create_cag_main_vmenu
			title = qs("GUITAR")
			num_icons = 2
			show_history}
		setup_cas_menu_handlers \{vmenu_id = create_cag_main_vmenu
			camera_list = [
				'cag_main'
				'cag_main_R'
				'cag_main_B'
				'cag_main_L'
			]
			zoom_camera = 'customize_cag_Zoom'}
		add_generic_menu_text_item \{text = qs("METALLICA AXES")
			choose_state = UIstate_cag_metallica_presets
			choose_state_data = {
				part = CAS_Guitar_Body
				is_popup
				hist_tex = icon_customize
				no_edit
				camera_list = [
					'cag_main'
					'cag_main_R'
					'cag_main_B'
					'cag_main_L'
				]
				zoom_camera = 'customize_cag_Zoom'
			}}
		add_generic_menu_text_item {
			text = qs("ESP CUSTOM SHOP")
			pad_choose_script = ui_cag_main_check_category
			pad_choose_params = {state = UIstate_cag_custom text = qs("ESP CUSTOM SHOP") instrument_info = <instrument_info> is_esp = 1}
		}
		add_generic_menu_text_item {
			text = qs("HERO'S WORKSHOP")
			pad_choose_script = ui_cag_main_check_category
			pad_choose_params = {state = UIstate_cag_custom text = qs("HERO'S WORKSHOP") instrument_info = <instrument_info> is_esp = 0}
		}
		dim_save_option_for_guest <...>
		add_generic_menu_text_item {
			text = qs("SAVE")
			choose_state = UIstate_cas_save_slots
			choose_state_data = {savegame = ($cas_current_savegame) text = qs("SAVE") slot_list = player_guitar_save instrument_info = <instrument_info> save_guitar loaded_index = <loaded_index> hist_tex = icon_save}
			not_focusable = <not_focusable>
		}
		add_generic_menu_text_item {
			text = qs("LOAD")
			choose_state = UIstate_generic_dialogue
			choose_state_data = {
				title = qs("Load Guitar?")
				text = qs("By loading, your old design will be lost. Would you like to continue?")
				choose_yes_func = generic_event_replace
				choose_yes_params = {data = {state = UIstate_cas_save_slots savegame = ($cas_current_savegame) text = qs("LOAD GUITAR") slot_list = player_guitar_save instrument_info = <instrument_info> load_guitar hist_tex = icon_load}}
			}
			not_focusable = <not_focusable>
		}
	endif
	if ((<instrument_info>.desc_id) = Bass)
		change \{cag_instrument_type = Bass}
		if NOT GotParam \{old_bass_save_checksum}
			globaltag_getarraychecksum savegame = ($cas_current_savegame) array_name = player_bass_save
			old_bass_save_checksum = <array_checksum>
			ui_event_add_params old_bass_save_checksum = <old_bass_save_checksum>
		endif
		make_generic_menu \{vmenu_id = create_cag_main_vmenu
			title = qs("BASS")
			num_icons = 2
			show_history}
		setup_cas_menu_handlers \{vmenu_id = create_cag_main_vmenu
			camera_list = [
				'cag_main'
				'cag_main_R'
				'cag_main_B'
				'cag_main_L'
			]
			zoom_camera = 'customize_cag_Zoom'}
		add_generic_menu_text_item \{text = qs("METALLICA AXES")
			choose_state = UIstate_cag_metallica_presets
			choose_state_data = {
				part = CAS_Bass_Body
				is_popup
				hist_tex = icon_customize
				no_edit
				camera_list = [
					'cag_main'
					'cag_main_R'
					'cag_main_B'
					'cag_main_L'
				]
				zoom_camera = 'customize_cag_Zoom'
			}}
		add_generic_menu_text_item {
			text = qs("ESP CUSTOM SHOP")
			pad_choose_script = ui_cag_main_check_category
			pad_choose_params = {state = UIstate_cag_custom text = qs("ESP CUSTOM SHOP") instrument_info = <instrument_info> is_esp = 1}
		}
		add_generic_menu_text_item {
			text = qs("HERO'S WORKSHOP")
			pad_choose_script = ui_cag_main_check_category
			pad_choose_params = {state = UIstate_cag_custom text = qs("HERO'S WORKSHOP") instrument_info = <instrument_info> is_esp = 0}
		}
		dim_save_option_for_guest <...>
		add_generic_menu_text_item {
			text = qs("SAVE")
			choose_state = UIstate_cas_save_slots
			choose_state_data = {savegame = ($cas_current_savegame) text = qs("SAVE") slot_list = player_bass_save instrument_info = <instrument_info> save_guitar loaded_index = <loaded_index> hist_tex = icon_save}
			not_focusable = <not_focusable>
		}
		add_generic_menu_text_item {
			text = qs("LOAD")
			choose_state = UIstate_generic_dialogue
			choose_state_data = {
				title = qs("Load Bass?")
				text = qs("By loading, your old design will be lost. Would you like to continue?")
				choose_yes_func = generic_event_replace
				choose_yes_params = {data = {state = UIstate_cas_save_slots savegame = ($cas_current_savegame) text = qs("LOAD BASS") slot_list = player_bass_save instrument_info = <instrument_info> load_guitar hist_tex = icon_load}}
			}
			not_focusable = <not_focusable>
		}
	endif
	if NotCD
		add_generic_menu_text_item {
			text = qs("DEBUG SHOP")
			choose_state = UIstate_cag_custom
			choose_state_data = {instrument_info = <instrument_info>}
		}
	endif
	CreateScreenElement \{parent = create_cag_main_vmenu
		type = DescInterface
		desc = 'Axesmith_menu_item'
		not_focusable
		autoSizeDims = true}
	GetCurrentCASObject
	printf \{qs("\L---------------------------------Guitar-------------------------------------------")}
	BandManager_ChangeStance name = <cas_object> stance = Stance_Select_Guitar no_wait
	SpawnScriptLater cag_custom_update_current_category params = {instrument_info = <instrument_info>}
	menu_finish \{car_helper_text}
endscript

script ui_cag_main_check_category 
	if ((<instrument_info>.desc_id) = guitar)
		GetGlobalTags savegame = ($cas_current_savegame) cas_helper_dialogue param = guitar_category
		category = <guitar_category>
		title = qs("Randomize Guitar?")
		text_body = qs("By switching guitar types, your old design will be lost. Would you like to continue?")
	else
		GetGlobalTags savegame = ($cas_current_savegame) cas_helper_dialogue param = bass_category
		category = <bass_category>
		title = qs("Randomize Bass?")
		text_body = qs("By switching bass types, your old design will be lost. Would you like to continue?")
	endif
	if (<is_esp> = 1)
		menu_category = esp
	else
		menu_category = gh
	endif
	Obj_GetID
	if (<category> != <menu_category>)
		ui_event_block event = menu_change state = UIstate_generic_dialogue data = {
			title = <title>
			text = <text_body>
			choose_yes_func = generic_event_replace
			choose_yes_params = {data = {state = <state> text = <text> instrument_info = <instrument_info> is_esp = <is_esp> container_id = <ObjID>}}
		}
	else
		ui_event_block paramsevent = menu_change state = <state> data = {instrument_info = <instrument_info> is_esp = <is_esp>}
	endif
endscript

script ui_destroy_cag_main 
	change \{randomize_from_cai_menu = 0}
	destroy_generic_menu
endscript

script ui_init_cag_main 
	ui_event_add_params hist_tex = <hist_tex>
	change_cas_instrument_if_necessary instrument = (<instrument_info>.instrument_name)
endscript

script ui_deinit_cag_main 
	change_cas_instrument_if_necessary \{instrument = none}
endscript

script cag_exit_save 
	if GotParam \{old_guitar_save_checksum}
		globaltag_getarraychecksum savegame = ($cas_current_savegame) array_name = player_guitar_save
		if NOT (<old_guitar_save_checksum> = <array_checksum>)
			if CheckForSignIn
				cag_update_photo
				ui_memcard_autosave event = menu_back data = {num_states = 2 savegame = ($cas_current_savegame)}
			else
				generic_event_back
			endif
		else
			generic_event_back
		endif
	elseif GotParam \{old_bass_save_checksum}
		globaltag_getarraychecksum savegame = ($cas_current_savegame) array_name = player_bass_save
		if NOT (<old_bass_save_checksum> = <array_checksum>)
			cas_get_player_status
			if CheckForSignIn local controller_index = ($<player_status>.controller)
				cag_update_photo
				ui_memcard_autosave event = menu_back data = {num_states = 2 savegame = ($cas_current_savegame)}
			else
				generic_event_back
			endif
		else
			generic_event_back
		endif
	endif
endscript

script cag_update_photo 
	destroy_generic_menu
	if ($cas_current_savegame >= 0)
		if is_completely_custom_musician id = ($cas_current_profile) savegame = ($cas_current_savegame)
			if (($cas_editing_new_character) = true)
				cas_save_photo_of_car character_name = ($cas_current_profile) savegame = ($cas_current_savegame)
			endif
		endif
	endif
endscript

script cag_custom_update_current_category 
	Wait \{3
		gameframes}
	begin
	if NOT cas_queue_is_busy \{in_queue_too}
		break
	endif
	Wait \{1
		gameframe}
	repeat
	<appearance> = ($cas_current_appearance)
	<body_part> = (<instrument_info>.body_part)
	<current_desc_id> = (<appearance>.<body_part>.desc_id)
	<array> = ($<body_part>)
	<category> = none
	GetArraySize <array>
	<i> = 0
	begin
	<desc_id> = (<array> [<i>].desc_id)
	if (<desc_id> = <current_desc_id>)
		if StructureContains Structure = (<array> [<i>]) is_esp
			<category> = esp
		elseif StructureContains Structure = (<array> [<i>]) Is_Metallica
			<category> = metallica
		else
			<category> = gh
		endif
		break
	endif
	<i> = (<i> + 1)
	repeat <array_size>
	if (<category> = none)
		ScriptAssert \{qs("\LUnable to find a matching desc_id")}
	endif
	if (<body_part> = CAS_Guitar_Body)
		SetGlobalTags savegame = ($cas_current_savegame) cas_helper_dialogue params = {guitar_category = <category>}
	else
		SetGlobalTags savegame = ($cas_current_savegame) cas_helper_dialogue params = {bass_category = <category>}
	endif
	SetButtonEventMappings \{unblock_menu_input}
endscript
