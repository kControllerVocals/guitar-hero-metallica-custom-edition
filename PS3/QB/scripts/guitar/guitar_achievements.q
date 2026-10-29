gStar_Power_Triggered = 0
Achievement_Scripts = [
	Achievements_THE_MORE_I_SEE
	Achievements_METALLICA
	Achievements_JAMES_HETFIELD
	Achievements_LARS_ULRICH
	Achievements_KIRK_HAMMET
	Achievements_ROBERT_TRUJILLO
	Achievements_HOLIER_THAN_THOU
	Achievements_ONE
	Achievements_AND_JUSTICE_FOR_ALL
	Achievements_THE_ECSTACY_OF_GOLD
	Achievements_DAMAGE_INC
	Achievements_MOTORBREATH
	Achievements_SOME_KIND_OF_MONSTER
	Achievements_INVISIBLE_KID
	Achievements_RIDE_THE_LIGHTNING
	Achievements_2X4
	Achievements_METAL_MILITIA
	Achievements_MASTER_OF_PUPPETS
	Achievements_THE_STRUGGLE_WITHIN
	Achievements_THE_FOUR_HORSEMEN
	Achievements_NOTHING_ELSE_MATTERS
	Achievements_BLACK
	Achievements_BETTER_THAN_YOU
	Achievements_BLITZKRIEG
	Achievements_SEEK_AND_DESTROY
	Achievements_THE_UNFORGIVEN
	Achievements_THE_UNFORGIVEN_II
	Achievements_THE_UNFORGIVEN_III
	Achievements_RELOAD
	Achievements_CURE
	Achievements_GREEN_HELL
	Achievements_DISPOSABLE_HEROES
	Achievements_BLACKENED
	Achievements_EYE_OF_THE_BEHOLDER
	Achievements_FIXXXER
	Achievements_HERO_OF_THE_DAY
	Achievements_THE_HOUSE_JACK_BUILT
	Achievements_WHEREVER_I_MAY_ROAM
	Achievements_TRAPPED_UNDER_ICE
	Achievements_STONE_DEAD_FOREVER
	Achievements_KING_DIAMOND
	Achievements_LEMMY
	Achievements_THE_MEMORY_REMAINS
	Achievements_CREEPING_DEATH
	Achievements_DYERS_EVE
	Achievements_FIGHT_FIRE_WITH_FIRE
	Achievements_STONE_COLD_CRAZY
	Achievements_ENTER_SANDMAN
	Achievements_BATTERY
	Achievements_ASTRONOMY
]

script Achievements_Update 
	if Achievements_IsCheating
		return
	endif
	GetArraySize \{$Achievement_Scripts}
	printf qs("\LSongComplete = %n") n = ($Achievements_SongCompleteFlag)
	printf qs("\LSongWon = %n") n = ($Achievements_SongWonFlag)
	determine_game_scores_and_winner
	printf qs("\Lteam_score = %n") n = <team_score>
	printf qs("\Lopponent_team_score = %n") n = <opponent_team_score>
	printf qs("\Ltie = %b") b = <tie>
	<i> = 0
	begin
	<Scr> = ($Achievement_Scripts [<i>])
	<Scr>
	<i> = (<i> + 1)
	repeat <array_size>
endscript
Achievements_SongCompleteFlag = 0
Achievements_SongWonFlag = 0
Achievements_NewGigWonFlag = 0
Achievements_2X4_flag = 0
Achievements_RIDE_THE_LIGHTNING_flag = 0
Achievements_super_group_unite_flag = 0
Achievements_creating_character = 0
Achievements_modified_logo = 0
Achievements_Ignore_Bots = 0

script Achievements_ResetGlobals 
	change \{Achievements_SongWonFlag = 0}
	change \{Achievements_NewGigWonFlag = 0}
	change \{Achievements_2X4_flag = 0}
	change \{Achievements_RIDE_THE_LIGHTNING_flag = 0}
	change \{Achievements_super_group_unite_flag = 0}
	change \{Achievements_creating_character = 0}
	change \{Achievements_modified_logo = 0}
	change \{Achievements_Ignore_Bots = 0}
endscript

script Achievements_IsSongWon 
	if ($Achievements_SongWonFlag = 1)
		return \{true}
	endif
	printf \{qs("\LSong Not Won")}
	return \{false}
endscript

script Achievements_IsSongCompleted 
	if ($Achievements_SongCompleteFlag = 1)
		return \{true}
	endif
	printf \{qs("\LSong not complete")}
	return \{false}
endscript

script Achievements_IsNewGigWon 
	if ($Achievements_NewGigWonFlag = 1)
		return \{true}
	endif
	return \{false}
endscript

script Achievements_AreAnyGigsWon \{part = 'guitar'}
	FormatText checksumname = career_part_struct 'gh4_career_%p_songs' p = <part>
	<total_gigs> = ($<career_part_struct>.num_tiers)
	<i> = 1
	begin
	FormatText checksumname = career_part_gig 'career_%p_gig%n' p = <part> n = <i>
	GetGlobalTags <career_part_gig>
	if (<completed> = 1)
		return \{true}
	endif
	<i> = (<i> + 1)
	repeat <total_gigs>
	return \{false}
endscript

script Achievements_NumGigsWon \{part = 'guitar'}
	FormatText checksumname = player_status 'player%n_status' n = <player>
	get_savegame_from_controller controller = ($<player_status>.controller)
	FormatText checksumname = career_part_struct 'gh4_career_%p_songs' p = <part>
	<total_gigs> = ($<career_part_struct>.num_tiers)
	<num_crucial_gigs> = 0
	<num_gigs_won> = 0
	<i> = 1
	begin
	FormatText checksumname = career_part_gig 'career_%p_gig%n' p = <part> n = <i>
	GetGlobalTags <career_part_gig> savegame = <savegame>
	FormatText checksumname = tier 'tier%n' n = <i>
	if NOT StructureContains Structure = ($<career_part_struct>.<tier>) paytoplay
		if NOT StructureContains Structure = ($<career_part_struct>.<tier>) debug_gig
			if NOT StructureContains Structure = ($<career_part_struct>.<tier>) createagig
				<num_crucial_gigs> = (<num_crucial_gigs> + 1)
				if (<completed> = 1)
					<num_gigs_won> = (<num_gigs_won> + 1)
				endif
			endif
		endif
	endif
	<i> = (<i> + 1)
	repeat <total_gigs>
	return num_gigs_won = <num_gigs_won> total_gigs = <num_crucial_gigs>
endscript

