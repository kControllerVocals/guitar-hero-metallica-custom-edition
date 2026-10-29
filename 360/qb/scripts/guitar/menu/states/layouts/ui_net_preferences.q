
script ui_create_net_preferences 
	RequireParams \{[
			exit_script
		]
		all}
	info_index = 1
	index = 1
	begin
	GetPlayerInfo <index> controller
	if (<device_num> = <controller>)
		<info_index> = <index>
		break
	endif
	index = (<index> + 1)
	repeat 8
	<my_parent> = root_window
	if ScreenElementExists \{id = OnlineLobbyInterface}
		<my_parent> = OnlineLobbyInterface
	endif
	Obj_GetID
	LaunchEvent \{type = unfocus
		target = current_menu}
	<ObjID> :SE_GetProps
	GetScreenElementPosition id = <ObjID> absolute
	CreateScreenElement {
		type = DescInterface
		parent = OnlineLobbyInterface
		desc = 'online_lobby_submenu'
		pos = <screenelementpos>
		id = NetPrefInterface
		exclusive_device = <device_num>
		z_priority = (<z_priority> + 1)
		tags = {
			menu_index = 0
			Menu_items = 0
			player_num = <info_index>
			exit_script = <exit_script>
			submenu_id = null
		}
	}
	NetPrefInterface :SE_SetProps \{title_text = qs("PREFERENCES")}
	if NetPrefInterface :Desc_ResolveAlias \{name = alias_online_lobby_scrollbar
			param = scrollbar_id}
		<scrollbar_id> :Die
	endif
	create_net_preferences_menu controller = <device_num> <...>
	create_submenu_fade submenu_z = (<z_priority> + 1) fade_id = preferences_fade
	<id> :Obj_SpawnScriptNow animate_submenu_transition params = {id = NetPrefInterface direction = in focus_index = 0}
	clean_up_user_control_helpers
	adjust_highlight_z z_pri = (<z_priority> + 2)
	add_gamertag_helper exclusive_device = <device_num>
	menu_finish
endscript

script ui_destroy_net_preferences 
	turn_off_highlight
	destroy_submenu_fade \{fade_id = preferences_fade}
	if ScreenElementExists \{id = NetPrefInterface}
		NetPrefInterface :GetTags
		generic_menu_pad_back_sound
		animate_submenu_transition \{id = NetPrefInterface
			direction = out}
		DestroyScreenElement \{id = NetPrefInterface}
		if GotParam \{no_focus}
			spawnscriptnow <exit_script> params = {no_focus}
		else
			spawnscriptnow <exit_script>
		endif
	endif
	adjust_highlight_z \{z_pri = 2}
endscript

script set_net_preferences_helper_text 
	if NOT GotParam \{msg_checksum}
		return
	endif
	if isXenon
		plat_helper_strings = net_helper_text_strings_xen
	elseif IsPs3
		plat_helper_strings = net_helper_text_strings_ps3
	endif
	AppendSuffixToChecksum Base = <msg_checksum> SuffixString = '_text'
	if StructureContains Structure = ($<plat_helper_strings>) <appended_id>
		if ScreenElementExists \{id = NetPrefInterface}
			NetPrefInterface :SE_SetProps info_text = ($<plat_helper_strings>.<appended_id>)
		endif
	elseif StructureContains Structure = ($net_helper_text_strings) <appended_id>
		if ScreenElementExists \{id = NetPrefInterface}
			NetPrefInterface :SE_SetProps info_text = ($net_helper_text_strings.<appended_id>)
		endif
	endif
endscript

