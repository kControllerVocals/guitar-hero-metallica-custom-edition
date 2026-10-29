script quickplay_choose_random_venue 
	if NOT GotParam \{can_change_level}
		can_change_level = 1
	endif
	if GotParam \{online_song}
		if (($gh_songlist_props.<online_song>.in_the_round) = 1)
			use_in_the_round_venue = 1
		endif
	else
		GetArraySize \{$quickplay_song_list}
		index = 0
		begin
		song = ($quickplay_song_list [<index>])
		if (<song> != null)
			if StructureContains Structure = ($gh_songlist_props.<song>) in_the_round
				if (($gh_songlist_props.<song>.in_the_round) = 1)
					use_in_the_round_venue = 1
					break
				endif
			endif
		endif
		index = (<index> + 1)
		repeat <array_size>
	endif
	unlocked_levels = []
	GetArraySize \{$LevelZoneArray}
	level_zone_array_size = <array_size>
	index = 0
	begin
	get_LevelZoneArray_checksum index = <index>
	if NOT StructureContains Structure = ($LevelZones.<level_checksum>) debug_only
		FormatText checksumname = venue_checksum 'venue_%s' s = ($LevelZones.<level_checksum>.name)
		GetGlobalTags <venue_checksum> param = unlocked
		add_venue = 0
		if (<unlocked> = 1)
			add_venue = 1
		endif
		if GotParam \{use_in_the_round_venue}
			if NOT StructureContains Structure = ($LevelZones.<level_checksum>) in_the_round
				add_venue = 0
			endif
		endif
		if (<level_checksum> = load_z_Studio2)
			add_venue = 0
		endif
		if (<add_venue> = 1)
			AddArrayElement array = <unlocked_levels> element = <level_checksum>
			<unlocked_levels> = <array>
		endif
	endif
	<index> = (<index> + 1)
	repeat <array_size>
	GetArraySize <unlocked_levels>
	if (<can_change_level> = 1)
		if (<array_size> != 0)
			begin
			GetRandomValue a = 0 b = (<array_size> - 1) Integer name = random_int
			repeat 20
			change current_level = (<unlocked_levels> [<random_int>])
		else
			change \{current_level = load_z_forum}
		endif
		if ($black_background = 1)
			change \{current_level = load_z_viewer}
		endif
	endif
endscript

script create_band \{async = 0}
	printf \{channel = AnimInfo
		qs("\Lcreate_band")}
	if ($disable_band = 1)
		return \{true}
	endif
	Band_ClearAnimTempo
	band_builder_create_band async = <async> min_time = <min_time>
	KillSpawnedScript \{name = PrepareBandForRenderUpdateLoop}
	spawnscriptnow \{PrepareBandForRenderUpdateLoop}
	debug_toggle_band_visiblity
	change \{enable_guitarist_camera_swapping = false}
	GetGlobalTags \{user_options
		attract_mode_fix = 1}
	if GotParam \{AirInstruments}
		if (<AirInstruments> = 1)
			change \{Cheat_AirInstruments = 1}
		else
			change \{Cheat_AirInstruments = 2}
		endif
	endif
	if GotParam \{InvisibleCharacters}
		if (<InvisibleCharacters> = 1)
			change \{Cheat_InvisibleCharacters = 1}
		else
			change \{Cheat_InvisibleCharacters = 2}
		endif
	endif
	BandManager_AirGuitarCheat
	BandManager_InvisibleCharactersCheat
	return \{true}
endscript

script BandManager_AirGuitarCheat 
	if ($Cheat_AirInstruments = 1)
		BandManager_HideAllInstruments
	elseif ($black_background = 1)
		BandManager_HideAllInstruments
	endif
endscript

script BandManager_InvisibleCharactersCheat 
	if ($Cheat_InvisibleCharacters = 1)
		BandManager_HideAllMusicians
	elseif ($black_background = 1)
		BandManager_HideAllMusicians
	endif
endscript

script GuitarEvent_StarPowerOn 
	KillSpawnedScript \{name = highway_pulse_black}
	if ($drum_solo_songtime_paused = 0)
		GH_Star_Power_Verb_On player = <player>
	endif
	if ($black_background = 0)
		FormatText checksumname = scriptID '%p_StarPower_StageFX' p = <player_text>
		SpawnScriptLater Do_StarPower_StageFX id = <scriptID> params = {<...>}
	endif
	StarPowerOn player = <player>
	if ($current_num_players = 4)
		if (all_players_using_starpower)
			spawnscriptnow \{play_group_star_power_animation}
			change \{achievements_121_jigowatts_flag = 1}
		endif
	endif