script Achievements_NumGigsWonOnDiff \{part = 'guitar'
		diff = expert}
	FormatText checksumname = player_status 'player%n_status' n = <player>
	get_savegame_from_controller controller = ($<player_status>.controller)
	FormatText checksumname = career_part_struct 'gh4_career_%p_songs' p = <part>
	<total_gigs> = ($<career_part_struct>.num_tiers)
	<num_crucial_gigs> = 0
	<num_gigs_won> = 0
	<diff_array> = []
	switch (<diff>)
		case easy
		<diff_array> = [easy medium hard expert]
		case medium
		<diff_array> = [medium hard expert]
		case hard
		<diff_array> = [hard expert]
		case expert
		<diff_array> = [expert]
		default
		<diff_array> = [easy]
	endswitch
	<i> = 1
	begin
	FormatText checksumname = career_part_gig 'career_%p_gig%n' p = <part> n = <i>
	GetGlobalTags <career_part_gig> savegame = <savegame>
	FormatText checksumname = tier 'tier%n' n = <i>
	if NOT StructureContains Structure = ($<career_part_struct>.<tier>) paytoplay
		if NOT StructureContains Structure = ($<career_part_struct>.<tier>) debug_gig
			if NOT StructureContains Structure = ($<career_part_struct>.<tier>) createagig
				<num_crucial_gigs> = (<num_crucial_gigs> + 1)
				GetArraySize ($<career_part_struct>.<tier>.songs)
				<num_required> = <array_size>
				<song_size> = <array_size>
				<array_entry> = 0
				begin
				GetArraySize <diff_array>
				<diff_size> = <array_size>
				<diff_index> = 0
				begin
				<diff> = (<diff_array> [<diff_index>])
				format_globaltag_song_checksum part = ($<career_part_struct>.part) song = ($<career_part_struct>.<tier>.songs [<array_entry>]) difficulty = <diff>
				GetGlobalTags <song_checksum> params = stars
				if (<stars> > 2)
					<num_required> = (<num_required> - 1)
					break
				endif
				<diff_index> = (<diff_index> + 1)
				repeat <diff_size>
				<array_entry> = (<array_entry> + 1)
				repeat <song_size>
				if (<num_required> <= 0)
					<num_gigs_won> = (<num_gigs_won> + 1)
				endif
			endif
		endif
	endif
	<i> = (<i> + 1)
	repeat <total_gigs>
	return num_gigs_won = <num_gigs_won> total_gigs = <num_crucial_gigs>
endscript

script Achievements_CareerComplete \{part = guitar
		player = 1}
	GetPlayerInfo <player> bot_play
	if (<bot_play> = 1)
		return \{complete = 0}
	endif
	if isXenon
		GetPlayerInfo <player> controller
		if NOT CheckForSignIn local controller_index = <controller>
			return \{complete = 0}
		endif
	endif
	switch <part>
		case guitar
		tier_global = GH4_Career_Guitar_Songs
		case Bass
		tier_global = GH4_Career_Bass_Songs
		case drum
		tier_global = GH4_Career_Drum_Songs
		case Vocals
		tier_global = GH4_Career_Vocals_Songs
		case Band
		tier_global = GH4_Career_Band_Songs
		default
		printf \{qs("\LInvalid part type")}
		return \{complete = 0}
	endswitch
	GetPlayerInfo <player> controller
	get_savegame_from_controller controller = <controller>
	GameMode_GetNumPlayersShown
	if (<num_players_shown> > 1 && <controller> != ($band_mode_current_leader))
		printf qs("\LPlayer %n not the leader") n = <player>
		return \{complete = 0}
	endif
	if GotParam \{difficulty}
		format_globaltag_song_checksum part_text = ($part_list_props.<part>.text_nl) song = TheThingThat difficulty = <difficulty>
		GetGlobalTags <song_checksum> param = stars savegame = <savegame>
		printf qs("\Lstars = %s") s = <stars>
		if (<stars> >= 3)
			return \{complete = 1}
		endif
	else
		GetArraySize ($difficulty_list)
		<i> = 0
		begin
		format_globaltag_song_checksum part_text = ($part_list_props.<part>.text_nl) song = TheThingThat difficulty_index = <i>
		GetGlobalTags <song_checksum> param = stars savegame = <savegame>
		printf qs("\Lstars = %s") s = <stars>
		if (<stars> >= 3)
			return \{complete = 1}
		endif
		<i> = (<i> + 1)
		repeat <array_size>
	endif
	return \{complete = 0}
endscript

script Achievements_GetPartString 
	switch (<part>)
		case guitar
		return \{part_string = 'guitar'}
		case Bass
		return \{part_string = 'bass'}
		case drum
		return \{part_string = 'drum'}
		case Vocals
		return \{part_string = 'vocals'}
		case none
		return \{part_string = 'none'}
		default
		return \{part_string = 'none'}
	endswitch
endscript

script Achievements_AwardPlayer 
	if ($Achievements_Ignore_Bots = 0)
		GetPlayerInfo <player> bot_play
		if (<bot_play> = 1)
			return
		endif
	endif
	GetPlayerInfo <player> part
	if (<part> = Vocals)
		if ($current_song != jamsession)
			if StructureContains Structure = ($permanent_songlist_props.($current_song)) doesnt_support_vocals
				return
			endif
		endif
	endif
	FormatText checksumname = player_status 'player%n_status' n = <player>
	<controller> = ($<player_status>.controller)
	WriteAchievements achievement = <achievement> controller_id = <controller>
	printf qs("\LUNLOCKED for Player %n on controller %c") n = <player> c = <controller>
endscript

script Achievements_AwardBand 
	GameMode_GetNumPlayersShown
	<player> = 1
	begin
	Achievements_AwardPlayer achievement = <achievement> player = <player>
	<player> = (<player> + 1)
	repeat <num_players_shown>
endscript

script Achievements_CheckForBandStreak 
	if ($Achievements_2X4_flag = 0 && ($game_mode = p4_career || $game_mode = p4_quickplay || $game_mode = p8_pro_faceoff))
		<four_way_streak> = 1
		<player> = 1
		begin
		GetPlayerInfo <player> current_run
		if (<current_run> < 50)
			<four_way_streak> = 0
			break
		endif
		<player> = (<player> + 1)
		repeat 4
		if (<four_way_streak> = 1)
			change \{Achievements_2X4_flag = 1}
		endif
	endif
endscript

script Achievements_CheckForSuperGroupUnite 
	if ($Achievements_super_group_unite_flag = 0 && ($game_mode = p4_career || $game_mode = p4_quickplay || $game_mode = p8_pro_faceoff))
		<four_way_multiplier> = 1
		<player> = 1
		begin
		FormatText checksumname = player_status 'player%n_status' n = <player>
		get_current_multiplier player_status = <player_status>
		if (<multiplier> < 8)
			<four_way_multiplier> = 0
			break
		endif
		<player> = (<player> + 1)
		repeat 4
		if (<four_way_multiplier> = 1)
			change \{Achievements_super_group_unite_flag = 1}
		endif
	endif
