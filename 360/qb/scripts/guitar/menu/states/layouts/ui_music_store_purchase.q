
script ui_create_music_store_purchase 
	if IsPs3
		music_store_turn_on_ps_store_logo
	endif
	music_store_turn_on_rating
	if GlobalExists \{name = GH4_DLC_CopyrightText}
		music_store_add_sort_info_item text = ($GH4_DLC_CopyrightText) focused
	endif
	if (<purchase_struct>.purchased = 0)
		FormatText TextName = text qs("YOU ARE ABOUT TO PURCHASE ''%i'' by %a.\nDO YOU ACCEPT THIS PURCHASE?") i = (<purchase_struct>.name) a = (<purchase_struct>.artist)
		title = qs("PURCHASE")
	else
		FormatText TextName = text qs("DOWNLOADING ''%i'' by %a.") i = (<purchase_struct>.name) a = (<purchase_struct>.artist)
		title = qs("DOWNLOAD")
	endif
	add_music_store_purchase_dialogue {
		text = <text>
		price = (<purchase_struct>.price)
		price_fraction = (<purchase_struct>.price_fraction)
		purchased = (<purchase_struct>.purchased)
		title = <title>
	}
	if (<purchase_struct>.purchased = 0)
		add_music_store_item \{text = qs("CANCEL")
			pad_choose_script = generic_event_back
			pad_choose_params = {
				nosound
			}}
		add_music_store_item {
			text = qs("ACCEPT")
			pad_choose_script = ui_music_store_purchase_accepted
			pad_choose_params = {purchase_struct = <purchase_struct>}
		}
	endif
	spawnscriptnow \{music_store_fade_in_options}
	music_store_set_previous_history previous_history = <previous_history> new_entry = qs("PURCHASE")
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
	if (<purchase_struct>.purchased = 1)
		LaunchEvent \{type = unfocus
			target = current_menu}
		spawnscriptnow ui_music_store_purchase_accepted params = {purchase_struct = <purchase_struct>}
	endif
endscript

script ui_destroy_music_store_purchase 
	destroy_music_store_menus
	music_store_turn_off_rating
	if IsPs3
		music_store_turn_off_ps_store_logo
	endif
endscript

script ui_init_music_store_purchase 
	music_store_turn_off_motd
endscript

script ui_deinit_music_store_purchase 
	music_store_turn_on_motd
endscript

script ui_music_store_purchase_add_info_items 
	RequireParams \{[
			option_struct
		]
		all}
	if ((<option_struct>.type) = song)
		music_store_set_song_info_items option_struct = <option_struct>
	elseif ((<option_struct>.type) = album)
		music_store_set_album_info_items option_struct = <option_struct>
	elseif ((<option_struct>.type) = pack)
		music_store_set_pack_info_items option_struct = <option_struct>
	else
		ScriptAssert qs("\Lui_music_store_purchase_add_info_items was given an invalid type for item %i") i = (<purchase_struct>.name) DoNotResolve
	endif
endscript

script ui_music_store_purchase_accepted 
	music_store_purchase_content purchase_struct = <purchase_struct>
	if NOT ui_event_exists_in_stack \{name = 'music_store_unavailible'}
		if ($shutdown_game_for_signin_change_flag = 0)
			ui_event event = menu_replace data = {state = UIstate_music_store_scan_marketplace data = {purchase_struct = <purchase_struct>}}
		endif
	endif
endscript
