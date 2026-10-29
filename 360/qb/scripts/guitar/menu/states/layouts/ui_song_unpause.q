
script ui_create_song_unpause 
	if NOT CD
		if GlobalExists \{name = disable_unpause_countdown}
			if ($disable_unpause_countdown = 1)
				spawnscriptnow \{ui_song_unpause_done}
				return
			endif
		endif
	endif
	if ($transition_playing = true)
		spawnscriptnow \{ui_song_unpause_done}
		return
	endif
	if ($is_network_game)
		spawnscriptnow \{ui_song_unpause_done}
		return
	endif
	if ($game_mode = training)
		spawnscriptnow \{ui_song_unpause_done}
		return
	endif
	CreateScreenElement \{parent = root_window
		id = song_unpause
		type = DescInterface
		desc = 'song_unpause'
		z_priority = 10000
		alpha = 0.0
		just = [
			center
			center
		]
		pos_anchor = [
			center
			center
		]}
	song_unpause :obj_spawnscript \{ui_song_unpause}
	song_unpause :obj_spawnscript \{ui_song_unpause_animate}
	SoundEvent \{event = Generic_Menu_Back_SFX}
	LaunchEvent \{type = focus
		target = song_unpause}
endscript

script ui_destroy_song_unpause 
	DestroyScreenElement \{id = song_unpause}
	spawnscriptnow \{ui_destroy_song_spawned}
endscript

script ui_destroy_song_spawned 
	ui_event_wait_for_safe
	if ($playing_song = 1)
		if NOT ($game_mode = training)
			enable_pause
		endif
	endif
endscript

script ui_song_unpause 
	SetScriptCannotPause
	get_song_title song = ($current_song)
	FormatText TextName = title_text qs("Get Ready!\n\cD%s\c0 will resume in...") s = <song_title>
	SE_SetProps title_text = <title_text> number_text = qs("4")
	ui_event_wait_for_safe
	GetSongTime
	get_song_end_time song = ($current_song)
	printstruct <...> channel = UnPause
	if ((<songtime> < 0.0) || ((<songtime> * 1000) >= <total_end_time>))
		ui_song_unpause_done
		return
	endif
	songtime = (<songtime> * 1000)
	get_song_prefix song = ($current_song)
	FormatText checksumname = fretbar_array '%s_fretbars' s = <song_prefix> AddToStringLookup
	GetArraySize $<fretbar_array>
	i = 0
	begin
	if (<songtime> < ($<fretbar_array> [<i>]))
		i = (<i> - 1)
		break
	endif
	i = (<i> + 1)
	repeat <array_size>
	if (<i> < 4)
		i = 4
	endif
	song_unpause :SE_SetProps \{alpha = 1.0}
	times = [0.0 0.0 0.0 0.0]
	<time> = ($<fretbar_array> [(<i> + 1)])
	j = 0
	begin
	SetArrayElement ArrayName = times index = (3 - <j>) newvalue = (<time> - ($<fretbar_array> [(<i> - <j>)]))
	time = ($<fretbar_array> [(<i> - <j>)])
	j = (<j> + 1)
	repeat 4
	printstruct {} times = <times>
	SoundEvent \{event = Countoff_SFX_Sticks_Normal_Hard}
	Wait ((<times> [0]) / 1000.0) seconds ignoreslomo
	i = 3
	begin
	FormatText TextName = number_text qs("\L%i") i = <i>
	SE_SetProps number_text = <number_text>
	SoundEvent \{event = Countoff_SFX_Sticks_Normal_Hard}
	Wait ((<times> [(4 - <i>)]) / 1000.0) seconds ignoreslomo
	i = (<i> - 1)
	repeat 3
	ui_song_unpause_done
endscript

script ui_song_unpause_animate 
	OnExitRun \{ui_mainmenu_anim_in_spawned_cleanup}
	Wait \{0.04
		seconds}
	SE_SetProps \{scale = 1.75}
	ui_fx_set_blur \{amount = 1.6700001
		time = 0.04}
	Wait \{0.02
		seconds}
	SE_SetProps \{scale = 2.0}
	ui_fx_set_blur \{amount = 1.75
		time = 0.04}
	Wait \{0.02
		seconds}
	SE_SetProps \{scale = 1.75}
	ui_fx_set_blur \{amount = 1.6700001
		time = 0.04}
	Wait \{0.02
		seconds}
	ui_fx_set_blur \{amount = 1.3299999
		time = 0.04}
	SE_SetProps \{scale = 1.0}
	Wait \{0.04
		seconds}
	ui_fx_set_blur \{amount = 0.0
		time = 0.04}
	Wait \{0.04
		seconds}
endscript

script ui_song_unpause_done 
	SetScriptCannotPause
	ui_event_wait_for_safe
	if ($paused_for_hardware = 1)
		return
	endif
	do_gh3_unpause
	ui_event \{event = menu_back
		data = {
			state = uistate_gameplay
		}}
	if IsObjectScript
		Die
	endif
endscript

script ui_song_unpause_repause 
	SetScriptCannotPause
	SetSpawnInstanceLimits \{max = 1
		management = ignore_spawn_request}
	disable_pause
	KillSpawnedScript \{name = ui_song_unpause}
	ui_event_wait_for_safe
	if GotParam \{from_system}
		if ui_event_exists_in_stack \{name = 'gameplay'}
			ui_event \{event = menu_back
				data = {
					state = uistate_gameplay
				}}
		else
			ui_event \{event = menu_back}
		endif
	else
		printf \{qs("\LI'm here!")
			channel = here}
		generic_menu_pad_choose_sound
		ui_event event = menu_replace state = UIstate_pausemenu data = {device_num = <device_num>}
	endif
	ui_event_wait_for_safe
	enable_pause
endscript
