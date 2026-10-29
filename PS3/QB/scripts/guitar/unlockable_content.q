Bonus_Songs = {
	prefix = 'bonus'
	num_tiers = 1
	tier1 = {
		title = qs("Bonus songs")
		songs = [
			tenseconddebug
			elevenseconddebug
		]
		level = load_z_artdeco
		defaultunlocked = 0
	}
}
Bonus_Videos = [
	{
		text = qs("METALLICA INTRO")
		id = GHM_Movie_Intro
		movie = 'GHM_Movie_Intro'
		unlocked
	}
	{
		text = qs("CAREER MOVIE 1")
		id = GHM_Movie1
		movie = 'GHM_Movie1'
	}
	{
		text = qs("CAREER MOVIE 2")
		id = GHM_Movie2
		movie = 'GHM_Movie2'
	}
	{
		text = qs("CAREER MOVIE 3")
		id = GHM_Movie3
		movie = 'GHM_Movie3'
	}
	{
		text = qs("CAREER MOVIE 4")
		id = GHM_Movie4
		movie = 'GHM_Movie4'
	}
	{
		text = qs("METALLICA OUTRO")
		id = GHM_Movie_Outro
		movie = 'GHM_Movie_Outro'
	}
	{
		text = qs("THE STONE")
		id = stone_intro
		movie = 'stone_intro'
	}
	{
		text = qs("\LCREEPING DEATH")
		id = GHM_Movie_CreepingDeath
		movie = 'CreepingDeath'
		unlocked
	}
	{
		text = qs("\LFOR WHOM THE BELL TOLLS")
		id = GHM_Movie_ForWhomTheBellTolls
		movie = 'ForWhomTheBellTolls'
		unlocked
	}
	{
		text = qs("\LMASTER OF PUPPETS")
		id = GHM_Movie_MasterOfPuppets
		movie = 'MasterOfPuppets'
		unlocked
	}
	{
		text = qs("\LMERCYFUL FATE")
		id = GHM_Movie_MercyfulFate
		movie = 'MercyfulFate'
		unlocked
	}
	{
		text = qs("\LORION")
		id = GHM_Movie_Orion
		movie = 'Orion'
		unlocked
	}
	{
		text = qs("\LSEEK AND DESTROY")
		id = GHM_Movie_SeekAndDestroy
		movie = 'SeekAndDestroy'
		unlocked
	}
	{
		text = qs("\LTHE SHORTEST STRAW")
		id = GHM_Movie_TheShortestStraw
		movie = 'TheShortestStraw'
		unlocked
	}
	{
		text = qs("\LFAN SHRINE")
		id = Fanshrine
		movie = 'Fanshrine'
		unlocked
	}
	{
		text = qs("CREDITS")
		id = credits
		movie = 'credits'
		unlocked
	}
	{
		text = qs("NEVERSOFT LOGO")
		id = ns_logo
		movie = 'ns_logo'
		unlocked
	}
	{
		text = qs("RED OCTANE LOGO")
		id = ro_logo
		movie = 'ro_logo'
		unlocked
	}
	{
		text = qs("ACTIVISION LOGO")
		id = atvi
		movie = 'atvi'
		unlocked
	}
]
Bonus_Songs_Info = [
]
progression_band_rewards = [
	{
		stars = 6
		level = load_z_Tushino
	}
	{
		stars = 26
		level = load_z_MoP
	}
	{
		stars = 36
		level = load_z_Justice
	}
	{
		stars = 50
		level = load_z_meadowlands
	}
	{
		stars = 60
		level = load_z_Donnington
	}
	{
		stars = 72
		level = load_z_IceCave
	}
	{
		song = TheThingThat
		level = load_z_Stone
	}
	{
		song = AceOfSpades
		group_name = qs("\LLemmy!")
		character = Lemmy_2
	}
	{
		song = AceOfSpades
		hidden = 1
		car_pieces = [
			{
				part = CAS_Bass_Body
				desc_id = Bass15_Custom_Lemmy
			}
		]
	}
	{
		song = Evil
		group_name = qs("\LKing Diamond!")
		character = KingDiamond
	}
	{
		stars = 21
		group_name = qs("\LBand-damn-a Pants")
		car_pieces = [
			{
				part = CAS_Female_Legs
				desc_id = F_Mtl_Legs_Bandana
			}
		]
	}
	{
		stars = 21
		group_name = qs("\LBullet Pants")
		car_pieces = [
			{
				part = CAS_Male_Legs
				desc_id = M_Punk_Legs_Bullet
			}
		]
	}
	{
		stars = 45
		group_name = qs("\LHunk O' Denim")
		car_pieces = [
			{
				part = CAS_Female_Torso
				desc_id = F_MTL_Torso_Dvest
			}
		]
	}
	{
		stars = 45
		group_name = qs("\LFull Sleeves")
		car_pieces = [
			{
				part = CAS_Male_Torso
				desc_id = M_Metl_Torso_Unbttond
			}
		]
	}
	{
		stars = 55
		group_name = qs("\LShinigami Guitar")
		car_pieces = [
			{
				part = CAS_Guitar_Body
				desc_id = GTR66_ESP_Shini
			}
		]
	}
	{
		stars = 100
		group_name = qs("\LZach Harmon!")
		character = ZachHarmon
	}
	{
		stars = 100
		group_name = qs("\LZach Harmon Classic!")
		character = ZachHarmon_Alt
	}
	{
		stars = 200
		group_name = qs("\LTattoo Guitar")
		car_pieces = [
			{
				part = CAS_Guitar_Body
				desc_id = GTR63b_ESP_EX
			}
		]
	}
	{
		stars = 200
		group_name = qs("\LBlue Tiki Bass")
		car_pieces = [
			{
				part = CAS_Bass_Body
				desc_id = Bass3_ESP_Tiki_03
			}
		]
	}
]
progression_guitar_rewards = [
	{
		stars = 6
		level = load_z_Tushino
	}
	{
		stars = 26
		level = load_z_MoP
	}
	{
		stars = 36
		level = load_z_Justice
	}
	{
		stars = 50
		level = load_z_meadowlands
	}
	{
		stars = 60
		level = load_z_Donnington
	}
	{
		stars = 72
		level = load_z_IceCave
	}
	{
		song = TheThingThat
		level = load_z_Stone
	}
	{
		song = AceOfSpades
		group_name = qs("\LLemmy!")
		character = Lemmy_2
	}
	{
		song = AceOfSpades
		hidden = 1
		car_pieces = [
			{
				part = CAS_Bass_Body
				desc_id = Bass15_Custom_Lemmy
			}
		]
	}
	{
		song = Evil
		group_name = qs("\LKing Diamond!")
		character = KingDiamond
	}
	{
		stars = 21
		group_name = qs("\LKirk Hammett Spider Guitar")
		car_pieces = [
			{
				part = CAS_Guitar_Body
				desc_id = GTR8_ESP_Spider
			}
		]
	}
	{
		stars = 21
		group_name = qs("\LJames Hetfield Grynch Guitar")
		car_pieces = [
			{
				part = CAS_Guitar_Body
				desc_id = GTR_31b_Grynch
			}
		]
	}
	{
		stars = 45
		group_name = qs("\LKirk Hammett Wavecaster Guitar")
		car_pieces = [
			{
				part = CAS_Guitar_Body
				desc_id = GTR38_WAVE
			}
		]
	}
	{
		stars = 45
		group_name = qs("\LCliff Burton Tribute Guitar")
		car_pieces = [
			{
				part = CAS_Guitar_Body
				desc_id = GTR5_Cliff_Burton
			}
		]
	}
	{
		stars = 55
		group_name = qs("\LMarcus Fretshreder!")
		character = Guitarist
	}
	{
		stars = 100
		group_name = qs("\LKirk Hammett!")
		character = Kirk_2
	}
	{
		stars = 150
		group_name = qs("\L80's Kirk!")
		character = Kirk_ALT_2
	}
	{
		stars = 200
		group_name = qs("\LZombie Kirk!")
		character = Kirk_ZomB_2
	}
]
progression_bass_rewards = [
	{
		stars = 6
		level = load_z_Tushino
	}
	{
		stars = 26
		level = load_z_MoP
	}
	{
		stars = 36
		level = load_z_Justice
	}
	{
		stars = 50
		level = load_z_meadowlands
	}
	{
		stars = 60
		level = load_z_Donnington
	}
	{
		stars = 72
		level = load_z_IceCave
	}
	{
		song = TheThingThat
		level = load_z_Stone
	}
	{
		song = AceOfSpades
		group_name = qs("\LLemmy!")
		character = Lemmy_2
	}
	{
		song = AceOfSpades
		hidden = 1
		car_pieces = [
			{
				part = CAS_Bass_Body
				desc_id = Bass15_Custom_Lemmy
			}
		]
	}
	{
		song = Evil
		group_name = qs("\LKing Diamond!")
		character = KingDiamond
	}
	{
		stars = 21
		group_name = qs("\LMean Green Bass")
		car_pieces = [
			{
				part = CAS_Bass_Body
				desc_id = Bass13_Mean_Green
			}
		]
	}
	{
		stars = 45
		group_name = qs("\LKlown Bass")
		car_pieces = [
			{
				part = CAS_Bass_Body
				desc_id = Bass5_ESP_Clown_05
			}
		]
	}
	{
		stars = 55
		group_name = qs("\LShirley Crowley!")
		character = bassist
	}
	{
		stars = 100
		group_name = qs("\LRob Trujillo!")
		character = Rob_2
	}
	{
		stars = 150
		group_name = qs("\LSuicidal Rob Trujillo!")
		character = Rob_ALT_2
	}
	{
		stars = 200
		group_name = qs("\LZombie Rob!")
		character = Rob_ZomB_2
	}
]
progression_drum_rewards = [
	{
		stars = 6
		level = load_z_Tushino
	}
	{
		stars = 26
		level = load_z_MoP
	}
	{
		stars = 36
		level = load_z_Justice
	}
	{
		stars = 50
		level = load_z_meadowlands
	}
	{
		stars = 60
		level = load_z_Donnington
	}
	{
		stars = 72
		level = load_z_IceCave
	}
	{
		song = TheThingThat
		level = load_z_Stone
	}
	{
		song = AceOfSpades
		group_name = qs("\LLemmy!")
		character = Lemmy_2
	}
	{
		song = AceOfSpades
		hidden = 1
		car_pieces = [
			{
				part = CAS_Bass_Body
				desc_id = Bass15_Custom_Lemmy
			}
		]
	}
	{
		song = Evil
		group_name = qs("\LKing Diamond!")
		character = KingDiamond
	}
	{
		stars = 21
		group_name = qs("\LDouble Bass Drum Kit!")
		car_pieces = [
			{
				part = CAS_Drums
				desc_id = DoubleBass
			}
		]
	}
	{
		stars = 45
		group_name = qs("\LMonster Drum Kit!")
		car_pieces = [
			{
				part = CAS_Drums
				desc_id = QuadBassKit2
			}
		]
	}
	{
		stars = 55
		group_name = qs("\LMatty Canz!")
		character = Drummer
	}
	{
		stars = 100
		group_name = qs("\LLars Ulrich!")
		character = LarsUlrich_2
	}
	{
		stars = 150
		group_name = qs("\L80's Lars!")
		character = LarsUlrich_AL2
	}
	{
		stars = 200
		group_name = qs("\LZombie Lars!")
		character = LarsUlrich_Zmb2
	}
]
progression_vocals_rewards = [
	{
		stars = 6
		level = load_z_Tushino
	}
	{
		stars = 26
		level = load_z_MoP
	}
	{
		stars = 36
		level = load_z_Justice
	}
	{
		stars = 50
		level = load_z_meadowlands
	}
	{
		stars = 60
		level = load_z_Donnington
	}
	{
		stars = 72
		level = load_z_IceCave
	}
	{
		song = TheThingThat
		level = load_z_Stone
	}
	{
		song = AceOfSpades
		group_name = qs("\LLemmy!")
		character = Lemmy_2
	}
	{
		song = AceOfSpades
		hidden = 1
		car_pieces = [
			{
				part = CAS_Bass_Body
				desc_id = Bass15_Custom_Lemmy
			}
		]
	}
	{
		song = Evil
		group_name = qs("\LKing Diamond!")
		character = KingDiamond
	}
	{
		stars = 21
		group_name = qs("\LStrapped Skirt")
		car_pieces = [
			{
				part = CAS_Female_Legs
				desc_id = F_Metl_Legs_Strapped
			}
		]
	}
	{
		stars = 21
		group_name = qs("\LGrieves")
		car_pieces = [
			{
				part = CAS_Male_Legs
				desc_id = M_Metl_Legs_Armor
			}
		]
	}
	{
		stars = 45
		group_name = qs("\LLace Over Tank Shirt")
		car_pieces = [
			{
				part = CAS_Female_Torso
				desc_id = F_Metl_Torso_LaceTank
			}
		]
	}
	{
		stars = 45
		group_name = qs("\LSuit of Armor")
		car_pieces = [
			{
				part = CAS_Male_Torso
				desc_id = M_Metl_Torso_Armor
			}
		]
	}
	{
		stars = 55
		group_name = qs("\LRiki Lee!")
		character = singer
	}
	{
		stars = 100
		group_name = qs("\LJames Hetfield!")
		character = James_2
	}
	{
		stars = 150
		group_name = qs("\L80's James!")
		character = James_ALT_2
	}
	{
		stars = 200
		group_name = qs("\LZombie James!")
		character = James_ZomB_2
	}
]
