
script ui_create_select_difficulty 
	spawnscriptnow ui_create_select_difficulty_spawned params = {<...>}
endscript

script ui_destroy_select_difficulty 
	generic_ui_destroy
	KillSpawnedScript \{name = career_menu_jaw_anim}
	if ScreenElementExists \{id = DifficultyInterface}
		spawnscriptnow \{ui_destroy_select_difficulty_spawned}
	endif
	destroy_viewport_ui
	set_focus_color
	set_unfocus_color
endscript

script ui_destroy_select_difficulty_spawned 
	DestroyScreenElement \{id = DifficultyInterface}
endscript

script ui_setlist_scribbles 
	Wait \{1
		gameframes}
	props = [highlight_scribble_01_alpha highlight_scribble_02_alpha highlight_scribble_03_alpha]
	GetArraySize <props>
	<curHighlight> = 0
	begin
	<curHighlight> = (<curHighlight> + 1)
	if NOT (<curHighlight> < <array_size>)
		<curHighlight> = 0
	endif
	<i> = 0
	begin
	if (<curHighlight> = <i>)
		AddParam name = (<props> [<i>]) structure_name = alpha value = 1.0
	else
		AddParam name = (<props> [<i>]) structure_name = alpha value = 0.0
	endif
	SE_SetProps <alpha>
	<i> = (<i> + 1)
	repeat <array_size>
	Wait \{0.1
		seconds}
	repeat
endscript

script ui_setlist_diff_focus 
	Obj_GetID
	GetTags
	if DifficultyInterface :Desc_ResolveAlias \{name = alias_highlight}
		Wait \{2
			gameframe}
		GetScreenElementChildren id = <ObjID>
		GetScreenElementDims id = (<children> [0])
		scale = (((1.0, 0.0) * (((<width> + 50) / 256.0))) + (0.0, 1.5))
		offset = (-125.0, -2.0)
		GetScreenElementPosition id = <ObjID> summed
		<resolved_id> :SE_SetProps pos = {absolute (<screenelementpos> + <offset>)} scale = <scale>
		<resolved_id> :SE_WaitProps
		GetScreenElementPosition id = <ObjID> summed
		<resolved_id> :SE_SetProps pos = {absolute (<screenelementpos> + <offset> + (0.0, -10.0))} time = 0.05
		<resolved_id> :SE_WaitProps
		GetScreenElementPosition id = <ObjID> summed
		<resolved_id> :SE_SetProps pos = {absolute (<screenelementpos> + <offset>)} scale = <scale> time = 0.05
		<resolved_id> :SE_WaitProps
	endif
endscript

script ui_select_difficulty_back_setlist 
	generic_event_back
endscript
default_difficulty = [
	easy
	easy
	easy
	easy
]

