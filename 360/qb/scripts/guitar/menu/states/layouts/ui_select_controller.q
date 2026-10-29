g_head_to_head_instrument_type = none
g_head_to_head_active_controllers = [
]

script ui_create_select_controller \{player = 2}
	clear_exclusive_devices
	change \{respond_to_signin_changed = 0}
	change \{respond_to_signin_changed_all_players = 0}
	change \{respond_to_signin_changed_func = main_menu_signin_changed}
	change \{in_controller_select_menu = 1}
	GetActiveControllers
	change g_head_to_head_active_controllers = <active_controllers>
	CreateScreenElement \{type = DescInterface
		id = current_menu
		parent = root_window
		desc = 'p2_select_controller'}
	if current_menu :Desc_ResolveAlias \{name = alias_all_controllers}
		<alias_players> = <resolved_id>
		<alias_players> :SetTags {p1 = -1 p2 = -1 p1_ready = 0 p2_ready = 0}
		GetScreenElementChildren id = <alias_players>
		<players_children> = <children>
		printstruct <...>
		GetArraySize <players_children>
		if NOT (<array_size> = 4)
			ScriptAssert \{'array size needs to be four, we have four controller slots'}
		endif
		i = 0
		begin
		ui_select_controller_hide_or_unhide_icons i = <i> players_children = <players_children> active_controllers = <active_controllers>
		i = (<i> + 1)
		repeat <array_size>
	endif
	current_menu :obj_spawnscript ui_select_controller_poll_for_controllers params = {players_children = <players_children>}
	current_menu :obj_spawnscript \{ui_select_controller_ready_motion
		params = {
			name = alias_ready_banner_p1
		}}
	current_menu :obj_spawnscript \{ui_select_controller_ready_motion
		params = {
			name = alias_ready_banner_p2
		}}
	current_menu :Obj_SpawnScriptNow \{head2head_skull_anim}
	ui_return_game_mode
endscript

script get_controller_texture 
	switch <type>
		case guitar
		printf \{qs("\LI've got guitar controller!")}
		<texture> = guitar_controller
		case Drums
		printf \{qs("\LI've got drum controller!")}
		<texture> = drum_controller
		case Vocals
		printf \{qs("\LI've got vocal controller with mic!")}
		<texture> = vocal_controller
		case vocals_no_mic
		printf \{qs("\LI've got vocal controller without mic!")}
		<texture> = vocal_controller
	endswitch
	return texture = <texture>
endscript

script ui_select_controller_anim_in 
	menu_transition_in \{menu = current_menu}
endscript

script ui_select_controller_anim_out 
	menu_transition_out \{menu = current_menu}
endscript

script ui_destroy_select_controller 
	if ScreenElementExists \{id = current_menu}
		DestroyScreenElement \{id = current_menu}
	endif
	change \{in_controller_select_menu = 0}
	if ScreenElementExists \{id = popup_warning_container}
		destroy_popup_warning_menu
	endif
	KillSpawnedScript \{name = head2head_skull_anim}
endscript

script ui_select_controller_hide_or_unhide_icons 
	<child_id> = (<players_children> [<i>])
	if ((<active_controllers> [<i>]) = 0)
		<child_id> :SE_GetParentId
		<parent_id> :GetTags
		<child_id> :GetTags
		<child_id> :SE_SetProps hide pos = <old_pos>
		<child_id> :SetTags hidden = 1
		get_controller_ready_se_objs
		if (<p1> = <i>)
			<parent_id> :SetTags p1 = -1
			<parent_id> :SetTags p1_ready = 0
			SetScreenElementProps id = {<p1_se> child = ready} alpha = 0.0 time = 0.1
		elseif (<p2> = <i>)
			<parent_id> :SetTags p2 = -1
			<parent_id> :SetTags p2_ready = 0
			SetScreenElementProps id = {<p2_se> child = ready} alpha = 0.0 time = 0.1
		endif
		printf 'ui_select_controller_hide_or_unhide_icons controller %c HIDE' c = <i>
	else
		printf 'ui_select_controller_hide_or_unhide_icons controller %c NOTHIDE' c = <i>
		<child_id> :SE_GetProps
		<child_id> :SE_SetProps {
			event_handlers = [] replace_handlers
		}
		<child_id> :SE_SetProps {
			exclusive_device = <i>
			event_handlers = [
				{pad_left ui_select_controller_move params = {left}}
				{pad_up ui_select_controller_move params = {left}}
				{pad_right ui_select_controller_move params = {right}}
				{pad_down ui_select_controller_move params = {right}}
				{pad_choose ui_select_controller_choose}
				{pad_back ui_select_controller_back}
			]
			replace_handlers
			tags = {old_pos = <pos>}
		}
		ui_options_get_controller_type controller = <i>
		if (<type> = Vocals)
			get_num_mics_plugged_in
			if (<num_mics_plugged_in> < 2)
				<type> = vocals_no_mic
			endif
		endif
		get_controller_texture type = <type>
		<child_id> :SE_SetProps {
			texture = <texture>
			unhide
		}
		<child_id> :SetTags hidden = 0
		LaunchEvent type = focus target = <child_id>
	endif