endscript

script Achievements_IsCheatingAutoKick 
	if ($Cheat_AutoKick = 1 || $Cheat_FreeDrum = 1)
		GameMode_GetNumPlayersShown
		<player> = 1
		begin
		GetPlayerInfo <player> part
		if (<part> = drum)
			printf \{qs("\LCheating")}
			return \{true}
		endif
		<player> = (<player> + 1)
		repeat <num_players_shown>
	endif
	return \{false}
endscript

script Achievements_IsCheating 
	if ($Cheat_AutoKick = 1 || $Cheat_FreeDrum = 1)
		GameMode_GetNumPlayersShown
		<player> = 1
		begin
		GetPlayerInfo <player> part
		if (<part> = drum)
			printf \{qs("\LCheating")}
			return \{true}
		endif
		<player> = (<player> + 1)
		repeat <num_players_shown>
	endif
	if ($Cheat_AlwaysSlide = 1)
		GameMode_GetNumPlayersShown
		<player> = 1
		begin
		GetPlayerInfo <player> part
		if (<part> = guitar)
			printf \{qs("\LCheating")}
			return \{true}
		endif
		<player> = (<player> + 1)
		repeat <num_players_shown>
	endif
	return \{false}
endscript

script Achievements_ResetGreenHellFlags 
	GameMode_GetNumPlayersShown
	printf qs("\Lnum_players = %n") n = <num_players_shown> channel = ach_debug
	<player> = 1
	begin
	GetPlayerInfo <player> controller
	get_savegame_from_controller controller = <controller>
	SetGlobalTags savegame = <savegame> achievement_info params = {green_note_missed = 0}
	SetGlobalTags savegame = <savegame> achievement_info params = {green_notes_exist = 0}
	<player> = (<player> + 1)
	repeat <num_players_shown>
endscript

script Achievements_OnlineMatchPlayed 
	GameMode_GetNumPlayersShown
	savegames = [-1 -1 -1 -1]
	<player> = 1
	begin
	GetPlayerInfo <player> controller
	if CheckForSignIn local controller_index = <controller>
		get_savegame_from_controller controller = <controller>
		printf qs("\Lp%p savegame = %n") p = <player> n = <savegame>
		if NOT ArrayContains array = <savegames> contains = <savegame>
			GetGlobalTags savegame = <savegame> achievement_info param = num_online_matches_played
			printf qs("\Lp%p online_matches_played = %n + 1") p = <player> n = <num_online_matches_played>
			<num_online_matches_played> = (<num_online_matches_played> + 1)
			SetGlobalTags savegame = <savegame> achievement_info params = {num_online_matches_played = <num_online_matches_played>}
			SetArrayElement ArrayName = savegames index = (<player> - 1) newvalue = <savegame>
		endif
	endif
	<player> = (<player> + 1)
	repeat <num_players_shown>
endscript

script Achievements_THE_MORE_I_SEE 
	printf \{'Achievements_THE_MORE_I_SEE'}
	GetGlobalTags \{training}
	if (<basic_lesson> = complete &&
			<star_power_lesson> = complete &&
			<advanced_techniques_lesson> = complete &&
			<new_features_lesson> = complete &&
			<drum_basic_lesson> = complete &&
			<drum_int_lesson> = complete &&
			<vocals_lesson> = complete &&
			<band_lesson> = complete &&
			<versus_lesson> = complete)
		printf \{qs("\LUNLOCKED")}
		WriteAchievements \{achievement = THE_MORE_I_SEE
			controller_id = 0}
		WriteAchievements \{achievement = THE_MORE_I_SEE
			controller_id = 1}
		WriteAchievements \{achievement = THE_MORE_I_SEE
			controller_id = 2}
		WriteAchievements \{achievement = THE_MORE_I_SEE
			controller_id = 3}
	endif
endscript

script Achievements_METALLICA 
	printf \{'Achievements_METALLICA'}
	GameMode_GetNumPlayersShown
	<player> = 1
	begin
	Achievements_CareerComplete part = guitar player = <player> difficulty = expert
	if (<complete> = 1)
		Achievements_AwardPlayer achievement = metallica player = <player>
	endif
	Achievements_CareerComplete part = Bass player = <player> difficulty = expert
	if (<complete> = 1)
		Achievements_AwardPlayer achievement = metallica player = <player>
	endif
	Achievements_CareerComplete part = drum player = <player> difficulty = expert
	if (<complete> = 1)
		Achievements_AwardPlayer achievement = metallica player = <player>
	endif
	Achievements_CareerComplete part = Vocals player = <player> difficulty = expert
	if (<complete> = 1)
		Achievements_AwardPlayer achievement = metallica player = <player>
	endif
	Achievements_CareerComplete part = Band player = <player> difficulty = expert
	if (<complete> = 1)
		Achievements_AwardPlayer achievement = metallica player = <player>
	endif
	<player> = (<player> + 1)
	repeat <num_players_shown>
endscript

script Achievements_JAMES_HETFIELD 
	printf \{'Achievements_JAMES_HETFIELD'}
	GameMode_GetNumPlayers
	if (<num_players> > 1)
		return
	endif
	Achievements_CareerComplete \{part = Vocals
		player = 1}
	if (<complete> = 1)
		Achievements_AwardPlayer \{achievement = JAMES_HETFIELD
			player = 1}
	endif
endscript

script Achievements_LARS_ULRICH 
	printf \{'Achievements_LARS_ULRICH'}
	GameMode_GetNumPlayers
	if (<num_players> > 1)
		return
	endif
	Achievements_CareerComplete \{part = drum
		player = 1}
	if (<complete> = 1)
		Achievements_AwardPlayer \{achievement = LARS_ULRICH
			player = 1}
	endif
endscript

script Achievements_KIRK_HAMMET 
	printf \{'Achievements_KIRK_HAMMET'}
	GameMode_GetNumPlayers
	if (<num_players> > 1)
		return
	endif
	Achievements_CareerComplete \{part = guitar
		player = 1}
	if (<complete> = 1)
		Achievements_AwardPlayer \{achievement = KIRK_HAMMET
			player = 1}
	endif
endscript

script Achievements_ROBERT_TRUJILLO 
	printf \{'Achievements_ROBERT_TRUJILLO'}
	GameMode_GetNumPlayers
	if (<num_players> > 1)
		return
	endif
	Achievements_CareerComplete \{part = Bass
		player = 1}
	if (<complete> = 1)
		Achievements_AwardPlayer \{achievement = ROBERT_TRUJILLO
			player = 1}
	endif
endscript