script ui_create_select_difficulty_spawned \{show_drum_options = 0
		includes_double_kick = 0}
	change \{rich_presence_context = presence_menus}
	if NOT GotParam \{can_change_level}
		can_change_level = 1
	endif
	difficulty = ($default_difficulty [$primary_controller])
	focus_index = 0
	if GotParam \{difficulty}
		switch (<difficulty>)
			case easy
			focus_index = 1
			case medium
			focus_index = 2
			case hard
			focus_index = 3
			case expert
			focus_index = 4
		endswitch
	endif
	get_player_num_from_controller \{controller_index = $primary_controller}
	GetPlayerInfo <player_num> part
	if (<part> = drum)
		<show_drum_options> = 1
		if (($current_song) != jamsession && ($current_song) != null)
			if ($permanent_songlist_props.($current_song).double_kick = 1)
				<includes_double_kick> = 1
			endif
		endif
		GameMode_GetType
		if (<type> = career)
			<includes_double_kick> = 1
		endif
	endif
	if (<show_drum_options> = 1)
		GetPlayerInfo <player_num> double_kick_drum
		if (<focus_index> = 4 && <double_kick_drum> = 1)
			<focus_index> = 5
		endif
	endif
	destroy_menu \{menu_id = DifficultyInterface}
	if NOT ($game_mode = training)
		spawnscriptnow \{menu_music_fade
			params = {
				in
				time = 0.01
			}}
	endif
	clean_up_user_control_helpers
	GetPlayerInfo \{1
		part}
	if GotParam \{from_setlist}
		if NOT ($game_mode = training)
			set_unfocus_color \{rgba = [
					0
					0
					0
					255
				]}
			set_focus_color \{rgba = [
					0
					0
					0
					255
				]}
			if (<show_drum_options> = 1 && <includes_double_kick> = 1)
				<popup_desc> = 'setlist_b_difficulty_desc_plus'
			else
				<popup_desc> = 'setlist_b_difficulty_desc'
			endif
			CreateScreenElement {
				parent = root_window
				id = DifficultyInterface
				type = DescInterface
				desc = <popup_desc>
				pos = (0.0, 0.0)
				z_priority = 100
				alpha = 0.0
				exclusive_device = ($primary_controller)
			}
			if DifficultyInterface :Desc_ResolveAlias \{name = alias_menu}
				AssignAlias id = <resolved_id> alias = current_menu
				current_menu :SE_SetProps \{event_handlers = [
						{
							pad_up
							generic_menu_up_or_down_sound
							params = {
								up
							}
						}
						{
							pad_down
							generic_menu_up_or_down_sound
							params = {
								down
							}
						}
						{
							pad_back
							ui_select_difficulty_back_setlist
						}
					]}
				diff_array = [easy_rhythm easy medium hard expert]
				i = 0
				begin
				SetScreenElementProps {
					id = {current_menu child = <i>}
					event_handlers = [
						{focus retail_menu_focus}
						{focus ui_setlist_diff_focus}
						{unfocus retail_menu_unfocus}
						{pad_choose selected_difficulty params = {diff = (<diff_array> [<i>]) can_change_level = <can_change_level> double_kick = 0}}
					]
					tags = {index = <i>}
				}
				i = (<i> + 1)
				repeat 5
				if (<show_drum_options> = 1 && <includes_double_kick> = 1)
					SetScreenElementProps {
						id = {current_menu child = 5}
						event_handlers = [
							{focus retail_menu_focus}
							{focus ui_setlist_diff_focus}
							{unfocus retail_menu_unfocus}
							{pad_choose selected_difficulty params = {diff = (<diff_array> [4]) can_change_level = <can_change_level> double_kick = 1}}
						]
						tags = {index = 5}
					}
				endif
			endif
			DifficultyInterface :SE_SetProps \{alpha = 1.0
				time = 0.25}
			DifficultyInterface :Obj_SpawnScriptNow \{ui_setlist_scribbles}
			menu_finish
			LaunchEvent type = focus target = current_menu data = {child_index = <focus_index>}
			return
		endif
	endif
	if ($game_mode = p1_career)
		get_diff_completion_text
		spacing_between = 25
	endif
	item_scale = 1.5
	<complete_pos> = (0.0, 15.0)
	menu_create_script = make_menu_frontend
	add_item_script = add_menu_frontend_item
	<menu_create_script> {
		title = qs("DIFFICULTY")
		item_scale = <item_scale>
	}
	if ($practice_enabled)
		current_menu :SE_SetProps \{event_handlers = [
				{
					pad_back
					menu_start_transition
				}
			]}
	endif
	scale = 1.5
	<add_item_script> {
		text = qs("BEGINNER")
		pad_choose_script = selected_difficulty
		pad_choose_params = {diff = easy_rhythm double_kick = 0}
	}
	CreateScreenElement {
		type = SpriteElement
		parent = <item_container_id>
		texture = icon_difficulty_beginner
		pos = (-25.0, 25.0) scale = 0.6
	}
	<add_item_script> {
		text = qs("EASY")
		pad_choose_script = selected_difficulty
		pad_choose_params = {diff = easy double_kick = 0}
	}
	CreateScreenElement {
		type = SpriteElement
		parent = <item_container_id>
		texture = icon_difficulty_easy
		pos = (-25.0, 25.0) scale = 0.6
	}
	<add_item_script> {
		text = qs("MEDIUM")
		pad_choose_script = selected_difficulty
		pad_choose_params = {diff = medium double_kick = 0}
	}
	CreateScreenElement {
		type = SpriteElement
		parent = <item_container_id>
		texture = icon_difficulty_medium
		pos = (-25.0, 25.0) scale = 0.6
	}
	<add_item_script> {
		text = qs("HARD")
		pad_choose_script = selected_difficulty
		pad_choose_params = {diff = hard double_kick = 0}
	}
	CreateScreenElement {
		type = SpriteElement
		parent = <item_container_id>
		texture = icon_difficulty_hard
		pos = (-25.0, 25.0) scale = 0.6
	}
	<add_item_script> {
		text = qs("EXPERT")
		pad_choose_script = selected_difficulty
		pad_choose_params = {diff = expert double_kick = 0}
	}
	CreateScreenElement {
		type = SpriteElement
		parent = <item_container_id>
		texture = icon_difficulty_expert
		pos = (-25.0, 25.0) scale = 0.6
	}
	if (<show_drum_options> = 1 && <includes_double_kick> = 1)
		<add_item_script> {
			text = qs("EXPERT+")
			pad_choose_script = selected_difficulty
			pad_choose_params = {diff = expert double_kick = 1}
		}
		CreateScreenElement {
			type = SpriteElement
			parent = <item_container_id>
			texture = setlist_B_db_icon
			pos = (-32.0, 32.0) scale = 0.9
		}
	endif
	if (($game_mode != training) && ($game_mode != p2_faceoff) && ($game_mode != p2_pro_faceoff) && ($game_mode != p2_battle))
		get_completed_percentage part = <part>
		FormatText TextName = completed_songs_text qs("%a\% COMPLETE") a = <completed_percentage>
		<add_item_script> {
			text = <completed_songs_text>
			rgba = [130 110 110 255]
			font = fontgrid_text_a8
			scale = (0.5, 0.5)
			not_focusable
		}
	endif
	<desc_id> :Obj_SpawnScriptNow career_menu_jaw_anim
	menu_finish
	LaunchEvent type = focus target = current_menu data = {child_index = (<focus_index> + 1)}
