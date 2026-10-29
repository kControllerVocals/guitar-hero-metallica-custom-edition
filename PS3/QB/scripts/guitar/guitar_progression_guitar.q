GH4_Career_Guitar_Songs = {
	prefix = 'career_guitar'
	part = guitar
	num_tiers = 9
	tier1 = {
		$gh4_1_intro_tier
	}
	tier2 = {
		title = qs("\LTushino Air Field")
		songs = [
			MotherOfMercy
			TurnThePage
			NoExcuses
			TuesdaysGone
			Albatross
		]
		stars = 6
		level = load_z_Tushino
	}
	tier3 = {
		title = qs("\LMetallica at Tushino")
		songs = [
			nothingelsematters
			kingnothing
			EnterSandman
			Orion
			NoLeafClover
		]
		stars = 16
		encore_stars = 16
		level = load_z_Tushino
	}
	tier4 = {
		title = qs("\LHammersmith Apollo")
		songs = [
			TheBoysAreBack
			StackedActors
			BlackRiver
			WarInsideMyHead
			Toxicity
			SadButTrue
			TheMemoryRemains
			fuel
			WhereverIMayRoam
			sanitarium
		]
		stars = 26
		encore_stars = 31
		level = load_z_MoP
	}
	tier5 = {
		title = qs("\LDamaged Justice Tour")
		songs = [
			DemonCleaner
			stonecoldcrazy
			MommysLittleMonster
			ArmedAndReady
			HellBentForLeather
			frantic
			fadetoblack
			allnightmarelong
			mercyfulfate
			whiplash
		]
		stars = 36
		encore_stars = 43
		level = load_z_Justice
	}
	tier6 = {
		title = qs("\LThe Meadowlands")
		songs = [
			BloodAndThunder
			BeautifulMourning
			AceOfSpades
			hitthelights
			seekanddestroy
			CreepingDeath
			masterofpuppets
			battery
		]
		stars = 50
		encore_stars = 55
		level = load_z_meadowlands
	}
	tier7 = {
		title = qs("\LDonington Park")
		songs = [
			AmIEvil
			Evil
			WarEnsemble
			ONE
			theshorteststraw
			DyersEve
			disposeableheroes
			FightFireWithFire
		]
		stars = 60
		encore_stars = 67
		level = load_z_Donnington
	}
	tier8 = {
		title = qs("\LThe Ice Cave")
		songs = [
			TheThingThat
		]
		stars = 72
		level = load_z_IceCave
	}
	tier9 = {
		title = qs("Death Magnetic Downloadable Content")
		songs = [
			ThatWasJustYourLife
			TheEndOfTheLine
			BrokenBeatAndScarred
			TheDayThatNeverComes
			Cyanide
			TheUnforgivenIII
			TheJudasKiss
			SuicideAndRedemptionJ
			SuicideAndRedemptionK
			MyApocalypse
		]
		stars = 0
		level = load_z_Stone
	}
}
GH4_Career_Guitar_Progression_Unlock_Order = {
	name = 'Career_Guitar'
	freegigs = {
		gig1 = {
			name = 'gig1'
			num = 1
		}
		gig2 = {
			name = 'gig2'
			num = 2
		}
		gig3 = {
			name = 'gig3'
			num = 3
		}
		gig4 = {
			name = 'gig4'
			num = 4
		}
		gig5 = {
			name = 'gig5'
			num = 5
		}
		gig6 = {
			name = 'gig6'
			num = 6
		}
		gig7 = {
			name = 'gig7'
			num = 7
		}
		gig8 = {
			name = 'gig8'
			num = 8
		}
		gig9 = {
			name = 'gig9'
			num = 9
		}
	}
}
GH4_Career_Guitar_Gig_Complete_Params = {
	Career_Guitar
	unlock_order = GH4_Career_Guitar_Progression_Unlock_Order
	part = 'Guitar'
}
GH4_Career_Guitar_Progression = [
	{
		name = set_initial_states
		type = Scr
		atom_script = Progression_Career_Guitar_Init
		atom_params = {
		}
	}
	{
		name = guitar_career_gig1_complete
		type = Scr
		atom_script = Progression_Career_Gig_Complete
		atom_params = $GH4_Career_Guitar_Gig_Complete_Params
		depends_on = [
			{
				type = Scr
				Scr = Progression_Career_Check_Gig_Complete
				params = {
					Career_Guitar
					gig = 1
				}
			}
		]
	}
	{
		name = end_of_first_update
		type = Scr
		atom_script = Progression_Career_Guitar_EndOfFirstUpdate
		atom_params = {
		}
	}
]

script Progression_Career_Guitar_Init 
	printf \{qs("\LProgression_Career_Guitar_Init")}
endscript

script Progression_Career_Guitar_EndOfFirstUpdate 
	printf \{qs("\LProgression_Career_Guitar_EndOfFirstUpdate")}
endscript

script update_progression_guitar 
	UpdateAtoms \{name = Progression}
endscript
