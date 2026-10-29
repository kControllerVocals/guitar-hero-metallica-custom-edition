
script ui_create_jam_mixer 
	CreateScreenElement {
		parent = root_window
		id = JamMixer
		type = DescInterface
		desc = 'jam_audio_mixer_studio'
		z_priority = 650
		exclusive_device = ($primary_controller)
	}
	JamMixer :SE_SetProps \{mixer_channel_lamp_alpha = 0.0}
	change \{song_preview_curr_song_time = 0}
	if JamMixer :Desc_ResolveAlias \{name = alias_audio_mixer_menu}
		AssignAlias id = <resolved_id> alias = current_menu
		current_menu :SE_SetProps {
			event_handlers = [
				{pad_back ui_jam_mixer_back params = {from_adv = <from_adv> ghmix_persistant_settings = <ghmix_persistant_settings>}}
				{pad_up sound_options_scroll}
				{pad_down sound_options_scroll}
				{pad_option2 ui_jam_mixer_startstop_preview}
				{pad_option ui_jam_mixer_rewind_preview}
			]
		}
		if GetScreenElementChildren \{id = current_menu}
			GetArraySize <children>
			i = 0
			begin
			<current_item> = (<children> [<i>])
			<current_item> :SE_SetProps {
				event_handlers = [
					{focus ui_jam_mixer_focus_text_menu}
					{unfocus ui_jam_mixer_unfocus_text_menu}
					{pad_choose ui_jam_mixer_choose}
				]
				tags = {
					index = <i>
				}
			}
			i = (<i> + 1)
			repeat <array_size>
		endif
	endif
	if JamMixer :Desc_ResolveAlias \{name = alias_faders_container}
		if GetScreenElementChildren id = <resolved_id>
			GetArraySize <children>
			i = 0
			begin
			<current_item> = (<children> [<i>])
			if ((<i> = 0) || (<i> = 1) || (<i> = 4))
				FormatText checksumname = scrolling_options 'jam_mixer_sub_scrolling_%s' s = <i>
				FormatText checksumname = vmenu_options 'jam_mixer_sub_vmenu_%s' s = <i>
				new_menu {
					scrollid = <scrolling_options>
					vmenuid = <vmenu_options>
					menu_pos = (0.0, 0.0)
					use_backdrop = 0
					default_colors = 0
					exclusive_device = ($primary_controller)
					event_handlers = [
						{pad_up ui_jam_mixer_sub_updown params = {up parent = <current_item>}}
						{pad_down ui_jam_mixer_sub_updown params = {down parent = <current_item>}}
						{pad_choose ui_jam_mixer_sub_choose params = {parent = <current_item>}}
						{pad_back ui_jam_mixer_sub_back params = {parent = <current_item>}}
						{pad_option2 ui_jam_mixer_startstop_preview}
						{pad_option ui_jam_mixer_rewind_preview}
					]
					menu_parent = <resolved_id>
				}
				<current_item> :SetTags {index = <i> current_selection = fader}
				FormatText checksumname = pan_menu 'jam_mixer_pan_menu_%s' s = <i>
				CreateScreenElement {
					type = ContainerElement
					id = <pan_menu>
					parent = <current_item>
					event_handlers = [
						{pad_choose ui_jam_mixer_pan_back params = {index = <i> parent = <current_item>}}
						{pad_back ui_jam_mixer_pan_back params = {index = <i> parent = <current_item>}}
						{pad_up ui_jam_mixer_pan_updown params = {up index = <i> parent = <current_item>}}
						{pad_down ui_jam_mixer_pan_updown params = {down index = <i> parent = <current_item>}}
						{pad_option2 ui_jam_mixer_startstop_preview}
						{pad_option ui_jam_mixer_rewind_preview}
					]
				}
				<current_item> :SE_SetProps knob_note_text = ($mixer_pan)
				<current_item> :SE_SetProps mixer_knob_container_alpha = 1.0
			elseif ((<i> = 2) || (<i> = 3))
				<current_item> :SE_SetProps mixer_knob_container_alpha = 0.0
			endif
			FormatText checksumname = fade_menu 'jam_mixer_fader_menu_%s' s = <i>
			CreateScreenElement {
				type = ContainerElement
				id = <fade_menu>
				parent = <current_item>
				event_handlers = [
					{pad_choose ui_jam_mixer_fader_back params = {index = <i> parent = <current_item>}}
					{pad_back ui_jam_mixer_fader_back params = {index = <i> parent = <current_item>}}
					{pad_up ui_jam_mixer_fader_updown params = {up index = <i> parent = <current_item>}}
					{pad_down ui_jam_mixer_fader_updown params = {down index = <i> parent = <current_item>}}
					{pad_option2 ui_jam_mixer_startstop_preview}
					{pad_option ui_jam_mixer_rewind_preview}
				]
			}
			i = (<i> + 1)
			repeat <array_size>
		endif
	endif
	ui_jam_mixer_set_values
	add_gamertag_helper exclusive_device = ($primary_controller)
	menu_finish
	add_user_control_helper \{text = qs("PREVIEW")
		button = Yellow
		z = 100000}
	add_user_control_helper \{text = qs("REWIND")
		button = Blue
		z = 100000}