endscript

Default_Intro_Transition = {
	time = 3000
	ScriptTable = [
	]
}

script PlayMovieAndWait 
	return
endscript

script create_main_menu 
	change \{respond_to_signin_changed = 0}
	CloseSongLogFile
	reset_quickplay_song_list
	cas_destroy_all_characters
	reset_character_ids
	sanity_check_fix_deleted_characters
	band_builder_clear_random_appearances
	destroy_band
	destroy_bandname_viewport
	frontend_load_soundcheck
	reset_all_special_events
	clear_exclusive_devices
	SetMenuAutoRepeatTimes \{(0.3, 0.05)}
	disable_pause
	UnPauseGame
	change \{current_num_players = 1}
	change structurename = player1_status controller = ($primary_controller)
	disable_pause
	spawnscriptnow \{menu_music_on}
	if ($is_demo_mode = 1)
		demo_mode_disable = {rgba = [128 128 128 255] not_focusable}
	else
		demo_mode_disable = {}
	endif
	change \{should_reset_gig_posters_selection = 1}
	change \{setlist_previous_tier = 1}
	change \{setlist_previous_song = 0}
	change \{setlist_previous_tab = tab_setlist}
	change \{current_song = $startup_song}
	change \{end_credits = 0}
	change \{battle_do_or_die = 0}
	change \{battle_do_or_die_speed_scale = 1.0}
	change \{battle_do_or_die_attack_scale = 1.0}
	change \{rich_presence_context = presence_menus}
	change \{player1_device = 0}
	change \{player2_device = 1}
	change \{player3_device = 2}
	change \{player4_device = 3}
	change \{current_gig_number = 1}
	change \{current_progression_flag = none}
	change \{options_for_manage_band = 0}
	SetGlobalTags user_options Params = {unlock_Cheat_DebugLaunchViewer = 1}
	SetGlobalTags user_options Params = {unlock_Cheat_Line6Unlock = 1}
	SetGlobalTags user_options Params = {unlock_Cheat_AlwaysSlide = 1}
	SetGlobalTags user_options Params = {unlock_Cheat_AirInstruments = 1}
	SetGlobalTags user_options Params = {unlock_Cheat_InvisibleCharacters = 1}
	SetGlobalTags user_options Params = {unlock_Cheat_SnobCrowd = 1}
	SetGlobalTags user_options Params = {unlock_Cheat_PerformanceMode = 1}
	SetGlobalTags user_options Params = {unlock_Cheat_Hyperspeed = 1}
	SetGlobalTags user_options Params = {unlock_Cheat_AutoKick = 1}
	SetGlobalTags user_options Params = {unlock_Cheat_FreeDrum = 1}
	SetGlobalTags user_options Params = {unlock_Cheat_UnlockQuickplay = 1}
	SetGlobalTags user_options Params = {unlock_Cheat_UnlockATTBallpark = 1}
	SetGlobalTags user_options Params = {unlock_Cheat_GemColor = 1}
	SetGlobalTags user_options Params = {unlock_Cheat_FlameColor = 1}
	SetGlobalTags user_options Params = {unlock_Cheat_StarColor = 1}
	SetGlobalTags user_options Params = {unlock_Cheat_VocalFireball = 1}
	SetGlobalTags user_options Params = {unlock_Cheat_BucketHat = 1}
	SetGlobalTags user_options Params = {unlock_Cheat_ZombBand = 1}
	SetGlobalTags user_options Params = {unlock_Cheat_FreeDrum = 1}
	SetGlobalTags user_options Params = {unlock_Cheat_BlackHighway = 1}
	if ($new_message_of_the_day = 1)
		RunScriptOnScreenElement \{id = current_menu
			pop_in_new_downloads_notifier}
	endif
	if NOT ($invite_controller = -1)
		change \{invite_controller = -1}
		main_menu_select_online
		fadetoblack \{off
			time = 0}
	else
	endif
	if ($autolaunch_cas = 1 || $autolaunch_cas_artist = 1)
		change \{autolaunch_cas = 0}
		SpawnScriptLater main_menu_select_cas params = {device_num = ($primary_controller)}
	endif
	if ($autolaunch_jam = 1)
		change \{autolaunch_jam = 0}
		SpawnScriptLater main_menu_select_jam params = {device_num = ($primary_controller)}
	endif
	spawnscriptnow \{menu_music_fade
		params = {
			in
			time = 0.01
		}}
endscript