script create_net_preferences_menu \{container_id = NetPrefInterface}
	if NetPrefInterface :Desc_ResolveAlias \{name = alias_popup_vmenu}
		<resolved_id> :SE_SetProps {
			event_handlers = [
				{pad_back ui_destroy_net_preferences}
				{pad_up net_preferences_up_or_down_action params = {action = up}}
				{pad_down net_preferences_up_or_down_action params = {action = down}}
			]
		}
		get_local_rockers_data device_num = <controller>
		get_savegame_from_controller controller = <controller>
		if NOT GotParam \{post_game_lobby}
			characters = []
			get_musician_profile_size savegame = <savegame>
			added_characters = 0
			i = 0
			<Height> = 0
			begin
			get_musician_profile_struct_by_index index = <i> savegame = <savegame>
			NetPrefInterface :GetTags
			GetPlayerInfo <player_num> part
			if display_character_logic savegame = <savegame> profile_struct = <profile_struct> part = <part>
				character_id = (<profile_struct>.name)
				if is_profile_purchased id = <character_id> savegame = <savegame>
					get_musician_profile_struct_by_id id = <character_id> savegame = <savegame>
					get_car_photo_icon profile_struct = <profile_struct> savegame = <savegame> character_id = <character_id>
					<new_character> = {
						text = (<profile_struct>.fullname)
						checksum = <character_id>
						pic_texture = <icon>
					}
					AddArrayElement array = <characters> element = <new_character>
					<characters> = <array>
					<added_characters> = (<added_characters> + 1)
					<Height> = (<Height> + 42)
				endif
			endif
			i = (<i> + 1)
			repeat <array_size>
			add_net_preferences_item {
				vmenu_id = <resolved_id>
				text = qs("Rocker")
				msg_checksum = pref_character
				pic = <character_icon>
				choose_script = create_net_preferences_submenu
				choose_script_params = {
					name = qs("ROCKER")
					submenu_height = (<Height> + 40)
					submenu_type = character
					choose_script = select_net_preferences_character
					items = <characters>
					scroll_bar
				}
			}
			AssignAlias id = <id> alias = rocker_pref_item
		endif
		net_prefs_get_difficulty_items controller = <controller>
		add_net_preferences_item {
			vmenu_id = <resolved_id>
			text = qs("Difficulty")
			msg_checksum = pref_difficulty
			pic = <difficulty_icon>
			choose_script = create_net_preferences_submenu
			choose_script_params = {
				name = qs("DIFFICULTY")
				submenu_type = difficulty
				submenu_height = <diff_height>
				choose_script = select_net_preferences_difficulty
				items = <items>
			}
		}
		AssignAlias id = <id> alias = difficulty_pref_item
		get_functional_options_by_controller device_num = <controller>
		add_net_preferences_item {
			vmenu_id = <resolved_id>
			text = qs("Lefty Flip")
			msg_checksum = pref_lefty_flip
			checkbox_tick = <lefty_flip_flag>
			choose_script = select_net_preferences_lefty_flip
		}
		demo_mode_disable = <demo_mode_disable>
		add_net_preferences_item {
			vmenu_id = <resolved_id>
			text = qs("Scrolling Vocals")
			msg_checksum = pref_vocal_style
			checkbox_tick = <scrolling_vocals_flag>
			choose_script = select_net_preferences_vocal_style
		}
		add_net_preferences_item {
			vmenu_id = <resolved_id>
			text = qs("Star Power Clap")
			menu_type = star_power_clap
			checkbox_tick = <star_power_clap_flag>
			choose_script = select_net_preferences_star_power_clap
		}
		add_net_preferences_item {
			vmenu_id = <resolved_id>
			text = qs("Star Power Tilt")
			msg_checksum = pref_star_power_tilt
			checkbox_tick = <star_power_tilt_flag>
			choose_script = select_net_preferences_star_power_tilt
		}
		add_net_preferences_item {
			vmenu_id = <resolved_id>
			text = qs("Touch Strip")
			msg_checksum = pref_touch_strip
			checkbox_tick = <touch_strip_flag>
			choose_script = select_net_preferences_touch_strip
		}
		AssignAlias id = <resolved_id> alias = net_preferences_popup
	endif
endscript

