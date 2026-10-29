current_song_info_id = null
ui_gig_posters_skip_helpers = 1

script ui_init_gig_posters 
	cas_destroy_all_characters
endscript

script ui_create_gig_posters 
	KillSpawnedScript \{name = Loading_Screen_Crowd_Swell}
	KillSpawnedScript \{name = Crowd_Loading_Whistle}
	KillSpawnedScript \{name = OneShotsBetweenSongs}
	KillSpawnedScript \{name = SurgeBetweenSongs}
	spawnscriptnow \{destroy_setlist_songpreview_monitor}
	if NOT ($game_mode = practice || $game_mode = training)
		spawnscriptnow \{Skate8_SFX_Backgrounds_New_Area
			params = {
				BG_SFX_Area = FrontEnd_Menu_Music
			}}
	endif
	clean_up_user_control_helpers
	get_all_exclusive_devices
	hide_glitch \{num_frames = 3}
	fadetoblack \{on
		alpha = 1.0
		time = 0
		z_priority = 200}
	if ($signin_change_happening = 1)
		return
	endif
	if ScreenElementExists \{id = generic_menu}
		ui_destroy_singleplayer_character_hub
	endif
	CreateScreenElement {
		parent = root_window
		id = SetlistInterface
		type = DescInterface
		desc = 'setlist_b'
		exclusive_device = <exclusive_device>
	}
	spawnscriptnow ui_create_gig_posters_spawned params = <...>
endscript

