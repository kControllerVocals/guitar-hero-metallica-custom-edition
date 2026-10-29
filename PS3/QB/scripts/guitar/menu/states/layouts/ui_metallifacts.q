
script ui_init_metallifacts 
endscript

script ui_create_metallifacts 
	menu_start_transition
	FormatText checksumname = metallifacts_global '%s_metallifacts' s = ($permanent_songlist_props.($current_song).name)
	if NOT GlobalExists name = <metallifacts_global>
		printf qs("\LNo metallifacts global structure exists for song %s, quitting...") s = ($permanent_songlist_props.($current_song).name)
		ui_event_wait \{event = menu_back}
		return
	endif
	if NOT StructureContains Structure = ($<metallifacts_global>) array
		printf qs("\LNo array exists in the metallifacts global structure for song %s, quitting...") s = ($permanent_songlist_props.($current_song).name)
		ui_event_wait \{event = menu_back}
		return
	endif
	($default_loading_screen.create) spawn
	tier_global = GH4_Career_Band_Songs
	part = Band
	get_all_exclusive_devices
	if (($current_num_players = 1))
		GetPlayerInfo \{1
			part}
		GetPlayerInfo \{1
			controller}
		exclusive_device = <controller>
	endif
	if (<part> = guitar)
		tier_global = GH4_Career_Guitar_Songs
	elseif (<part> = Bass)
		tier_global = GH4_Career_Bass_Songs
	elseif (<part> = drum)
		tier_global = GH4_Career_Drum_Songs
	elseif (<part> = Vocals)
		tier_global = GH4_Career_Vocals_Songs
	endif
	RemoveParameter \{part}
	CreateScreenElement {
		type = DescInterface
		id = metallifacts_container
		parent = root_window
		desc = 'metallifacts'
		event_handlers = [
			{pad_back generic_event_back params = {reset_menu_sound}}
		]
		exclusive_device = <exclusive_device>
	}
	metallifacts_container :SetTags {
		current_num_players = ($current_num_players)
		game_mode = ($game_mode)
		current_level = ($current_level)
		player1_status = ($player1_status)
		player2_status = ($player2_status)
		player3_status = ($player3_status)
		player4_status = ($player4_status)
		song_metallifacts_struct = ($<metallifacts_global>)
		looptime = 0
	}
	SetPlayerInfo \{1
		bot_play = 1}
	SetPlayerInfo \{2
		bot_play = 1}
	SetPlayerInfo \{3
		bot_play = 1}
	SetPlayerInfo \{4
		bot_play = 1}
	SetPlayerInfo \{1
		difficulty = easy_rhythm}
	SetPlayerInfo \{2
		difficulty = easy_rhythm}
	SetPlayerInfo \{3
		difficulty = easy_rhythm}
	SetPlayerInfo \{4
		difficulty = easy_rhythm}
	SetPlayerInfo \{1
		double_kick_drum = 0}
	SetPlayerInfo \{2
		double_kick_drum = 0}
	SetPlayerInfo \{3
		double_kick_drum = 0}
	SetPlayerInfo \{4
		double_kick_drum = 0}
	i = 1
	begin
	if (<i> > ($current_num_players))
		parts = {}
		j = 1
		begin
		GetPlayerInfo <j> part
		parts = {<parts> <part>}
		j = (<j> + 1)
		repeat (<i> - 1)
		part = guitar
		if (<part> = guitar)
			if StructureContains Structure = <parts> guitar
				part = Bass
			endif
		endif
		if (<part> = Bass)
			if StructureContains Structure = <parts> Bass
				part = drum
			endif
		endif
		if (<part> = drum)
			if StructureContains Structure = <parts> drum
				part = Vocals
			endif
		endif
		if (<part> = Vocals)
			if StructureContains Structure = <parts> Vocals
				ScriptAssert \{qs("\LThis is bad")}
			endif
		endif
		SetPlayerInfo <i> part = <part>
		ui_metallifacts_get_random_character player = <i>
		SetPlayerInfo <i> character_id = <character_id>
	endif
	i = (<i> + 1)
	repeat 4
	change \{game_mode = p4_quickplay}
	change \{current_num_players = 4}
	i = 1
	begin
	FormatText checksumname = tier 'tier%i' i = <i>
	if NOT StructureContains Structure = ($<tier_global>) <tier>
		break
	endif
	GetArraySize ($<tier_global>.<tier>.songs)
	j = 0
	begin
	if (($<tier_global>.<tier>.songs [<j>]) = $current_song)
		level = ($<tier_global>.<tier>.level)
		break
	endif
	j = (<j> + 1)
	repeat <array_size>
	if GotParam \{level}
		break
	endif
	i = (<i> + 1)
	repeat
	if GotParam \{level}
		change current_level = <level>
	else
		quickplay_choose_random_venue online_song = ($current_song)
	endif
	metallifacts_container :Obj_SpawnScriptNow \{ui_create_metallifacts_spawned}
endscript

