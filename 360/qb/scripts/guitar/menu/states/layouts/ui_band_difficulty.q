
script ui_create_band_difficulty 
	spawnscriptnow ui_create_band_difficulty_spawned params = <...>
endscript

script ui_create_band_difficulty_spawned 
	frontend_load_soundcheck \{loadingscreen}
	xenon_singleplayer_session_begin_uninit
	spawnscriptnow \{xenon_singleplayer_session_complete_uninit
		params = {
			song_failed
		}}
	spawnscriptnow \{task_menu_default_anim_in
		params = {
			base_name = 'band_hub'
		}}
	if GotParam \{p2}
		cas_set_object_node_pos \{player = 1
			node = z_Soundcheck_TRG_Waypoint_Player1_Start}
		cas_set_object_node_pos \{player = 2
			node = z_Soundcheck_TRG_Waypoint_Player4_Start}
		get_savegame_from_controller controller = ($player1_status.controller)
		cas_queue_new_character_profile id = ($player1_status.character_id) player = 1 savegame = <savegame>
		printf 'requesting %s for %d' s = <character_id> d = 1
		get_savegame_from_controller controller = ($player2_status.controller)
		cas_queue_new_character_profile id = ($player2_status.character_id) player = 2 savegame = <savegame>
		printf 'requesting %s for %d' s = <character_id> d = 2
	else
		cas_set_object_node_pos \{player = 1
			node = z_Soundcheck_TRG_Waypoint_Player1_Start}
		cas_set_object_node_pos \{player = 2
			node = z_Soundcheck_TRG_Waypoint_Player2_Start}
		cas_set_object_node_pos \{player = 3
			node = z_Soundcheck_TRG_Waypoint_Player3_Start}
		cas_set_object_node_pos \{player = 4
			node = z_Soundcheck_TRG_Waypoint_Player4_Start}
		if ($band_mode_mode = career)
			if NOT progression_check_intro_complete
				intro = 0
			endif
		endif
		i = 0
		begin
		controller = ($band_mode_actual_devices [<i>])
		SetPlayerInfo (<i> + 1) controller = <controller>
		if NOT GotParam \{intro}
			if (<controller> < 4)
				GetPlayerInfo (<i> + 1) is_local_client
				if (<is_local_client> = 1)
					GetPlayerInfo (<i> + 1) character_id
					get_savegame_from_controller controller = <controller>
					cas_queue_new_character_profile id = <character_id> player = (<controller> + 1) savegame = <savegame>
					printf 'requesting %s for %d' s = <character_id> d = (<controller> + 1)
				endif
			endif
		endif
		i = (<i> + 1)
		repeat ($current_num_players)
	endif
	change \{respond_to_signin_changed_all_players = 1}
	set_focus_color \{rgba = [
			0
			0
			0
			255
		]}
	set_unfocus_color \{rgba = [
			0
			0
			0
			255
		]}
	CreateScreenElement {
		parent = root_window
		id = MyInterfaceElement
		type = DescInterface
		desc = 'band_play'
		tags = {continue_data = <continue_data>}
	}
	MyInterfaceElement :SE_GetProps
	if MyInterfaceElement :Desc_ResolveAlias \{name = alias_hmenu}
		band_hmenu = <resolved_id>
	endif
	if GotParam \{p2}
		<band_hmenu> :SE_SetProps spacing_between = 400
	endif
	menu_array = []
	desc_array = []
	i = 0
	j = 1
	begin
	ResolveScreenElementId id = [
		{id = <band_hmenu>}
		{index = <i>}
	]
	if GotParam \{p2}
		if (<i> = 2)
			DestroyScreenElement id = <resolved_id>
			i = 1
		endif
	endif
	if ScreenElementExists id = <resolved_id>
		curr_desc = <resolved_id>
		AddArrayElement array = <desc_array> element = <resolved_id>
		desc_array = <array>
		<resolved_id> :Desc_ResolveAlias name = alias_menu
		continue = 0
		begin
		GetPlayerInfo <j> controller
		if GotParam \{p2}
			<cont_check> = 0
			begin
			if (<cont_check> = <controller>)
				continue = 1
				break
			endif
			<cont_check> = (<cont_check> + 1)
			repeat 4
			if (<continue> = 1)
				break
			endif
		else
			if (<i> = <controller>)
				continue = 1
				break
			endif
		endif
		j = (<j> + 1)
		repeat ($current_num_players)
		if GotParam \{p2}
			j = 2
		else
			j = 1
		endif
		if (<continue> = 1)
			if NOT GotParam \{p2}
				ui_get_controller_parts_allowed controller = <i>
			else
				switch ($g_head_to_head_instrument_type)
					case guitar
					allowed = {guitar Bass}
					case Drums
					allowed = {drum}
					case Vocals
					GameMode_GetType
					if (<type> != battle)
						if ($allow_controller_for_all_instruments = 0)
							allowed = {Vocals}
						else
							allowed = {guitar Bass drum Vocals}
						endif
					else
						allowed = {}
					endif
				endswitch
			endif
			set_menu = instrument
			if GotParam \{p2}
				<resolved_id> :SetTags {
					menu = <set_menu>
					instrument = none
					difficulty = none
					controller = <controller>
					allowed = <allowed>
					index = <i>
				}
			else
				if ($band_mode_mode = career)
					if progression_check_intro_complete
						set_menu = root
					endif
				endif
				<resolved_id> :SetTags {
					menu = <set_menu>
					instrument = none
					difficulty = none
					controller = <i>
					allowed = <allowed>
					index = <i>
				}
				controller = <i>
			endif
			if (<set_menu> = instrument)
				if (($allow_controller_for_all_instruments) = 0)
					GetActiveControllers
					if ((<active_controllers> [<controller>]) = 1)
						if NOT IsGuitarController controller = <controller>
							if IsDrumController controller = <controller>
								<resolved_id> :SetTags {
									menu = lefty
									instrument = drum
								}
							else
								<resolved_id> :SetTags {
									menu = lefty
									instrument = Vocals
								}
							endif
						endif
					else
						<resolved_id> :SetTags {
							menu = instrument
							instrument = none
						}
					endif
					GameMode_GetType
					if ((<type> = battle) || (<type> = faceoff) || (<type> = pro_faceoff))
						if ($g_head_to_head_instrument_type = Drums)
							<resolved_id> :SetTags {
								menu = lefty
								instrument = drum
							}
						elseif ($g_head_to_head_instrument_type = Vocals)
							<resolved_id> :SetTags {
								menu = lefty
								instrument = Vocals
							}
						else
							<resolved_id> :SetTags {
								menu = instrument
								instrument = none
							}
						endif
					endif
				endif
			endif
			if NOT ($game_mode = p2_faceoff || $game_mode = p2_pro_faceoff || ($game_mode = p2_battle))
				if (<controller> = $band_mode_current_leader)
					<curr_desc> :SE_SetProps leader_indicator_alpha = 1
				endif
			else
				<curr_desc> :SE_SetProps leader_indicator_alpha = 0
			endif
			<resolved_id> :SetTags {index = <i>}
			if NOT ($band_mode_menu_tags_instrument = none)
				k = 0
				begin
				if StructureContains Structure = ($band_mode_menu_tags_instrument [<k>]) controller
					if (<controller> = ($band_mode_menu_tags_instrument [<k>].controller))
						<resolved_id> :SetTags {($band_mode_menu_tags_instrument [<k>])}
						GameMode_GetType
						if ((<type> = battle) || (<type> = faceoff) || (<type> = pro_faceoff))
							if ($g_head_to_head_instrument_type = Drums)
								<resolved_id> :SetTags {
									menu = lefty
									instrument = drum
								}
							elseif ($g_head_to_head_instrument_type = Vocals)
								<resolved_id> :SetTags {
									menu = lefty
									instrument = Vocals
								}
							else
								<resolved_id> :SetTags {
									menu = instrument
									instrument = none
								}
							endif
						endif
						break
					endif
				endif
				k = (<k> + 1)
				repeat 4
			endif
			<resolved_id> :SetProps event_handlers = [
				{pad_up ui_band_mode_scroll_sound params = {up}}
				{pad_down ui_band_mode_scroll_sound params = {down}}
			]
			if NOT CD
				<resolved_id> :SetProps event_handlers = [
					{pad_alt2 cas_toggle_free_cam}
				]
			endif
			AddArrayElement array = <menu_array> element = <resolved_id>
			menu_array = <array>
		else
			<resolved_id> :SE_GetParentId
			<parent_id> :SE_SetProps not_focusable alpha = 0.0
			<curr_desc> :SE_SetProps reposition_pos = (0.0, 500.0)
		endif
	endif
	i = (<i> + 1)
	repeat 4
	if NOT ($band_mode_menu_tags_instrument = none)
		MyInterfaceElement :SetTags {($band_mode_menu_tags_instrument [4])}
	endif
	change \{band_mode_menu_tags_instrument = none}
	MyInterfaceElement :SetTags {menus = <menu_array> descs = <desc_array>}
	GetArraySize <menu_array>
	i = 0
	begin
	resolved_id = (<menu_array> [<i>])
	<resolved_id> :GetSingleTag controller
	<resolved_id> :GetSingleTag index
	if GotParam \{p2}
		RunScriptOnScreenElement id = <resolved_id> ui_band_mode_create_menu params = {player_index = <i>}
	else
		RunScriptOnScreenElement id = <resolved_id> ui_band_mode_create_menu
	endif
	name = qs("\L")
	NetSessionFunc func = get_gamertag params = {controller = <controller>}
	if GotParam \{name}
		band_gamertag_rename gamertag = <name> index = <index>
	endif
	<resolved_id> :Obj_SpawnScriptNow ui_band_instrument_check_controllers
	i = (<i> + 1)
	repeat <array_size>
	if (($game_mode = p2_battle) || ($game_mode = p2_faceoff) || ($game_mode = p2_pro_faceoff))
		MyInterfaceElement :SE_SetProps \{ticker_alpha = 0.0}
	endif
	LaunchEvent \{type = focus
		target = MyInterfaceElement}
	ui_band_mode_helper_text
	destroy_loading_screen \{force}
