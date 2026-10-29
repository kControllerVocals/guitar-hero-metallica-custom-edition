
script ui_create_song_extras_lyrics 
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
		song_title_text = <song_text>
		song_extras_alpha = 0
		song_details_alpha = 0
		song_lyrics_alpha = 0
		double_kick_alpha = <double_kick_alpha>
		double_kick_pos = <double_kick_pos>
		exclusive_device = <exclusive_device>
		event_handlers = [
			{pad_up ui_song_extras_lyrics_scroll params = {up}}
			{pad_down ui_song_extras_lyrics_scroll params = {down}}
			{pad_back song_lyrics_back params = {selected_index = <selected_index> from_backstage = <from_backstage> from = lyrics double_kick_alpha = <double_kick_alpha> double_kick_pos = <double_kick_pos>}}
		]
	}
	current_menu_anchor :SetTags \{index = 0}
	if GotParam \{from_backstage}
		Menu_Music_Off
		change \{ui_song_extras_finished_load = 0}
		current_menu_anchor :Obj_SpawnScriptNow ui_song_extras_lyrics_anim_in params = {new_double_kick_pos = <double_kick_pos> song = <song>}
	else
		current_menu_anchor :SE_SetProps \{skeleton_left_pos = {
				relative
				(0.0, -50.0)
			}}
		current_menu_anchor :SE_SetProps \{skeleton_right_pos = {
				relative
				(0.0, -50.0)
			}}
		current_menu_anchor :SE_SetProps \{song_lyrics_alpha = 1}
	endif
	current_menu_anchor :SE_SetProps text_lyrics_text = ($songlist_lyrics.<song>)
	LaunchEvent \{type = focus
		target = current_menu_anchor}
	add_user_control_helper \{text = qs("BACK")
		button = red
		z = 100000}
	current_menu_anchor :Obj_SpawnScriptNow \{song_extra_skull_a_anim}
	current_menu_anchor :Obj_SpawnScriptNow \{song_extra_skull_b_anim}
endscript

script ui_song_extras_lyrics_anim_in 
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
	SE_SetProps \{song_lyrics_alpha = 1
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
	ui_song_extras_load song = <song>
endscript

script ui_destroy_song_extras_lyrics 
	if (($signin_change_happening = 1) || ($invite_controller > -1))
		if GotParam \{from_backstage}
			ui_song_extras_unload
		endif
	endif
	if ScreenElementExists \{id = current_menu_anchor}
		DestroyScreenElement \{id = current_menu_anchor}
	endif
	clean_up_user_control_helpers
endscript

script ui_song_extras_lyrics_scroll 
	current_menu_anchor :Obj_SpawnScriptNow ui_song_extras_lyrics_scroll_spawned params = {<...>}
endscript

script ui_song_extras_lyrics_scroll_spawned 
	SE_GetProps \{text_lyrics_pos}
	SE_GetProps \{text_lyrics_dims}
	<text_y_pos> = (<text_lyrics_pos>.(0.0, 1.0))
	<text_height> = (<text_lyrics_dims>.(0.0, 1.0))
	SE_GetParentId
	GetScreenElementDims id = <parent_id>
	<min_y> = ((<text_height> - (<Height> / 2)) * -1)
	<scroll_len> = 350
	if GotParam \{up}
		if (<text_y_pos> < 0)
			GetTags
			<index> = (<index> - 1)
			if (<index> < 0)
				return
			endif
			SetTags {index = <index>}
			<scroll_perc> = ((<text_y_pos> + 47) / (<min_y>))
			<scroll_pos> = ((1.0, 0.0) + ((<scroll_perc> * <scroll_len>) * (0.0, 1.0)))
			SE_SetProps \{text_lyrics_pos = {
					relative
					(0.0, 47.0)
				}
				time = 0.05}
			SE_SetProps setlist_B_scrollthumb_pos = <scroll_pos> time = 0.05
			SE_WaitProps
		endif
	elseif GotParam \{down}
		if (<text_y_pos> > <min_y>)
			GetTags
			<index> = (<index> + 1)
			SetTags {index = <index>}
			<scroll_perc> = ((<text_y_pos> - 47) / <min_y>)
			if (<scroll_perc> > 1.0)
				<scroll_perc> = 1.0
			endif
			<scroll_pos> = ((1.0, 0.0) + ((<scroll_perc> * <scroll_len>) * (0.0, 1.0)))
			SE_SetProps \{text_lyrics_pos = {
					relative
					(0.0, -47.0)
				}
				time = 0.05}
			SE_SetProps setlist_B_scrollthumb_pos = <scroll_pos> time = 0.05
			SE_WaitProps
		endif
	endif
endscript

script song_lyrics_back 
	spawnscriptnow song_lyrics_back_spawned params = {<...>}
endscript

script song_lyrics_back_spawned 
	SetSpawnInstanceLimits \{max = 1
		management = ignore_spawn_request
		CheckWholeCallstack}
	generic_menu_pad_back_sound
	if ($ui_song_extras_finished_load = 0)
		return
	endif
	Wait \{1
		second}
	if GotParam \{from_backstage}
		ui_song_extras_unload
	endif
	generic_event_back nosound data = {<...>}
endscript
