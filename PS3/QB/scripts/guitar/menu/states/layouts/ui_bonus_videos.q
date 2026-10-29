
script ui_create_bonus_videos 
	change \{rich_presence_context = presence_videos}
	KillSpawnedScript \{name = ui_destroy_bonus_videos_spawned}
	set_bink_heap_state \{state = big}
	CreateScreenElement {
		type = DescInterface
		desc = 'videos'
		parent = root_window
		id = current_menu_anchor
		just = [center center]
		exclusive_device = ($primary_controller)
		tags = {
			current_preview = none
		}
	}
	if <id> :Desc_ResolveAlias name = alias_vmenu
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
					generic_event_back
				}
			]}
		current_menu :obj_spawnscript \{highlight_motion}
		GetArraySize ($Bonus_Videos)
		i = 0
		begin
		if NOT ui_bonus_videos_is_locked id = ($Bonus_Videos [<i>].id)
			if (($Bonus_Videos [<i>].id) = credits)
				add_menu_frontend_item {
					text = ($Bonus_Videos [<i>].text)
					choose_state = uistate_bonus_videos_credits
					focus_script = ui_bonus_videos_focus
					focus_params = {credits}
					unfocus_script = ui_bonus_videos_unfocus
				}
			else
				add_menu_frontend_item {
					text = ($Bonus_Videos [<i>].text)
					pad_choose_script = ui_bonus_videos_play_video
					pad_choose_params = {($Bonus_Videos [<i>])}
					focus_script = ui_bonus_videos_focus
					focus_params = {($Bonus_Videos [<i>])}
					unfocus_script = ui_bonus_videos_unfocus
				}
			endif
		else
			add_menu_frontend_item {
				text = qs("LOCKED")
				pad_choose_script = nullscript
				pad_choose_sound = ui_bonus_videos_negative_sfx
				focus_script = ui_bonus_videos_focus
				focus_params = {($Bonus_Videos [<i>]) locked}
				unfocus_script = ui_bonus_videos_unfocus
				rgba = [110 100 90 175]
				not_focusable
			}
		endif
		<i> = (<i> + 1)
		repeat <array_size>
		GetScreenElementDims id = <item_id>
		<Height> = (<Height> * <array_size>)
		current_menu :SetTags {total_height = <Height>}
	endif
endscript

script ui_destroy_bonus_videos 
	KillSpawnedScript \{name = ui_bonus_video_preview}
	spawnscriptnow \{ui_destroy_bonus_videos_spawned}
	if ScreenElementExists \{id = current_menu_anchor}
		DestroyScreenElement \{id = current_menu_anchor}
	endif
	clean_up_user_control_helpers
endscript

script ui_destroy_bonus_videos_spawned 
	if ($bink_heap_state = small)
		return
	endif
	KillMovie \{TextureSlot = 1}
	WaitForAllMoviesToFinish
	set_bink_heap_state \{state = small}
	menu_music_on
	spawnscriptnow \{Skate8_SFX_Backgrounds_New_Area
		params = {
			BG_SFX_Area = FrontEnd_Menu_Music
		}}
endscript

script ui_bonus_videos_play_video \{movie = 'atvi'}
	SetSpawnInstanceLimits \{max = 1
		management = ignore_spawn_request}
	current_menu :SE_SetProps \{block_events}
	if ui_bonus_videos_is_locked id = <id>
	else
		KillSpawnedScript \{name = ui_bonus_video_preview}
		DestroyScreenElement \{id = preview_movie}
		WaitForAllMoviesToFinish
		Menu_Music_Off
		spawnscriptnow \{BG_Crowd_Front_End_Silence
			params = {
				immediate = 1
			}}
		fadetoblack \{on
			alpha = 1.0
			time = 0
			z_priority = 200}
		clean_up_user_control_helpers
		NetSessionFunc \{func = RemoveAllControllers}
		PlayMovieAndWait noblack movie = <movie>
		if ($invite_controller = -1)
			NetSessionFunc func = AddControllers params = {controller = ($primary_controller)}
		else
			NetSessionFunc func = AddControllers params = {controller = ($invite_controller)}
		endif
		menu_finish
		fadetoblack \{off
			time = 0}
		spawnscriptnow \{Skate8_SFX_Backgrounds_New_Area
			params = {
				BG_SFX_Area = FrontEnd_Menu_Music
			}}
		SpawnScript ui_bonus_video_preview params = <...>
	endif
	current_menu :SE_SetProps \{unblock_events}
endscript

script ui_bonus_videos_is_locked 
	GetArraySize ($Bonus_Videos)
	i = 0
	begin
	if GotParam \{id}
		if (<id> = ($Bonus_Videos [<i>].id))
			GetGlobalTags ($Bonus_Videos [<i>].id)
			if (<unlocked> = 0)
				return \{true}
			else
				return \{false}
			endif
		endif
	elseif GotParam \{movie}
		if (<movie> = ($Bonus_Videos [<i>].movie))
			GetGlobalTags ($Bonus_Videos [<i>].id)
			if (<unlocked> = 0)
				return \{true}
			else
				return \{false}
			endif
		endif
	endif
	<i> = (<i> + 1)
	repeat <array_size>
	return \{false}
