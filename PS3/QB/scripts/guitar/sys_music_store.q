music_store_songlist_buffer_size = 524288
songlist_pak_filename = 'songlist'

script music_store_init 
	mark_unsafe_for_shutdown
	music_store_show_loading_screen
	if ($music_store_inited = 1)
		ScriptAssert \{'Store already inited'}
	endif
	change \{music_store_inited = 1}
	cas_destroy_all_characters
	unload_songqpak
	SetPakManCurrentBlock \{map = zones
		pak = none
		block_scripts = 1}
	FlushDeferredDeletes
	if IsPs3
		VMHeap \{func = swap_out}
		VMHeap \{func = alloc_commerce}
		MemPushContext \{BottomUpHeap}
		MemInitHeap name = 'heap_musicstore' size = (1024 * 1024) vram_size = (8 * 1024 * 1024)
		MemPopContext
	else
		MemPushContext \{$heap_song}
		MemInitHeap name = 'heap_musicstore' size = (9 * 1024 * 1024)
		MemPopContext
	endif
	MemPushContext \{heap_musicstore}
	PushMemProfile \{'Songlist'}
	InitDownloadSongList buffer_size = ($music_store_songlist_buffer_size)
	PopMemProfile
	MemPopContext
	NetSessionFunc \{func = cdn_init}
	music_store_hide_loading_screen
	mark_safe_for_shutdown
endscript

script music_store_deinit 
	if ($music_store_inited = 1)
		change \{music_store_inited = 0}
		music_store_show_loading_screen
		music_store_cleanup_asset_requests
		MarketplaceFunc \{func = deinit}
		NetSessionFunc \{func = cdn_uninit}
		FlushDeferredDeletes
		if DownloadSongListLoaded
			get_songlist_filename
			UnloadPak <songlist_filename>
			unloaded_pak_flag = {unloaded_pak}
		endif
		FreeDownloadSongList <unloaded_pak_flag>
		memdeleteheap \{name = heap_musicstore}
		if IsPs3
			memdeleteheap \{name = heap_musicstore_vram}
			VMHeap \{func = free_commerce}
			VMHeap \{func = swap_in}
		endif
		SetPakManCurrentBlock \{map = zones
			pak = z_soundcheck
			block_scripts = 1}
		music_store_hide_loading_screen
	endif
endscript

script music_store_show_loading_screen 
	if IsPs3
		DisplayLoadingScreen \{'boot_copyright_BG_1'
			spin3d_texture = 'load_wheel'
			spin_x = 877
			spin_y = 467
			scale = 0.055
			Speed = -2}
	endif
endscript

script music_store_hide_loading_screen 
	if IsPs3
		Hideloadingscreen
	endif
endscript

script music_store_preload_album_covers 
	RequireParams \{[
			list
		]
		all}
	music_store_calculate_image_limit
	GetArraySize <list>
	if (<array_size> > 0)
		if (<array_size> > <limit>)
			array_size = <limit>
		endif
		array = []
		i = 0
		begin
		if StructureContains Structure = (<list> [<i>]) asset_name
			AddArrayElement array = <array> element = ((<list> [<i>]).asset_name)
		endif
		i = (<i> + 1)
		repeat <array_size>
		MusicStoreRequestImages images = <array>
	endif
endscript

script music_store_main_preload_album_covers 
	RequireParams \{[
			list_array
		]
		all}
	MAX_PRELOAD = 10
	GetArraySize <list_array>
	num_lists = <array_size>
	if (<num_lists> > 0)
		i = 0
		begin
		music_store_preload_album_covers list = (<list_array> [<i>]) limit = <MAX_PRELOAD>
		i = (<i> + 1)
		repeat <num_lists>
	endif
endscript

script music_store_cleanup_asset_requests 
	if ScriptIsRunning \{music_store_request_album_cover_change}
		KillSpawnedScript \{name = music_store_request_album_cover_change}
	endif
	if ScriptIsRunning \{music_store_change_album_cover}
		KillSpawnedScript \{name = music_store_change_album_cover}
	endif
	if ScriptIsRunning \{music_store_replace_album_cover_when_loaded}
		KillSpawnedScript \{name = music_store_replace_album_cover_when_loaded}
	endif
endscript

script get_songlist_filename 
	songlistfile = ($songlist_pak_filename)
	GetTerritory
	if French
		songlistfile = (<songlistfile> + '_f')
	elseif Italian
		songlistfile = (<songlistfile> + '_i')
	elseif German
		songlistfile = (<songlistfile> + '_g')
	elseif Spanish
		songlistfile = (<songlistfile> + '_s')
	elseif (<territory> != territory_us)
		songlistfile = (<songlistfile> + '_b')
	endif
	return songlist_filename = (<songlistfile> + '.pak')
