ui_song_extras_finished_load = 0
ui_song_extras_movies = {
	CreepingDeath = qs("Backstage at Luzhniki Stadium\nMoscow, Russia - July 18, 2007")
	forwhomthebelltolls = qs("'For Whom The Bell Tolls' (official bootleg)\nlive at The Basement\nNashville, Tennessee - June 12, 2008")
	masterofpuppets = qs("'Master of Puppets' - Behind the scenes\nWatch the full band capture session!\nSan Francisco, California - April, 2008")
	mercyfulfate = qs("'Mercyful Fate' (official bootleg)\nlive with special guest King Diamond\nDallas, Texas - August 9, 2008")
	Orion = qs("'Orion' (official bootleg)\nOnly their fifth time playing it live\nDonington, England - June 10, 2006")
	seekanddestroy = qs("'Seek and Destroy' - Behind the scenes\nWatch Rob's signature moves go in the game!\nSan Francisco, California - April, 2008")
	theshorteststraw = qs("'The Shortest Straw' - Behind the scenes. Watch\nLars doing drum capture over and over again.\nWoodland Hills, California - October, 2008")
}

script ui_create_song_extras 
	get_song_title song = <song>
	GetUpperCaseString <song_title>
	<song_title> = <UpperCaseString>
	get_song_artist song = <song>
	GetUpperCaseString <song_artist>
	<song_artist> = <UpperCaseString>
	FormatText TextName = song_text qs("\L%t: %a") a = <song_artist> t = <song_title>
	get_all_exclusive_devices
	CreateScreenElement {
		type = DescInterface
		desc = 'Setlist_B_com'
		id = current_menu_anchor
		parent = root_window
		exclusive_device = <exclusive_device>
		song_title_text = <song_text>
		song_extras_alpha = 0
		song_details_alpha = 0
		song_lyrics_alpha = 0
		double_kick_alpha = <double_kick_alpha>
	}
	printstruct <...>
	if <id> :Desc_ResolveAlias name = alias_Menu_items
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
					ui_song_extras_exit
				}
			]}
		if check_if_metallifacts_exists song = <song>
			if (<completed> = 1)
				add_menu_frontend_item {
					text = qs("\LMetallifacts")
					pad_choose_script = ui_song_extras_choose_metallifacts
					pad_choose_params = {song = <song>}
					focus_script = ui_song_extras_focus
					unfocus_script = ui_song_extras_unfocus
				}
			else
				add_menu_frontend_item {
					text = qs("\LMetallifacts")
					rgba = ($menu_unfocus_color)
					not_focusable
				}
			endif
		endif
		add_menu_frontend_item {
			text = qs("Song Details")
			pad_choose_script = ui_song_extras_choose_details
			pad_choose_params = {song = <song>}
			focus_script = ui_song_extras_focus
			unfocus_script = ui_song_extras_unfocus
		}
		if NOT StructureContains Structure = ($permanent_songlist_props.<song>) doesnt_support_vocals
			add_menu_frontend_item {
				text = qs("Lyrics")
				pad_choose_script = ui_song_extras_choose_lyrics
				pad_choose_params = {song = <song>}
				focus_script = ui_song_extras_focus
				unfocus_script = ui_song_extras_unfocus
			}
		endif
		if StructureContains Structure = ($ui_song_extras_movies) <song>
			add_menu_frontend_item \{text = qs("")
				internal_scale = (0.3, 0.3)
				not_focusable}
			add_menu_frontend_item {
				text = qs("Video")
				pad_choose_script = ui_song_extras_choose_live_video
				pad_choose_params = {song = <song>}
				focus_script = ui_song_extras_focus
				unfocus_script = ui_song_extras_unfocus
			}
			add_menu_frontend_item {
				text = ($ui_song_extras_movies.<song>)
				internal_scale = (0.5, 0.5)
				internal_just = [center center]
				single_line = false
				not_focusable
			}
		endif
		current_menu :obj_spawnscript \{highlight_motion}
	endif
	menu_finish
	if (<from> = SetList)
		Menu_Music_Off
		change \{ui_song_extras_finished_load = 0}
		current_menu_anchor :Obj_SpawnScriptNow ui_song_extras_anim_in params = {new_double_kick_pos = <double_kick_pos> song = <song>}
		spawnscriptnow ui_song_extras_wait_and_load params = {song = <song>}
	elseif (<from> = song_details)
		current_menu_anchor :SE_SetProps \{skeleton_left_pos = {
				relative
				(0.0, -50.0)
			}}
		current_menu_anchor :SE_SetProps \{skeleton_right_pos = {
				relative
				(300.0, -50.0)
			}}
		current_menu_anchor :SE_SetProps \{song_extras_alpha = 1}
		current_menu_anchor :SE_SetProps double_kick_pos = <double_kick_pos>
		current_menu_anchor :SE_SetProps \{skeleton_right_pos = {
				relative
				(-300.0, 0.0)
			}
			time = 0.15
			motion = ease_in}
	else
		current_menu_anchor :SE_SetProps \{skeleton_left_pos = {
				relative
				(0.0, -50.0)
			}}
		current_menu_anchor :SE_SetProps \{skeleton_right_pos = {
				relative
				(0.0, -50.0)
			}}
		current_menu_anchor :SE_SetProps \{song_extras_alpha = 1}
		current_menu_anchor :SE_SetProps double_kick_pos = <double_kick_pos>
	endif
	current_menu :Obj_SpawnScriptNow \{song_extra_skull_a_anim}
	current_menu :Obj_SpawnScriptNow \{song_extra_skull_b_anim}
