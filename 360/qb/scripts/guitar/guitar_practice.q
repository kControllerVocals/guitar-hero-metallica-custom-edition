Practice_NoteMapping = [
	{
		MidiNote = 60
		Scr = play_drum_sample_randomized
		params = {
			pad = kick
			buss = PracticeMode_Drums
		}
	}
	{
		MidiNote = 61
		Scr = play_drum_sample_randomized
		params = {
			pad = tom2
			buss = PracticeMode_Drums
		}
	}
	{
		MidiNote = 62
		Scr = play_drum_sample_randomized
		params = {
			pad = tom2
			buss = PracticeMode_Drums
		}
	}
	{
		MidiNote = 63
		Scr = play_drum_sample_randomized
		params = {
			pad = tom1
			buss = PracticeMode_Drums
		}
	}
	{
		MidiNote = 64
		Scr = play_drum_sample_randomized
		params = {
			pad = snare
			buss = PracticeMode_Drums
		}
	}
	{
		MidiNote = 65
		Scr = play_drum_sample_randomized
		params = {
			pad = hihat
			buss = PracticeMode_Drums
			chh_ride
			velocity = 50
		}
	}
	{
		MidiNote = 66
		Scr = play_drum_sample_randomized
		params = {
			pad = hihat
			buss = PracticeMode_Drums
		}
	}
	{
		MidiNote = 67
		Scr = play_drum_sample_randomized
		params = {
			pad = cymbal
			buss = PracticeMode_Drums
			velocity = 50
			chh_ride
		}
	}
	{
		MidiNote = 68
		Scr = play_drum_sample_randomized
		params = {
			pad = cymbal
			buss = PracticeMode_Drums
		}
	}
	{
		MidiNote = 69
		Scr = play_drum_sample_randomized
		params = {
			pad = cymbal
			buss = PracticeMode_Drums
			velocity = 90
		}
	}
]
Practice_Slomo_Drum_NoteMapping = [
	{
		MidiNote = 60
		Scr = play_drum_sample
		params = {
			pad = kick
			buss = Drums_InGame_Kick
		}
	}
	{
		MidiNote = 61
		Scr = play_drum_sample
		params = {
			pad = tom2
			buss = Drums_InGame_Toms
		}
	}
	{
		MidiNote = 62
		Scr = play_drum_sample
		params = {
			pad = tom2
			buss = Drums_InGame_Toms
		}
	}
	{
		MidiNote = 63
		Scr = play_drum_sample
		params = {
			pad = tom1
			buss = Drums_InGame_Toms
		}
	}
	{
		MidiNote = 64
		Scr = play_drum_sample
		params = {
			pad = snare
			buss = Drums_InGame_Snare
		}
	}
	{
		MidiNote = 65
		Scr = play_drum_sample
		params = {
			pad = hihat
			buss = Drums_InGame_Cymbals
			velocity = 50
		}
	}
	{
		MidiNote = 66
		Scr = play_drum_sample
		params = {
			pad = hihat
			buss = Drums_InGame_Cymbals
		}
	}
	{
		MidiNote = 67
		Scr = play_drum_sample
		params = {
			pad = cymbal
			buss = Drums_InGame_Cymbals
			velocity = 50
		}
	}
	{
		MidiNote = 68
		Scr = play_drum_sample
		params = {
			pad = cymbal
			buss = Drums_InGame_Cymbals
		}
	}
	{
		MidiNote = 69
		Scr = play_drum_sample
		params = {
			pad = cymbal
			buss = Drums_InGame_Cymbals
			velocity = 90
		}
	}
]

script Practice_DummyFunction 
	printf \{qs("\LPractice_DummyFunction")}
endscript
practice_font = fontgrid_title_a1

