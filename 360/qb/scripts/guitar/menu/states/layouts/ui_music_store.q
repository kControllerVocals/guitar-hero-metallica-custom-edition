special_packs_text = qs("SPECIAL PACKS")

script ui_init_music_store 
	if IsPs3
		music_store_image_size = ($default_music_store_image_size_ps3)
		music_store_sound_size = ($default_music_store_sound_size_ps3)
		music_store_image_cache_size = ($default_music_store_image_cache_size_ps3)
		music_store_sound_cache_size = ($default_music_store_sound_cache_size_ps3)
	else
		music_store_image_size = ($default_music_store_image_size_xenon)
		music_store_sound_size = ($default_music_store_sound_size_xenon)
		music_store_image_cache_size = ($default_music_store_image_cache_size_xenon)
		music_store_sound_cache_size = ($default_music_store_sound_cache_size_xenon)
	endif
	InitMusicStoreCache {
		music_store_image_cache_size = <music_store_image_cache_size>
		music_store_sound_cache_size = <music_store_sound_cache_size>
		music_store_max_file_requests = ($default_music_store_max_file_requests)
		music_store_image_size = <music_store_image_size>
		music_store_sound_size = <music_store_sound_size>
		music_store_image_vram_size = ($default_music_store_image_vram_size)
		music_store_sound_vram_size = ($default_music_store_sound_vram_size)
	}
	create_music_store_menu exclusive_device = ($primary_controller) pad_back_script = music_store_exit_check
	music_store_create_ui_list
endscript

script ui_create_music_store 
	spawnscriptnow \{BG_Crowd_Front_End_Silence
		params = {
			immediate = 1
		}}
	spawnscriptnow \{Menu_Music_Off}
	if isXenon
		music_store_add_sort_info_item \{text = qs("Purchase using Microsoft® points.")
			focused}
	endif
	music_store_get_new_arrival_list
	music_store_get_list_subset list = <list> num_elements = 20
	add_music_store_item {
		text = qs("NEW ARRIVALS")
		choose_state = UIstate_music_store_newarrivals
		additional_focus_script = music_store_preview_list
		additional_focus_params = {list = <list>}
		additional_unfocus_script = music_store_end_preview_list
	}
	if GotParam \{list}
		AddArrayElement array = [] element = <list>
		RemoveParameter \{list}
	endif
	music_store_get_song_list
	music_store_get_list_subset list = <list> num_elements = 20
	add_music_store_item {
		text = qs("SONGS")
		choose_state = UIstate_music_store_songs
		additional_focus_script = music_store_preview_list
		additional_focus_params = {list = <list>}
		additional_unfocus_script = music_store_end_preview_list
	}
	if GotParam \{list}
		AddArrayElement array = <array> element = <list>
		RemoveParameter \{list}
	endif
	music_store_get_pack_list
	music_store_get_list_subset list = <list> num_elements = 20
	add_music_store_item {
		text = ($special_packs_text)
		choose_state = UIstate_music_store_specialpacks
		additional_focus_script = music_store_preview_list
		additional_focus_params = {list = <list>}
		additional_unfocus_script = music_store_end_preview_list
	}
	if GotParam \{list}
		AddArrayElement array = <array> element = <list>
		RemoveParameter \{list}
	endif
	music_store_get_album_list
	music_store_get_list_subset list = <list> num_elements = 20
	add_music_store_item {
		text = qs("ALBUMS")
		choose_state = UIstate_music_store_albums
		additional_focus_script = music_store_preview_list
		additional_focus_params = {list = <list>}
		additional_unfocus_script = music_store_end_preview_list
	}
	if GotParam \{list}
		AddArrayElement array = <array> element = <list>
		RemoveParameter \{list}
	endif
	music_store_main_preload_album_covers list_array = <array>
	add_gamertag_helper exclusive_device = ($primary_controller)
	add_user_control_helper \{text = qs("SELECT")
		button = green
		z = 100000}
	add_user_control_helper \{text = qs("BACK")
		button = red
		z = 100000}
	if NOT GotParam \{selected_index}
		NetSessionFunc \{obj = motd
			func = get_demonware_motd
			params = {
				callback = music_store_motd_callback
			}}
		spawnscriptnow \{music_store_wipe_in_options}
		spawnscriptnow \{music_store_wipe_in_album_info}
	else
		spawnscriptnow \{music_store_fade_in_options}
	endif
	LaunchEvent \{type = focus
		target = current_menu
		data = {
			child_index = 0
		}}