endscript

script ui_destroy_song_extras 
	if ScreenElementExists \{id = current_menu_anchor}
		DestroyScreenElement \{id = current_menu_anchor}
	endif
	clean_up_user_control_helpers
	KillSpawnedScript \{name = song_extra_skull_a_anim}
	KillSpawnedScript \{name = song_extra_skull_b_anim}
endscript

script ui_deinit_song_extras 
	spawnscriptnow \{ui_song_extras_unload}
	menu_music_on
endscript

script ui_song_extras_focus 
	Obj_GetID
	GetTags
	if current_menu_anchor :Desc_ResolveAlias \{name = alias_highlight}
		Wait \{2
			gameframe}
		GetScreenElementDims id = <ObjID>
		scale = (((1.0, 0.0) * (((<width> + 100.0) / 256.0))) + (0.0, 1.5))
		GetScreenElementPosition id = <ObjID> summed
		<resolved_id> :SE_SetProps pos = {absolute <screenelementpos>} scale = <scale>
		<resolved_id> :SE_WaitProps
		GetScreenElementPosition id = <ObjID> summed
		<resolved_id> :SE_SetProps pos = {absolute (<screenelementpos> + (0.0, -10.0))} time = 0.05
		<resolved_id> :SE_WaitProps
		GetScreenElementPosition id = <ObjID> summed
		<resolved_id> :SE_SetProps pos = {absolute <screenelementpos>} scale = <scale> time = 0.05
		<resolved_id> :SE_WaitProps
	endif
endscript

script ui_song_extras_unfocus 
endscript

