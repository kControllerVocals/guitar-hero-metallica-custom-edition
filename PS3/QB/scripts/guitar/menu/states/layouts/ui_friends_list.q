DEBUG_FRIENDS_LIST = 0
invite_sent_display_position = (640.0, 360.0)

script ui_create_friends_list 
	RequireParams \{[
			exit_script
		]
		all}
	<my_parent> = root_window
	if ScreenElementExists \{id = OnlineLobbyInterface}
		<my_parent> = OnlineLobbyInterface
	endif
	Obj_GetID
	LaunchEvent \{type = unfocus
		target = current_menu}
	<ObjID> :SE_GetProps
	friends_list_z = (<z_priority> + 1)
	GetScreenElementPosition id = <ObjID> absolute
	CreateScreenElement {
		type = DescInterface
		parent = <my_parent>
		desc = 'online_lobby_submenu'
		pos = <screenelementpos>
		id = FriendsListInterface
		exclusive_device = <device_num>
		z_priority = <friends_list_z>
		tags = {
			menu_index = 0
			Menu_items = 0
			device_num = <device_num>
			exit_script = <exit_script>
			scrollbar_id = null
		}
	}
	FriendsListInterface :SE_SetProps \{title_text = qs("FRIENDS")}
	adjust_highlight_z z_pri = (<friends_list_z> + 1)
	if FriendsListInterface :Desc_ResolveAlias \{name = alias_online_lobby_scrollbar
			param = scrollbar_id}
		FriendsListInterface :SetTags scrollbar_id = <scrollbar_id>
	endif
	create_submenu_fade submenu_z = <friends_list_z> fade_id = friends_list_z
	create_friendslist_menu device_num = <device_num>
	clean_up_user_control_helpers
	menu_finish
endscript

script animate_submenu_transition 
	RequireParams \{[
			id
			direction
		]
		all}
	if ScreenElementExists id = <id>
		if (<direction> = out)
			<id> :SE_SetProps pos = {(0.0, -1000.0) relative} rot_angle = (360 * 8) time = 0.15 Anim = gentle
			<id> :SE_WaitProps
		elseif (<direction> = in)
			RequireParams \{[
					focus_index
				]
				all}
			<id> :SE_GetProps
			final_scale = <scale>
			final_rot = <rot_angle>
			GetRandomValue \{name = rot
				Integer
				a = -60
				b = 60}
			<id> :SE_SetProps submenu_sub_scale = (<scale> * (2)) rot_angle = <rot>
			Wait \{1
				gameframe}
			<id> :SE_SetProps submenu_sub_scale = <final_scale> rot_angle = <final_rot> time = 0.05 Anim = gentle
			<id> :SE_WaitProps
			if <id> :Desc_ResolveAlias name = alias_popup_vmenu
				LaunchEvent type = focus target = <resolved_id> data = {child_index = (<focus_index>)}
			endif
		endif
	endif
endscript

script ui_destroy_friends_list 
	turn_off_highlight
	destroy_submenu_fade \{fade_id = friends_list_z}
	if ScreenElementExists \{id = FriendsListInterface}
		generic_menu_pad_back_sound
		NetSessionFunc \{func = friends_uninit}
		animate_submenu_transition \{id = FriendsListInterface
			direction = out}
		FriendsListInterface :GetTags
		DestroyScreenElement \{id = FriendsListInterface}
		if GotParam \{no_focus}
			spawnscriptnow <exit_script> params = {no_focus}
		else
			spawnscriptnow <exit_script>
		endif
	endif
	adjust_highlight_z \{z_pri = 2}
endscript

script set_friends_helper_text 
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
		if ScreenElementExists \{id = FriendsListInterface}
			FriendsListInterface :SE_SetProps info_text = ($<plat_helper_strings>.<appended_id>)
		endif
	elseif StructureContains Structure = ($net_helper_text_strings) <appended_id>
		if ScreenElementExists \{id = FriendsListInterface}
			FriendsListInterface :SE_SetProps info_text = ($net_helper_text_strings.<appended_id>)
		endif
	endif
endscript

