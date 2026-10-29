training_band_tutorial_script = [
	{
		call = training_band_tutorial_startup
	}
	{
		time = 1000
		call = training_band_tutorial_show_title
	}
	{
		lesson = 1
		call = training_6_1_show_lesson_header
	}
	{
		call = training_6_1_complete_message
	}
	{
		lesson = 2
		call = training_6_2_show_lesson_header
	}
	{
		call = training_6_2_show_instruments
	}
	{
		call = training_6_2_show_highway
	}
	{
		call = training_6_2_show_items_on_highway
	}
	{
		call = training_6_2_show_bands_rock_meter_and_demo
	}
	{
		call = training_6_2_show_individual_indicators_and_demo
	}
	{
		call = training_6_2_show_individual_note_streak_and_demo
	}
	{
		call = training_6_2_complete_message
	}
	{
		lesson = 3
		call = training_6_3_show_lesson_header
	}
	{
		call = training_6_3_show_highway
	}
	{
		call = training_6_3_show_bands_rock_meter_and_demo
	}
	{
		call = training_6_3_show_band_playing_in_unison
	}
	{
		call = training_6_3_complete_message
	}
	{
		lesson = 4
		call = training_6_4_show_lesson_header
	}
	{
		call = training_6_4_show_band_vs_band
	}
	{
		call = training_6_4_complete_message
	}
	{
		call = training_band_tutorial_1_end
	}
]

script training_band_tutorial_startup 
	printf \{qs("\Lstarting training_band_tutorial_startup")}
	training_init_session
	LaunchEvent \{type = unfocus
		target = root_window}
	create_training_pause_handler
	training_create_narrator_icons
endscript

script training_band_tutorial_show_title 
	change \{g_training_lessons_completed = 0}
	printf \{qs("\Lstarting training_band_tutorial_show_title")}
	training_show_title \{title = qs("Band Mode Tutorial")}
	begin
	if ($transitions_locked = 0)
		break
	endif
	Wait \{1
		gameframe}
	repeat
	create_training_pause_handler
	Wait \{3
		seconds}
	training_destroy_title
endscript

script training_6_1_show_lesson_header 
	printf \{qs("\Lstarting training_6_1_show_lesson_header")}
	training_set_lesson_header_text \{number = qs("\L1")
		text = qs("Introduction to Band Play")}
	training_show_lesson_header
	create_training_pause_handler
	training_show_narrator \{narrator = 'bassist'}
	training_play_sound \{Sound = 'Tut_Band_Intro_01_BAS'
		Wait}
	Wait \{0.25
		seconds}
	training_play_sound \{Sound = 'Tut_Band_Intro_02_BAS'
		Wait}
	training_hide_narrator
endscript

script training_6_1_complete_message 
	printf \{qs("\Lstarting training_6_1_complete_message")}
	training_generic_lesson_complete
endscript

script training_6_2_show_lesson_header 
	printf \{qs("\Lstarting training_6_2_show_lesson_header")}
	training_set_lesson_header_text \{number = qs("\L2")
		text = qs("Playing as a Band")}
	training_show_lesson_header
	create_training_pause_handler
endscript