script song_extra_skull_a_anim 
	current_menu_anchor :SE_GetProps \{setlist_submenu_skull_a_pos}
	<org_pos> = <setlist_submenu_skull_a_pos>
	<time> = Random (@ 0.02 @ 0.02 @ 0.07 @ 0.01 @ 0.05 )
	r = Random (@ 1.5 @ 2 @ 5 @ 1 @ 4 )
	begin
	current_menu_anchor :SE_SetProps \{setlist_submenu_skull_a_pos = (1.718863, -175.35)
		time = 0.01}
	current_menu_anchor :SE_WaitProps
	current_menu_anchor :SE_SetProps \{setlist_submenu_skull_a_pos = (-5.718863, -169.35)
		time = 0.02}
	current_menu_anchor :SE_WaitProps
	current_menu_anchor :SE_SetProps \{setlist_submenu_skull_a_pos = (2.718863, -169.35)
		time = 0.01}
	current_menu_anchor :SE_WaitProps
	current_menu_anchor :SE_SetProps \{setlist_submenu_skull_a_pos = (1.718863, -169.35)
		time = 0.03}
	current_menu_anchor :SE_WaitProps
	Wait <r> seconds
	current_menu_anchor :SE_SetProps \{setlist_submenu_skull_a_rot_angle = 5
		time = 0.08}
	current_menu_anchor :SE_WaitProps
	Wait \{0.02}
	current_menu_anchor :SE_SetProps \{setlist_submenu_skull_a_pos = (1.718863, -169.35)}
	current_menu_anchor :SE_WaitProps
	current_menu_anchor :SE_SetProps \{setlist_submenu_skull_a_pos = (-5.718863, -169.35)}
	current_menu_anchor :SE_WaitProps
	current_menu_anchor :SE_SetProps \{setlist_submenu_skull_a_pos = (1.718863, -169.35)
		time = 0.01}
	current_menu_anchor :SE_WaitProps
	current_menu_anchor :SE_SetProps \{setlist_submenu_skull_a_pos = (-5.718863, -169.35)
		time = 0.02}
	current_menu_anchor :SE_WaitProps
	current_menu_anchor :SE_SetProps \{setlist_submenu_skull_a_pos = (2.718863, -169.35)
		time = 0.01}
	current_menu_anchor :SE_WaitProps
	current_menu_anchor :SE_SetProps \{setlist_submenu_skull_a_pos = (1.718863, -169.35)
		time = 0.01}
	current_menu_anchor :SE_WaitProps
	current_menu_anchor :SE_SetProps \{setlist_submenu_skull_a_pos = (1.718863, -169.35)
		time = 0.01}
	current_menu_anchor :SE_WaitProps
	current_menu_anchor :SE_SetProps \{setlist_submenu_skull_a_rot_angle = -2
		time = 0.01}
	current_menu_anchor :SE_WaitProps
	current_menu_anchor :SE_SetProps \{setlist_submenu_skull_a_rot_angle = 0
		time = 0.01}
	current_menu_anchor :SE_WaitProps
	<skip_first_section> = 0
	repeat
endscript

