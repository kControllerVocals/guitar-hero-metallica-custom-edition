
script create_song_preview_menu \{ghtunes = 0
		num_ratings = 0}
	Menu_Music_Off
	clean_up_user_control_helpers
	if ScreenElementExists \{id = song_preview_element}
		DestroyScreenElement \{id = song_preview_element}
	endif
	if (<ghtunes> = 0)
		LaunchEvent \{type = unfocus
			target = current_menu}
	endif
	if (<ghtunes> = 0)
		CreateScreenElement {
			parent = root_window
			id = song_preview_element
			type = DescInterface
			desc = 'gh_tunes_preview'
			event_handlers = [
				{pad_back song_preview_menu_back params = {ghtunes = <ghtunes>}}
				{pad_choose song_preview_play_pause params = {ghtunes = <ghtunes> user_id = <user_id>}}
			]
			exclusive_device = ($primary_controller)
			helper_text_ghtunes_alpha = 0
			helper_text_preview_alpha = 1
			just = [bottom right]
			rot_angle = 90
			z_priority = 100
		}
	else
		event_handlers = [
			{pad_back song_preview_menu_back params = {ghtunes = <ghtunes> board_index = <board_index> start_at = <start_at>}}
			{pad_choose song_preview_play_pause params = {ghtunes = <ghtunes> user_id = <user_id>}}
			{pad_option2 song_preview_save_song params = {ghtunes = <ghtunes> filename = <filename> board_index = <board_index> start_at = <start_at>}}
			{pad_square ghtunes_view_user_content params = {selected_index = <selected_index> ghtunes = <ghtunes> filename = <filename> board_index = <board_index> start_at = <start_at> user_id = <user_id> user_name = <user_name>}}
			{pad_start song_preview_show_gamercard params = {user_id = <user_id>}}
			{pad_l1 ghtunes_show_terms_of_service params = {parent_menu = song_preview_element user_id = <user_id> selected_index = <selected_index>}}
		]
		CreateScreenElement {
			parent = root_window
			id = song_preview_element
			type = DescInterface
			desc = 'gh_tunes_preview'
			event_handlers = <event_handlers>
			exclusive_device = ($primary_controller)
			helper_text_ghtunes_alpha = 1
			helper_text_preview_alpha = 0
			just = [bottom right]
			rot_angle = 90
		}
	endif
	LaunchEvent \{type = unfocus
		target = song_preview_element}
	if NOT GotParam \{file_id}
		GetSongInfo
	endif
	create_jam_song_info_text parent = song_preview_element pos = (485.0, 332.0) column_offset = (215.0, 0.0) z_priority = 60 filename = <filename> file_id = <file_id> num_ratings = <num_ratings>
	song_preview_draw_album_cover
	if (<ghtunes> = 0)
		jam_publish_draw_album_cover
	endif
	if ScreenElementExists \{id = song_preview_element}
		SoundEvent \{event = GHTunes_On}
		song_preview_element :SetProps \{playbar_dims = (0.0, 14.0)}
		song_preview_element :SetProps \{rot_angle = -1
			time = 0.2}
		song_preview_element :SE_WaitProps
		song_preview_element :SetProps \{rot_angle = 1
			time = 0.02}
		song_preview_element :SE_WaitProps
		song_preview_element :SetProps \{rot_angle = -0.5
			time = 0.02}
		song_preview_element :SE_WaitProps
		song_preview_element :SetProps \{rot_angle = 0.5
			time = 0.02}
		song_preview_element :SE_WaitProps
		song_preview_element :SetProps \{rot_angle = 0
			time = 0.02}
		song_preview_element :SE_WaitProps
	endif
	GetSongInfo
	GetArraySize \{$drum_kits}
	printf channel = jam_mode qs("\Ldrum kit %s") s = <drum_kit>
	if ((<drum_kit> >= <array_size>) || (<drum_kit> < 0))
		<drum_kit> = 0
	endif
	change jam_current_drum_kit = <drum_kit>
	LoadDrumKitAll drum_kit = ($drum_kits [<drum_kit>].string_id) percussion_kit = ($drum_kits [<drum_kit>].percussion_string_id) async = 0
	Wait \{1
		gameframe}
	GetArraySize \{$pause_melody_kit_options}
	if ((<melody_kit> >= <array_size>) || (<melody_kit> < 0))
		<melody_kit> = 0
	endif
	change jam_current_melody_kit = <melody_kit>
	LoadMelodyKit melody_kit = <melody_kit>
	if GotParam \{bass_kit}
		GetArraySize \{$pause_bass_kit_options}
		if ((<bass_kit> >= <array_size>) || (<bass_kit> < 0))
			<bass_kit> = 0
		endif
		change bass_kit_mode = <bass_kit>
		LoadBassKit bass_kit = <bass_kit>
	else
		change \{bass_kit_mode = 0}
	endif
	spawnscriptnow \{guitar_jam_playback_recording
		params = {
			jam_instrument = 0
			start_time = 0
			in_game = 0
		}}
	spawnscriptnow \{guitar_jam_playback_recording
		params = {
			jam_instrument = 1
			start_time = 0
			in_game = 0
		}}
	spawnscriptnow \{guitar_jam_playback_recording
		params = {
			jam_instrument = 2
			start_time = 0
			in_game = 0
		}}
	spawnscriptnow \{guitar_jam_playback_recording
		params = {
			jam_instrument = 4
			start_time = 0
			in_game = 0
		}}
	spawnscriptnow \{guitar_jam_drum_playback
		params = {
			start_time = 0
		}}
	spawnscriptnow song_preview_update_playbar params = {song_length = <song_length> <...>}
	change song_preview_curr_song_length = <song_length>
	if ScreenElementExists \{id = song_preview_element}
		song_preview_element :SetProps \{Timer_text = qs("0:00")}
	endif
	change \{ghtunes_preview_status = playing}
	song_preview_control_helpers <...>
	LaunchEvent \{type = focus
		target = song_preview_element}