endscript

script get_movie_id_by_name 
	GetArraySize ($Bonus_Videos)
	i = 0
	begin
	if (($Bonus_Videos [<i>].movie) = <movie>)
		return id = ($Bonus_Videos [<i>].id)
	endif
	<i> = (<i> + 1)
	repeat <array_size>
	ScriptAssert \{qs("\LMovie not found in get_movie_id_by_name!")}
endscript

script ui_bonus_videos_negative_sfx 
	SoundEvent \{event = UI_SFX_Negative_Select}
endscript

script ui_bonus_videos_anim_in 
	menu_transition_in \{menu = current_menu_anchor}
endscript

script ui_bonus_videos_anim_out 
	menu_transition_out \{menu = current_menu_anchor}
endscript

script ui_bonus_videos_focus 
	SetSpawnInstanceLimits \{max = 1
		management = ignore_spawn_request
		CheckWholeCallstack}
	current_menu :SE_SetProps \{block_events}
	Obj_GetID
	GetTags
	<ObjID> :SE_GetParentId
	current_menu :GetTags \{total_height}
	GetScreenElementPosition id = <ObjID>
	scroll_perc = ((<screenelementpos>.(0.0, 1.0)) / (<total_height>))
	scroll_len = 370
	scroll_pos = (((<scroll_perc> * 370) * (0.0, 1.0)) + (1.0, 0.0))
	current_menu_anchor :SE_SetProps setlist_B_scrollthumb_pos = <scroll_pos>
	if current_menu_anchor :Desc_ResolveAlias \{name = alias_highlight}
		Wait \{2
			gameframe}
		GetScreenElementDims id = <ObjID>
		scale = (((1.0, 0.0) * ((<width> / 205.0))) + (0.0, 1.0))
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
	if NOT ScriptIsRunning \{ui_bonus_videos_play_video}
		spawnscriptnow ui_bonus_video_preview params = <...>
		current_menu :SE_SetProps \{unblock_events}
	endif
endscript

script ui_bonus_video_preview \{movie = 'atvi'}
	Wait \{0.35000002
		second}
	SetSpawnInstanceLimits \{max = 1
		management = kill_oldest}
	current_menu_anchor :GetTags
	clean_up_user_control_helpers
	if ((GotParam credits) || (GotParam locked))
		DestroyScreenElement \{id = preview_movie}
		WaitForAllMoviesToFinish
		current_menu_anchor :SE_SetProps \{info_text = qs("")}
		menu_music_on
		spawnscriptnow \{Skate8_SFX_Backgrounds_New_Area
			params = {
				BG_SFX_Area = FrontEnd_Menu_Music
			}}
		add_user_control_helper \{text = qs("SELECT")
			button = green
			z = 100000}
		add_user_control_helper \{text = qs("BACK")
			button = red
			z = 100000}
		current_menu_anchor :SE_SetProps \{video_placeholder_alpha = 1.0
			time = 0.1}
	elseif GotParam \{movie}
		Menu_Music_Off
		spawnscriptnow \{BG_Crowd_Front_End_Silence
			params = {
				immediate = 1
			}}
		add_user_control_helper \{text = qs("FULLSCREEN")
			button = green
			z = 100000}
		add_user_control_helper \{text = qs("BACK")
			button = red
			z = 100000}
		if (<movie> = <current_preview>)
			if ScreenElementExists \{id = preview_movie}
				return
			endif
		endif
		if current_menu_anchor :Desc_ResolveAlias \{name = alias_video_container}
			DestroyScreenElement \{id = preview_movie}
			WaitForAllMoviesToFinish
			FormatText checksumname = movie_checksum '%m' m = <movie>
			current_menu_anchor :SE_SetProps \{info_text = qs("")}
			if StructureContains Structure = ($ui_song_extras_movies) <movie_checksum>
				current_menu_anchor :SE_SetProps info_text = ($ui_song_extras_movies.<movie_checksum>)
			endif
			set_bink_heap_state \{state = big}
			if GotParam \{locked}
				alpha = 0.1
			endif
			CreateScreenElement {
				type = MovieElement
				parent = <resolved_id>
				id = preview_movie
				dims = (490.0, 275.0)
				just = [center center]
				pos_anchor = [center center]
				pos = (0.0, 0.0)
				TextureSlot = 1
				TexturePri = 1000
				no_hold
				movie = <movie>
				alpha = <alpha>
			}
			current_menu_anchor :SetTags current_preview = <movie>
			begin
			if IsMoviePlaying \{TextureSlot = 1}
				break
			endif
			Wait \{1
				gameframes}
			repeat
			current_menu_anchor :SE_SetProps \{video_placeholder_alpha = 0.0
				time = 0.1}
		endif
	endif
endscript

script ui_bonus_videos_unfocus 
endscript
