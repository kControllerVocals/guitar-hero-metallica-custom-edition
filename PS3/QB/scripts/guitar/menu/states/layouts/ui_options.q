ui_options_from_submenu = 0

script ui_create_options 
	startrendering
	change \{rich_presence_context = presence_menus}
	change \{respond_to_signin_changed = 1}
	change \{respond_to_signin_changed_func = none}
	update_ingame_controllers controller = ($primary_controller)
	CreateScreenElement {
		type = DescInterface
		desc = 'settings_menu'
		id = current_menu_anchor
		parent = root_window
		just = [center center]
		exclusive_device = ($primary_controller)
	}
	if <id> :Desc_ResolveAlias name = alias_menu_items_text
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
		add_menu_frontend_item \{text = qs("CHEATS")
			choose_state = uistate_options_cheats
			focus_script = ui_options_focus
			unfocus_script = ui_options_unfocus}
		add_menu_frontend_item {
			text = qs("BAND INFO")
			pad_choose_script = menu_choose_band_make_selection
			pad_choose_params = {from_options = 1 device_num = ($primary_controller) event_params = {event = menu_back}}
			focus_script = ui_options_focus
			unfocus_script = ui_options_unfocus
		}
		if NOT current_band_has_band_name
			<item_id> :SE_SetProps not_focusable rgba = [110 100 90 175]
		endif
		add_menu_frontend_item \{text = qs("SAVE/LOAD")
			pad_choose_script = ui_options_continue_to_data_submenu
			pad_choose_params = {
				is_popup
			}
			focus_script = ui_options_focus
			unfocus_script = ui_options_unfocus}
		if isXenon
			if NOT CheckForSignIn local controller_index = ($primary_controller)
				<item_id> :SE_SetProps not_focusable rgba = [110 100 90 175]
			elseif NetSessionFunc func = XenonIsGuest params = {controller_index = ($primary_controller)}
				<item_id> :SE_SetProps not_focusable rgba = [110 100 90 175]
			endif
		endif
		add_menu_frontend_item \{text = qs("CALIBRATE LAG")
			choose_state = UIstate_options_calibrate_lag
			focus_script = ui_options_focus
			unfocus_script = ui_options_unfocus}
		add_menu_frontend_item \{text = qs("AUDIO SETTINGS")
			choose_state = uistate_options_audio
			focus_script = ui_options_focus
			unfocus_script = ui_options_unfocus}
		add_menu_frontend_item \{text = qs("FUNCTIONAL OPTIONS")
			pad_choose_script = ui_options_continue_to_settings_submenu
			pad_choose_params = {
				is_popup
			}
			focus_script = ui_options_focus
			unfocus_script = ui_options_unfocus}
		if GetScreenElementChildren \{id = current_menu}
			GetArraySize <children>
			i = 0
			begin
			curr_id = (<children> [<i>])
			<curr_id> :SE_SetProps {
				tags = {index = <i>}
			}
			i = (<i> + 1)
			repeat <array_size>
		endif
		current_menu_anchor :Obj_SpawnScriptNow \{setting_skull_anim}
	endif
	menu_finish
endscript

script ui_return_options 
	clean_up_user_control_helpers
	menu_finish
endscript

script ui_options_anim_in 
	if NOT ($ui_options_from_submenu)
		menu_transition_in \{menu = current_menu_anchor}
	else
		change \{ui_options_from_submenu = 0}
	endif
	current_menu_anchor :SE_SetProps \{highlight_alpha = 1}
	current_menu :obj_spawnscript \{highlight_motion}
endscript

script ui_options_anim_out 
	menu_transition_out \{menu = current_menu_anchor}
endscript

script ui_destroy_options 
	KillSpawnedScript \{name = setting_skull_anim}
	if ScreenElementExists \{id = current_menu_anchor}
		DestroyScreenElement \{id = current_menu_anchor}
	endif
endscript

