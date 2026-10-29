
script ui_init_guitarhero_com 
	NetSessionFunc \{func = stats_uninit}
	NetSessionFunc \{func = stats_init}
endscript

script ui_create_guitarhero_com 
	NetSessionFunc \{func = get_agora_token}
	FormatText TextName = passcode_text qs("\L%t") t = <token>
	CreateScreenElement {
		parent = root_window
		id = current_menu
		type = DescInterface
		desc = 'community'
		exclusive_device = ($primary_controller)
		event_handlers = [
			{pad_back generic_event_back}
		]
		passcode_text = <passcode_text>
	}
	clean_up_user_control_helpers
	add_user_control_helper \{text = qs("BACK")
		button = red
		z = 100000}
	current_menu :Obj_SpawnScriptNow \{ui_community_screen_anim}
	current_menu :Obj_SpawnScriptNow \{ui_widget_underline_anim}
endscript

script ui_destroy_guitarhero_com 
	clean_up_user_control_helpers
	DestroyScreenElement \{id = current_menu}
	KillSpawnedScript \{name = ui_community_screen_anim}
	KillSpawnedScript \{name = ui_widget_underline_anim}
endscript

script ui_community_screen_anim 
	SE_GetProps \{community_skull_pos}
	<org_pos> = <community_skull_pos>
	<scale> = Random (@ 1.5 @ 1 @ 1.3 @ 1.2 @ 1.4 )
	a = Random (@ 0.03 @ 0.5 @ 1 @ 1.23 @ 0.8 @ 1.6 )
	b = Random (@ 13 @ 16 @ 12 @ 17 @ 11 )
	begin
	Wait \{0.0
		seconds}
	SE_SetProps community_skull_scale = <scale>
	SE_WaitProps
	SE_SetProps community_skull_pos = (<org_pos> + ((1.0, 1.0) * <b>))
	SE_WaitProps
	ui_fx_set_blur amount = <a> time = 0.0
	SE_WaitProps
	Wait \{0.08
		seconds}
	SE_SetProps community_skull_scale = <scale>
	SE_WaitProps
	SE_SetProps community_skull_pos = (<org_pos> + ((1.0, 1.0) * <b>))
	SE_WaitProps
	ui_fx_set_blur amount = <a> time = 0.4
	SE_WaitProps
	Wait \{0.08
		seconds}
	SE_SetProps \{community_skull_scale = 1.0}
	SE_WaitProps
	SE_SetProps community_skull_pos = <org_pos>
	SE_WaitProps
	ui_fx_set_blur \{amount = 0.0
		time = 0.2}
	r = Random (@ 9 @ 7 @ 8 @ 6 @ 10 )
	Wait <r> seconds
	repeat
endscript

script ui_widget_underline_anim 
	SE_GetProps \{widget_underline_pos}
	<org_pos> = <widget_underline_pos>
	c = Random (@ 2 @ 3 @ 1.5 @ 1 @ 2.5 )
	<scale> = Random (@ 1.002 @ 1 @ 1.005 @ 1.01 @ 1.0074999 )
	begin
	Wait \{0.0
		seconds}
	SE_SetProps widget_underline_pos = (<org_pos> + (1.0, 1.0) * <c>)
	SE_WaitProps
	SE_SetProps widget_underline_scale = <scale>
	SE_WaitProps
	Wait \{0.08
		seconds}
	SE_SetProps widget_underline_pos = <org_pos>
	SE_WaitProps
	SE_SetProps \{widget_underline_scale = 1.0}
	SE_WaitProps
	Wait \{0.08
		seconds}
	repeat
endscript