script ui_create_gig_posters_spawned 
	change \{rich_presence_context = presence_gigboard_and_setlist}
	get_current_band_info
	GetGlobalTags <band_info>
	tier_global = GH4_Career_Band_Songs
	change \{current_progression_flag = Career_Band}
	part = Band
	check = <career_intro_band_complete>
	if (($current_num_players = 1) && ($is_network_game = 0))
		GetPlayerInfo \{1
			part}
	endif
	if (<part> = guitar)
		tier_global = GH4_Career_Guitar_Songs
		change \{current_progression_flag = Career_Guitar}
	elseif (<part> = Bass)
		tier_global = GH4_Career_Bass_Songs
		change \{current_progression_flag = Career_Bass}
	elseif (<part> = drum)
		tier_global = GH4_Career_Drum_Songs
		change \{current_progression_flag = Career_Drum}
	elseif (<part> = Vocals)
		tier_global = GH4_Career_Vocals_Songs
		change \{current_progression_flag = Career_Vocals}
	endif
	progression_get_total_stars
	if NOT progression_check_intro_complete
		if NOT (<part> = Band)
			ui_event_wait \{event = menu_back
				data = {
					state = uistate_select_difficulty
				}}
		else
			ui_event_wait \{event = menu_back
				data = {
					state = uistate_band_difficulty
				}}
		endif
		return
	else
		ui_gig_posters_check_movies_played part = <part>
		if (<movies_played> = 0)
			ui_gig_posters_play_movie \{movie = 'GHM_Movie1'}
			ui_gig_posters_set_movies_played part = <part> value = 1
			if (($signin_change_happening = 1) || ($invite_controller > -1))
				return
			endif
			ui_memcard_autosave_replace \{data = {
					all_active_players = true
				}}
			return
		elseif (<movies_played> = 1)
			ui_gig_posters_play_movie \{movie = 'GHM_Movie2'}
			ui_gig_posters_set_movies_played part = <part> value = 2
			if (($signin_change_happening = 1) || ($invite_controller > -1))
				return
			endif
			save_on_back = 1
		elseif (<movies_played> = 2)
			if (($<tier_global>.tier5.stars) <= <total_stars>)
				ui_gig_posters_play_movie \{movie = 'GHM_Movie3'}
				ui_gig_posters_set_movies_played part = <part> value = 3
				if (($signin_change_happening = 1) || ($invite_controller > -1))
					return
				endif
				save_on_back = 1
			endif
		endif
	endif
	get_progression_globals ($current_progression_flag)
	setlist_prefix = ($<tier_global>.prefix)
	if ($current_progression_flag = Career_Band)
		GetSavegameFromController controller = ($band_mode_current_leader)
	else
		GetSavegameFromController controller = ($primary_controller)
	endif
	wait_for_songpreview_monitor
	Menu_Music_Off
	gig_posters_song_focus
	if ($current_num_players = 1)
		update_ingame_controllers controller = <exclusive_device>
	endif
	if SetlistInterface :Desc_ResolveAlias \{name = alias_setlist_menu}
		pad_back_script = generic_event_back
		pad_back_params = {}
		if GotParam \{save_on_back}
			pad_back_script = ui_memcard_autosave_replace
			pad_back_params = {data = {all_active_players = true}}
		endif
		AssignAlias id = <resolved_id> alias = setlist_menu
		setlist_menu :SE_SetProps {
			event_handlers = [
				{pad_up generic_menu_up_or_down_sound params = {up}}
				{pad_down generic_menu_up_or_down_sound params = {down}}
				{pad_back <pad_back_script> params = <pad_back_params>}
				{focus ui_gig_posters_popups}
			]
			tags = {
				from_top_rocker = <from_top_rocker>
				from_leaderboard = <from_leaderboard>
				for_custom_setlist = 0
				current_section = 1
				last_focused_song = none
				custom_setlist_num_id_1 = null
				custom_setlist_num_id_2 = null
				custom_setlist_num_id_3 = null
				custom_setlist_num_id_4 = null
				custom_setlist_num_id_5 = null
				custom_setlist_num_id_6 = null
				section_breaker_index_1 = 99999
				section_breaker_index_2 = 99999
				section_breaker_index_3 = 99999
			}
		}
	endif
	if GotParam \{next_state}
		setlist_menu :SetTags next_state = <next_state>
	endif
	setlist_menu :SE_SetProps \{event_handlers = [
			{
				pad_option
				setlist_jump_down_section
				params = {
					for_custom_setlist = 0
				}
			}
		]}
	CreateScreenElement \{parent = setlist_menu
		type = DescInterface
		desc = 'setlist_b_head_desc'
		auto_dims = false
		dims = (0.0, 300.0)
		just = [
			center
			center
		]
		setlist_b_head_text_text = qs("Setlist")
		not_focusable}
	menu_index = 1
	last_title_index = 1
	<final_num_songs> = 0
	<current_tier> = 0
	setlist_menu :SetTags \{highlight = 0}
	SetButtonEventMappings \{block_menu_input}
	i = 1
	begin
	FormatText checksumname = tier 'tier%n' n = <i>
	if NOT StructureContains Structure = ($<tier_global>) <tier>
		break
	endif
	if StructureContains Structure = ($<tier_global>.<tier>) stars
		printf \{qs("\Lif StructureContains structure=($<tier_global>.<tier>) stars")}
		if (($<tier_global>.<tier>.stars) <= <total_stars>)
			if NOT StructureContains Structure = ($<tier_global>.<tier>) debug_gig
				if NOT (<tier> = tier9)
					<current_tier> = <i>
				endif
			endif
			if (<tier> = tier9)
				format_globaltag_song_checksum part = ($<tier_global>.part) song = TheThingThat
				GetGlobalTags <song_checksum> param = unlocked
				if (<unlocked> = 0)
					break
				endif
				if NOT is_song_downloaded \{song_checksum = ThatWasJustYourLife}
					break
				endif
			endif
			get_prev_total_songs part = <part> band_info = <band_info> final_num_songs = <final_num_songs>
			if StructureContains Structure = ($<tier_global>.<tier>) title
				CreateScreenElement {
					parent = setlist_menu
					type = DescInterface
					desc = 'setlist_b_divider_desc'
					auto_dims = false
					alpha = 0
					dims = (0.0, 50.0)
					setlist_divider_title_text = ($<tier_global>.<tier>.title)
					not_focusable
					tags = {
						tier_index = <i>
					}
				}
				if GotParam \{last_listing_id}
					if ((<final_num_songs> + 1) > <prev_total_songs>)
						printf \{qs("\Lnew venue!")
							channel = setlist_debug}
						setlist_menu :SetTags total_songs = <final_num_songs> prev_index = 0
						<last_listing_id> :SetTags fading_in = 1
						<id> :SE_SetProps alpha = 1 time = 0.5
						LaunchEvent target = <last_listing_id> type = focus
						SoundEvent \{event = GH3_Star_FlyIn}
						<id> :SE_WaitProps
					else
						<id> :SE_SetProps alpha = 1
					endif
				else
					<id> :SE_SetProps alpha = 1
				endif
				menu_index = (<menu_index> + 1)
				last_title_index = <menu_index>
			endif
			if StructureContains Structure = ($<tier_global>.<tier>) songs
				songs = ($<tier_global>.<tier>.songs)
				GetArraySize <songs>
				num_songs = <array_size>
				j = 0
				begin
				song = (<songs> [<j>])
				get_song_title song = <song>
				get_song_artist song = <song>
				ui_gig_posters_get_scores_and_tags song = <song> part = <part> savegame = <savegame>
				GetPlayerInfo \{1
					double_kick_drum}
				<double_kick_alpha> = 0
				if (<song> != jamsession && <part> = drum && <double_kick_drum> = 1)
					if (($permanent_songlist_props.<song>.double_kick) = 1)
						<double_kick_alpha> = 1
					endif
				endif
				FormatText TextName = song_text qs("\L%t: %a") a = <song_artist> t = <song_title>
				format_globaltag_song_checksum part = ($<tier_global>.part) song = <song>
				GetGlobalTags <song_checksum> param = unlocked
				GetGlobalTags <song_checksum> param = double_bass_complete
				GetGlobalTags <song_checksum> param = new_song_info
				if (<tier> = tier9)
					unlocked = 1
				endif
				if (<unlocked> = 0)
					event_handlers = [
						{focus ui_gig_posters_focus params = {for_custom_setlist = 0}}
						{unfocus ui_gig_posters_unfocus}
						{pad_choose ui_gig_posters_play_song params = {song = <song> level = ($<tier_global>.<tier>.level) tier_num = <i>}}
						{pad_square ui_setlist_choose_song_extras params = {song = <song> song_checksum = <song_checksum> completed = <completed> part = <part>}}
						{pad_l1 ui_gig_posters_debug_complete params = {song = <song> song_checksum = <song_checksum>}}
					]
				else
					event_handlers = [
						{focus ui_gig_posters_focus params = {for_custom_setlist = 0}}
						{unfocus ui_gig_posters_unfocus}
						{pad_choose generic_event_choose params = {state = uistate_select_venue data = {song = <song> level = ($<tier_global>.<tier>.level) tier_num = <i>}}}
						{pad_square ui_setlist_choose_song_extras params = {song = <song> song_checksum = <song_checksum> completed = <completed> part = <part>}}
						{pad_l1 ui_gig_posters_debug_complete params = {song = <song> song_checksum = <song_checksum>}}
					]
				endif
				add_listing = 1
				if (<add_listing> = 1)
					CreateScreenElement {
						parent = setlist_menu
						type = DescInterface
						desc = 'setlist_b_listing_desc'
						alpha = 0
						auto_dims = false
						dims = (0.0, 50.0)
						double_kick_alpha = <double_kick_alpha>
						stars_alpha = 1
						event_handlers = <event_handlers>
						tags = {
							custom_setlist_num = 0
							song_title = <song_title>
							song_artist = <song_artist>
							score_text = <score_text>
							song = <song>
							part = <part>
							index = <final_num_songs>
							unlocked = <unlocked>
							new_song_info = <new_song_info>
							beginner_stars = (<stars_tags>.beginner_stars)
							easy_stars = (<stars_tags>.easy_stars)
							medium_stars = (<stars_tags>.medium_stars)
							hard_stars = (<stars_tags>.hard_stars)
							expert_stars = (<stars_tags>.expert_stars)
							beginner_percent100 = (<stars_tags>.beginner_percent100)
							easy_percent100 = (<stars_tags>.easy_percent100)
							medium_percent100 = (<stars_tags>.medium_percent100)
							hard_percent100 = (<stars_tags>.hard_percent100)
							expert_percent100 = (<stars_tags>.expert_percent100)
							double_bass_complete = <double_bass_complete>
							icon_difficulty_texture = (<difficulty_tags>.icon_difficulty_texture)
							icon_difficulty_alpha = (<difficulty_tags>.icon_difficulty_alpha)
							highest_stars_difficulty_text = (<difficulty_tags>.highest_stars_difficulty_text)
							highest_stars_difficulty_index = (<difficulty_tags>.highest_stars_difficulty_index)
						}
						just = [center center]
						listing_text = <song_text>
						listing_pos = (-20.0, 0.0)
					}
					if <id> :Desc_ResolveAlias name = alias_listing
						GetScreenElementChildren id = <resolved_id>
						GetScreenElementPosition id = <resolved_id> summed
						<text_pos> = <screenelementpos>
						GetScreenElementProps id = (<children> [0]) force_update
						<width> = (<dims>.(1.0, 0.0) * <scale>.(1.0, 0.0))
						<double_kick_offset> = ((1.0, 0.0) * ((<width> / 2) + 42) + (0.0, 1.0))
						<new_pos> = (<text_pos> - <double_kick_offset>)
						<id> :SE_SetProps double_kick_pos = <new_pos>
						<new_pos> = (<text_pos> + <double_kick_offset> - (45.0, 3.0))
						<id> :SE_SetProps stars_pos = <new_pos>
					endif
					percent_diffs = ['beginner' 'easy' 'medium' 'hard' 'expert']
					percent_aliases = [
						alias_Setlist_B_stars_beginner
						alias_Setlist_B_stars_easy
						alias_Setlist_B_stars_medium
						alias_Setlist_B_stars_hard
						alias_Setlist_B_stars_expert
					]
					star_diffs = [
						beginner_stars
						easy_stars
						medium_stars
						hard_stars
						expert_stars
					]
					FormatText checksumname = percent100 '%s_percent100' s = (<percent_diffs> [(<difficulty_tags>.highest_stars_difficulty_index)])
					if <id> :Desc_ResolveAlias name = alias_stars
						percent_param = (<stars_tags>.<percent100>)
						if GotParam \{percent_param}
							if (<percent_param> = 1)
								<id> :SE_SetProps star_rgba = [255 255 255 175]
							endif
						endif
						GetScreenElementChildren id = <resolved_id>
						num_stars = (<stars_tags>.(<star_diffs> [(<difficulty_tags>.highest_stars_difficulty_index)]))
						if (<num_stars> = 0)
							<resolved_id> :SE_SetProps alpha = 0
						else
							GetArraySize <children>
							stars_left = <array_size>
							if (<num_stars> < 5 && <stars_left> = 5)
								if ScreenElementExists id = (<children> [4])
									DestroyScreenElement id = (<children> [4])
									stars_left = (<stars_left> - 1)
								endif
							endif
							if (<num_stars> < 4 && <stars_left> = 4)
								if ScreenElementExists id = (<children> [3])
									DestroyScreenElement id = (<children> [3])
								endif
							endif
						endif
					endif
				endif
				<final_num_songs> = (<final_num_songs> + 1)
				menu_index = (<menu_index> + 1)
				if GotParam \{last_listing_id}
					LaunchEvent target = <last_listing_id> type = unfocus
				endif
				last_listing_id = <id>
				if (<final_num_songs> > <prev_total_songs>)
					setlist_menu :SetTags total_songs = <final_num_songs> prev_index = 0
					<id> :SE_SetProps alpha = 1 time = 0.25
					LaunchEvent target = <id> type = focus
					SoundEvent \{event = GH3_Star_FlyIn}
					<id> :SE_WaitProps
					<id> :SetTags fading_in = 1
				else
					<id> :SE_SetProps alpha = 1
				endif
				j = (<j> + 1)
				repeat <num_songs>
			endif
		endif
	endif
	i = (<i> + 1)
	repeat
	GetGlobalTags <band_info> params = {first_career_setlist}
	if (<first_career_setlist> = 0)
		SetButtonEventMappings \{unblock_menu_input}
	endif
	LaunchEvent target = <last_listing_id> type = unfocus
	setlist_menu :SetTags \{highlight = 1}
	set_prev_total_songs part = <part> band_info = <band_info> final_num_songs = <final_num_songs>
	setlist_menu :SetTags total_songs = <final_num_songs> prev_index = 0
	spawnscriptnow \{destroy_setlist_songpreview_monitor}
	if ($is_network_game = 0)
		spawnscriptnow \{setlist_songpreview_monitor}
	endif
	FormatText checksumname = next_tier 'tier%n' n = (<current_tier> + 1)
	if NOT (<next_tier> = tier9)
		if StructureContains Structure = ($<tier_global>) <next_tier>
			<stars_needed> = ($<tier_global>.<next_tier>.stars)
			if (<stars_needed> > 1)
				FormatText TextName = stars_to_next_tier qs("Earn %n more stars for a new venue!") n = (<stars_needed> - <total_stars>)
			else
				FormatText TextName = stars_to_next_tier qs("Earn %n more star for a new venue!") n = (<stars_needed> - <total_stars>)
			endif
			CreateScreenElement {
				parent = setlist_menu
				type = DescInterface
				desc = 'setlist_b_divider_desc'
				auto_dims = false
				dims = (0.0, 50.0)
				setlist_divider_title_text = <stars_to_next_tier>
				setlist_list_divider_L_alpha = 1
				setlist_list_divider_R_alpha = 1
				not_focusable
			}
		endif
	endif
	<max_songs> = 0
	<i> = 1
	begin
	FormatText checksumname = tier 'tier%n' n = <i>
	if (<tier> = tier9)
		if NOT is_song_downloaded \{song_checksum = ThatWasJustYourLife}
			break
		endif
	endif
	if StructureContains Structure = ($<tier_global>.<tier>) songs
		GetArraySize ($<tier_global>.<tier>.songs)
		<max_songs> = (<max_songs> + <array_size>)
	endif
	<i> = (<i> + 1)
	repeat (($<tier_global>).num_tiers)
	FormatText checksumname = final_tier 'tier%n' n = (($<tier_global>).num_tiers)
	if (<total_stars> >= ($<tier_global>.<final_tier>.stars))
		FormatText TextName = number_of_stars_text qs("%n out of %m stars earned") n = <total_stars> m = (<max_songs> * 5)
		SetlistInterface :SE_SetProps number_of_stars_text = <number_of_stars_text>
		SetlistInterface :SE_SetProps \{scribble_lower_alpha = 1}
	else
		SetlistInterface :SE_SetProps \{scribble_lower_alpha = 0}
	endif
	menu_finish
	if ($enable_button_cheats = 1)
		add_user_control_helper \{text = qs("\LBEAT SONG")
			button = LB
			z = 100000}
	endif
	if (<final_num_songs> > <prev_total_songs>)
		spawnscriptnow ui_gig_posters_wait_and_focus params = {index = <selected_index>}
	else
		LaunchEvent target = setlist_menu type = focus data = {child_index = <selected_index>}
	endif
	destroy_loading_screen \{force = 1}
	fadetoblack \{off
		time = 0}
	BroadcastEvent \{type = setlist_created}
