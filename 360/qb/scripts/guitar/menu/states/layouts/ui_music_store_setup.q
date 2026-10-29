
script ui_init_music_store_setup 
	change \{music_store_state_new = 1}
	change \{music_store_attempted_purchase = 0}
endscript

script ui_deinit_music_store_setup 
	KillSpawnedScript \{name = ui_create_music_store_scan_marketplace_spawned}
	KillSpawnedScript \{name = music_store_wipe_in_options}
	music_store_signin_check_stop_checking
	music_store_enum_heartbeat_stop
	MarketplaceFunc \{func = deinit}
	music_store_deinit
endscript

script ui_create_music_store_setup 
	printf \{'ui_create_music_store_setup'}
	spawnscriptnow \{ui_create_music_store_setup_spawned}
endscript

script ui_create_music_store_setup_spawned 
	change \{music_store_entry_cancelled = 0}
	if ($music_store_state_new = 1)
		change \{music_store_state_new = 0}
	else
		Wait \{3
			gameframes}
		if ($music_store_attempted_purchase = 1)
			change \{music_store_attempted_purchase = 0}
			get_savegame_from_controller controller = ($primary_controller)
			ui_event_wait event = menu_replace data = {
				state = uistate_boot_download_scan savegame = <savegame> controller = ($primary_controller)
				event_params = {event = menu_back data = {state = UIstate_downloads}}
			}
		else
			generic_event_back \{nosound}
		endif
		return
	endif
	if NOT music_store_check_signin_state
		music_store_setup_failed fail_text = <fail_text>
		return
	endif
	music_store_init
	if NOT music_store_check_signin_state
		music_store_setup_failed fail_text = <fail_text>
		return
	endif
	if isXenon
		if NOT NetSessionFunc func = CanPurchaseContent params = {controller_index = ($primary_controller)}
			music_store_setup_failed \{fail_text = qs("Family Settings have blocked this profile from downloading premium content. To change your Family Settings, visit the Xbox Dashboard, go to System, and select Family Settings.")}
			return
		endif
	endif
	spawnscriptnow \{Menu_Music_Off}
	spawnscriptnow \{BG_Crowd_Front_End_Silence
		params = {
			immediate = 1
		}}
	create_popup_warning_menu {
		title = qs("Please Wait")
		textblock = {
			text = qs("Downloading list of store content...\n")
			dims = (800.0, 400.0)
			scale = 0.55
		}
		player_device = ($primary_controller)
		music_store_dialog_hack
		back_button_script = music_store_cancel_entry
		menu_pos = (640.0, 520.0)
	}
	popup_warning_container :obj_spawnscript \{jam_recording_animate_spinning_record}
	add_user_control_helper \{text = qs("CANCEL")
		button = red
		z = 100000}
	LaunchEvent type = focus target = <menu_id>
	GetStartTime
	change \{music_store_entry_step = manifest}
	if NOT music_store_wait_for_manifest
		music_store_setup_failed \{destroymenu
			ErrorCode = 1
			fail_text = qs("Failed downloading list of store content. Please wait a few moments and try again.")}
		return
	endif
	change \{music_store_entry_step = songlist}
	music_store_update_loading_text \{number = 1}
	if NOT music_store_download_songlist
		music_store_setup_failed \{destroymenu
			ErrorCode = 2
			fail_text = qs("Failed downloading list of store content. Please wait a few moments and try again.")}
		return
	endif
	if NOT GlobalExists \{name = marketplace_init_settings}
		music_store_setup_failed \{destroymenu
			ErrorCode = 3
			fail_text = qs("Failed downloading list of store content. Please wait a few moments and try again.")}
		return
	endif
	music_store_update_loading_text \{number = 2}
	if ScriptExists \{marketplace_additional_region_check}
		if NOT marketplace_additional_region_check
			if NOT GotParam \{region_fail_text}
				region_fail_text = qs("This game region is not allowed to use the Music Store.")
			endif
			if NOT CD
				if IsPs3
					GetTerritory
					GetLocale
					FormatText TextName = append qs("\L\n\nTerritory=%t Locale=%l (Dev builds only)") t = <territory> l = <locale> DontAssertForChecksums
					region_fail_text = (<region_fail_text> + <append>)
				endif
			endif
			music_store_setup_failed destroymenu fail_text = <region_fail_text>
			return
		endif
	else
		stars
		printf \{'marketplace_additional_region_check not found'}
		stars
	endif
	PushMemProfile \{'MarketplaceInit'}
	if NOT MarketplaceFunc func = init userid = <valid_user> ($marketplace_init_settings)
		PopMemProfile
		if GotParam \{invalid_region}
			music_store_setup_failed \{destroymenu
				fail_text = qs("This game region is not allowed to use the Music Store.")}
		else
			music_store_setup_failed \{destroymenu
				ErrorCode = 4
				fail_text = qs("Failed downloading list of store content. Please wait a few moments and try again.")}
		endif
		return
	endif
	PopMemProfile
	change \{music_store_entry_step = enum}
	if NOT music_store_enumerate_store userid = <valid_user>
		fail_text = qs("Failed downloading list of store content. Please wait a few moments and try again.")
		if GotParam \{enum_error}
			if (<enum_error> = invalid_account)
				fail_text = qs("This PlayStation®Network account does not have sufficent privileges to use the Music Store")
				if NOT CD
					fail_text = (<fail_text> + qs("\L\n\nAsk to have your PSN email address added to the TitleDev list (this last sentence won't appear on final)"))
				endif
			endif
		endif
		music_store_setup_failed destroymenu ErrorCode = 5 fail_text = <fail_text> enum_error = <enum_error>
		return
	endif
	music_store_update_loading_text \{number = 3}
	change \{music_store_entry_step = none}
	Wait \{6
		gameframes}
	begin
	if ($music_store_entry_cancelled = 1)
		music_store_setup_failed \{destroymenu}
		return
	endif
	GetElapsedTime StartTime = <StartTime>
	if (<ElapsedTime> > 2000.0)
		break
	else
		Wait \{1
			gameframe}
	endif
	repeat
	destroy_popup_warning_menu
	music_store_signin_check_start_checking
	music_store_enum_heartbeat_start
	ui_event_block \{event = menu_change
		data = {
			state = UIstate_music_store
		}}