endscript

script ui_destroy_music_store 
	destroy_music_store_menus
	MusicStoreCancelAllRequests
endscript

script ui_deinit_music_store 
	destroy_music_store
	MusicStoreCancelAllRequests
	MusicStoreUnloadAll
	ShutdownMusicStoreCache
endscript

script music_store_exit_check 
	ui_event_get_stack
	GetArraySize <stack>
	if (<array_size> > 0)
		if (<stack> [0].base_name = 'music_store')
			if isXenon
				if MarketplaceFunc \{func = currently_downloading
						any}
					music_store_exit_check_warning \{title = qs("DOWNLOADING...")
						text = qs("You are currently downloading downloadable content. If you exit the Music Store before it's completed, it will not appear on the game setlist.")
						options = [
							{
								func = music_store_exit_check_warning_cancel
								text = qs("I WILL WAIT")
							}
							{
								func = music_store_exit_check_warning
								func_params = {
									text = qs("Use the 'Update Setlist' option on the Downloads menu to add any pending downloadable content to the game setlist.")
									options = [
										{
											func = music_store_exit_check_warning_exit
											text = qs("OK")
										}
									]
								}
								text = qs("EXIT ANYWAY")
							}
						]}
					return
				endif
			else
				if ($music_store_attempted_purchase = 1)
					music_store_exit_check_warning \{text = qs("If any downloads made have not yet completed upon exiting the Music Store, you may need to choose the 'Update Setlist' option from the Downloads menu to ensure they are added to the game setlist.")
						options = [
							{
								func = music_store_exit_check_warning_exit
								text = qs("EXIT STORE")
							}
							{
								func = music_store_exit_check_warning_cancel
								text = qs("GO BACK TO STORE")
							}
						]
						long_flag = {
							Long
						}}
					return
				endif
			endif
		endif
		if (<stack> [0].base_name = 'music_store_unavailible')
			return
		endif
		if (<stack> [0].base_name = 'music_store_scan_marketplace')
			return
		endif
	endif
	generic_event_back
endscript

script music_store_exit_check_warning 
	LaunchEvent \{type = unfocus
		target = current_menu}
	destroy_popup_warning_menu
	create_popup_warning_menu {
		title = <title>
		options = <options>
		textblock = {
			text = <text>
			dims = (800.0, 400.0)
			scale = 0.45000002
		}
		<long_flag>
		menu_pos = (640.0, 520.0)
		player_device = ($primary_controller)
	}
endscript

script music_store_exit_check_warning_cancel 
	destroy_popup_warning_menu
	LaunchEvent \{type = focus
		target = current_menu
		data = {
			child_index = 0
		}}
	add_gamertag_helper exclusive_device = ($primary_controller)
	add_user_control_helper \{text = qs("SELECT")
		button = green
		z = 100000}
	add_user_control_helper \{text = qs("BACK")
		button = red
		z = 100000}
endscript

script music_store_exit_check_warning_exit 
	destroy_popup_warning_menu
	LaunchEvent \{type = focus
		target = current_menu
		data = {
			child_index = 0
		}}
	generic_event_back \{nosound}
endscript

script music_store_get_list_subset 
	RequireParams \{[
			list
			num_elements
		]
		all}
	array = []
	GetArraySize <list>
	if (<array_size> > 0)
		if (<array_size> > <num_elements>)
			array_size = <num_elements>
		endif
		i = 0
		begin
		AddArrayElement array = <array> element = (<list> [<i>])
		i = (<i> + 1)
		repeat <array_size>
	endif
	return list = <array>
endscript
