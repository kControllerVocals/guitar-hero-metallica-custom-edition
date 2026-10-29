
script ui_create_music_store_songs_details 
	if GotParam \{selected_index}
		do_not_animate = {do_not_animate}
	endif
	old_history = <previous_history>
	music_store_set_previous_history previous_history = <previous_history> new_entry = (<song_struct>.name) <do_not_animate>
	if NOT GotParam \{purchased}
		purchased = (<song_struct>.purchased)
	endif
	if isXenon
		choose_state = UIstate_music_store_purchase
	else
		choose_state = UIstate_music_store_terms
	endif
	if (<purchased> = 1)
		text = qs("DOWNLOAD AGAIN")
	else
		text = qs("PURCHASE")
	endif
	item_type = add_music_store_purchase_item
	if StructureContains Structure = <song_struct> album_pack_only
		text = qs("NOT SOLD SEPARATELY")
		not_focusable = {not_focusable}
		item_type = add_music_store_item
	endif
	if (<purchased> = 1)
		if NOT music_store_purchased_individually code = (<song_struct>.code)
			item_type = nullscript
		endif
	endif
	if ((StructureContains Structure = <song_struct> album_pack_only) || (isXenon) || (<purchased> = 0))
		<item_type> {
			text = <text>
			price = (<song_struct>.price)
			price_fraction = (<song_struct>.price_fraction)
			purchased = <purchased>
			<not_focusable>
			choose_state = <choose_state>
			choose_state_data = {previous_history = <previous_history> purchase_struct = {<song_struct> purchased = <purchased>}}
		}
	endif
	if GotParam \{purchase_item_id}
		if (<purchased> = 1)
			if MarketplaceFunc func = currently_downloading id = (<song_struct>.code)
				SetScreenElementProps id = <purchase_item_id> options_list_item_text_text = qs("DOWNLOADING...") options_list_item_text_rgba = [50 50 50 255]
				SetScreenElementProps id = <purchase_item_id> not_focusable
				<purchase_item_id> :Obj_SpawnScriptNow music_store_check_download_status params = {id = (<song_struct>.code)}
			endif
		endif
	endif
	add_music_store_item {
		text = qs("PREVIEW")
		pad_choose_script = music_store_request_preview_music
		pad_choose_params = {music_name = (<song_struct>.asset_name)}
	}
	if NOT GotParam \{no_additional_artist_album}
		if music_store_get_pack_list_contents song_struct = <song_struct>
			music_store_sort_song_list list = <pack_contents>
			add_music_store_item {
				text = qs("MORE FROM THIS ALBUM/PACK")
				replace_state = UIstate_music_store_song_list
				replace_state_data = {previous_history = <old_history> list = <sorted_list> more_album = (<song_struct>.album)}
			}
			RemoveParameter \{sorted_list}
		endif
		music_store_get_master_list
		if StructureContains \{Structure = song_struct
				artist}
			music_store_filter_list list = <list> filter = type value = song
			music_store_filter_list list = <filtered_list> filter = artist value = (<song_struct>.artist)
		endif
		music_store_sort_song_list list = <filtered_list>
		add_music_store_item {
			text = qs("MORE FROM THIS ARTIST")
			replace_state = UIstate_music_store_song_list
			replace_state_data = {previous_history = <old_history> list = <sorted_list> more_artist = (<song_struct>.artist)}
		}
	endif
	music_store_set_song_info_items option_struct = <song_struct>
	spawnscriptnow \{music_store_fade_in_options}
	add_gamertag_helper exclusive_device = ($primary_controller)
	add_user_control_helper \{text = qs("SELECT")
		button = green
		z = 100000}
	add_user_control_helper \{text = qs("BACK")
		button = red
		z = 100000}
	LaunchEvent \{type = focus
		target = current_menu
		data = {
			child_index = 0
		}}
	spawnscriptnow music_store_request_album_cover_change params = {texture_name = (<song_struct>.asset_name) no_animation = 1}
endscript

script ui_destroy_music_store_songs_details 
	music_store_kill_preview_music
	destroy_music_store_menus
endscript

script ui_init_music_store_songs_details 
	if StructureContains Structure = <song_struct> asset_name
		MusicStoreCancelAllRequests
		AddArrayElement array = [] element = (<song_struct>.asset_name)
		MusicStoreRequestSounds music = <array>
	endif
endscript

script ui_deinit_music_store_songs_details 
	MusicStoreCancelAllRequests
endscript
