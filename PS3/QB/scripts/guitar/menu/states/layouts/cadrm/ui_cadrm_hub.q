
script ui_create_cadrm_hub 
	part = (<instrument_info>.body_part)
	make_generic_menu \{vmenu_id = create_cadrm_hub_vmenu
		title = qs("CUSTOMIZE DRUMS")
		show_history}
	setup_cas_menu_handlers \{vmenu_id = create_cadrm_hub_vmenu
		zoom_camera = 'cadrm_zoom'
		camera_list = [
			'cadrm_main'
			'cadrm_main_R'
			'cadrm_main'
			'cadrm_main_L'
		]}
	add_generic_menu_text_item {
		text = qs("SIZE")
		choose_state = UIstate_popout_select_part
		choose_state_data = {
			part = <part>
			text = qs("CHOOSE DRUM SET SIZE")
			cam_name = 'cad_select_size'
			choose_script = nullscript
			hist_tex = icon_cadrm_size is_popup
			color_wheel = ($guitar_colorwheel)
			return_stance = Stance_Select_Drum
			purchase_menu
			camera_list = ['cad_select_size' 'cadrm_main_R' 'cadrm_main' 'cadrm_main_L']
			zoom_camera = 'cadrm_zoom'
		}
	}
	get_section_index_from_desc_id part = <part> target_desc_id = Finishes
	if GotParam \{section_index}
		add_generic_menu_text_item {
			text = qs("SHELL")
			choose_state = UIstate_cap_artist_layer_popout
			choose_state_data = {part = <part> text = qs("FINISHES") section_index = <section_index> cam_name = 'cad_select_shell' hist_tex = icon_cadrm_shell is_popup color_wheel = ($guitar_colorwheel) return_stance = Stance_Select_Drum zoom_camera = 'cadrm_main' camera_list = ['cad_select_shell' 'cad_select_shell_R' 'cad_select_shell' 'cad_select_shell_L']}
		}
		RemoveParameter \{section_index}
	endif
	get_section_index_from_desc_id part = <part> target_desc_id = Details
	if GotParam \{section_index}
		add_generic_menu_text_item {
			text = qs("SKIN")
			choose_state = UIstate_cap_artist_layer_popout
			choose_state_data = {part = <part> text = qs("DETAILS") section_index = <section_index> cam_name = 'cad_select_skin' hist_tex = icon_cadrm_skin is_popup color_wheel = ($guitar_colorwheel) return_stance = Stance_Select_Drum zoom_camera = 'cadrm_main' camera_list = ['cad_select_skin' 'cadrm_skin_R' 'cad_select_skin' 'cadrm_skin_L']}
		}
		RemoveParameter \{section_index}
	endif
	if is_part_capable part = <part>
		add_generic_menu_text_item {
			text = qs("GRAPHICS")
			choose_state = UIstate_cap_main
			choose_state_data = {savegame = ($cas_current_savegame) part = <part> text = qs("GRAPHICS") cam_name = 'cad_select_skin' hist_tex = icon_graphics color_wheel = ($guitar_colorwheel) return_stance = Stance_Select_Drum zoom_camera = 'cadrm_main' camera_list = ['cad_select_skin' 'cadrm_skin_R' 'cad_select_skin' 'cadrm_skin_L']}
		}
	endif
	add_generic_menu_text_item {
		text = qs("HIGHWAY")
		choose_state = UIstate_cag_custom_highway
		choose_state_data = {instrument_info = <instrument_info>}
	}
	add_generic_menu_text_item {
		text = qs("STICKS")
		choose_state = UIstate_popout_select_part
		choose_state_data = {text = qs("CHOOSE DRUM STICKS") purchase_menu cam_name = 'cad_select_drumsticks' part = CAS_Drums_Sticks choose_script = generic_event_back is_popup hist_tex = icon_sticks color_wheel = ($guitar_colorwheel) stance = Stance_Select_DrumSticks return_stance = Stance_Select_Drum zoom_camera = 'cadrm_main' camera_list = ['cad_select_drumsticks' 'cad_select_drumsticks_R' 'cad_select_drumsticks' 'cad_select_drumsticks_L']}
	}
	GetGlobalTags savegame = ($cas_current_savegame) cas_helper_dialogue param = visit_cadrm
	if (<visit_cadrm> = 0)
		SetGlobalTags savegame = ($cas_current_savegame) cas_helper_dialogue params = {visit_cadrm = 1}
		ui_event_wait \{event = menu_change
			data = {
				state = UIstate_helper_dialogue
				is_popup
				life = 30
				text = qs("The CUSTOMIZE option allows you to build a custom drum kit. Changing the SIZE of the drum kit will undo any SHELL and SKIN changes that you make.")
			}}
	endif
	menu_finish \{car_helper_text}
endscript

script ui_return_cadrm_hub 
	clean_up_user_control_helpers
	menu_finish \{car_helper_text}
endscript

script ui_destroy_cadrm_hub 
	destroy_generic_menu
endscript