endscript

script song_preview_show_gamercard 
	printf \{channel = jam_mode
		'song_preview_show_gamercard'}
	if isXenon
		if GotParam \{user_id}
			NetSessionFunc func = showGamerCard params = {player_xuid = (<user_id>.user_id)}
		endif
	endif
endscript

script song_preview_save_song 
	if NOT current_band_save_created controller = ($primary_controller)
		return
	endif
	printf \{channel = jam_mode
		qs("\Lsong_preview_save_song")}
	if ScreenElementExists \{id = song_preview_element}
		LaunchEvent \{type = unfocus
			target = song_preview_element}
	endif
	if (<ghtunes> = 0)
		return
	endif
	directorylisting = $jam_curr_directory_listing
	GetArraySize <directorylisting>
	if (<array_size> > 0)
		index = 0
		begin
		if ((<directorylisting> [<index>].filename) = <filename>)
			song_preview_save_song_failed dialog = 0 <...>
			return
		endif
		<index> = (<index> + 1)
		repeat <array_size>
	endif
	SoundEvent \{event = GHTunes_UI_Select}
	destroy_song_preview_menu \{ghtunes = 1}
	change \{memcard_after_func = song_preview_unload}
	change memcard_jamsession_file_name = <filename>
	ui_memcard_save_jam event = menu_back data = {state = UIstate_jam_ghtunes straight_to_leaderbrd = {index = <board_index> start_at = <start_at>}}
	Achievements_RELOAD controller = ($primary_controller)
endscript

script song_preview_save_song_failed \{dialog = 0}
	LaunchEvent \{type = unfocus
		target = song_preview_element}
	SoundEvent \{event = Menu_Warning_SFX}
	clean_up_user_control_helpers
	jam_stop_all_sound
	KillSpawnedScript \{name = guitar_jam_playback_recording}
	KillSpawnedScript \{name = guitar_jam_drum_playback}
	KillSpawnedScript \{name = song_preview_update_playbar}
	switch <dialog>
		case 0
		FormatText \{TextName = dialog
			qs("GHTunes Save failed. You already have a song with the same filename as the one you are attempting to save. Please delete or rename this song before trying again.")}
	endswitch
	destroy_popup_warning_menu
	create_popup_warning_menu {
		title = qs("SAVE FAILED")
		textblock = {
			text = <dialog>
			pos = (640.0, 370.0)
		}
		menu_pos = (640.0, 465.0)
		options = [
			{
				func = {song_preview_menu_back}
				func_params = {<...>}
				text = qs("GO BACK")
			}
		]
	}
endscript
ghtunes_preview_status = playing