script Achievements_HOLIER_THAN_THOU 
	printf \{'Achievements_HOLIER_THAN_THOU'}
	GameMode_GetNumPlayers
	if (<num_players> > 1)
		return
	endif
	Achievements_CareerComplete \{part = guitar
		player = 1}
	if (<complete> = 0)
		return
	endif
	Achievements_CareerComplete \{part = Bass
		player = 1}
	if (<complete> = 0)
		return
	endif
	Achievements_CareerComplete \{part = drum
		player = 1}
	if (<complete> = 0)
		return
	endif
	Achievements_CareerComplete \{part = Vocals
		player = 1}
	if (<complete> = 0)
		return
	endif
	Achievements_AwardPlayer \{achievement = HOLIER_THAN_THOU
		player = 1}
endscript

script Achievements_ONE 
	printf \{'Achievements_ONE'}
	if NOT Achievements_IsSongCompleted
		return
	endif
	if NOT Achievements_IsSongWon
		return
	endif
	if ($is_network_game = 1)
		return
	endif
	if ($game_mode = tutorial ||
			$game_mode = training ||
			$game_mode = p1_improv ||
			$rich_presence_context = presence_music_studio)
		return
	endif
	if NOT ($game_mode = p1_quickplay ||
			$game_mode = p2_quickplay ||
			$game_mode = p3_quickplay ||
			$game_mode = p4_quickplay ||
			$game_mode = p1_career ||
			$game_mode = p2_career ||
			$game_mode = p3_career ||
			$game_mode = p4_career)
		return
	endif
	GameMode_GetNumPlayersShown
	<player> = 1
	begin
	GetPlayerInfo <player> difficulty
	if (<difficulty> = hard || <difficulty> = expert)
		Achievements_AwardPlayer achievement = ONE player = <player>
	endif
	<player> = (<player> + 1)
	repeat <num_players_shown>
endscript

script Achievements_AND_JUSTICE_FOR_ALL 
	printf \{'Achievements_AND_JUSTICE_FOR_ALL'}
	GameMode_GetNumPlayersShown
	<player> = 1
	begin
	GetPlayerInfo <player> controller
	printf qs("\Lplayer = %n") n = <player>
	valid = 1
	if (<num_players_shown> > 1 && <controller> != ($band_mode_current_leader))
		printf \{qs("\LNot Valid")}
		<valid> = 0
	endif
	if (<valid> = 1)
		get_savegame_from_controller controller = <controller>
		progression_get_total_stars savegame = <savegame>
		printf qs("\Ltotal_stars = %t") t = <total_stars>
		if (<total_stars> >= 100)
			Achievements_AwardPlayer achievement = AND_JUSTICE_FOR_ALL player = <player>
		endif
	endif
	<player> = (<player> + 1)
	repeat <num_players_shown>
endscript

script Achievements_THE_ECSTACY_OF_GOLD 
	printf \{'Achievements_THE_ECSTACY_OF_GOLD'}
	GameMode_GetNumPlayersShown
	<player> = 1
	begin
	GetPlayerInfo <player> controller
	get_savegame_from_controller controller = <controller>
	GetGlobalTags savegame = <savegame> band_info
	if (<career_earnings> >= 15000)
		Achievements_AwardPlayer achievement = THE_ECSTACY_OF_GOLD player = <player>
	endif
	<player> = (<player> + 1)
	repeat <num_players_shown>
endscript

script Achievements_DAMAGE_INC 
	printf \{'Achievements_DAMAGE_INC'}
	if NOT Achievements_IsSongCompleted
		return
	endif
	if ($is_network_game = 0)
		if NOT Achievements_IsSongWon
			return
		endif
	endif
	if ($game_mode = tutorial ||
			$game_mode = training ||
			$game_mode = p1_improv ||
			$rich_presence_context = presence_music_studio)
		return
	endif
	GameMode_GetNumPlayersShown
	<player> = 1
	begin
	GetPlayerInfo <player> part
	GetPlayerInfo <player> controller
	if isXenon
		if (<part> = drum)
			Achievements_AwardPlayer achievement = DAMAGE_INC player = <player>
		endif
	else
		if (<controller> = ($primary_controller) && <part> = drum)
			Achievements_AwardPlayer achievement = DAMAGE_INC player = <player>
		endif
	endif
	<player> = (<player> + 1)
	repeat <num_players_shown>
endscript

script Achievements_MOTORBREATH 
	printf \{'Achievements_MOTORBREATH'}
	if NOT Achievements_IsSongCompleted
		return
	endif
	if ($is_network_game = 0)
		if NOT Achievements_IsSongWon
			return
		endif
	endif
	if ($game_mode = tutorial ||
			$game_mode = training ||
			$game_mode = p1_improv ||
			$rich_presence_context = presence_music_studio)
		return
	endif
	GameMode_GetNumPlayersShown
	<player> = 1
	begin
	GetPlayerInfo <player> part
	GetPlayerInfo <player> controller
	if isXenon
		if (<part> = Vocals)
			Achievements_AwardPlayer achievement = MOTORBREATH player = <player>
		endif
	else
		if (<controller> = ($primary_controller) && <part> = Vocals)
			Achievements_AwardPlayer achievement = MOTORBREATH player = <player>
		endif
	endif
	<player> = (<player> + 1)
	repeat <num_players_shown>
endscript

script Achievements_INVISIBLE_KID 
	printf \{'Achievements_INVISIBLE_KID'}
	if NOT Achievements_IsSongCompleted
		return
	endif
	if ($is_network_game = 0)
		if NOT Achievements_IsSongWon
			return
		endif
	endif
	if ($game_mode = tutorial ||
			$game_mode = training ||
			$game_mode = p1_improv ||
			$rich_presence_context = presence_music_studio)
		return
	endif
	GameMode_GetNumPlayersShown
	<player> = 1
	begin
	GetPlayerInfo <player> part
	GetPlayerInfo <player> controller
	if isXenon
		if (<part> = Bass)
			Achievements_AwardPlayer achievement = INVISIBLE_KID player = <player>
		endif
	else
		if (<controller> = ($primary_controller) && <part> = Bass)
			Achievements_AwardPlayer achievement = INVISIBLE_KID player = <player>
		endif
	endif
	<player> = (<player> + 1)
	repeat <num_players_shown>
endscript

script Achievements_SOME_KIND_OF_MONSTER 
	printf \{'Achievements_SOME_KIND_OF_MONSTER'}
	if NOT Achievements_IsSongCompleted
		return
	endif
	if ($is_network_game = 0)
		if NOT Achievements_IsSongWon
			return
		endif
	endif
	if ($game_mode = tutorial ||
			$game_mode = training ||
			$game_mode = p1_improv ||
			$rich_presence_context = presence_music_studio)
		return
	endif
	GameMode_GetNumPlayersShown
	<player> = 1
	begin
	GetPlayerInfo <player> part
	GetPlayerInfo <player> controller
	if isXenon
		if (<part> = guitar)
			Achievements_AwardPlayer achievement = SOME_KIND_OF_MONSTER player = <player>
		endif
	else
		if (<controller> = ($primary_controller) && <part> = guitar)
			Achievements_AwardPlayer achievement = SOME_KIND_OF_MONSTER player = <player>
		endif
	endif
	<player> = (<player> + 1)
	repeat <num_players_shown>