script net_prefs_get_difficulty_items 
	RequireParams \{[
			controller
		]
		all}
	NetOptions :Pref_Get \{name = game_modes}
	NetPrefInterface :GetTags
	if (<checksum> = p2_battle)
		if (IsDrumController controller = <controller>)
			diff_height = ((5 * 42) + 40)
			items = [
				{
					text = qs("EASY")
					checksum = easy
					pic_texture = icon_difficulty_easy
				}
				{
					text = qs("MEDIUM")
					checksum = medium
					pic_texture = icon_difficulty_medium
				}
				{
					text = qs("HARD")
					checksum = hard
					pic_texture = icon_difficulty_hard
				}
				{
					text = qs("EXPERT")
					checksum = expert
					pic_texture = icon_difficulty_expert
				}
				{
					text = qs("EXPERT+")
					checksum = EXPERT_PLUS
					pic_texture = setlist_B_db_icon
				}
			]
		else
			diff_height = ((4 * 42) + 40)
			items = [
				{
					text = qs("EASY")
					checksum = easy
					pic_texture = icon_difficulty_easy
				}
				{
					text = qs("MEDIUM")
					checksum = medium
					pic_texture = icon_difficulty_medium
				}
				{
					text = qs("HARD")
					checksum = hard
					pic_texture = icon_difficulty_hard
				}
				{
					text = qs("EXPERT")
					checksum = expert
					pic_texture = icon_difficulty_expert
				}
			]
		endif
	else
		if (IsDrumController controller = <controller>)
			diff_height = ((6 * 42) + 40)
			items = [
				{
					text = qs("BEGINNER")
					checksum = easy_rhythm
					pic_texture = icon_difficulty_beginner
				}
				{
					text = qs("EASY")
					checksum = easy
					pic_texture = icon_difficulty_easy
				}
				{
					text = qs("MEDIUM")
					checksum = medium
					pic_texture = icon_difficulty_medium
				}
				{
					text = qs("HARD")
					checksum = hard
					pic_texture = icon_difficulty_hard
				}
				{
					text = qs("EXPERT")
					checksum = expert
					pic_texture = icon_difficulty_expert
				}
				{
					text = qs("EXPERT+")
					checksum = EXPERT_PLUS
					pic_texture = setlist_B_db_icon
				}
			]
		else
			diff_height = ((5 * 42) + 40)
			items = [
				{
					text = qs("BEGINNER")
					checksum = easy_rhythm
					pic_texture = icon_difficulty_beginner
				}
				{
					text = qs("EASY")
					checksum = easy
					pic_texture = icon_difficulty_easy
				}
				{
					text = qs("MEDIUM")
					checksum = medium
					pic_texture = icon_difficulty_medium
				}
				{
					text = qs("HARD")
					checksum = hard
					pic_texture = icon_difficulty_hard
				}
				{
					text = qs("EXPERT")
					checksum = expert
					pic_texture = icon_difficulty_expert
				}
			]
		endif
	endif
	return items = <items>
endscript

script get_functional_options_by_controller 
	RequireParams \{[
			device_num
		]
		all}
	lefty_flip_flag = 0
	scrolling_vocals_flag = 0
	star_power_clap_flag = 0
	star_power_tilt_flag = 0
	touch_strip_flag = 0
	player_num = 1
	index = 1
	begin
	GetPlayerInfo <index> controller
	if (<device_num> = <controller>)
		<player_num> = <index>
		break
	endif
	index = (<index> + 1)
	repeat 4
	GetPlayerInfo <player_num> lefty_flip
	lefty_flip_flag = <lefty_flip>
	GetPlayerInfo <player_num> vocals_highway_view
	if (<vocals_highway_view> = scrolling)
		scrolling_vocals_flag = 1
	elseif (<vocals_highway_view> = static)
		scrolling_vocals_flag = 0
	else
		ScriptAssert qs("\LUnknown vocals highway view of %a for controller %b (player %c)") a = <vocals_highway_view> b = <controller> c = <player>
	endif
	GetPlayerInfo <player_num> vocals_sp_clap
	star_power_clap_flag = <vocals_sp_clap>
	GetPlayerInfo <player_num> use_tilt_for_starpower
	star_power_tilt_flag = <use_tilt_for_starpower>
	GetPlayerInfo <player_num> enable_touch_strip
	touch_strip_flag = <enable_touch_strip>
	return lefty_flip_flag = <lefty_flip_flag> scrolling_vocals_flag = <scrolling_vocals_flag> star_power_clap_flag = <star_power_clap_flag> star_power_tilt_flag = <star_power_tilt_flag> touch_strip_flag = <touch_strip_flag>