script training_6_2_show_instruments 
	printf \{qs("\Lstarting training_6_2_show_instruments")}
	create_training_pause_handler
	if ScreenElementExists \{id = menu_tutorial}
		LaunchEvent \{type = unfocus
			target = menu_tutorial}
		destroy_menu \{menu_id = menu_tutorial}
	endif
	event_handlers = [
		{pad_start show_training_pause_screen}
	]
	new_menu {
		scrollid = menu_tutorial
		vmenuid = vmenu_tutorial
		menu_pos = (0.0, 0.0)
		use_backdrop = 0
		event_handlers = <event_handlers>
	}
	LaunchEvent \{type = focus
		target = menu_tutorial}
	CreateScreenElement \{parent = menu_tutorial
		id = training_instrument_select_hub
		type = DescInterface
		desc = 'band_play'}
	AssignAlias id = <id> alias = MyInterfaceElement
	if training_instrument_select_hub :Desc_ResolveAlias \{name = alias_hmenu}
		band_hmenu = <resolved_id>
	endif
	training_instrument_select_hub :SE_GetProps
	menu_array = []
	desc_array = []
	i = 0
	begin
	ResolveScreenElementId id = [
		{id = <band_hmenu>}
		{index = <i>}
	]
	AddArrayElement array = <desc_array> element = <resolved_id>
	desc_array = <array>
	desc_id = <resolved_id>
	<resolved_id> :obj_spawnscript ui_band_mode_highlight_motion
	<resolved_id> :Desc_ResolveAlias name = alias_menu
	if ScreenElementExists id = <resolved_id>
		allowed = {guitar Bass drum Vocals}
		<resolved_id> :SetTags {
			menu = instrument
			instrument = none
			difficulty = none
			controller = <i>
			allowed = <allowed>
			index = <i>
		}
		DestroyScreenElement id = <resolved_id> preserve_parent
		text_params = {
			type = TextBlockElement
			fit_width = `scale each line if larger`
			fit_height = `scale down if larger`
			parent = <resolved_id>
			event_handlers = [
				{focus ui_band_mode_focus}
				{unfocus retail_menu_unfocus}
			]
			internal_scale = 0.75
			just = [center bottom]
			internal_just = [center center]
			font = fontgrid_text_a6
			rgba = [0 0 0 255]
			dims = (200.0, 40.0)
		}
		CreateScreenElement {
			<text_params>
			text = qs("GUITAR")
		}
		CreateScreenElement {
			<text_params>
			text = qs("BASS")
		}
		CreateScreenElement {
			<text_params>
			text = qs("DRUMS")
		}
		CreateScreenElement {
			<text_params>
			text = qs("VOCALS")
		}
		AddArrayElement array = <menu_array> element = <resolved_id>
		menu_array = <array>
		if <desc_id> :Desc_ResolveAlias name = alias_highlight
			<resolved_id> :SE_SetProps pos = ((0.0, -120.0) + ((0.0, 34.0) * <i>))
		endif
	endif
	i = (<i> + 1)
	repeat 4
	training_instrument_select_hub :SetTags {menus = <menu_array> descs = <desc_array>}
	menu_finish
	clean_up_user_control_helpers
	training_show_narrator \{narrator = 'bassist'}
	training_play_sound \{Sound = 'Tut_Band_Play_01_BAS'
		Wait}
	training_hide_narrator
	destroy_menu \{menu_id = menu_tutorial}
	training_hide_lesson_header
endscript

script training_6_2_show_highway 
	printf \{qs("\Lstarting training_6_2_show_highway")}
	SetPlayerInfo \{2
		four_lane_highway = 0}
	training_start_gem_scroller \{players = 4
		song = Tut_Demo
		bot_array = [
			1
			1
			1
			1
		]}
	if ScreenElementExists \{id = menu_tutorial}
		LaunchEvent \{type = unfocus
			target = menu_tutorial}
		destroy_menu \{menu_id = menu_tutorial}
	endif
	create_training_pause_handler
	change \{structurename = band1_status
		score = 3141975}
	training_wait_for_gem_scroller_startup
endscript

script training_6_2_show_items_on_highway 
	printf \{qs("\Lstarting training_6_2_show_items_on_highway")}
	create_training_pause_handler
	Wait \{3.6
		seconds
		ignoreslomo}
	training_pause_gem_scroller
	training_play_sound \{Sound = 'Tut_Band_Star_01_BAS'}
	Wait \{2
		seconds
		ignoreslomo}
	training_add_arrow \{id = training_arrow2
		life = 2
		pos = (640.0, 120.0)
		scale = 0.7
		rot = 180}
	Wait \{2
		seconds
		ignoreslomo}
	training_add_arrow \{id = training_arrow2
		life = 2
		pos = (235.0, 360.0)
		scale = 0.7}
	training_add_arrow \{id = training_arrow2
		life = 2
		pos = (1045.0, 360.0)
		scale = 0.7}
	training_add_arrow \{id = training_arrow2
		life = 2
		pos = (640.0, 360.0)
		scale = 0.7}
	Wait \{3
		seconds
		ignoreslomo}
	training_destroy_all_arrows