endscript

script Achievements_RIDE_THE_LIGHTNING 
	printf \{'Achievements_RIDE_THE_LIGHTNING'}
	if NOT ($game_mode = p4_quickplay ||
			$game_mode = p4_career ||
			$game_mode = p8_pro_faceoff)
		return
	endif
	if ($game_mode = tutorial ||
			$game_mode = training ||
			$game_mode = p1_improv ||
			$rich_presence_context = presence_music_studio)
		return
	endif
	if ($Achievements_RIDE_THE_LIGHTNING_flag = 1)
		Achievements_AwardBand \{achievement = RIDE_THE_LIGHTNING}
		change \{Achievements_RIDE_THE_LIGHTNING_flag = 0}
	endif
endscript

script Achievements_2X4 
	printf \{'Achievements_2X4'}
	if NOT ($game_mode = p4_quickplay ||
			$game_mode = p4_career ||
			$game_mode = p8_pro_faceoff)
		return
	endif
	if ($game_mode = tutorial ||
			$game_mode = training ||
			$game_mode = p1_improv ||
			$rich_presence_context = presence_music_studio)
		return
	endif
	if ($Achievements_2X4_flag = 1)
		Achievements_AwardBand \{achievement = 2X4}
		change \{Achievements_2X4_flag = 0}
	endif
endscript

script Achievements_METAL_MILITIA 
	printf \{'Achievements_METAL_MILITIA'}
	if NOT Achievements_IsSongWon
		return
	endif
	if ($current_song = jamsession)
		printf \{qs("\LJam Session")}
		return
	endif
	if NOT ($game_mode = p4_quickplay ||
			$game_mode = p4_career ||
			$game_mode = p8_pro_faceoff)
		printf \{qs("\LWrong game mode")}
		return
	endif
	GameMode_GetNumPlayersShown
	<player> = 1
	begin
	GetPlayerInfo <player> part
	if (<part> != Vocals)
		GetPlayerInfo <player> notes_hit
		GetPlayerInfo <player> total_notes
		GetPlayerInfo <player> max_notes
		if ((<notes_hit> < <max_notes>) || (<total_notes> = 0))
			printf \{qs("\LNot 100 percent")}
			return
		endif
	else
		GetPlayerInfo <player> vocal_phrase_quality
		GetPlayerInfo <player> vocal_phrase_max_qual
		if ((<vocal_phrase_quality> < <vocal_phrase_max_qual>) || (<vocal_phrase_quality> = 0))
			printf \{qs("\LNot 100 percent")}
			return
		endif
	endif
	<player> = (<player> + 1)
	repeat <num_players_shown>
	Achievements_AwardBand \{achievement = METAL_MILITIA}
endscript

script Achievements_MASTER_OF_PUPPETS 
	printf \{'Achievements_MASTER_OF_PUPPETS'}
	if NOT Achievements_IsSongWon
		return
	endif
	if NOT ($game_mode = p4_quickplay ||
			$game_mode = p4_career ||
			$game_mode = p8_pro_faceoff)
		return
	endif
	<highest_score> = 0
	<highest_score_player> = -1
	<highest_score_part> = none
	<player> = 1
	begin
	GetPlayerInfo <player> score
	if (<score> > <highest_score>)
		<highest_score> = <score>
		<highest_score_player> = <player>
	endif
	<player> = (<player> + 1)
	repeat 4
	if (<highest_score_player> > -1)
		Achievements_AwardPlayer achievement = MASTER_OF_PUPPETS player = <highest_score_player>
	endif
endscript

script Achievements_THE_STRUGGLE_WITHIN 
	printf \{'Achievements_THE_STRUGGLE_WITHIN'}
	if NOT Achievements_IsSongWon
		return
	endif
	if NOT Achievements_IsSongCompleted
		return
	endif
	if NOT ($game_mode = p4_quickplay ||
			$game_mode = p4_career)
		printf qs("\Lwrong game mode : %n") n = ($game_mode)
		return
	endif
	if ($is_network_game = 1)
		getnumplayers
		if (<num_players> < 4)
			printf qs("\Lwrong num players : %n") n = <num_players>
			return
		endif
	endif
	Achievements_AwardBand \{achievement = THE_STRUGGLE_WITHIN}
endscript

script Achievements_THE_FOUR_HORSEMEN 
	printf \{'Achievements_THE_FOUR_HORSEMEN'}
	if NOT Achievements_IsSongWon
		return
	endif
	if NOT Achievements_IsSongCompleted
		return
	endif
	if NOT ($game_mode = p4_quickplay ||
			$game_mode = p4_career)
		return
	endif
	if ($current_song = jamsession)
		return
	endif
	<player> = 1
	begin
	GetPlayerInfo <player> difficulty
	if (<difficulty> != expert)
		return
	endif
	<player> = (<player> + 1)
	repeat 4
	Achievements_AwardBand \{achievement = THE_FOUR_HORSEMEN}
endscript

script Achievements_NOTHING_ELSE_MATTERS 
	printf \{'Achievements_NOTHING_ELSE_MATTERS'}
	GameMode_GetNumPlayersShown
	<player> = 1
	begin
	Achievements_CareerComplete part = Band player = <player>
	if (<complete> = 1)
		Achievements_AwardPlayer achievement = NOTHING_ELSE_MATTERS player = <player>
	endif
	<player> = (<player> + 1)
	repeat <num_players_shown>
endscript

script Achievements_BLACK 
	printf \{'Achievements_BLACK'}
	if ($game_mode != p2_battle || $is_network_game = 0)
		printf \{qs("\Lnot p2_battle or network game")}
		return
	endif
	p1_health = ($player1_status.current_health)
	p2_health = ($player2_status.current_health)
	printstruct <...>
	if (<p1_health> < <p2_health>)
		printf \{qs("\LYou lost")}
		return
	endif
	if (<p1_health> = <p2_health> || (<p1_health> > 0.0 && <p2_health> > 0.0))
		printf \{qs("\LNo winner")}
		return
	endif
	GetPlayerInfo \{1
		final_blow_powerup}
	if (<final_blow_powerup> < 0)
		printf \{qs("\Lfinal_blow_powerup < 0")}
		return
	endif
	<powerup> = ($battlemode_powerups [<final_blow_powerup>].name)
	printf qs("\Lfinal_blow_powerup = %f") f = <powerup>
	if (<powerup> = blackout)
		Achievements_AwardPlayer \{achievement = black
			player = 1}
	endif