script create_friendslist_menu 
	if FriendsListInterface :Desc_ResolveAlias \{name = alias_popup_vmenu}
		<resolved_id> :SE_SetProps {
			event_handlers = [
				{pad_up friendslist_up_or_down_action params = {action = up}}
				{pad_down friendslist_up_or_down_action params = {action = down}}
			]
		}
		if IsPs3
			add_friendslist_item {
				vmenu_id = <resolved_id>
				text = qs("Invite as Guitar")
				choose_script = invite_to_game
				choose_script_params = {
					net_id = <net_id>
					name = <name>
					instrument = guitar
				}
			}
			add_friendslist_item {
				vmenu_id = <resolved_id>
				text = qs("Invite as Drums")
				choose_script = invite_to_game
				choose_script_params = {
					net_id = <net_id>
					name = <name>
					instrument = drum
				}
			}
			add_friendslist_item {
				vmenu_id = <resolved_id>
				text = qs("Invite as Mic")
				choose_script = invite_to_game
				choose_script_params = {
					net_id = <net_id>
					name = <name>
					instrument = mic
				}
			}
			if FriendsListInterface :Desc_ResolveAlias \{name = alias_online_lobby_scrollbar
					param = scrollbar_id}
				<scrollbar_id> :Die
			endif
			FriendsListInterface :SetTags \{scrollbar_id = null}
			FriendsListInterface :Obj_SpawnScriptNow \{animate_submenu_transition
				params = {
					id = FriendsListInterface
					direction = in
					focus_index = 0
				}}
		else
			NetSessionFunc \{func = friends_init}
			NetSessionFunc obj = friends func = begin_retrieve_friends_list params = {callback = friendslist_callback device_num = <device_num> callback_params = {none}}
		endif
		AssignAlias id = <resolved_id> alias = friends_list_popup
	endif
endscript

script friendslist_up_or_down_action 
	if NOT GotParam \{action}
		return
	endif
	if NOT ScreenElementExists \{id = friends_list_popup}
		return
	endif
	FriendsListInterface :GetTags
	if (<action> = up)
		generic_menu_up_or_down_sound \{up}
		if (<menu_index> = 0)
			FriendsListInterface :SetTags menu_index = (<Menu_items> - 1)
			if ScreenElementExists id = <scrollbar_id>
				<scrollbar_id> :SE_SetProps scrollbar_thumb_pos = (0.0, 175.0)
			endif
		else
			FriendsListInterface :SetTags menu_index = (<menu_index> - 1)
			if ScreenElementExists id = <scrollbar_id>
				<scrollbar_id> :GetTags
				pos = ((0.0, -1.0) * <scroll_increment>)
				<scrollbar_id> :SE_SetProps scrollbar_thumb_pos = {<pos> relative}
			endif
		endif
	elseif (<action> = down)
		generic_menu_up_or_down_sound \{down}
		if (<menu_index> = (<Menu_items> - 1))
			FriendsListInterface :SetTags \{menu_index = 0}
			if ScreenElementExists id = <scrollbar_id>
				<scrollbar_id> :SE_SetProps scrollbar_thumb_pos = (0.0, 0.0)
			endif
		else
			FriendsListInterface :SetTags menu_index = (<menu_index> + 1)
			if ScreenElementExists id = <scrollbar_id>
				<scrollbar_id> :GetTags
				pos = ((0.0, 1.0) * (<scroll_increment>))
				<scrollbar_id> :SE_SetProps scrollbar_thumb_pos = {<pos> relative}
			endif
		endif
	endif
endscript