endscript

script ui_gig_posters_wait_and_focus 
	Wait \{2
		second}
	LaunchEvent target = setlist_menu type = focus data = {child_index = <index>}
endscript

script ui_gig_posters_get_scores_and_tags 
	get_song_prefix song = <song>
	beginner_skull_alpha = 0
	easy_skull_alpha = 0
	medium_skull_alpha = 0
	hard_skull_alpha = 0
	expert_skull_alpha = 0
	ghost_skull_alpha = 0
	beginner_text_alpha = 0
	easy_text_alpha = 0
	medium_text_alpha = 0
	hard_text_alpha = 0
	expert_text_alpha = 0
	ghost_text_alpha = 0
	highest_stars_difficulty_texture = icon_difficulty_beginner
	highest_stars_difficulty_alpha = 0
	highest_stars_difficulty_text = qs("Beginner")
	highest_stars_difficulty_index = 0
	highest_stars = 3
	completed = 0
	GameMode_GetType
	<game_mode_type> = <type>
	format_globaltag_song_checksum part_text = ($part_list_props.<part>.text_nl) song = <song> difficulty_text_nl = 'easy_rhythm'
	GetGlobalTags <song_checksum> param = score savegame = <savegame>
	FormatText TextName = score_easy_rhythm_text qs("%s") s = <score>
	if (<score> = 0 || $game_mode = training)
		<beginner_skull_alpha> = <ghost_skull_alpha>
		<beginner_text_alpha> = <ghost_text_alpha>
	else
		<completed> = 1
	endif
	format_globaltag_song_checksum part_text = ($part_list_props.<part>.text_nl) song = <song> difficulty_text_nl = 'easy'
	GetGlobalTags <song_checksum> param = score savegame = <savegame>
	FormatText TextName = score_easy_text qs("%s") s = <score>
	if (<score> = 0 || $game_mode = training)
		<easy_skull_alpha> = <ghost_skull_alpha>
		<easy_text_alpha> = <ghost_text_alpha>
	else
		<completed> = 1
	endif
	format_globaltag_song_checksum part_text = ($part_list_props.<part>.text_nl) song = <song> difficulty_text_nl = 'medium'
	GetGlobalTags <song_checksum> param = score savegame = <savegame>
	FormatText TextName = score_medium_text qs("%s") s = <score>
	if (<score> = 0 || $game_mode = training)
		<medium_skull_alpha> = <ghost_skull_alpha>
		<medium_text_alpha> = <ghost_text_alpha>
	else
		<completed> = 1
	endif
	format_globaltag_song_checksum part_text = ($part_list_props.<part>.text_nl) song = <song> difficulty_text_nl = 'hard'
	GetGlobalTags <song_checksum> param = score savegame = <savegame>
	FormatText TextName = score_hard_text qs("%s") s = <score>
	if (<score> = 0 || $game_mode = training)
		<hard_skull_alpha> = <ghost_skull_alpha>
		<hard_text_alpha> = <ghost_text_alpha>
	else
		<completed> = 1
	endif
	format_globaltag_song_checksum part_text = ($part_list_props.<part>.text_nl) song = <song> difficulty_text_nl = 'expert'
	GetGlobalTags <song_checksum> param = score savegame = <savegame>
	FormatText TextName = score_expert_text qs("%s") s = <score>
	if (<score> = 0 || $game_mode = training)
		<expert_skull_alpha> = <ghost_skull_alpha>
		<expert_text_alpha> = <ghost_text_alpha>
	else
		<completed> = 1
	endif
	format_globaltag_song_checksum part_text = ($part_list_props.<part>.text_nl) song = <song> difficulty_text_nl = 'easy_rhythm'
	GetGlobalTags <song_checksum> param = stars savegame = <savegame>
	GetGlobalTags <song_checksum> param = percent100 savegame = <savegame>
	if (<stars> >= <highest_stars>)
		<highest_stars_difficulty_texture> = icon_difficulty_beginner
		<highest_stars_difficulty_alpha> = 1
		<highest_stars_difficulty_text> = qs("Beginner")
		<highest_stars_difficulty_index> = 0
		<highest_stars> = <stars>
	endif
	beginner_stars = <stars>
	beginner_percent100 = <percent100>
	format_globaltag_song_checksum part_text = ($part_list_props.<part>.text_nl) song = <song> difficulty_text_nl = 'easy'
	GetGlobalTags <song_checksum> param = stars savegame = <savegame>
	GetGlobalTags <song_checksum> param = percent100 savegame = <savegame>
	if (<stars> >= <highest_stars>)
		<highest_stars_difficulty_texture> = icon_difficulty_easy
		<highest_stars_difficulty_alpha> = 1
		<highest_stars_difficulty_text> = qs("Easy")
		<highest_stars_difficulty_index> = 1
		<highest_stars> = <stars>
	endif
	easy_stars = <stars>
	easy_percent100 = <percent100>
	format_globaltag_song_checksum part_text = ($part_list_props.<part>.text_nl) song = <song> difficulty_text_nl = 'medium'
	GetGlobalTags <song_checksum> param = stars savegame = <savegame>
	GetGlobalTags <song_checksum> param = percent100 savegame = <savegame>
	if (<stars> >= <highest_stars>)
		<highest_stars_difficulty_texture> = icon_difficulty_medium
		<highest_stars_difficulty_alpha> = 1
		<highest_stars_difficulty_text> = qs("Medium")
		<highest_stars_difficulty_index> = 2
		<highest_stars> = <stars>
	endif
	medium_stars = <stars>
	medium_percent100 = <percent100>
	format_globaltag_song_checksum part_text = ($part_list_props.<part>.text_nl) song = <song> difficulty_text_nl = 'hard'
	GetGlobalTags <song_checksum> param = stars savegame = <savegame>
	GetGlobalTags <song_checksum> param = percent100 savegame = <savegame>
	if (<stars> >= <highest_stars>)
		<highest_stars_difficulty_texture> = icon_difficulty_hard
		<highest_stars_difficulty_alpha> = 1
		<highest_stars_difficulty_text> = qs("Hard")
		<highest_stars_difficulty_index> = 3
		<highest_stars> = <stars>
	endif
	hard_stars = <stars>
	hard_percent100 = <percent100>
	format_globaltag_song_checksum part_text = ($part_list_props.<part>.text_nl) song = <song> difficulty_text_nl = 'expert'
	GetGlobalTags <song_checksum> param = stars savegame = <savegame>
	GetGlobalTags <song_checksum> param = percent100 savegame = <savegame>
	if (<stars> >= <highest_stars>)
		<highest_stars_difficulty_texture> = icon_difficulty_expert
		<highest_stars_difficulty_alpha> = 1
		<highest_stars_difficulty_text> = qs("Expert")
		<highest_stars_difficulty_index> = 4
		<highest_stars> = <stars>
	endif
	expert_stars = <stars>
	expert_percent100 = <percent100>
	score_text = {
		score_beginner_text = <score_easy_rhythm_text>
		score_easy_text = <score_easy_text>
		score_medium_text = <score_medium_text>
		score_hard_text = <score_hard_text>
		score_expert_text = <score_expert_text>
		icon_difficulty_beginner_alpha = <beginner_skull_alpha>
		icon_difficulty_easy_alpha = <easy_skull_alpha>
		icon_difficulty_medium_alpha = <medium_skull_alpha>
		icon_difficulty_hard_alpha = <hard_skull_alpha>
		icon_difficulty_expert_alpha = <expert_skull_alpha>
		score_beginner_alpha = <beginner_text_alpha>
		score_easy_alpha = <easy_text_alpha>
		score_medium_alpha = <medium_text_alpha>
		score_hard_alpha = <hard_text_alpha>
		score_expert_alpha = <expert_text_alpha>
	}
	stars_tags = {
		beginner_stars = <beginner_stars>
		easy_stars = <easy_stars>
		medium_stars = <medium_stars>
		hard_stars = <hard_stars>
		expert_stars = <expert_stars>
		beginner_percent100 = <beginner_percent100>
		easy_percent100 = <easy_percent100>
		medium_percent100 = <medium_percent100>
		hard_percent100 = <hard_percent100>
		expert_percent100 = <expert_percent100>
	}
	difficulty_tags = {
		icon_difficulty_texture = <highest_stars_difficulty_texture>
		icon_difficulty_alpha = <highest_stars_difficulty_alpha>
		highest_stars_difficulty_text = <highest_stars_difficulty_text>
		highest_stars_difficulty_index = <highest_stars_difficulty_index>
	}
	return score_text = <score_text> difficulty_tags = <difficulty_tags> stars_tags = <stars_tags> completed = <completed>