endscript

script training_6_2_spawn_meter_changing 
	printf \{qs("\Lstarting training_6_2_spawn_meter_changing")}
	training_add_arrow \{id = training_arrow2
		life = 4
		pos = (275.0, 250.0)
		scale = 0.7
		rot = 90}
	KillSpawnedScript \{name = training_set_health}
	spawnscriptnow \{training_set_health
		params = {
			health = 1.0
			Band
		}
		id = training_spawned_script}
	Wait \{9
		seconds
		ignoreslomo}
	Wait \{2
		seconds
		ignoreslomo}
	KillSpawnedScript \{name = training_set_health}
	spawnscriptnow \{training_set_health
		params = {
			health = 1.6
			Band
		}
		id = training_spawned_script}
	Wait \{2
		seconds
		ignoreslomo}
	KillSpawnedScript \{name = training_set_health}
	spawnscriptnow \{training_set_health
		params = {
			health = 0.4
			Band
		}
		id = training_spawned_script}
	Wait \{2
		seconds
		ignoreslomo}
	training_start_HUD_flashing_red
endscript

script training_6_2_show_bands_rock_meter_and_demo 
	printf \{qs("\Lstarting training_6_2_show_bands_rock_meter_and_demo")}
	create_training_pause_handler
	spawnscriptnow \{training_6_2_spawn_meter_changing
		id = training_spawned_script}
	training_play_sound \{Sound = 'Tut_Band_Star_02_BAS'
		Wait}
	training_stop_HUD_flashing_red
endscript

script training_6_2_move_individual_indicators 
	printf \{qs("\Lstarting training_6_2_move_individual_indicators")}
	KillSpawnedScript \{name = training_set_health}
	spawnscriptnow \{training_set_health
		params = {
			health = 1.0
			Band
		}
		id = training_spawned_script}
	training_add_arrow \{id = training_arrow2
		life = 4
		pos = (475.0, 500.0)
		scale = 0.7
		rot = -45}
	player_status = player1_status
	spawnscriptnow training_set_health params = {player_status = <player_status> health = 0.5 ignore_band_members} id = training_spawned_script
	player_status = player2_status
	spawnscriptnow training_set_health params = {player_status = <player_status> health = 0.2 ignore_band_members} id = training_spawned_script
	player_status = player3_status
	spawnscriptnow training_set_health params = {player_status = <player_status> health = 1.4 ignore_band_members} id = training_spawned_script
	player_status = player4_status
	spawnscriptnow training_set_health params = {player_status = <player_status> health = 0.8 ignore_band_members} id = training_spawned_script
	Wait \{2.0
		seconds
		ignoreslomo}
	KillSpawnedScript \{name = training_set_health}
	player_status = player1_status
	spawnscriptnow training_set_health params = {player_status = <player_status> health = 0.2 ignore_band_members} id = training_spawned_script
	player_status = player2_status
	spawnscriptnow training_set_health params = {player_status = <player_status> health = 1.1 ignore_band_members} id = training_spawned_script
	player_status = player3_status
	spawnscriptnow training_set_health params = {player_status = <player_status> health = 0.8 ignore_band_members} id = training_spawned_script
	player_status = player4_status
	spawnscriptnow training_set_health params = {player_status = <player_status> health = 1.6 ignore_band_members} id = training_spawned_script
	Wait \{2.0
		seconds
		ignoreslomo}
	KillSpawnedScript \{name = training_set_health}
	player_status = player1_status
	spawnscriptnow training_set_health params = {player_status = <player_status> health = 1.1 ignore_band_members} id = training_spawned_script
	player_status = player2_status
	spawnscriptnow training_set_health params = {player_status = <player_status> health = 0.6 ignore_band_members} id = training_spawned_script
	player_status = player3_status
	spawnscriptnow training_set_health params = {player_status = <player_status> health = 1.6 ignore_band_members} id = training_spawned_script
	player_status = player4_status
	spawnscriptnow training_set_health params = {player_status = <player_status> health = 0.2 ignore_band_members} id = training_spawned_script
	Wait \{2.0
		seconds
		ignoreslomo}
	KillSpawnedScript \{name = training_set_health}
	player_status = player1_status
	spawnscriptnow training_set_health params = {player_status = <player_status> health = 0.2 ignore_band_members} id = training_spawned_script
	player_status = player2_status
	spawnscriptnow training_set_health params = {player_status = <player_status> health = 0.2 ignore_band_members} id = training_spawned_script
	player_status = player3_status
	spawnscriptnow training_set_health params = {player_status = <player_status> health = 0.2 ignore_band_members} id = training_spawned_script
	player_status = player4_status
	spawnscriptnow training_set_health params = {player_status = <player_status> health = 0.2 ignore_band_members} id = training_spawned_script