endscript

script skull_blur 
	begin
	a = Random (@ 0.0 @ 0.5 @ 1 )
	ui_fx_set_blur amount = <a> time = 0.09
	Wait \{0.1
		seconds}
	ui_fx_set_blur \{amount = 0}
	SE_WaitProps
	<time> = Random (@ 3 @ 1.5 @ 4 )
	Wait <time> seconds
	repeat
endscript

script head2head_skull_anim 
	SE_GetProps \{head_to_head_pos}
	<org_pos> = <head_to_head_pos>
	current_menu :Obj_SpawnScriptNow \{skull_blur}
	begin
	SE_SetProps \{sad_but_true_jaw_rot_angle = 0}
	SE_SetProps \{head_to_head_pos = (584.426, 515.3029)}
	SE_SetProps \{sad_but_true_jaw_rot_angle = 10
		time = 0.02
		motion = linear}
	SE_SetProps \{h2h_finger_rot_angle = 0}
	SE_SetProps \{sbt_skull_top_pos = (-391.184, -68.621346)}
	SE_SetProps \{sbt_skull_top_rot_angle = 0}
	SE_WaitProps
	SE_SetProps \{h2h_finger_rot_angle = -6
		time = 0.02
		motion = linear}
	SE_SetProps \{sbt_skull_top_rot_angle = 3
		time = 0.02
		motion = ease_in}
	SE_WaitProps
	SE_SetProps \{head_to_head_pos = (584.426, 515.3029)
		time = 0.03}
	SE_SetProps \{h2h_finger_rot_angle = 0
		time = 0.01
		motion = linear}
	SE_SetProps \{sbt_skull_top_rot_angle = 0
		time = 0.02
		motion = ease_out}
	SE_WaitProps
	SE_SetProps \{sad_but_true_jaw_rot_angle = -2
		time = 0.01
		motion = ease_in}
	SE_SetProps \{h2h_finger_rot_angle = -6
		time = 0.02
		motion = linear}
	SE_SetProps \{sbt_skull_top_rot_angle = 3
		time = 0.02
		motion = ease_in}
	SE_WaitProps
	SE_SetProps \{h2h_finger_rot_angle = 0
		time = 0.01
		motion = linear}
	SE_SetProps \{sbt_skull_top_rot_angle = 0
		time = 0.02
		motion = ease_out}
	SE_WaitProps
	SE_SetProps \{sad_but_true_jaw_rot_angle = 0
		time = 0.02
		motion = ease_in}
	SE_WaitProps
	SE_SetProps \{head_to_head_pos = (584.426, 515.3029)}
	SE_SetProps \{sad_but_true_jaw_rot_angle = -2
		time = 0.01
		motion = ease_out}
	SE_WaitProps
	SE_SetProps \{sad_but_true_jaw_rot_angle = 0
		time = 0.05
		motion = ease_out}
	SE_WaitProps
	SE_SetProps \{sad_but_true_jaw_rot_angle = -2
		time = 0.01
		motion = ease_out}
	SE_WaitProps
	SE_SetProps \{sad_but_true_jaw_rot_angle = 0
		time = 0.05
		motion = ease_out}
	SE_WaitProps
	<time> = Random (@ 2 @ 1.5 @ 4 @ 1.2 @ 0.5 @ 1.8 )
	Wait <time> seconds
	repeat
	KillSpawnedScript \{name = skull_blur}
endscript