script song_extra_skull_b_anim 
	current_menu_anchor :SE_GetProps \{setlist_submenu_skull_b_rot_angle}
	current_menu_anchor :SE_GetProps \{setlist_submenu_skull_b_pos}
	<org_pos> = <setlist_submenu_skull_b_pos>
	<time> = Random (@ 0.02 @ 0.02 @ 0.07 @ 0.01 @ 0.05 )
	r = Random (@ 1.5 @ 2 @ 5 @ 1 @ 4 )
	begin
	current_menu_anchor :SE_SetProps \{setlist_submenu_skull_b_pos = (-1.2441, -175.35)
		time = 0.01}
	current_menu_anchor :SE_WaitProps
	current_menu_anchor :SE_SetProps \{setlist_submenu_skull_b_pos = (-6.2441, -175.35)
		time = 0.02}
	current_menu_anchor :SE_WaitProps
	current_menu_anchor :SE_SetProps \{setlist_submenu_skull_b_pos = (2.718863, -169.35)
		time = 0.01}
	current_menu_anchor :SE_WaitProps
	current_menu_anchor :SE_SetProps \{setlist_submenu_skull_b_pos = (1.718863, -169.35)
		time = 0.03}
	current_menu_anchor :SE_WaitProps
	Wait <r> seconds
	current_menu_anchor :SE_SetProps \{setlist_submenu_skull_b_rot_angle = 5
		time = 0.08}
	current_menu_anchor :SE_WaitProps
	Wait \{0.015}
	current_menu_anchor :SE_SetProps \{setlist_submenu_skull_b_pos = (1.718863, -169.35)}
	current_menu_anchor :SE_WaitProps
	current_menu_anchor :SE_SetProps \{setlist_submenu_skull_b_pos = (-6.718863, -169.35)}
	current_menu_anchor :SE_WaitProps
	current_menu_anchor :SE_SetProps \{setlist_submenu_skull_b_pos = (1.718863, -169.35)
		time = 0.01}
	current_menu_anchor :SE_WaitProps
	current_menu_anchor :SE_SetProps \{setlist_submenu_skull_b_pos = (-5.718863, -169.35)
		time = 0.02}
	current_menu_anchor :SE_WaitProps
	current_menu_anchor :SE_SetProps \{setlist_submenu_skull_b_pos = (2.718863, -169.35)
		time = 0.01}
	current_menu_anchor :SE_WaitProps
	current_menu_anchor :SE_SetProps \{setlist_submenu_skull_b_pos = (1.718863, -169.35)
		time = 0.01}
	current_menu_anchor :SE_WaitProps
	current_menu_anchor :SE_SetProps \{setlist_submenu_skull_b_pos = (-1.2441, -175.35)
		time = 0.01}
	current_menu_anchor :SE_WaitProps
	current_menu_anchor :SE_SetProps \{setlist_submenu_skull_b_rot_angle = -2
		time = 0.01}
	current_menu_anchor :SE_WaitProps
	current_menu_anchor :SE_SetProps \{setlist_submenu_skull_b_rot_angle = 0
		time = 0.01}
	current_menu_anchor :SE_WaitProps
	repeat
endscript

script ui_song_extras_anim_in 
	SetButtonEventMappings \{block_menu_input}
	SE_GetProps \{song_title_pos}
	SE_GetProps \{double_kick_pos}
	SE_SetProps \{skeleton_left_pos = {
			relative
			(-300.0, 0.0)
		}}
	SE_SetProps \{skeleton_right_pos = {
			relative
			(300.0, 0.0)
		}}
	SE_SetProps \{song_title_pos = (622.388, 248.817)}
	SE_SetProps double_kick_pos = <new_double_kick_pos>
	SE_SetProps \{skeleton_left_pos = {
			relative
			(300.0, -50.0)
		}
		time = 0.15
		motion = ease_in}
	SE_SetProps \{skeleton_right_pos = {
			relative
			(-300.0, -50.0)
		}
		time = 0.15
		motion = ease_in}
	SE_SetProps song_title_pos = <song_title_pos> time = 0.1 motion = ease_in
	SE_SetProps \{song_extras_alpha = 1
		time = 0.1
		motion = ease_in}
	<double_kick_move> = (<double_kick_pos> - <new_double_kick_pos>)
	<double_kick_move> = (<double_kick_move>.(0.0, 1.0) * (0.0, 1.0))
	SE_SetProps double_kick_pos = {relative <double_kick_move>} time = 0.1 motion = ease_in
	Wait \{0.1
		seconds}
	ui_fx_set_blur \{amount = 1.0
		time = 0.0}
	Wait \{0.15
		seconds}
	ui_fx_set_blur \{amount = 0.0
		time = 0.0}
	Wait \{0.1
		seconds}
	SetButtonEventMappings \{unblock_menu_input}
endscript

script ui_song_extras_wait_and_load 
	begin
	if NOT ScriptIsRunning \{ui_song_extras_anim_in}
		break
	endif
	Wait \{1
		gameframe}
	repeat
	ui_song_extras_load song = <song>
endscript