script friendslist_callback 
	printf \{qs("\L----FriendsList Callback")}
	if GotParam \{friendList}
		if ScreenElementExists \{id = FriendsListInterface}
			if FriendsListInterface :Desc_ResolveAlias \{name = alias_popup_vmenu}
				GetArraySize <friendList>
				if (<array_size> > 0)
					i = 0
					begin
					if isXenon
						if (0 != <friendList> [<i>].LocalPlayer)
							CANT_INVITE = 1
						elseif (0 != <friendList> [<i>].AlreadyInGame)
							CANT_INVITE = 1
						else
							CANT_INVITE = 0
						endif
						add_friendslist_item {
							vmenu_id = <resolved_id>
							text = (<friendList> [<i>].name)
							status = (<friendList> [<i>].friendstate)
							choose_script = create_friendslist_submenu
							choose_script_params = {
								net_id = (<friendList> [<i>].id)
								name = (<friendList> [<i>].name)
								CANT_INVITE = <CANT_INVITE>
							}
						}
					else
						add_friendslist_item {
							vmenu_id = <resolved_id>
							text = (<friendList> [<i>].name)
							choose_script = create_friendslist_submenu
							choose_script_params = {
								net_id = (<friendList> [<i>].id)
								name = (<friendList> [<i>].name)
							}
						}
					endif
					<i> = (<i> + 1)
					repeat <array_size>
					if ($DEBUG_FRIENDS_LIST = 1)
						begin
						add_friendslist_item {
							vmenu_id = <resolved_id>
							text = qs("WWWWWWWWWWWWWWWW")
							choose_script = create_friendslist_submenu
							choose_script_params = {
								net_id = 0
								name = qs("WWWWWWWWWWWWWWWW")
							}
						}
						repeat 92
					endif
					FriendsListInterface :Obj_SpawnScriptNow \{animate_submenu_transition
						params = {
							id = FriendsListInterface
							direction = in
							focus_index = 0
						}}
				else
					add_friendslist_item {
						vmenu_id = <resolved_id>
						text = qs("Empty")
					}
					FriendsListInterface :Obj_SpawnScriptNow \{animate_submenu_transition
						params = {
							id = FriendsListInterface
							direction = in
							focus_index = 0
						}}
				endif
				FriendsListInterface :GetTags
				if (<Menu_items> > 1)
					scroll_increment = (175 / (<Menu_items> -1))
					<scrollbar_id> :SetTags scroll_increment = <scroll_increment>
					<scrollbar_id> :SE_SetProps scrollbar_thumb_pos = (0.0, 0.0)
				else
					DestroyScreenElement id = <scrollbar_id>
				endif
			endif
		endif
	endif
endscript

script friendslist_item_change_focus 
	Obj_GetID
	if GotParam \{focus}
		if current_menu_anchor :Desc_ResolveAlias \{name = alias_highlight}
			AssignAlias id = <resolved_id> alias = highlight
			Wait \{2
				gameframe}
			GetScreenElementDims id = (<ObjID>)
			scale = (((1.0, 0.0) * (((<width> - 60.0) / 256.0))) + (0.0, 1.5))
			turn_on_highlight
			GetScreenElementPosition id = (<ObjID>) summed
			highlight :SE_SetProps pos = {absolute (<screenelementpos> + (25.0, 0.0))} scale = <scale> rot_angle = -1.5
			highlight :SE_WaitProps
			GetScreenElementPosition id = (<ObjID>) summed
			highlight :SE_SetProps pos = {absolute (<screenelementpos> + (25.0, 10.0))} time = 0.05
			highlight :SE_WaitProps
			GetScreenElementPosition id = (<ObjID>) summed
			highlight :SE_SetProps pos = {absolute (<screenelementpos> + (25.0, 0.0))} scale = <scale> time = 0.05
			highlight :SE_WaitProps
		endif
	elseif GotParam \{unfocus}
		turn_off_highlight
	endif
endscript

script add_friendslist_item \{vmenu_id = friendslist_vmenu
		z_priority = 8.2}
	if NOT GotParam \{vmenu_id}
		return
	endif
	if NOT GotParam \{text}
		text = qs("TEST")
	endif
	CreateScreenElement {
		type = ContainerElement
		parent = <vmenu_id>
		pos = (0.0, 0.0)
		dims = (385.0, 42.0)
		event_handlers = [
			{focus friendslist_item_change_focus params = {focus}}
			{unfocus friendslist_item_change_focus params = {unfocus}}
		]
	}
	container_id = <id>
	event_handlers = [
		{pad_back ui_destroy_friends_list}
	]
	if GotParam \{choose_script}
		AddArrayElement array = <event_handlers> element = {pad_choose generic_menu_pad_choose_sound}
		<event_handlers> = <array>
		AddArrayElement array = <event_handlers> element = {pad_choose <choose_script> params = <choose_script_params>}
		<event_handlers> = <array>
	endif
	SetScreenElementProps {
		id = <container_id>
		event_handlers = <event_handlers>
	}
	if GotParam \{sub_menu_item}
		text_width = 265
		text_adjust = 15
	else
		FriendsListInterface :GetTags
		FriendsListInterface :SetTags Menu_items = (<Menu_items> + 1)
		width = 385
		text_width = 275
		text_adjust = 0
	endif
	CreateScreenElement {
		type = TextBlockElement
		parent = <container_id>
		local_id = text
		font = fontgrid_text_a8
		rgba = [0 0 0 255]
		pos = ((0.0, 0.0) + (1.0, 0.0) * <text_adjust>)
		dims = ((0.0, 42.0) + (1.0, 0.0) * <text_width>)
		alpha = 1.0
		text = <text>
		just = [left top]
		z_priority = (<z_priority> + 0.5)
		fit_width = `scale each line if larger`
		fit_height = `scale down if larger`
		scale_mode = `per axis`
		internal_just = [left center]
	}
	if GotParam \{status}
		switch (<status>)
			case online
			<status_texture> = friendslist_online
			case offline
			<status_texture> = friendslist_offline
			case away
			<status_texture> = friendslist_away
			case busy
			<status_texture> = friendslist_busy
		endswitch
		CreateScreenElement {
			type = SpriteElement
			parent = <container_id>
			texture = <status_texture>
			pos = ((32.0, 5.0) + (1.0, 0.0) * <text_width>)
			dims = (32.0, 32.0)
			just = [center top]
			z_priority = (<z_priority> + 1)
		}
	endif
	return id = <container_id>