endscript

script ui_gig_posters_highlight_motion 
	SetSpawnInstanceLimits \{max = 1
		management = kill_oldest}
	if Desc_ResolveAlias \{name = alias_highlight}
		if GetScreenElementChildren id = <resolved_id>
			GetArraySize <children>
			prev = 0
			curr = 1
			begin
			prev_id = (<children> [<prev>])
			curr_id = (<children> [<curr>])
			if ScreenElementExists id = <prev_id>
				<prev_id> :SE_SetProps alpha = 0.0
			endif
			if ScreenElementExists id = <curr_id>
				<curr_id> :SE_SetProps alpha = 1
			endif
			prev = <curr>
			next = RandomInteger (0.0, 2.0)
			if (<next> = <prev>)
				curr = (<curr> + 1)
			else
				curr = <next>
			endif
			if (<curr> >= <array_size>)
				curr = 0
			endif
			if ScreenElementExists id = <curr_id>
				rand = Random (@ 0 @ 1 )
				if (<rand> = 1)
					<curr_id> :SE_SetProps flip_v = true
				else
					<curr_id> :SE_SetProps flip_v = false
				endif
				rand = Random (@ 0 @ 1 )
				if (<rand> = 1)
					<curr_id> :SE_SetProps flip_h = true
				else
					<curr_id> :SE_SetProps flip_h = false
				endif
			endif
			Wait \{0.1
				second}
			repeat
		endif
	endif