script ui_song_extras_anim_out 
	SetSpawnInstanceLimits \{max = 1
		management = ignore_spawn_request
		CheckWholeCallstack}
	current_menu_anchor :SE_GetProps \{double_kick_alpha}
	current_menu_anchor :SE_GetProps \{double_kick_pos}
	if (<to> = SetList)
		generic_menu_pad_back_sound
		ui_song_extras_unload
		generic_event_back \{nosound}
	elseif (<to> = metallifacts)
		ui_song_extras_unload
		start_metallifacts song = <song>
	elseif (<to> = song_details)
		current_menu_anchor :SE_SetProps \{skeleton_right_pos = {
				relative
				(300.0, 0.0)
			}
			time = 0.15
			motion = ease_in}
		current_menu_anchor :SE_WaitProps
		generic_event_choose state = UIstate_song_extras_details data = {song = <song> double_kick_alpha = <double_kick_alpha> double_kick_pos = <double_kick_pos>}
	elseif (<to> = movie)
		ui_song_extras_unload
		generic_event_choose state = UIstate_song_extras_movie data = {song = <song>}
	endif
endscript

script ui_song_extras_choose_metallifacts 
	if ($ui_song_extras_finished_load = 0)
		return
	endif
	spawnscriptnow ui_song_extras_anim_out params = {to = metallifacts <...>}
	change \{is_metallifacts = 1}
endscript

script ui_song_extras_choose_lyrics 
	if ($ui_song_extras_finished_load = 0)
		return
	endif
	current_menu_anchor :SE_GetProps \{double_kick_alpha}
	current_menu_anchor :SE_GetProps \{double_kick_pos}
	generic_event_choose state = UIstate_song_extras_lyrics data = {song = <song> double_kick_alpha = <double_kick_alpha> double_kick_pos = <double_kick_pos>}
endscript

script ui_song_extras_choose_details 
	if ($ui_song_extras_finished_load = 0)
		return
	endif
	spawnscriptnow ui_song_extras_anim_out params = {to = song_details <...>}
endscript

script ui_song_extras_exit 
	if ($ui_song_extras_finished_load = 0)
		return
	endif
	spawnscriptnow ui_song_extras_anim_out params = {to = SetList <...>}
endscript

script ui_song_extras_load 
	SetScriptCannotPause
	finalprintf \{qs("\LMARKER - ui_song_extras_load")}
	SetSpawnInstanceLimits \{max = 1
		management = ignore_spawn_request
		CheckWholeCallstack}
	change current_song = <song>
	load_songqpak song_name = <song> async = 0
	set_song_section_array \{player = 1}
	spawnscriptnow \{destroy_setlist_songpreview_monitor}
	wait_for_songpreview_monitor
	change \{force_practice_songpreview_restart = 1}
	spawnscriptnow \{ui_select_song_section_preview
		params = {
			index = 1
			extras = 1
		}}
	Block \{type = song_started}
	change \{ui_song_extras_finished_load = 1}
endscript

script ui_song_extras_unload 
	SetScriptCannotPause
	SetSpawnInstanceLimits \{max = 1
		management = ignore_spawn_request
		CheckWholeCallstack}
	count = 0
	begin
	if ($ui_song_extras_finished_load = 1)
		break
	endif
	Wait \{1
		gameframe}
	<count> = (<count> + 1)
	if (<count> > 300)
		finalprintf \{qs("\Lui_song_extras_unload - panic")}
		KillSpawnedScript \{name = ui_song_extras_load}
		break
	endif
	repeat
	spawnscriptnow \{destroy_setlist_songpreview_monitor}
	finalprintf \{qs("\LMARKER - ui_song_extras_unload")}
	wait_for_songpreview_monitor
	destroy_practice_songpreview_spawned
	ui_destroy_select_song_section
	SongUnLoad
	unload_songqpak
endscript

script ui_song_extras_choose_live_video 
	if ($ui_song_extras_finished_load = 0)
		return
	endif
	spawnscriptnow ui_song_extras_anim_out params = {to = movie <...>}
endscript