endscript

script ui_destroy_jam_mixer 
	ui_jam_mixer_rewind_preview \{exit}
	DestroyScreenElement \{id = JamMixer}
	generic_ui_destroy
endscript

script ui_jam_mixer_set_values \{time = 0.0}
	if JamMixer :Desc_ResolveAlias \{name = alias_faders_container}
		if GetScreenElementChildren id = <resolved_id>
			i = 0
			begin
			<inst> = (<children> [<i>])
			GetTrackInfo track = ($jam_tracks [<i>].id)
			posx = (-10 * (1.0 - ((<volume>) / 11.0)) + 10)
			posy = (170 * (1.0 - ((<volume>) / 11.0)))
			<inst> :SE_SetProps mixer_fader_pos = (((1.0, 0.0) * <posx>) + ((0.0, 1.0) * <posy>)) time = <time>
			<pan> = (<pan> + 10.0)
			<ratio> = (<pan> / 20.0)
			rot_angle = (<ratio> * 180.0)
			<inst> :SE_SetProps mixer_knob_rot_angle = <rot_angle> time = <time>
			i = (<i> + 1)
			repeat 5
		endif
	endif
endscript

script ui_jam_mixer_focus_text_menu 
	GetTags
	Obj_GetID
	GetScreenElementPosition id = <ObjID>
	SE_SetProps \{rgba = [
			200
			200
			200
			255
		]}
	JamMixer :SE_GetProps
	if NOT (<mixer_menu_highlight_alpha> = 1.0)
		JamMixer :SE_SetProps mixer_menu_highlight_pos = (<screenelementpos> - (3.0, 216.0))
		JamMixer :SE_SetProps \{mixer_menu_highlight_alpha = 1.0
			time = 0.1}
	else
		JamMixer :SE_SetProps mixer_menu_highlight_pos = (<screenelementpos> - (3.0, 216.0)) time = 0.1
	endif
	JamMixer :SE_SetProps mixer_channel_lamp_pos = ((440.0, 0.0) + ((124.0, 0.0) * <index>))
	JamMixer :SE_SetProps \{mixer_channel_lamp_alpha = 0.5
		time = 0.1}
	switch (<index>)
		case 0
		text = ($mixer_volume_txt_rhythm)
		case 1
		text = ($mixer_volume_txt_lead)
		case 2
		text = qs("Adjust the volume of your bass")
		case 3
		text = qs("Adjust the volume of your drums")
		case 4
		text = ($mixer_volume_txt_keyboard)
	endswitch
	GetUpperCaseString <text>
	<text> = <UpperCaseString>
	JamMixer :SE_SetProps mixer_info_text = <text>