endscript

script ui_gig_posters_check_movies_played \{part = Band}
	get_current_band_info
	GetGlobalTags <band_info>
	switch (<part>)
		case guitar
		check = <career_guitar_movies_played>
		case Bass
		check = <career_bass_movies_played>
		case drum
		check = <career_drum_movies_played>
		case Vocals
		check = <career_vocals_movies_played>
		case Band
		check = <career_band_movies_played>
	endswitch
	return {movies_played = <check>}
endscript

script ui_gig_posters_set_movies_played \{part = Band}
	RequireParams \{[
			value
		]
		all}
	get_current_band_info
	GetGlobalTags <band_info>
	switch (<part>)
		case guitar
		SetGlobalTags <band_info> params = {career_guitar_movies_played = <value>}
		case Bass
		SetGlobalTags <band_info> params = {career_bass_movies_played = <value>}
		case drum
		SetGlobalTags <band_info> params = {career_drum_movies_played = <value>}
		case Vocals
		SetGlobalTags <band_info> params = {career_vocals_movies_played = <value>}
		case Band
		SetGlobalTags <band_info> params = {career_band_movies_played = <value>}
	endswitch
endscript

script ui_select_venue_check_ice_movie_played \{part = Band}
	get_current_band_info
	GetGlobalTags <band_info>
	switch (<part>)
		case guitar
		check = <career_guitar_ice_movie_played>
		case Bass
		check = <career_bass_ice_movie_played>
		case drum
		check = <career_drum_ice_movie_played>
		case Vocals
		check = <career_vocals_ice_movie_played>
		case Band
		check = <career_band_ice_movie_played>
	endswitch
	if (<check> = 1)
		return \{true}
	endif
	return \{false}
endscript

script ui_select_venue_set_ice_movie_played \{part = Band}
	get_current_band_info
	GetGlobalTags <band_info>
	switch (<part>)
		case guitar
		SetGlobalTags <band_info> params = {career_guitar_ice_movie_played = 1}
		case Bass
		SetGlobalTags <band_info> params = {career_bass_ice_movie_played = 1}
		case drum
		SetGlobalTags <band_info> params = {career_drum_ice_movie_played = 1}
		case Vocals
		SetGlobalTags <band_info> params = {career_vocals_ice_movie_played = 1}
		case Band
		SetGlobalTags <band_info> params = {career_band_ice_movie_played = 1}
	endswitch
endscript

script ui_gig_posters_play_movie 
	SetScriptCannotPause
	clean_up_user_control_helpers
	OnExitRun \{ui_gig_posters_play_movie_destroy}
	RequireParams \{[
			movie
		]
		all}
	Menu_Music_Off
	spawnscriptnow \{destroy_setlist_songpreview_monitor}
	SetSoundBussParams {Crowd_Balance = {vol = (($Default_BussSet.Crowd_Balance.vol) - 100)} time = 2.0}
	SetSoundBussParams {Music_Setlist = {vol = (($Default_BussSet.Music_Setlist.vol) - 100)} time = 0.5}
	fadetoblack \{on
		time = 0
		alpha = 1.0
		z_priority = 100}
	wait_for_songpreview_monitor
	KillAllMovies
	WaitForAllMoviesToFinish
	set_bink_heap_state \{state = big}
	PlayMovie \{movie = 'silent_movie'
		TextureSlot = 0
		TexturePri = 1000
		no_hold}
	SoundEvent \{event = PreCutscene_Sfx}
	info_text = qs("")
	switch (<movie>)
		case 'GHM_Movie1'
		info_text = qs("Inspired by Metallica, you decide to start a band...")
		case 'GHM_Movie2'
		info_text = qs("On the way to opening act auditions...")
		case 'GHM_Movie3'
		info_text = qs("Sabotage on the road...")
		case 'GHM_Movie4'
		info_text = qs("Welcome to the big time...")
		case 'GHM_Movie_Outro'
		info_text = qs("The Coldest Show on Earth...")
		case 'stone_intro'
		info_text = qs("Old School at The Stone...")
	endswitch
	CreateScreenElement {
		type = DescInterface
		parent = root_window
		id = silent_movie
		desc = 'silent_movie'
		info_text = <info_text>
		alpha = 0.0
	}
	silent_movie :SE_SetProps \{alpha = 1.0
		time = 0.1}
	Wait \{5
		seconds}
	KillAllMovies
	silent_movie :SE_SetProps \{alpha = 0
		time = 0.1}
	silent_movie :SE_WaitProps
	DestroyScreenElement \{id = silent_movie}
	WaitForAllMoviesToFinish
	PlayMovieAndWait movie = <movie> noblack
	get_movie_id_by_name movie = <movie>
	SetGlobalTags <id> params = {unlocked = 1} all_active_players = 1
	menu_music_on
	SetSoundBussParams {Crowd_Balance = {vol = (($Default_BussSet.Crowd_Balance.vol))} time = 2.0}
endscript

script ui_gig_posters_play_movie_destroy 
	DestroyScreenElement \{id = silent_movie}
endscript

script ui_gig_posters_play_song 
	SetSpawnInstanceLimits \{max = 1
		management = ignore_spawn_request}
	setlist_menu :SE_SetProps \{block_events}
	change current_song = <song>
	change current_level = <level>
	change current_gig_number = <tier_num>
	part = Band
	if ($current_num_players = 1)
		GetPlayerInfo \{1
			part}
	endif
	ui_gig_posters_check_movies_played part = <part>
	if (<level> = load_z_Donnington)
		if (<movies_played> = 3)
			if ScreenElementExists \{id = SetlistInterface}
				SetlistInterface :SE_SetProps \{block_events}
			endif
			ui_gig_posters_play_movie \{movie = 'GHM_Movie4'}
			ui_gig_posters_set_movies_played part = <part> value = 4
		endif
	elseif (<level> = load_z_IceCave)
		if NOT ui_select_venue_check_ice_movie_played part = <part>
			if ScreenElementExists \{id = SetlistInterface}
				SetlistInterface :SE_SetProps \{block_events}
			endif
			ui_gig_posters_play_movie \{movie = 'GHM_Movie_Outro'}
			ui_select_venue_set_ice_movie_played part = <part>
		endif
	endif
	if (($signin_change_happening = 1) || ($invite_controller > -1))
		return
	endif
	generic_event_choose \{state = uistate_play_song}