endscript

script create_net_preferences_submenu \{selected_index = 0
		submenu_height = 250}
	if NOT GotParam \{submenu_type}
		return
	endif
	if NOT GotParam \{name}
		return
	endif
	LaunchEvent \{type = unfocus
		target = net_preferences_popup}
	Obj_GetID
	<ObjID> :SE_GetProps
	<z_priority> = (<z_priority> + 1)
	adjust_highlight_z z_pri = (<z_priority> + 10)
	GetScreenElementPosition \{id = NetPrefInterface
		absolute}
	if ScreenElementExists \{id = PrefsSubmenuInterface}
		DestroyScreenElement \{id = PrefsSubmenuInterface}
	endif
	CreateScreenElement {
		type = DescInterface
		parent = <ObjID>
		desc = 'online_lobby_submenu'
		id = PrefsSubmenuInterface
		z_priority = <z_priority>
		tags = {
			Menu_items = 0
			menu_index = 0
			scrollbar_id = net_pref_submenu_scrollbar
		}
	}
	PrefsSubmenuInterface :SE_SetProps title_text = <name>
	create_submenu_fade submenu_z = (<z_priority> + 10) fade_id = preferences_submenu_fade
	if PrefsSubmenuInterface :Desc_ResolveAlias \{name = alias_popup_vmenu
			param = submenu_vmenu}
		<submenu_vmenu> :SE_SetProps {
			event_handlers = [
				{pad_up generic_menu_up_or_down_sound params = {up}}
				{pad_up net_preferences_submenu_up}
				{pad_down generic_menu_up_or_down_sound params = {down}}
				{pad_down net_preferences_submenu_down}
			]
		}
		NetPrefInterface :SetTags submenu_id = <submenu_vmenu>
		SetScreenElementProps {
			id = <submenu_vmenu>
			event_handlers = [
				{pad_back generic_menu_pad_back_sound}
				{pad_back destroy_net_preferences_submenu}
			]
		}
		NetPrefInterface :GetTags
		<current_checksum> = 0
		switch (<submenu_type>)
			case character
			GetPlayerInfo <player_num> character_id
			<current_checksum> = <character_id>
			case difficulty
			<current_checksum> = ($default_difficulty [<device_num>])
			if (<current_checksum> = expert)
				GetPlayerInfo <player_num> double_kick_drum
				if (<double_kick_drum> = 1)
					<current_checksum> = EXPERT_PLUS
				endif
			endif
			if PrefsSubmenuInterface :Desc_ResolveAlias \{name = alias_online_lobby_scrollbar
					param = scrollbar_id}
				<scrollbar_id> :Die
			endif
			case lefty_flip
			GetPlayerInfo <player_num> lefty_flip
			<current_checksum> = off
			if (<lefty_flip> = 1)
				<current_checksum> = on
			endif
			case vocal_style
			GetPlayerInfo <player_num> vocals_highway_view
			<current_checksum> = <vocals_highway_view>
		endswitch
		<selected_index> = 0
		GetArraySize <items>
		if (<array_size> > 0)
			index = 0
			begin
			add_net_preferences_item {
				sub_menu_item
				pic = (<items> [<index>].pic_texture)
				item_width = <submenu_width>
				vmenu_id = <submenu_vmenu>
				text = (<items> [<index>].text)
				choose_script = <choose_script>
				choose_script_params = {
					checksum = (<items> [<index>].checksum)
					index = <index>
				}
			}
			if ((<items> [<index>].checksum) = <current_checksum>)
				<selected_index> = <index>
			endif
			<index> = (<index> + 1)
			repeat <array_size>
		endif
		if PrefsSubmenuInterface :Desc_ResolveAlias \{name = alias_online_lobby_scrollbar
				param = scrollbar_id}
			PrefsSubmenuInterface :SetTags scrollbar_id = <scrollbar_id>
		endif
		PrefsSubmenuInterface :GetTags
		if ScreenElementExists id = <scrollbar_id>
			scroll_increment = (185 / (<Menu_items> -1))
			<scrollbar_id> :SetTags scroll_increment = <scroll_increment>
			<scrollbar_id> :SE_SetProps scrollbar_thumb_pos = ((0.0, -5.0) + ((0.0, 1.0) * (<scroll_increment> * <selected_index>)))
		endif
		PrefsSubmenuInterface :SetTags menu_index = <selected_index>
		PrefsSubmenuInterface :Obj_SpawnScriptNow animate_submenu_transition params = {id = PrefsSubmenuInterface direction = in focus_index = <selected_index>}
	endif
