
script ui_init_downloads 
	jam_init_reverb
endscript

script ui_create_downloads 
	change \{respond_to_signin_changed = 1}
	change \{respond_to_signin_changed_func = none}
	menu_music_on
	make_menu_frontend \{screen = bassist
		title = qs("DOWNLOADS")}
	if isXenon
		add_menu_frontend_item text = qs("GHTUNES") pad_choose_script = set_primary_controller pad_choose_params = {device_num = <device_num> state = UIstate_jam_ghtunes require_live = 1 jam = 3}
	elseif IsPs3
		add_menu_frontend_item text = qs("GHTUNES") pad_choose_script = set_primary_controller pad_choose_params = {device_num = <device_num> state = UIstate_jam_ghtunes require_live = 1}
	endif
	CreateScreenElement {
		type = TextElement
		parent = <item_container_id>
		id = ghtunes_sm
		text = qs("\LSM")
		font = fontgrid_text_a6
		just = [left top]
		scale = 0.25
		pos = (215.0, 5.0)
		rgba = ($menu_unfocus_color)
	}
	<item_id> :SE_SetProps {
		event_handlers = [
			{focus retail_menu_focus params = {id = <id>}}
			{unfocus retail_menu_unfocus params = {id = <id>}}
		]
	}
	add_menu_frontend_item text = qs("MUSIC STORE") pad_choose_script = set_primary_controller pad_choose_params = {device_num = <device_num> state = UIstate_music_store_setup require_live = 1 musicstore = 1}
	add_menu_frontend_item \{text = qs("UPDATE SETLIST")
		pad_choose_script = ui_downloads_setlist_warning}
	LaunchEvent \{type = focus
		target = current_menu}
	menu_finish
endscript

script ui_destroy_downloads 
	generic_ui_destroy
endscript

script ui_deinit_downloads 
	jam_deinit_reverb
endscript

script ui_downloads_setlist_warning 
	LaunchEvent \{type = unfocus
		target = current_menu}
	destroy_popup_warning_menu
	create_popup_warning_menu {
		title = qs("Setlist Update")
		textblock = {
			text = qs("The setlist may not be fully updated with the latest songs you have, if you have downloaded new downloadable content while the game is running.\n\nThis option will update the setlist with any new downloadable content you may have.")
			dims = (800.0, 400.0)
			scale = 0.45000002
		}
		Long
		menu_pos = (640.0, 520.0)
		player_device = ($primary_controller)
		options = [
			{
				func = ui_downloads_setlist_warning_ok
				text = qs("OK")
			}
			{
				func = ui_downloads_setlist_warning_cancel
				text = qs("CANCEL")
			}
		]
	}
endscript

script ui_downloads_setlist_warning_ok 
	destroy_popup_warning_menu
	unload_songqpak
	get_savegame_from_controller controller = ($primary_controller)
	ui_event_wait event = menu_change data = {
		state = uistate_boot_download_scan savegame = <savegame> controller = ($primary_controller)
		event_params = {event = menu_back data = {state = UIstate_downloads}}
	}
	add_gamertag_helper exclusive_device = ($primary_controller)
	menu_finish
endscript

script ui_downloads_setlist_warning_cancel 
	destroy_popup_warning_menu
	LaunchEvent \{type = focus
		target = current_menu}
	add_gamertag_helper exclusive_device = ($primary_controller)
	menu_finish
endscript