script practicemode_init 
	<start_index> = $practice_start_index
	if (<start_index> > 0)
		change \{structurename = player1_status
			gem_filler_first_note = 1}
	endif
	if NOT ($current_speedfactor = 1.0)
		if NOT PlayerInfoEquals \{1
				part = drum}
			SetNoteMappings \{section = Drums
				mapping = $Practice_NoteMapping}
		else
			SetNoteMappings \{section = Drums
				mapping = $Practice_Slomo_Drum_NoteMapping}
		endif
	endif
	if PlayerInfoEquals \{1
			part = Bass}
		SetSoundBussParams {leadGTR_balance = {vol = (($Default_BussSet.leadGTR_balance.vol) -3.5)} time = 0.1}
		SetSoundBussParams {bass_balance = {vol = (($Default_BussSet.bass_balance.vol) + 2)} time = 0.1}
	endif
	if PlayerInfoEquals \{1
			part = drum}
		SetSoundBussParams {Drums_InGame = {vol = (($Default_BussSet.Drums_InGame.vol) - 2.5)} time = 0.1}
	else
		SetSoundBussParams {Drums_InGame = {vol = (($Default_BussSet.Drums_InGame.vol) - 4)} time = 0.1}
	endif
	hide_band
	CreateScreenElement \{type = ContainerElement
		parent = root_window
		id = practice_container
		pos = (0.0, 0.0)}
	CreateScreenElement {
		type = TextElement
		parent = practice_container
		id = practice_sectiontext
		scale = (1.1, 0.9)
		pos = (640.0, 100.0)
		font = ($practice_font)
		rgba = [255 255 255 255]
		alpha = 0
		just = [center top]
		z_priority = 3
	}
	spawnscriptnow \{practicemode_section}
endscript

script practicemode_section 
	PracticeDrums_FadeIn
	if ($special_event_stage != 0)
		return
	endif
	if PlayerInfoEquals \{1
			part = Vocals}
		return
	endif
	get_song_section_array
	GetMarkerArraySize array = <song_section_array>
	current_section_index = 0
	begin
	if ($current_section_array_entry >= <array_size>)
		break
	endif
	GetSongTimeMs
	if (<time> > $current_starttime)
		practice_sectiontext :SE_SetProps text = ($current_section_array [($current_section_array_entry)].marker)
		practice_sectiontext :LegacyDoMorph \{alpha = 1.0
			time = 0.5}
		current_section_index = ($current_section_array_entry)
		break
	endif
	Wait \{1
		gameframe}
	repeat
	begin
	if ($current_section_array_entry >= <array_size>)
		break
	endif
	GetSongTimeMs
	if (<time> > $current_endtime)
		practice_sectiontext :LegacyDoMorph \{alpha = 0.0
			time = 0.5}
		break
	elseif NOT (<current_section_index> = ($current_section_array_entry))
		practice_sectiontext :LegacyDoMorph \{alpha = 0.0
			time = 0.5}
		Wait \{0.5
			second}
		practice_sectiontext :SE_SetProps text = ($current_section_array [($current_section_array_entry)].marker)
		practice_sectiontext :LegacyDoMorph \{alpha = 1.0
			time = 0.5}
		current_section_index = ($current_section_array_entry)
	endif
	Wait \{1
		gameframe}
	repeat
endscript

script practicemode_deinit 
	ClearNoteMappings \{section = practice}
	KillSpawnedScript \{name = practicemode_section}
	if ScreenElementExists \{id = practice_container}
		DestroyScreenElement \{id = practice_container}
	endif
	StopSoundsByBuss \{PracticeMode_Drums}
	if PlayerInfoEquals \{1
			part = Bass}
		SetSoundBussParams {leadGTR_balance = {vol = ($Default_BussSet.leadGTR_balance.vol)} time = 0.1}
		SetSoundBussParams {bass_balance = {vol = ($Default_BussSet.bass_balance.vol)} time = 0.1}
	endif
	SetSoundBussParams {Drums_InGame = {vol = ($Default_BussSet.Drums_InGame.vol)} time = 0.1}
endscript

script play_drum_sample_randomized \{pad = hihat
		velocity = 90}
	if GotParam \{chh_ride}
		v = RandomInteger (30.0, 45.0)
		play_drum_sample velocity = <v> pad = <pad>
	else
		p = RandomInteger (75.0, 110.0)
		play_drum_sample velocity = <p> pad = <pad>
	endif
endscript
