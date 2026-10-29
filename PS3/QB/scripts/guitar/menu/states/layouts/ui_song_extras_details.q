song_extras_album_covers = [
	{
		string = qs("\LDeath Magnetic")
		texture = album_cov_01
	}
	{
		string = qs("\LMaster Of Puppets")
		texture = album_cov_02
	}
	{
		string = qs("\LRide The Lightning")
		texture = album_cov_03
	}
	{
		string = qs("\LMetallica")
		texture = album_cov_04
	}
	{
		string = qs("\LSt. Anger")
		texture = album_cov_05
	}
	{
		string = qs("\LReLoad")
		texture = album_cov_06
	}
	{
		string = qs("\LKill 'Em All")
		texture = album_cov_07
	}
	{
		string = qs("\LLoad")
		texture = album_cov_08
	}
	{
		string = qs("\LGarage, Inc.")
		texture = album_cov_09
	}
	{
		string = qs("\L...And Justice For All")
		texture = album_cov_10
	}
	{
		string = qs("\LS&M")
		texture = album_cov_11
	}
	{
		string = qs("\LAce Of Spades")
		texture = album_cov_13
	}
]

script ui_create_song_extras_details 
	get_song_title song = <song>
	GetUpperCaseString <song_title>
	<song_title> = <UpperCaseString>
	get_song_artist song = <song>
	GetUpperCaseString <song_artist>
	<song_artist> = <UpperCaseString>
	FormatText TextName = song_text qs("\L%t: %a") a = <song_artist> t = <song_title>
	ui_song_extras_details_get_album_cover song = <song>
	get_all_exclusive_devices
	CreateScreenElement {
		type = DescInterface
		desc = 'Setlist_B_com'
		id = current_menu_anchor
		parent = root_window
		exclusive_device = <exclusive_device>
		song_title_text = <song_text>
		text_details_text = ($songlist_details.<song>)
		song_extras_alpha = 0
		song_details_alpha = 1
		song_lyrics_alpha = 0
		skeleton_left_pos = {relative (0.0, -50.0)}
		skeleton_right_pos = {relative (300.0, -50.0)}
		double_kick_alpha = <double_kick_alpha>
		double_kick_pos = <double_kick_pos>
		album_cov_pho_texture = <album_texture>
		event_handlers = [
			{pad_up ui_song_extras_details_scroll params = {up}}
			{pad_down ui_song_extras_details_scroll params = {down}}
			{pad_back generic_event_back params = {data = {from = song_details double_kick_alpha = <double_kick_alpha> double_kick_pos = <double_kick_pos>}}}
		]
	}
	current_menu_anchor :SE_GetProps \{text_details_dims}
	<text_height> = (<text_details_dims>.(0.0, 1.0))
	if (<text_height> <= 500)
		current_menu_anchor :SE_SetProps \{setlist_scroll_container_alpha = 0}
	endif
	LaunchEvent \{type = focus
		target = current_menu_anchor}
	add_user_control_helper \{text = qs("BACK")
		button = red
		z = 100000}
	current_menu_anchor :Obj_SpawnScriptNow \{song_extra_skull_a_anim}
endscript

script ui_destroy_song_extras_details 
	if ScreenElementExists \{id = current_menu_anchor}
		DestroyScreenElement \{id = current_menu_anchor}
	endif
	KillSpawnedScript \{name = song_extra_skull_a_anim}
	clean_up_user_control_helpers
endscript

script ui_song_extras_details_scroll 
	current_menu_anchor :Obj_SpawnScriptNow ui_song_extras_details_scroll_spawned params = {<...>}
endscript

script ui_song_extras_details_scroll_spawned 
	SE_GetProps \{text_details_pos}
	SE_GetProps \{text_details_dims}
	<text_y_pos> = (<text_details_pos>.(0.0, 1.0))
	<text_height> = (<text_details_dims>.(0.0, 1.0))
	if (<text_height> <= 500)
		return
	endif
	SE_GetParentId
	GetScreenElementDims id = <parent_id>
	<min_y> = ((<text_height> - (<Height> / 2)) * -1)
	<scroll_len> = 350
	if GotParam \{up}
		if (<text_y_pos> < 0)
			<scroll_perc> = ((<text_y_pos> + 47) / (<min_y>))
			<scroll_pos> = ((1.0, 0.0) + ((<scroll_perc> * <scroll_len>) * (0.0, 1.0)))
			SE_SetProps \{text_details_pos = {
					relative
					(0.0, 47.0)
				}
				time = 0.05}
			SE_SetProps setlist_B_details_scrollthumb_pos = <scroll_pos> time = 0.05
			SE_WaitProps
		endif
	elseif GotParam \{down}
		if (<text_y_pos> > <min_y>)
			<scroll_perc> = ((<text_y_pos> - 47) / <min_y>)
			if (<scroll_perc> > 1.0)
				<scroll_perc> = 1.0
			endif
			<scroll_pos> = ((1.0, 0.0) + ((<scroll_perc> * <scroll_len>) * (0.0, 1.0)))
			SE_SetProps \{text_details_pos = {
					relative
					(0.0, -47.0)
				}
				time = 0.05}
			SE_SetProps setlist_B_details_scrollthumb_pos = <scroll_pos> time = 0.05
			SE_WaitProps
		endif
	endif
endscript

script ui_song_extras_details_get_album_cover 
	<album_title> = ($permanent_songlist_props.<song>.album)
	GetArraySize ($song_extras_album_covers)
	<i> = 0
	begin
	if (<album_title> = ($song_extras_album_covers [<i>].string))
		return album_texture = ($song_extras_album_covers [<i>].texture)
	endif
	<i> = (<i> + 1)
	repeat <array_size>
	return \{album_texture = album_cov_default}
endscript