endscript

script training_6_2_show_individual_indicators_and_demo 
	printf \{qs("\Lstarting training_6_2_show_individual_indicators_and_demo")}
	create_training_pause_handler
	Wait \{2.0
		seconds
		ignoreslomo}
	spawnscriptnow \{training_6_2_move_individual_indicators
		id = training_spawned_script}
	training_play_sound \{Sound = 'Tut_Band_Star_03_BAS'
		Wait}
	Wait \{1.0
		seconds
		ignoreslomo}
endscript

script training_6_2_show_note_streak_indicator 
	printf \{qs("\Lstarting training_6_2_show_note_streak_indicator")}
	KillSpawnedScript \{name = training_set_health}
	spawnscriptnow \{training_set_health
		params = {
			health = 1.6
			Band
		}
		id = training_spawned_script}
	player_status = player1_status
	spawnscriptnow training_set_health params = {player_status = <player_status> health = 1.6 ignore_band_members} id = training_spawned_script
	player_status = player2_status
	spawnscriptnow training_set_health params = {player_status = <player_status> health = 1.6 ignore_band_members} id = training_spawned_script
	player_status = player3_status
	spawnscriptnow training_set_health params = {player_status = <player_status> health = 1.6 ignore_band_members} id = training_spawned_script
	player_status = player4_status
	spawnscriptnow training_set_health params = {player_status = <player_status> health = 1.6 ignore_band_members} id = training_spawned_script
	Wait \{4.0
		seconds
		ignoreslomo}
	training_add_arrow \{id = training_arrow2
		life = 4
		pos = (875.0, 250.0)
		scale = 0.7
		rot = -90}
endscript

script training_6_2_show_individual_note_streak_and_demo 
	printf \{qs("\Lstarting training_6_2_show_individual_note_streak_and_demo")}
	create_training_pause_handler
	GameMode_UpdateCooperative \{cooperative = 1}
	spawnscriptnow \{training_6_2_show_note_streak_indicator
		id = training_spawned_script}
	TutorialSetBandStreak \{streak = 50}
	training_play_sound \{Sound = 'Tut_Band_Star_04_BAS'
		Wait}
	TutorialSetBandStreak \{streak = 0}
	GameMode_UpdateCooperative \{cooperative = 0}
endscript

script training_6_2_complete_message 
	printf \{qs("\Lstarting training_6_2_complete_message")}
	training_play_sound \{Sound = 'Tut_Band_Star_05_BAS'
		Wait}
	training_resume_gem_scroller
	destroy_menu \{menu_id = menu_tutorial}
	create_training_pause_handler
	training_destroy_gem_scroller
	training_generic_lesson_complete
endscript

script training_6_3_show_lesson_header 
	printf \{qs("\Lstarting training_6_3_show_lesson_header")}
	training_set_lesson_header_text \{number = qs("\L3")
		text = qs("The Band's Star Power")}
	create_training_pause_handler
endscript