endscript

script ui_destroy_music_store_setup 
	clean_up_user_control_helpers
endscript

script music_store_setup_failed 
	UnPauseGame
	setslomo \{1.0}
	if GotParam \{destroymenu}
		Wait \{2
			gameframes}
		destroy_popup_warning_menu
	endif
	if NetSessionFunc \{func = IsCableUnplugged}
		if NOT GotParam \{enum_error}
			fail_text = qs("Unable to connect to Music Store. Please check your network connection and settings and try again.")
		endif
	elseif ($music_store_entry_cancelled = 1)
		fail_text = qs("Connection to Music Store was cancelled")
	endif
	if NOT CD
		if GotParam \{ErrorCode}
			FormatText TextName = fail_text qs("%s\n(Dev Only: Error %d)") s = <fail_text> d = <ErrorCode>
		endif
	endif
	create_popup_warning_menu {
		textblock = {
			text = <fail_text>
			dims = (800.0, 400.0)
			scale = 0.55
		}
		menu_pos = (640.0, 520.0)
		options = [
			{
				func = music_store_setup_failed_ok
				text = qs("OK")
			}
		]
	}
endscript

script music_store_setup_failed_ok 
	destroy_popup_warning_menu
	generic_event_back \{nosound}
endscript

script music_store_update_loading_text 
	PopupBody_text = qs("Downloading list of store content...\n")
	i = 1
	begin
	if (<i> < 3)
		FormatText TextName = PopupBody_text qs("\L%s%d ... ") s = <PopupBody_text> d = <i>
	else
		FormatText TextName = PopupBody_text qs("\L%s%d !") s = <PopupBody_text> d = <i>
	endif
	i = (<i> + 1)
	repeat <number>
	PopupElement :SetProps {
		PopupBody_text = <PopupBody_text>
	}
endscript
