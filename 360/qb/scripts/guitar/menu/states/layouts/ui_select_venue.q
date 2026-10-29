ui_select_venue_info = {
	load_z_MoP = {
		movie = 'venue_mop'
		info = qs("You'll get no sleep 'til you play at the Hammersmith Apollo in London, England.")
	}
	load_z_forum = {
		movie = 'venue_forum'
		info = qs("Take to the 'Snakepit' stage at The Forum in Los Angeles, CA.")
	}
	load_z_Tushino = {
		movie = 'venue_tushino'
		info = qs("Tushino Airfield, U.S.S.R. where Metallica played to an estimated 500,000 screaming fans.")
	}
	load_z_meadowlands = {
		movie = 'venue_meadowlands'
		info = qs("A re-creation of the 'Cunning Stunts' stage at The Meadowlands in New Jersey.")
	}
	load_z_Justice = {
		movie = 'venue_justice'
		info = qs("The 'Damaged Justice Tour' complete with crumbling Lady Justice, also known as Doris.")
	}
	load_z_Donnington = {
		movie = 'venue_donnington'
		info = qs("You know you've hit the big time once you play a big festival at the legendary Donington Park.")
	}
	load_z_Stone = {
		movie = 'venue_stone'
		info = qs("The old school club from Metallica's stomping ground of San Fran, where Metallica played their first show with Cliff Burton.")
	}
	load_z_IceCave = {
		movie = 'venue_icecave'
		info = qs("You have descended the 600 dark steps into the nightmare corpse-city.")
	}
	load_z_Studio2 = {
		movie = 'venue_studio2'
		info = qs("Metallica's personal studio.")
	}
	load_z_soundcheck2 = {
		movie = 'venue_soundcheck2'
		info = qs("Metallica's Headquarters.")
	}
}

script ui_create_select_venue 
	spawnscriptnow \{TurnPreviewsDown_VenueMenu}
	get_progression_globals ($current_progression_flag)
	if StructureContains Structure = ($permanent_songlist_props.<song>) in_the_round
		if (($permanent_songlist_props.<song>.in_the_round) = 1)
			round_only = 1
		endif
	endif
	array = []
	GetArraySize \{$LevelZoneArray}
	level_zone_array_size = <array_size>
	index = 0
	begin
	get_LevelZoneArray_checksum index = <index>
	if NOT StructureContains Structure = ($LevelZones.<level_checksum>) debug_only
		FormatText {
			checksumname = venue_checksum
			'%s_%i'
			s = ($LevelZones.<level_checksum>.name)
			i = ($instrument_list.($<tier_global>.part).text_nl)
			AddToStringLookup = true
		}
		GetGlobalTags <venue_checksum> param = unlocked
		printf 'venue_checksum = %v .. unlocked = %u' v = <venue_checksum> u = <unlocked>
		add_venue = 0
		if (<unlocked> = 1)
			add_venue = 1
		endif
		if ($Cheat_UnlockATTBallpark = 1)
			if (<level_checksum> = load_z_Ballpark)
				add_venue = 1
			endif
		endif
		if GotParam \{round_only}
			if NOT StructureContains Structure = ($LevelZones.<level_checksum>) in_the_round
				add_venue = 0
			endif
		endif
		if (<add_venue> = 1)
			AddArrayElement array = <array> element = <level_checksum>
		endif
	endif
	<index> = (<index> + 1)
	repeat <array_size>
	GetArraySize <array>
	index = 0
	i = 0
	begin
	if (<level> = <array> [<i>])
		index = <i>
	endif
	i = (<i> + 1)
	repeat <array_size>
	CreateScreenElement {
		type = DescInterface
		parent = root_window
		id = current_menu_anchor
		desc = 'venue_selection'
		exclusive_device = ($primary_controller)
		tags = {
			index = <index>
			level_array = <array>
			array_size = <array_size>
			tier_num = <tier_num>
		}
	}
	AssignAlias \{id = current_menu_anchor
		alias = current_menu}
	current_menu :SE_SetProps {
		event_handlers = [
			{pad_back generic_event_back}
			{pad_up ui_select_venue_scroll params = {up}}
			{pad_down ui_select_venue_scroll params = {down}}
			{pad_choose ui_select_venue_choose params = {song = <song>}}
		]
		venue_name_text = ($LevelZones.(<array> [<index>]).title)
		venue_information_text = ($LevelZones.(<array> [<index>]).title)
	}
	current_menu :SE_SetProps \{venue_screenshot_texture = black}
	current_menu :obj_spawnscript \{ui_select_venue_update}
	current_menu :obj_spawnscript \{highlight_motion}
	menu_finish
endscript

script ui_destroy_select_venue 
	generic_ui_destroy
	fadetoblack \{off
		time = 0
		no_wait}
endscript

script ui_select_venue_scroll 
	SetSpawnInstanceLimits \{max = 1
		management = ignore_spawn_request}
	if ScriptIsRunning \{ui_select_venue_update}
		return
	endif
	GetTags
	if GotParam \{down}
		generic_menu_up_or_down_sound \{params = {
				down
			}}
		index = (<index> + 1)
		if (<index> >= <array_size>)
			index = 0
		endif
	else
		generic_menu_up_or_down_sound \{params = {
				up
			}}
		index = (<index> - 1)
		if (<index> < 0)
			index = (<array_size> - 1)
		endif
	endif
	SetTags index = <index>
	obj_spawnscript ui_select_venue_update params = <...>
endscript

