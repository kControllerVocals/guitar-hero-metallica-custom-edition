
script ui_create_leaderboard_empty 
	<text> = qs("Unable to access the leaderboards at this time, please try again later.")
	if NOT CheckForSignIn network_platform_only controller_index = ($lb_controller)
		if isXenon
			<text> = qs("You must be signed in to Xbox LIVE to access leaderboards. Please connect and try again.")
		elseif IsPs3
			<text> = qs("You must be signed in to the PlayStation®Network to access leaderboards. Please connect and try again.")
		else
			<text> = qs("You must be connected to the internet to access leaderboards.  Please connect and try again.")
		endif
	else
		if NOT NetSessionFunc \{func = is_lobby_available}
			<text> = qs("The game servers are currently unavailable. Please try again later.")
		endif
	endif
	if NetSessionFunc \{func = IsCableUnplugged}
		<text> = qs("Your network connection has been disconnected.")
	endif
	create_popup_warning_menu {
		player_device = ($lb_controller)
		title = qs("WARNING")
		textblock = {
			text = <text>
		}
		options = [
			{
				func = generic_event_back
				text = qs("CONTINUE")
				sound_func = nullscript
			}
		]
	}
	SetButtonEventMappings \{unblock_menu_input}
	destroy_loading_screen
endscript

script ui_destroy_leaderboard_empty 
	destroy_popup_warning_menu
endscript
