
script ui_create_failed_three_times_warning 
	SoundEvent \{event = Fail_Screen_SFX}
	SoundEvent \{event = Menu_Warning_SFX_softer}
	disable_pause
	if NOT GotParam \{controller}
		<controller> = $primary_controller
	endif
	create_popup_warning_menu {
		textblock = {
			text = qs("Failed 3 times in a row.")
			dims = (800.0, 100.0)
			scale = 0.55
		}
		player_device = <controller>
		no_background
		force_menu_pos_off = (0.0, -200.0)
		options = [
			{
				func = failed_3_times_skip_never_pass
				text = qs("Skip Song - I Will never be able to pass")
				dims = (600.0, 100.0)
			}
			{
				func = failed_3_times_skip_maybe_pass
				text = qs("Skip Song - I Can probably pass with practice")
				dims = (600.0, 100.0)
			}
			{
				func = failed_3_times_retry
				text = qs("Retry")
				dims = (100.0, 100.0)
			}
		]
	}
endscript

script ui_destroy_failed_three_times_warning 
	destroy_popup_warning_menu
	enable_pause
endscript

script failed_3_times_skip_never_pass 
	if isXenon
		if NOT ($current_song = jamsession)
			WriteSongDataToFile \{failed = 1
				failed_3_times_option_chose = qs("\LNP")}
		endif
	endif
	failed_3_times_skip
endscript

script failed_3_times_skip_maybe_pass 
	if isXenon
		if NOT ($current_song = jamsession)
			WriteSongDataToFile \{failed = 1
				failed_3_times_option_chose = qs("\LCP")}
		endif
	endif
	failed_3_times_skip
endscript

script failed_3_times_skip 
	GameMode_GetType
	if (<type> = quickplay)
		quickplay_skip_song
	elseif (<type> = career)
		if NOT progression_check_intro_complete
			progression_set_intro_complete
			generic_event_back \{state = UIstate_mainmenu}
		else
			generic_event_back \{state = uistate_gig_posters}
		endif
	endif
endscript

script failed_3_times_retry 
	if isXenon
		if NOT ($current_song = jamsession)
			WriteSongDataToFile \{failed = 1}
		endif
	endif
	fail_song_menu_select_retry_song
endscript