script training_6_3_show_highway 
	printf \{qs("\Lstarting training_6_3_show_highway")}
	SetPlayerInfo \{2
		four_lane_highway = 0}
	training_start_gem_scroller \{players = 4
		song = Tut_Demo
		bot_array = [
			1
			1
			1
			1
		]}
	if ScreenElementExists \{id = menu_tutorial}
		LaunchEvent \{type = unfocus
			target = menu_tutorial}
		destroy_menu \{menu_id = menu_tutorial}
	endif
	event_handlers = [
		{pad_start show_training_pause_screen}
	]
	new_menu {
		scrollid = menu_tutorial
		vmenuid = vmenu_tutorial
		menu_pos = (120.0, 190.0)
		use_backdrop = 0
		event_handlers = <event_handlers>
	}
	LaunchEvent \{type = focus
		target = menu_tutorial}
	change \{structurename = band1_status
		score = 3141975}
	training_wait_for_gem_scroller_startup
	spawnscriptnow \{training_set_health
		params = {
			health = 1.6
			Band
		}
		id = training_spawned_script}
endscript

script training_6_3_trigger_band_star_power 
	printf \{qs("\Lstarting training_6_3_trigger_band_star_power")}
	change \{structurename = band1_status
		star_power_amount = 100}
	change \{structurename = band1_status
		star_power_display_amount = 100}
	<i> = 1
	begin
	GetPlayerInfo <i> checksum
	GetPlayerInfo <i> player
	GetPlayerInfo <i> text
	change structurename = <checksum> star_power_amount = 100
	spawnscriptnow star_power_activate_and_drain params = {player_status = <checksum> player = <player> player_text = <text>} id = training_spawned_script
	<i> = (<i> + 1)
	repeat 4
	spawnscriptnow \{training_6_3_drain_star_power
		id = training_spawned_script}
endscript

script training_6_3_drain_star_power 
	printf \{qs("\Lstarting training_6_3_drain_star_power")}
	training_resume_gem_scroller
	<i> = 0.0
	begin
	j = 1
	begin
	GetPlayerInfo <j> checksum
	GetPlayerInfo <j> player
	GetPlayerInfo <j> text
	change structurename = <checksum> star_power_amount = (100.0 - ((<i> / 450.0) * 100.0))
	j = (<j> + 1)
	repeat 4
	change structurename = band1_status star_power_amount = (100.0 - ((<i> / 450.0) * 100.0))
	change structurename = band1_status star_power_display_amount = (100.0 - ((<i> / 450.0) * 100.0))
	Wait \{1
		gameframes}
	i = (<i> + 1.0)
	repeat 450
	change \{structurename = band1_status
		star_power_display_amount = 0.0}
	training_clear_out_star_power
	training_pause_gem_scroller
endscript

script training_6_3_show_arrow_pointing_to_bulbs 
	printf \{qs("\Lstarting training_6_3_show_arrow_pointing_to_bulbs")}
	Wait \{3.0
		seconds
		ignoreslomo}
	KillSpawnedScript \{name = training_set_health}
	training_add_arrow \{id = training_arrow2
		life = 4
		pos = (300.0, 225.0)
		scale = 0.7
		rot = 90}
endscript

script training_6_3_show_bands_rock_meter_and_demo 
	printf \{qs("\Lstarting training_6_3_show_bands_rock_meter_and_demo")}
	create_training_pause_handler
	Wait \{3.6
		seconds
		ignoreslomo}
	training_pause_gem_scroller
	spawnscriptnow \{training_6_3_show_arrow_pointing_to_bulbs
		id = training_spawned_script}
	training_play_sound \{Sound = 'Tut_Band_Star_06_BAS'
		Wait}
endscript

script training_6_3_show_band_playing_in_unison 
	printf \{qs("\Lstarting training_6_3_show_band_playing_in_unison")}
	create_training_pause_handler
	training_6_3_trigger_band_star_power
	Wait \{4.0
		seconds
		ignoreslomo}
	training_play_sound \{Sound = 'Tut_Band_Star_07_BAS'
		Wait}
	Wait \{0.5
		seconds
		ignoreslomo}
	training_play_sound \{Sound = 'Tut_Band_Star_08_BAS'
		Wait}
	training_clear_out_star_power
	Wait \{3.0
		seconds
		ignoreslomo}
	training_play_sound \{Sound = 'Tut_Band_Star_09_BAS'
		Wait}