endscript

script music_store_download_songlist 
	get_songlist_filename
	mark_unsafe_for_shutdown
	EnableDuplicateSymbolWarning \{off}
	SetDuplicateQSFilesAssertStatus \{enabled = false}
	if downloadsonglist filename = <songlist_filename>
		begin
		if downloadsonglistfinished
			printf \{qs("\LDownloading songlist FINISHED...")}
			break
		endif
		printf \{qs("\LDownloading songlist...")}
		Wait \{1
			gameframe}
		repeat
	else
		success = 0
	endif
	SetDuplicateQSFilesAssertStatus \{enabled = true}
	EnableDuplicateSymbolWarning
	mark_safe_for_shutdown
	printstruct <...>
	if (<success> = 0)
		printf \{qs("\LFailed")}
		return \{false}
	else
		printf \{qs("\LSucceeded")}
	endif
	return \{true}
endscript

script music_store_wait_for_manifest 
	mark_unsafe_for_shutdown
	Wait \{2
		gameframes}
	begin
	if NetSessionFunc \{obj = CDN
			func = is_cdn_ready}
		printf \{qs("\LWait for manifest over")}
		break
	endif
	if ($music_store_entry_cancelled = 1)
		printf \{qs("\LManifest cancelled")}
		failed = 1
		break
	endif
	if NetSessionFunc \{obj = CDN
			func = check_for_cdn_error}
		printf 'Manifest download error %e' e = <error>
		failed = 1
		break
	endif
	printf \{qs("\LWaiting for manifest...")}
	Wait \{1
		gameframe}
	repeat
	mark_safe_for_shutdown
	if NetSessionFunc \{obj = CDN
			func = check_for_cdn_error}
		failed = 1
	endif
	if GotParam \{failed}
		printf \{qs("\LManifest download failed")}
		return \{false}
	endif
	return \{true}
endscript

script music_store_check_signin_state 
	if NOT CheckForSignIn controller_index = ($primary_controller)
		if IsPs3
			return \{false
				fail_text = qs("You must be signed in to the PlayStation®Network to browse the Music Store.")}
		endif
		if NetSessionFunc func = XenonIsGuest params = {controller_index = ($primary_controller)}
			return \{false
				fail_text = qs("You are currently signed into a guest gamer profile. In order to use this feature, you must be signed into Xbox LIVE, and not a guest of a multiplayer enabled gamer profile.")}
		endif
		if NOT CheckForSignIn network_platform_only controller_index = ($primary_controller)
			return \{false
				fail_text = qs("The current gamer profile is not enabled for Xbox LIVE, or the network connection has been lost.")}
		endif
		if CheckForSignIn local controller_index = ($primary_controller)
			if NetSessionFunc \{func = IsCableUnplugged}
				return \{false
					fail_text = qs("Unable to connect to the Music Store. Please check your network connection and settings and try again.")}
			endif
		else
			if isXenon
				dialog_txt = qs("No gamer profile currently signed in. Please sign into an Xbox LIVE multiplayer enabled gamer profile to browse the Music Store.")
			elseif IsPs3
				dialog_txt = qs("You must be signed in to the PlayStation®Network to browse the Music Store.")
			endif
			return false fail_text = <dialog_txt>
		endif
	endif
	if IsPs3
		return \{true
			valid_user = 0}
	else
		return true valid_user = ($primary_controller)
	endif
endscript

script music_store_enumerate_store 
	mark_unsafe_for_shutdown
	if MarketplaceFunc \{func = enum_content}
		begin
		MarketplaceFunc \{func = get_state}
		if NOT (<state> = enum)
			break
		endif
		if NetSessionFunc \{obj = CDN
				func = check_for_cdn_error}
			cdn_error = <error>
			break
		endif
		printf \{qs("\LEnumerating store content...")}
		Wait \{1
			gameframe}
		repeat
		printf \{qs("\LEnumerating store content done")}
		if NetSessionFunc \{obj = CDN
				func = check_for_cdn_error}
			cdn_error = <error>
		endif
		if GotParam \{cdn_error}
			enum_error = <cdn_error>
		else
			if MarketplaceFunc \{func = is_enum_valid}
				mark_safe_for_shutdown
				return \{true}
			else
				printf \{qs("\Lget_enum_error_result")}
				if MarketplaceFunc \{func = get_enum_error_result}
					printf qs("\Lget_enum_error_result e=%e") e = <error>
					enum_error = <error>
				endif
			endif
		endif
	endif
	mark_safe_for_shutdown
	return false enum_error = <enum_error>
