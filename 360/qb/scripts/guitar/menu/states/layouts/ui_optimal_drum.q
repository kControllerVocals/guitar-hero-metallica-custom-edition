
script ui_create_optimal_drum 
	create_popup_warning_menu {
		textblock = {
			text = qs("For the optimal drumming experience, use an official Guitar Hero Drum Controller!")
		}
		player_device = $primary_controller
		options = [
			{
				func = ui_optimal_drum_continue
				func_params = {event_params = <event_params>}
				text = qs("CONTINUE")
			}
		]
	}
endscript

script ui_destroy_optimal_drum 
	destroy_popup_warning_menu
endscript

script ui_optimal_drum_continue 
	SetSpawnInstanceLimits \{max = 1
		management = ignore_spawn_request}
	ui_event_wait <event_params>
endscript