script song_preview_play_pause 
	printf \{channel = jam_mode
		qs("\LSong Preview Play Pause")}
	SoundEvent \{event = GHTunes_UI_Select}
	if ScriptIsRunning \{guitar_jam_playback_recording}
		GetSongTimeMs
		change song_preview_curr_song_time = <time>
		KillSpawnedScript \{name = guitar_jam_playback_recording}
		KillSpawnedScript \{name = guitar_jam_drum_playback}
		KillSpawnedScript \{name = song_preview_update_playbar}
	elseif ScriptIsRunning \{guitar_jam_drum_playback}
		GetSongTimeMs
		change song_preview_curr_song_time = <time>
		KillSpawnedScript \{name = guitar_jam_playback_recording}
		KillSpawnedScript \{name = guitar_jam_drum_playback}
		KillSpawnedScript \{name = song_preview_update_playbar}
	else
		spawnscriptnow \{guitar_jam_playback_recording
			params = {
				jam_instrument = 0
				start_time = $song_preview_curr_song_time
				in_game = 0
			}}
		spawnscriptnow \{guitar_jam_playback_recording
			params = {
				jam_instrument = 1
				start_time = $song_preview_curr_song_time
				in_game = 0
			}}
		spawnscriptnow \{guitar_jam_playback_recording
			params = {
				jam_instrument = 2
				start_time = $song_preview_curr_song_time
				in_game = 0
			}}
		spawnscriptnow \{guitar_jam_playback_recording
			params = {
				jam_instrument = 4
				start_time = $song_preview_curr_song_time
				in_game = 0
			}}
		spawnscriptnow \{guitar_jam_drum_playback
			params = {
				start_time = $song_preview_curr_song_time
			}}
		spawnscriptnow song_preview_update_playbar params = {song_length = $song_preview_curr_song_length <...>}
	endif
	StopSound unique_id = ($jam_input_current_chord) fade_type = linear fade_time = $jam_fade_time
	StopSound unique_id = ($jam_input_current_lead) fade_type = log_fast fade_time = 0.3
	StopSound unique_id = ($jam_input_current_bass) fade_type = linear fade_time = $jam_fade_time
	StopSound unique_id = ($jam_input_current_melody) fade_type = linear fade_time = $jam_fade_time
	song_preview_control_helpers <...>
endscript

script song_preview_control_helpers 
	clean_up_user_control_helpers
	if (<ghtunes> = 0)
		if ($ghtunes_preview_status = playing)
			add_user_control_helper \{text = qs("PAUSE")
				button = green
				z = 100000}
			change \{ghtunes_preview_status = playing}
		else
			add_user_control_helper \{text = qs("PLAY")
				button = green
				z = 100000}
			change \{ghtunes_preview_status = playing}
		endif
		add_user_control_helper \{text = qs("BACK")
			button = red
			z = 100000}
	else
		if ($ghtunes_preview_status = playing)
			add_user_control_helper \{text = qs("PAUSE")
				button = green
				z = 100000}
			change \{ghtunes_preview_status = paused}
		else
			add_user_control_helper \{text = qs("PLAY")
				button = green
				z = 100000}
			change \{ghtunes_preview_status = playing}
		endif
		add_user_control_helper \{text = qs("BACK")
			button = red
			z = 100000}
		if current_band_save_created controller = ($primary_controller)
			add_user_control_helper \{text = qs("SAVE")
				button = Yellow
				z = 100000}
		endif
		add_user_control_helper \{text = qs("VIEW ALL BY ARTIST")
			button = Blue
			z = 100000}
		add_user_control_helper \{text = qs("TERMS OF USE")
			button = Orange
			z = 100000}
		if isXenon
			if GotParam \{user_id}
				add_user_control_helper \{text = qs("GAMER CARD")
					button = start
					z = 100000}
			endif
		endif
	endif
endscript
song_preview_curr_song_length = 0
song_preview_curr_song_time = 0

script song_preview_update_playbar 
	if NOT ScreenElementExists \{id = song_preview_element}
		return
	endif
	song_preview_element :SetProps \{playbar_dims = (0.0, 14.0)}
	playbar_max_x = 344
	begin
	GetSongTimeMs
	if (<time> >= <song_length>)
		change \{song_preview_curr_song_time = 0}
		change \{ghtunes_preview_status = paused}
		if NOT ScreenElementExists \{id = ghtunes_terms_dialog_box}
			song_preview_control_helpers <...>
		endif
		break
	endif
	playbar_x = ((<time> / <song_length>) * <playbar_max_x>)
	song_preview_element :SetProps playbar_dims = ((0.0, 14.0) + ((1.0, 0.0) * <playbar_x>))
	CastToInteger \{time}
	Mod a = <time> b = 60000
	<seconds> = (<Mod> / 1000)
	<minutes> = (<time> / 60000)
	<sec_check> = (<seconds> / 10)
	if (<sec_check> < 1)
		FormatText TextName = song_time_text qs("%a:0%b") a = <minutes> b = <seconds>
	else
		FormatText TextName = song_time_text qs("%a:%b") a = <minutes> b = <seconds>
	endif
	song_preview_element :SetProps Timer_text = <song_time_text>
	Wait \{1
		gameframe}
	repeat