endscript

script Achievements_BETTER_THAN_YOU 
	printf \{'Achievements_BETTER_THAN_YOU'}
	if NOT Achievements_IsSongWon
		return
	endif
	if ($game_mode = p2_pro_faceoff && $is_network_game)
		determine_game_scores_and_winner
		printf qs("\Lteam_score = %n") n = <team_score>
		printf qs("\Lopponent_team_score = %n") n = <opponent_team_score>
		printf qs("\Ltie = %b") b = <tie>
		if (<tie> = false && <team_score> > <opponent_team_score>)
			Achievements_AwardBand \{achievement = BETTER_THAN_YOU}
		endif
	endif
endscript

script Achievements_BLITZKRIEG 
	printf \{'Achievements_BLITZKRIEG'}
	if NOT Achievements_IsSongWon
		return
	endif
	if ($game_mode = p8_pro_faceoff && $is_network_game)
		determine_game_scores_and_winner
		printf qs("\Lteam_score = %n") n = <team_score>
		printf qs("\Lopponent_team_score = %n") n = <opponent_team_score>
		printf qs("\Ltie = %b") b = <tie>
		if (<tie> = false && <team_score> > <opponent_team_score>)
			Achievements_AwardBand \{achievement = BLITZKRIEG}
		endif
	endif
endscript

script Achievements_SEEK_AND_DESTROY 
	printf \{'Achievements_SEEK_AND_DESTROY'}
	if ($is_network_game = 0)
		return
	endif
	GameMode_GetNumPlayersShown
	<player> = 1
	begin
	GetPlayerInfo <player> controller
	if CheckForSignIn local controller_index = <controller>
		get_savegame_from_controller controller = <controller>
		GetGlobalTags savegame = <savegame> achievement_info param = num_online_matches_played
		printf qs("\Lp%p online_matches_played = %n") p = <player> n = <num_online_matches_played>
		if (<num_online_matches_played> >= 20)
			Achievements_AwardPlayer achievement = SEEK_AND_DESTROY player = <player>
		endif
	endif
	<player> = (<player> + 1)
	repeat <num_players_shown>
endscript

script Achievements_THE_UNFORGIVEN 
	printf \{'Achievements_THE_UNFORGIVEN'}
	if NOT Achievements_IsSongWon
		return
	endif
	if ($game_mode = p2_faceoff && $is_network_game)
		determine_game_scores_and_winner
		printf qs("\Lteam_score = %n") n = <team_score>
		printf qs("\Lopponent_team_score = %n") n = <opponent_team_score>
		printf qs("\Ltie = %b") b = <tie>
		if (<tie> = false && <team_score> > <opponent_team_score>)
			Achievements_AwardBand \{achievement = THE_UNFORGIVEN}
		endif
	endif
endscript

script Achievements_THE_UNFORGIVEN_II 
	printf \{'Achievements_THE_UNFORGIVEN_II'}
	if NOT Achievements_IsSongWon
		return
	endif
	if ($game_mode = p2_faceoff && $is_network_game)
		determine_game_scores_and_winner
		if (<tie> = false && <team_score> >= (<opponent_team_score> + 25000))
			Achievements_AwardBand \{achievement = THE_UNFORGIVEN_II}
		endif
	endif
endscript

script Achievements_THE_UNFORGIVEN_III 
	printf \{'Achievements_THE_UNFORGIVEN_III'}
	if NOT Achievements_IsSongWon
		return
	endif
	if ($game_mode = p2_pro_faceoff && $is_network_game)
		determine_game_scores_and_winner
		if (<tie> = false && <team_score> >= (<opponent_team_score> + 25000))
			Achievements_AwardBand \{achievement = THE_UNFORGIVEN_III}
		endif
	endif
endscript

script Achievements_RELOAD 
	printf \{'Achievements_RELOAD'}
	if GotParam \{controller}
		WriteAchievements achievement = reload controller_id = <controller>
	endif
endscript

script Achievements_CURE 
	printf \{'Achievements_CURE'}
	if NOT Achievements_IsSongWon
		return
	endif
	if NOT ($game_mode = p1_quickplay ||
			$game_mode = p2_quickplay ||
			$game_mode = p3_quickplay ||
			$game_mode = p4_quickplay ||
			$game_mode = p1_career ||
			$game_mode = p2_career ||
			$game_mode = p3_career ||
			$game_mode = p4_career)
		return
	endif
	GameMode_GetNumPlayersShown
	<player> = 1
	begin
	FormatText checksumname = player_status 'player%n_status' n = <player>
	if (($<player_status>.lowest_health) < $health_poor_medium)
		if (($<player_status>.current_health) >= $health_poor_medium)
			Achievements_AwardPlayer achievement = CURE player = <player>
		endif
	endif
	<player> = (<player> + 1)
	repeat <num_players_shown>
endscript

script Achievements_GREEN_HELL 
	printf \{'Achievements_GREEN_HELL'}
	if NOT Achievements_IsSongWon
		return
	endif
	if ($current_song != BloodAndThunder)
		return
	endif
	GameMode_GetNumPlayersShown
	<player> = 1
	begin
	GetPlayerInfo <player> part
	if (<part> = drum)
		GetPlayerInfo <player> controller
		get_savegame_from_controller controller = <controller>
		GetGlobalTags savegame = <savegame> achievement_info param = green_note_missed
		GetGlobalTags savegame = <savegame> achievement_info param = green_notes_exist
		GetPlayerInfo <player> current_health
		printf qs("\Lgreen_missed = %n") n = <green_note_missed>
		printf qs("\Lgreen_exists = %n") n = <green_notes_exist>
		printf qs("\Lcurrent_health = %n") n = <current_health>
		if (<green_note_missed> = 0 &&
				<green_notes_exist> = 1 &&
				<current_health> > $health_medium_good)
			Achievements_AwardPlayer achievement = GREEN_HELL player = <player>
		endif
		break
	endif
	<player> = (<player> + 1)
	repeat <num_players_shown>
endscript

script Achievements_DISPOSABLE_HEROES 
	printf \{'Achievements_DISPOSABLE_HEROES'}
	if GotParam \{controller}
		WriteAchievements achievement = DISPOSABLE_HEROES controller_id = <controller>
	endif
endscript

script Achievements_BLACKENED 
	printf \{'Achievements_BLACKENED'}
	if GotParam \{controller}
		WriteAchievements achievement = BLACKENED controller_id = <controller>
	endif
endscript

script Achievements_EYE_OF_THE_BEHOLDER 
	printf \{'Achievements_EYE_OF_THE_BEHOLDER'}
	if ($rich_presence_context = presence_music_studio)
		return
	endif
	if GotParam \{controller}
		WriteAchievements achievement = EYE_OF_THE_BEHOLDER controller_id = <controller>
		change \{Achievements_modified_logo = 0}
	endif
