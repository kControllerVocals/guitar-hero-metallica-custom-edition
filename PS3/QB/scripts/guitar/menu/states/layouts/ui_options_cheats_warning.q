
script ui_create_options_cheats_warning 
	if IsPs3
		text = qs("While the Always Drum Fill, Always Slide, or the Auto Kick cheat(s) are enabled you will no longer be able to earn trophies, earn high scores, or post scores to any leaderboard. Always Drum Fill, Always Slide, and Auto Kick cheats will not function during online play.")
	else
		text = qs("While the Always Drum Fill, Always Slide, or the Auto Kick cheat(s) are enabled you will no longer be able to earn achievements, earn high scores, or post scores to any leaderboard. Always Drum Fill, Always Slide, and Auto Kick cheats will not function when playing on Xbox LIVE.")
	endif
	create_popup_warning_menu {
		textblock = {
			text = <text>
		}
		player_device = ($primary_controller)
		no_background
		Long
		options = [
			{
				func = generic_event_back
				text = qs("CANCEL")
			}
			{
				func = ui_options_cheats_warning_back
				text = qs("CONTINUE")
			}
		]
	}
endscript

script ui_destroy_options_cheats_warning 
	destroy_popup_warning_menu
endscript

script ui_options_cheats_warning_back 
	SetSpawnInstanceLimits \{max = 1
		management = ignore_spawn_request}
	if Is_ui_event_running
		return
	endif
	spawnscriptnow \{ui_options_cheats_warning_back_spawned}
endscript

script ui_options_cheats_warning_back_spawned 
	stoprendering
	ui_event \{event = menu_back}
	ui_event_wait_for_safe
	ui_options_check_settings
	ui_event_wait_for_safe
	startrendering
endscript