script ui_options_get_controller_type controller = ($primary_controller)
	type = guitar
	text = qs("GUITAR")
	if NOT IsGuitarController controller = <controller>
		type = Drums
		text = qs("DRUM")
		if NOT IsDrumController controller = <controller>
			type = Vocals
			text = qs("VOCAL")
		endif
	endif
	return {type = <type> text = <text>}
endscript

script setting_skull_anim 
	SE_GetProps \{setting_skull_menu}
	<org_pos> = <setting_skull_anim_pos>
	Wait \{2
		seconds}
	SE_SetProps \{setting_jaw_pos = (162.93959, -30.8933)
		time = 0.02
		motion = ease_out}
	SE_WaitProps
	SE_SetProps \{setting_jaw_pos = (170.93959, -30.8933)
		time = 0.01
		motion = ease_out}
	SE_WaitProps
	SE_SetProps \{setting_jaw_pos = (162.93959, -30.8933)
		time = 0.01
		motion = ease_out}
	SE_WaitProps
	SE_SetProps \{setting_jaw_pos = (170.93959, -30.8933)
		time = 0.01
		motion = ease_out}
	SE_WaitProps
	SE_SetProps \{setting_jaw_pos = (162.93959, -30.8933)
		time = 0.02
		motion = ease_out}
	SE_WaitProps
	SE_SetProps \{setting_jaw_pos = (170.93959, -30.8933)
		time = 0.01
		motion = ease_out}
	SE_WaitProps
	SE_SetProps \{setting_jaw_pos = (162.93959, -30.8933)
		time = 0.01
		motion = ease_out}
	SE_WaitProps
	SE_SetProps \{setting_jaw_pos = (170.93959, -30.8933)
		time = 0.01
		motion = ease_out}
	SE_WaitProps
	SE_SetProps \{setting_skull_menu_pos = (75.0, 110.0)
		time = 0.01
		motion = ease_in}
	SE_WaitProps
	SE_SetProps \{setting_skull_menu_pos = (110.0, 80.0)
		time = 0.01
		motion = ease_in}
	SE_WaitProps
	ui_fx_set_blur \{amount = 5.0
		time = 0.03}
	SE_WaitProps
	SE_SetProps \{setting_skull_menu_pos = (100.0, 100.0)
		time = 0.01
		motion = linear}
	SE_WaitProps
	Wait \{0.03
		seconds}
	SE_SetProps \{setting_skull_menu_scale = 1.2
		time = 0.02}
	Wait \{0.05
		seconds}
	SE_WaitProps
	ui_fx_set_blur \{amount = 0.0
		time = 0.02}
	SE_SetProps \{setting_skull_menu_pos = (125.0, 125.0)
		time = 0.01
		motion = linear}
	SE_WaitProps
	SE_SetProps \{setting_skull_tooth_m_rot_angle = 0}
	SE_SetProps \{setting_skull_menu_pos = (100.0, 100.0)
		time = 0.01
		motion = linear}
	SE_SetProps \{setting_skull_menu_scale = 1.0
		time = 0.02}
	SE_WaitProps
	SE_SetProps \{setting_skull_tooth_m_rot_angle = -30}
	SE_WaitProps
	SE_SetProps \{setting_skull_tooth_m_rot_angle = -30}
	SE_WaitProps
	SE_SetProps \{setting_skull_tooth_m_pos = (-21.71576, 400.34048)
		time = 0.03
		motion = ease_in}
	SE_WaitProps
	Wait \{0.05
		seconds}
	SE_SetProps \{setting_jaw_pos = (170.93959, -30.8933)
		time = 0.1
		motion = ease_out}
	SE_WaitProps
	Wait \{2
		seconds}
	SE_SetProps \{setting_skull_menu_pos = (110.0, 75.0)
		time = 0.01
		motion = ease_in}
	SE_WaitProps
	SE_SetProps \{setting_skull_menu_pos = (72.0, 125.0)
		time = 0.01
		motion = ease_in}
	SE_WaitProps
	ui_fx_set_blur \{amount = 5.0
		time = 0.05}
	SE_WaitProps
	SE_SetProps \{setting_skull_menu_pos = (100.0, 100.0)
		time = 0.02
		motion = linear}
	SE_WaitProps
	Wait \{0.03
		seconds}
	SE_SetProps \{setting_skull_menu_scale = 1.3
		time = 0.02}
	Wait \{0.05
		seconds}
	SE_WaitProps
	ui_fx_set_blur \{amount = 0.0
		time = 0.02}
	SE_SetProps \{setting_skull_menu_pos = (125.0, 125.0)
		time = 0.01
		motion = linear}
	SE_WaitProps
	SE_SetProps \{setting_skull_tooth_l_rot_angle = 0}
	SE_SetProps \{setting_skull_tooth_l_pos = (-376.11633, -93.88914)}
	SE_WaitProps
	SE_SetProps \{setting_skull_menu_pos = (100.0, 100.0)
		time = 0.01
		motion = linear}
	SE_SetProps \{setting_skull_menu_scale = 1.0
		time = 0.02}
	SE_WaitProps
	SE_SetProps \{setting_skull_tooth_l_rot_angle = -30}
	SE_WaitProps
	SE_SetProps \{setting_skull_tooth_l_rot_angle = -30}
	SE_WaitProps
	Wait \{0.02
		seconds}
	SE_SetProps \{setting_skull_tooth_l_pos = (-200.71576, 400.34048)
		time = 0.03
		motion = ease_in}
	SE_WaitProps
	Wait \{1
		seconds}
	SE_SetProps \{setting_jaw_pos = (162.93959, -30.8933)
		time = 0.02
		motion = ease_out}
	SE_WaitProps
	SE_SetProps \{setting_jaw_pos = (170.93959, -30.8933)
		time = 0.01
		motion = ease_out}
	SE_WaitProps
	SE_SetProps \{setting_jaw_pos = (162.93959, -30.8933)
		time = 0.01
		motion = ease_out}
	SE_WaitProps
	SE_SetProps \{setting_jaw_pos = (170.93959, -30.8933)
		time = 0.01
		motion = ease_out}
	SE_WaitProps
	Wait \{1
		seconds}
	SE_SetProps \{setting_jaw_pos = (162.93959, -30.8933)
		time = 0.02
		motion = ease_out}
	SE_WaitProps
	SE_SetProps \{setting_jaw_pos = (170.93959, -30.8933)
		time = 0.01
		motion = ease_out}
	SE_WaitProps
	SE_SetProps \{setting_jaw_pos = (162.93959, -30.8933)
		time = 0.01
		motion = ease_out}
	SE_WaitProps
	SE_SetProps \{setting_jaw_pos = (170.93959, -30.8933)
		time = 0.01
		motion = ease_out}
	SE_WaitProps
	Wait \{0.9
		seconds}
	SE_SetProps \{setting_skull_menu_pos = (110.0, 75.0)
		time = 0.01
		motion = ease_in}
	SE_WaitProps
	SE_SetProps \{setting_skull_menu_pos = (72.0, 125.0)
		time = 0.01
		motion = ease_in}
	SE_WaitProps
	ui_fx_set_blur \{amount = 5.0
		time = 0.1}
	SE_WaitProps
	SE_SetProps \{setting_skull_menu_pos = (100.0, 100.0)
		time = 0.02
		motion = linear}
	SE_WaitProps
	Wait \{0.03
		seconds}
	SE_SetProps \{setting_skull_menu_scale = 1.3
		time = 0.02}
	Wait \{0.05
		seconds}
	SE_WaitProps
	ui_fx_set_blur \{amount = 0.0
		time = 0.02}
	SE_SetProps \{setting_skull_menu_pos = (150.0, 100.0)
		time = 0.01
		motion = linear}
	SE_WaitProps
	SE_SetProps \{setting_skull_tooth_r_rot_angle = 0}
	SE_SetProps \{setting_skull_tooth_r_pos = (76.989494, -365.53122)}
	SE_WaitProps
	SE_SetProps \{setting_skull_menu_pos = (75.0, 110.0)
		time = 0.01
		motion = linear}
	SE_WaitProps
	SE_SetProps \{setting_skull_menu_pos = (100.0, 100.0)
		time = 0.01
		motion = linear}
	SE_SetProps \{setting_skull_menu_scale = 1.0
		time = 0.02}
	SE_WaitProps
	SE_SetProps \{setting_skull_tooth_r_rot_angle = -30}
	SE_WaitProps
	SE_SetProps \{setting_skull_tooth_r_rot_angle = -30}
	SE_WaitProps
	Wait \{0.02
		seconds}
	SE_SetProps \{setting_skull_tooth_r_pos = (76.989494, 400.34048)
		time = 0.03
		motion = ease_in}
	SE_WaitProps
	begin
	r = Random (@ 1.1 @ -2 @ 2 @ -0.2 @ -3 )
	<time> = Random (@ 0.5 @ 1 @ 2 )
	SE_SetProps \{setting_jaw_pos = (162.93959, -30.8933)
		time = 0.02
		motion = ease_out}
	SE_WaitProps
	SE_SetProps \{setting_jaw_pos = (170.93959, -30.8933)
		time = 0.01
		motion = ease_out}
	SE_WaitProps
	Wait <time> seconds
	SE_SetProps \{setting_jaw_pos = (162.93959, -30.8933)
		time = 0.01
		motion = ease_out}
	SE_WaitProps
	SE_SetProps \{setting_jaw_pos = (170.93959, -30.8933)
		time = 0.01
		motion = ease_out}
	SE_WaitProps
	SE_SetProps \{setting_jaw_pos = (162.93959, -30.8933)
		time = 0.02
		motion = ease_out}
	SE_WaitProps
	SE_SetProps \{setting_jaw_pos = (170.93959, -30.8933)
		time = 0.01
		motion = ease_out}
	SE_WaitProps
	Wait <time> seconds
	repeat