endscript

script ui_destroy_gig_posters 
	menu_start_transition
	KillSpawnedScript \{name = ui_create_gig_posters_spawned}
	if NOT (($top_rockers_enabled) || (GotParam from_leaderboard))
		spawnscriptnow \{destroy_setlist_songpreview_monitor}
		if NOT ($game_mode = practice || $game_mode = training)
			menu_music_on
		endif
	endif
	if ScreenElementExists \{id = SetlistInterface}
		DestroyScreenElement \{id = SetlistInterface}
	endif
	clean_up_user_control_helpers
	fadetoblack \{off
		time = 0
		no_wait}
endscript

script ui_gig_posters_focus \{time = 0.1}
	if ScriptIsRunning \{ui_create_gig_posters_spawned}
		time = 0.0
	endif
	GetTags
	printf \{qs("\Lui_gig_posters_focus_song")}
	if NOT GotParam \{index}
		return
	endif
	destroy_loading_screen \{force = 1}
	fadetoblack \{off
		time = 0}
	SE_GetParentId
	<parent_id> :GetTags
	if (<prev_index> > <index>)
		pos_move = (0.0, -10.0)
	else
		pos_move = (0.0, 10.0)
	endif
	<ratio> = (<index> / (<total_songs> * 1.0))
	pos = ((0.0, 1.0) * ((<ratio> * 365) - 205))
	bg_pos = ((0.0, -1.0) * (<ratio> * (4400 - 720)))
	bg_runnerC_pos = ((0.0, -1.0) * (<ratio> * (2200 - 720)))
	bg_runnerL_pos = (((0.0, -1.0) * (<ratio> * (2200 - 720))) + (-640.0, 0.0))
	bg_runnerR_pos = (((0.0, -1.0) * (<ratio> * (2200 - 720))) + (640.0, 0.0))
	SetlistInterface :SE_SetProps {
		setlist_B_scrollthumb_pos = <pos>
		setlist_B_BG_pos = <bg_pos>
		setlist_B_BG_runnerC_pos = <bg_runnerC_pos>
		setlist_B_BG_runnerL_pos = <bg_runnerL_pos>
		setlist_B_BG_runnerR_pos = <bg_runnerR_pos>
		time = <time>
	}
	<parent_id> :SetTags prev_index = <index>
	if (<highlight> = 0)
		return
	endif
	<info_scores_container_alpha> = 1.0
	<instrument_icons_alpha> = 0.0
	if (($game_mode = p2_battle) || ($game_mode = p2_faceoff) || ($game_mode = p2_pro_faceoff))
		<info_scores_container_alpha> = 0.0
		<instrument_icons_alpha> = 0.0
	endif
	if NOT (<tag_selected_index> < <section_breaker_index_3>)
		<info_scores_container_alpha> = 0.0
		<instrument_icons_alpha> = 1.0
		setlist_get_jammode_playback_tracks jam_song = <jam_song> example_songs = <example_songs>
		icon_no_instrument_guitar_alpha = 1
		icon_no_instrument_bass_alpha = 1
		icon_no_instrument_drums_alpha = 1
		icon_no_instrument_mic_alpha = 1
		if GotParam \{playback_track1}
			if (<playback_track1> > -1)
				icon_no_instrument_guitar_alpha = 0
			endif
		endif
		if GotParam \{playback_track2}
			if (<playback_track2> > -1)
				icon_no_instrument_bass_alpha = 0
			endif
		endif
		if GotParam \{playback_track_drums}
			if (<playback_track_drums> > 0)
				icon_no_instrument_drums_alpha = 0
			endif
		endif
		if GotParam \{playback_track_vocals}
			if (<playback_track_vocals> > 0)
				icon_no_instrument_mic_alpha = 0
			endif
		endif
	endif
	FormatText TextName = song_text qs("\L%t: %a") a = <song_artist> t = <song_title>
	StringToCharArray string = <song_text>
	GetArraySize <char_array>
	GetPlayerInfo \{1
		double_kick_drum}
	<double_kick_alpha> = 0
	if (<song> != jamsession && <part> = drum && <double_kick_drum> = 1)
		if (($permanent_songlist_props.<song>.double_kick) = 1)
			<double_kick_alpha> = 1
		endif
	endif
	if (<double_bass_complete> = 1)
		icon_difficulty_expert_alpha = 0
		icon_difficulty_expert_plus_alpha = 1
		<highest_stars_difficulty_text> = qs("Expert+")
	else
		icon_difficulty_expert_alpha = 1
		icon_difficulty_expert_plus_alpha = 0
	endif
	song_info_icon_alpha = 0
	if (<new_song_info> = 1)
		<song_info_icon_alpha> = 1
	endif
	SE_SetProps {
		desc = 'setlist_b_info2_desc'
		auto_dims = false
		dims = (0.0, 150.0)
		setlist_info_title_artist_text = <song_text>
		setlist_info_title_artist_pos = {<pos_move> relative}
		icon_difficulty_texture = <icon_difficulty_texture>
		difficulty_and_stars_alpha = <icon_difficulty_alpha>
		text_difficulty_text = <highest_stars_difficulty_text>
		double_kick_alpha = <double_kick_alpha>
		song_info_icon_alpha = <song_info_icon_alpha>
		icon_difficulty_alpha = <icon_difficulty_expert_alpha>
		icon_difficulty_expert_plus_alpha = <icon_difficulty_expert_plus_alpha>
	}
	Obj_GetID
	change current_song_info_id = <ObjID>
	percent_diffs = ['beginner' 'easy' 'medium' 'hard' 'expert']
	percent_aliases = [
		alias_Setlist_B_stars_beginner
		alias_Setlist_B_stars_easy
		alias_Setlist_B_stars_medium
		alias_Setlist_B_stars_hard
		alias_Setlist_B_stars_expert
	]
	star_diffs = [
		beginner_stars
		easy_stars
		medium_stars
		hard_stars
		expert_stars
	]
	FormatText checksumname = percent100 '%s_percent100' s = (<percent_diffs> [<highest_stars_difficulty_index>])
	if GotParam <percent100>
		if <ObjID> :Desc_ResolveAlias name = alias_stars
			if (<...>.<percent100> = 1)
				<resolved_id> :SE_SetProps star_texture = song_complete_star_perfect star_rgba = [255 255 255 255]
			endif
			if <resolved_id> :Desc_ResolveAlias name = alias_stars
				GetScreenElementChildren id = <resolved_id>
				num_stars = (<...>.(<star_diffs> [<highest_stars_difficulty_index>]))
				if (<num_stars> = 0)
					<resolved_id> :SE_SetProps alpha = 0
				else
					GetArraySize <children>
					stars_left = <array_size>
					if (<num_stars> < 5 && <stars_left> = 5)
						if ScreenElementExists id = (<children> [0])
							DestroyScreenElement id = (<children> [0])
							stars_left = (<stars_left> - 1)
						endif
					endif
					if (<num_stars> < 4 && <stars_left> = 4)
						if ScreenElementExists id = (<children> [1])
							DestroyScreenElement id = (<children> [1])
						endif
					endif
				endif
			endif
		endif
	endif
	SE_SetProps {
		setlist_info_title_artist_pos = {(<pos_move> * -1) relative}
		time = <time>
	}
	if <ObjID> :Desc_ResolveAlias name = alias_setlist_info_title_artist
		GetScreenElementChildren id = <resolved_id>
		GetScreenElementProps id = (<children> [0]) force_update
		<width> = (<dims>.(1.0, 0.0) * <scale>.(1.0, 0.0))
		<double_kick_offset> = ((1.0, 0.0) * ((<width> / 2) + 12))
		<new_pos> = ((0.0, -30.0) - <double_kick_offset>)
		<ObjID> :SE_SetProps double_kick_pos = <new_pos>
	endif
	if (<tag_selected_index> < <section_breaker_index_3>)
		gig_posters_song_focus song = <song>
	else
		gig_posters_song_focus
	endif
	if (<new_song_info> = 1)
		<ObjID> :Obj_SpawnScriptNow song_info_icon_motion
		setlist_menu :SetTags \{pulse_song_extras = 1}
	else
		setlist_menu :SetTags \{pulse_song_extras = 0}
	endif
	setlist_menu :SetTags last_focused_song = <song>
	if NOT GotParam \{jam_song}
		ui_gig_posters_update_current_section index = <tag_selected_index> song = <song>
	else
		ui_gig_posters_update_current_section index = <tag_selected_index> song = <song> jam_song = <jam_song>
	endif
	<ObjID> :Obj_SpawnScriptNow ui_gig_posters_highlight_motion