endscript

script song_preview_draw_album_cover 
	remove_missing_album_cover_textures
	cas_update_band_logo \{album_art}
	PushAssetContext context = ($CAS_Band_Logo_Details.assetcontext)
	if ScreenElementExists \{id = jam_preview_album_cover}
		DestroyScreenElement \{id = jam_preview_album_cover}
	endif
	CreateScreenElement {
		type = SpriteElement
		parent = song_preview_element
		id = jam_preview_album_cover
		texture = ($CAS_Band_Logo_Details.textureasset)
		dims = (256.0, 256.0)
		pos = (346.0, 353.0)
		just = [center center]
		z_priority = 60
	}
	PopAssetContext
endscript

script remove_missing_album_cover_textures 
	GetActualCASOptionStruct \{part = CAS_Band_Logo
		desc_id = CAS_Band_Logo_id}
	album_cover = ($editable_jam_album_cover)
	GetArraySize <album_cover> param = album_cover_size
	i = 0
	begin
	if StructureContains Structure = (<album_cover> [<i>]) name = layers
		curr_layers = (<album_cover> [<i>].layers)
		j = 0
		begin
		GetArraySize <curr_layers> param = layers_size
		if (<j> >= <layers_size>)
			break
		endif
		remove = 0
		if StructureContains Structure = (<curr_layers> [<j>]) name = texture
			curr_texture = (<curr_layers> [<j>].texture)
			mask = null
			match_layers_texture prof_texture = <curr_texture> sections = <sections>
			if (<mask> = null)
				printf channel = logo qs("\LTEXTURE NOT FOUND %s, REMOVING") s = <curr_texture>
				<remove> = 1
			endif
		elseif StructureContains Structure = (<curr_layers> [<j>]) name = font
			curr_font = (<curr_layers> [<j>].font)
			curr_text = (<curr_layers> [<j>].text)
			mask = null
			match_layers_font prof_font = <curr_font> prof_text = <curr_text> sections = <sections>
			if (<mask> = null)
				printf channel = logo qs("\LFONT NOT FOUND %s, REMOVING") s = <curr_font>
				<remove> = 1
			endif
		endif
		if (<remove> = 1)
			RemoveArrayElement array = <curr_layers> index = <j>
			<curr_layers> = <array>
		else
			<j> = (<j> + 1)
		endif
		repeat
		SetArrayElement ArrayName = album_cover index = <i> newvalue = {
			(<album_cover> [<i>])
			layers = <curr_layers>
		}
	endif
	<i> = (<i> + 1)
	repeat <album_cover_size>
	change editable_jam_album_cover = <album_cover>
endscript

script song_preview_menu_back 
	LaunchEvent \{type = unfocus
		target = song_preview_element}
	destroy_popup_warning_menu
	KillSpawnedScript \{name = song_preview_update_playbar}
	SoundEvent \{event = GHTunes_off}
	clean_up_user_control_helpers
	if ScreenElementExists \{id = song_preview_element}
		song_preview_element :SetProps \{rot_angle = 90
			time = 0.2}
		song_preview_element :SE_WaitProps
	endif
	destroy_song_preview_menu ghtunes = <ghtunes>
	if (<ghtunes> = 1)
		song_preview_unload
		ui_event event = menu_back state = UIstate_jam_ghtunes data = {straight_to_leaderbrd = {index = <board_index> start_at = <start_at>}}
	endif
endscript

script song_preview_unload 
	jamsession_unload \{song_prefix = 'editable'}
	ClearJamSession
endscript

script destroy_song_preview_menu \{ghtunes = 0}
	jam_stop_all_sound
	if ScreenElementExists \{id = song_preview_element}
		DestroyScreenElement \{id = song_preview_element}
	endif
	KillSpawnedScript \{name = guitar_jam_playback_recording}
	KillSpawnedScript \{name = guitar_jam_drum_playback}
	KillSpawnedScript \{name = song_preview_update_playbar}
	if (<ghtunes> = 0)
		if ScreenElementExists \{id = current_menu}
			LaunchEvent \{type = focus
				target = current_menu}
		endif
		clean_up_user_control_helpers
		add_user_control_helper \{text = qs("SELECT")
			button = green
			z = 100}
		add_user_control_helper \{text = qs("BACK")
			button = red
			z = 100}
	endif
endscript