endscript

script destroy_net_preferences_submenu 
	turn_off_highlight
	destroy_submenu_fade \{fade_id = preferences_submenu_fade}
	animate_submenu_transition \{id = PrefsSubmenuInterface
		direction = out}
	if ScreenElementExists \{id = PrefsSubmenuInterface}
		DestroyScreenElement \{id = PrefsSubmenuInterface}
	endif
	NetPrefInterface :GetTags
	NetPrefInterface :SetTags \{submenu_id = null}
	if ScreenElementExists \{id = NetPrefInterface}
		if NetPrefInterface :Desc_ResolveAlias \{name = alias_popup_vmenu}
			menu_id = <resolved_id>
			ResolveScreenElementId param = menu_item id = [
				{id = <menu_id>}
				{index = <menu_index>}
			]
			NetPrefInterface :SE_GetProps \{z_priority}
			adjust_highlight_z z_pri = (<z_priority> + 2)
			LaunchEvent type = focus target = <menu_id> data = {child_index = (<menu_index>)}
		endif
	endif
endscript

script net_preferences_submenu_up 
	if ScreenElementExists \{id = PrefsSubmenuInterface}
		PrefsSubmenuInterface :GetTags
		if (<menu_index> = 0)
			PrefsSubmenuInterface :SetTags menu_index = (<Menu_items> - 1)
			if ScreenElementExists id = <scrollbar_id>
				<scrollbar_id> :SE_SetProps scrollbar_thumb_pos = ((0.0, 185.0) + (0.0, -5.0))
			endif
		else
			PrefsSubmenuInterface :SetTags menu_index = (<menu_index> - 1)
			if ScreenElementExists id = <scrollbar_id>
				<scrollbar_id> :GetTags
				pos = ((0.0, -1.0) * <scroll_increment>)
				<scrollbar_id> :SE_SetProps scrollbar_thumb_pos = {<pos> relative}
			endif
		endif
	endif
endscript

script net_preferences_submenu_down 
	if ScreenElementExists \{id = PrefsSubmenuInterface}
		PrefsSubmenuInterface :GetTags
		if ((<menu_index> + 1) = <Menu_items>)
			PrefsSubmenuInterface :SetTags \{menu_index = 0}
			if ScreenElementExists id = <scrollbar_id>
				<scrollbar_id> :SE_SetProps scrollbar_thumb_pos = (0.0, -5.0)
			endif
		else
			PrefsSubmenuInterface :SetTags menu_index = (<menu_index> + 1)
			if ScreenElementExists id = <scrollbar_id>
				<scrollbar_id> :GetTags
				pos = ((0.0, 1.0) * (<scroll_increment>))
				<scrollbar_id> :SE_SetProps scrollbar_thumb_pos = {<pos> relative}
			endif
		endif
	endif
endscript

script net_preferences_up_or_down_action 
	if NOT GotParam \{action}
		return
	endif
	if NOT ScreenElementExists \{id = net_preferences_popup}
		return
	endif
	NetPrefInterface :GetTags
	if (<action> = up)
		generic_menu_up_or_down_sound \{up}
		if (<menu_index> = 0)
			NetPrefInterface :SetTags menu_index = (<Menu_items> - 1)
		else
			NetPrefInterface :SetTags menu_index = (<menu_index> - 1)
		endif
	elseif (<action> = down)
		generic_menu_up_or_down_sound \{down}
		if (<menu_index> = (<Menu_items> - 1))
			NetPrefInterface :SetTags \{menu_index = 0}
		else
			NetPrefInterface :SetTags menu_index = (<menu_index> + 1)
		endif
	endif
endscript