endscript

script training_6_3_complete_message 
	printf \{qs("\Lstarting training_6_3_complete_message")}
	training_play_sound \{Sound = 'Tut_Band_Star_10_BAS'
		Wait}
	destroy_menu \{menu_id = menu_tutorial}
	create_training_pause_handler
	training_generic_lesson_complete
endscript

script training_6_4_show_lesson_header 
	printf \{qs("\Lstarting training_6_4_show_lesson_header")}
	training_set_lesson_header_text \{number = qs("\L4")
		text = qs("Band versus Band")}
	training_show_narrator \{narrator = 'bassist'}
	training_show_lesson_header
	create_training_pause_handler
endscript

script set_faked_ui_to_final_player_slots \{slot = 0}
	GetPlatform
	if (<platform> = xenon)
		<player_1_name> = qs("Player 1")
		<player_2_name> = qs("Player 2")
		<player_3_name> = qs("Player 3")
		<player_4_name> = qs("Player 4")
		<player_5_name> = qs("Player 5")
		<player_6_name> = qs("Player 6")
		<player_7_name> = qs("Player 7")
		<player_8_name> = qs("Player 8")
	elseif (<platform> = ps3)
		<player_1_name> = qs("Profile 1")
		<player_2_name> = qs("Profile 2")
		<player_3_name> = qs("Profile 3")
		<player_4_name> = qs("Profile 4")
		<player_5_name> = qs("Profile 5")
		<player_6_name> = qs("Profile 6")
		<player_7_name> = qs("Profile 7")
		<player_8_name> = qs("Profile 8")
	else
		ScriptAssert \{qs("\LUnknown platform")}
	endif
	<player_1_cash> = 3620
	<player_2_cash> = 16462
	<player_3_cash> = 27863
	<player_4_cash> = 47985
	<player_5_cash> = 66836
	<player_6_cash> = 76548
	<player_7_cash> = 97433
	<player_8_cash> = 107923
	<player_1_color> = $player_slot_team1
	<player_2_color> = $player_slot_team1
	<player_3_color> = $player_slot_team1
	<player_4_color> = $player_slot_team1
	<player_5_color> = $player_slot_team2
	<player_6_color> = $player_slot_team2
	<player_7_color> = $player_slot_team2
	<player_8_color> = $player_slot_team2
	<player_1_instrument> = Logo_Guitar_GrayScale
	<player_2_instrument> = Logo_Bass_GrayScale
	<player_3_instrument> = Logo_Drum_GrayScale
	<player_4_instrument> = Logo_Vocal_GrayScale
	<player_5_instrument> = Logo_Guitar_GrayScale
	<player_6_instrument> = Logo_Bass_GrayScale
	<player_7_instrument> = Logo_Drum_GrayScale
	<player_8_instrument> = Logo_Vocal_GrayScale
	OnlineLobbyInterface :GetTags
	cash_get_info_from_earnings earnings = <player_1_cash>
	FormatText TextName = cash_text qs("\L%d") d = <rank>
	printf qs("\Lplayer1 cash_icon_id: %s") s = <cash_icon_id>
	online_lobby_add_player_slot {
		name = <player_1_name>
		controller_texture = <player_1_instrument>
		bg_rgba = <player_1_color>
		parent = <player_slots_menu_id>
		cash_text = <cash_text>
		cash_icon_id = <cash_icon_id>
	}
	cash_get_info_from_earnings earnings = <player_2_cash>
	FormatText TextName = cash_text qs("\L%d") d = <rank>
	printf qs("\Lplayer2 cash_icon_id: %s") s = <cash_icon_id>
	online_lobby_add_player_slot {
		name = <player_2_name>
		controller_texture = <player_2_instrument>
		bg_rgba = <player_2_color>
		parent = <player_slots_menu_id>
		cash_text = <cash_text>
		cash_icon_id = <cash_icon_id>
	}
	cash_get_info_from_earnings earnings = <player_3_cash>
	FormatText TextName = cash_text qs("\L%d") d = <rank>
	printf qs("\Lplayer3 cash_icon_id: %s") s = <cash_icon_id>
	online_lobby_add_player_slot {
		name = <player_3_name>
		controller_texture = <player_3_instrument>
		bg_rgba = <player_3_color>
		parent = <player_slots_menu_id>
		cash_text = <cash_text>
		cash_icon_id = <cash_icon_id>
	}
	cash_get_info_from_earnings earnings = <player_4_cash>
	FormatText TextName = cash_text qs("\L%d") d = <rank>
	printf qs("\Lplayer4 cash_icon_id: %s") s = <cash_icon_id>
	online_lobby_add_player_slot {
		name = <player_4_name>
		controller_texture = <player_4_instrument>
		bg_rgba = <player_4_color>
		parent = <player_slots_menu_id>
		cash_text = <cash_text>
		cash_icon_id = <cash_icon_id>
	}
	cash_get_info_from_earnings earnings = <player_5_cash>
	FormatText TextName = cash_text qs("\L%d") d = <rank>
	printf qs("\Lplayer5 cash_icon_id: %s") s = <cash_icon_id>
	online_lobby_add_player_slot {
		name = <player_5_name>
		controller_texture = <player_5_instrument>
		bg_rgba = <player_5_color>
		parent = <player_slots_menu_id>
		cash_text = <cash_text>
		cash_icon_id = <cash_icon_id>
	}
	cash_get_info_from_earnings earnings = <player_6_cash>
	FormatText TextName = cash_text qs("\L%d") d = <rank>
	printf qs("\Lplayer6 cash_icon_id: %s") s = <cash_icon_id>
	online_lobby_add_player_slot {
		name = <player_6_name>
		controller_texture = <player_6_instrument>
		bg_rgba = <player_6_color>
		parent = <player_slots_menu_id>
		cash_text = <cash_text>
		cash_icon_id = <cash_icon_id>
	}
	cash_get_info_from_earnings earnings = <player_7_cash>
	FormatText TextName = cash_text qs("\L%d") d = <rank>
	printf qs("\Lplayer7 cash_icon_id: %s") s = <cash_icon_id>
	online_lobby_add_player_slot {
		name = <player_7_name>
		controller_texture = <player_7_instrument>
		bg_rgba = <player_7_color>
		parent = <player_slots_menu_id>
		cash_text = <cash_text>
		cash_icon_id = <cash_icon_id>
	}
	cash_get_info_from_earnings earnings = <player_8_cash>
	FormatText TextName = cash_text qs("\L%d") d = <rank>
	printf qs("\Lplayer8 cash_icon_id: %s") s = <cash_icon_id>
	online_lobby_add_player_slot {
		name = <player_8_name>
		controller_texture = <player_8_instrument>
		bg_rgba = <player_8_color>
		parent = <player_slots_menu_id>
		cash_text = <cash_text>
		cash_icon_id = <cash_icon_id>
	}