endscript

script create_friendslist_submenu 
	RequireParams \{[
			net_id
			name
		]
		all}
	LaunchEvent \{type = unfocus
		target = friends_list_popup}
	Obj_GetID
	<ObjID> :SE_GetProps
	<z_priority> = (<z_priority> + 5)
	adjust_highlight_z z_pri = (<z_priority> + 6)
	GetScreenElementPosition id = <ObjID> absolute
	if ((<screenelementpos>.(0.0, 1.0)) > 320)
		x = (<screenelementpos>.(1.0, 0.0))
		<screenelementpos> = (((1.0, 0.0) * <x>) + ((0.0, 1.0) * 320))
	endif
	CreateScreenElement {
		type = DescInterface
		parent = <ObjID>
		desc = 'online_lobby_submenu'
		id = FriendsSubmenuInterface
		pos = {<screenelementpos> absolute}
		z_priority = <z_priority>
		tags = {
			Menu_items = 0
			menu_index = 0
			scrollbar_id = net_pref_submenu_scrollbar
		}
	}
	FriendsSubmenuInterface :SE_SetProps title_text = <name>
	create_submenu_fade submenu_z = <z_priority> fade_id = friends_list_submenu_z
	if FriendsSubmenuInterface :Desc_ResolveAlias \{name = alias_popup_vmenu
			param = subvmenu_id}
		SetScreenElementProps {
			id = <subvmenu_id>
			event_handlers = [
				{pad_back generic_menu_pad_back_sound}
				{pad_back destroy_friendslist_submenu}
				{pad_up generic_menu_up_or_down_sound params = {up}}
				{pad_down generic_menu_up_or_down_sound params = {down}}
			]
		}
		if FriendsSubmenuInterface :Desc_ResolveAlias \{name = alias_online_lobby_scrollbar
				param = scrollbar_id}
			<scrollbar_id> :Die
		endif
		if isXenon
			add_friendslist_item {
				sub_menu_item
				vmenu_id = <subvmenu_id>
				text = qs("Gamer card")
				z_priority = (<z_priority> + 2)
				choose_script = menu_show_gamercard_from_netid
				choose_script_params = {
					net_id = <net_id>
				}
			}
		endif
		DONT_SHOW_INVITE_OPTIONS = 0
		if GotParam \{CANT_INVITE}
			if (1 = <CANT_INVITE>)
				<DONT_SHOW_INVITE_OPTIONS> = 1
			endif
		endif
		if (0 = <DONT_SHOW_INVITE_OPTIONS>)
			add_friendslist_item {
				sub_menu_item
				vmenu_id = <subvmenu_id>
				text = qs("Invite as Guitar")
				z_priority = (<z_priority> + 2)
				choose_script = invite_to_game
				choose_script_params = {
					net_id = <net_id>
					name = <name>
					instrument = guitar
				}
			}
			add_friendslist_item {
				sub_menu_item
				vmenu_id = <subvmenu_id>
				text = qs("Invite as Drums")
				z_priority = (<z_priority> + 2)
				choose_script = invite_to_game
				choose_script_params = {
					net_id = <net_id>
					name = <name>
					instrument = drum
				}
			}
			add_friendslist_item {
				sub_menu_item
				vmenu_id = <subvmenu_id>
				text = qs("Invite as Mic")
				z_priority = (<z_priority> + 2)
				choose_script = invite_to_game
				choose_script_params = {
					net_id = <net_id>
					name = <name>
					instrument = mic
				}
			}
		endif
		FriendsSubmenuInterface :Obj_SpawnScriptNow \{animate_submenu_transition
			params = {
				id = FriendsSubmenuInterface
				direction = in
				focus_index = 0
			}}
	endif
endscript