endscript

script Achievements_FIXXXER 
	printf \{'Achievements_FIXXXER'}
	if GotParam \{controller}
		WriteAchievements achievement = FIXXXER controller_id = <controller>
	endif
endscript

script Achievements_HERO_OF_THE_DAY 
	printf \{'Achievements_HERO_OF_THE_DAY'}
	if ($rich_presence_context = presence_music_studio)
		return
	endif
	if NOT Achievements_IsSongWon
		return
	endif
	if ($current_song = jamsession)
		return
	endif
	if NOT StructureContains Structure = ($permanent_songlist_props.($current_song)) double_kick
		printf \{qs("\LNo double kick param")}
		return
	endif
	if (($permanent_songlist_props.($current_song)).double_kick = 0)
		printf \{qs("\LNon-double kick")}
		return
	endif
	if NOT ($game_mode = p1_quickplay ||
			$game_mode = p2_quickplay ||
			$game_mode = p3_quickplay ||
			$game_mode = p4_quickplay ||
			$game_mode = p1_career ||
			$game_mode = p2_career ||
			$game_mode = p3_career ||
			$game_mode = p4_career)
		return
	endif
	GameMode_GetNumPlayersShown
	<player> = 1
	begin
	GetPlayerInfo <player> part
	GetPlayerInfo <player> double_kick_drum
	if (<part> = drum && <double_kick_drum> = 1)
		Achievements_AwardPlayer achievement = HERO_OF_THE_DAY player = <player>
	endif
	<player> = (<player> + 1)
	repeat <num_players_shown>
endscript

script Achievements_THE_HOUSE_JACK_BUILT 
	printf \{'Achievements_THE_HOUSE_JACK_BUILT'}
	if NOT Achievements_IsSongCompleted
		return
	endif
	GameMode_GetType
	if (<type> = career || <type> = quickplay)
		if NOT Achievements_IsSongWon
			return
		endif
	endif
	GameMode_GetNumPlayersShown
	<player> = 1
	begin
	GetPlayerInfo <player> controller
	get_savegame_from_controller controller = <controller>
	GetGlobalTags savegame = <savegame> achievement_info param = venues_played
	switch ($current_level)
		case load_z_meadowlands
		<venues_played> = {<venues_played> load_z_meadowlands = 1}
		case load_z_forum
		<venues_played> = {<venues_played> load_z_forum = 1}
	endswitch
	SetGlobalTags savegame = <savegame> achievement_info params = {venues_played = <venues_played>}
	printstruct <venues_played>
	if (<venues_played>.load_z_meadowlands = 1 && <venues_played>.load_z_forum = 1)
		Achievements_AwardPlayer achievement = the_house_jack_built player = <player>
	endif
	<player> = (<player> + 1)
	repeat <num_players_shown>
endscript

script Achievements_WHEREVER_I_MAY_ROAM 
	printf \{'Achievements_WHEREVER_I_MAY_ROAM'}
	if NOT Achievements_IsSongCompleted
		return
	endif
	GameMode_GetType
	if (<type> = career || <type> = quickplay)
		if NOT Achievements_IsSongWon
			return
		endif
	endif
	GameMode_GetNumPlayersShown
	<player> = 1
	begin
	GetPlayerInfo <player> controller
	get_savegame_from_controller controller = <controller>
	GetGlobalTags savegame = <savegame> achievement_info param = venues_played
	switch ($current_level)
		case load_z_soundcheck2
		<venues_played> = {<venues_played> load_z_soundcheck2 = 1}
		case load_z_Studio2
		<venues_played> = {<venues_played> load_z_Studio2 = 1}
		case load_z_meadowlands
		<venues_played> = {<venues_played> load_z_meadowlands = 1}
		case load_z_Justice
		<venues_played> = {<venues_played> load_z_Justice = 1}
		case load_z_MoP
		<venues_played> = {<venues_played> load_z_MoP = 1}
		case load_z_Donnington
		<venues_played> = {<venues_played> load_z_Donnington = 1}
		case load_z_forum
		<venues_played> = {<venues_played> load_z_forum = 1}
		case load_z_Tushino
		<venues_played> = {<venues_played> load_z_Tushino = 1}
		case load_z_Stone
		<venues_played> = {<venues_played> load_z_Stone = 1}
		case load_z_IceCave
		<venues_played> = {<venues_played> load_z_IceCave = 1}
	endswitch
	SetGlobalTags savegame = <savegame> achievement_info params = {venues_played = <venues_played>}
	printstruct <venues_played>
	<all_played> = 1
	GetArraySize ($LevelZoneArray)
	<i> = 0
	begin
	<venue_name> = (($LevelZoneArray) [<i>])
	if StructureContains Structure = <venues_played> <venue_name>
		if ((<venues_played>.<venue_name>) = 0)
			<all_played> = 0
			break
		endif
	endif
	<i> = (<i> + 1)
	repeat <array_size>
	if (<all_played> = 1)
		Achievements_AwardPlayer achievement = WHEREVER_I_MAY_ROAM player = <player>
	endif
	<player> = (<player> + 1)
	repeat <num_players_shown>
endscript

script Achievements_TRAPPED_UNDER_ICE 
	printf \{'Achievements_TRAPPED_UNDER_ICE'}
	if NOT Achievements_IsSongWon
		return
	endif
	if (($LevelZones).($current_level).zone = z_IceCave)
		Achievements_AwardBand \{achievement = TRAPPED_UNDER_ICE}
	endif
endscript

script Achievements_STONE_DEAD_FOREVER 
	printf \{'Achievements_STONE_DEAD_FOREVER'}
	if NOT Achievements_IsSongWon
		return
	endif
	printf qs("\Lcurrent_level = %n") n = ($current_level)
	printf qs("\Lzone = %n") n = (($LevelZones).($current_level).zone)
	if (($LevelZones).($current_level).zone = z_stone)
		Achievements_AwardBand \{achievement = STONE_DEAD_FOREVER}
	endif
endscript

script Achievements_KING_DIAMOND 
	printf \{'Achievements_KING_DIAMOND'}
	if NOT Achievements_IsSongWon
		return
	endif
	if ($current_song = jamsession)
		return
	endif
	if ($game_mode = p1_quickplay ||
			$game_mode = p2_quickplay ||
			$game_mode = p3_quickplay ||
			$game_mode = p4_quickplay)
		mode = quickplay
	elseif ($game_mode = p1_career ||
			$game_mode = p2_career ||
			$game_mode = p3_career ||
			$game_mode = p4_career)
		mode = career
	else
		return
	endif
	if StructureContains Structure = ($permanent_songlist_props.($current_song)) Band
		if (($permanent_songlist_props.($current_song).Band) = Band_Metallica ||
				($permanent_songlist_props.($current_song).Band) = Band_Lemmy)
			return
		endif
	endif
	GameMode_GetNumPlayersShown
	<player> = 1
	begin
	GetPlayerInfo <player> character_id
	GetPlayerInfo <player> part
	if (<mode> = quickplay && <part> = Vocals && ($permanent_songlist_props.($current_song).Band) = Band_KingDiamond)
		Achievements_AwardPlayer achievement = KING_DIAMOND player = <player>
	elseif (<mode> = career && <character_id> = KingDiamond)
		Achievements_AwardPlayer achievement = KING_DIAMOND player = <player>
	endif
	<player> = (<player> + 1)
	repeat <num_players_shown>