script ui_select_controller_poll_for_controllers 
	begin
	GetActiveControllers
	GetArraySize <active_controllers>
	<i> = 0
	begin
	ui_options_get_controller_type controller = <i>
	if NOT (($g_head_to_head_active_controllers [<i>]) = (<active_controllers> [<i>]))
		ui_select_controller_hide_or_unhide_icons i = <i> players_children = <players_children> active_controllers = <active_controllers>
		SetArrayElement ArrayName = g_head_to_head_active_controllers GlobalArray index = <i> newvalue = (<active_controllers> [<i>])
	elseif IsPs3
		<child_id> = (<players_children> [<i>])
		<child_id> :SE_GetProps
		<my_texture> = <texture>
		<child_id> :GetTags
		if (<hidden> = 0)
			ui_options_get_controller_type controller = <i>
			if (<type> = Vocals)
				get_num_mics_plugged_in
				if (<num_mics_plugged_in> < 2)
					<type> = vocals_no_mic
				endif
			endif
			get_controller_texture type = <type>
			<new_texture> = <texture>
			if NOT (<my_texture> = <new_texture>)
				<child_id> :SE_SetProps {
					texture = <new_texture>
					unhide
				}
				<child_id> :SetTags hidden = 0
			endif
		endif
	endif
	<i> = (<i> + 1)
	repeat <array_size>
	Wait \{1
		gameframe}
	repeat
endscript

script ui_select_controller_move 
	SE_GetParentId
	Obj_GetID
	<parent_id> :GetTags
	GetTags
	<play_sound> = 1
	if GotParam \{left}
		<dir> = {up}
		if (<p2> = <device_num>)
			if (<p2_ready> = 1)
				return
			endif
			<parent_id> :SetTags p2 = -1
			SE_SetProps pos = <old_pos> time = 0.1
		elseif (<p1> = -1)
			<parent_id> :SetTags p1 = <device_num>
			SE_SetProps \{pos = (-350.0, -100.0)
				time = 0.1}
		else
			<play_sound> = 0
		endif
	else
		<dir> = {down}
		if (<p1> = <device_num>)
			if (<p1_ready> = 1)
				return
			endif
			<parent_id> :SetTags p1 = -1
			SE_SetProps pos = <old_pos> time = 0.1
		elseif (<p2> = -1)
			<parent_id> :SetTags p2 = <device_num>
			SE_SetProps \{pos = (350.0, -100.0)
				time = 0.1}
		else
			<play_sound> = 0
		endif
	endif
	if (<play_sound>)
		generic_menu_up_or_down_sound <dir>
	endif
endscript

script get_controller_ready_se_objs 
	current_menu :Desc_ResolveAlias \{name = alias_players}
	<alias_players> = <resolved_id>
	GetScreenElementChildren id = <alias_players>
	return p1_se = (<children> [0]) p2_se = (<children> [1])
endscript

script ui_select_controller_choose 
	get_controller_ready_se_objs
	SE_GetParentId
	Obj_GetID
	<parent_id> :GetTags
	if (<p1> = <device_num>)
		<parent_id> :SetTags p1_ready = 1
		SetScreenElementProps id = {<p1_se> child = ready} alpha = 1.0 time = 0.1
		if NOT (<p1_ready> = 1)
			SoundEvent \{event = CheckBox_Check_2_SFX}
		endif
	elseif (<p2> = <device_num>)
		<parent_id> :SetTags p2_ready = 1
		SetScreenElementProps id = {<p2_se> child = ready} alpha = 1.0 time = 0.1
		if NOT (<p2_ready> = 1)
			SoundEvent \{event = CheckBox_Check_2_SFX}
		endif
	endif
	<parent_id> :GetTags
	if ((<p1_ready> = 1) && (<p2_ready> = 1))
		if ((<p1> < 0) || (<p1> >= 4))
			return
		endif
		if ((<p2> < 0) || (<p2> >= 4))
			return
		endif
		ui_options_get_controller_type controller = <p1>
		p1_type = <type>
		ui_options_get_controller_type controller = <p2>
		p2_type = <type>
		if ($allow_controller_for_all_instruments = 0)
			if NOT (<p1_type> = <p2_type>)
				LaunchEvent \{type = unfocus
					target = current_menu}
				create_popup_warning_menu \{title = qs("MISMATCH")
					textblock = {
						text = qs("You can only go Head to Head with the same instrument type!")
					}
					player_device = [
						0
						1
						2
						3
					]
					no_background
					options = [
						{
							func = ui_select_controller_warning_go_back
							text = qs("GO BACK")
						}
					]}
				SoundEvent \{event = Menu_Warning_SFX}
				ui_select_controller_back <...>
				return
			endif
			if ChecksumEquals a = <p1_type> b = Vocals
				get_num_mics_plugged_in
				if (<num_mics_plugged_in> < 2)
					LaunchEvent \{type = unfocus
						target = current_menu}
					if isXenon
						<text> = qs("You need to have two microphones or Xbox 360 Headsets to go Head to Head on vocals!")
					else
						<text> = qs("You need to have two microphones plugged in to go Head to Head on vocals!")
					endif
					create_popup_warning_menu {
						textblock = {
							text = <text>
						}
						player_device = <device_num>
						no_background
						options = [
							{
								func = ui_select_controller_warning_go_back
								text = qs("GO BACK")
							}
						]
					}
					SoundEvent \{event = Menu_Warning_SFX}
					ui_select_controller_back <...>
					return
				endif
			endif
		endif
		change g_head_to_head_instrument_type = <p1_type>
		LaunchEvent \{type = unfocus
			target = current_menu}
		if (<p1> != ($player1_status.controller))
			swap_player_status_elements \{player_A = 1
				player_B = 2
				lefty_flip}
		endif
		change structurename = player1_status controller = <p1>
		change structurename = player2_status controller = <p2>
		change player1_device = <p1>
		change player2_device = <p2>
		add_exclusive_device device = <p1>
		add_exclusive_device device = <p2>
		printstruct <...>
		if ChecksumEquals a = <p1_type> b = Vocals
			change \{structurename = player1_status
				part = Vocals}
			change \{structurename = player2_status
				part = Vocals}
			vocals_distribute_mics
		endif
		Wait \{0.25
			seconds}
		change \{current_num_players = 2}
		if isXenon
			data = {device_num = <p2> allow_back = 1 new_state = UIstate_select_mp_mode primary = 0}
			set_primary_controller device_num = <p1> state = uistate_signin data = <data> force
		else
			set_primary_controller device_num = <p1> state = UIstate_select_mp_mode data = <data>
		endif
	endif
