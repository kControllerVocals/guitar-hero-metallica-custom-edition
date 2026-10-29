
script ui_create_boot_attract 
	spawnscriptnow \{ui_boot_attract_spawned}
endscript

script ui_destroy_boot_attract 
	PauseGame
	KillSpawnedScript \{name = ui_boot_attract_spawned}
	if ScreenElementExists \{id = current_menu}
		current_menu :Die
	endif
	spawnscriptnow \{kill_gem_scroller}
	destroy_magazine_viewport
	setup_bg_viewport
	band_builder_clear_random_appearances
	reset_character_ids
	UnPauseGame
	spawnscriptnow \{Attract_Mode_Ends_Sound_Script}
	SpawnScriptLater \{Undo_attract_bots}
	change \{is_attract_mode = 0}
	spawnscriptnow \{menu_music_on}
endscript

script Undo_attract_bots 
	Wait \{2
		gameframes}
	printf \{'undo_attract_bots'}
	change \{structurename = player1_status
		bot_play = 0}
	change \{structurename = player2_status
		bot_play = 0}
	change \{structurename = player3_status
		bot_play = 0}
	change \{structurename = player4_status
		bot_play = 0}
endscript

script ui_boot_attract_spawned 
	change \{is_attract_mode = 1}
	create_loading_screen
	spawnscriptnow \{Attract_Mode_Start_Sound_Script}
	GetArraySize \{$Attract_Mode_Info}
	if (<array_size> = 1)
		attract_mode_index = 0
	else
		if ($last_attract_mode >= 0)
			GetRandomValue name = attract_mode_index Integer a = 0 b = (<array_size> - 2)
			if (<attract_mode_index> >= $last_attract_mode)
				attract_mode_index = (<attract_mode_index> + 1)
			endif
		else
			GetRandomValue name = attract_mode_index Integer a = 0 b = (<array_size> - 1)
		endif
		change last_attract_mode = <attract_mode_index>
	endif
	AddParams ($Attract_Mode_Info [<attract_mode_index>])
	change \{structurename = player1_status
		bot_play = 1}
	change \{structurename = player2_status
		bot_play = 1}
	change \{structurename = player3_status
		bot_play = 1}
	change \{structurename = player4_status
		bot_play = 1}
	change current_level = <level>
	change current_song = <song>
	change game_mode = <mode>
	change \{current_num_players = 4}
	change \{structurename = player1_status
		part = guitar}
	change \{structurename = player2_status
		part = Bass}
	change \{structurename = player3_status
		part = drum}
	change \{structurename = player4_status
		part = Vocals}
	change structurename = player1_status character_id = <guitar_character_id>
	change structurename = player2_status character_id = <bass_character_id>
	change structurename = player3_status character_id = <drum_character_id>
	change structurename = player4_status character_id = <vocals_character_id>
	p1_difficulty = expert
	p2_difficulty = expert
	destroy_band
	mark_unsafe_for_shutdown
	UnPauseGame
	Load_Venue
	start_gem_scroller song_name = <song> difficulty = <p1_difficulty> difficulty2 = <p2_difficulty> StartTime = 0 device_num = ($player1_status.controller)
	stoprendering
	destroy_loading_screen
	get_handlers_for_all_buttons \{event_script = ui_boot_attract_wait_for_input}
	CreateScreenElement {
		type = ContainerElement
		parent = root_window
		id = current_menu
		pos = (0.0, 0.0)
		just = [left center]
		z_priority = 0
		event_handlers = <event_handlers>
	}
	CreateScreenElement \{type = TextElement
		text = qs("PRESS ANY BUTTON TO ROCK!")
		pos = (640.0, 657.0)
		parent = current_menu
		rgba = [
			220
			220
			220
			255
		]
		font = fontgrid_text_a6
		just = [
			center
			bottom
		]
		scale = 0.45000002
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [
			149
			48
			48
			255
		]}
	CreateScreenElement \{type = SpriteElement
		parent = current_menu
		texture = logo_GH4_LoR_256
		dims = (225.0, 225.0)
		pos = (640.0, 490.0)
		scale = 1.5
		just = [
			center
			center
		]}
	LaunchEvent \{type = focus
		target = current_menu}
	fadetoblack \{off
		alpha = 1.0
		time = 0.0
		z_priority = -100
		no_wait}
endscript

script ui_boot_attract_wait_for_input 
	SetSpawnInstanceLimits \{max = 1
		management = ignore_spawn_request}
	wait_for_safe_shutdown
	ui_event \{event = menu_back}
endscript
Attract_Mode_Info = [
	{
		level = load_z_forum
		song = SadButTrue
		mode = p4_quickplay
		guitar_character_id = Kirk
		bass_character_id = Rob
		drum_character_id = LarsUlrich
		vocals_character_id = James
	}
	{
		level = load_z_MoP
		song = stonecoldcrazy
		mode = p4_quickplay
		guitar_character_id = Guitarist
		bass_character_id = bassist
		drum_character_id = Drummer
		vocals_character_id = singer
	}
	{
		level = load_z_Tushino
		song = fuel
		mode = p4_quickplay
		guitar_character_id = Kirk
		bass_character_id = Rob
		drum_character_id = LarsUlrich
		vocals_character_id = James
	}
	{
		level = load_z_Stone
		song = StackedActors
		mode = p4_quickplay
		guitar_character_id = judy
		bass_character_id = Pandora
		drum_character_id = Guitarist
		vocals_character_id = Johnny
	}
	{
		level = load_z_forum
		song = CreepingDeath
		mode = p4_quickplay
		guitar_character_id = Kirk
		bass_character_id = Rob
		drum_character_id = LarsUlrich
		vocals_character_id = James
	}
	{
		level = load_z_MoP
		song = whiplash
		mode = p4_quickplay
		guitar_character_id = Guitarist
		bass_character_id = bassist
		drum_character_id = Drummer
		vocals_character_id = singer
	}
	{
		level = load_z_Tushino
		song = BlackRiver
		mode = p4_quickplay
		guitar_character_id = Casey
		bass_character_id = axel
		drum_character_id = Lars
		vocals_character_id = Guitarist
	}
]
last_attract_mode = -1
is_attract_mode = 0