endscript

script music_store_cancel_entry 
	printf 'music_store_cancel_entry - %s' s = ($music_store_entry_step)
	if ($music_store_entry_step = enum)
		generic_menu_pad_back_sound
		MarketplaceFunc \{func = cancel_enum}
		change \{music_store_entry_step = none}
		change \{music_store_entry_cancelled = 1}
	endif
	if ($music_store_entry_step = songlist)
		generic_menu_pad_back_sound
		CancelDownloadSongList
		change \{music_store_entry_step = none}
		change \{music_store_entry_cancelled = 1}
	endif
	if ($music_store_entry_step = manifest)
		generic_menu_pad_back_sound
		change \{music_store_entry_step = none}
		change \{music_store_entry_cancelled = 1}
	endif
endscript

script music_store_enum_heartbeat_start 
endscript

script music_store_enum_heartbeat_stop 
endscript

script music_store_enum_heartbeat_spawned 
endscript

script music_store_enum_wait_for_init_state 
	begin
	MarketplaceFunc \{func = get_state}
	if (<state> = init)
		break
	endif
	Wait \{1
		gameframe}
	repeat
endscript

script music_store_purchase_content 
	printf \{'music_store_purchase_content - Starting checkout'}
	printstruct <purchase_struct>
	change \{music_store_attempted_purchase = 1}
	change \{generic_menu_block_input = 1}
	mark_unsafe_for_shutdown
	DumpHeaps
	MarketplaceFunc func = checkout id = (<purchase_struct>.code)
	begin
	MarketplaceFunc \{func = get_state}
	if NOT (<state> = checkout)
		break
	endif
	Wait \{1
		gameframe}
	repeat
	mark_safe_for_shutdown
	change \{generic_menu_block_input = 0}
	printf \{'music_store_purchase_content - Done checkout'}
endscript

script music_store_signin_check_start_checking 
	spawnscriptnow \{music_store_signin_check_spawned}
endscript

script music_store_signin_check_stop_checking 
	KillSpawnedScript \{name = music_store_signin_check_spawned}
endscript

script music_store_signin_check_spawned 
	begin
	if ($is_shutdown_safe = 1)
		if ($blade_active = 0)
			if NOT CheckForSignIn controller_index = ($primary_controller)
				if IsPs3
					music_store_signin_check_failed \{text = qs("You must be signed in to the PlayStation®Network to browse the Music Store.")}
					return
				endif
				if NetSessionFunc func = XenonIsGuest params = {controller_index = ($primary_controller)}
					music_store_signin_check_failed \{text = qs("You are currently signed into a guest gamer profile. In order to use this feature, you must be signed into Xbox LIVE, and not a guest of a multiplayer enabled gamer profile.")}
					return
				endif
				if NOT CheckForSignIn network_platform_only controller_index = ($primary_controller)
					music_store_signin_check_failed \{text = qs("Lost connection to Music Store. Please check your network connection and settings and try again.")}
					return
				endif
				if CheckForSignIn local controller_index = ($primary_controller)
					if NetSessionFunc \{func = IsCableUnplugged}
						music_store_signin_check_failed \{text = qs("Lost connection to Music Store. Please check your network connection and settings and try again.")}
						return
					endif
				else
					if isXenon
						dialog_txt = qs("No gamer profile currently signed in. Please sign into an Xbox LIVE multiplayer enabled gamer profile to browse the Music Store.")
					elseif IsPs3
						dialog_txt = qs("You must be signed in to the PlayStation®Network to browse the Music Store.")
					endif
					music_store_signin_check_failed text = <dialog_txt>
					return
				endif
			endif
		endif
	endif
	Wait \{1
		gameframe}
	repeat
endscript

script music_store_signin_check_failed 
	event = menu_change
	if ui_event_exists_in_stack \{name = 'music_store_scan_marketplace'}
		event = menu_replace
	endif
	ui_event_wait event = <event> data = {state = UIstate_music_store_unavailible text = <text>}
endscript

script music_store_calculate_image_limit 
	if isXenon
		return limit = (($default_music_store_image_cache_size_xenon) / ($default_music_store_image_size_xenon))
	else
		return limit = (($default_music_store_image_cache_size_ps3) / ($default_music_store_image_size_ps3))
	endif
endscript

script music_store_check_download_status 
	begin
	if NOT MarketplaceFunc func = currently_downloading id = <id>
		Obj_GetID
		SetScreenElementProps id = <ObjID> focusable
		SetScreenElementProps id = <ObjID> options_list_item_text_text = qs("DOWNLOAD AGAIN")
		break
	endif
	Wait \{2
		gameframes}
	repeat
endscript