endscript

script ui_jam_mixer_unfocus_text_menu 
	SE_SetProps \{rgba = [
			128
			128
			128
			255
		]}
endscript

script ui_jam_mixer_choose 
	clean_up_user_control_helpers
	add_gamertag_helper exclusive_device = ($primary_controller)
	menu_finish
	add_user_control_helper \{text = qs("PREVIEW")
		button = Yellow
		z = 100000}
	add_user_control_helper \{text = qs("REWIND")
		button = Blue
		z = 100000}
	GetTags
	if JamMixer :Desc_ResolveAlias \{name = alias_faders_container}
		if ResolveScreenElementId id = {<resolved_id> child = <index>}
			JamMixer :SE_SetProps \{mixer_channel_lamp_alpha = 1.0
				time = 0.1}
			LaunchEvent \{type = unfocus
				target = current_menu}
			if ((<index> = 0) || (<index> = 1) || (<index> = 4))
				SoundEvent \{event = Sound_Options_Select}
				<resolved_id> :SetTags {current_selection = fader}
				<resolved_id> :SE_SetProps {
					mixer_fader_highlight_alpha = 1.0
					mixer_fader_highlight_rgba = [255 0 0 255]
					knob_highlight_alpha = 0.0
				}
				FormatText checksumname = vmenu_options 'jam_mixer_sub_vmenu_%s' s = <index>
				LaunchEvent type = focus target = <vmenu_options> data = {child_index = 1}
			else
				SoundEvent \{event = Sound_Options_Select}
				<resolved_id> :SE_SetProps {
					mixer_fader_highlight_alpha = 1.0
					mixer_fader_highlight_rgba = [0 , 250 , 154 , 255]
				}
				FormatText checksumname = fade_menu 'jam_mixer_fader_menu_%s' s = <index>
				LaunchEvent type = focus target = <fade_menu>
			endif
		endif
	endif
	current_menu :SE_SetProps \{alpha = 0.5
		time = 0.1}
endscript

script ui_jam_mixer_sub_updown 
	SE_GetProps
	if GotParam \{up}
		generic_menu_up_or_down_sound \{up}
	elseif GotParam \{down}
		generic_menu_up_or_down_sound \{down}
	endif
	<parent> :GetTags
	if (<current_selection> = pan)
		<parent> :SetTags {current_selection = fader}
		<parent> :SE_SetProps {
			knob_highlight_alpha = 0.0
			mixer_fader_highlight_alpha = 1.0
			mixer_fader_highlight_rgba = [255 0 0 255]
		}
	elseif (<current_selection> = fader)
		<parent> :SetTags {current_selection = pan}
		<parent> :SE_SetProps {
			knob_highlight_alpha = 1.0
			knob_highlight_rgba = [255 0 0 255]
			mixer_fader_highlight_alpha = 0.0
		}
	endif
endscript

script ui_jam_mixer_sub_choose 
	SE_GetProps
	FormatText checksumname = vmenu_options 'jam_mixer_sub_vmenu_%s' s = <index>
	<parent> :GetTags
	if (<current_selection> = pan)
		generic_menu_pad_choose_sound
		<parent> :SE_SetProps knob_highlight_rgba = [0 , 250 , 154 , 255]
		LaunchEvent type = unfocus target = <vmenu_options>
		FormatText checksumname = pan_menu 'jam_mixer_pan_menu_%s' s = <index>
		LaunchEvent type = focus target = <pan_menu>
	elseif (<current_selection> = fader)
		generic_menu_pad_choose_sound
		<parent> :SE_SetProps mixer_fader_highlight_rgba = [0 , 250 , 154 , 255]
		LaunchEvent type = unfocus target = <vmenu_options>
		FormatText checksumname = fader_menu 'jam_mixer_fader_menu_%s' s = <index>
		LaunchEvent type = focus target = <fader_menu>
	endif