script net_preferences_item_change_focus 
	Obj_GetID
	<ObjID> :GetTags
	set_net_preferences_helper_text msg_checksum = <msg_checksum>
	ResolveScreenElementId id = [
		{id = <ObjID>}
		{local_id = text}
	]
	if GotParam \{focus}
		if ScreenElementExists \{id = current_menu_anchor}
			online_submenu_focus id = <resolved_id>
		endif
	elseif GotParam \{unfocus}
		turn_off_highlight
	endif
endscript

script online_submenu_focus 
	Obj_GetID
	GetTags
	if current_menu_anchor :Desc_ResolveAlias \{name = alias_highlight}
		AssignAlias id = <resolved_id> alias = highlight
		Wait \{2
			gameframe}
		if <ObjID> :Desc_ResolveAlias name = alias_submenu_text
			GetScreenElementChildren id = <resolved_id>
			GetScreenElementDims id = (<children> [0])
			scale = (((1.0, 0.0) * (((<width> - 30.0) / 256.0))) + (0.0, 1.5))
			GetScreenElementPosition id = (<children> [0]) summed
			highlight :SE_SetProps pos = {absolute (<screenelementpos> + (15.0, 15.0))} scale = <scale> rot_angle = -1.5
			highlight :SE_WaitProps
			turn_on_highlight
			GetScreenElementPosition id = (<children> [0]) summed
			highlight :SE_SetProps pos = {absolute (<screenelementpos> + (15.0, 25.0))} time = 0.05
			highlight :SE_WaitProps
			GetScreenElementPosition id = (<children> [0]) summed
			highlight :SE_SetProps pos = {absolute (<screenelementpos> + (15.0, 15.0))} scale = <scale> time = 0.05
			highlight :SE_WaitProps
		endif
	endif
endscript

script online_submenu_unfocus 
	turn_off_highlight
endscript

script add_net_preferences_item \{vmenu_id = net_preferences_vmenu
		z_priority = 6.2}
	if NOT GotParam \{text}
		text = qs("TEST")
	endif
	if NOT GotParam \{msg_checksum}
		msg_checksum = none
	endif
	CreateScreenElement {
		type = DescInterface
		parent = <vmenu_id>
		desc = 'online_submenu_item'
		autoSizeDims = true
		event_handlers = [
			{focus net_preferences_item_change_focus params = {focus}}
			{unfocus net_preferences_item_change_focus params = {unfocus}}
		]
	}
	submenu_item_id = <id>
	if GotParam \{pic}
		if (<pic> = setlist_B_db_icon)
			submenu_item_pic_scale = (1.9, 1.0)
		else
			submenu_item_pic_scale = (1.0, 1.0)
		endif
		<submenu_item_id> :SE_SetProps submenu_item_texture = <pic>
		<submenu_item_id> :SE_SetProps submenu_item_tex_scale = <submenu_item_pic_scale>
		<submenu_item_id> :SE_SetProps submenu_item_pic_alpha = 1.0
		<submenu_item_id> :SE_SetProps checkbox_alpha = 0.0
		SetScreenElementProps {
			id = <submenu_item_id>
			event_handlers = [
				{pad_choose ui_menu_select_sfx}
			]
		}
	else
		if GotParam \{checkbox_tick}
			if (<checkbox_tick> = 1)
				<submenu_item_id> :SE_SetProps check_alpha = 1.0
				<submenu_item_id> :SE_SetProps cross_alpha = 0.0
			else
				<submenu_item_id> :SE_SetProps check_alpha = 0.0
				<submenu_item_id> :SE_SetProps cross_alpha = 1.0
			endif
		endif
		<submenu_item_id> :SE_SetProps submenu_item_pic_alpha = 0.0
		<submenu_item_id> :SE_SetProps checkbox_alpha = 1.0
	endif
	if GotParam \{choose_script}
		SetScreenElementProps {
			id = <submenu_item_id>
			event_handlers = [
				{pad_choose <choose_script> params = <choose_script_params>}
			]
		}
	endif
	if NOT GotParam \{sub_menu_item}
		NetPrefInterface :GetTags
		NetPrefInterface :SetTags Menu_items = (<Menu_items> + 1)
	elseif ScreenElementExists \{id = PrefsSubmenuInterface}
		PrefsSubmenuInterface :GetTags
		PrefsSubmenuInterface :SetTags Menu_items = (<Menu_items> + 1)
	endif
	<submenu_item_id> :SE_SetProps submenu_item_text = <text>
	return id = <submenu_item_id>
