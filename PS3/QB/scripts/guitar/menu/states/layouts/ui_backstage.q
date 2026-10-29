
script ui_create_backstage 
	update_ingame_controllers controller = ($primary_controller)
	if GetPakManCurrent \{map = zones}
		if NOT (<pak> = z_soundcheck)
			spawnscriptnow ui_create_backstage_spawned params = {<...> spawned}
			return
		endif
	endif
	ui_create_backstage_spawned
endscript

script ui_destroy_backstage 
	KillSpawnedScript \{name = ui_create_backstage_spawned}
	KillSpawnedScript \{name = backstage_skull_anim}
	generic_ui_destroy
endscript

script ui_deinit_backstage 
	change \{practice_enabled = 0}
endscript

script ui_create_backstage_spawned 
	change \{rich_presence_context = presence_menus}
	if GotParam \{spawned}
		create_loading_screen
		destroy_band
		destroy_bandname_viewport
		frontend_load_soundcheck
		destroy_loading_screen
	endif
	signin_params = {local}
	if IsPs3
		signin_params = {}
	endif
	if NOT CheckForSignIn <signin_params> controller_index = ($primary_controller)
		not_signed_in = 1
	endif
	CreateScreenElement {
		type = DescInterface
		desc = 'backstage'
		id = current_menu_anchor
		parent = root_window
		just = [center center]
		exclusive_device = ($primary_controller)
	}
	if current_menu_anchor :Desc_ResolveAlias \{name = alias_Menu_items}
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
		add_menu_frontend_item \{text = qs("Practice")
			pad_choose_script = ui_select_practice_mode_choose
			pad_choose_params = {
				practice = 1
			}
			focus_script = ui_backstage_focus
			unfocus_script = ui_backstage_unfocus
			font = fontgrid_text_a8
			internal_scale = 1}
		add_menu_frontend_item \{text = qs("Extras")
			choose_state = uistate_extras
			focus_script = ui_backstage_focus
			unfocus_script = ui_backstage_unfocus
			font = fontgrid_text_a8
			internal_scale = 1}
		add_menu_frontend_item \{text = qs("Rock Star Creator")
			pad_choose_script = main_menu_select_cas
			focus_script = ui_backstage_focus
			unfocus_script = ui_backstage_unfocus
			font = fontgrid_text_a8
			internal_scale = 0.95}
		add_menu_frontend_item \{text = qs("Leaderboards")
			choose_state = UIstate_top_rockers_mode
			focus_script = ui_backstage_focus
			unfocus_script = ui_backstage_unfocus
			font = fontgrid_text_a8
			internal_scale = 1}
		add_menu_frontend_item \{text = qs("Community")
			choose_state = UIstate_guitarhero_com
			focus_script = ui_backstage_focus
			unfocus_script = ui_backstage_unfocus
			font = fontgrid_text_a8
			internal_scale = 1}
		if GotParam \{not_signed_in}
			<item_container_id> :SE_SetProps not_focusable rgba = [64 64 64 255]
		endif
		current_menu :obj_spawnscript \{highlight_motion}
		if GotParam \{spawned}
			LaunchEvent type = focus target = current_menu data = {child_index = <selected_index>}
		endif
	endif
	current_menu_anchor :Obj_SpawnScriptNow \{backstage_skull_anim}
	menu_finish
	destroy_loading_screen
endscript

script backstage_skull_anim 
	SE_GetProps \{backstage_skull_anim_pos}
	<org_pos> = <backstage_skull_anim_pos>
	begin
	<scale> = Random (@ 1.1 @ 1.3 @ 1 )
	a = Random (@ 1.2 @ 0.5 @ 1 )
	SE_SetProps \{backstage_skull_anim_pos = (100.0, 100.0)}
	SE_SetProps \{burning_skull_jaw_rot_angle = 0}
	SE_SetProps \{burning_skull_jaw_rot_angle = 10
		time = 0.02
		motion = linear}
	SE_SetProps backstage_skull_anim_scale = <scale> time = 0.05
	SE_SetProps \{backstage_skull_anim_pos = (111.0, 115.0)
		time = 0.02
		motion = ease_in}
	SE_WaitProps
	SE_SetProps \{burning_skull_jaw_rot_angle = -2
		time = 0.01
		motion = ease_in}
	SE_SetProps \{backstage_skull_anim_scale = 1.0
		time = 0.01
		motion = ease_in}
	SE_SetProps \{backstage_skull_anim_pos = (95.0, 92.0)
		time = 0.01
		motion = ease_in}
	SE_WaitProps
	SE_SetProps \{burning_skull_jaw_rot_angle = 0
		time = 0.02
		motion = ease_in}
	ui_fx_set_blur amount = <a>
	SE_WaitProps
	SE_SetProps \{burning_skull_jaw_rot_angle = -2
		time = 0.01
		motion = ease_out}
	SE_WaitProps
	SE_SetProps \{burning_skull_jaw_rot_angle = 0
		time = 0.05
		motion = ease_out}
	ui_fx_set_blur \{amount = 0.0}
	SE_WaitProps
	SE_SetProps \{burning_skull_jaw_rot_angle = -2
		time = 0.01
		motion = ease_out}
	SE_WaitProps
	SE_SetProps \{burning_skull_jaw_rot_angle = 0
		time = 0.02
		motion = ease_in}
	SE_WaitProps
	SE_SetProps \{burning_skull_jaw_rot_angle = -2
		time = 0.01
		motion = ease_out}
	SE_WaitProps
	SE_SetProps \{burning_skull_jaw_rot_angle = 0
		time = 0.05
		motion = ease_out}
	SE_WaitProps
	SE_SetProps \{burning_skull_jaw_rot_angle = -2
		time = 0.01
		motion = ease_out}
	SE_WaitProps
	SE_SetProps \{burning_skull_jaw_rot_angle = 20
		time = 0.05
		motion = ease_out}
	SE_WaitProps
	<time> = Random (@ 4 @ 5.5 @ 6 @ 5.2 @ 2.8 )
	Wait <time> seconds
	repeat
endscript

script ui_backstage_focus 
	Obj_GetID
	GetTags
	if current_menu_anchor :Desc_ResolveAlias \{name = alias_highlight}
		Wait \{2
			gameframe}
		<ObjID> :SE_GetParentId
		<parent_id> :SE_GetProps
		<resolved_id> :SE_SetProps rot_angle = <rot_angle>
		GetScreenElementDims id = <ObjID>
		scale = (((1.0, 0.0) * (((<width> + 20.0) / 256.0))) + (0.0, 1.5))
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

script ui_backstage_unfocus 
endscript

script ui_backstage_anim_in 
	menu_transition_in \{menu = current_menu_anchor}
endscript

script ui_backstage_anim_out 
	menu_transition_out \{menu = current_menu_anchor}
endscript