endscript

script ui_band_instrument_check_controllers 
	GetTags
	<my_allowed> = <allowed>
	begin
	if (<menu> = instrument)
		ui_get_controller_parts_allowed controller = <controller> filter_by_character
		if NOT CompareStructs struct1 = <allowed> struct2 = <my_allowed>
			SetTags allowed = <allowed>
			<my_allowed> = <allowed>
			ui_band_mode_update_menu
		endif
		Wait \{10
			gameframes}
	else
		return
	endif
	repeat
endscript

script ui_destroy_band_difficulty 
	KillSpawnedScript \{name = ui_create_band_difficulty_spawned}
	DestroyScreenElement \{id = MyInterfaceElement}
	generic_ui_destroy
endscript

script ui_band_difficulty_continue 
	if Is_ui_event_running
		return
	endif
	GetTags
	num_ready = 0
	player = 1
	temp_parts = [arse , arse , arse , arse]
	GetArraySize <menus>
	i = 0
	begin
	<curr_id> = (<menus> [<i>])
	<curr_id> :GetTags
	if (<menu> = ready2)
		<num_ready> = (<num_ready> + 1)
		get_player_num_from_controller controller_index = <controller>
		SetArrayElement ArrayName = temp_parts index = (<player_num> -1) newvalue = <instrument>
		SetPlayerInfo <player_num> difficulty = <difficulty>
		if GotParam \{pending_drum_difficulty_double_kick}
			SetPlayerInfo <player_num> double_kick_drum = <pending_drum_difficulty_double_kick>
			RemoveParameter \{pending_drum_difficulty_double_kick}
		else
			SetPlayerInfo <player_num> double_kick_drum = 0
		endif
	endif
	i = (<i> + 1)
	repeat <array_size>
	GameMode_GetProperty \{prop = faceoff}
	if (<faceoff> = true)
		if (<instrument> = Vocals)
			if NOT vocals_mic_distribution_is_valid
				GetPlayerInfo <invalid_mic_player> controller
				printf 'ui_band_difficulty_continue: Player %p (controller %c) is missing their mic.' p = <invalid_mic_player> c = <controller>
				invalid_controller = <controller>
				i = 0
				begin
				<curr_id> = (<menus> [<i>])
				<curr_id> :GetSingleTag controller
				if (<controller> = <invalid_controller>)
					<curr_id> :SetTags {menu = instrument}
					break
				endif
				i = (<i> + 1)
				repeat <array_size>
				ui_band_mode_save_tags \{instrument}
				generic_event_choose state = uistate_select_instrument_warning data = {instrument = Vocals controller = <controller>}
				return
			endif
		endif
	endif
	if NOT (<num_ready> = $current_num_players)
		return
	else
		register_new_progression_atoms \{Career_Band}
	endif
	<player> = 1
	begin
	part = (<temp_parts> [(<player> - 1)])
	if (<part> = arse)
		ScriptAssert \{'Yes, something is very wrong here'}
	endif
	SetPlayerInfo <player> part = <part>
	player = (<player> + 1)
	repeat <num_ready>
	cas_destroy_all_characters
	GameMode_GetType
	if (<type> = career || <type> = quickplay)
		num_guitar = 0
		num_bass = 0
		num_vocals = 0
		num_drum = 0
		player = 1
		begin
		part = (<temp_parts> [(<player> - 1)])
		switch (<part>)
			case guitar
			num_guitar = (<num_guitar> + 1)
			case Bass
			num_bass = (<num_bass> + 1)
			case Vocals
			num_vocals = (<num_vocals> + 1)
			case drum
			num_drum = (<num_drum> + 1)
		endswitch
		player = (<player> + 1)
		repeat <num_ready>
		if (<num_guitar> > 1 || <num_bass> > 1 || <num_vocals> > 1 || <num_drum> > 1)
			generic_event_choose \{state = uistate_invalid_instrument}
			return
		endif
		if ($allow_controller_for_all_instruments = 0)
			num_guitar = 0
			num_vocals = 0
			num_drum = 0
			i = 0
			begin
			<curr_id> = (<menus> [<i>])
			<curr_id> :GetSingleTag controller
			<curr_id> :GetSingleTag menu
			<curr_id> :GetSingleTag instrument
			if (<menu> = ready2)
				if IsGuitarController controller = <controller>
					num_guitar = (<num_guitar> + 1)
					if NOT (<instrument> = guitar || <instrument> = Bass)
						generic_event_choose \{state = uistate_invalid_instrument}
						return
					endif
				elseif IsDrumController controller = <controller>
					num_drum = (<num_drum> + 1)
					if NOT (<instrument> = drum)
						generic_event_choose \{state = uistate_invalid_instrument}
						return
					endif
				else
					num_vocals = (<num_vocals> + 1)
					if NOT (<instrument> = Vocals)
						generic_event_choose \{state = uistate_invalid_instrument}
						return
					endif
				endif
			endif
			i = (<i> + 1)
			repeat <array_size>
			if (<num_guitar> > 2 || <num_vocals> > 1 || <num_drum> > 1)
				generic_event_choose \{state = uistate_invalid_instrument}
				return
			endif
		endif
	endif
	if (<faceoff> = false)
		vocals_distribute_mics
	else
		if ($allow_controller_for_all_instruments = 0)
			num_guitar = 0
			num_vocals = 0
			num_drum = 0
			i = 0
			begin
			<curr_id> = (<menus> [<i>])
			<curr_id> :GetSingleTag controller
			<curr_id> :GetSingleTag menu
			<curr_id> :GetSingleTag instrument
			if (<menu> = ready2)
				if IsGuitarController controller = <controller>
					num_guitar = (<num_guitar> + 1)
					if NOT (<instrument> = guitar || <instrument> = Bass)
						generic_event_choose \{state = uistate_invalid_instrument
							data = {
								from_faceoff
							}}
						return
					endif
				elseif IsDrumController controller = <controller>
					num_drum = (<num_drum> + 1)
					if NOT (<instrument> = drum)
						generic_event_choose \{state = uistate_invalid_instrument
							data = {
								from_faceoff
							}}
						return
					endif
				else
					num_vocals = (<num_vocals> + 1)
					if NOT (<instrument> = Vocals)
						generic_event_choose \{state = uistate_invalid_instrument
							data = {
								from_faceoff
							}}
						return
					endif
				endif
			endif
			i = (<i> + 1)
			repeat <array_size>
			if NOT (<num_guitar> = 2 || <num_vocals> = 2 || <num_drum> = 2)
				generic_event_choose \{state = uistate_invalid_instrument
					data = {
						from_faceoff
					}}
				return
			endif
		endif
	endif
	if NOT vocals_mic_distribution_is_valid
		GetPlayerInfo <invalid_mic_player> controller
		invalid_controller = <controller>
		i = 0
		begin
		<curr_id> = (<menus> [<i>])
		<curr_id> :GetSingleTag controller
		if (<controller> = <invalid_controller>)
			<curr_id> :SetTags {menu = instrument}
			break
		endif
		i = (<i> + 1)
		repeat <array_size>
		ui_band_mode_save_tags \{instrument}
		generic_event_choose state = uistate_select_instrument_warning data = {instrument = Vocals controller = <controller>}
		return
	endif
	if ($game_mode = p1_career ||
			$game_mode = p2_career ||
			$game_mode = p3_career ||
			$game_mode = p4_career)
		if GotParam \{continue_data}
			if NOT progression_check_intro_complete
				ui_event_block \{event = menu_add
					data = {
						state = uistate_gig_posters
						base_name = 'gig_posters'
					}}
				get_progression_globals ($current_progression_flag) game_mode = ($game_mode)
				if ($current_progression_flag = Career_Band)
					get_band_difficulty
					format_globaltag_song_checksum part = ($<tier_global>.part) song = ($<tier_global>.tier1.songs [0]) difficulty = <band_difficulty>
				else
					format_globaltag_song_checksum part = ($<tier_global>.part) song = ($<tier_global>.tier1.songs [0])
				endif
				j = 1
				begin
				GetPlayerInfo <j> controller
				GetSavegameFromController controller = <controller>
				i = 1
				begin
				GetPlayerInfo <i> controller
				GetPlayerInfo <i> part
				cas_get_random_preset_character savegame = <savegame> part = <part>
				set_band_character_id_globaltag savegame = <savegame> controller = <controller> character_id = <character_id> player = <i>
				SetPlayerInfo <i> character_id = <character_id>
				i = (<i> + 1)
				repeat 4
				repeat 4
				GetGlobalTags <song_checksum> param = unlocked
				if (<unlocked> = 0)
					generic_event_choose state = uistate_play_song data = {progression_flag = ($current_progression_flag) gig_num = 1}
				else
					GetArraySize ($gh4_1_intro_tier.songs)
					change current_song = ($gh4_1_intro_tier.songs [(<array_size> - 1)])
					change current_level = ($gh4_1_intro_tier.level)
					generic_event_choose \{state = uistate_play_song}
				endif
			else
				if NOT current_band_has_band_name
					ui_event_wait event = menu_change data = {state = uistate_band_name_logo event_params = {event = menu_replace data = <continue_data>} from_save = 1 controller = $primary_controller}
				else
					generic_event_choose data = {<continue_data>}
				endif
			endif
			return
		endif
	endif
	generic_event_choose \{state = uistate_play_song}
endscript

script ui_deinit_band_difficulty 
	cancel_all_cas_loads
	change \{band_mode_menu_tags_instrument = none}
endscript

script ui_init_band_difficulty 
	change \{band_mode_menu_tags_instrument = none}
endscript