endscript

script select_net_preferences_character 
	if NOT GotParam \{checksum}
		return
	endif
	NetPrefInterface :GetTags
	SetPlayerInfo <player_num> character_id = <checksum>
	GetPlayerInfo <player_num> is_local_client
	if (<is_local_client> = 1)
		GetPlayerInfo <player_num> controller
		if (<controller> < 4)
			get_savegame_from_controller controller = <controller>
			set_band_character_id_globaltag savegame = <savegame> controller = <controller> character_id = <checksum> player = <player_num>
			get_musician_profile_struct_by_id id = <checksum> savegame = <savegame>
			get_car_photo_icon profile_struct = <profile_struct> savegame = <savegame> character_id = <checksum>
			rocker_pref_item :SE_SetProps submenu_item_texture = <icon>
		endif
	endif
	ui_menu_select_sfx
	destroy_net_preferences_submenu
endscript

script select_net_preferences_difficulty 
	if NOT GotParam \{checksum}
		return
	endif
	NetPrefInterface :GetTags
	if ((<player_num> <= 4) && (<player_num> >= 1))
		if (<checksum> = EXPERT_PLUS)
			SetPlayerInfo <player_num> difficulty = expert
			SetPlayerInfo <player_num> double_kick_drum = 1
			SetArrayElement ArrayName = default_difficulty GlobalArray index = <device_num> newvalue = expert
		else
			if (IsDrumController controller = <device_num>)
				SetPlayerInfo <player_num> double_kick_drum = 0
			endif
			SetPlayerInfo <player_num> difficulty = <checksum>
			SetArrayElement ArrayName = default_difficulty GlobalArray index = <device_num> newvalue = <checksum>
		endif
		icon = icon_difficulty_expert
		switch (<checksum>)
			case easy_rhythm
			<icon> = icon_difficulty_beginner
			case easy
			<icon> = icon_difficulty_easy
			case medium
			<icon> = icon_difficulty_medium
			case hard
			<icon> = icon_difficulty_hard
			case expert
			<icon> = icon_difficulty_expert
			case EXPERT_PLUS
			<icon> = setlist_B_db_icon
		endswitch
		if (<icon> = setlist_B_db_icon)
			icon_scale = (1.9, 1.0)
		else
			icon_scale = (1.0, 1.0)
		endif
		difficulty_pref_item :SE_SetProps submenu_item_texture = <icon>
		difficulty_pref_item :SE_SetProps submenu_item_tex_scale = <icon_scale>
	endif
	ui_menu_select_sfx
	destroy_net_preferences_submenu
endscript

script select_net_preferences_lefty_flip 
	NetPrefInterface :GetTags \{player_num}
	GetPlayerInfo <player_num> lefty_flip
	if (<lefty_flip> = 1)
		value = 0
		SoundEvent \{event = checkbox_sfx}
	else
		value = 1
		SoundEvent \{event = CheckBox_Check_SFX}
	endif
	Obj_GetID
	tick_untick_checkbox value = <value> submenu_item_id = <ObjID>
	SetPlayerInfo <player_num> lefty_flip = <value>
	SetPlayerInfo <player_num> lefthanded_gems = <value>
	SetPlayerInfo <player_num> lefthanded_button_ups = <value>
	SetPlayerInfo <player_num> lefthanded_button_ups_flip_save = <value>
	SetPlayerInfo <player_num> lefthanded_gems_flip_save = <value>
	get_savegame_from_controller controller = <device_num>
	if isXenon
		SetGlobalTags savegame = <savegame> user_options params = {lefty_flip_save = <value>}
	elseif (<device_num> = $primary_controller)
		SetGlobalTags savegame = <savegame> user_options params = {lefty_flip_save = <value>}
	endif
	MonitorControllerStates
endscript

