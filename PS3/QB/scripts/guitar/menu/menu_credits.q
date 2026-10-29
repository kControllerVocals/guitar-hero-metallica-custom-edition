credits_menu_font = fontgrid_text_a6
credits_menu_scroll = horizontal

script ui_create_end_credits 
	printf \{'ui_create_end_credits'}
	spawnscriptnow ui_create_end_credits_spawned params = {<...>}
endscript

script ui_create_end_credits_spawned 
	kill_gem_scroller
	Progression_EndCredits
endscript

script ui_destroy_end_credits 
endscript

script create_credits_menu 
	if ($shutdown_game_for_signin_change_flag = 1)
		return
	endif
	if NOT ($end_credits = 1)
		disable_pause
	endif
	PushAssetContext \{context = z_IceCave}
	CreateScreenElement \{type = ContainerElement
		parent = root_window
		id = credits_backdrop_container
		pos = (0.0, 0.0)
		just = [
			left
			top
		]}
	if NOT ($end_credits = 1)
		CreateScreenElement \{type = SpriteElement
			id = credits_backdrop
			parent = credits_backdrop_container
			texture = credits_bg
			rgba = [
				255
				255
				255
				255
			]
			pos = (640.0, 360.0)
			dims = (2560.0, 720.0)
			just = [
				center
				center
			]
			z_priority = 0
			alpha = 1}
	endif
	TileSprite \{parent = credits_backdrop_container
		texture = credits_bg
		tile_dims = (5120.0, 720.0)
		dims = (2560.0, 720.0)
		pos = (-2560.0, 0.0)}
	RunScriptOnScreenElement TileSpriteLoop id = <id> params = {move_x = 5 move_y = 0}
	PopAssetContext
	if NOT ($end_credits = 1)
		if NOT GotParam \{end_credits}
			event_handlers = [
				{pad_back end_credits_button params = <...>}
			]
			new_menu scrollid = mc_scroll vmenuid = current_menu event_handlers = <event_handlers>
			add_user_control_helper \{text = qs("BACK")
				button = red
				z = 1001}
		else
			event_handlers = [
				{pad_choose end_credits_button params = <...>}
			]
			new_menu scrollid = mc_scroll vmenuid = current_menu event_handlers = <event_handlers>
			add_user_control_helper \{text = qs("CONTINUE")
				button = green
				z = 1001}
		endif
	else
		new_menu \{scrollid = mc_scroll
			vmenuid = current_menu}
	endif
	RunScriptOnScreenElement id = credits_backdrop_container scrolling_list_begin params = <...>
	LaunchEvent \{target = current_menu
		type = focus}
endscript

script end_credits_button 
	if ScreenElementExists \{id = current_menu}
		current_menu :SE_SetProps \{block_events}
	endif
	destroy_credits_menu
	if NOT GotParam \{end_credits}
		generic_event_back
	else
		progression_set_credits_complete
		ui_win_song_career_continue
	endif
endscript

script destroy_credits_menu 
	if ($shutdown_game_for_signin_change_flag = 1)
		KillSpawnedScript \{name = create_credits_menu}
		if ScreenElementExists \{id = credits_list_container}
			DestroyScreenElement \{id = credits_list_container}
		endif
		KillSpawnedScript \{name = scrolling_list_begin}
	endif
	clean_up_user_control_helpers
	KillSpawnedScript \{name = TileSpriteLoop}
	if ScreenElementExists \{id = credits_backdrop_container}
		DestroyScreenElement \{id = credits_backdrop_container}
	endif
	if ScreenElementExists \{id = mc_scroll}
		DestroyScreenElement \{id = mc_scroll}
	endif
endscript

script scrolling_list_begin 
	if ($end_credits = 1)
		Wait \{2
			seconds}
		CreateScreenElement \{type = ContainerElement
			parent = root_window
			id = credits_backdrop_container
			pos = (0.0, 0.0)
			just = [
				left
				top
			]}
	endif
	scrolling_list_init_credits
	scrolling_list_add_item <...>
endscript

script scrolling_list_add_item \{i = 0}
	if (<i> = 0)
		if NOT ($end_credits = 1)
			<i> = 6
		endif
	endif
	GetArraySize ($credits)
	if (<i> = <array_size>)
		printf \{qs("\L** END OF CREDITS **")}
		Wait <time> seconds
		if ScreenElementExists \{id = credits_list_container}
			DestroyScreenElement \{id = credits_list_container}
		endif
		if NOT ($end_credits = 1)
			end_credits_button <...> soundcheck
		endif
		return
	endif
	if StructureContains Structure = ($credits [<i>]) item
		text = (($credits [<i>]).item)
	else
		text = qs(" ")
	endif
	if StructureContains Structure = ($credits [<i>]) heading
		scale = <scale_head>
		color = <color_head>
		color_shadow = [20 10 5 0]
		shadow_offs = (3.0, 3.0)
	else
		scale = <scale_body>
		color = <color_body>
		color_shadow = [0 0 0 0]
		shadow_offs = (3.0, 3.0)
	endif
	if StructureContains Structure = ($credits [<i>]) title
		scale = <scale_title>
		color = <color_title>
		color_shadow = [20 10 5 0]
		shadow_offs = (3.0, 3.0)
	endif
	if StructureContains Structure = ($credits [<i>]) small
		scale = 0.5
		color = <color_body>
		color_shadow = [0 0 0 0]
		shadow_offs = (1.0, 1.0)
	endif
	FormatText checksumname = item_id 'item_%n' n = <i>
	if ScreenElementExists id = <item_id>
		DestroyScreenElement id = <item_id>
	endif
	if ($credits_menu_scroll = vertical)
		<fit_width> = `scale each line if larger`
		<fit_height> = `expand dims`
	else
		<fit_width> = `expand dims`
		<fit_height> = `scale down if larger`
	endif
	CreateScreenElement {
		type = TextBlockElement
		id = <item_id>
		parent = credits_list_container
		font = fontgrid_text_a6
		dims = <our_dims>
		fit_width = <fit_width>
		fit_height = <fit_height>
		font_spacing = 1
		pos = (0.0, 0.0)
		internal_scale = <scale>
		text = <text>
		just = <just>
		internal_just = <just>
		rgba = <color>
		alpha = 1
		shadow
		shadow_offs = <shadow_offs>
		shadow_rgba = <color_shadow>
		z_priority = <z_priority_credits>
	}
	GetScreenElementDims id = <item_id>
	if ($credits_menu_scroll = vertical)
		<item_height> = (<Height> + <spacer>)
		<item_pos> = (<base_pos> + (<item_height> * (0.0, 1.0)))
	else
		<item_width> = (<width> + <spacer>)
		if GotParam \{prev_dim_x}
			<item_pos> = (<base_pos> + ((<prev_dim_x> + <spacer>) * (1.0, 0.0)))
		else
			<item_pos> = (<base_pos> + (<item_width> * (1.0, 0.0)))
		endif
	endif
	<item_id> :SE_SetProps pos = <item_pos>
	if ($credits_menu_scroll = vertical)
		<distance> = (<screen_height> + ((<item_pos>.(0.0, 1.0)) - <screen_height>))
	else
		<distance> = (<screen_width> + ((<item_pos>.(1.0, 0.0)) - <screen_width> + <width>))
	endif
	<time> = (<distance> / <rate>)
	if ScreenElementExists id = <item_id>
		RunScriptOnScreenElement id = <item_id> scrolling_list_move_item params = {<...>}
	endif
endscript

script scrolling_list_move_item 
	RunScriptOnScreenElement id = credits_backdrop_container scrolling_list_queue_next_item params = {<...>}
	if ($credits_menu_scroll = vertical)
		<target_pos> = (<item_pos> - ((0.0, 1.0) * <distance>))
	else
		<target_pos> = (<item_pos> - ((1.0, 0.0) * <distance>))
	endif
	SE_SetProps time = <time> pos = <target_pos>
	SE_WaitProps
	if ScreenElementExists id = <item_id>
		DestroyScreenElement id = <item_id>
	endif
endscript

script scrolling_list_queue_next_item 
	begin
	if ScreenElementExists id = <item_id>
		GetScreenElementProps id = <item_id>
	endif
	if ($credits_menu_scroll = vertical)
		pos_y = (<pos>.(0.0, 1.0))
		if (<pos_y> < <screen_height>)
			<i> = (<i> + 1)
			scrolling_list_add_item <...>
			return
		endif
	else
		pos_x = (<pos>.(1.0, 0.0))
		if (<pos_x> < <screen_width>)
			<i> = (<i> + 1)
			<prev_dim_x> = (<dims>.(1.0, 0.0))
			scrolling_list_add_item <...>
			return
		endif
	endif
	Wait \{1
		gameframe}
	repeat
endscript

script scrolling_list_init_credits 
	if ($end_credits = 1)
		z_priority_credits = 100
	else
		z_priority_credits = 1000
	endif
	if ($end_credits = 1)
		<rate> = 394.0
		<screen_height> = 280.0
		<scale_head> = 0.9
		<color_head> = [220 220 220 255]
		<scale_body> = 0.65000004
		<color_body> = [200 200 200 255]
		<scale_title> = 0.65000004
		<color_title> = [220 220 220 255]
	else
		<rate> = 380.0
		<screen_height> = 690
		<scale_head> = 0.75
		<color_head> = [149 48 48 255]
		<scale_body> = 0.65000004
		<color_body> = [30 30 30 255]
		<scale_title> = 0.65000004
		<color_title> = [149 48 48 255]
	endif
	<screen_width> = 1280
	if ($credits_menu_scroll = vertical)
		<just> = [center bottom]
		<base_pos> = ((640.0, 0.0) + ((0.0, 1.0) * <screen_height>))
		<column_width> = 450
		<our_dims> = (<column_width> * (1.0, 0.0))
		<spacer> = 5
	else
		<just> = [left center]
		<base_pos> = ((0.0, 380.0) + ((1.0, 0.0) * <screen_width>))
		<column_height> = 220
		<our_dims> = ((<column_height> * (0.0, 1.0)) + (70.0, 0.0))
		<spacer> = 80
	endif
	if ScreenElementExists \{id = credits_list_container}
		DestroyScreenElement \{id = credits_list_container}
	endif
	CreateScreenElement \{type = ContainerElement
		parent = credits_backdrop_container
		id = credits_list_container
		pos = (0.0, 0.0)}
	return <...>