endscript

script ui_gig_posters_unfocus 
	GetTags
	FormatText TextName = song_text qs("\L%t: %a") a = <song_artist> t = <song_title>
	GetPlayerInfo \{1
		double_kick_drum}
	<double_kick_alpha> = 0
	if (<song> != jamsession && <part> = drum && <double_kick_drum> = 1)
		if (($permanent_songlist_props.<song>.double_kick) = 1)
			<double_kick_alpha> = 1
		endif
	endif
	SE_SetProps {
		desc = 'setlist_b_listing_desc'
		auto_dims = false
		dims = (0.0, 50.0)
		listing_text = <song_text>
		listing_pos = (-20.0, 0.0)
		double_kick_alpha = <double_kick_alpha>
		stars_alpha = 1
		<difficulty_tags>
	}
	move_double_kick = 1
	if GotParam \{fading_in}
		if (<fading_in> = 1)
			<move_double_kick> = 0
			SetTags \{fading_in = 0}
		endif
	endif
	if (<move_double_kick> = 1)
		if Desc_ResolveAlias \{name = alias_listing}
			GetScreenElementChildren id = <resolved_id>
			GetScreenElementPosition id = <resolved_id> summed
			<text_pos> = <screenelementpos>
			GetScreenElementProps id = (<children> [0]) force_update
			<width> = (<dims>.(1.0, 0.0) * <scale>.(1.0, 0.0))
			<double_kick_offset> = ((1.0, 0.0) * ((<width> / 2) + 42) + (0.0, 1.0))
			<new_pos> = (<text_pos> - <double_kick_offset>)
			SE_SetProps double_kick_pos = <new_pos>
			<new_pos> = (<text_pos> + <double_kick_offset> - (45.0, 3.0))
			SE_SetProps stars_pos = <new_pos>
		endif
	endif
	percent_diffs = ['beginner' 'easy' 'medium' 'hard' 'expert']
	star_diffs = [
		beginner_stars
		easy_stars
		medium_stars
		hard_stars
		expert_stars
	]
	Obj_GetID
	FormatText checksumname = percent100 '%s_percent100' s = (<percent_diffs> [<highest_stars_difficulty_index>])
	if <ObjID> :Desc_ResolveAlias name = alias_stars
		if (<...>.<percent100> = 1)
			<ObjID> :SE_SetProps star_rgba = [255 255 255 175]
		endif
		GetScreenElementChildren id = <resolved_id>
		num_stars = (<...>.(<star_diffs> [<highest_stars_difficulty_index>]))
		if (<num_stars> = 0)
			<resolved_id> :SE_SetProps alpha = 0
		else
			GetArraySize <children>
			stars_left = <array_size>
			if (<num_stars> < 5 && <stars_left> = 5)
				if ScreenElementExists id = (<children> [4])
					DestroyScreenElement id = (<children> [4])
					stars_left = (<stars_left> - 1)
				endif
			endif
			if (<num_stars> < 4 && <stars_left> = 4)
				if ScreenElementExists id = (<children> [3])
					DestroyScreenElement id = (<children> [3])
				endif
			endif
		endif
	endif
endscript

script ui_gig_posters_update_current_section 
	setlist_menu :GetTags
	if (<index> >= <section_breaker_index_3>)
		<current_section> = 3
	elseif (<tag_selected_index> >= <section_breaker_index_2>)
		<current_section> = 2
	elseif (<tag_selected_index> >= <section_breaker_index_1>)
		<current_section> = 1
	endif
	printf qs("\LUpdating section for index %a to section %b") a = <index> b = <current_section>
	setlist_menu :SetTags current_section = <current_section>
	if ($ui_gig_posters_skip_helpers = 1)
		return
	endif
	if (<for_custom_setlist> = 1)
		setup_custom_setlist_helpers song = <song> jam_song = <jam_song>
	else
		clean_up_user_control_helpers
		if ($is_network_game = 1)
			if local_player_is_choosing_song
				add_user_control_helper \{text = qs("SELECT SONG")
					button = green
					z = 100}
				add_user_control_helper \{text = qs("BACK")
					button = red
					z = 100}
			endif
		else
			add_user_control_helper \{text = qs("SELECT SONG")
				button = green
				z = 100}
			add_user_control_helper \{text = qs("BACK")
				button = red
				z = 100}
			add_user_control_helper \{text = qs("SONG EXTRAS")
				button = Blue
				z = 100}
			if (<pulse_song_extras> = 1)
				spawnscriptnow pulsate_helper_pill params = {id = <helper_pill_ID> time = 0.5 delay_time = 0}
			else
				KillSpawnedScript \{name = pulsate_helper_pill}
			endif
		endif
		setlist_show_jump_helper_text
		if ($game_mode = p1_career ||
				$game_mode = p2_career ||
				$game_mode = p3_career ||
				$game_mode = p4_career)
			if ($enable_button_cheats = 1)
				add_user_control_helper \{text = qs("\LBEAT SONG")
					button = LB
					z = 100000}
			endif
		endif
	endif
endscript