endscript

script ui_options_set_settings 
	if ScreenElementExists \{id = current_menu}
		GetGlobalTags \{user_options}
		current_menu :SetTags {user_options = <...>}
	endif
endscript

script ui_options_check_settings 
	RemoveParameter \{event}
	RemoveParameter \{controller}
	if NOT ($playing_song)
		if CheckForSignIn local controller_index = <device_num>
			RemoveParameter \{device_num}
			if ScreenElementExists \{id = current_menu}
				GetGlobalTags \{user_options}
				new_user_options = <...>
				current_menu :GetSingleTag \{user_options}
				if GotParam \{user_options}
					if NOT CompareStructs struct1 = <new_user_options> struct2 = <user_options>
						generic_menu_pad_back_sound
						spawnscriptnow \{ui_memcard_autosave_replace}
						return
					endif
				endif
			endif
		endif
	endif
	generic_event_back
endscript

script ui_options_focus 
	Obj_GetID
	GetTags
	if current_menu_anchor :Desc_ResolveAlias \{name = alias_highlight}
		Wait \{2
			gameframe}
		<ObjID> :SE_GetParentId
		<parent_id> :SE_GetParentId
		<parent_id> :SE_GetProps
		<resolved_id> :SE_SetProps rot_angle = <rot_angle>
		GetScreenElementDims id = <ObjID>
		scale = (((1.0, 0.0) * ((<width> / 256.0))) + (0.0, 1.5))
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

script ui_options_unfocus 
endscript

script ui_options_continue_to_settings_submenu 
	if Is_ui_event_running
		return \{false}
	endif
	current_menu :Obj_KillSpawnedScript \{name = highlight_motion}
	current_menu_anchor :SE_SetProps \{highlight_alpha = 0}
	ui_event_block event = menu_change data = {state = uistate_options_settings <...>}
endscript

script ui_options_continue_to_data_submenu 
	if Is_ui_event_running
		return \{false}
	endif
	current_menu :Obj_KillSpawnedScript \{name = highlight_motion}
	current_menu_anchor :SE_SetProps \{highlight_alpha = 0}
	ui_event_block event = menu_change data = {state = uistate_options_data <...>}
endscript