script ui_create_metallifacts_spawned 
	menu_complete_transition
	start_song
	SoundBussUnlock \{User_Sfx}
	SetSoundBussParams {User_Sfx = {vol = (($Default_BussSet.User_Sfx.vol) - 100)}}
	SetSoundBussParams {Countoffs = {vol = (($Default_BussSet.Countoffs.vol) - 100)}}
	SetSoundBussParams {Crowd_One_Shots = {vol = (($Default_BussSet.Crowd_One_Shots.vol) -100)}}
	SoundBussLock \{User_Sfx}
	LaunchEvent \{target = metallifacts_container
		type = focus}
	add_user_control_helper \{text = qs("BACK")
		button = red
		z = 100}
	metallifacts_container :Obj_SpawnScriptNow \{ui_metallifacts_run}
	($default_loading_screen.destroy)
endscript

script ui_destroy_metallifacts 
	change \{is_metallifacts = 0}
	if ScreenElementExists \{id = metallifacts_container}
		metallifacts_container :GetTags
		change current_num_players = <current_num_players>
		change game_mode = <game_mode>
		change current_level = <current_level>
		change player1_status = <player1_status>
		change player2_status = <player2_status>
		change player3_status = <player3_status>
		change player4_status = <player4_status>
		DestroyScreenElement \{id = metallifacts_container}
		clean_up_user_control_helpers
	endif
endscript

script ui_deinit_metallifacts 
	SoundBussUnlock \{User_Sfx}
	SetSoundBussParams {User_Sfx = {vol = ($Default_BussSet.User_Sfx.vol)}}
	SetSoundBussParams {Countoffs = {vol = ($Default_BussSet.Countoffs.vol)}}
	SetSoundBussParams {Crowd_One_Shots = {vol = ($Default_BussSet.Crowd_One_Shots.vol)}}
	SoundBussLock \{User_Sfx}
	spawnscriptnow \{kill_gem_scroller}
endscript

script ui_metallifacts_run 
	GetSingleTag \{song_metallifacts_struct}
	GetSingleTag \{looptime}
	array = (<song_metallifacts_struct>.array)
	GetArraySize <array>
	begin
	GetSongTime
	if NOT CD
		FormatText TextName = time_text qs("%t") t = <songtime>
		SE_SetProps time_text = <time_text>
	endif
	songtime = (<songtime> - <looptime>)
	if (<array_size> > 0)
		i = 0
		begin
		curr = (<array> [<i>])
		if StructureContains Structure = <curr> text
			if (((<curr>.time) - 2.0) <= <songtime>)
				SE_SetProps \{message_text = qs("\L")}
			endif
		endif
		if ((<curr>.time) <= <songtime>)
			if StructureContains Structure = <curr> clear_text
				SE_SetProps \{message_text = qs("\L")}
			endif
			if StructureContains Structure = <curr> text
				SE_SetProps message_text = (<curr>.text)
			endif
			RemoveArrayElement array = <array> index = <i>
			GetArraySize <array>
			break
		endif
		i = (<i> + 1)
		repeat <array_size>
	else
		metallifacts_container :SetTags looptime = (<songtime> + <looptime>)
		metallifacts_container :Obj_SpawnScriptNow \{ui_metallifacts_run}
		break
	endif
	Wait \{1
		gameframe}
	repeat
endscript

script check_if_metallifacts_exists 
	RequireParams \{[
			song
		]
		all}
	FormatText checksumname = metallifacts_global '%s_metallifacts' s = ($permanent_songlist_props.<song>.name)
	if NOT GlobalExists name = <metallifacts_global>
		return \{false}
	endif
	return \{true}
endscript

script start_metallifacts 
	RequireParams \{[
			song
		]
		all}
	hide_glitch \{num_frames = 10}
	change current_song = <song>
	generic_event_choose \{state = uistate_play_song
		data = {
			metallifacts = 1
		}}
endscript

script debug_metallifacts 
	RequireParams \{[
			song
		]
		all}
	destroy_all_debug_menus
	start_metallifacts song = <song>
endscript

script ui_metallifacts_get_random_character 
	RequireParams \{[
			player
		]
		all}
	if (<player> > ($current_num_players))
		begin
		save_player = RandomInteger (1.0, 4.0)
		if (<save_player> < ($current_num_players + 1))
			break
		endif
		repeat
	endif
	GetPlayerInfo <save_player> controller
	GetSavegameFromController controller = <controller>
	GetPlayerInfo <player> part
	begin
	if (Random (@ 0 @ 1 @ 2 )= 0)
		if NOT cas_get_random_car savegame = <savegame> controller = <controller>
			cas_get_random_preset_character savegame = <savegame> controller = <controller> part = <part>
		endif
	else
		cas_get_random_preset_character savegame = <savegame> controller = <controller> part = <part>
	endif
	new_character_id = <character_id>
	halt = 1
	if (<part> = Vocals)
		get_musician_profile_struct_by_id id = <character_id> savegame = <savegame>
		get_is_female_from_appearance appearance = (<profile_struct>.appearance)
		if (<is_female> = 1)
			halt = 0
		endif
	endif
	i = 1
	begin
	GetPlayerInfo <i> character_id
	if (<character_id> = <new_character_id>)
		halt = 0
		break
	endif
	repeat <player>
	if (<halt> = 1)
		return {character_id = <new_character_id>}
	endif
	repeat
endscript