endscript

script select_difficulty_show_movie 
	if ($game_mode = p1_career)
		GetPlayerInfo \{1
			part}
		bandname_id = band_info
		FormatText checksumname = first_time_played_part 'first_instrument_career_%s' s = ($instrument_list.<part>.text_nl)
		GetGlobalTags <bandname_id> param = <first_time_played_part>
		if ((<...>.<first_time_played_part>) = 0)
			switch (<part>)
				case guitar
				card_text = qs("The life and times of a guitarist")
				case Bass
				card_text = qs("The life and times of a bassist")
				case drum
				card_text = qs("The life and times of a drummer")
				case Vocals
				card_text = qs("The life and times of a vocalist")
			endswitch
			CreateScreenElement \{type = SpriteElement
				parent = root_window
				id = instrument_movie_bg
				texture = white
				rgba = [
					0
					0
					0
					255
				]
				pos = (640.0, 360.0)
				dims = (1280.0, 720.0)
				just = [
					center
					center
				]
				z_priority = 100}
			CreateScreenElement {
				type = TextBlockElement
				parent = instrument_movie_bg
				text = <card_text>
				font = ($test_menu_font)
				scale = 1.2
				dims = (600.0, 400.0)
				rgba = [200 200 200 255]
				pos = (640.0, 400.0)
				just = [center center]
				internal_just = [center center]
				z_priority = 101
			}
			menu_music_fade \{out
				time = 2}
			Wait \{1
				seconds}
			fadetoblack \{on
				alpha = 1.0
				time = 1
				z_priority = 999}
			Wait \{1
				seconds}
			destroy_menu \{menu_id = instrument_movie_bg}
			FormatText checksumname = progression_flag 'Career_%s' s = ($instrument_list.<part>.text_nl)
			change current_progression_flag = (<progression_flag>)
			get_progression_globals game_mode = ($game_mode) ($current_progression_flag)
			if StructureContains Structure = ($<tier_global>) initial_movie
				Menu_Music_Off
				KillMovie \{TextureSlot = 0}
				i = 1
				get_movie_id_by_name movie = ($<tier_global>.initial_movie)
				begin
				GetPlayerInfo <i> controller
				get_savegame_from_controller controller = <controller>
				SetGlobalTags <id> params = {unlocked = 1} savegame = <savegame>
				i = (<i> + 1)
				repeat ($current_num_players)
				PlayMovieAndWait movie = ($<tier_global>.initial_movie) noblack
				spawnscriptnow \{menu_music_on}
			endif
			switch (<part>)
				case guitar
				SetGlobalTags <bandname_id> params = {first_instrument_career_guitar = 1}
				case Bass
				SetGlobalTags <bandname_id> params = {first_instrument_career_bass = 1}
				case drum
				SetGlobalTags <bandname_id> params = {first_instrument_career_drum = 1}
				case Vocals
				SetGlobalTags <bandname_id> params = {first_instrument_career_vocals = 1}
			endswitch
			fadetoblack \{off
				time = 0.5
				no_wait}
		endif
	endif
	spawnscriptnow ui_create_select_difficulty_spawned params = {<...>}
