
script ui_create_invalid_instrument 
	change \{band_mode_menu_tags = none}
	options = [
		{
			func = generic_event_back
			func_params = {state = UIstate_band_mode}
			text = qs("GO BACK")
		}
		{
			func = generic_event_back
			func_params = {state = UIstate_mainmenu}
			text = qs("RETURN TO MAIN MENU")
		}
	]
	if GotParam \{from_faceoff}
		options = [
			{
				func = generic_event_back
				func_params = {state = uistate_select_controller}
				text = qs("GO BACK")
			}
			{
				func = generic_event_back
				func_params = {state = UIstate_mainmenu}
				text = qs("RETURN TO MAIN MENU")
			}
		]
	endif
	create_popup_warning_menu {
		textblock = {
			text = qs("An invalid combination of controllers and/or instruments has been detected.")
			dims = (800.0, 400.0)
			scale = 0.55
		}
		player_device = $primary_controller
		no_background
		menu_pos = (640.0, 520.0)
		options = <options>
	}
endscript

script ui_destroy_invalid_instrument 
	destroy_popup_warning_menu
endscript