endscript

script ui_jam_mixer_sub_back 
	SoundEvent \{event = Sound_Options_Back}
	<parent> :SE_SetProps {
		knob_highlight_alpha = 0.0
		mixer_fader_highlight_alpha = 0.0
	}
	JamMixer :SE_SetProps \{mixer_channel_lamp_alpha = 0.5
		time = 0.1}
	LaunchEvent type = unfocus target = <ObjID>
	current_menu :SE_SetProps \{alpha = 1.0
		time = 0.1}
	LaunchEvent \{type = focus
		target = current_menu}
endscript

script ui_jam_mixer_pan_updown \{no_sound = 0}
	GetTrackInfo track = ($jam_tracks [<index>].id)
	if GotParam \{up}
		if (<no_sound> = 0 && <pan> < 10)
			SoundEvent event = GHTunes_UI_Scroll_Pan sfx_pan = <pan>
		endif
		<pan> = (<pan> + 1)
		<no_click> = 0
		if (<pan> > 10)
			<pan> = 10
			<no_click> = 1
		endif
	elseif GotParam \{down}
		if (<no_sound> = 0 && <pan> > -10)
			SoundEvent event = GHTunes_UI_Scroll_Pan sfx_pan = <pan>
		endif
		<pan> = (<pan> - 1)
		<no_click> = 0
		if (<pan> < -10)
			<pan> = -10
			<no_click> = 1
		endif
	endif
	SetTrackInfo track = ($jam_tracks [<index>].id) pan = <pan>
	guitar_jam_settings_update_pan jam_instrument = <index> pan = <pan>
	ui_jam_mixer_set_values \{time = 0.1}
endscript

script ui_jam_mixer_pan_back 
	generic_menu_pad_back_sound
	<parent> :SE_SetProps knob_highlight_rgba = [255 0 0 255]
	FormatText checksumname = pan_menu 'jam_mixer_pan_menu_%s' s = <index>
	LaunchEvent type = unfocus target = <pan_menu>
	FormatText checksumname = vmenu_options 'jam_mixer_sub_vmenu_%s' s = <index>
	LaunchEvent type = focus target = <vmenu_options>
endscript

script ui_jam_mixer_fader_updown \{no_sound = 0}
	SE_GetProps
	GetTrackInfo track = ($jam_tracks [<index>].id)
	if GotParam \{up}
		if (<no_sound> = 0 && <volume> < 10)
			sfx_vol = (<volume> - 7)
			PlaySound GHTunes_Menu_Scroll buss = front_end vol = <sfx_vol> pitch = 3
		endif
		<volume> = (<volume> + 1)
		<no_click> = 0
		if (<volume> > 10)
			<volume> = 10
			<no_click> = 1
		endif
	elseif GotParam \{down}
		if (<no_sound> = 0 && <volume> > 0)
			sfx_vol = (<volume> - 7)
			PlaySound GHTunes_Menu_Scroll buss = front_end vol = <sfx_vol> pitch = 3
		endif
		<volume> = (<volume> - 1)
		<no_click> = 0
		if (<volume> < 0)
			<volume> = 0
			<no_click> = 1
		endif
	endif
	SetTrackInfo track = ($jam_tracks [<index>].id) volume = <volume>
	if (<volume> = 0)
		<new_vol> = 100
	endif
	new_vol = ((10 - <volume>) * 2)
	switch <index>
		case 0
		SetSoundBussParams {JamMode_RhythmGuitar = {vol = (($Default_BussSet.JamMode_RhythmGuitar.vol) - <new_vol>)}}
		case 1
		SetSoundBussParams {JamMode_LeadGuitar = {vol = (($Default_BussSet.JamMode_LeadGuitar.vol) - <new_vol>)}}
		case 2
		SetSoundBussParams {JamMode_Bass = {vol = (($Default_BussSet.JamMode_Bass.vol) - <new_vol>)}}
		case 3
		SetSoundBussParams {JamMode_Drums = {vol = (($Default_BussSet.JamMode_Drums.vol) - <new_vol>)}}
		printf channel = jam_mode qs("\Lnew vol %S") s = <new_vol>
		case 4
		SetSoundBussParams {JamMode_Vox = {vol = (($Default_BussSet.JamMode_Vox.vol) - <new_vol>)}}
	endswitch
	ui_jam_mixer_set_values \{time = 0.1}