endscript

script get_completed_percentage 
	RequireParams \{[
			part
		]
		all}
	progression_flag = Career_Guitar
	switch (<part>)
		case Bass
		progression_flag = Career_Bass
		case drum
		progression_flag = Career_Drum
		case Vocals
		progression_flag = Career_Vocals
		case Band
		progression_flag = Career_Band
	endswitch
	get_progression_globals (<progression_flag>)
	printstruct <...>
	total_songs = 0.0
	completed_songs = 0.0
	num_tiers = ($<tier_global>.num_tiers)
	if NOT is_song_downloaded \{song_checksum = ThatWasJustYourLife}
		num_tiers = (<num_tiers> - 1)
	endif
	tier_num = 1
	begin
	FormatText checksumname = tiername 'tier%d' d = <tier_num>
	go_through_songs = 1
	if StructureContains Structure = ($<tier_global>.<tiername>) debug_gig
		go_through_songs = 0
	endif
	if StructureContains Structure = ($<tier_global>.<tiername>) createagig
		go_through_songs = 0
	endif
	if (<go_through_songs> = 1)
		GetArraySize ($<tier_global>.<tiername>.songs)
		song_index = 0
		begin
		song = ($<tier_global>.<tiername>.songs [<song_index>])
		diff_index = 0
		begin
		format_globaltag_song_checksum part = ($<tier_global>.part) song = <song> difficulty_index = <diff_index>
		GetGlobalTags <song_checksum> params = stars
		if (<stars> > 2)
			completed_songs = (<completed_songs> + 1)
			break
		endif
		diff_index = (<diff_index> + 1)
		repeat 5
		total_songs = (<total_songs> + 1)
		song_index = (<song_index> + 1)
		repeat <array_size>
	endif
	tier_num = (<tier_num> + 1)
	repeat <num_tiers>
	completed_percentage = ((<completed_songs> / <total_songs>) * 100)
	if ((<completed_percentage> > 0.0) && (<completed_percentage> < 1.0))
		completed_percentage = 1.0
	endif
	CastToInteger \{completed_percentage}
	printf 'completed_songs = %a, total_songs = %b' a = <completed_songs> b = <total_songs>
	return completed_percentage = <completed_percentage>
endscript

script ui_select_difficulty_anim_in 
	if NOT GotParam \{from_setlist}
		menu_transition_in \{menu = current_menu_anchor}
	endif
endscript

script ui_select_difficulty_anim_out 
	if NOT GotParam \{from_setlist}
		menu_transition_out \{menu = current_menu_anchor}
	endif
endscript