endscript

script ui_select_controller_warning_go_back 
	destroy_popup_warning_menu
	ui_destroy_select_controller
	ui_create_select_controller
endscript

script ui_select_controller_back 
	get_controller_ready_se_objs
	SE_GetParentId
	Obj_GetID
	<parent_id> :GetTags
	if ((<p1_ready> = 0) && (<p2_ready> = 0))
		generic_event_back
	endif
	if (<p1> = <device_num>)
		<parent_id> :SetTags p1_ready = 0
		SetScreenElementProps id = {<p1_se> child = ready} alpha = 0.0 time = 0.1
		generic_menu_pad_back_sound
	elseif (<p2> = <device_num>)
		<parent_id> :SetTags p2_ready = 0
		SetScreenElementProps id = {<p2_se> child = ready} alpha = 0.0 time = 0.1
		generic_menu_pad_back_sound
	endif
endscript

script swap_player_status_elements \{player_A = 1
		player_B = 2}
	FormatText checksumname = player_status_A 'player%n_status' n = <player_A>
	FormatText checksumname = player_status_B 'player%n_status' n = <player_B>
	if GotParam \{lefty_flip}
		<temp_value> = ($<player_status_A>.lefty_flip)
		change structurename = <player_status_A> lefty_flip = ($<player_status_B>.lefty_flip)
		get_savegame_from_controller controller = ($<player_status_A>.controller)
		SetGlobalTags savegame = <savegame> user_options params = {lefty_flip_save = ($<player_status_B>.lefty_flip)}
		change structurename = <player_status_B> lefty_flip = <temp_value>
		get_savegame_from_controller controller = ($<player_status_B>.controller)
		SetGlobalTags savegame = <savegame> user_options params = {lefty_flip_save = <temp_value>}
	endif
endscript

script ui_select_controller_ready_motion 
	if Desc_ResolveAlias name = <name>
		if GetScreenElementChildren id = <resolved_id>
			GetArraySize <children>
			prev = 0
			curr = 1
			begin
			prev_id = (<children> [<prev>])
			curr_id = (<children> [<curr>])
			<prev_id> :SE_SetProps alpha = 0.0
			<curr_id> :SE_SetProps alpha = 1
			prev = <curr>
			next = RandomInteger (0.0, 2.0)
			if (<next> = <prev>)
				curr = (<curr> + 1)
			else
				curr = <next>
			endif
			if (<curr> >= <array_size>)
				curr = 0
			endif
			rand = Random (@ 0 @ 1 )
			if (<rand> = 1)
				<curr_id> :SE_SetProps flip_v = true
			else
				<curr_id> :SE_SetProps flip_v = false
			endif
			rand = Random (@ 0 @ 1 )
			if (<rand> = 1)
				<curr_id> :SE_SetProps flip_h = true
			else
				<curr_id> :SE_SetProps flip_h = false
			endif
			Wait \{0.075
				second}
			repeat
		endif
	endif
endscript