endscript

script ui_jam_mixer_fader_back 
	FormatText checksumname = fader_menu 'jam_mixer_fader_menu_%s' s = <index>
	LaunchEvent type = unfocus target = <fader_menu>
	if ((<index> = 0) || (<index> = 1) || (<index> = 4))
		generic_menu_pad_back_sound
		<parent> :SE_SetProps mixer_fader_highlight_rgba = [255 0 0 255]
		FormatText checksumname = vmenu_options 'jam_mixer_sub_vmenu_%s' s = <index>
		LaunchEvent type = focus target = <vmenu_options>
	else
		SoundEvent \{event = Sound_Options_Back}
		<parent> :SE_SetProps mixer_fader_highlight_alpha = 0.0
		current_menu :SE_SetProps \{alpha = 1.0
			time = 0.1}
		LaunchEvent \{type = focus
			target = current_menu}
	endif
endscript

script ui_jam_mixer_startstop_preview 
	if ScriptIsRunning \{guitar_jam_playback_recording}
		GetSongTimeMs
		change song_preview_curr_song_time = <time>
		KillSpawnedScript \{name = guitar_jam_playback_recording}
		KillSpawnedScript \{name = guitar_jam_drum_playback}
	elseif ScriptIsRunning \{guitar_jam_drum_playback}
		GetSongTimeMs
		change song_preview_curr_song_time = <time>
		KillSpawnedScript \{name = guitar_jam_playback_recording}
		KillSpawnedScript \{name = guitar_jam_drum_playback}
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
	endif
	StopSound unique_id = ($jam_input_current_chord) fade_type = linear fade_time = $jam_fade_time
	StopSound unique_id = ($jam_input_current_lead) fade_type = log_fast fade_time = 0.3
	StopSound unique_id = ($jam_input_current_bass) fade_type = linear fade_time = $jam_fade_time
	StopSound unique_id = ($jam_input_current_melody) fade_type = linear fade_time = $jam_fade_time
endscript

script ui_jam_mixer_rewind_preview 
	ResetSongTimer \{StartTime = 0}
	change \{song_preview_curr_song_time = 0}
	if NOT GotParam \{exit}
		SoundEvent \{event = DPad_Play}
	endif
	if ScriptIsRunning \{guitar_jam_playback_recording}
		GetSongTimeMs
		change song_preview_curr_song_time = <time>
		KillSpawnedScript \{name = guitar_jam_playback_recording}
		KillSpawnedScript \{name = guitar_jam_drum_playback}
	elseif ScriptIsRunning \{guitar_jam_drum_playback}
		GetSongTimeMs
		change song_preview_curr_song_time = <time>
		KillSpawnedScript \{name = guitar_jam_playback_recording}
		KillSpawnedScript \{name = guitar_jam_drum_playback}
	endif
	StopSound unique_id = ($jam_input_current_chord) fade_type = linear fade_time = $jam_fade_time
	StopSound unique_id = ($jam_input_current_lead) fade_type = log_fast fade_time = 0.3
	StopSound unique_id = ($jam_input_current_bass) fade_type = linear fade_time = $jam_fade_time
	StopSound unique_id = ($jam_input_current_melody) fade_type = linear fade_time = $jam_fade_time
endscript

script ui_jam_mixer_back 
	if (<from_adv> = 1)
		generic_event_back data = {editing = 1 ghmix_persistant_settings = <ghmix_persistant_settings>}
	else
		generic_event_back
	endif
endscript