script ui_select_venue_update 
	SetSpawnInstanceLimits \{max = 1
		management = ignore_spawn_request}
	GetTags
	SE_SetProps venue_name_text = ($LevelZones.(<level_array> [<index>]).title)
	if StructureContains Structure = ($ui_select_venue_info) (<level_array> [<index>])
		if StructureContains Structure = ($ui_select_venue_info.(<level_array> [<index>])) movie
			if Desc_ResolveAlias \{name = alias_venue_screenshot}
				current_movie = ''
				<resolved_id> :GetSingleTag current_movie
				if NOT (<current_movie> = ($ui_select_venue_info.(<level_array> [<index>]).movie))
					DestroyScreenElement \{id = venue_movie}
					KillAllMovies
					WaitForAllMoviesToFinish
					SE_SetProps \{venue_screenshot_texture = black}
					<resolved_id> :SE_GetProps
					CreateScreenElement {
						type = MovieElement
						parent = <resolved_id>
						id = venue_movie
						dims = <dims>
						just = [center center]
						pos_anchor = [center center]
						pos = (3.0, 0.0)
						TextureSlot = 1
						TexturePri = 1000
						no_hold
						movie = ($ui_select_venue_info.(<level_array> [<index>]).movie)
					}
					<resolved_id> :SetTags current_movie = ($ui_select_venue_info.(<level_array> [<index>]).movie)
				endif
			endif
		else
			DestroyScreenElement \{id = venue_movie}
			KillAllMovies
			SE_SetProps \{venue_screenshot_texture = black}
		endif
		if StructureContains Structure = ($ui_select_venue_info.(<level_array> [<index>])) info
			SE_SetProps venue_information_text = ($ui_select_venue_info.(<level_array> [<index>]).info)
		else
			SE_SetProps \{venue_information_text = qs("\L")}
		endif
	else
		DestroyScreenElement \{id = venue_movie}
		KillAllMovies
		SE_SetProps \{venue_screenshot_texture = black
			venue_information_text = qs("\L")}
	endif
	if GotParam \{down}
		SE_SetProps \{arrow_down_scale = 1.5
			time = 0.1}
	else
		SE_SetProps \{arrow_up_scale = 1.5
			time = 0.1}
	endif
	SE_WaitProps
	SE_SetProps \{arrow_down_scale = 1.0
		arrow_up_scale = 1.0
		time = 0.1}
endscript

script ui_select_venue_choose 
	SetSpawnInstanceLimits \{max = 1
		management = ignore_spawn_request}
	SE_SetProps \{block_events}
	GetTags
	DestroyScreenElement \{id = venue_movie}
	KillAllMovies
	WaitForAllMoviesToFinish
	if ((<level_array> [<index>]) = load_z_Stone)
		GetPlayerInfo \{1
			part}
		if ($current_num_players > 1)
			part = Band
		endif
		if NOT ui_select_venue_check_stone_movie_played part = <part>
			Wait \{5
				gameframe}
			clean_up_user_control_helpers
			ui_gig_posters_play_movie \{movie = 'stone_intro'}
			ui_select_venue_set_stone_movie_played part = <part>
			if (($signin_change_happening = 1) || ($invite_controller > -1))
				return
			endif
		endif
	elseif ((<level_array> [<index>]) = load_z_Donnington)
		part = Band
		if ($current_num_players = 1)
			GetPlayerInfo \{1
				part}
		endif
		ui_gig_posters_check_movies_played part = <part>
		if (<movies_played> = 3)
			Wait \{5
				gameframe}
			clean_up_user_control_helpers
			ui_gig_posters_play_movie \{movie = 'GHM_Movie4'}
			ui_gig_posters_set_movies_played part = <part> value = 4
			if (($signin_change_happening = 1) || ($invite_controller > -1))
				return
			endif
		endif
	endif
	venue_select_play_song <...> selected_level = (<level_array> [<index>])
endscript

script venue_select_play_song 
	printscriptinfo \{qs("venue_select_play_song")}
	stoprendering
	destroy_menu \{menu_id = GigBoardVenueSelectInterface}
	SoundEvent \{event = Song_Affirmation}
	change current_song = <song>
	change current_gig_number = <tier_num>
	generic_event_replace no_sound state = uistate_play_song data = {<...>}
endscript

script ui_select_venue_check_stone_movie_played \{part = Band}
	get_current_band_info
	GetGlobalTags <band_info>
	switch (<part>)
		case guitar
		check = <career_guitar_stone_movie_played>
		case Bass
		check = <career_bass_stone_movie_played>
		case drum
		check = <career_drum_stone_movie_played>
		case Vocals
		check = <career_vocals_stone_movie_played>
		case Band
		check = <career_band_stone_movie_played>
	endswitch
	if (<check> = 1)
		return \{true}
	endif
	return \{false}
endscript

script ui_select_venue_set_stone_movie_played \{part = Band}
	get_current_band_info
	GetGlobalTags <band_info>
	switch (<part>)
		case guitar
		SetGlobalTags <band_info> params = {career_guitar_stone_movie_played = 1}
		case Bass
		SetGlobalTags <band_info> params = {career_bass_stone_movie_played = 1}
		case drum
		SetGlobalTags <band_info> params = {career_drum_stone_movie_played = 1}
		case Vocals
		SetGlobalTags <band_info> params = {career_vocals_stone_movie_played = 1}
		case Band
		SetGlobalTags <band_info> params = {career_band_stone_movie_played = 1}
	endswitch
endscript