script ui_gig_posters_debug_complete 
	SetSpawnInstanceLimits \{max = 1
		management = ignore_spawn_request}
	if ($enable_button_cheats = 0)
		return
	endif
	i = 1
	begin
	GetPlayerInfo <i> part
	GetPlayerInfo <i> controller
	GetSavegameFromController controller = <controller>
	GetGlobalTags <song_checksum> param = stars
	<old_stars> = <stars>
	SetGlobalTags <song_checksum> savegame = <savegame> params = {unlocked = 1 stars = 5 score = 1000}
	SetGlobalTags <song> savegame = <savegame> params = {unlocked = 1}
	if check_if_metallifacts_exists song = ($current_song)
		if (<old_stars> < 3)
			flag_new_song_info_for_all_difficulties new_song_info = 1 part = <part> song = <song>
		endif
	endif
	if (<part> = drum)
		GetPlayerInfo <i> double_kick_drum
		if (<double_kick_drum> = 1)
			if ($permanent_songlist_props.<song>.double_kick = 1)
				SetGlobalTags <song_checksum> savegame = <savegame> params = {double_bass_complete = 1}
			endif
		endif
	endif
	i = (<i> + 1)
	repeat ($current_num_players)
	ui_event \{event = menu_refresh}
endscript

script ui_gig_posters_choose 
	SetSpawnInstanceLimits \{max = 1
		management = ignore_spawn_request}
	ui_event event = menu_change data = {state = uistate_play_song <...>}
endscript

script ui_setlist_choose_song_extras 
	if Is_ui_event_running
		return
	endif
	SoundEvent \{event = Select_Sound_Big}
	RequireParams \{[
			song
			song_checksum
		]
		all}
	SetlistInterface :SE_SetProps \{block_events}
	setlist_menu :SE_SetProps \{block_events}
	spawnscriptnow ui_setlist_choose_song_extras_spawned params = {<...>}
endscript

script ui_setlist_choose_song_extras_spawned 
	SetSpawnInstanceLimits \{max = 1
		management = ignore_spawn_request}
	if ($current_song_info_id) :Desc_ResolveAlias name = alias_highlight
		GetScreenElementChildren id = <resolved_id>
		(<children> [0]) :SE_SetProps rgba = [255 255 255 200]
		(<children> [1]) :SE_SetProps rgba = [255 255 255 200]
		(<children> [2]) :SE_SetProps rgba = [255 255 255 200]
		SetlistInterface :SE_SetProps \{setlist_B_BG_runnerL_pos = {
				relative
				(-200.0, 0.0)
			}
			time = 0.1}
		SetlistInterface :SE_SetProps \{setlist_B_BG_runnerR_pos = {
				relative
				(200.0, 0.0)
			}
			time = 0.1}
		SetlistInterface :SE_SetProps \{setlist_scroll_alpha = 0
			time = 0.1}
		SetlistInterface :SE_WaitProps
		if NOT ScreenElementExists \{id = SetlistInterface}
			return
		endif
		(<children> [0]) :SE_SetProps rgba = [255 255 255 0]
		(<children> [1]) :SE_SetProps rgba = [255 255 255 0]
		(<children> [2]) :SE_SetProps rgba = [255 255 255 0]
	endif
	($current_song_info_id) :SE_GetProps double_kick_alpha
	($current_song_info_id) :Desc_ResolveAlias name = alias_double_kick
	GetScreenElementPosition id = <resolved_id> summed
	flag_new_song_info_for_all_difficulties new_song_info = 0 part = <part> song = <song>
	ui_event_wait state = UIstate_song_extras data = {<...> from = SetList double_kick_alpha = <double_kick_alpha> double_kick_pos = <screenelementpos>}
endscript

script song_info_icon_motion 
	SetSpawnInstanceLimits \{max = 1
		management = kill_oldest}
	if Desc_ResolveAlias \{name = alias_song_info_icon}
		if GetScreenElementChildren id = <resolved_id>
			GetArraySize <children>
			prev = 0
			curr = 1
			begin
			prev_id = (<children> [<prev>])
			curr_id = (<children> [<curr>])
			if ScreenElementExists id = <prev_id>
				<prev_id> :SE_SetProps alpha = 0.0
			endif
			if ScreenElementExists id = <curr_id>
				<curr_id> :SE_SetProps alpha = 1
			endif
			prev = <curr>
			next = RandomInteger (0.0, 1.0)
			if (<next> = <prev>)
				curr = (<curr> + 1)
			else
				curr = <next>
			endif
			if (<curr> >= <array_size>)
				curr = 0
			endif
			Wait \{0.1
				second}
			repeat
		endif
	endif
endscript

script ui_gig_posters_popups 
	printf \{qs("\Lui_gig_posters_popups")
		channel = popup_debug}
	change \{ui_gig_posters_skip_helpers = 0}
	get_current_band_info
	GetGlobalTags <band_info> params = {first_career_setlist}
	if (<first_career_setlist> = 1)
		change \{ui_gig_posters_skip_helpers = 1}
		ui_event_wait \{state = UIstate_new_song_info_popup
			data = {
				is_popup
			}}
		SetGlobalTags <band_info> params = {first_career_setlist = 0}
	else
		GetPlayerInfo \{1
			part}
		GetPlayerInfo \{1
			double_kick_drum}
		if (<part> = drum && <double_kick_drum> = 1)
			GetGlobalTags <band_info> params = {first_setlist_drum}
			if (<first_setlist_drum> = 1 && <first_career_setlist> = 0)
				change \{ui_gig_posters_skip_helpers = 1}
				ui_event_wait \{state = UIstate_double_bass_popup
					data = {
						is_popup
					}}
				SetGlobalTags <band_info> params = {first_setlist_drum = 0}
			endif
		endif
	endif
endscript

script get_prev_total_songs 
	switch <part>
		case guitar
		GetGlobalTags <band_info> params = {career_guitar_prev_total_songs = <final_num_songs>}
		return prev_total_songs = <career_guitar_prev_total_songs>
		case Bass
		GetGlobalTags <band_info> params = {career_bass_prev_total_songs = <final_num_songs>}
		return prev_total_songs = <career_bass_prev_total_songs>
		case drum
		GetGlobalTags <band_info> params = {career_drum_prev_total_songs = <final_num_songs>}
		return prev_total_songs = <career_drum_prev_total_songs>
		case Vocals
		GetGlobalTags <band_info> params = {career_vocals_prev_total_songs = <final_num_songs>}
		return prev_total_songs = <career_vocals_prev_total_songs>
		case Band
		GetGlobalTags <band_info> params = {career_band_prev_total_songs = <final_num_songs>}
		return prev_total_songs = <career_band_prev_total_songs>
	endswitch
endscript

script set_prev_total_songs 
	switch <part>
		case guitar
		SetGlobalTags <band_info> params = {career_guitar_prev_total_songs = <final_num_songs>}
		case Bass
		SetGlobalTags <band_info> params = {career_bass_prev_total_songs = <final_num_songs>}
		case drum
		SetGlobalTags <band_info> params = {career_drum_prev_total_songs = <final_num_songs>}
		case Vocals
		SetGlobalTags <band_info> params = {career_vocals_prev_total_songs = <final_num_songs>}
		case Band
		SetGlobalTags <band_info> params = {career_band_prev_total_songs = <final_num_songs>}
	endswitch
endscript