endscript

script create_faked_net_matchmaking_menu 
	printf \{qs("\Lstarting create_faked_net_matchmaking_menu")}
	CreateScreenElement \{parent = training_container
		id = OnlineLobbyInterface
		type = DescInterface
		desc = 'online_lobby'
		pos = (0.0, 0.0)
		z_priority = 500
		tags = {
			menu_index = 0
			Menu_items = 0
			slots_index = 0
			slot_items = 0
			player_slots_menu_id = 0
			locked_to_players = 0
		}}
	set_focus_color rgba = ($online_lobby_item_text_color)
	set_unfocus_color rgba = ($online_lobby_item_text_color)
	OnlineLobbyInterface :Desc_CheckVersion \{desired = 29
		AssertIf = Mismatch}
	OnlineLobbyInterface :obj_spawnscript \{highlight_motion
		params = {
			menu_id = OnlineLobbyInterface
			alias_name = alias_highlight
		}}
	if OnlineLobbyInterface :Desc_ResolveAlias \{name = alias_highlight}
		<resolved_id> :SE_SetProps scale = (1.8, 1.1) pos = {(-20.0, -5.0) relative}
		OnlineLobbyInterface :obj_spawnscript \{highlight_motion
			params = {
				menu_id = OnlineLobbyInterface
				alias_name = alias_highlight
			}}
	endif
	create_matchmaking_menu_and_items
	if OnlineLobbyInterface :Desc_ResolveAlias \{name = alias_online_lobby_right_side}
		if <resolved_id> :Desc_ResolveAlias name = alias_player_slots_menu
			<player_slots_menu_id> = <resolved_id>
			OnlineLobbyInterface :SetTags player_slots_menu_id = <player_slots_menu_id>
		endif
	endif
	OnlineLobbyInterface :SE_SetProps \{matchmaking_game_mode_text = qs("BAND v BAND")}
	spawnscriptnow \{task_menu_default_anim_in
		params = {
			base_name = 'band_hub'
		}}
	set_faked_ui_to_final_player_slots
	online_lobby_setup_helper_controls
	set_focus_color
	set_unfocus_color