script destroy_friendslist_submenu 
	turn_off_highlight
	destroy_submenu_fade \{fade_id = friends_list_submenu_z}
	animate_submenu_transition \{id = FriendsSubmenuInterface
		direction = out}
	if ScreenElementExists \{id = FriendsSubmenuInterface}
		DestroyScreenElement \{id = FriendsSubmenuInterface}
	endif
	FriendsListInterface :GetTags
	if FriendsListInterface :Desc_ResolveAlias \{name = alias_popup_vmenu}
		menu_id = <resolved_id>
		ResolveScreenElementId id = [
			{id = <menu_id>}
			{index = <menu_index>}
		]
		FriendsListInterface :SE_GetProps \{z_priority}
		adjust_highlight_z z_pri = (<z_priority> + 1)
		LaunchEvent type = focus target = <menu_id> data = {child_index = (<menu_index>)}
	endif
endscript

script invite_to_game 
	RequireParams \{[
			instrument
		]
		all}
	invite_title = qs("GHM Invite")
	base_msg = qs("Join me in Guitar Hero Metallica with your ")
	switch (<instrument>)
		case guitar
		FormatText TextName = invite_msg qs("%s %i") s = <base_msg> i = qs("Guitar.")
		case drum
		FormatText TextName = invite_msg qs("%s %i") s = <base_msg> i = qs("Drums.")
		case mic
		FormatText TextName = invite_msg qs("%s %i") s = <base_msg> i = qs("Mic.")
	endswitch
	userList = [
		{
			name = <name>
			id = <net_id>
		}
	]
	NetSessionFunc func = CreateCustomInvite params = {
		userList = <userList>
		game_msg = <invite_msg>
		title = <invite_title>
		game_specific = <instrument>
		device_num = <device_num>
	}
	if isXenon
		GameMode_GetType
		if (<type> = career)
			if ScreenElementExists \{id = MyInterfaceElement}
				MyInterfaceElement :Obj_SpawnScriptNow create_invite_sent_dialog params = {menu_index = <menu_index>}
			endif
		else
			my_parent = FriendsListInterface
			if ScreenElementExists \{id = OnlineLobbyInterface}
				<my_parent> = OnlineLobbyInterface
			endif
			<my_parent> :Obj_SpawnScriptNow create_invite_sent_dialog
			destroy_friendslist_submenu
		endif
	else
		ui_destroy_friends_list
	endif
endscript

script create_invite_sent_dialog 
	GameMode_GetType
	if (<type> = career)
		GetScreenElementZPriority \{id = MyInterfaceElement}
	else
		GetScreenElementZPriority \{id = FriendsListInterface}
	endif
	begin
	if NOT (ScreenElementExists id = invite_sent_container)
		break
	endif
	Wait \{1
		gameframe}
	repeat
	if (<type> = career)
		my_parent = MyInterfaceElement
		switch <menu_index>
			case 0
			change \{invite_sent_display_position = (250.0, 290.0)}
			case 1
			change \{invite_sent_display_position = (510.0, 290.0)}
			case 2
			change \{invite_sent_display_position = (770.0, 290.0)}
			case 3
			change \{invite_sent_display_position = (1030.0, 290.0)}
		endswitch
		scale = 0.7
	else
		my_parent = FriendsListInterface
		if ScreenElementExists \{id = OnlineLobbyInterface}
			<my_parent> = OnlineLobbyInterface
		endif
		scale = 1.0
	endif
	CreateScreenElement {
		type = ContainerElement
		id = invite_sent_container
		parent = <my_parent>
		pos = $invite_sent_display_position
		alpha = 0.0
		z_priority = (<z_priority> + 10)
		just = [center , center]
		tags = {debug_me}
	}
	CreateScreenElement {
		parent = invite_sent_container
		id = InviteSentInterface
		type = DescInterface
		desc = 'container_gamer_invite'
		pos = (0.0, 0.0)
		dims = (100.0, 100.0)
		scale = <scale>
		just = [center , center]
	}
	invite_sent_container :SE_SetProps \{alpha = 1.0
		time = 1.0}
	invite_sent_container :SE_WaitProps
	Wait \{1.0
		second}
	invite_sent_container :SE_SetProps \{alpha = 0.0
		time = 1.0}
	invite_sent_container :SE_WaitProps
	if ScreenElementExists \{id = invite_sent_container}
		DestroyScreenElement \{id = invite_sent_container}
	endif
	change \{invite_sent_display_position = (640.0, 360.0)}
endscript