endscript

script Achievements_LEMMY 
	printf \{'Achievements_LEMMY'}
	if NOT Achievements_IsSongWon
		return
	endif
	if ($current_song = jamsession)
		return
	endif
	if ($game_mode = p1_quickplay ||
			$game_mode = p2_quickplay ||
			$game_mode = p3_quickplay ||
			$game_mode = p4_quickplay)
		mode = quickplay
	elseif ($game_mode = p1_career ||
			$game_mode = p2_career ||
			$game_mode = p3_career ||
			$game_mode = p4_career)
		mode = career
	else
		return
	endif
	if StructureContains Structure = ($permanent_songlist_props.($current_song)) Band
		if (($permanent_songlist_props.($current_song).Band) = Band_Metallica ||
				($permanent_songlist_props.($current_song).Band) = Band_KingDiamond)
			return
		endif
	endif
	GameMode_GetNumPlayersShown
	<player> = 1
	begin
	GetPlayerInfo <player> character_id
	GetPlayerInfo <player> part
	if (<mode> = quickplay && ($permanent_songlist_props.($current_song).Band) = Band_Lemmy)
		if (<part> = Vocals || <part> = Bass)
			Achievements_AwardPlayer achievement = Lemmy player = <player>
		endif
	elseif (<mode> = career && (<character_id> = Lemmy || <character_id> = Lemmy_2))
		Achievements_AwardPlayer achievement = Lemmy player = <player>
	endif
	<player> = (<player> + 1)
	repeat <num_players_shown>
endscript

script Achievements_THE_MEMORY_REMAINS 
	printf \{'Achievements_THE_MEMORY_REMAINS'}
	if NOT ScreenElementExists \{id = metallifacts_container}
		printf \{qs("\Lmetallifacts_container doesn't exist")}
		return
	endif
	<controller> = 0
	begin
	WriteAchievements achievement = THE_MEMORY_REMAINS controller_id = <controller>
	printf qs("\LUNLOCKED for controller %c") c = <controller>
	<controller> = (<controller> + 1)
	repeat 4
endscript

script Achievements_CREEPING_DEATH 
	printf \{'Achievements_CREEPING_DEATH'}
	if NOT Achievements_IsSongWon
		return
	endif
	GameMode_GetNumPlayers
	if (<num_players> > 1)
		return
	endif
	GetPlayerInfo \{1
		score}
	GetPlayerInfo \{1
		part}
	if (<score> >= 575000 &&
			<part> = guitar &&
			$current_song = CreepingDeath)
		Achievements_AwardPlayer \{achievement = CREEPING_DEATH
			player = 1}
	endif
endscript

script Achievements_DYERS_EVE 
	printf \{'Achievements_DYERS_EVE'}
	if NOT Achievements_IsSongWon
		return
	endif
	GameMode_GetNumPlayers
	if (<num_players> > 1)
		return
	endif
	GetPlayerInfo \{1
		score}
	GetPlayerInfo \{1
		part}
	if (<score> >= 450000 &&
			<part> = drum &&
			$current_song = DyersEve)
		Achievements_AwardPlayer \{achievement = DYERS_EVE
			player = 1}
	endif
endscript

script Achievements_FIGHT_FIRE_WITH_FIRE 
	printf \{'Achievements_FIGHT_FIRE_WITH_FIRE'}
	if NOT Achievements_IsSongWon
		return
	endif
	GameMode_GetNumPlayers
	if (<num_players> > 1)
		return
	endif
	GetPlayerInfo \{1
		score}
	GetPlayerInfo \{1
		part}
	if (<score> >= 340000 &&
			<part> = Bass &&
			$current_song = FightFireWithFire)
		Achievements_AwardPlayer \{achievement = FIGHT_FIRE_WITH_FIRE
			player = 1}
	endif
endscript

script Achievements_STONE_COLD_CRAZY 
	printf \{'Achievements_STONE_COLD_CRAZY'}
	if NOT Achievements_IsSongWon
		return
	endif
	GameMode_GetNumPlayers
	if (<num_players> > 1)
		return
	endif
	GetPlayerInfo \{1
		score}
	GetPlayerInfo \{1
		part}
	if (<score> >= 65000 &&
			<part> = Vocals &&
			$current_song = stonecoldcrazy)
		Achievements_AwardPlayer \{achievement = STONE_COLD_CRAZY
			player = 1}
	endif
endscript

script Achievements_ENTER_SANDMAN 
	printf \{'Achievements_ENTER_SANDMAN'}
	if NOT Achievements_IsSongWon
		return
	endif
	GameMode_GetNumPlayers
	if (<num_players> > 1)
		return
	endif
	GetPlayerInfo \{1
		score}
	GetPlayerInfo \{1
		part}
	if (<score> >= 330000 &&
			<part> = guitar &&
			$current_song = EnterSandman)
		Achievements_AwardPlayer \{achievement = ENTER_SANDMAN
			player = 1}
	endif
endscript

script Achievements_BATTERY 
	printf \{'Achievements_BATTERY'}
	if NOT Achievements_IsSongWon
		return
	endif
	GameMode_GetNumPlayersShown
	if (<num_players_shown> != 4)
		return
	endif
	if (($band1_status.score) >= 1000000 &&
			$current_song = battery)
		Achievements_AwardBand \{achievement = battery}
	endif
endscript

script Achievements_ASTRONOMY 
	printf \{'Achievements_ASTRONOMY'}
	if NOT Achievements_IsSongWon
		return
	endif
	if ($current_song != Orion)
		return
	endif
	GameMode_GetNumPlayersShown
	<player> = 1
	begin
	GetPlayerInfo <player> sp_phrases_hit
	GetPlayerInfo <player> sp_phrases_total
	printf qs("\Lsp_hit = %h") h = <sp_phrases_hit>
	printf qs("\Lsp_total = %t") t = <sp_phrases_total>
	if (<sp_phrases_hit> = <sp_phrases_total>)
		Achievements_AwardPlayer achievement = ASTRONOMY player = <player>
	endif
	<player> = (<player> + 1)
	repeat <num_players_shown>
endscript