endscript

script training_6_4_show_band_vs_band 
	printf \{qs("\Lstarting training_6_4_show_band_vs_band")}
	create_training_pause_handler
	Wait \{2.0
		seconds
		ignoreslomo}
	training_play_sound \{Sound = 'Tut_Band_Vs_01_BAS'}
	Wait \{3
		seconds}
	training_hide_narrator
	training_hide_lesson_header
	create_faked_net_matchmaking_menu
	Wait \{3
		seconds}
	training_add_arrow \{id = training_arrow2
		life = 2
		z = 510
		pos = (400.0, 170.0)
		scale = 0.7
		rot = 90}
	Wait \{7
		seconds}
	training_add_arrow \{id = training_arrow2
		life = 2
		z = 510
		pos = (650.0, 360.0)
		scale = 0.7
		rot = 270}
	training_wait_for_sound \{Sound = 'Tut_Band_Vs_01_BAS'}
	if ScreenElementExists \{id = OnlineLobbyInterface}
		DestroyScreenElement \{id = OnlineLobbyInterface}
	endif
	destroy_menu \{menu_id = menu_tutorial}
	create_training_pause_handler
endscript

script training_6_4_complete_message 
	printf \{qs("\Lstarting training_6_4_complete_message")}
	training_destroy_title
	if ScreenElementExists \{id = menu_tutorial}
		LaunchEvent \{type = unfocus
			target = menu_tutorial}
		destroy_menu \{menu_id = menu_tutorial}
		create_training_pause_handler
	endif
	training_hide_lesson_header
	training_destroy_gem_scroller
	SoundEvent \{event = Tutorial_Mode_Finish_Chord}
	spawnscriptnow \{create_exploding_text
		id = training_spawned_script
		params = {
			parent = 'lesson_complete'
			text = qs("Band Mode Lesson")
			text_physics = 0
			placement = top
		}}
	spawnscriptnow \{create_exploding_text
		id = training_spawned_script
		params = {
			parent = 'complete_text'
			text = qs("Complete!")
			text_physics = 0
			placement = bottom
		}}
	Wait \{7
		seconds
		ignoreslomo}
	KillSpawnedScript \{name = create_exploding_text}
	destroy_all_exploding_text
	change g_training_lessons_completed = ($g_training_lessons_completed + 1)
endscript

script training_band_tutorial_1_end 
	printf \{qs("\Lstarting training_band_tutorial_1_end")}
	training_container :GetTags
	if ($g_training_lessons_completed = 4)
		SetGlobalTags \{training
			params = {
				band_lesson = complete
			}}
	endif
	training_kill_session
	if ScreenElementExists \{id = menu_tutorial}
		LaunchEvent \{type = unfocus
			target = menu_tutorial}
		destroy_menu \{menu_id = menu_tutorial}
	endif
	training_destroy_narrator_icons
	SetScreenElementProps \{id = root_window
		event_handlers = [
			{
				pad_start
				gh3_start_pressed
			}
		]
		replace_handlers}
	training_check_for_all_tutorials_finished
	decide_tutorial_back_destination
endscript
