
script ui_create_music_store_specialpacks_details 
	if GotParam \{selected_index}
		do_not_animate = {do_not_animate}
	endif
	music_store_set_previous_history previous_history = <previous_history> new_entry = (<pack_struct>.name) <do_not_animate>
	if NOT GotParam \{purchased}
		purchased = (<pack_struct>.purchased)
		if (<purchased> = 0)
			if StructureContains Structure = <pack_struct> pack_contents
				music_store_pack_contents_purchased pack_contents = (<pack_struct>.pack_contents)
			endif
		endif
	endif
	if isXenon
		choose_state = UIstate_music_store_purchase
	else
		choose_state = UIstate_music_store_terms
	endif
	if (<purchased> = 1)
		text = qs("DOWNLOAD AGAIN")
		contents_purchased = {contents_purchased}
	else
		text = qs("PURCHASE")
	endif
	item_type = add_music_store_purchase_item
	if StructureContains Structure = <pack_struct> album_pack_only
		text = qs("NOT SOLD SEPARATELY")
		not_focusable = {not_focusable}
		item_type = add_music_store_item
	endif
	if (<purchased> = 1)
		if NOT music_store_purchased_individually code = (<pack_struct>.code)
			item_type = nullscript
		endif
	endif
	if ((StructureContains Structure = <pack_struct> album_pack_only) || (isXenon) || (<purchased> = 0))
		<item_type> {
			text = <text>
			price = (<pack_struct>.price)
			price_fraction = (<pack_struct>.price_fraction)
			purchased = <purchased>
			<not_focusable>
			choose_state = <choose_state>
			choose_state_data = {previous_history = <previous_history> purchase_struct = {<pack_struct> purchased = <purchased>}}
		}
	endif
	if GotParam \{purchase_item_id}
		if (<purchased> = 1)
			if MarketplaceFunc func = currently_downloading id = (<pack_struct>.code)
				SetScreenElementProps id = <purchase_item_id> options_list_item_text_text = qs("DOWNLOADING...") options_list_item_text_rgba = [50 50 50 255]
				SetScreenElementProps id = <purchase_item_id> not_focusable
				<purchase_item_id> :Obj_SpawnScriptNow music_store_check_download_status params = {id = (<pack_struct>.code)}
			endif
		endif
	endif
	music_store_set_pack_info_items option_struct = <pack_struct>
	music_store_album_song_list pack_struct = <pack_struct> <contents_purchased>
	music_store_sort_song_list list = <list>
	add_music_store_item {
		text = qs("VIEW SONG LIST")
		choose_state = UIstate_music_store_songs_additional
		choose_state_data = {previous_history = <previous_history> list = <sorted_list> pack_list = (<pack_struct>.name)}
	}
	spawnscriptnow \{music_store_fade_in_options}
	spawnscriptnow music_store_request_album_cover_change params = {texture_name = (<pack_struct>.asset_name) no_animation = 1}
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
endscript

script ui_destroy_music_store_specialpacks_details 
	destroy_music_store_menus
endscript