endscript
credits = [
	{
		title
		item = qs("You've unlocked")
	}
	{
		heading
		item = qs("\LPull Me Under\nDream Theater, 1992")
	}
	{
		emptyspace
	}
	{
		emptyspace
	}
	{
		emptyspace
	}
	{
		emptyspace
	}
	{
		heading
		item = qs("\LDesigned and Developed by Neversoft")
	}
	{
		item = qs("\LAaron Habibipour\nAaron Williams\nAdam Micciulla\nAdam Tsui")
	}
	{
		item = qs("\LAlan Flores\nAllen Freese\nAndy Lee\nAndy Marchal")
	}
	{
		item = qs("\LAndy Warwick\nAndy Gentile\nAnet Hambarsumian\nAnthony Campos")
	}
	{
		item = qs("\LAnthony Carotenuto\nAnthony Pesch\nAnthony Saunders\nBenjamin Kutcher")
	}
	{
		item = qs("\LBernie Corrigan\nBeth Cowling\nBill Buckley\nBrad Bulkley")
	}
	{
		item = qs("\LBrandon Riggs\nBrendan Wiuff\nBrian Bright\nBrian Effinger")
	}
	{
		item = qs("\LBrian Marvin\nBrian Oles\nByeong Gyu Park\nCameron Davis")
	}
	{
		item = qs("\LCarlo Surla\nChad Findley\nChad Sundman\nChris Barnes")
	}
	{
		item = qs("\LChris Boltz\nChris Myers\nChris Parise\nChris Self")
	}
	{
		item = qs("\LChris Vance\nChris Ward\nChristopher George\nClark Wen")
	}
	{
		item = qs("\LClive Burdon\nCody Pierson\nColin Crenshaw\nDana Delalla")
	}
	{
		item = qs("\LCorey Teblum\nDallas Holloway\nDan Savage\nDaniel Hong")
	}
	{
		item = qs("\LDaniel Nelson\nDaryl Kimoto\nDave Cowling\nDave Hernandez")
	}
	{
		item = qs("\LDave Rowe\nDavid Hind\nDavid Nilsen\nDavid Rose")
	}
	{
		item = qs("\LDavid Stowater\nDavidicus\nDongWoo Thomas Shin\nDonovan Keele")
	}
	{
		item = qs("\LEric Feldman\nEric Milota\nFrancisco Mora\nGarrett Jost")
	}
	{
		item = qs("\LGary Jesdanun\nGavin Pugh\nGenna Habibipour\nGeoffrey Inkel")
	}
	{
		item = qs("\LGideon Stocek\nGreg Lopez\nGregory Kopina\nHari Khalsa")
	}
	{
		item = qs("\LIfedayo O. Ojomo\nIli Chiang\nJake Geiger\nJason Greenberg")
	}
	{
		item = qs("\LJason Maynard\nJason Uyeda\nJeff Swenty\nJeremiah Roa")
	}
	{
		item = qs("\LJeremy Page\nJeremy Rogers\nJiwon Son\nJody Coglianese")
	}
	{
		item = qs("\LJoe Kirchoff\nJoe Pease\nJoel Jewett\nJohn ''Bunny'' Knutson")
	}
	{
		item = qs("\LJohn Sahas\nJohn Webb\nJohn Zagorski\nJohnny Ow")
	}
	{
		item = qs("\LJon Bailey\nJordan Leckner\nJordan Sapp\nJosh Lord")
	}
	{
		item = qs("\LJun Hyuck Chang\nJustin Parish\nJustin Rote\nKarl Drown")
	}
	{
		item = qs("\LKen Moodie\nKendall Harrison\nKevin Chung\nKevin Mulhall")
	}
	{
		item = qs("\LKristin Gallagher\nKristina Adelmeyer\nKyle Johnson\nKyle McKisic")
	}
	{
		item = qs("\LLars Kendall\nLee Ross\nLisa Davies-Perissi\nLisa Perez")
	}
	{
		item = qs("\LLucy Andonian\nMarc DePeo\nMario Sanchez\nMark L. Scott")
	}
	{
		item = qs("\LMark Storie\nMark Wojtowicz\nMatt Canale\nMatthew Jackowski")
	}
	{
		item = qs("\LMax Davidian\nMichael Bilodeau\nMichael Esposito\nMichael Friedrich")
	}
	{
		item = qs("\LMichael Velasquez\nRev. Michael Winte\nNathan Sisler\nNicholas E. Weaver")
	}
	{
		item = qs("\LNolan Nelson\nOlin Georgescu\nOrion Brown\nPam Detrich")
	}
	{
		item = qs("\LPatrick Connole\nPatrick Hagar\nPaul Robinson\nPeter Day")
	}
	{
		item = qs("\LPeter Pon\nRandy Guillote\nRandy Mills\nRH Shih")
	}
	{
		item = qs("\LRiley Jewett\nRob T. Miller\nRobert Espinoza\nRobert Kim")
	}
	{
		item = qs("\LRock Gropper\nRulon Raymond\nRyan Ligon\nRyan Magid")
	}
	{
		item = qs("\LRyan Palser\nSamuel Ware\nSandy Jewett\nScott Pease")
	}
	{
		item = qs("\LSean Watson\nSergio Gil\nShane Calnan\nSimon Ebejer")
	}
	{
		item = qs("\LSimon Ko\nSivarak ''Kai'' Tawarotip\nSkye Kang\nStephanie Bayer")
	}
	{
		item = qs("\LStuart Scandrett\nTakashi Matsubara\nTed Barber\nThai Tran")
	}
	{
		item = qs("\LThomas Gawrys\nThomas Owen\nTim Stasica\nTimothy Rapp")
	}
	{
		item = qs("\LTina Stevenson\nTom Parker\nTony Solis\nTravis Chen")
	}
	{
		item = qs("\LWeichen Wu\nWislon Truong\nZac Drake\nZach Parr")
	}
	{
		heading
		item = qs("\LAdditional Development:")
	}
	{
		item = qs("\LAlex Leffelman\nCorinne Ashimine\nJeff Morgan\nMatthew Jones")
	}
	{
		heading
		item = qs("\LHardcore Testers:")
	}
	{
		item = qs("\LAdam Nelson\nAdry Walsh\nAndrew Colen\nAndrew Lee\nAuston Jones")
	}
	{
		item = qs("\LBenjamin O'Brien\nBradley Lusenhop\nBrandon Tepezano\nBrandyn Betton\nClint Baptiste")
	}
	{
		item = qs("\LCurt Markwardt\nDaniel Farina\nDavid Delanty\nDavid Hyatt\nGareth Davies")
	}
	{
		item = qs("\LGreg Spohn\nJacob Karesh\nJames Chen\nJames Gobert\nJamison Dyke")
	}
	{
		item = qs("\LJeff Brys\nJennifer Fusco\nJennifer Sills\nJimmy Nguyen\nJonathan Green")
	}
	{
		item = qs("\LJoseph Arco\nJoshua Dodge\nJoshua Lewis\nKami Talebi\nKenneth Ellis")
	}
	{
		item = qs("\LKhalin Mikkelsen\nKimberly Lansang\nKyle Leonard\nLee Ware\nMatthew Bravos")
	}
	{
		item = qs("\LMatthew Cutting\nMegan Mozena\nMoshe Chen\nNeil Cortez\nRion Jones")
	}
	{
		item = qs("\LRobert Byrd\nRon Williams\nRonnie Stafford\nRyan Clouse\nSergio Pacheco")
	}
	{
		item = qs("\LShasta Rodriguez\nStephan Brezinsky\nTiffani Burkett\nTommy Coello\nTravis Ramon")
	}
	{
		item = qs("\LTristan Clark\n\n\n\n")
	}
	{
		heading
		item = qs("\LAdditional Testing:")
	}
	{
		item = qs("\LChris Watkins\nDanny Wapner\nJermaine Shockley\nEdgar Lopez\nJeremy Lutz")
	}
	{
		item = qs("\LRyan Ernest\n\n\n\n")
	}
	{
		heading
		item = qs("\LData Capture Performers:")
	}
	{
		item = qs("\LAdam Jennings\nAndy Gentile\nJames Hetfield\nKirk Hammett")
	}
	{
		item = qs("\LRobert Trujillo\nLars Ulrich\n\n")
	}
	{
		heading
		item = qs("\LVO Actors:")
	}
	{
		item = qs("\LLiam O'Brien\nTroy Baker\nMichelle Ruff\nJulian Stone")
	}
	{
		item = qs("\L\c5Voice Casting:\n\c0PCB Productions\n\c5Talent Coordination:\n\c0Keith Arem")
	}
	{
		heading
		item = qs("\LPartners:")
	}
	{
		heading
		item = qs("\L\c5EMG")
	}
	{
		item = qs("\LEMG\nis a registered\ntrademark of\nEMG Inc.")
	}
	{
		heading
		item = qs("\L\c5ESP")
	}
	{
		item = qs("\LESP and LTD\nare registered\ntrademarks of the\nESP Guitar Co. Inc. ")
	}
	{
		heading
		item = qs("\L\c5Ernie Ball")
	}
	{
		item = qs("\LErnie Ball\nis a registered\ntrademark of\nErnie Ball Inc.")
	}
	{
		heading
		item = qs("\L\c5HAVOK")
	}
	{
		item = qs("\LLicense Developed Guitar Hero Metallica uses Havok®\n©Copyright 1999-2009 Havok.com Inc. (and its Licensors).\nAll Rights Reserved.\nSee www.havok.com for details.")
	}
	{
		heading
		item = qs("\L\c5Line 6")
	}
	{
		item = qs("\LLine 6 and POD\nare registered trademarks of\nLine 6, Inc. POD modeling technology is the\nexclusive property of Line 6, Inc. All rights reserved. Used under license.")
	}
	{
		heading
		item = qs("\L\c5TAMA")
	}
	{
		item = qs("\LTAMA and Ibanez\nare registered\ntrademarks of\nHoshino Gakki Co., Ltd.")
	}
	{
		heading
		item = qs("\L\c5Zildjian")
	}
	{
		item = qs("\LZildjian, and the stylized\nZildjian logo are registered\ntrademarks of the\nAvedis Zildjian Company")
	}
	{
		heading
		item = qs("\L\c5James Trussart\nCustom Guitars")
	}
	{
		heading
		item = qs("\L\c5Donington Park")
	}
	{
		heading
		item = qs("\L\c5THE FORUM")
	}
	{
		heading
		item = qs("\L\c5Hammersmith Apollo")
	}
	{
		heading
		item = qs("\L\c5IZOD Center")
	}
	{
		heading
		item = qs("\L\c5The Stone")
	}
	{
		heading
		item = qs("Special Thanks:")
	}
	{
		item = qs("\L\c5Metallica:\n\c0Ame Buecker\nAvi Vinocur\nChad Zaemisch")
	}
	{
		item = qs("\LCliff Bernstein\nDhenys Lau\nDr. Don Oyao aka Master Don\nFrankie Orange")
	}
	{
		item = qs("\LHeather ''Foster'' Kjollesdal\nJames Nelson\nJanine ''Bean'' Doyle\nJeff ''Fixxxer'' Yeager")
	}
	{
		item = qs("\LJenny Thornburg\nJustin Crew\nKessel Crockett\nMarc Reiter")
	}
	{
		item = qs("\LPeter Mench\nRay Masterson\nSam McNally\nSteven Wiig")
	}
	{
		item = qs("\LSue Tropio\nTony Di Cioccio\nVickie Strate\nZach Harmon")
	}
	{
		item = qs("\L\c5Others:\n\c0All the guys and girls at ESP\nAllen Steelgrave\nJose Ferro")
	}
	{
		item = qs("\LJose Ferro\nMatt Masciandaro\nRick from AHead Drumsticks\nTina Suca from the LA Forum")
	}
	{
		item = qs("\LGL33k\nSteve Ouimette\n\n")
	}
	{
		item = qs("\L\c5Ibanez/Tama drums:\n\c0Rob Nishida\nYuji Kitazoe\nHappy Yoshida")
	}
	{
		heading
		item = qs("\LMetallica Live\nVideo Footage:")
	}
	{
		item = qs("\L\n\c5All Metallica footage provided by\n\c0Jeff ''Fixxxer'' Yeager\n")
	}
	{
		item = qs("\L\c5Creeping Death\n\c0Moscow, Russia - 2007\nfilmed by\nSteven Wiig")
	}
	{
		item = qs("\L\c5For Whom The Bell Tolls\n\c0Nashville, TN - 2008\nfilmed by\nCharile Jennings")
	}
	{
		item = qs("\L\c5Orion\n\c0Donnington, England - 2006\nfilmed by\nKatherine Tsang-Orr")
	}
	{
		item = qs("\L\c5Mercyful Fate Live with King Diamond\n\c0Dallas, TX - 2008\nfilmed by\nTori Tanner")
	}
	{
		heading
		item = qs("\LActivision Production:")
	}
	{
		item = qs("\L\c5Producer\n\c0Eric Grossman")
	}
	{
		item = qs("\L\c5Production Coordinator\n\c0Alex Ortiz")
	}
	{
		item = qs("\L\c5Sr. Producer\n\c0Jeremiah Maza")
	}
	{
		item = qs("\L\c5Executive Producer\n\c0Jeff Matsushita")
	}
	{
		item = qs("\L\c5Vice President, Production\n\c0Laird Malamed")
	}
	{
		item = qs("\L\c5Additional Production Support\n\c0Aaron Drayer\n\c0Chuck Park")
	}
	{
		item = qs("\L\c0Pat Bowman\n\c0Will Townsend\n\c0J. Boone")
	}
	{
		item = qs("\L\c0Andrew Hoffacker\n\c0Jim Norris\n")
	}
	{
		heading
		item = qs("\LRedOctane Marketing:")
	}
	{
		item = qs("\L\c5Sr. Director\nGBM\n\c0Tom Silk\n")
	}
	{
		item = qs("\L\c5Director\nGBM\n\c0Amy Longhi\n")
	}
	{
		item = qs("\L\c5Senior\nGBMs\n\c0Doug McCracken\n")
	}
	{
		item = qs("\L\c5Global Brand Manager\n\c0Chris Enock")
	}
	{
		heading
		item = qs("\LPR:")
	}
	{
		item = qs("\L\c5PR Director\n\c0Ryh-Ming C. Poon\n\n")
	}
	{
		item = qs("\L\c5PR Manager\n\c0Aaron Grant\n\n")
	}
	{
		item = qs("\L\c5Publicist\n\c0Lindsay Morio\n\n")
	}
	{
		item = qs("\L\c5Jr. Publicist \n\c0Jordan Dodge\n\n")
	}
	{
		item = qs("\L\c5PR Coordinators\n\c0Andrew Meyer\n\n")
	}
	{
		item = qs("\L\c5Global Asset Manager\n\c0Karen Yi\n\n")
	}
	{
		heading
		item = qs("\LBrand Activation:")
	}
	{
		item = qs("\L\c5VP, Brand Activation\n\c0Stacey Hirata\n\n")
	}
	{
		item = qs("\L\c5Sr. Brand Activation Manager\n\c0Jon Estanislao\n\n")
	}
	{
		item = qs("\L\c5Brand Activation Manager\n\c0Emily Uyehara-Kunkel\n\n")
	}
	{
		item = qs("\L\c5Associate Brand Manager\n\c0Matthew Allen\n\n")
	}
	{
		item = qs("\L\c5Brand Activation Associate\n\c0Megan Ferguson\n\n")
	}
	{
		item = qs("\L\c5Brand Activation Assistant\n\c0Kyle Rechsteiner\n\n")
	}
	{
		heading
		item = qs("\LCreative Services:")
	}
	{
		item = qs("\L\c5Creative Services Manager\n\c0Mike Doan\n\n")
	}
	{
		item = qs("\L\c5Web Designer\n\c0Jennifer Nakamura\n\n")
	}
	{
		item = qs("\L\c5Graphic Designers\n\c0Maly Bun\nMinna Hu\nDamon Belanger")
	}
	{
		heading
		item = qs("\LRedOctane:")
	}
	{
		item = qs("\L\c5President\n\c0Kai Huang\n\n")
	}
	{
		item = qs("\L\c5Sr. Vice President, Publishing \n\c0Dusty Welch\n\n")
	}
	{
		item = qs("\L\c5Executive VP\n\c0Charles Huang\n\n")
	}
	{
		item = qs("\L\c5European Marketing Manager\nRedOctane Europe\n\c0Anders Rinaldo\n")
	}
	{
		item = qs("\L\c5Executive Assistant\n\c0Trina Deakin\n\n")
	}
	{
		item = qs("\L\c5Licensing Associate\n\c0Chris Larkin\n\n")
	}
	{
		item = qs("\L\c5Sr. Vice President, Finance\n\c0Richard Santiago\n\n")
	}
	{
		item = qs("\L\c5Controller\n\c0Monika Agarwal\n\n")
	}
	{
		item = qs("\L\c5Sr. Financial Analyst\n\c0Kevin Lurie\nLu Truong\n")
	}
	{
		item = qs("\L\c5Sr. Accountant\n\c0Tina Xu\n\n")
	}
	{
		heading
		item = qs("\LHardware:")
	}
	{
		item = qs("\L\c5VP Hardware\n\c0Lee Guinchard\n\n")
	}
	{
		item = qs("\L\c5Director of Product Management\n\c0Steve Withers\n\n")
	}
	{
		item = qs("\L\c5Director of Hardware\n\c0Carter Lee\n\n")
	}
	{
		item = qs("\L\c5Hardware Program Director\n\c0David Dykes\n\n")
	}
	{
		item = qs("\L\c5Producer of Hardware\n\c0Ted Lange\n\n")
	}
	{
		item = qs("\L\c5Hardware Production Coordinators\n\c0Mark Johnson\nRaul Renteria\nCasimero Agustin")
	}
	{
		item = qs("\L\c5Production Engineering Manager\n\c0Jared Chan\n\n")
	}
	{
		item = qs("\L\c5Product Designer\n\c0Cody Lee\n\n")
	}
	{
		heading
		item = qs("\LE-Commerce:")
	}
	{
		item = qs("\L\c5E-Commerce Manager\n\c0Michael Pan\n\n")
	}
	{
		item = qs("\L\c5Online\nMarketing Specialist\n\c0David Hsu\n")
	}
	{
		item = qs("\L\c5E-Commerce\nAssistants\n\c0Amanda Amezcua\nHana Sakamoto")
	}
	{
		item = qs("\L\c5Customer Service\nManager\n\c0Joe Mijares\n")
	}
	{
		item = qs("\L\c5Customer Support Team\n\c0Mike Dangerfield\nMasai Davis\nMelanie Porzio")
	}
	{
		item = qs("\L\c5Shipping\n\c0Lincoln Jalique\n\n")
	}
	{
		item = qs("\L\c5Webmaster\n\c0Suky Wong\n\n")
	}
	{
		heading
		item = qs("\LThe rest at Red Octane, specifically:")
	}
	{
		item = qs("\LJohn Devecka\nSwami Venkat\nJack McCauley")
	}
	{
		heading
		item = qs("\LRedOctane Thanks:")
	}
	{
		item = qs("\LLillian Qian\nKaylan Huang\nCharley Huang\nSimon Huang\nLily Huang")
	}
	{
		item = qs("\LEthan Huang\nSamantha Chien\nSkye Lange\nDream Lange\nDorothy Yang")
	}
	{
		item = qs("\LThe San Jose Sharks\nThe Juco Family\nMB&GB: Da Bears\nThe Larkin Family\nFreddie Arnott")
	}
	{
		item = qs("\LGrey Hawke\nHunter Watson\nMatthew Salutillo\nRedOctane India crew\nDennis Goh")
	}
	{
		item = qs("\LGrey Hawke\nRed Octane India Crew\nDennis Goh\nEskander Matta\nAlex Mahlke")
	}
	{
		item = qs("\LEskander Matta\nTom Knudsen\nMatt Crowley\n\n")
	}
	{
		heading
		item = qs("\LActivision:")
	}
	{
		item = qs("\L\c5Vice President,\nMusic Affairs\n\c0Tim Riley\n")
	}
	{
		item = qs("\L\c5Sr. Manager,\nMusic Affairs\n\c0Brandon Young\n")
	}
	{
		item = qs("\L\c5Music Supervisor\n\c0Scott McDaniel\n\n")
	}
	{
		item = qs("\L\c5Audio\nAsset Specialist\n\c0David Iscove\n")
	}
	{
		item = qs("\L\c5Music and\nLicensing Specialists\n\c0Jeremy Volk\nMike Phegley")
	}
	{
		item = qs("\L\c5Music Coordinator\n\c0Jonathan Bodell\n\n")
	}
	{
		item = qs("\L\c5VP, Business &\nLegal Affairs\n\c0Greg Deutsch\n")
	}
	{
		item = qs("\L\c5Director, Government and\nLegislative Affairs\n\c0Philip Terzian\n")
	}
	{
		item = qs("\L\c5Transactional Counsel\n\c0Travis Stansbury\n")
	}
	{
		item = qs("\L\c5Senior Paralegal\n\c0Kap Kang\n")
	}
	{
		item = qs("\L\c5Senior Director of Production Services\n\c0Suzan Rude\n")
	}
	{
		item = qs("\L\c5Sr. Director, Game Design\n\c0Carl Schnurr\n")
	}
	{
		item = qs("\L\c5Sr. Director, Technology\n\c0Matt Wilkinson\n")
	}
	{
		item = qs("\L\c5Sr. VP of Technology\n\c0Steve Pearce\n")
	}
	{
		item = qs("\L\c5Manager, Central User Testing\n\c0Ray Kowalewski\n")
	}
	{
		item = qs("\L\c5Director, Central Audio\n\c0Adam Levenson\n")
	}
	{
		item = qs("\L\c5Central Audio Coordinator\n\c0Noah Sarid\n")
	}
	{
		heading
		item = qs("\LCimarron, C4:")
	}
	{
		item = qs("\L\nMatt Stainner\nDalene Tarr\n")
	}
	{
		heading
		item = qs("\LActivision Special Thanks:")
	}
	{
		item = qs("\LMike Griffith\nRon Doornink\nThomas Tippl\nBrian Kelly\nBobby Kotick")
	}
	{
		item = qs("\LBrian Ward\nBrian Hodous\nDave Stohl\nMaria Stipp\nKathryn Murray")
	}
	{
		item = qs("\LJoerg Trouvain\nJohn Watts\nSteve Young\nJosh Taub\nLaura Hoegler")
	}
	{
		item = qs("\LJennifer Sullivan\nBeverly Liggett\nWade Pottinger\nSean Dexheimer\nDan Schaffer")
	}
	{
		item = qs("\LMolly Hinchey\nGeorge Rose\nMary Tuck\nDave Anderson\nJohn Dillulo")
	}
	{
		item = qs("\LMaryanne Lataif\nMichelle Schroder\nVictor Lopez\nJay Komas\nChris Cosby")
	}
	{
		item = qs("\LNeil Armstrong\nPeter Oey\nSteve Wereb\nTodd Szalla\nNikunj Dalal")
	}
	{
		heading
		item = qs("\LQuality\nAssurance:")
	}
	{
		item = qs("\L\c5VP Quality Assurance/\nCustomer Service\n\c0Rich Robinson\n")
	}
	{
		item = qs("\L\c5Director,\nQuality Assurance\n\c0Marilena Rixford\n")
	}
	{
		heading
		item = qs("\LQA, Functionality:")
	}
	{
		item = qs("\L\c5QA Project Lead,\nDayshift\n\c0Albert Yao\n")
	}
	{
		item = qs("\L\c5QA Project Lead,\nNight Shift\n\c0Steve Peñate\n")
	}
	{
		item = qs("\L\c5QA Floor Leads, Dayshift\n\c0Lou Studdert\nPaul Goldilla\nChris Staples\nIvan Arzate\nLee Staples")
	}
	{
		item = qs("\L\c5QA Floor Leads, Nightshift\n\c0Trevor Page\nColin Tistaert\nJovany Banuelos\nRoberto Benites")
	}
	{
		item = qs("\L\c5QA Database\nAdministrator,\nDayshift\n\c0Dong Fan")
	}
	{
		item = qs("\L\c5QA Testers,\nDayshift\n\c0Alan Garcia\nAlfredo Barraza")
	}
	{
		item = qs("\LAlbert (AJ) Jacobs\nBenjamin Plunk\nBob Hanscum\nBrandon Williams")
	}
	{
		item = qs("\LCarlos Monroy\nChandler Marshall\nChristian Tincher\nChristopher Shepherd")
	}
	{
		item = qs("\LCiji Thornton\nCorwin Chapman\nCorey Redgrift\nCorey Sullivan")
	}
	{
		item = qs("\LD'Wane Burgess\nDanny Reynoso\nDaniel Brown\nDarryl Kennedy Jr.")
	}
	{
		item = qs("\LDavid Kim\nDominick Werckle\nEd Harris\nGregory Rice")
	}
	{
		item = qs("\LHector Garcia\nIan Whaley\nJeffrey Placencia\nJohn Schwabl")
	}
	{
		item = qs("\LJonathan Cage\nJonathan Redaja\nJordan Bondhus\nJoshua Mendoza")
	}
	{
		item = qs("\LKevin Tucker\nKevin Watley\nKyle Levitt\nMark Simons")
	}
	{
		item = qs("\LMark Todd\nMatthew Haugen\nMatthew Smith\nMichael Stella")
	}
	{
		item = qs("\LMichael Fuller\nMichael Taing\nMikey Ackland\nNars Del Rosario")
	}
	{
		item = qs("\LPatrick Duhaney\nPhillip Needham\nRichard Denton\nRichie Reza")
	}
	{
		item = qs("\LRobert Chaplan\nRoderick Erwin\nRotona Khoeut\nSam Cohn")
	}
	{
		item = qs("\LSergio Mata\nShawn Belew\nSean Moline\nTimothy Peter")
	}
	{
		item = qs("\LTodd Carrigan\nTyler Robinson\nZack Mastrangelo\n")
	}
	{
		item = qs("\L\c5QA Testers, Nightshift\n\c0Allison Rivet\nAnthony Gorski\nAnthony Ruiz")
	}
	{
		item = qs("\LBenjamin Deutsch\nCassandra Ruiz\nCharlton Chu\nChris Gerfen")
	}
	{
		item = qs("\LChristopher McCardle\nDerek Heiland\nDidier Benitez\nDominique Pineda")
	}
	{
		item = qs("\LEmily Fuller\nErwin Alcantara\nGerald Artega\nHugo Felix")
	}
	{
		item = qs("\LIan Comi\nJaime Segovia\nJerome Li\nJohn Garcia")
	}
	{
		item = qs("\LJonathan Ramsey\nJoseph Parise\nJosh Rotunda\nJoshua Valdez")
	}
	{
		item = qs("\LJuan Arias\nJulius Hipolito\nJustin Huthmacher\nKenneth Gentapanan")
	}
	{
		item = qs("\LKong Jaw\nLa Vonce Ervin\nLovely Morata\nMatthew Bolin")
	}
	{
		item = qs("\LMichael Chinn\nMichael Penrod\nMike Chaja\nNeal Nikaido")
	}
	{
		item = qs("\LNoah Ryan-Stout\nOscar Rodriguez\nOzzie Mejia\nPhil Chiem")
	}
	{
		item = qs("\LRigo Garcia\nRoberto Dominguez\nRon Ruhl\nRoy Geer")
	}
	{
		item = qs("\LSteve Tippett\nSteven Chavez\nSteven Springer\nTaylor Fontecchio")
	}
	{
		item = qs("\LTiffany Asghary\nTristan Leyesa\nVicente Gutierrez\nWei Zhao")
	}
	{
		item = qs("\LYong(Jay) Pak\nYuta Kanagawa\n\n")
	}
	{
		item = qs("\L\c5QA Senior\nProject Lead\nDayshift\n\c0Paul Williams")
	}
	{
		item = qs("\L\c5QA Senior \nProject Lead\nNightshift\n\c0Frank So")
	}
	{
		item = qs("\L\c5QA Manager,\nDayshift\n\c0John Rosser\n")
	}
	{
		item = qs("\L\c5QA Manager,\nNightshift\n\c0Adam Hartsfield\n")
	}
	{
		heading
		item = qs("\LTechnical\nRequirements\nGroup:")
	}
	{
		item = qs("\L\c5Director, QA-TRG\n\c0Christopher Wilson\n\n")
	}
	{
		item = qs("\L\c5TRG Submissions Leads\n\c0Dan Nichols\nChristopher Norman\n")
	}
	{
		item = qs("\L\c5Sr. TRG Platform Leads\n\c0Marc Villanueva\nTeak Holley\n")
	}
	{
		item = qs("\L\c5TRG Platform Leads\n\c0James Rose\nJared Baca\nBenjamin Abel")
	}
	{
		item = qs("\L\c5TRG Floor Lead\n\c0David Wilkinson\nJared Baca\nJames Rose")
	}
	{
		item = qs("\L\c5TRG Testers\n\c0Alex Hirsch\nChristian Haile\nDaniel Fehskens")
	}
	{
		item = qs("\LJacob Zwirn\nJason Garza\nJonathan Butcher\nMark Ruzicka")
	}
	{
		item = qs("\LPisoth Chham\nRhonda Ramirez\nWilliam Camacho\n")
	}
	{
		item = qs("\L\c5Sr. TRG Platform Leads\n\c0Kyle Carey\nJason Harris\n")
	}
	{
		item = qs("\L\c5TRG Platform Leads\n\c0Paul Carrion\nBrian Bensi\nTomo Shikami")
	}
	{
		item = qs("\L\c5TRG Testers\n\c0Alyssa Delhotal\nBrian Baker\nKeith Kodama")
	}
	{
		item = qs("\LColin Kawakami\nStefan Goodreau\nJohn McCurry\nKirt Sanchez")
	}
	{
		item = qs("\LElizabeth Hickey-McCoy\nMelvin Allen\nScott Borakove\nScott Winslow")
	}
	{
		heading
		item = qs("\LQA\nNetwork\nLab:")
	}
	{
		item = qs("\L\c5Manager, QA Operations\n\c0Chris Keim\n")
	}
	{
		item = qs("\L\c5QA Network Lab\nSenior Project Lead\n\c0Francis Jimenez\n")
	}
	{
		item = qs("\L\c5QA\nNetwork\nLab Testers\n\c0Leonard Rodriguez\nShamen'e Childress\n")
	}
	{
		heading
		item = qs("\LQA\nMultiplayer Lab:")
	}
	{
		item = qs("\L\c5QA-MPL Project Lead\n\c0Garrett Oshiro\n\n")
	}
	{
		item = qs("\L\c5QA-MPL Floor Leads\n\c0Jessie Jones\nLeonard Rodriguez")
	}
	{
		item = qs("\L\c5QA-MPL Testers\n\c0Matt Brannonh\nSkye Chandler\nEmmanuel Cruz")
	}
	{
		item = qs("\LMatthew Fawbush\nJohn Getty\nGabriel Hidalgo\nBruce James")
	}
	{
		item = qs("\LBobby Jones\nJaemin Kang\nDaniel Kim\nHyun Andy Kim")
	}
	{
		item = qs("\LBrian Lay\nIan Lynch\nJulio Medina\nTravis Otten")
	}
	{
		heading
		item = qs("\LQA Audio\nVisual Lab:")
	}
	{
		item = qs("\L\c5QA-AVL Project Lead\n\c0Victor Durling\n\n")
	}
	{
		item = qs("\L\c5QA-AVL Tester\n\c0Cliff Hooper\n\n")
	}
	{
		heading
		item = qs("\LQA\nBurnroom:")
	}
	{
		item = qs("\L\c5Burn Room Technicians\n\c0Danny Feng\nKai Hsu\nSean Kim, Rodrigo Magana")
	}
	{
		heading
		item = qs("\LQA-MIS:")
	}
	{
		item = qs("\L\c5Senior Manager\nQA Technologies\n\c0Indra Yee\n")
	}
	{
		item = qs("\L\c5QA-MIS Manager\n\c0Dave Garcia-Gomez\n\n")
	}
	{
		item = qs("\L\c5QA-MIS Technicians\n\c0Teddy Hwan\nBrian Martin\nJeremy Torres")
	}
	{
		item = qs("\LLawrence Wei\n\n\n")
	}
	{
		item = qs("\L\c5QA-MIS Web Developer\n\c0Sean Olson\n")
	}
	{
		item = qs("\L\c5QA-MIS\nEquipment Coordinators\n\c0Long Le\nColeman Thaxton\n")
	}
	{
		heading
		item = qs("\LQA Database\nAdministration Group:")
	}
	{
		item = qs("\L\c5QA Lead\nDatabase Administrator\n\c0Jeremy Richards\n")
	}
	{
		item = qs("\L\c5Floor Lead\nDatabase Administrator\n\c0Kelly Huffine\n")
	}
	{
		item = qs("\L\c5DBA Senior Testers\n\c0Timothy Toledo\nChristopher Shanley\nWayne Williams")
	}
	{
		item = qs("\L\c5DBA Tester\n\c0Jon Luce\nJon Luce\nDennis Soh\nNick Chavez")
	}
	{
		heading
		item = qs("\LCustomer\nSupport:")
	}
	{
		item = qs("\L\c5Phone Support Manager\n\c0Gary Bolduc\n\n")
	}
	{
		item = qs("\L\c5E-Mail Support Manager\n\c0Michael Hill\n\n")
	}
	{
		heading
		item = qs("\LCS/QA\nThanks:")
	}
	{
		item = qs("\LMike Clarke\nNadine Theuzillot\nRachel Overton\nAileen Galeas")
	}
	{
		item = qs("\LJeremy Shortell\nDylan Rixford\nMarc Williams\nRichard Pearson")
	}
	{
		item = qs("\LMichael Ryan\nJosé Juan Ornelas\n\n")
	}
	{
		heading
		item = qs("\LProduction Service\nEurope:")
	}
	{
		item = qs("\L\c5Director of Production Services\nEurope\n\c0Barry Kehoe\n")
	}
	{
		item = qs("\L\c5Senior Localisation\nProject Manager\n\c0Fiona Ebbs\n")
	}
	{
		item = qs("\L\c5Localisation\nProject Manager\n\c0David Cooper\n")
	}
	{
		item = qs("\L\c5Localisation\nCoordinators\n\c0Jonas Anderson\nChristian Held")
	}
	{
		item = qs("\L\c5Localisation\nQA Manager\n\c0David Hickey\n")
	}
	{
		item = qs("\L\c5Localisation\nQA Lead\n\c0Dominik Hilse\nJack O'Hara")
	}
	{
		item = qs("\L\c5Localisation\nQA Testers\n\c0Adrian Murphy\nAindreas Kugler")
	}
	{
		item = qs("\LAljoscha Wild\nAlvaro Echague\nAmandine Agic\nAndrew McDonagh")
	}
	{
		item = qs("\LAngie-lee Stahl\nCedric Pioud\nChristoph Stammler\nCiaran Flynn")
	}
	{
		item = qs("\LClaudio Perazzo\nColm Marren\nCormac O' Sullivan\nDamien Dos Santos")
	}
	{
		item = qs("\LDavid Arias\nDeclan Carroll\nEdoardo Malingambi\nEduardo Surian")
	}
	{
		item = qs("\LEric Fabvre-Meltser\nGabriel Raffo\nGiovanni De Grande\nHector Melendez Diaz")
	}
	{
		item = qs("\LJorge Armilles\nJuan Manuel Rodes Arnau\nJustin Neumann\nLetizia Bottoli")
	}
	{
		item = qs("\LLoic Moisan\nLoredana Fioretti\nLorenzo Poncia\nLubos Nemcok")
	}
	{
		item = qs("\LPierre Labie\nRemi Boyes\nRichard McCormack\nRoger Hennessy")
	}
	{
		item = qs("\LSergio Sampalo Alvarez\nStefan Magasitz\nThomas Featherstone\nWerner Nemetz")
	}
	{
		item = qs("\L\c5Burn Lab Technicians\n\c0Derek Brangan\nMark Smith\n")
	}
	{
		item = qs("\L\c5IT Network Technician\n\c0Fergus Lindsay\n\n ")
	}
	{
		item = qs("\L\c5Localization Tools and Support\n\c0Provided by Stephanie Deming & XLOC Inc.")
	}
	{
		heading
		item = qs("\LDemonWare:")
	}
	{
		item = qs("\LDavid 'REspawn' Brennan\nMorgan Brickley\nLuke Burden\nAaron Burt")
	}
	{
		item = qs("\LMichael Collins\nTim Czerniak\nBrendan Dillon\nMalcolm Dowse")
	}
	{
		item = qs("\LEoghan Gaffney\nSteffen Higel\nTony Kelly\nJohn Kirk ")
	}
	{
		item = qs("\LCraig McInnes\nEoin O'Fearghail\nByron Pile\nRuaidhrí Power")
	}
	{
		item = qs("\LTilman Schäefer\nAmy Smith\nEmmanuel Stone\n")
	}
	{
		heading
		item = qs("\LAnimated sequences\nby Titmouse, Inc.:")
	}
	{
		item = qs("\L\c5Creative Producer\n\c0Keith Fay\n\c5Director\n\c0Juno Lee")
	}
	{
		item = qs("\L\c5Background Supervisor\n\c0Antonio Cannobio\n\c5Lead Designer\n\c0Junpei Takayama")
	}
	{
		item = qs("\L\c5Lead Animator\n\c0Jeremy Polgar\n\c5Animator\n\c0Tony Andrade")
	}
	{
		item = qs("\L\c5Animator\n\c0Ryan DeLuca\n\c5Background Paint and Design\n\c0Sung Jin Ahn")
	}
	{
		item = qs("\L\c5Background Painter\n\c0Keyoei Takayama")
	}
	{
		item = qs("\L\c5Background Design\n\c0Roger Oda")
	}
	{
		item = qs("\L\c5Ink & Paint\n\c0Brian Kim")
	}
	{
		item = qs("\L\c5Assistant Character Design\n\c0Gabe Lee\n\c5Digital Compositing\n\c0Keith Kin Yan")
	}
	{
		heading
		item = qs("\LMusic:")
	}
	{
		heading
		item = qs("\L''Ace Of Spades''")
	}
	{
		item = qs("\LWritten by Ian Kilmister, Edward Clarke and Philip Taylor\nPublished by EMI Intertrax Music\nAll Rights Reserved.\nUsed by Permission.")
	}
	{
		heading
		item = qs("\L''Albatross''")
	}
	{
		item = qs("\LWritten By Pepper Keenan and Reed Mullin\nPerformed by Corrosion of Conformity\nCourtesy of\nColumbia Records")
	}
	{
		item = qs("\LBy arrangement with\nSony BMG Music Entertainment\nPublished By \nSony ATV Tunes, LLC")
	}
	{
		heading
		item = qs("\L''All Nightmare Long''\nfrom the album ''Death Magnetic''")
	}
	{
		item = qs("\LWritten by James Hetfield, Lars Ulrich, Kirk Hammett, Robert Trujillo\nPerformed By Metallica\nCourtesy of\nWe're Only In It For The Music and Warner Bros. Records Inc.")
	}
	{
		item = qs("\LBy arrangement with\nWarner Music Group Video game Licensing\n(P) 2008 E/M Ventures\n© 2008 Creeping Death Music (ASCAP)")
	}
	{
		heading
		item = qs("\L''Am I Evil?''")
	}
	{
		item = qs("\LWritten By Sean Harris and Brian Tatler\nPerformed By Diamond Head\nCourtesy Of\nGeffen Records")
	}
	{
		item = qs("\LUnder license from\nUniversal Music Enterprises\nPublished By\nUniversal Music - Z Tunes")
	}
	{
		heading
		item = qs("\L''Armed and Ready''")
	}
	{
		item = qs("\LWritten By Michael Schenker and Gary Barden\nPerformed By Michael Schenker Group\nCourtesy of\nChrysalis Records Ltd")
	}
	{
		item = qs("\LUnder license from\nEMI Film & Television Music\nPublished By\nChrysalis Music (ASCAP)")
	}
	{
		heading
		item = qs("\L''Battery''\nfrom the album ''Master of Puppets''")
	}
	{
		item = qs("\LWritten By James Hetfield, Lars Ulrich\nPerformed By Metallica\nCourtesy of\nWe're Only In It For The Music and Warner Bros. Records Inc.")
	}
	{
		item = qs("\LBy arrangement with\nWarner Music Group Video game Licensing\n(P) 2008 E/M Ventures\n(c) 1986 Creeping Death Music (ASCAP)")
	}
	{
		heading
		item = qs("\L''Beautiful Mourning''")
	}
	{
		item = qs("\LWritten By Adam Duce, Philip Demmel,\nRobert Flynn and Dave McClain\nPerformed by\nMachine Head")
	}
	{
		item = qs("\Lfrom the Roadrunner Records album ''The Blackening,''\nused by permission \nPublished By\nNotting Dale Songs Inc. (ASCAP)")
	}
	{
		heading
		item = qs("\L''Blood & Thunder''")
	}
	{
		item = qs("\LWritten By Brann Dailor, William Hinds,\nWilliam Kelliher and Troy Sanders\nPerformed By\nMastodon")
	}
	{
		item = qs("\LCourtesy Of\nRelapse Records\nPublished By\nDomino Publishing Company of America, Inc.")
	}
	{
		heading
		item = qs("\L''Broken, Beat & Scarred''\nfrom the album ''Death Magnetic''")
	}
	{
		item = qs("\LWritten by James Hetfield, Lars Ulrich, Kirk Hammett, Robert Trujillo\nPerformed By Metallica\nCourtesy of We're Only In It For The Music and\nWarner Bros. Records Inc.")
	}
	{
		item = qs("\LBy arrangement with\nWarner Music Group Video game Licensing\n(P) 2008 E/M Ventures\n© 2008 Creeping Death Music (ASCAP)")
	}
	{
		heading
		item = qs("\L''Creeping Death''\nfrom the album ''Ride The Lightning''")
	}
	{
		item = qs("\LWritten by James Hetfield, Lars Ulrich,\nKirk Hammett, Cliff Burton\nPerformed By Metallica\nCourtesy of We're Only In It For The Music and Elektra Entertainment Group")
	}
	{
		item = qs("\LBy arrangement with\nWarner Music Group Video game Licensing\n(P) 1984 E/M Ventures\n(c) 1984 Creeping Death Music (ASCAP)")
	}
	{
		heading
		item = qs("\L''Cyanide''\nfrom the album ''Death Magnetic''")
	}
	{
		item = qs("\LWritten by James Hetfield, Lars Ulrich, Kirk Hammett, Robert Trujillo\nPerformed By Metallica\nCourtesy of We're Only In It For The Music and\nWarner Bros. Records Inc.")
	}
	{
		item = qs("\LBy arrangement with\nWarner Music Group Video game Licensing\n(P) 2008 E/M Ventures\n© 2008 Creeping Death Music (ASCAP)")
	}
	{
		heading
		item = qs("\L''Demon Cleaner''")
	}
	{
		item = qs("\LWritten By Josh Homme\nPerformed by Kyuss\nCourtesy of Elektra Entertainment Group\nBy arrangement with")
	}
	{
		item = qs("\LWarner Music Group Video game Licensing\n(P) 1994 Elektra Entertainment Group\nPublished By\nBoard Stiff Music")
	}
	{
		heading
		item = qs("\L''Disposable Heroes''\nfrom the album ''Master of Puppets''")
	}
	{
		item = qs("\LWritten by James Hetfield, Lars Ulrich, Kirk Hammett\nPerformed By Metallica\nCourtesy of\nWe're Only In It For The Music and Elektra Entertainment Group")
	}
	{
		item = qs("\LBy arrangement with\nWarner Music Group Video game Licensing\n(P) 1986 E/M Ventures\n(c) 1986 Creeping Death Music (ASCAP)")
	}
	{
		heading
		item = qs("\L''Dyer's Eve''\nfrom the album ''...And Justice For All''")
	}
	{
		item = qs("\LWritten by James Hetfield, Lars Ulrich, Kirk Hammett\nPerformed By Metallica\nCourtesy of We're Only In It For The Music and\nElektra Entertainment Group")
	}
	{
		item = qs("\LBy arrangement with\nWarner Music Group Video Game Licensing\n(P) 1988 E/M Ventures\n(c) 1988 Creeping Death Music (ASCAP)")
	}
	{
		heading
		item = qs("\L''Enter Sandman''\nfrom the album ''Metallica''")
	}
	{
		item = qs("\LWritten by James Hetfield, Lars Ulrich, Kirk Hammett\nPerformed By Metallica\nCourtesy of We're Only In It For The Music and\nElektra Entertainment Group")
	}
	{
		item = qs("\LBy arrangement with\nWarner Music Group Video game Licensing\n(P) 1991 E/M Ventures\n(c) 1991 Creeping Death Music (ASCAP)")
	}
	{
		heading
		item = qs("\L''L'Estasi Dell'oro\n(The Ecstasy Of Gold)''")
	}
	{
		item = qs("\LWritten by Ennio Morricone\nPerformed By Ennio Morricone\nCourtesy of EMI Music Publishing Italia\nUnder license from EMI Film & Television Music")
	}
	{
		item = qs("\LPublished by\nEMI UNART Catalog Inc.\nAll Right Reserved.\nUsed by Permission.")
	}
	{
		heading
		item = qs("\L''Evil''")
	}
	{
		item = qs("\LWritten By Kim Petersen and Hank Shermann\nPerformed By Mercyful Fate\nCourtesy Of\nDiamond Entertainment APS")
	}
	{
		item = qs("\LPublished By\nUniversal Music\nMGB Songs on behalf of\nRode Ster Music")
	}
	{
		heading
		item = qs("\L''Fade To Black''\nfrom the album ''Ride The Lightning''")
	}
	{
		item = qs("\LWritten by James Hetfield, Lars Ulrich, Kirk Hammett, Cliff Burton\nPerformed By Metallica\nCourtesy of\nWe're Only In It For The Music and Elektra Entertainment Group")
	}
	{
		item = qs("\LBy arrangement with\nWarner Music Group Video game Licensing\n(P) 1984 E/M Ventures\n(c) 1984 Creeping Death Music (ASCAP)")
	}
	{
		heading
		item = qs("\L''Fight Fire With Fire''\nfrom the album ''Ride The Lightning''")
	}
	{
		item = qs("\LWritten by James Hetfield, Lars Ulrich, Cliff Burton\nPerformed By Metallica\nCourtesy of We're Only In It For The Music and\nElektra Entertainment Group")
	}
	{
		item = qs("\LBy arrangement with\nWarner Music Group Video game Licensing\n(P) 1984 E/M Ventures\n(c) 1984 Creeping Death Music (ASCAP)")
	}
	{
		heading
		item = qs("\L''For Whom The Bell Tolls''\nfrom the album ''Ride The Lightning''")
	}
	{
		item = qs("\LWritten by James Hetfield, Lars Ulrich, Cliff Burton\nPerformed By Metallica\nCourtesy of We're Only In It For The Music and\nElektra Entertainment")
	}
	{
		item = qs("\LBy arrangement with\nWarner Music Group Video game Licensing\n(P) 1984 E/M Ventures\n(c) 1984 Creeping Death Music (ASCAP)")
	}
	{
		heading
		item = qs("\L''Frantic''\nfrom the album ''St. Anger''")
	}
	{
		item = qs("\LWritten by James Hetfield, Lars Ulrich, Kirk Hammett, Bob Rock\nPerformed By Metallica\nCourtesy of We're Only In It For The Music and\nElektra Entertainment Group")
	}
	{
		item = qs("\LBy arrangement with Warner Music Group Video game Licensing\n(P) 2003 E/M Ventures\n(c) 2003 Creeping Death Music (ASCAP)\nUsed by Permission of EMI Blackwood Music Inc.")
	}
	{
		heading
		item = qs("\L''Fuel''\nfrom the album ''ReLoad''")
	}
	{
		item = qs("\LWritten by James Hetfield, Lars Ulrich, Kirk Hammett\nPerformed By Metallica\nCourtesy of We're Only In It For The Music and\nElektra Entertainment Group")
	}
	{
		item = qs("\LBy arrangement with\nWarner Music Group Video game Licensing\n(P) 1997 E/M Ventures\n© 1997 Creeping Death Music (ASCAP)")
	}
	{
		heading
		item = qs("\L''Hell Bent For Leather''")
	}
	{
		item = qs("\LWritten by Glenn Raymond Tipton\nPerformed by Judas Priest\nCourtesy of Columbia Records\nBy arrangement with Sony BMG Music Entertainment (UK) Limited")
	}
	{
		item = qs("\LPublished by\nEMI April Music Inc.\nAll Right Reserved.\nUsed by Permission.")
	}
	{
		heading
		item = qs("\L''Hit The Lights''\nfrom the album ''Kill 'Em All''")
	}
	{
		item = qs("\LWritten By James Hetfield, Lars Ulrich\nPerformed By Metallica\nCourtesy of We're Only In It For The Music and\nElektra Entertainment Group")
	}
	{
		item = qs("\LBy arrangement with\nWarner Music Group Video game Licensing\n(P) 1983 E/M Ventures\n(c) 1983 Creeping Death Music (ASCAP)")
	}
	{
		heading
		item = qs("\L''King Nothing''\nfrom the album ''Load''")
	}
	{
		item = qs("\LWritten by James Hetfield, Lars Ulrich, Kirk Hammett\nPerformed By Metallica\nCourtesy of We're Only In It For The Music and\nElektra Entertainment Group")
	}
	{
		item = qs("\LBy arrangement with\nWarner Music Group Video Game Licensing\n(P) 1996 E/M Ventures\n(c) 1996 Creeping Death Music (ASCAP)")
	}
	{
		heading
		item = qs("\L''Master of Puppets''\nfrom the album ''Master of Puppets''")
	}
	{
		item = qs("\LWritten by James Hetfield, Lars Ulrich,\nKirk Hammett, Cliff Burton\nPerformed By Metallica\nCourtesy of We're Only In It For The Music and Elektra Entertainment Group")
	}
	{
		item = qs("\LBy arrangement with\nWarner Music Group Video Game Licensing\n(P) 1986 E/M Ventures\n(c) 1986 Creeping Death Music (ASCAP)")
	}
	{
		heading
		item = qs("\L''The Memory Remains''")
	}
	{
		item = qs("\LWritten by James Hetfield, Lars Ulrich\nPerformed By Metallica\nCourtesy of We're Only In It For The Music and\nElektra Entertainment Group")
	}
	{
		item = qs("\LBy arrangement with\nWarner Music Group Video Game Licensing\n(P) 1997 E/M Ventures\n© 1997 Creeping Death Music (ASCAP)")
	}
	{
		heading
		item = qs("\L''Mercyful Fate''\nfrom the album ''Garage, Inc.''")
	}
	{
		item = qs("\LThis Medley consists of the following Mercyful Fate compositions:\n''Evil''; ''Curse Of The Pharaohs'';\n''Satan's Fall''; ''A Corpse Without Soul'';\nand ''Into The Coven''")
	}
	{
		item = qs("\LWritten By Kim Bendix Petersen, Hank Shermann\nPerformed By Metallica\nCourtesy of We're Only In It For The Music and\nElektra Entertainment Group ")
	}
	{
		item = qs("\LBy arrangement with Warner Music Group Video game Licensing\n(P) 2008 E/M Ventures\nPublished by Universal Music\nMGB Songs on behalf of Mercyful Fate Music")
	}
	{
		heading
		item = qs("\L''Mommy's Little Monster''")
	}
	{
		item = qs("\LWritten By Mike Ness\nPerformed By Social Distortion\nCourtesy Of Time Bomb Recordings\nPublished By Rebel Waltz Music c/o Wixen Music Publishing")
	}
	{
		heading
		item = qs("\L''Mother of Mercy''")
	}
	{
		item = qs("\LWritten By Glenn Danzig\nPerformed By Samhain\nCourtesy Of Evilive Records\nPublished Evillive Music (ASCAP)")
	}
	{
		item = qs("\LAdministered by\nReach Global Inc.\nUsed by permission.\nAll rights reserved.")
	}
	{
		item = qs("\LMisfits and Samhain image and logo used by permission\nCourtesy of Glenn Danzig/Evilive Records\nAll rights reserved.\n")
	}
	{
		heading
		item = qs("\L''My Apocalypse''\nfrom the album ''Death Magnetic''")
	}
	{
		item = qs("\LWritten by James Hetfield, Lars Ulrich, Kirk Hammett, Robert Trujillo\nPerformed By Metallica\nCourtesy of We're Only In It For The Music and\nWarner Bros. Records Inc.")
	}
	{
		item = qs("\LBy arrangement with\nWarner Music Group Video game Licensing\n(P) 2008 E/M Ventures\n© 2008 Creeping Death Music (ASCAP)")
	}
	{
		heading
		item = qs("\L''No Leaf Clover''\nfrom the album ''S&M''")
	}
	{
		item = qs("\LWritten By James Hetfield, Lars Ulrich\nPerformed By Metallica\nCourtesy of We're Only In It For The Music and\nElektra Entertainment Group")
	}
	{
		item = qs("\LBy arrangement with\nWarner Music Group Video Game Licensing\n(P) 1999 E/M Ventures\n(c) 1997 Creeping Death Music (ASCAP)")
	}
	{
		heading
		item = qs("\L''Nothing Else Matters''\nfrom the album ''Metallica''")
	}
	{
		item = qs("\LWritten By James Hetfield, Lars Ulrich\nPerformed By Metallica\nCourtesy of We're Only In It For The Music and\nElektra Entertainment Group")
	}
	{
		item = qs("\LBy arrangement with\nWarner Music Group Video Game Licensing\n(P) 1991 E/M Ventures\n(c) 1991 Creeping Death Music (ASCAP)")
	}
	{
		heading
		item = qs("\L''No Excuses''")
	}
	{
		item = qs("\LWritten By Jerry Cantrell\nPerformed by Alice In Chains\nCourtesy of Columbia Records\nBy arrangement with SONY BMG MUSIC ENTERTAINMENT\n(c) 1994 Buttnugget Publishing (SESAC)")
	}
	{
		heading
		item = qs("\L''Orion''\nfrom the album ''Master of Puppets''")
	}
	{
		item = qs("\LWritten by James Hetfield, Lars Ulrich, Cliff Burton\nPerformed By Metallica\nCourtesy of We're Only In It For The Music and\nElektra Entertainment Group")
	}
	{
		item = qs("\LBy arrangement with\nWarner Music Group Video Game Licensing\n(P) 1986 E/M Ventures\n(c) 1986 Creeping Death Music (ASCAP)")
	}
	{
		heading
		item = qs("\L''One''\nfrom the album ''...And Justice For All''")
	}
	{
		item = qs("\LWritten By James Hetfield, Lars Ulrich\nPerformed By Metallica\nCourtesy of We're Only In It For The Music and\nElektra Entertainment Group")
	}
	{
		item = qs("\LBy arrangement with\nWarner Music Group Video Game Licensing\n(P) 1988 E/M Ventures\n(c) 1988 Creeping Death Music (ASCAP)")
	}
	{
		heading
		item = qs("\L''Sad But True''\nfrom the album ''Metallica''")
	}
	{
		item = qs("\LWritten By James Hetfield, Lars Ulrich\nPerformed By Metallica\nCourtesy of We're Only In It For The Music and\nElektra Entertainment Group")
	}
	{
		item = qs("\LBy arrangement with\nWarner Music Group Video Game Licensing\n(P) 1991 E/M Ventures\n(c) 1991 Creeping Death Music (ASCAP)")
	}
	{
		heading
		item = qs("\L''Seek and Destroy''\nfrom the album ''Kill 'Em All''")
	}
	{
		item = qs("\LWritten By James Hetfield, Lars Ulrich\nPerformed By Metallica\nCourtesy of We're Only In It For The Music and\nElektra Entertainment Group")
	}
	{
		item = qs("\LBy arrangement with\nWarner Music Group Video Game Licensing\n(P) 1983 E/M Ventures\n(c) 1983 Creeping Death Music (ASCAP)")
	}
	{
		heading
		item = qs("\L''Stacked Actors''")
	}
	{
		item = qs("\LWritten by Dave Grohl, Nate Mendel and Taylor Hawkins\nPerformed by Foo Fighters\nCourtesy of the RCA Records Label\nBy arrangement with Sony BMG Music Entertainment")
	}
	{
		item = qs("\LPublished by EMI Virgin Songs, Inc. and\nUniversal Music Corp. On behalf of Living Under A Rock Music\nAll Right Reserved.\nUsed by Permission.")
	}
	{
		heading
		item = qs("\L''Stone Cold Crazy''")
	}
	{
		item = qs("\LWritten by John Deacon, Brian May,\nFreddie Mercury and Roger Taylor\nPerformed By Queen\nCourtesy Of Hollywood Records and EMI Records Ltd")
	}
	{
		item = qs("\LPublished by\nGlenwood Music Corporation\nAll Right Reserved.\nUsed by Permission.")
	}
	{
		heading
		item = qs("\L''Suicide & Redemption J.H.''\nfrom the album ''Death Magnetic''")
	}
	{
		item = qs("\LWritten by James Hetfield, Lars Ulrich, Kirk Hammett, Robert Trujillo\nPerformed By Metallica\nCourtesy of We're Only In It For The Music and\nWarner Bros. Records Inc.")
	}
	{
		item = qs("\LBy arrangement with\nWarner Music Group Video game Licensing\n(P) 2008 E/M Ventures\n© 2008 Creeping Death Music (ASCAP)")
	}
	{
		heading
		item = qs("\L''Suicide & Redemption K.H.''\nfrom the album ''Death Magnetic''")
	}
	{
		item = qs("\LWritten by James Hetfield, Lars Ulrich, Kirk Hammett, Robert Trujillo\nPerformed By Metallica\nCourtesy of We're Only In It For The Music and\nWarner Bros. Records Inc.")
	}
	{
		item = qs("\LBy arrangement with\nWarner Music Group Video game Licensing\n(P) 2008 E/M Ventures\n© 2008 Creeping Death Music (ASCAP)")
	}
	{
		heading
		item = qs("\L''That Was Just Your Life''\nfrom the album ''Death Magnetic''")
	}
	{
		item = qs("\LWritten by James Hetfield, Lars Ulrich, Kirk Hammett, Robert Trujillo\nPerformed By Metallica\nCourtesy of We're Only In It For The Music and\nWarner Bros. Records Inc.")
	}
	{
		item = qs("\LBy arrangement with\nWarner Music Group Video game Licensing\n(P) 2008 E/M Ventures\n© 2008 Creeping Death Music (ASCAP)")
	}
	{
		heading
		item = qs("\L''The Black River''")
	}
	{
		item = qs("\LWritten by John Cronise\nPerformed by The Sword\nCourtesy of Kemado Records\nPublished by Blood of Kings Music")
	}
	{
		heading
		item = qs("\L''The Boys Are Back In Town''")
	}
	{
		item = qs("\LWritten By Phil Lynott\nPerformed By Thin Lizzy\nCourtesy Of\nMercury Records Limited")
	}
	{
		item = qs("\LUnder license from\nUniversal Music Enterprises\nPublished By Universal - Polygram Int. Publ., Inc.\nOn behalf of Pippen The Friendly Ranger Music. Co. Ltd.")
	}
	{
		heading
		item = qs("\L''The Day That Never Comes''\nfrom the album ''Death Magnetic''")
	}
	{
		item = qs("\LWritten by James Hetfield, Lars Ulrich, Kirk Hammett, Robert Trujillo\nPerformed By Metallica\nCourtesy of We're Only In It For The Music and\nWarner Bros. Records Inc.")
	}
	{
		item = qs("\LBy arrangement with\nWarner Music Group Video game Licensing\n(P) 2008 E/M Ventures\n© 2008 Creeping Death Music (ASCAP)")
	}
	{
		heading
		item = qs("\L''The End of the Line''\nfrom the album ''Death Magnetic''")
	}
	{
		item = qs("\LWritten by James Hetfield, Lars Ulrich, Kirk Hammett, Robert Trujillo\nPerformed By Metallica\nCourtesy of We're Only In It For The Music and\nWarner Bros. Records Inc.")
	}
	{
		item = qs("\LBy arrangement with\nWarner Music Group Video game Licensing\n(P) 2008 E/M Ventures\n© 2008 Creeping Death Music (ASCAP)")
	}
	{
		heading
		item = qs("\L''The Judas Kiss''\nfrom the album ''Death Magnetic''")
	}
	{
		item = qs("\LWritten by James Hetfield, Lars Ulrich, Kirk Hammett, Robert Trujillo\nPerformed By Metallica\nCourtesy of We're Only In It For The Music and\nWarner Bros. Records Inc.")
	}
	{
		item = qs("\LBy arrangement with\nWarner Music Group Video game Licensing\n(P) 2008 E/M Ventures\n© 2008 Creeping Death Music (ASCAP)")
	}
	{
		heading
		item = qs("\L''The Shortest Straw''\nfrom the album ''...And Justice For All''")
	}
	{
		item = qs("\LWritten By James Hetfield, Lars Ulrich\nPerformed By Metallica\nCourtesy of We're Only In It For The Music and\nElektra Entertainment Group")
	}
	{
		item = qs("\LBy arrangement with\nWarner Music Group Video Game Licensing\n(P) 1988 E/M Ventures\n(c) 1988 Creeping Death Music (ASCAP)")
	}
	{
		heading
		item = qs("\L''The Thing That Should Not Be''\nfrom the album ''Master of Puppets''")
	}
	{
		item = qs("\LWritten by James Hetfield, Lars Ulrich, Kirk Hammett\nPerformed By Metallica\nCourtesy of We're Only In It For The Music and\nElektra Entertainment Group")
	}
	{
		item = qs("\LBy arrangement with\nWarner Music Group Video Game Licensing\n(P) 1986 E/M Ventures\n(c) 1986 Creeping Death Music (ASCAP)")
	}
	{
		heading
		item = qs("\L''The Unforgiven''\nfrom the album ''Metallica''")
	}
	{
		item = qs("\LWritten by James Hetfield, Lars Ulrich, Kirk Hammett\nPerformed By Metallica\nCourtesy of We're Only In It For The Music and\nElektra Entertainment Group")
	}
	{
		item = qs("\LBy arrangement with\nWarner Music Group Video Game Licensing\n(P) 1991 E/M Ventures\n© 1991 Creeping Death Music (ASCAP)")
	}
	{
		heading
		item = qs("\L''The Unforgiven III''\nfrom the album ''Death Magnetic''")
	}
	{
		item = qs("\LWritten by James Hetfield, Lars Ulrich, Kirk Hammett, Robert Trujillo\nPerformed By Metallica\nCourtesy of We're Only In It For The Music and\nWarner Bros. Records Inc.")
	}
	{
		item = qs("\LBy arrangement with\nWarner Music Group Video game Licensing\n(P) 2008 E/M Ventures\n© 2008 Creeping Death Music (ASCAP)")
	}
	{
		heading
		item = qs("\L''Toxicity''")
	}
	{
		item = qs("\LWritten By John Dolmayan, Daron Malakian,\nShavo Odadjian and Serj Tankian\nPerformed by\nSystem of a Down")
	}
	{
		item = qs("\LCourtesy of American Recordings & Columbia Records\nBy arrangement with Sony BMG Music Entertainment\nPublished By\nSony ATV Tunes LLC o/b/o Ddevil Music")
	}
	{
		heading
		item = qs("\L''Tuesday's Gone''")
	}
	{
		item = qs("\LWritten By Allen Collins and Ronald Vanzant\nPerformed By Lynyrd Skynyrd\nCourtesy Of\nGeffen Records")
	}
	{
		item = qs("\LUnder license from\nUniversal Music Enterprises\nPublished By Songs Of Universal, Inc. on behalf of itself and\nLongitude Music Co.")
	}
	{
		heading
		item = qs("\L''Turn the Page (Live)''")
	}
	{
		item = qs("\LWritten By Bob Seger\nPerformed by Bob Seger & The Silver Bullet Band\nCourtesy of Capitol Records, LLC.\nUnder license from EMI Film & Television Music\nPublished By Gear Publishing Co")
	}
	{
		heading
		item = qs("\L''War Inside My Head''")
	}
	{
		item = qs("\LWritten by Louis Mayorga and Mike Muir\nPerformed by Suicidal Tendencies\nCourtesy of Epic Records\nBy arrangement with Sony BMG Music Entertainment\nPublished by You'll Be Sorry Music, BMI")
	}
	{
		heading
		item = qs("\L''War Ensemble''")
	}
	{
		item = qs("\LWritten by Tomas E. Araya; Jeff Hanneman\nPerformed by Slayer\nCourtesy of\nAmerican Recordings/Columbia Records")
	}
	{
		item = qs("\LBy arrangement with\nSony BMG Music Entertainment\nPublished by Universal Music\nMGB Songs on behalf of itself and Death's Head Music")
	}
	{
		heading
		item = qs("\L''Welcome Home (Sanitarium)''\nfrom the album ''Master of Puppets''")
	}
	{
		item = qs("\LWritten by James Hetfield, Lars Ulrich, Kirk Hammett\nPerformed By Metallica\nCourtesy of We're Only In It For The Music and\nElektra Entertainment Group")
	}
	{
		item = qs("\LBy arrangement with\nWarner Music Group Video Game Licensing\n(P) 1986 E/M Ventures\n© 1986 Creeping Death Music (ASCAP)")
	}
	{
		heading
		item = qs("\L''Wherever I May Roam''\nfrom the album ''Metallica''")
	}
	{
		item = qs("\LWritten By James Hetfield, Lars Ulrich\nPerformed By Metallica\nCourtesy of We're Only In It For The Music and\nElektra Entertainment Group")
	}
	{
		item = qs("\LBy arrangement with\nWarner Music Group Video Game Licensing\n(P) 1991 E/M Ventures\n© 1991 Creeping Death Music (ASCAP)")
	}
	{
		heading
		item = qs("\L''Whiplash''\nfrom the album ''Kill 'Em All''")
	}
	{
		item = qs("\LWritten By James Hetfield, Lars Ulrich\nPerformed By Metallica\nCourtesy of We're Only In It For The Music and\nElektra Entertainment Group")
	}
	{
		item = qs("\LBy arrangement with\nWarner Music Group Video Game Licensing\n(P) 1983 E/M Ventures\n© 1983 Creeping Death Music (ASCAP)")
	}
	{
		item = qs("\LGuitar Hero Metallica © 2009 Activision Publishing, Inc.\nGuitar Hero, Activision and RedOctane are registered trademarks of Activision Publishing, Inc.\nMetallica is a registered trademark of Metallica.\nCovered by one or more of the following patents:\nU.S. Patent Nos. 6379244, 6582309, 6609979, 6425822, 6225547,")
	}
	{
		item = qs("\L6607446, 6342665, 6769689, 6645067, 6252153, 6758753, 6554711,\n6347998, 6390923, 6612931, 6461239, 6915488, 6638160, 6821203\n5739457, 6018121, 6268557, 6369313, 6835887 and D441403; patents pending.\nThe ratings icon is a registered trademark of the Entertainment Software Association\nAll other trademarks and trade names are the properties of their respective owners.")
	}
	{
		item = qs("\L\n\nAll rights reserved.\n\n")
	}
]