script select_net_preferences_vocal_style 
	NetPrefInterface :GetTags \{player_num}
	GetPlayerInfo <player_num> vocals_highway_view
	if (<vocals_highway_view> = scrolling)
		value = 0
		new_view = static
		SoundEvent \{event = checkbox_sfx}
	else
		value = 1
		new_view = scrolling
		SoundEvent \{event = CheckBox_Check_SFX}
	endif
	Obj_GetID
	tick_untick_checkbox value = <value> submenu_item_id = <ObjID>
	SetPlayerInfo <player_num> vocals_highway_view = <new_view>
	get_savegame_from_controller controller = <device_num>
	if isXenon
		SetGlobalTags savegame = <savegame> user_options params = {vocals_highway_view_save = <new_view>}
	elseif (<device_num> = $primary_controller)
		SetGlobalTags savegame = <savegame> user_options params = {vocals_highway_view_save = <new_view>}
	endif
endscript

script select_net_preferences_star_power_clap 
	NetPrefInterface :GetTags \{player_num}
	GetPlayerInfo <player_num> vocals_sp_clap
	if (<vocals_sp_clap> = 1)
		value = 0
		SoundEvent \{event = checkbox_sfx}
	else
		value = 1
		SoundEvent \{event = CheckBox_Check_SFX}
	endif
	Obj_GetID
	tick_untick_checkbox value = <value> submenu_item_id = <ObjID>
	SetPlayerInfo <player_num> vocals_sp_clap = <value>
	get_savegame_from_controller controller = <device_num>
	if isXenon
		SetGlobalTags savegame = <savegame> user_options params = {vocals_sp_clap_save = <value>}
	elseif (<device_num> = $primary_controller)
		SetGlobalTags savegame = <savegame> user_options params = {vocals_sp_clap_save = <value>}
	endif
endscript

script select_net_preferences_star_power_tilt 
	NetPrefInterface :GetTags \{player_num}
	GetPlayerInfo <player_num> use_tilt_for_starpower
	if (<use_tilt_for_starpower> = 1)
		value = 0
		SoundEvent \{event = checkbox_sfx}
	else
		value = 1
		SoundEvent \{event = CheckBox_Check_SFX}
	endif
	Obj_GetID
	tick_untick_checkbox value = <value> submenu_item_id = <ObjID>
	SetPlayerInfo <player_num> use_tilt_for_starpower = <value>
	get_savegame_from_controller controller = <device_num>
	if isXenon
		SetGlobalTags savegame = <savegame> user_options params = {use_tilt_for_starpower_save = <value>}
	elseif (<device_num> = $primary_controller)
		SetGlobalTags savegame = <savegame> user_options params = {use_tilt_for_starpower_save = <value>}
	endif
endscript

script select_net_preferences_touch_strip 
	NetPrefInterface :GetTags \{player_num}
	GetPlayerInfo <player_num> enable_touch_strip
	if (<enable_touch_strip> = 1)
		value = 0
		SoundEvent \{event = checkbox_sfx}
	else
		value = 1
		SoundEvent \{event = CheckBox_Check_SFX}
	endif
	Obj_GetID
	tick_untick_checkbox value = <value> submenu_item_id = <ObjID>
	SetPlayerInfo <player_num> enable_touch_strip = <value>
	get_savegame_from_controller controller = <device_num>
	if isXenon
		SetGlobalTags savegame = <savegame> user_options params = {enable_touch_strip_save = <value>}
	elseif (<device_num> = $primary_controller)
		SetGlobalTags savegame = <savegame> user_options params = {enable_touch_strip_save = <value>}
	endif
endscript

script tick_untick_checkbox 
	RequireParams \{[
			value
			submenu_item_id
		]
		all}
	if ScreenElementExists id = <submenu_item_id>
		if (<value> = 1)
			<submenu_item_id> :SE_SetProps check_alpha = 1.0
			<submenu_item_id> :SE_SetProps cross_alpha = 0.0
		else
			<submenu_item_id> :SE_SetProps check_alpha = 0.0
			<submenu_item_id> :SE_SetProps cross_alpha = 1.0
		endif
	endif
endscript
