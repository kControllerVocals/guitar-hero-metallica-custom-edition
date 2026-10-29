CAS_Guitar_Body = [
	{
		desc_id = GTR1_ESP_Truckster_01
		frontend_desc = qs("\LTruckster Grey")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR1_ESP_Truckster_01.skin'
		pak_num = 0
		Is_Metallica = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr1_esp_truckster_d_01.dds'
				material = GTR1_ESP_Truckster_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_1
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR1_ESP_EMG_Pkup_2
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR1_ESP_Knob_10_03
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR1_ESP_Bridge_01
				]
			}
		]
	}
	{
		desc_id = GTR2_ESP_Truckster_02
		frontend_desc = qs("\LTruckster Black")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR2_ESP_Truckster_02.skin'
		pak_num = 0
		Is_Metallica = 1
		price = 1000
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr2_esp_truckster_d_02.dds'
				material = GTR2_ESP_Truckster_02_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_1
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR1_ESP_EMG_Pkup_2
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR1_ESP_Knob_10_03
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR1_ESP_Bridge_01
				]
			}
		]
	}
	{
		desc_id = GTR3_ESP_Custom_03
		frontend_desc = qs("\LMcPhail")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR3_ESP_Custom_03.skin'
		pak_num = 0
		Is_Metallica = 1
		price = 5000
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr3_esp_custom_d_01.dds'
				material = GTR3_ESP_Custom_03_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_1
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR3_ESP_EMG_Pkup_2
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR1_ESP_Knob_10_03
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR1_ESP_Bridge_01
				]
			}
		]
	}
	{
		desc_id = GTR4_ESP_Eclipse_01
		frontend_desc = qs("\LEclipse")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR4_ESP_Eclipse_01.skin'
		pak_num = 0
		is_esp = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_esp_eclipse_d_01.dds'
				material = GTR4_ESP_Eclipse_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("FINISHES")
				mask = $GTR4_ESP_Eclipse
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_esp_eclipse_d_01.dds'
				material = GTR4_ESP_Eclipse_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $GTR4_ESP_Eclipse_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_esp_eclipse_d_01.dds'
				material = GTR4_ESP_Eclipse_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_esp_eclipse_d_01.dds'
				material = GTR4_ESP_Eclipse_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_esp_eclipse_d_01.dds'
				material = GTR4_ESP_Eclipse_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_esp_eclipse_d_01.dds'
				material = GTR4_ESP_Eclipse_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_esp_eclipse_d_01.dds'
				material = GTR4_ESP_Eclipse_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_esp_eclipse_d_01.dds'
				material = GTR4_ESP_Eclipse_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_esp_eclipse_d_01.dds'
				material = GTR4_ESP_Eclipse_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_esp_eclipse_d_01.dds'
				material = GTR4_ESP_Eclipse_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_esp_eclipse_d_01.dds'
				material = GTR4_ESP_Eclipse_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_esp_eclipse_d_01.dds'
				material = GTR4_ESP_Eclipse_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_esp_eclipse_d_01.dds'
				material = GTR4_ESP_Eclipse_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_6
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Neck
				valid = [
					GTR_Fretboard_01
					GTR_Fretboard_02
					GTR_Fretboard_03
					GTR_Fretboard_04
					GTR_Fretboard24_01
					GTR_Fretboard24_02
					GTR_Fretboard24_03
					GTR_Fretboard24_04
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					GTR4_Neckhead_01
					GTR4_Neckhead_02
					GTR4_Neckhead_03
					GTR4_Neckhead_04
					GTR4_Neckhead_05
					GTR4_Neckhead_06
					GTR4_Neckhead_07
				]
			}
			{
				part = CAS_Guitar_Pickguards
				valid = [
					GTR5_Pickguard_01
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR1_ESP_EMG_Pkup_2
					GTR_Pkup_Type1_Blk_2
					GTR3_ESP_EMG_Pkup_2
					GTR6_Pkup_Worngold_2
					GTR6_Pkup_Worngold_2
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					gtr4_esp_knob_10_03
					GTR4_Knob_02
					gtr4_knob_03
					gtr4_knob_04
					gtr4_knob_05
					gtr4_knob_06
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR4_ESP_Bridge_02
					gtr4_esp_bridge_9
					GTR4_Bridge_FR10
				]
			}
		]
	}
	{
		desc_id = GTR5_Cliff_Burton
		frontend_desc = qs("\LJH Cliff Burton")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR5_Cliff_Burton.skin'
		pak_num = 0
		Is_Metallica = 1
		price = 5000
		polaroid = Guitars_Cliff
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr5_cliff_burton_d.dds'
				material = gtr5_cliff_burton_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_1
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					GTR5_Pickguard_01
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR1_ESP_EMG_Pkup_2
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR5_ESP_Knob_10_03
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR5_ESP_Bridge_05
				]
			}
		]
		$car_rocker_guitars_factoredGlobal_17
	}
	{
		desc_id = GTR6_Iron_Cross
		frontend_desc = qs("\LIron Cross")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR6_Iron_Cross.skin'
		pak_num = 0
		Is_Metallica = 1
		price = 2500
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr6_iron_cross_d.dds'
				material = GTR6_Iron_Cross_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_1
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					GTR5_Pickguard_01
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR6_Pkup_Worngold_2
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR6_Knob_1_03
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR6_Bridge_03
				]
			}
		]
	}
	{
		desc_id = GTR7_Old_School
		frontend_desc = qs("\LJH Old School")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR7_Old_School.skin'
		pak_num = 0
		Is_Metallica = 1
		price = 2000
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr7_old_school_d.dds'
				material = GTR7_Old_School_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_1
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR6_Pkup_Worngold_2
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR6_Knob_1_03
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR6_Bridge_03
				]
			}
		]
	}
	{
		desc_id = GTR8_ESP_Spider
		frontend_desc = qs("\LKH Spider")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR8_ESP_Spider.skin'
		pak_num = 0
		Is_Metallica = 1
		price = 5000
		polaroid = Guitars_Spider
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr8_spider_d.dds'
				material = GTR8_ESP_Spider_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_1
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR8_ESP_EMG_Pkup
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR8_ESP_Knob_10_03
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR8_Bridge_FR
				]
			}
		]
		$car_rocker_guitars_factoredGlobal_17
	}
	{
		desc_id = GTR9_ESP_AX
		frontend_desc = qs("\LAX Series")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR9_ESP_AX.skin'
		pak_num = 1
		is_esp = 1
		price = 500
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_esp_ax_d.dds'
				material = GTR9_ESP_AX_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("FINISHES")
				mask = $GTR9_ESP_AX
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_esp_ax_d.dds'
				material = GTR9_ESP_AX_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $GTR9_ESP_AX_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_esp_ax_d.dds'
				material = GTR9_ESP_AX_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_20
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_esp_ax_d.dds'
				material = GTR9_ESP_AX_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_20
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_esp_ax_d.dds'
				material = GTR9_ESP_AX_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_20
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_esp_ax_d.dds'
				material = GTR9_ESP_AX_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_20
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_esp_ax_d.dds'
				material = GTR9_ESP_AX_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_20
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_esp_ax_d.dds'
				material = GTR9_ESP_AX_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_20
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_esp_ax_d.dds'
				material = GTR9_ESP_AX_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_20
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_esp_ax_d.dds'
				material = GTR9_ESP_AX_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_20
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_esp_ax_d.dds'
				material = GTR9_ESP_AX_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_20
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_esp_ax_d.dds'
				material = GTR9_ESP_AX_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_20
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_esp_ax_d.dds'
				material = GTR9_ESP_AX_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_20
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Neck
				valid = [
					GTR_Fretboard_01
					GTR_Fretboard_02
					GTR_Fretboard_03
					GTR_Fretboard_04
					GTR_Fretboard24_01
					GTR_Fretboard24_02
					GTR_Fretboard24_03
					GTR_Fretboard24_04
				]
			}
			{
				part = CAS_Guitar_Pickguards
				valid = [
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR1_ESP_EMG_Pkup_2
					GTR_Pkup_Type1_Blk_2
					GTR3_ESP_EMG_Pkup_2
					GTR6_Pkup_Worngold_2
					GTR6_Pkup_Worngold_2
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					gtr9_esp_knob_10_02
					GTR9_Knob_02
					gtr9_knob_03
					gtr9_knob_04
					gtr9_knob_04
					gtr9_knob_06
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR9_ESP_Bridge_03
					gtr9_bridge_04
					gtr9_bridge_fr11
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					gtr9_neckhead_01
					GTR9_Neckhead_02
					GTR9_Neckhead_03
					GTR9_Neckhead_04
					GTR9_Neckhead_05
					GTR9_Neckhead_06
					GTR9_Neckhead_07
				]
			}
		]
	}
	{
		desc_id = GTR10_Red_Eclipse
		frontend_desc = qs("\LRed Eye")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR10_Red_Eclipse.skin'
		pak_num = 0
		Is_Metallica = 1
		price = 2000
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR6_Pkup_Worngold_2
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR10_Knob1_03
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR10_Bridge_04
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					GTR10_Neckhead
				]
			}
		]
	}
	{
		desc_id = GTR11_Midnight_Eclipse
		frontend_desc = qs("\LMidnight")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR11_Midnight_Eclipse.skin'
		pak_num = 0
		Is_Metallica = 1
		price = 2000
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR6_Pkup_Worngold_2
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					gtr11_knob1_04
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR11_Bridge_06
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					GTR11_Neckhead
				]
			}
		]
	}
	{
		desc_id = gtr12_esp_v_01
		frontend_desc = qs("\LV Series")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR12_ESP_V_01.skin'
		pak_num = 1
		is_esp = 1
		price = 500
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr12_esp_v_series_d.dds'
				material = GTR12_ESP_V_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("FINISHES")
				mask = $gtr12_esp_v_01
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr12_esp_v_series_d.dds'
				material = GTR12_ESP_V_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $GTR12_ESP_V_01_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr12_esp_v_series_d.dds'
				material = GTR12_ESP_V_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_23
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr12_esp_v_series_d.dds'
				material = GTR12_ESP_V_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_23
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr12_esp_v_series_d.dds'
				material = GTR12_ESP_V_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_23
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr12_esp_v_series_d.dds'
				material = GTR12_ESP_V_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_23
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr12_esp_v_series_d.dds'
				material = GTR12_ESP_V_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_23
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr12_esp_v_series_d.dds'
				material = GTR12_ESP_V_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_23
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr12_esp_v_series_d.dds'
				material = GTR12_ESP_V_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_23
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr12_esp_v_series_d.dds'
				material = GTR12_ESP_V_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_23
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr12_esp_v_series_d.dds'
				material = GTR12_ESP_V_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_23
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr12_esp_v_series_d.dds'
				material = GTR12_ESP_V_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_23
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr12_esp_v_series_d.dds'
				material = GTR12_ESP_V_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_23
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Neck
				valid = [
					GTR_Fretboard24_01
					GTR_Fretboard24_02
					GTR_Fretboard24_03
					GTR_Fretboard24_04
					GTR_Fretboard_01
					GTR_Fretboard_02
					GTR_Fretboard_03
					GTR_Fretboard_04
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					gtr12_neckhead_07
					gtr12_neckhead_01
					gtr12_neckhead_02
					gtr12_neckhead_03
					gtr12_neckhead_04
					gtr12_neckhead_05
				]
			}
			{
				part = CAS_Guitar_Pickguards
				valid = [
					none
					gtr12_pickguard_01
					GTR12_Pickguard_01b
					gtr12_pickguard_02
					GTR12_Pickguard_02b
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR1_ESP_EMG_Pkup_2
					GTR_Pkup_Type1_Blk_2
					GTR3_ESP_EMG_Pkup_2
					GTR6_Pkup_Worngold_2
					GTR6_Pkup_Worngold_2
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					gtr12_esp_knob_01
					gtr12_esp_knob_02
					gtr12_esp_knob_03
					gtr12_esp_knob_04
					gtr12_esp_knob_05
					gtr12_esp_knob_06
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					gtr12_bridge_3
					gtr12_bridge_2
					gtr12_bridge_1
				]
			}
		]
	}
	{
		desc_id = GTR12_Rat_Rod
		frontend_desc = qs("\LRat Rod")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR12_Rat_Rod.skin'
		pak_num = 0
		Is_Metallica = 1
		price = 2000
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr12_rat_rod_d.dds'
				material = GTR12_Rat_Rod_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_1
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR12_ESP_Pkup_2
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR12_ESP_Knob_10_3
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR12_ESP_Bridge_12
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					GTR12_Neckhead12
				]
			}
		]
	}
	{
		desc_id = GTR14_Tiger_Stripe
		frontend_desc = qs("\LTiger Stripe")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR14_Tiger_Stripe.skin'
		pak_num = 0
		Is_Metallica = 1
		price = 2500
		inclusion = [
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR14_Pkup_Worngold_14
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR14_Knob1_04
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR14_Bridge_14
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					GTR14_Neckhead
				]
			}
		]
	}
	{
		desc_id = gtr30_h101
		frontend_desc = qs("\LH Series")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR30_H101.skin'
		pak_num = 1
		is_esp = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr30_h101_d.dds'
				material = GTR30_H_primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("FINISHES")
				mask = $GTR30_H
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr30_h101_d.dds'
				material = GTR30_H_primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $GTR30_H_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_h101_d.dds'
				material = GTR30_H_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_26
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_h101_d.dds'
				material = GTR30_H_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_26
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr30_h101_d.dds'
				material = GTR30_H_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_26
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr30_h101_d.dds'
				material = GTR30_H_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_26
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr30_h101_d.dds'
				material = GTR30_H_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_26
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr30_h101_d.dds'
				material = GTR30_H_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_26
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr30_h101_d.dds'
				material = GTR30_H_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_26
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr30_h101_d.dds'
				material = GTR30_H_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_26
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr30_h101_d.dds'
				material = GTR30_H_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_26
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr30_h101_d.dds'
				material = GTR30_H_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_26
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr30_h101_d.dds'
				material = GTR30_H_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_26
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					gtr30_pickup_d
					gtr30_pickup_e
					gtr30_pickup_f
					GTR30_Pickup_G
					gtr30_pickup_gold
					GTR30_EMG
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR_30_KNOBS_A
					gtr_30_knobs_b
					gtr_30_knobs_c
					gtr_30_knobs_d
					gtr_30_knobs_e
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR30_Brdg_StrgThru
					gtr30_hardware_03
					GTR30_Bridge_D
					gtr_30_bridge_e
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					GTR30_Nekhed_A
					GTR30_Nekhed_B
					GTR30_Nekhed_C
					gtr30_nekhed_d
					gtr30_nekhed_e
					gtr30_nekhed_f
				]
			}
			{
				part = CAS_Guitar_Neck
				valid = [
					GTR_FBoard_V1000
					GTR31_FBoard_02
					GTR31_FBoard_03
				]
			}
		]
	}
	{
		desc_id = GTR31_ESP_VIPER
		frontend_desc = qs("\LViper")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR_31_Viper.skin'
		pak_num = 1
		is_esp = 1
		price = 1250
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr31_viper_d.dds'
				material = GTR_31_Viper_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("FINISHES")
				mask = $GTR31_Viper
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr31_viper_d.dds'
				material = GTR_31_Viper_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $GTR31_Viper_details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_viper_d.dds'
				material = GTR_31_Viper_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_29
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_viper_d.dds'
				material = GTR_31_Viper_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_29
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr31_viper_d.dds'
				material = GTR_31_Viper_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_29
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr31_viper_d.dds'
				material = GTR_31_Viper_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_29
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr31_viper_d.dds'
				material = GTR_31_Viper_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_29
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr31_viper_d.dds'
				material = GTR_31_Viper_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_29
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr31_viper_d.dds'
				material = GTR_31_Viper_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_29
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr31_viper_d.dds'
				material = GTR_31_Viper_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_29
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr31_viper_d.dds'
				material = GTR_31_Viper_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_29
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr31_viper_d.dds'
				material = GTR_31_Viper_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_29
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr31_viper_d.dds'
				material = GTR_31_Viper_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_29
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					none
					gtr31_pgard
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					gtr31_pickup_gold
					gtr31_pickup_d
					gtr31_pickup_e
					gtr31_pickup_f
					GTR31_Pickup_G
					GTR31b_Grynch_EMG
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR_31_KNOBS_VPR
					gtr_31_knobs_b
					gtr_31_knobs_c
					gtr_31_knobs_d
					gtr_31_knobs_e
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR31_Bridge31
					GTR31_Hardware_B
					gtr_31_bridge_e
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					GTR31c_NeckHead
					GTR31c_NeckHead02
					GTR31c_NeckHead03
					GTR31c_NeckHead04
					GTR31c_NeckHead05
					GTR31c_NeckHead06
				]
			}
			{
				part = CAS_Guitar_Neck
				valid = [
					GTR_FBoard_V1000
					GTR31_FBoard_02
					GTR31_FBoard_03
				]
			}
		]
	}
	{
		desc_id = GTR_31b_Grynch
		frontend_desc = qs("\LJH Grynch")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR_31b_Grynch.skin'
		pak_num = 0
		Is_Metallica = 1
		price = 5000
		polaroid = Guitars_Grynch
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_esp_grynch_d.dds'
				material = GTR_31_Grynch_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("FINISHES")
				mask = $CAG_Guitar31_Body
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR31b_Grynch_EMG
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR_31B_KNOBS_VPR
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR31_Bridge_TMatic
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					GTR31b_Neckhead
				]
			}
			{
				part = CAS_Guitar_Neck
				valid = [
					GTR_Fretboard_24
				]
			}
		]
		$car_rocker_guitars_factoredGlobal_17
	}
	{
		desc_id = gtr32_body
		frontend_desc = qs("\LHorizon")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR_32_Body.skin'
		pak_num = 1
		is_esp = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr32_body.dds'
				material = GTR32_Horizon_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("FINISHES")
				mask = $cag_gtr32
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr32_body.dds'
				material = GTR32_Horizon_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $cag_gtr32_details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_body.dds'
				material = GTR32_Horizon_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_body.dds'
				material = GTR32_Horizon_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr32_body.dds'
				material = GTR32_Horizon_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr32_body.dds'
				material = GTR32_Horizon_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr32_body.dds'
				material = GTR32_Horizon_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr32_body.dds'
				material = GTR32_Horizon_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr32_body.dds'
				material = GTR32_Horizon_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr32_body.dds'
				material = GTR32_Horizon_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr32_body.dds'
				material = GTR32_Horizon_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr32_body.dds'
				material = GTR32_Horizon_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr32_body.dds'
				material = GTR32_Horizon_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_6
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR32_Pickup_F
					GTR32_Pickup_Gold
					gtr31_pickup_d
					gtr31_pickup_e
					GTR32_Pickup_G
					GTR32_EMG
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					gtr_32_knobs_a
					GTR_32_KNOBS_B
					gtr_32_knobs_c
					gtr_32_knobs_d
					gtr_32_knobs_e
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR32_Hardware01
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					GTR32_Nekhead01
					GTR32_NeckHead_B
					GTR32_Neckhead_C
					GTR32_Neckhead_D
					GTR32_Neckhead_E
					GTR32_NeckHead_F
				]
			}
			{
				part = CAS_Guitar_Neck
				valid = [
					GTR_FBoard_V1000
					GTR31_FBoard_02
					GTR31_FBoard_03
				]
			}
		]
	}
	{
		desc_id = GTR33_ESP_KH2
		frontend_desc = qs("\LCaution")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR33_ESP_KH2.skin'
		pak_num = 0
		Is_Metallica = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr_33_kirk_kh2_d.dds'
				material = GTR33_KH2_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_33
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR33_Pickup_EMG
					GTR33_Pickup_A
					GTR33_Pickup_B
					GTR33_Pickup_E
					GTR33_Pickup_F
					GTR33_Pickup_Gold
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR33_Knobs_KH2
					gtr_33_knobs_b
					gtr_33_knobs_c
					gtr_33_knobs_c
					gtr_33_knobs_d
					gtr_33_knobs_e
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					gtr33_bridge_fr
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					GTR33_NeckHead
				]
			}
			{
				part = CAS_Guitar_Neck
				valid = [
					GTR33_FBoard_KH2Vint
				]
			}
		]
	}
	{
		desc_id = GTR33D_BASE
		frontend_desc = qs("\LKH Basic")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR33D_BASE.skin'
		pak_num = 1
		is_esp = 1
		price = 750
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33_kh2_wood_d.dds'
				material = GTR33D_Wood_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_33
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr33_kh2_wood_d.dds'
				material = GTR33D_Wood_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_GTR33_details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33_kh2_wood_d.dds'
				material = GTR33D_Wood_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33_kh2_wood_d.dds'
				material = GTR33D_Wood_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr33_kh2_wood_d.dds'
				material = GTR33D_Wood_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr33_kh2_wood_d.dds'
				material = GTR33D_Wood_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr33_kh2_wood_d.dds'
				material = GTR33D_Wood_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr33_kh2_wood_d.dds'
				material = GTR33D_Wood_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr33_kh2_wood_d.dds'
				material = GTR33D_Wood_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr33_kh2_wood_d.dds'
				material = GTR33D_Wood_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr33_kh2_wood_d.dds'
				material = GTR33D_Wood_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr33_kh2_wood_d.dds'
				material = GTR33D_Wood_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr33_kh2_wood_d.dds'
				material = GTR33D_Wood_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_6
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR33_EMG
					GTR33_Pickup_A
					GTR33_Pickup_D
					GTR33_Pickup_E
					GTR33_Pickup_F
					GTR33_Pickup_Gold
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR33_Knobs_KH2
					gtr_33_knobs_b
					gtr_33_knobs_c
					gtr_33_knobs_a
					gtr_33_knobs_d
					gtr_33_knobs_e
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR33_Hardware01Z
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					GTR33d_NekHed
					GTR33D_NekHed_B
					GTR33D_NekHed_C
					GTR33D_NekHead_D
					GTR33D_NekHed_E
					GTR33D_NekHed_F
				]
			}
			{
				part = CAS_Guitar_Neck
				valid = [
					GTR_FBoard_V1000
					GTR31_FBoard_02
					GTR31_FBoard_03
					GTR33D_FBoard_ANNI
				]
			}
		]
	}
	{
		desc_id = gtr33_boris
		frontend_desc = qs("\LKH Boris")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR33_Boris.skin'
		pak_num = 0
		Is_Metallica = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_boris_d.dds'
				material = GTR33D_Boris_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_35
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR33_Pickup_BORIS
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR33_Knobs_KH2
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR33_Brdg_StrgThru
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					GTR33d_NekHed
				]
			}
			{
				part = CAS_Guitar_Neck
				valid = [
					GTR33D_FBoard_BRS
				]
			}
		]
		$car_rocker_guitars_factoredGlobal_17
	}
	{
		desc_id = GTR33D_Bride
		frontend_desc = qs("\LKH Bride")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR33D_Bride.skin'
		pak_num = 0
		Is_Metallica = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33_bride.dds'
				material = GTR33_BRIDE_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_35
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					gtr33_pickup_bride
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR33_Knobs_KH2
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR33_Hardware01Z
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					GTR33Brideshead
				]
			}
			{
				part = CAS_Guitar_Neck
				valid = [
					GTR_FBoard_V1000
				]
			}
		]
		$car_rocker_guitars_factoredGlobal_36
	}
	{
		desc_id = GTR33_Drac
		frontend_desc = qs("\LKH Dracula")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR33D_Drac.skin'
		pak_num = 0
		Is_Metallica = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33_drac_d.dds'
				material = GTR33D_Drac_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_35
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR33_Pickup_Drac
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR33_Knobs_KH2
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR33_Hardware01Z
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					GTR33_NekHed_Drac
				]
			}
			{
				part = CAS_Guitar_Neck
				valid = [
					GTR33D_FBoard_BRS
				]
			}
		]
		$car_rocker_guitars_factoredGlobal_36
	}
	{
		desc_id = GTR33_Mummy
		frontend_desc = qs("\LKH The Mummy")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR33_Mummy.skin'
		pak_num = 1
		Is_Metallica = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33_kh2_mum_d.dds'
				material = GTR33_Mummy_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("FINISHES")
				mask = $CAG_Guitar33_Body
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					none
					GTR33_Switch01
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR33_Pickup_MUM
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR33_Knobs_KH2
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR33_Hardware01Z
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					GTR33_NekHed
				]
			}
			{
				part = CAS_Guitar_Neck
				valid = [
					GTR33_FBoard_MUM
				]
			}
		]
		$car_rocker_guitars_factoredGlobal_36
	}
	{
		desc_id = GTR33_ANNI
		frontend_desc = qs("\LKH Anniversary")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR33_ANNI.skin'
		pak_num = 0
		Is_Metallica = 1
		price = 1000
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33_an_d.dds'
				material = GTR33_ANNI_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_35
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR33_EMG
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					` GTR33_Knobs_KH2`
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR33_Hardware01Z
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					GTR33d_NekHed
				]
			}
			{
				part = CAS_Guitar_Neck
				valid = [
					GTR_Fretboard_24
				]
			}
		]
	}
	{
		desc_id = GTR36_SuperV
		frontend_desc = qs("\LSuper V")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR36_SuperV.skin'
		pak_num = 1
		is_esp = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr36_superv.dds'
				material = GTR36_SuperV_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("FINISHES")
				mask = $CAG_Guitar36_Body
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr36_superv.dds'
				material = GTR36_SuperV_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_Guitar36_details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_superv.dds'
				material = GTR36_SuperV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_40
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_superv.dds'
				material = GTR36_SuperV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_40
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr36_superv.dds'
				material = GTR36_SuperV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_40
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr36_superv.dds'
				material = GTR36_SuperV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_40
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr36_superv.dds'
				material = GTR36_SuperV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_40
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr36_superv.dds'
				material = GTR36_SuperV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_40
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr36_superv.dds'
				material = GTR36_SuperV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_40
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr36_superv.dds'
				material = GTR36_SuperV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_40
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr36_superv.dds'
				material = GTR36_SuperV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_40
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr36_superv.dds'
				material = GTR36_SuperV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_40
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr36_superv.dds'
				material = GTR36_SuperV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_40
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					gtr36_pgard
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR36_Pickup
					GTR36_Pickup_Gold
					GTR36_Pickup_D
					GTR36_Pickup_E
					GTR36_Pickup_F
					GTR36_EMG
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR_36_Knobs
					GTR_36_KNOBS_A
					gtr_36_knobs_b
					gtr_36_knobs_c
					gtr_36_knobs_d
					gtr_36_knobs_e
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR36_Hardware01
					GTR36_Bridge_FR
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					GTR36_NekHed
					GTR36_NekHed_B
					GTR36_NekHed_C
					GTR36_NekHed_D
					GTR36_NekHed_E
					GTR36_NekHed_F
				]
			}
			{
				part = CAS_Guitar_Neck
				valid = [
					GTR_FBoard_V1000
					GTR31_FBoard_02
					GTR31_FBoard_03
					GTR36_FBoard
				]
			}
		]
	}
	{
		desc_id = GTR37_ESP_RW
		frontend_desc = qs("\LRW")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR37_RW01.skin'
		pak_num = 1
		is_esp = 1
		price = 750
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr37_rw_d.dds'
				material = GTR37_RW_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("FINISHES")
				mask = $gtr37_rw
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr37_rw_d.dds'
				material = GTR37_RW_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $gtr37_rw_details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_rw_d.dds'
				material = GTR37_RW_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_43
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_rw_d.dds'
				material = GTR37_RW_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_43
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr37_rw_d.dds'
				material = GTR37_RW_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_43
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr37_rw_d.dds'
				material = GTR37_RW_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_43
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr37_rw_d.dds'
				material = GTR37_RW_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_43
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr37_rw_d.dds'
				material = GTR37_RW_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_43
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr37_rw_d.dds'
				material = GTR37_RW_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_43
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr37_rw_d.dds'
				material = GTR37_RW_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_43
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr37_rw_d.dds'
				material = GTR37_RW_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_43
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr37_rw_d.dds'
				material = GTR37_RW_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_43
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr37_rw_d.dds'
				material = GTR37_RW_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_43
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					gtr37_pguard01
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR37_Pickup
					GTR38_Pickup
					gtr37_pickup_gold
					gtr37_pickup_d
					gtr37_pickup_e
					gtr37_pickup_f
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					gtr37_knobs01
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					gtr37_bridge
					gtr37_hardware
					gtr37_brdg_strgthru
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					gtr37_neckhead
					GTR37_NeckHead_B
					GTR37_NeckHead_C
					GTR37_Neckhead_D
					GTR37_Neckhead_E
					GTR37_Neckhead_F
				]
			}
			{
				part = CAS_Guitar_Neck
				valid = [
					gtr_fboard_22
					gtr_fboard_22b
					gtr_fboard_22c
				]
			}
		]
	}
	{
		desc_id = GTR38_WAVE
		frontend_desc = qs("\LKH Wavecaster")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR38_WV.skin'
		pak_num = 1
		polaroid = Guitars_Waveb
		Is_Metallica = 1
		price = 10000
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr38_trans01_d.dds'
				material = GTR38_Trans_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("FINISHES")
				mask = $GTR38_WAVE
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr38_trans01_d.dds'
				material = GTR38_Trans_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $GTR38_Trans_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr38_trans01_d.dds'
				material = GTR38_Trans_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr38_trans01_d.dds'
				material = GTR38_Trans_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr38_trans01_d.dds'
				material = GTR38_Trans_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr38_trans01_d.dds'
				material = GTR38_Trans_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr38_trans01_d.dds'
				material = GTR38_Trans_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr38_trans01_d.dds'
				material = GTR38_Trans_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr38_trans01_d.dds'
				material = GTR38_Trans_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr38_trans01_d.dds'
				material = GTR38_Trans_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr38_trans01_d.dds'
				material = GTR38_Trans_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr38_trans01_d.dds'
				material = GTR38_Trans_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr38_trans01_d.dds'
				material = GTR38_Trans_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_6
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR38_Pickup
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					gtr37_knobs01
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					gtr37_bridge
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					GTR38_Neckhead
				]
			}
			{
				part = CAS_Guitar_Neck
				valid = [
					gtr_fboard_22b
				]
			}
		]
		$car_rocker_guitars_factoredGlobal_17
	}
	{
		desc_id = GTR12b_ESP_BC
		frontend_desc = qs("\LBlack Cream")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12b_ESP_BC.skin'
		pak_num = 0
		Is_Metallica = 1
		price = 1500
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr12b_esp_bc_d.dds'
				material = GTR12b_ESP_BC_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("FINISHES")
				mask = $GTR60b_ESP_Ninja
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					GTR12b_ESP_PG
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR12b_Pkup_EMG
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR12b_Knob
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR12b_Bridge
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					GTR12b_Neckhead
				]
			}
			{
				part = CAS_Guitar_Neck
				valid = [
					GTR_Fretboard_04
				]
			}
		]
	}
	{
		desc_id = GTR12c_ESP_HR
		frontend_desc = qs("\LHot Rod V")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12c_ESP_HR.skin'
		pak_num = 0
		Is_Metallica = 1
		price = 2000
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr12c_esp_hr_d.dds'
				material = GTR12c_ESP_HR_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("FINISHES")
				mask = $GTR12c_ESP_HR
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR12b_Pkup_EMG
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR12c_Knob
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR12c_Bridge
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					GTR12c_Neckhead
				]
			}
			{
				part = CAS_Guitar_Neck
				valid = [
					GTR_Fretboard_01
				]
			}
		]
	}
	{
		desc_id = GTR12g_ESP_GR
		frontend_desc = qs("\LGreen V")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12g_ESP_GR.skin'
		pak_num = 0
		Is_Metallica = 1
		price = 2000
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr12g_esp_gr_d.dds'
				material = GTR12g_ESP_GR_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("FINISHES")
				mask = $GTR12g_ESP_GR
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR12b_Pkup_EMG
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR12c_Knob
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR12c_Bridge
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					GTR12g_Neckhead
				]
			}
			{
				part = CAS_Guitar_Neck
				valid = [
					GTR_Fretboard_01
				]
			}
		]
	}
	{
		desc_id = GTR12D_ESP_CH
		frontend_desc = qs("\LCherry Red")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12D_ESP_CH.skin'
		pak_num = 0
		Is_Metallica = 1
		price = 1750
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr12d_esp_ch_d.dds'
				material = GTR12D_ESP_CH_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("FINISHES")
				mask = $GTR12D_ESP_CH
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					GTR12D_PG
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR12b_Pkup_EMG
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					gtr12d_knob
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR12D_Bridge
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					GTR12D_Neckhead
				]
			}
			{
				part = CAS_Guitar_Neck
				valid = [
					GTR_Fretboard_04
				]
			}
		]
	}
	{
		desc_id = GTR12E_ESP_FD
		frontend_desc = qs("\LFlying Devil")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12E_ESP_FD.skin'
		pak_num = 0
		Is_Metallica = 1
		price = 1500
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/GTR12E_ESP_FD_d.dds'
				material = GTR12E_ESP_FD_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("FINISHES")
				mask = $GTR12E_ESP_FD
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					GTR12E_ESP_PG
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR12e_Pkup_EMG
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR12e_Knob
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Bridge12E
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					GTR12E_Neckhead
				]
			}
			{
				part = CAS_Guitar_Neck
				valid = [
					GTR_Fretboard_04
				]
			}
		]
	}
	{
		desc_id = gtr12H_esp_KEA
		frontend_desc = qs("\LKill Em All V")
		mesh = 'models/CAR_Instruments/Guitar/ESP/gtr12H_esp_KEA.skin'
		pak_num = 0
		Is_Metallica = 1
		price = 2500
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr12h_esp_kea_d.dds'
				material = gtr12H_esp_KEA_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("FINISHES")
				mask = $gtr12H_esp_KEA
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					GTR12H_ESP_PG
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR12b_Pkup_EMG
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					gtr12h_knob
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR12H_Bridge
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					GTR12H_Neckhead
				]
			}
			{
				part = CAS_Guitar_Neck
				valid = [
					GTR_Fretboard_04
				]
			}
		]
	}
	{
		desc_id = GTR62b_ESP_Jack
		frontend_desc = qs("\LMaster Jackson")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR62b_ESP_Jack.skin'
		pak_num = 0
		Is_Metallica = 1
		price = 2000
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr62b_esp_jack_d.dds'
				material = GTR62b_ESP_Jack_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("FINISHES")
				mask = $GTR62b_ESP_Jack
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					GTR62b_ESP_PG1
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR60b_Pkup_EMG
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR62b_Knob_Type01
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware62
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					GTR62b_Neckhead
				]
			}
			{
				part = CAS_Guitar_Neck
				valid = [
					GTR_Fretboard_24
				]
			}
		]
	}
	{
		desc_id = GTR62_ESP_Alexi
		frontend_desc = qs("\LAlexi")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR62_ESP_Alexi.skin'
		pak_num = 0
		is_esp = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr62_esp_alexi_d.dds'
				material = GTR62_ESP_Alexi_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("FINISHES")
				mask = $GTR62_ESP_Alexi
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr62_esp_alexi_d.dds'
				material = GTR62_ESP_Alexi_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $GTR62b_ESP_Jack_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr62_esp_alexi_d.dds'
				material = GTR62_ESP_Alexi_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_23
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr62_esp_alexi_d.dds'
				material = GTR62_ESP_Alexi_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_23
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr62_esp_alexi_d.dds'
				material = GTR62_ESP_Alexi_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_23
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr62_esp_alexi_d.dds'
				material = GTR62_ESP_Alexi_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_23
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr62_esp_alexi_d.dds'
				material = GTR62_ESP_Alexi_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_23
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr62_esp_alexi_d.dds'
				material = GTR62_ESP_Alexi_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_23
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr62_esp_alexi_d.dds'
				material = GTR62_ESP_Alexi_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_23
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr62_esp_alexi_d.dds'
				material = GTR62_ESP_Alexi_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_23
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr62_esp_alexi_d.dds'
				material = GTR62_ESP_Alexi_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_23
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr62_esp_alexi_d.dds'
				material = GTR62_ESP_Alexi_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_23
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr62_esp_alexi_d.dds'
				material = GTR62_ESP_Alexi_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_23
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					none
					GTR62_ESP_PG1
					gtr62_esp_pg1b
					gtr62_esp_pg2
					gtr62_esp_pg2b
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR62_ESP_EMG
					GTR62_Pkup_Blk
					GTR3_ESP_EMG_Pkup_2
					GTR6_Pkup_Worngold_2
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					gtr62_knob_type03
					gtr62_knob_type02
					GTR62_Knob_Type01
					gtr62_knob_type04
					GTR62_Knob_Type05
					gtr62_knob_type06
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware62a
					GTR_Hardware02
					gtr_hardware64
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					GTR62_Neckhead
					GTR62_Neckhead2
					GTR62_Neckhead3
					GTR62_Neckhead_04
					GTR62_Neckhead_05
					GTR62_Neckhead_06
				]
			}
			{
				part = CAS_Guitar_Neck
				valid = [
					GTR_Fretboard24_01
					GTR_Fretboard24_02
					GTR_Fretboard24_03
					GTR_Fretboard24_04
					GTR_Fretboard_01
					GTR_Fretboard_02
					GTR_Fretboard_03
					GTR_Fretboard_04
				]
			}
		]
	}
	{
		desc_id = GTR63_ESP_EX
		frontend_desc = qs("\LSo What")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR63_ESP_EX.skin'
		pak_num = 0
		Is_Metallica = 1
		price = 1500
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr63_esp_ex_d.dds'
				material = GTR63_ESP_EX_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("FINISHES")
				mask = $GTR63_ESP_EX
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR60b_Pkup_EMG
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR63_Knob_Type1
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware63c
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					GTR63_Neckhead
				]
			}
			{
				part = CAS_Guitar_Neck
				valid = [
					GTR_Fretboard_01
				]
			}
		]
	}
	{
		desc_id = GTR63b_ESP_EX
		frontend_desc = qs("\LTattoo")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR63b_ESP_EX.skin'
		pak_num = 0
		Is_Metallica = 1
		price = 5000
		polaroid = Guitars_Tattoo
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr63b_esp_ex_d.dds'
				material = GTR63b_ESP_EX_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("FINISHES")
				mask = $GTR63b_ESP_EX
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR60b_Pkup_EMG
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR63_Knob_Type1
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware63c
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					GTR63b_Neckhead
				]
			}
			{
				part = CAS_Guitar_Neck
				valid = [
					GTR_Fretboard_01
				]
			}
		]
		$car_rocker_guitars_factoredGlobal_17
	}
	{
		desc_id = GTR63c_ESP_EX
		frontend_desc = qs("\LDiamond Plate")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR63c_ESP_EX.skin'
		pak_num = 0
		Is_Metallica = 1
		price = 2500
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr63c_esp_ex_d.dds'
				material = GTR63c_ESP_EX_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_57
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR63c_Pkup_EMG
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR63c_Knob_Type1
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware63c
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					GTR63c_Neckhead
				]
			}
			{
				part = CAS_Guitar_Neck
				valid = [
					GTR_Fretboard_01
				]
			}
		]
	}
	{
		desc_id = GTR63d_ESP_EX
		frontend_desc = qs("\LKen Lawrence")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR63d_ESP_EX.skin'
		pak_num = 0
		Is_Metallica = 1
		price = 2000
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr63d_esp_ex_d.dds'
				material = GTR63d_ESP_EX_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("FINISHES")
				mask = $GTR63d_ESP_EX
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR60b_Pkup_EMG
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR63_Knob_Type1
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware63c
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					GTR63d_Neckhead
				]
			}
			{
				part = CAS_Guitar_Neck
				valid = [
					GTR_Fretboard_01
				]
			}
		]
	}
	{
		desc_id = GTR63e_ESP_EX
		frontend_desc = qs("\LRusty")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR63e_ESP_EX.skin'
		pak_num = 0
		Is_Metallica = 1
		price = 1500
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr63e_esp_ex_d.dds'
				material = GTR63e_ESP_EX_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("FINISHES")
				mask = $GTR63e_ESP_EX
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					GTR63e_ESP_PG1
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR60b_Pkup_EMG
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR63_Knob_Type1
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware63c
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					GTR63e_Neckhead
				]
			}
			{
				part = CAS_Guitar_Neck
				valid = [
					GTR_Fretboard_01
				]
			}
		]
	}
	{
		desc_id = GTR63f_ESP_EX
		frontend_desc = qs("\LEX Series")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR63f_ESP_EX.skin'
		pak_num = 1
		is_esp = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr63f_esp_ex_d.dds'
				material = GTR63f_ESP_EX_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("FINISHES")
				mask = $GTR63f_ESP_EX
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr63f_esp_ex_d.dds'
				material = GTR63f_ESP_EX_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $GTR63f_ESP_EX_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr63f_esp_ex_d.dds'
				material = GTR63f_ESP_EX_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_43
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr63f_esp_ex_d.dds'
				material = GTR63f_ESP_EX_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_43
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr63f_esp_ex_d.dds'
				material = GTR63f_ESP_EX_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_43
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr63f_esp_ex_d.dds'
				material = GTR63f_ESP_EX_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_43
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr63f_esp_ex_d.dds'
				material = GTR63f_ESP_EX_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_43
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr63f_esp_ex_d.dds'
				material = GTR63f_ESP_EX_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_43
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr63f_esp_ex_d.dds'
				material = GTR63f_ESP_EX_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_43
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr63f_esp_ex_d.dds'
				material = GTR63f_ESP_EX_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_43
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr63f_esp_ex_d.dds'
				material = GTR63f_ESP_EX_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_43
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr63f_esp_ex_d.dds'
				material = GTR63f_ESP_EX_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_43
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr63f_esp_ex_d.dds'
				material = GTR63f_ESP_EX_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_43
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					none
					gtr63f_esp_pg1
					gtr63f_esp_pg1b
					gtr63f_esp_pg2
					gtr63f_esp_pg2b
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR62_ESP_EMG
					GTR62_Pkup_Blk
					GTR3_ESP_EMG_Pkup_2
					GTR6_Pkup_Worngold_2
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR63_Knob_Type06
					gtr63_knob_type2
					gtr63_knob_type3
					GTR63_Knob_Type4
					GTR63_Knob_Type5
					GTR63c_Knob_Type1
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware63f
					gtr_hardware63b
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					GTR63f_Neckhead
					GTR63_Neckhead2
					GTR63_Neckhead3
					GTR63_Neckhead_04
					GTR63_Neckhead_05
					GTR63_Neckhead_06
				]
			}
			{
				part = CAS_Guitar_Neck
				valid = [
					GTR_Fretboard_01
					GTR_Fretboard_02
					GTR_Fretboard_03
					GTR_Fretboard_04
					GTR_Fretboard24_01
					GTR_Fretboard24_02
					GTR_Fretboard24_03
					GTR_Fretboard24_04
				]
			}
		]
	}
	{
		desc_id = GTR63g_ESP_EX
		frontend_desc = qs("\LDeer Skull")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR63g_ESP_EX.skin'
		pak_num = 1
		Is_Metallica = 1
		price = 1000
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr63g_esp_ex_d.dds'
				material = GTR63g_ESP_EX_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_57
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR63c_Pkup_EMG
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR63g_Knob_Type1
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware63c
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					GTR63g_Neckhead
				]
			}
			{
				part = CAS_Guitar_Neck
				valid = [
					GTR_Fretboard_01
				]
			}
		]
	}
	{
		desc_id = gtr64_esp_F
		frontend_desc = qs("\LF-400")
		mesh = 'models/CAR_Instruments/Guitar/ESP/gtr64_esp_F.skin'
		pak_num = 1
		is_esp = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr64_esp_f_d.dds'
				material = gtr64_esp_F_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("FINISHES")
				mask = $gtr64_esp_F
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr64_esp_f_d.dds'
				material = gtr64_esp_F_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $gtr64_esp_F_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_esp_f_d.dds'
				material = gtr64_esp_F_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_26
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_esp_f_d.dds'
				material = gtr64_esp_F_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_26
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr64_esp_f_d.dds'
				material = gtr64_esp_F_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_26
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr64_esp_f_d.dds'
				material = gtr64_esp_F_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_26
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr64_esp_f_d.dds'
				material = gtr64_esp_F_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_26
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr64_esp_f_d.dds'
				material = gtr64_esp_F_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_26
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr64_esp_f_d.dds'
				material = gtr64_esp_F_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_26
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr64_esp_f_d.dds'
				material = gtr64_esp_F_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_26
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr64_esp_f_d.dds'
				material = gtr64_esp_F_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_26
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr64_esp_f_d.dds'
				material = gtr64_esp_F_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_26
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr64_esp_f_d.dds'
				material = gtr64_esp_F_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_26
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR62_ESP_EMG
					GTR62_Pkup_Blk
					GTR3_ESP_EMG_Pkup_2
					GTR6_Pkup_Worngold_2
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					gtr64_knob_type1
					gtr64_knob_type2
					GTR64_Knob_Type3
					gtr64_knob_type4
					gtr64_knob_type5
					GTR64_Knob_Type6
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					gtr_hardware64b
					GTR_Hardware64f
					GTR_Hardware64bb
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					GTR64_Neckhead
					gtr64_neckhead2
					gtr64_neckhead3
					GTR64_Neckhead_04
					GTR64_Neckhead_05
					GTR64_Neckhead_06
				]
			}
			{
				part = CAS_Guitar_Neck
				valid = [
					GTR_Fretboard_01
					GTR_Fretboard_02
					GTR_Fretboard_03
					GTR_Fretboard_04
					GTR_Fretboard24_01
					GTR_Fretboard24_02
					GTR_Fretboard24_03
					GTR_Fretboard24_04
				]
			}
		]
	}
	{
		desc_id = GTR65_Var
		frontend_desc = qs("\LAcoustic Variax Natural")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR65_Var.skin'
		pak_num = 1
		Is_Metallica = 1
		price = 1500
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr65_var_d.dds'
				material = GTR65_Var_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_64
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR65_pickup_dummy
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_bridge_65
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					GTR65_Neckhead
				]
			}
			{
				part = CAS_Guitar_Neck
				valid = [
					GTR_Fretboard_65
				]
			}
		]
	}
	{
		desc_id = GTR65b_Var
		frontend_desc = qs("\LAcoustic Variax Black")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR65b_Var.skin'
		pak_num = 1
		Is_Metallica = 1
		price = 1500
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr65b_var_d.dds'
				material = GTR65b_Var_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_64
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR65_pickup_dummy
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_bridge_65
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					GTR65b_Neckhead
				]
			}
			{
				part = CAS_Guitar_Neck
				valid = [
					GTR_Fretboard_65
				]
			}
		]
	}
	{
		desc_id = GTR66_ESP_Shini
		frontend_desc = qs("\LShinigami")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR66_ESP_Shini.skin'
		pak_num = 0
		price = 3000
		polaroid = Guitars_Shini
		is_esp = 1
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					gtr_pickup_type66
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					gtr66_knob_type1
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					gtr_hardware66
				]
			}
			{
				part = CAS_Guitar_Head
				valid = [
					gtr66_neckhead
				]
			}
			{
				part = CAS_Guitar_Neck
				valid = [
					gtr_fretboard_66
				]
			}
		]
		$car_rocker_guitars_factoredGlobal_17
	}
	{
		desc_id = guitar_body01
		frontend_desc = qs("\LHurricane")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Body01.skin'
		pak_num = 0
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style1_D_01.dds'
				material = Guitar_Body_Style_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_Guitar01_Body
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style1_D_01.dds'
				material = Guitar_Body_Style_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_Guitar01_Body_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style1_D_01.dds'
				material = Guitar_Body_Style_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_67
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style1_D_01.dds'
				material = Guitar_Body_Style_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_67
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style1_D_01.dds'
				material = Guitar_Body_Style_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_68
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style1_D_01.dds'
				material = Guitar_Body_Style_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_68
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style1_D_01.dds'
				material = Guitar_Body_Style_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_68
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style1_D_01.dds'
				material = Guitar_Body_Style_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_68
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style1_D_01.dds'
				material = Guitar_Body_Style_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_68
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style1_D_01.dds'
				material = Guitar_Body_Style_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_68
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style1_D_01.dds'
				material = Guitar_Body_Style_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_68
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style1_D_01.dds'
				material = Guitar_Body_Style_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_68
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style1_D_01.dds'
				material = Guitar_Body_Style_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_68
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					Guitar_PickG01
					GTR_Body1_PickG02
					GTR_Body1_PickG03
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR_Pickups_Style_01c
					GTR_Pickups_Style_01a
					GTR_Pickups_Style_01b
					GTR_Pickup_Type1_Blk_1
					GTR_Pickup_Type1_Blk_2
					GTR_Pickup_Type1_Blk_3
					GTR_Pickup_Type2_03
					GTR_Pickup_Type2_04
					GTR_Pickup_Type3_02
					GTR_Pickup_Type3_03
					GTR_Pickup_Type3b_02
					GTR_Pickup_Type3b_03
					GTR_Pickup_Type4_02
					GTR_Pickup_Type4_03
					GTR_Pickup_Type1_Blktan_1
					GTR_Pickup_Type1_Blktan_2
					GTR_Pickup_Type1_Blktan_3
					GTR_Pickup_Type5_01
					GTR_Pickup_Type5_02
					GTR_Pickup_Type5_03
					GTR_Pickup_Type6_TKD_03
					GTR_Pickup_Type6_TKD_02
					GTR_Pickup_Type6_TKD_01
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR_Knobs_Style_01a
					GTR_Knobs_Style_01b
					GTR_Knobs_Style_01c
					GTR1_Knob_Type2_02
					GTR1_Knob_Type2_03
					GTR1_Knob_Type2_04
					GTR1_Knob_Type3_04
					GTR1_Knob_Type3_03
					GTR1_Knob_Type3_02
					GTR1_Knob_Type4_04
					GTR1_Knob_Type5_04
					GTR1_Knob_Type6_04
					GTR1_Knob_Type7_04
					GTR1_Knob_Type8_04
					GTR1_Knob_Type9_04
					GTR1_Knob_Type10_04
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware01b
					GTR_Hardware01a
					GTR_Hardware05
					GTR_Hardware06
					GTR_Hardware07
				]
			}
		]
	}
	{
		desc_id = guitar_body02
		frontend_desc = qs("\LWidowmaker")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Body02.skin'
		pak_num = 0
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style2_D_01.dds'
				material = Guitar_Body_Style_02_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_1
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style2_D_01.dds'
				material = Guitar_Body_Style_02_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_Guitar02_Body_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style2_D_01.dds'
				material = Guitar_Body_Style_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style2_D_01.dds'
				material = Guitar_Body_Style_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style2_D_01.dds'
				material = Guitar_Body_Style_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style2_D_01.dds'
				material = Guitar_Body_Style_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style2_D_01.dds'
				material = Guitar_Body_Style_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style2_D_01.dds'
				material = Guitar_Body_Style_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style2_D_01.dds'
				material = Guitar_Body_Style_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style2_D_01.dds'
				material = Guitar_Body_Style_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style2_D_01.dds'
				material = Guitar_Body_Style_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style2_D_01.dds'
				material = Guitar_Body_Style_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_6
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style2_D_01.dds'
				material = Guitar_Body_Style_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_6
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					GTR_Body2_PickG02
					GTR_Body2_PickG01
					GTR_Body2_PickG03
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR_Pickups_Style_01a
					GTR_Pickups_Style_01b
					GTR_Pickups_Style_01c
					GTR_Pickup_Type1_Blk_1
					GTR_Pickup_Type1_Blk_2
					GTR_Pickup_Type1_Blk_3
					GTR_Pickup_Type2_03
					GTR_Pickup_Type2_04
					GTR_Pickup_Type3_02
					GTR_Pickup_Type3_03
					GTR_Pickup_Type3b_02
					GTR_Pickup_Type3b_03
					GTR_Pickup_Type4_02
					GTR_Pickup_Type4_03
					GTR_Pickup_Type1_Blktan_1
					GTR_Pickup_Type1_Blktan_2
					GTR_Pickup_Type1_Blktan_3
					GTR_Pickup_Type5_01
					GTR_Pickup_Type5_02
					GTR_Pickup_Type5_03
					GTR_Pickup_Type6_TKD_03
					GTR_Pickup_Type6_TKD_02
					GTR_Pickup_Type6_TKD_01
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR_Knobs_Style_02a
					GTR2_Knob_Type2_04
					GTR2_Knob_Type3_04
					GTR2_Knob_Type4_04
					GTR2_Knob_Type5_04
					GTR2_Knob_Type6_04
					GTR2_Knob_Type7_04
					GTR2_Knob_Type8_04
					GTR2_Knob_Type9_04
					GTR2_Knob_Type10_04
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware01b
					GTR_Hardware01a
					GTR_Hardware06
					GTR_Hardware07
				]
			}
		]
	}
	{
		desc_id = guitar_body03
		frontend_desc = qs("\LVoracious V")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Body03.skin'
		pak_num = 0
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style3_d_01.dds'
				material = Guitar_Body_Style_03_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_Guitar03_Body
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style3_D_01.dds'
				material = Guitar_Body_Style_03_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_Guitar03_Body_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style3_D_01.dds'
				material = Guitar_Body_Style_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_72
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style3_D_01.dds'
				material = Guitar_Body_Style_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_72
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style3_D_01.dds'
				material = Guitar_Body_Style_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_72
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style3_D_01.dds'
				material = Guitar_Body_Style_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_72
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style3_D_01.dds'
				material = Guitar_Body_Style_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_72
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style3_D_01.dds'
				material = Guitar_Body_Style_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_72
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style3_D_01.dds'
				material = Guitar_Body_Style_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_72
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style3_D_01.dds'
				material = Guitar_Body_Style_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_72
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style3_D_01.dds'
				material = Guitar_Body_Style_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_72
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style3_D_01.dds'
				material = Guitar_Body_Style_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_72
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style3_D_01.dds'
				material = Guitar_Body_Style_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_72
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					GTR_Body3_PickG01
					GTR_Body3_PickG02
					GTR_Body3_PickG03
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR_Pickups_Style_01a
					GTR_Pickups_Style_01b
					GTR_Pickups_Style_01c
					GTR_Pickup_Type1_Blk_1
					GTR_Pickup_Type1_Blk_2
					GTR_Pickup_Type1_Blk_3
					GTR_Pickup_Type2_03
					GTR_Pickup_Type2_04
					GTR_Pickup_Type3_02
					GTR_Pickup_Type3_03
					GTR_Pickup_Type3b_02
					GTR_Pickup_Type3b_03
					GTR_Pickup_Type4_02
					GTR_Pickup_Type4_03
					GTR_Pickup_Type1_Blktan_1
					GTR_Pickup_Type1_Blktan_2
					GTR_Pickup_Type1_Blktan_3
					GTR_Pickup_Type5_01
					GTR_Pickup_Type5_02
					GTR_Pickup_Type5_03
					GTR_Pickup_Type6_TKD_03
					GTR_Pickup_Type6_TKD_02
					GTR_Pickup_Type6_TKD_01
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR3_Knobs_Style_03a
					GTR3_Knob_Type2_03
					GTR3_Knob_Type3_03
					GTR3_Knob_Type4_03
					GTR3_Knob_Type5_03
					GTR3_Knob_Type6_03
					GTR3_Knob_Type7_03
					GTR3_Knob_Type8_03
					GTR3_Knob_Type9_03
					GTR3_Knob_Type10_03
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware01b
					GTR_Hardware01a
					GTR_Hardware06
					GTR_Hardware07
				]
			}
		]
	}
	{
		desc_id = guitar_body04
		frontend_desc = qs("\LHorny Devil")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Body04.skin'
		pak_num = 0
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style4_d_01.dds'
				material = Guitar_Body_Style_04_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_Guitar04_Body
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style4_D_01.dds'
				material = Guitar_Body_Style_04_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_Guitar04_Body_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style4_D_01.dds'
				material = Guitar_Body_Style_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_75
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style4_D_01.dds'
				material = Guitar_Body_Style_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_75
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style4_D_01.dds'
				material = Guitar_Body_Style_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_75
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style4_D_01.dds'
				material = Guitar_Body_Style_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_75
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style4_D_01.dds'
				material = Guitar_Body_Style_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_75
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style4_D_01.dds'
				material = Guitar_Body_Style_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_75
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style4_D_01.dds'
				material = Guitar_Body_Style_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_75
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style4_D_01.dds'
				material = Guitar_Body_Style_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_75
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style4_D_01.dds'
				material = Guitar_Body_Style_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_75
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style4_D_01.dds'
				material = Guitar_Body_Style_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_75
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style4_D_01.dds'
				material = Guitar_Body_Style_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_75
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					GTR_Body4_PickG01
					GTR_Body4_PickG02
					GTR_Body4_PickG03
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR_Pickups_Style_01a
					GTR_Pickups_Style_01b
					GTR_Pickups_Style_01c
					GTR_Pickup_Type1_Blk_1
					GTR_Pickup_Type1_Blk_2
					GTR_Pickup_Type1_Blk_3
					GTR_Pickup_Type2_03
					GTR_Pickup_Type2_04
					GTR_Pickup_Type3_02
					GTR_Pickup_Type3_03
					GTR_Pickup_Type3b_02
					GTR_Pickup_Type3b_03
					GTR_Pickup_Type4_02
					GTR_Pickup_Type4_03
					GTR_Pickup_Type1_Blktan_1
					GTR_Pickup_Type1_Blktan_2
					GTR_Pickup_Type1_Blktan_3
					GTR_Pickup_Type5_01
					GTR_Pickup_Type5_02
					GTR_Pickup_Type5_03
					GTR_Pickup_Type6_TKD_03
					GTR_Pickup_Type6_TKD_02
					GTR_Pickup_Type6_TKD_01
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR4_Knob_Type1_04
					GTR4_Knob_Type1_03
					GTR4_Knob_Type2_02
					GTR4_Knob_Type2_03
					GTR4_Knob_Type2_04
					GTR4_Knob_Type3_04
					GTR4_Knob_Type4_04
					GTR4_Knob_Type5_04
					GTR4_Knob_Type6_04
					GTR4_Knob_Type7_04
					GTR4_Knob_Type8_04
					GTR4_Knob_Type9_04
					GTR4_Knob_Type10_04
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware01b
					GTR_Hardware01a
					GTR_Hardware05
					GTR_Hardware06
					GTR_Hardware07
				]
			}
		]
	}
	{
		desc_id = guitar_body05
		frontend_desc = qs("\LMaster Blaster")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Body05.skin'
		pak_num = 0
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style5_d_01.dds'
				material = Guitar_Body_Style_05_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_Guitar05_Body
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style5_D_01.dds'
				material = Guitar_Body_Style_05_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_Guitar05_Body_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style5_D_01.dds'
				material = Guitar_Body_Style_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_75
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style5_D_01.dds'
				material = Guitar_Body_Style_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_75
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style5_D_01.dds'
				material = Guitar_Body_Style_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_75
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style5_D_01.dds'
				material = Guitar_Body_Style_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_75
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style5_D_01.dds'
				material = Guitar_Body_Style_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_75
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style5_D_01.dds'
				material = Guitar_Body_Style_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_75
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style5_D_01.dds'
				material = Guitar_Body_Style_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_75
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style5_D_01.dds'
				material = Guitar_Body_Style_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_75
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style5_D_01.dds'
				material = Guitar_Body_Style_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_75
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style5_D_01.dds'
				material = Guitar_Body_Style_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_75
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style5_D_01.dds'
				material = Guitar_Body_Style_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_75
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					GTR_Body5_PickG02
					GTR_Body5_PickG03
					GTR_Body5_PickG01
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR_Pickups_Style_01a
					GTR_Pickups_Style_01b
					GTR_Pickups_Style_01c
					GTR_Pickup_Type1_Blk_1
					GTR_Pickup_Type1_Blk_2
					GTR_Pickup_Type1_Blk_3
					GTR_Pickup_Type2_03
					GTR_Pickup_Type2_04
					GTR_Pickup_Type3_02
					GTR_Pickup_Type3_03
					GTR_Pickup_Type3b_02
					GTR_Pickup_Type3b_03
					GTR_Pickup_Type4_02
					GTR_Pickup_Type4_03
					GTR_Pickup_Type1_Blktan_1
					GTR_Pickup_Type1_Blktan_2
					GTR_Pickup_Type1_Blktan_3
					GTR_Pickup_Type5_01
					GTR_Pickup_Type5_02
					GTR_Pickup_Type5_03
					GTR_Pickup_Type6_TKD_03
					GTR_Pickup_Type6_TKD_02
					GTR_Pickup_Type6_TKD_01
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR4_Knob_Type1_04
					GTR4_Knob_Type1_03
					GTR4_Knob_Type2_02
					GTR4_Knob_Type2_03
					GTR4_Knob_Type2_04
					GTR4_Knob_Type3_04
					GTR4_Knob_Type4_04
					GTR4_Knob_Type5_04
					GTR4_Knob_Type6_04
					GTR4_Knob_Type7_04
					GTR4_Knob_Type8_04
					GTR4_Knob_Type9_04
					GTR4_Knob_Type10_04
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware01b
					GTR_Hardware01a
					GTR_Hardware05
					GTR_Hardware06
					GTR_Hardware07
				]
			}
		]
	}
	{
		desc_id = guitar_body06
		frontend_desc = qs("\LTreblemaker")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Body06.skin'
		pak_num = 0
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style6_d_01.dds'
				material = Guitar_Body_Style_06_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_Guitar06_Body
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style6_D_01.dds'
				material = Guitar_Body_Style_06_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_Guitar06_Body_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style6_D_01.dds'
				material = Guitar_Body_Style_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_75
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style6_D_01.dds'
				material = Guitar_Body_Style_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_75
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style6_D_01.dds'
				material = Guitar_Body_Style_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_75
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style6_D_01.dds'
				material = Guitar_Body_Style_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_75
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style6_D_01.dds'
				material = Guitar_Body_Style_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_75
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style6_D_01.dds'
				material = Guitar_Body_Style_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_75
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style6_D_01.dds'
				material = Guitar_Body_Style_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_75
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style6_D_01.dds'
				material = Guitar_Body_Style_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_75
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style6_D_01.dds'
				material = Guitar_Body_Style_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_75
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style6_D_01.dds'
				material = Guitar_Body_Style_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_75
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style6_D_01.dds'
				material = Guitar_Body_Style_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_75
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					GTR_Body6_PickG01
					GTR_Body6_PickG02
					GTR_Body6_PickG03
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR_Pickups_Style_01a
					GTR_Pickups_Style_01b
					GTR_Pickups_Style_01c
					GTR_Pickup_Type1_Blk_1
					GTR_Pickup_Type1_Blk_2
					GTR_Pickup_Type1_Blk_3
					GTR_Pickup_Type2_03
					GTR_Pickup_Type2_04
					GTR_Pickup_Type3_02
					GTR_Pickup_Type3_03
					GTR_Pickup_Type3b_02
					GTR_Pickup_Type3b_03
					GTR_Pickup_Type4_02
					GTR_Pickup_Type4_03
					GTR_Pickup_Type1_Blktan_1
					GTR_Pickup_Type1_Blktan_2
					GTR_Pickup_Type1_Blktan_3
					GTR_Pickup_Type5_01
					GTR_Pickup_Type5_02
					GTR_Pickup_Type5_03
					GTR_Pickup_Type6_TKD_03
					GTR_Pickup_Type6_TKD_02
					GTR_Pickup_Type6_TKD_01
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR6_Knob_Type1_03
					GTR6_Knob_Type2_03
					GTR6_Knob_Type3_03
					GTR6_Knob_Type4_03
					GTR6_Knob_Type5_03
					GTR6_Knob_Type6_03
					GTR6_Knob_Type7_03
					GTR6_Knob_Type8_03
					GTR6_Knob_Type9_03
					GTR6_Knob_Type10_03
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware01b
					GTR_Hardware01a
					GTR_Hardware05
					GTR_Hardware06
					GTR_Hardware07
				]
			}
		]
	}
	{
		desc_id = guitar_body07
		frontend_desc = qs("\LFurious Nightmare")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Body07.skin'
		pak_num = 0
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style7_d_01.dds'
				material = Guitar_Body_Style_07_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_Guitar07_Body
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style7_D_01.dds'
				material = Guitar_Body_Style_07_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_Guitar07_Body_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style7_D_01.dds'
				material = Guitar_Body_Style_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				initial_values = {
					x_trans = -28
					x_scale = 30
					y_scale = 60
					y_trans = 30
				}
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style7_D_01.dds'
				material = Guitar_Body_Style_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_83
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style7_D_01.dds'
				material = Guitar_Body_Style_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_83
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style7_D_01.dds'
				material = Guitar_Body_Style_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_83
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style7_D_01.dds'
				material = Guitar_Body_Style_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_83
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style7_D_01.dds'
				material = Guitar_Body_Style_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_83
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style7_D_01.dds'
				material = Guitar_Body_Style_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_83
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style7_D_01.dds'
				material = Guitar_Body_Style_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_83
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style7_D_01.dds'
				material = Guitar_Body_Style_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_83
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style7_D_01.dds'
				material = Guitar_Body_Style_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_83
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style7_D_01.dds'
				material = Guitar_Body_Style_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_83
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					GTR_Body7_PickG01
					GTR_Body7_PickG02
					GTR_Body7_PickG03
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR_Pickups_Style_01a
					GTR_Pickups_Style_01b
					GTR_Pickups_Style_01c
					GTR_Pickup_Type1_Blk_1
					GTR_Pickup_Type1_Blk_2
					GTR_Pickup_Type1_Blk_3
					GTR_Pickup_Type2_03
					GTR_Pickup_Type2_04
					GTR_Pickup_Type3_02
					GTR_Pickup_Type3_03
					GTR_Pickup_Type3b_02
					GTR_Pickup_Type3b_03
					GTR_Pickup_Type4_02
					GTR_Pickup_Type4_03
					GTR_Pickup_Type1_Blktan_1
					GTR_Pickup_Type1_Blktan_2
					GTR_Pickup_Type1_Blktan_3
					GTR_Pickup_Type5_01
					GTR_Pickup_Type5_02
					GTR_Pickup_Type5_03
					GTR_Pickup_Type6_TKD_03
					GTR_Pickup_Type6_TKD_02
					GTR_Pickup_Type6_TKD_01
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR7_Knob_Type1_03
					GTR7_Knob_Type2_03
					GTR7_Knob_Type3_03
					GTR7_Knob_Type4_03
					GTR7_Knob_Type5_03
					GTR7_Knob_Type6_03
					GTR7_Knob_Type7_03
					GTR7_Knob_Type8_03
					GTR7_Knob_Type9_03
					GTR7_Knob_Type10_03
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware01b
					GTR_Hardware01a
					GTR_Hardware05
					GTR_Hardware06
					GTR_Hardware07
				]
			}
		]
	}
	{
		desc_id = guitar_body08
		frontend_desc = qs("\LFeedback")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Body08.skin'
		pak_num = 0
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style8_d_01.dds'
				material = Guitar_Body_Style_08_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_Guitar08_Body
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style8_D_01.dds'
				material = Guitar_Body_Style_08_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_Guitar08_Body_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style8_D_01.dds'
				material = Guitar_Body_Style_08_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_86
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style8_D_01.dds'
				material = Guitar_Body_Style_08_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_86
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style8_D_01.dds'
				material = Guitar_Body_Style_08_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_86
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style8_D_01.dds'
				material = Guitar_Body_Style_08_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_86
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style8_D_01.dds'
				material = Guitar_Body_Style_08_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_86
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style8_D_01.dds'
				material = Guitar_Body_Style_08_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_86
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style8_D_01.dds'
				material = Guitar_Body_Style_08_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_86
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style8_D_01.dds'
				material = Guitar_Body_Style_08_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_86
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style8_D_01.dds'
				material = Guitar_Body_Style_08_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_86
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style8_D_01.dds'
				material = Guitar_Body_Style_08_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_86
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style8_D_01.dds'
				material = Guitar_Body_Style_08_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_86
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					GTR_Body8_PickG01
					GTR_Body8_PickG02
					GTR_Body8_PickG03
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR_Pickups_Style_01a
					GTR_Pickups_Style_01b
					GTR_Pickups_Style_01c
					GTR_Pickup_Type1_Blk_1
					GTR_Pickup_Type1_Blk_2
					GTR_Pickup_Type1_Blk_3
					GTR_Pickup_Type2_03
					GTR_Pickup_Type2_04
					GTR_Pickup_Type3_02
					GTR_Pickup_Type3_03
					GTR_Pickup_Type3b_02
					GTR_Pickup_Type3b_03
					GTR_Pickup_Type4_02
					GTR_Pickup_Type4_03
					GTR_Pickup_Type1_Blktan_1
					GTR_Pickup_Type1_Blktan_2
					GTR_Pickup_Type1_Blktan_3
					GTR_Pickup_Type5_01
					GTR_Pickup_Type5_02
					GTR_Pickup_Type5_03
					GTR_Pickup_Type6_TKD_03
					GTR_Pickup_Type6_TKD_02
					GTR_Pickup_Type6_TKD_01
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR8_Knob_Type1_03
					GTR8_Knob_Type2_03
					GTR8_Knob_Type3_03
					GTR8_Knob_Type4_03
					GTR8_Knob_Type5_03
					GTR8_Knob_Type6_03
					GTR8_Knob_Type7_03
					GTR8_Knob_Type8_03
					GTR8_Knob_Type9_03
					GTR8_Knob_Type10_03
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware01b
					GTR_Hardware01a
					GTR_Hardware05
					GTR_Hardware06
					GTR_Hardware07
				]
			}
		]
	}
	{
		desc_id = guitar_body09
		frontend_desc = qs("\LDearth Fader")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Body09.skin'
		pak_num = 0
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style9_d_01.dds'
				material = Guitar_Body_Style_09_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_Guitar09_Body
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style9_D_01.dds'
				material = Guitar_Body_Style_09_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_Guitar09_Body_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style9_D_01.dds'
				material = Guitar_Body_Style_09_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_86
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style9_D_01.dds'
				material = Guitar_Body_Style_09_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_86
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style9_D_01.dds'
				material = Guitar_Body_Style_09_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_86
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style9_D_01.dds'
				material = Guitar_Body_Style_09_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_86
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style9_D_01.dds'
				material = Guitar_Body_Style_09_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_86
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style9_D_01.dds'
				material = Guitar_Body_Style_09_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_86
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style9_D_01.dds'
				material = Guitar_Body_Style_09_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_86
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style9_D_01.dds'
				material = Guitar_Body_Style_09_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_86
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style9_D_01.dds'
				material = Guitar_Body_Style_09_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_86
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style9_D_01.dds'
				material = Guitar_Body_Style_09_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_86
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style9_D_01.dds'
				material = Guitar_Body_Style_09_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_86
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					GTR_Body9_PickG01
					GTR_Body9_PickG02
					GTR_Body9_PickG03
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR_Pickups_Style_01a
					GTR_Pickups_Style_01b
					GTR_Pickups_Style_01c
					GTR_Pickup_Type1_Blk_1
					GTR_Pickup_Type1_Blk_2
					GTR_Pickup_Type1_Blk_3
					GTR_Pickup_Type2_03
					GTR_Pickup_Type2_04
					GTR_Pickup_Type3_02
					GTR_Pickup_Type3_03
					GTR_Pickup_Type3b_02
					GTR_Pickup_Type3b_03
					GTR_Pickup_Type4_02
					GTR_Pickup_Type4_03
					GTR_Pickup_Type1_Blktan_1
					GTR_Pickup_Type1_Blktan_2
					GTR_Pickup_Type1_Blktan_3
					GTR_Pickup_Type5_01
					GTR_Pickup_Type5_02
					GTR_Pickup_Type5_03
					GTR_Pickup_Type6_TKD_03
					GTR_Pickup_Type6_TKD_02
					GTR_Pickup_Type6_TKD_01
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR9_Knob_Type1_03
					GTR9_Knob_Type2_03
					GTR9_Knob_Type3_03
					GTR9_Knob_Type4_03
					GTR9_Knob_Type5_03
					GTR9_Knob_Type6_03
					GTR9_Knob_Type7_03
					GTR9_Knob_Type8_03
					GTR9_Knob_Type9_03
					GTR9_Knob_Type10_03
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware01b
					GTR_Hardware01a
					GTR_Hardware06
					GTR_Hardware07
				]
			}
		]
	}
	{
		desc_id = guitar_body10
		frontend_desc = qs("\LFrydaze")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Body10.skin'
		pak_num = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style10_d_01.dds'
				material = Guitar_Body_Style_10_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_Guitar10_Body
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style10_D_01.dds'
				material = Guitar_Body_Style_10_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_Guitar10_Body_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style10_D_01.dds'
				material = Guitar_Body_Style_10_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style10_D_01.dds'
				material = Guitar_Body_Style_10_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style10_D_01.dds'
				material = Guitar_Body_Style_10_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style10_D_01.dds'
				material = Guitar_Body_Style_10_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style10_D_01.dds'
				material = Guitar_Body_Style_10_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style10_D_01.dds'
				material = Guitar_Body_Style_10_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style10_D_01.dds'
				material = Guitar_Body_Style_10_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style10_D_01.dds'
				material = Guitar_Body_Style_10_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style10_D_01.dds'
				material = Guitar_Body_Style_10_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style10_D_01.dds'
				material = Guitar_Body_Style_10_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style10_D_01.dds'
				material = Guitar_Body_Style_10_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_91
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					GTR_Body10_PickG01
					GTR_Body10_PickG02
					GTR_Body10_PickG03
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR_Pickups_Style_01a
					GTR_Pickups_Style_01b
					GTR_Pickups_Style_01c
					GTR_Pickup_Type1_Blk_1
					GTR_Pickup_Type1_Blk_2
					GTR_Pickup_Type1_Blk_3
					GTR_Pickup_Type2_03
					GTR_Pickup_Type2_04
					GTR_Pickup_Type3_02
					GTR_Pickup_Type3_03
					GTR_Pickup_Type3b_02
					GTR_Pickup_Type3b_03
					GTR_Pickup_Type4_02
					GTR_Pickup_Type4_03
					GTR_Pickup_Type1_Blktan_1
					GTR_Pickup_Type1_Blktan_2
					GTR_Pickup_Type1_Blktan_3
					GTR_Pickup_Type5_01
					GTR_Pickup_Type5_02
					GTR_Pickup_Type5_03
					GTR_Pickup_Type6_TKD_03
					GTR_Pickup_Type6_TKD_02
					GTR_Pickup_Type6_TKD_01
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR10_Knob_Type1_03
					GTR10_Knob_Type2_03
					GTR10_Knob_Type3_03
					GTR10_Knob_Type4_03
					GTR10_Knob_Type5_03
					GTR10_Knob_Type6_03
					GTR10_Knob_Type7_03
					GTR10_Knob_Type8_03
					GTR10_Knob_Type9_03
					GTR10_Knob_Type10_03
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware01b
					GTR_Hardware01a
					GTR_Hardware05
					GTR_Hardware06
					GTR_Hardware07
				]
			}
		]
	}
	{
		desc_id = guitar_body11
		frontend_desc = qs("\LHammer On")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Body11.skin'
		pak_num = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style11_d_01.dds'
				material = Guitar_Body_Style_11_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_Guitar11_Body
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style11_D_01.dds'
				material = Guitar_Body_Style_11_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_Guitar11_Body_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style11_D_01.dds'
				material = Guitar_Body_Style_11_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_94
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style11_D_01.dds'
				material = Guitar_Body_Style_11_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_94
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style11_D_01.dds'
				material = Guitar_Body_Style_11_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_94
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style11_D_01.dds'
				material = Guitar_Body_Style_11_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_94
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style11_D_01.dds'
				material = Guitar_Body_Style_11_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_94
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style11_D_01.dds'
				material = Guitar_Body_Style_11_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_94
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style11_D_01.dds'
				material = Guitar_Body_Style_11_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_94
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style11_D_01.dds'
				material = Guitar_Body_Style_11_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_94
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style11_D_01.dds'
				material = Guitar_Body_Style_11_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_94
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style11_D_01.dds'
				material = Guitar_Body_Style_11_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_94
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style11_D_01.dds'
				material = Guitar_Body_Style_11_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_94
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					GTR_Body11_PickG01
					GTR_Body11_PickG02
					GTR_Body11_PickG03
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR_Pickups_Style_01a
					GTR_Pickups_Style_01b
					GTR_Pickups_Style_01c
					GTR_Pickup_Type1_Blk_1
					GTR_Pickup_Type1_Blk_2
					GTR_Pickup_Type1_Blk_3
					GTR_Pickup_Type2_03
					GTR_Pickup_Type2_04
					GTR_Pickup_Type3_02
					GTR_Pickup_Type3_03
					GTR_Pickup_Type3b_02
					GTR_Pickup_Type3b_03
					GTR_Pickup_Type4_02
					GTR_Pickup_Type4_03
					GTR_Pickup_Type1_Blktan_1
					GTR_Pickup_Type1_Blktan_2
					GTR_Pickup_Type1_Blktan_3
					GTR_Pickup_Type5_01
					GTR_Pickup_Type5_02
					GTR_Pickup_Type5_03
					GTR_Pickup_Type6_TKD_03
					GTR_Pickup_Type6_TKD_02
					GTR_Pickup_Type6_TKD_01
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR11_Knob_Type1_03
					GTR11_Knob_Type2_03
					GTR11_Knob_Type3_03
					GTR11_Knob_Type4_03
					GTR11_Knob_Type5_03
					GTR11_Knob_Type6_03
					GTR11_Knob_Type7_03
					GTR11_Knob_Type8_03
					GTR11_Knob_Type9_03
					GTR11_Knob_Type10_03
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware01b
					GTR_Hardware01a
					GTR_Hardware05
					GTR_Hardware06
					GTR_Hardware07
				]
			}
		]
	}
	{
		desc_id = Guitar_Body12
		frontend_desc = qs("\LJumbo Jazzbox")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Body12.skin'
		pak_num = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style12_d_01.dds'
				material = Guitar_Body_Style_12_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_Guitar12_Body
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style12_D_01.dds'
				material = Guitar_Body_Style_12_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_Guitar12_Body_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style12_D_01.dds'
				material = Guitar_Body_Style_12_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style12_D_01.dds'
				material = Guitar_Body_Style_12_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style12_D_01.dds'
				material = Guitar_Body_Style_12_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style12_D_01.dds'
				material = Guitar_Body_Style_12_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style12_D_01.dds'
				material = Guitar_Body_Style_12_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style12_D_01.dds'
				material = Guitar_Body_Style_12_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style12_D_01.dds'
				material = Guitar_Body_Style_12_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style12_D_01.dds'
				material = Guitar_Body_Style_12_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style12_D_01.dds'
				material = Guitar_Body_Style_12_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style12_D_01.dds'
				material = Guitar_Body_Style_12_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style12_D_01.dds'
				material = Guitar_Body_Style_12_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_91
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					GTR_Body12_PickG01
					GTR_Body12_PickG02
					GTR_Body12_PickG03
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR_Pickups_Style_01a
					GTR_Pickups_Style_01b
					GTR_Pickups_Style_01c
					GTR_Pickup_Type1_Blk_1
					GTR_Pickup_Type1_Blk_2
					GTR_Pickup_Type1_Blk_3
					GTR_Pickup_Type2_03
					GTR_Pickup_Type2_04
					GTR_Pickup_Type3_02
					GTR_Pickup_Type3_03
					GTR_Pickup_Type3b_02
					GTR_Pickup_Type3b_03
					GTR_Pickup_Type4_02
					GTR_Pickup_Type4_03
					GTR_Pickup_Type1_Blktan_1
					GTR_Pickup_Type1_Blktan_2
					GTR_Pickup_Type1_Blktan_3
					GTR_Pickup_Type5_01
					GTR_Pickup_Type5_02
					GTR_Pickup_Type5_03
					GTR_Pickup_Type6_TKD_03
					GTR_Pickup_Type6_TKD_02
					GTR_Pickup_Type6_TKD_01
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR12_Knob_Type1_04
					GTR12_Knob_Type2_04
					GTR12_Knob_Type3_04
					GTR12_Knob_Type4_04
					GTR12_Knob_Type5_04
					GTR12_Knob_Type6_04
					GTR12_Knob_Type7_04
					GTR12_Knob_Type8_04
					GTR12_Knob_Type9_04
					GTR12_Knob_Type10_04
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR12_Hardware_01
					GTR_Hardware05
					GTR_Hardware06
					GTR_Hardware07
				]
			}
		]
	}
	{
		desc_id = guitar_body13
		frontend_desc = qs("\LTwango")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Body13.skin'
		pak_num = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style13_d_01.dds'
				material = Guitar_Body_Style_13_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_Guitar13_Body
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style13_D_01.dds'
				material = Guitar_Body_Style_13_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_Guitar13_Body_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style13_D_01.dds'
				material = Guitar_Body_Style_13_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style13_D_01.dds'
				material = Guitar_Body_Style_13_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style13_D_01.dds'
				material = Guitar_Body_Style_13_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style13_D_01.dds'
				material = Guitar_Body_Style_13_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style13_D_01.dds'
				material = Guitar_Body_Style_13_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style13_D_01.dds'
				material = Guitar_Body_Style_13_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style13_D_01.dds'
				material = Guitar_Body_Style_13_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style13_D_01.dds'
				material = Guitar_Body_Style_13_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style13_D_01.dds'
				material = Guitar_Body_Style_13_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style13_D_01.dds'
				material = Guitar_Body_Style_13_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style13_D_01.dds'
				material = Guitar_Body_Style_13_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_91
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					GTR_Body13_PickG01
					GTR_Body13_PickG02
					GTR_Body13_PickG03
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR_Pickups_Style_01a
					GTR_Pickups_Style_01b
					GTR_Pickups_Style_01c
					GTR_Pickup_Type1_Blk_1
					GTR_Pickup_Type1_Blk_2
					GTR_Pickup_Type1_Blk_3
					GTR_Pickup_Type2_03
					GTR_Pickup_Type2_04
					GTR_Pickup_Type3_02
					GTR_Pickup_Type3_03
					GTR_Pickup_Type3b_02
					GTR_Pickup_Type3b_03
					GTR_Pickup_Type4_02
					GTR_Pickup_Type4_03
					GTR_Pickup_Type1_Blktan_1
					GTR_Pickup_Type1_Blktan_2
					GTR_Pickup_Type1_Blktan_3
					GTR_Pickup_Type5_01
					GTR_Pickup_Type5_02
					GTR_Pickup_Type5_03
					GTR_Pickup_Type6_TKD_03
					GTR_Pickup_Type6_TKD_02
					GTR_Pickup_Type6_TKD_01
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR13_Knob_Type1_02
					GTR13_Knob_Type2_02
					GTR13_Knob_Type3_02
					GTR13_Knob_Type4_02
					GTR13_Knob_Type5_02
					GTR13_Knob_Type6_02
					GTR13_Knob_Type7_02
					GTR13_Knob_Type8_02
					GTR13_Knob_Type9_02
					GTR13_Knob_Type10_02
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware01b
					GTR_Hardware01a
					GTR_Hardware05
					GTR_Hardware06
					GTR_Hardware07
				]
			}
		]
	}
	{
		desc_id = guitar_body14
		frontend_desc = qs("\LCrotch Rocker")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Body14.skin'
		pak_num = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style14_d_01.dds'
				material = Guitar_Body_Style_14_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_Guitar14_Body
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style14_D_01.dds'
				material = Guitar_Body_Style_14_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_Guitar14_Body_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style14_D_01.dds'
				material = Guitar_Body_Style_14_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style14_D_01.dds'
				material = Guitar_Body_Style_14_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style14_D_01.dds'
				material = Guitar_Body_Style_14_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style14_D_01.dds'
				material = Guitar_Body_Style_14_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style14_D_01.dds'
				material = Guitar_Body_Style_14_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style14_D_01.dds'
				material = Guitar_Body_Style_14_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style14_D_01.dds'
				material = Guitar_Body_Style_14_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style14_D_01.dds'
				material = Guitar_Body_Style_14_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style14_D_01.dds'
				material = Guitar_Body_Style_14_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style14_D_01.dds'
				material = Guitar_Body_Style_14_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_91
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style14_D_01.dds'
				material = Guitar_Body_Style_14_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_91
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					GTR_Body14_PickG01
					GTR_Body14_PickG02
					GTR_Body14_PickG03
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR_Pickups_Style_01a
					GTR_Pickups_Style_01b
					GTR_Pickups_Style_01c
					GTR_Pickup_Type1_Blk_1
					GTR_Pickup_Type1_Blk_2
					GTR_Pickup_Type1_Blk_3
					GTR_Pickup_Type2_03
					GTR_Pickup_Type2_04
					GTR_Pickup_Type3_02
					GTR_Pickup_Type3_03
					GTR_Pickup_Type3b_02
					GTR_Pickup_Type3b_03
					GTR_Pickup_Type4_02
					GTR_Pickup_Type4_03
					GTR_Pickup_Type1_Blktan_1
					GTR_Pickup_Type1_Blktan_2
					GTR_Pickup_Type1_Blktan_3
					GTR_Pickup_Type5_01
					GTR_Pickup_Type5_02
					GTR_Pickup_Type5_03
					GTR_Pickup_Type6_TKD_03
					GTR_Pickup_Type6_TKD_02
					GTR_Pickup_Type6_TKD_01
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR14_Knob_Type1_04
					GTR14_Knob_Type2_04
					GTR14_Knob_Type3_04
					GTR14_Knob_Type4_04
					GTR14_Knob_Type5_04
					GTR14_Knob_Type6_04
					GTR14_Knob_Type7_04
					GTR14_Knob_Type8_04
					GTR14_Knob_Type9_04
					GTR14_Knob_Type10_04
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware01b
					GTR_Hardware01a
					GTR_Hardware05
					GTR_Hardware06
					GTR_Hardware07
				]
			}
		]
	}
	{
		desc_id = guitar_body15
		frontend_desc = qs("\LStar Child")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Body15.skin'
		pak_num = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style15_d_01.dds'
				material = Guitar_Body_Style_15_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_Guitar15_Body
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style15_D_01.dds'
				material = Guitar_Body_Style_15_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_Guitar15_Body_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style15_D_01.dds'
				material = Guitar_Body_Style_15_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_103
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style15_D_01.dds'
				material = Guitar_Body_Style_15_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_103
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style15_D_01.dds'
				material = Guitar_Body_Style_15_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_103
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style15_D_01.dds'
				material = Guitar_Body_Style_15_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_103
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style15_D_01.dds'
				material = Guitar_Body_Style_15_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_103
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style15_D_01.dds'
				material = Guitar_Body_Style_15_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_103
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style15_D_01.dds'
				material = Guitar_Body_Style_15_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_103
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style15_D_01.dds'
				material = Guitar_Body_Style_15_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_103
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style15_D_01.dds'
				material = Guitar_Body_Style_15_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_103
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style15_D_01.dds'
				material = Guitar_Body_Style_15_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_103
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Body_Style15_D_01.dds'
				material = Guitar_Body_Style_15_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_103
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					GTR_Body15_PickG01
					GTR_Body15_PickG02
					GTR_Body15_PickG03
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR_Pickups_Style_01a
					GTR_Pickups_Style_01b
					GTR_Pickups_Style_01c
					GTR_Pickup_Type1_Blk_1
					GTR_Pickup_Type1_Blk_2
					GTR_Pickup_Type1_Blk_3
					GTR_Pickup_Type2_03
					GTR_Pickup_Type2_04
					GTR_Pickup_Type3_02
					GTR_Pickup_Type3_03
					GTR_Pickup_Type3b_02
					GTR_Pickup_Type3b_03
					GTR_Pickup_Type4_02
					GTR_Pickup_Type4_03
					GTR_Pickup_Type1_Blktan_1
					GTR_Pickup_Type1_Blktan_2
					GTR_Pickup_Type1_Blktan_3
					GTR_Pickup_Type5_01
					GTR_Pickup_Type5_02
					GTR_Pickup_Type5_03
					GTR_Pickup_Type6_TKD_03
					GTR_Pickup_Type6_TKD_02
					GTR_Pickup_Type6_TKD_01
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR15_Knob_Type1_03
					GTR15_Knob_Type2_03
					GTR15_Knob_Type3_03
					GTR15_Knob_Type4_03
					GTR15_Knob_Type5_03
					GTR15_Knob_Type6_03
					GTR15_Knob_Type7_03
					GTR15_Knob_Type8_03
					GTR15_Knob_Type9_03
					GTR15_Knob_Type10_03
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware01b
					GTR_Hardware01a
					GTR_Hardware06
					GTR_Hardware07
				]
			}
		]
	}
	{
		desc_id = guitar_body16
		frontend_desc = qs("\LPrediktor")
		mesh = 'models/CAR_Instruments/Guitar/CAG_Body_Prediktor.skin'
		price = 500
		pak_num = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_predikt_body01_d_mls.dds'
				material = Guitar_Body_Prediktor_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_Guitar16_Body
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_predikt_body01_d_mls.dds'
				material = Guitar_Body_Prediktor_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_Guitar16_Body_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_predikt_body01_d_mls.dds'
				material = Guitar_Body_Prediktor_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_106
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_predikt_body01_d_mls.dds'
				material = Guitar_Body_Prediktor_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_106
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_predikt_body01_d_mls.dds'
				material = Guitar_Body_Prediktor_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_106
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_predikt_body01_d_mls.dds'
				material = Guitar_Body_Prediktor_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_106
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_predikt_body01_d_mls.dds'
				material = Guitar_Body_Prediktor_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_106
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_predikt_body01_d_mls.dds'
				material = Guitar_Body_Prediktor_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_106
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_predikt_body01_d_mls.dds'
				material = Guitar_Body_Prediktor_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_106
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_predikt_body01_d_mls.dds'
				material = Guitar_Body_Prediktor_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_106
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_predikt_body01_d_mls.dds'
				material = Guitar_Body_Prediktor_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_106
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_predikt_body01_d_mls.dds'
				material = Guitar_Body_Prediktor_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_106
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_predikt_body01_d_mls.dds'
				material = Guitar_Body_Prediktor_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_106
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					GTR_Body16_PickG01
					GTR_Body16_PickG02
					GTR_Body16_PickG03
					GTR_Body16_PickG04
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR_Pickups_Style_01a
					GTR_Pickups_Style_01b
					GTR_Pickups_Style_01c
					GTR_Pickup_Type1_Blk_1
					GTR_Pickup_Type1_Blk_2
					GTR_Pickup_Type1_Blk_3
					GTR_Pickup_Type2_03
					GTR_Pickup_Type2_04
					GTR_Pickup_Type3_02
					GTR_Pickup_Type3_03
					GTR_Pickup_Type3b_02
					GTR_Pickup_Type3b_03
					GTR_Pickup_Type4_02
					GTR_Pickup_Type4_03
					GTR_Pickup_Type1_Blktan_1
					GTR_Pickup_Type1_Blktan_2
					GTR_Pickup_Type1_Blktan_3
					GTR_Pickup_Type5_01
					GTR_Pickup_Type5_02
					GTR_Pickup_Type5_03
					GTR_Pickup_Type6_TKD_03
					GTR_Pickup_Type6_TKD_02
					GTR_Pickup_Type6_TKD_01
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR4_Knob_Type1_04
					GTR4_Knob_Type1_03
					GTR4_Knob_Type2_02
					GTR4_Knob_Type2_03
					GTR4_Knob_Type2_04
					GTR4_Knob_Type3_04
					GTR4_Knob_Type4_04
					GTR4_Knob_Type5_04
					GTR4_Knob_Type6_04
					GTR4_Knob_Type7_04
					GTR4_Knob_Type8_04
					GTR4_Knob_Type9_04
					GTR4_Knob_Type10_04
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware01b
					GTR_Hardware01a
					GTR_Hardware05
					GTR_Hardware06
					GTR_Hardware07
				]
			}
		]
	}
	{
		desc_id = guitar_body17
		frontend_desc = qs("\LThe Bandera")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Body17.skin'
		pak_num = 1
		price = 500
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style17_d.dds'
				material = Guitar_Body_Bandera_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_Guitar17_Body
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style17_d.dds'
				material = Guitar_Body_Bandera_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_Guitar17_Body_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style17_d.dds'
				material = Guitar_Body_Bandera_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_103
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style17_d.dds'
				material = Guitar_Body_Bandera_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_103
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style17_d.dds'
				material = Guitar_Body_Bandera_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_103
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style17_d.dds'
				material = Guitar_Body_Bandera_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_103
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style17_d.dds'
				material = Guitar_Body_Bandera_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_103
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style17_d.dds'
				material = Guitar_Body_Bandera_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_103
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style17_d.dds'
				material = Guitar_Body_Bandera_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_103
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style17_d.dds'
				material = Guitar_Body_Bandera_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_103
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style17_d.dds'
				material = Guitar_Body_Bandera_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_103
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style17_d.dds'
				material = Guitar_Body_Bandera_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_103
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style17_d.dds'
				material = Guitar_Body_Bandera_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_103
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					gtr_body17_pickg01
					gtr_body17_pickg02
					gtr_body17_pickg03
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR_Pickups_Style_01a
					GTR_Pickups_Style_01b
					GTR_Pickups_Style_01c
					GTR_Pickup_Type1_Blk_1
					GTR_Pickup_Type1_Blk_2
					GTR_Pickup_Type1_Blk_3
					GTR_Pickup_Type2_03
					GTR_Pickup_Type2_04
					GTR_Pickup_Type3_02
					GTR_Pickup_Type3_03
					GTR_Pickup_Type3b_02
					GTR_Pickup_Type3b_03
					GTR_Pickup_Type4_02
					GTR_Pickup_Type4_03
					GTR_Pickup_Type1_Blktan_1
					GTR_Pickup_Type1_Blktan_2
					GTR_Pickup_Type1_Blktan_3
					GTR_Pickup_Type5_01
					GTR_Pickup_Type5_02
					GTR_Pickup_Type5_03
					GTR_Pickup_Type6_TKD_03
					GTR_Pickup_Type6_TKD_02
					GTR_Pickup_Type6_TKD_01
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR13_Knob_Type1_02
					GTR13_Knob_Type2_02
					GTR13_Knob_Type3_02
					GTR13_Knob_Type4_02
					GTR13_Knob_Type5_02
					GTR13_Knob_Type6_02
					GTR13_Knob_Type7_02
					GTR13_Knob_Type8_02
					GTR13_Knob_Type9_02
					GTR13_Knob_Type10_02
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware01b
					GTR_Hardware01a
					GTR_Hardware05
					GTR_Hardware06
					GTR_Hardware07
				]
			}
		]
	}
	{
		desc_id = GTR_Body_Style_20
		frontend_desc = qs("\LManta")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body_Style_20.skin'
		price = 500
		pak_num = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style20_d_01.dds'
				material = Guitar_Body_Style_20_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_Guitar20_Body
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style20_d_01.dds'
				material = Guitar_Body_Style_20_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_Guitar20_Body_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style20_d_01.dds'
				material = Guitar_Body_Style_20_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_111
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style20_d_01.dds'
				material = Guitar_Body_Style_20_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_111
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style20_d_01.dds'
				material = Guitar_Body_Style_20_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_111
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style20_d_01.dds'
				material = Guitar_Body_Style_20_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_111
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style20_d_01.dds'
				material = Guitar_Body_Style_20_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_111
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style20_d_01.dds'
				material = Guitar_Body_Style_20_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_111
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style20_d_01.dds'
				material = Guitar_Body_Style_20_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_111
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style20_d_01.dds'
				material = Guitar_Body_Style_20_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_111
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style20_d_01.dds'
				material = Guitar_Body_Style_20_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_111
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style20_d_01.dds'
				material = Guitar_Body_Style_20_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_111
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body_style20_d_01.dds'
				material = Guitar_Body_Style_20_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_111
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					gtr_body20_pickg02
					gtr_body20_pickg01
					gtr_body20_pickg03
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR_Pickups_Style_01a
					GTR_Pickups_Style_01b
					GTR_Pickups_Style_01c
					GTR_Pickup_Type1_Blk_1
					GTR_Pickup_Type1_Blk_2
					GTR_Pickup_Type1_Blk_3
					GTR_Pickup_Type2_03
					GTR_Pickup_Type2_04
					GTR_Pickup_Type3_02
					GTR_Pickup_Type3_03
					GTR_Pickup_Type3b_02
					GTR_Pickup_Type3b_03
					GTR_Pickup_Type4_02
					GTR_Pickup_Type4_03
					GTR_Pickup_Type1_Blktan_1
					GTR_Pickup_Type1_Blktan_2
					GTR_Pickup_Type1_Blktan_3
					GTR_Pickup_Type5_01
					GTR_Pickup_Type5_02
					GTR_Pickup_Type5_03
					GTR_Pickup_Type6_TKD_03
					GTR_Pickup_Type6_TKD_02
					GTR_Pickup_Type6_TKD_01
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					gtr20_knob_type1_03
					gtr20_knob_type2_03
					gtr20_knob_type3_03
					gtr20_knob_type4_03
					gtr20_knob_type5_03
					gtr20_knob_type6_03
					gtr20_knob_type7_03
					gtr20_knob_type8_03
					gtr20_knob_type9_03
					gtr20_knob_type10_03
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware01b
					GTR_Hardware01a
					GTR_Hardware06
					GTR_Hardware07
				]
			}
		]
	}
	{
		desc_id = Guitar_X_Clear_11
		frontend_desc = qs("\LClear Cut")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_X_Clear_11.skin'
		polaroid = guitar_rewards_clearcut
		price = 2000
		pak_num = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_clear_d_11.dds'
				material = Guitar_X_Clear_11_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_112
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					GTR_X_Clear_PickG01
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR_Pickups_Style_01a
					GTR_Pickups_Style_01b
					GTR_Pickups_Style_01c
					GTR_Pickup_Type1_Blk_1
					GTR_Pickup_Type1_Blk_2
					GTR_Pickup_Type1_Blk_3
					GTR_Pickup_Type2_03
					GTR_Pickup_Type2_04
					GTR_Pickup_Type3_02
					GTR_Pickup_Type3_03
					GTR_Pickup_Type3b_02
					GTR_Pickup_Type3b_03
					GTR_Pickup_Type4_02
					GTR_Pickup_Type4_03
					GTR_Pickup_Type1_Blktan_1
					GTR_Pickup_Type1_Blktan_2
					GTR_Pickup_Type1_Blktan_3
					GTR_Pickup_Type5_01
					GTR_Pickup_Type5_02
					GTR_Pickup_Type5_03
					GTR_Pickup_Type6_TKD_03
					GTR_Pickup_Type6_TKD_02
					GTR_Pickup_Type6_TKD_01
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					gtr31_knob_type1_03
					gtr31_knob_type2_03
					gtr31_knob_type3_03
					gtr31_knob_type4_03
					gtr31_knob_type5_03
					gtr31_knob_type6_03
					gtr31_knob_type7_03
					gtr31_knob_type8_03
					gtr31_knob_type9_03
					gtr31_knob_type10_03
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware01b
					GTR_Hardware01a
					GTR_Hardware05
					GTR_Hardware06
					GTR_Hardware07
				]
			}
		]
	}
	{
		desc_id = Guitar_X_Clear_12
		frontend_desc = qs("\LBlinding Light")
		polaroid = guitar_rewards_blinding_light
		price = 5000
		mesh = 'models/CAR_Instruments/Guitar/Guitar_X_Clear_12.skin'
		pak_num = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_clear_d_11.dds'
				material = Guitar_X_Clear_12_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_112
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					GTR_X_Clear2_PickG02
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR_Pickups_Style_01a
					GTR_Pickups_Style_01b
					GTR_Pickups_Style_01c
					GTR_Pickup_Type1_Blk_1
					GTR_Pickup_Type1_Blk_2
					GTR_Pickup_Type1_Blk_3
					GTR_Pickup_Type2_03
					GTR_Pickup_Type2_04
					GTR_Pickup_Type3_02
					GTR_Pickup_Type3_03
					GTR_Pickup_Type3b_02
					GTR_Pickup_Type3b_03
					GTR_Pickup_Type4_02
					GTR_Pickup_Type4_03
					GTR_Pickup_Type1_Blktan_1
					GTR_Pickup_Type1_Blktan_2
					GTR_Pickup_Type1_Blktan_3
					GTR_Pickup_Type5_01
					GTR_Pickup_Type5_02
					GTR_Pickup_Type5_03
					GTR_Pickup_Type6_TKD_03
					GTR_Pickup_Type6_TKD_02
					GTR_Pickup_Type6_TKD_01
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					gtr32_knob_type1_03
					gtr32_knob_type2_03
					gtr32_knob_type3_03
					gtr32_knob_type4_03
					gtr32_knob_type5_03
					gtr32_knob_type6_03
					gtr32_knob_type7_03
					gtr32_knob_type8_03
					gtr32_knob_type9_03
					gtr32_knob_type10_03
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware01b
					GTR_Hardware01a
					GTR_Hardware05
					GTR_Hardware06
					GTR_Hardware07
				]
			}
		]
	}
	{
		desc_id = Guitar_X_Peace_13
		frontend_desc = qs("\LPeace Out")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_X_Peace_13.skin'
		pak_num = 2
		price = 1200
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_peace_d_13.dds'
				material = GTR_Body_X_Peace_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("FINISHES")
				mask = $CAG_X_Guitar_Peace
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_peace_d_13.dds'
				material = GTR_Body_X_Peace_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_X_Guitar_Peace_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_peace_d_13.dds'
				material = GTR_Body_X_Peace_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_115
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_peace_d_13.dds'
				material = GTR_Body_X_Peace_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_115
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_peace_d_13.dds'
				material = GTR_Body_X_Peace_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_115
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_peace_d_13.dds'
				material = GTR_Body_X_Peace_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_115
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_peace_d_13.dds'
				material = GTR_Body_X_Peace_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_115
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_peace_d_13.dds'
				material = GTR_Body_X_Peace_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_115
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_peace_d_13.dds'
				material = GTR_Body_X_Peace_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_115
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_peace_d_13.dds'
				material = GTR_Body_X_Peace_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_115
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_peace_d_13.dds'
				material = GTR_Body_X_Peace_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_115
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_peace_d_13.dds'
				material = GTR_Body_X_Peace_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_115
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_peace_d_13.dds'
				material = GTR_Body_X_Peace_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_115
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					GTR_X_Peace_PickG01
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR_Pickups_Style_01a
					GTR_Pickups_Style_01b
					GTR_Pickups_Style_01c
					GTR_Pickup_Type1_Blk_1
					GTR_Pickup_Type1_Blk_2
					GTR_Pickup_Type1_Blk_3
					GTR_Pickup_Type2_03
					GTR_Pickup_Type2_04
					GTR_Pickup_Type3_02
					GTR_Pickup_Type3_03
					GTR_Pickup_Type3b_02
					GTR_Pickup_Type3b_03
					GTR_Pickup_Type4_02
					GTR_Pickup_Type4_03
					GTR_Pickup_Type1_Blktan_1
					GTR_Pickup_Type1_Blktan_2
					GTR_Pickup_Type1_Blktan_3
					GTR_Pickup_Type5_01
					GTR_Pickup_Type5_02
					GTR_Pickup_Type5_03
					GTR_Pickup_Type6_TKD_03
					GTR_Pickup_Type6_TKD_02
					GTR_Pickup_Type6_TKD_01
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					gtr_x13_knob_type1_02
					gtr_x13_knob_type2_02
					gtr_x13_knob_type3_02
					gtr_x13_knob_type4_02
					gtr_x13_knob_type5_02
					gtr_x13_knob_type6_02
					gtr_x13_knob_type7_02
					gtr_x13_knob_type8_02
					gtr_x13_knob_type9_02
					gtr_x13_knob_type10_02
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware01a
					GTR_Hardware01b
					GTR_Hardware05
					GTR_Hardware06
					GTR_Hardware07
				]
			}
		]
	}
	{
		desc_id = Guitar_X_Anarchy_03
		frontend_desc = qs("\LAnarchy A")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_X_Anarchy_03.skin'
		price = 1500
		polaroid = guitar_rewards_body_anarchy
		pak_num = 2
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_anarchy_d_03.dds'
				material = GTR_Body_X_Anarchy_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_X_Guitar_Anarchy
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_anarchy_d_03.dds'
				material = GTR_Body_X_Anarchy_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_X_Anarchy_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_anarchy_d_03.dds'
				material = GTR_Body_X_Anarchy_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_115
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_anarchy_d_03.dds'
				material = GTR_Body_X_Anarchy_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_115
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_anarchy_d_03.dds'
				material = GTR_Body_X_Anarchy_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_115
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_anarchy_d_03.dds'
				material = GTR_Body_X_Anarchy_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_115
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_anarchy_d_03.dds'
				material = GTR_Body_X_Anarchy_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_115
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_anarchy_d_03.dds'
				material = GTR_Body_X_Anarchy_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_115
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_anarchy_d_03.dds'
				material = GTR_Body_X_Anarchy_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_115
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_anarchy_d_03.dds'
				material = GTR_Body_X_Anarchy_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_115
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_anarchy_d_03.dds'
				material = GTR_Body_X_Anarchy_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_115
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_anarchy_d_03.dds'
				material = GTR_Body_X_Anarchy_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_115
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_anarchy_d_03.dds'
				material = GTR_Body_X_Anarchy_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_115
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					GTR_X_Anarc_PickG02
					GTR_X_Anarc_PickG01
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR_Pickups_Style_01b
					GTR_Pickups_Style_01a
					GTR_Pickups_Style_01c
					GTR_Pickup_Type1_Blk_1
					GTR_Pickup_Type1_Blk_2
					GTR_Pickup_Type1_Blk_3
					GTR_Pickup_Type2_03
					GTR_Pickup_Type2_04
					GTR_Pickup_Type3_02
					GTR_Pickup_Type3_03
					GTR_Pickup_Type3b_02
					GTR_Pickup_Type3b_03
					GTR_Pickup_Type4_02
					GTR_Pickup_Type4_03
					GTR_Pickup_Type1_Blktan_1
					GTR_Pickup_Type1_Blktan_2
					GTR_Pickup_Type1_Blktan_3
					GTR_Pickup_Type5_01
					GTR_Pickup_Type5_02
					GTR_Pickup_Type5_03
					GTR_Pickup_Type6_TKD_03
					GTR_Pickup_Type6_TKD_02
					GTR_Pickup_Type6_TKD_01
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR_X3_Knob_Type1_03
					GTR_X3_Knob_Type2_03
					GTR_X3_Knob_Type3_03
					GTR_X3_Knob_Type4_03
					GTR_X3_Knob_Type5_03
					GTR_X3_Knob_Type6_03
					GTR_X3_Knob_Type7_03
					GTR_X3_Knob_Type8_03
					GTR_X3_Knob_Type9_03
					GTR_X3_Knob_Type10_03
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_X3_Anarc_Hardware03
				]
			}
		]
	}
	{
		desc_id = Guitar_Special_Skull_01
		frontend_desc = qs("\LSkull-n-Bones")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Special_Skull_01.skin'
		pak_num = 2
		price = 1500
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/Guitar_Special_Skull_D_01.dds'
				material = GTR_Body_X_Skull_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_Special_Guitar_Skull
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_skull_d_01.dds'
				material = GTR_Body_X_Skull_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_X_Skull_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_skull_d_01.dds'
				material = GTR_Body_X_Skull_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_120
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_skull_d_01.dds'
				material = GTR_Body_X_Skull_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_120
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/Guitar_Special_Skull_D_01.dds'
				material = GTR_Body_X_Skull_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_120
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/Guitar_Special_Skull_D_01.dds'
				material = GTR_Body_X_Skull_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_120
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/Guitar_Special_Skull_D_01.dds'
				material = GTR_Body_X_Skull_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_120
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/Guitar_Special_Skull_D_01.dds'
				material = GTR_Body_X_Skull_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_120
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/Guitar_Special_Skull_D_01.dds'
				material = GTR_Body_X_Skull_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_120
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/Guitar_Special_Skull_D_01.dds'
				material = GTR_Body_X_Skull_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_120
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/Guitar_Special_Skull_D_01.dds'
				material = GTR_Body_X_Skull_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_120
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/Guitar_Special_Skull_D_01.dds'
				material = GTR_Body_X_Skull_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_120
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/Guitar_Special_Skull_D_01.dds'
				material = GTR_Body_X_Skull_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_120
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					gtr_x_skull_pickg01
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR_X1_Skull_Pickup_01
					GTR_Pickup_skul1_Blk_01
					GTR_Pickup_Skul1_Blktan_01
					none
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR_X1_Skull_Knob_02
					GTR_X1_Skull_Knob_01
					GTR_X1_Knob_Type2_02
					GTR_X1_Knob_Type2_01
					GTR_X1_Knob_Type3_02
					GTR_X1_Knob_Type3_01
					GTR_X1_Knob_Type4_02
					GTR_X1_Knob_Type4_01
					GTR_X1_Knob_Type5_02
					GTR_X1_Knob_Type5_01
					GTR_X1_Knob_Type6_02
					GTR_X1_Knob_Type6_01
					GTR_X1_Knob_Type7_02
					GTR_X1_Knob_Type7_01
					GTR_X1_Knob_Type8_02
					GTR_X1_Knob_Type8_01
					GTR_X1_Knob_Type9_02
					GTR_X1_Knob_Type9_01
					GTR_X1_Knob_Type10_02
					GTR_X1_Knob_Type10_01
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_X1_Skull_Hardware02
				]
			}
		]
	}
	{
		desc_id = Guitar_Special_Spider_02
		frontend_desc = qs("\LSpider")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Special_Spider_02.skin'
		price = 1000
		polaroid = guitar_rewards_body_spider
		pak_num = 2
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/Guitar_Special_Spider_D_01.dds'
				material = GTR_Body_X_Spider_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("FINISHES")
				mask = $CAG_Special_Guitar_Spider
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/Guitar_Special_Spider_D_01.dds'
				material = GTR_Body_X_Spider_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_X_Spider_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/Guitar_Special_Spider_D_01.dds'
				material = GTR_Body_X_Spider_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_123
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/Guitar_Special_Spider_D_01.dds'
				material = GTR_Body_X_Spider_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_123
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/Guitar_Special_Spider_D_01.dds'
				material = GTR_Body_X_Spider_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_123
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/Guitar_Special_Spider_D_01.dds'
				material = GTR_Body_X_Spider_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_123
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/Guitar_Special_Spider_D_01.dds'
				material = GTR_Body_X_Spider_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_123
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/Guitar_Special_Spider_D_01.dds'
				material = GTR_Body_X_Spider_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_123
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/Guitar_Special_Spider_D_01.dds'
				material = GTR_Body_X_Spider_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_123
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/Guitar_Special_Spider_D_01.dds'
				material = GTR_Body_X_Spider_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_123
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/Guitar_Special_Spider_D_01.dds'
				material = GTR_Body_X_Spider_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_123
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/Guitar_Special_Spider_D_01.dds'
				material = GTR_Body_X_Spider_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_123
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/Guitar_Special_Spider_D_01.dds'
				material = GTR_Body_X_Spider_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_123
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					GTR_X_Spider_PickG01
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR_Pickups_Style_01a
					GTR_Pickups_Style_01b
					GTR_Pickups_Style_01c
					GTR_Pickup_Type1_Blk_1
					GTR_Pickup_Type1_Blk_2
					GTR_Pickup_Type1_Blk_3
					GTR_Pickup_Type2_03
					GTR_Pickup_Type2_04
					GTR_Pickup_Type3_02
					GTR_Pickup_Type3_03
					GTR_Pickup_Type3b_02
					GTR_Pickup_Type3b_03
					GTR_Pickup_Type4_02
					GTR_Pickup_Type4_03
					GTR_Pickup_Type1_Blktan_1
					GTR_Pickup_Type1_Blktan_2
					GTR_Pickup_Type1_Blktan_3
					GTR_Pickup_Type5_01
					GTR_Pickup_Type5_02
					GTR_Pickup_Type5_03
					GTR_Pickup_Type6_TKD_03
					GTR_Pickup_Type6_TKD_02
					GTR_Pickup_Type6_TKD_01
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR_X2_Knob_Type1_03
					GTR_X2_Knob_Type2_03
					GTR_X2_Knob_Type2_03
					GTR_X2_Knob_Type4_03
					GTR_X2_Knob_Type5_03
					GTR_X2_Knob_Type6_03
					GTR_X2_Knob_Type7_03
					GTR_X2_Knob_Type8_03
					GTR_X2_Knob_Type9_03
					GTR_X2_Knob_Type10_03
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware01b
					GTR_Hardware01a
					GTR_Hardware05
					GTR_Hardware06
					GTR_Hardware07
				]
			}
		]
	}
	{
		desc_id = Guitar_X_ICross_04
		frontend_desc = qs("\LXross")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_X_ICross_04.skin'
		pak_num = 2
		price = 1500
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_icross_d_04.dds'
				material = GTR_Body_X_ICross_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("FINISHES")
				mask = $CAG_X_Guitar_ICross
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_icross_d_04.dds'
				material = GTR_Body_X_ICross_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_X_Icross_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_icross_d_04.dds'
				material = GTR_Body_X_ICross_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_126
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_icross_d_04.dds'
				material = GTR_Body_X_ICross_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_126
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_icross_d_04.dds'
				material = GTR_Body_X_ICross_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_126
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_icross_d_04.dds'
				material = GTR_Body_X_ICross_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_126
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_icross_d_04.dds'
				material = GTR_Body_X_ICross_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_126
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_icross_d_04.dds'
				material = GTR_Body_X_ICross_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_126
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_icross_d_04.dds'
				material = GTR_Body_X_ICross_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_126
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_icross_d_04.dds'
				material = GTR_Body_X_ICross_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_126
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_icross_d_04.dds'
				material = GTR_Body_X_ICross_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_126
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_icross_d_04.dds'
				material = GTR_Body_X_ICross_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_126
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_icross_d_04.dds'
				material = GTR_Body_X_ICross_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_126
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					GTR_X_Xross_PickG01
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR_Pickups_Style_01a
					GTR_Pickups_Style_01b
					GTR_Pickups_Style_01c
					GTR_Pickup_Type1_Blk_1
					GTR_Pickup_Type1_Blk_2
					GTR_Pickup_Type1_Blk_3
					GTR_Pickup_Type2_03
					GTR_Pickup_Type2_04
					GTR_Pickup_Type3_02
					GTR_Pickup_Type3_03
					GTR_Pickup_Type3b_02
					GTR_Pickup_Type3b_03
					GTR_Pickup_Type4_02
					GTR_Pickup_Type4_03
					GTR_Pickup_Type1_Blktan_1
					GTR_Pickup_Type1_Blktan_2
					GTR_Pickup_Type1_Blktan_3
					GTR_Pickup_Type5_01
					GTR_Pickup_Type5_02
					GTR_Pickup_Type5_03
					GTR_Pickup_Type6_TKD_03
					GTR_Pickup_Type6_TKD_02
					GTR_Pickup_Type6_TKD_01
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR_X4_Knob_Type1_03
					GTR_X4_Knob_Type2_03
					GTR_X4_Knob_Type3_03
					GTR_X4_Knob_Type4_03
					GTR_X4_Knob_Type5_03
					GTR_X4_Knob_Type6_03
					GTR_X4_Knob_Type7_03
					GTR_X4_Knob_Type8_03
					GTR_X4_Knob_Type9_03
					GTR_X4_Knob_Type10_03
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware01b
					GTR_Hardware01a
					GTR_Hardware05
					GTR_Hardware06
					GTR_Hardware07
				]
			}
		]
	}
	{
		desc_id = Guitar_X_Battleaxe_05
		frontend_desc = qs("\LBattle Axe")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_X_Battleaxe_05.skin'
		pak_num = 2
		price = 2000
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_battle_axe_d_05.dds'
				material = GTR_Body_X_Battleaxe_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("FINISHES")
				mask = $CAG_X_Guitar_Battleaxe
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_battle_axe_d_05.dds'
				material = GTR_Body_X_Battleaxe_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_X_Battleaxe_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_battle_axe_d_05.dds'
				material = GTR_Body_X_Battleaxe_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_129
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_battle_axe_d_05.dds'
				material = GTR_Body_X_Battleaxe_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_129
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_battle_axe_d_05.dds'
				material = GTR_Body_X_Battleaxe_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_129
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_battle_axe_d_05.dds'
				material = GTR_Body_X_Battleaxe_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_129
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_battle_axe_d_05.dds'
				material = GTR_Body_X_Battleaxe_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_129
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_battle_axe_d_05.dds'
				material = GTR_Body_X_Battleaxe_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_129
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_battle_axe_d_05.dds'
				material = GTR_Body_X_Battleaxe_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_129
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_battle_axe_d_05.dds'
				material = GTR_Body_X_Battleaxe_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_129
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_battle_axe_d_05.dds'
				material = GTR_Body_X_Battleaxe_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_129
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_battle_axe_d_05.dds'
				material = GTR_Body_X_Battleaxe_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_129
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_battle_axe_d_05.dds'
				material = GTR_Body_X_Battleaxe_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_129
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					GTR_X_Spider_PickG01
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR_Pickups_Style_01a
					GTR_Pickups_Style_01b
					GTR_Pickups_Style_01c
					GTR_Pickup_Type1_Blk_1
					GTR_Pickup_Type1_Blk_2
					GTR_Pickup_Type1_Blk_3
					GTR_Pickup_Type2_03
					GTR_Pickup_Type2_04
					GTR_Pickup_Type3_02
					GTR_Pickup_Type3_03
					GTR_Pickup_Type3b_02
					GTR_Pickup_Type3b_03
					GTR_Pickup_Type4_02
					GTR_Pickup_Type4_03
					GTR_Pickup_Type1_Blktan_1
					GTR_Pickup_Type1_Blktan_2
					GTR_Pickup_Type1_Blktan_3
					GTR_Pickup_Type5_01
					GTR_Pickup_Type5_02
					GTR_Pickup_Type5_03
					GTR_Pickup_Type6_TKD_03
					GTR_Pickup_Type6_TKD_02
					GTR_Pickup_Type6_TKD_01
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR_X5_Knob_Type1_03
					GTR_X5_Knob_Type2_03
					GTR_X5_Knob_Type3_03
					GTR_X5_Knob_Type4_03
					GTR_X5_Knob_Type5_03
					GTR_X5_Knob_Type6_03
					GTR_X5_Knob_Type7_03
					GTR_X5_Knob_Type8_03
					GTR_X5_Knob_Type9_03
					GTR_X5_Knob_Type10_03
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware01b
					GTR_Hardware01a
					GTR_Hardware05
					GTR_Hardware06
					GTR_Hardware07
				]
			}
		]
	}
	{
		desc_id = Guitar_X_Heart_06
		frontend_desc = qs("\LHeart On")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_X_Heart_06.skin'
		pak_num = 2
		price = 750
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_heart_d_06.dds'
				material = GTR_Body_X_Heart_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("FINISHES")
				mask = $CAG_X_Guitar_Heart
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_heart_d_06.dds'
				material = GTR_Body_X_Heart_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_X_Heart_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_heart_d_06.dds'
				material = GTR_Body_X_Heart_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_132
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_heart_d_06.dds'
				material = GTR_Body_X_Heart_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_132
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_heart_d_06.dds'
				material = GTR_Body_X_Heart_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_132
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_heart_d_06.dds'
				material = GTR_Body_X_Heart_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_132
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_heart_d_06.dds'
				material = GTR_Body_X_Heart_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_132
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_heart_d_06.dds'
				material = GTR_Body_X_Heart_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_132
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_heart_d_06.dds'
				material = GTR_Body_X_Heart_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_132
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_heart_d_06.dds'
				material = GTR_Body_X_Heart_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_132
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_heart_d_06.dds'
				material = GTR_Body_X_Heart_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_132
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_heart_d_06.dds'
				material = GTR_Body_X_Heart_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_132
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_heart_d_06.dds'
				material = GTR_Body_X_Heart_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_132
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					GTR_X_Heart_PickG01
					GTR_X_Heart_PickG02
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR_Pickups_Style_01a
					GTR_Pickups_Style_01b
					GTR_Pickups_Style_01c
					GTR_Pickup_Type1_Blk_1
					GTR_Pickup_Type1_Blk_2
					GTR_Pickup_Type1_Blk_3
					GTR_Pickup_Type2_03
					GTR_Pickup_Type2_04
					GTR_Pickup_Type3_02
					GTR_Pickup_Type3_03
					GTR_Pickup_Type3b_02
					GTR_Pickup_Type3b_03
					GTR_Pickup_Type4_02
					GTR_Pickup_Type4_03
					GTR_Pickup_Type1_Blktan_1
					GTR_Pickup_Type1_Blktan_2
					GTR_Pickup_Type1_Blktan_3
					GTR_Pickup_Type5_01
					GTR_Pickup_Type5_02
					GTR_Pickup_Type5_03
					GTR_Pickup_Type6_TKD_03
					GTR_Pickup_Type6_TKD_02
					GTR_Pickup_Type6_TKD_01
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR_X6_Knob_Type1_03
					GTR_X6_Knob_Type2_03
					GTR_X6_Knob_Type3_03
					GTR_X6_Knob_Type4_03
					GTR_X6_Knob_Type5_03
					GTR_X6_Knob_Type6_03
					GTR_X6_Knob_Type7_03
					GTR_X6_Knob_Type8_03
					GTR_X6_Knob_Type9_03
					GTR_X6_Knob_Type10_03
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware01b
					GTR_Hardware01a
					GTR_Hardware05
					GTR_Hardware06
					GTR_Hardware07
				]
			}
		]
	}
	{
		desc_id = Guitar_X_Money_07
		frontend_desc = qs("\LCount It")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_X_Money_07.skin'
		price = 1500
		polaroid = guitar_rewards_body_money
		pak_num = 2
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_money_d_07.dds'
				material = GTR_Body_X_Money_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("FINISHES")
				mask = $CAG_X_Guitar_Money
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_money_d_07.dds'
				material = GTR_Body_X_Money_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_X_Money_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_money_d_07.dds'
				material = GTR_Body_X_Money_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_135
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_money_d_07.dds'
				material = GTR_Body_X_Money_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_135
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_money_d_07.dds'
				material = GTR_Body_X_Money_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_135
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_money_d_07.dds'
				material = GTR_Body_X_Money_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_135
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_money_d_07.dds'
				material = GTR_Body_X_Money_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_135
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_money_d_07.dds'
				material = GTR_Body_X_Money_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_135
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_money_d_07.dds'
				material = GTR_Body_X_Money_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_135
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_money_d_07.dds'
				material = GTR_Body_X_Money_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_135
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_money_d_07.dds'
				material = GTR_Body_X_Money_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_135
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_money_d_07.dds'
				material = GTR_Body_X_Money_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_135
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_money_d_07.dds'
				material = GTR_Body_X_Money_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_135
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					GTR_X_Money_PickG01
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR_Pickups_Style_01a
					GTR_Pickups_Style_01b
					GTR_Pickups_Style_01c
					GTR_Pickup_Type1_Blk_1
					GTR_Pickup_Type1_Blk_2
					GTR_Pickup_Type1_Blk_3
					GTR_Pickup_Type2_03
					GTR_Pickup_Type2_04
					GTR_Pickup_Type3_02
					GTR_Pickup_Type3_03
					GTR_Pickup_Type3b_02
					GTR_Pickup_Type3b_03
					GTR_Pickup_Type4_02
					GTR_Pickup_Type4_03
					GTR_Pickup_Type1_Blktan_1
					GTR_Pickup_Type1_Blktan_2
					GTR_Pickup_Type1_Blktan_3
					GTR_Pickup_Type5_01
					GTR_Pickup_Type5_02
					GTR_Pickup_Type5_03
					GTR_Pickup_Type6_TKD_03
					GTR_Pickup_Type6_TKD_02
					GTR_Pickup_Type6_TKD_01
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR_X7_Knob_Type1_03
					GTR_X7_Knob_Type2_03
					GTR_X7_Knob_Type3_03
					GTR_X7_Knob_Type4_03
					GTR_X7_Knob_Type5_03
					GTR_X7_Knob_Type6_03
					GTR_X7_Knob_Type7_03
					GTR_X7_Knob_Type8_03
					GTR_X7_Knob_Type9_03
					GTR_X7_Knob_Type10_03
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware01b
					GTR8_Hardware08a
					GTR_Hardware05
					GTR_Hardware06
					GTR_Hardware07
				]
			}
		]
	}
	{
		desc_id = Guitar_X_Flames_08
		frontend_desc = qs("\LFire Fighter")
		price = 750
		polaroid = guitar_rewards_body_flame
		mesh = 'models/CAR_Instruments/Guitar/Guitar_X_Flames_08.skin'
		pak_num = 2
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_flames_d_08.dds'
				material = GTR_Body_X_Flames_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("FINISHES")
				mask = $CAG_X_Guitar_Flames
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_flames_d_08.dds'
				material = GTR_Body_X_Flames_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_X_Flames_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_flames_d_08.dds'
				material = GTR_Body_X_Flames_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_138
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_flames_d_08.dds'
				material = GTR_Body_X_Flames_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_138
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_flames_d_08.dds'
				material = GTR_Body_X_Flames_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_139
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_flames_d_08.dds'
				material = GTR_Body_X_Flames_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_139
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_flames_d_08.dds'
				material = GTR_Body_X_Flames_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_139
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_flames_d_08.dds'
				material = GTR_Body_X_Flames_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_139
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_flames_d_08.dds'
				material = GTR_Body_X_Flames_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_139
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_flames_d_08.dds'
				material = GTR_Body_X_Flames_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_139
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_flames_d_08.dds'
				material = GTR_Body_X_Flames_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_139
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_flames_d_08.dds'
				material = GTR_Body_X_Flames_Primary
				$car_rocker_guitars_factoredGlobal_4
				desc_id = `Font A3`
				frontend_desc = qs("\LSQUARE 40")
				mask = $car_fontgrid_text_a3
				$car_rocker_guitars_factoredGlobal_139
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_flames_d_08.dds'
				material = GTR_Body_X_Flames_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_139
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_flames_d_08.dds'
				material = GTR_Body_X_Flames_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_139
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					GTR_X_Fire_PickG02
					GTR_X_Fire_PickG01
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR_Pickups_Style_01a
					GTR_Pickups_Style_01b
					GTR_Pickups_Style_01c
					GTR_Pickup_Type1_Blk_1
					GTR_Pickup_Type1_Blk_2
					GTR_Pickup_Type1_Blk_3
					GTR_Pickup_Type2_03
					GTR_Pickup_Type2_04
					GTR_Pickup_Type3_02
					GTR_Pickup_Type3_03
					GTR_Pickup_Type3b_02
					GTR_Pickup_Type3b_03
					GTR_Pickup_Type4_02
					GTR_Pickup_Type4_03
					GTR_Pickup_Type1_Blktan_1
					GTR_Pickup_Type1_Blktan_2
					GTR_Pickup_Type1_Blktan_3
					GTR_Pickup_Type5_01
					GTR_Pickup_Type5_02
					GTR_Pickup_Type5_03
					GTR_Pickup_Type6_TKD_03
					GTR_Pickup_Type6_TKD_02
					GTR_Pickup_Type6_TKD_01
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR_X8_Knob_Type1_03
					GTR_X8_Knob_Type2_03
					GTR_X8_Knob_Type3_03
					GTR_X8_Knob_Type4_03
					GTR_X8_Knob_Type5_03
					GTR_X8_Knob_Type6_03
					GTR_X8_Knob_Type3_07
					GTR_X8_Knob_Type8_03
					GTR_X8_Knob_Type9_03
					GTR_X8_Knob_Type10_03
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware01b
					GTR8_Hardware08a
					GTR_Hardware05
					GTR_Hardware06
					GTR_Hardware07
				]
			}
		]
	}
	{
		desc_id = Guitar_X_Freebird_09
		frontend_desc = qs("\LFreebird")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_X_Freebird_09.skin'
		price = 1000
		polaroid = guitar_rewards_body_freebird
		pak_num = 2
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_bird_d_09.dds'
				material = GTR_Body_X_Bird_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("FINISHES")
				mask = $CAG_X_Guitar_Bird
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_bird_d_09.dds'
				material = GTR_Body_X_Bird_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_X_Bird_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_bird_d_09.dds'
				material = GTR_Body_X_Bird_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_143
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_bird_d_09.dds'
				material = GTR_Body_X_Bird_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_143
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_bird_d_09.dds'
				material = GTR_Body_X_Bird_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_143
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_bird_d_09.dds'
				material = GTR_Body_X_Bird_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_143
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_bird_d_09.dds'
				material = GTR_Body_X_Bird_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_143
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_bird_d_09.dds'
				material = GTR_Body_X_Bird_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_143
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_bird_d_09.dds'
				material = GTR_Body_X_Bird_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_143
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_bird_d_09.dds'
				material = GTR_Body_X_Bird_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_143
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_bird_d_09.dds'
				material = GTR_Body_X_Bird_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_143
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_bird_d_09.dds'
				material = GTR_Body_X_Bird_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_143
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_bird_d_09.dds'
				material = GTR_Body_X_Bird_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_143
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					GTR_X_Bird_PickG01
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR_Pickups_Style_01a
					GTR_Pickups_Style_01b
					GTR_Pickups_Style_01c
					GTR_Pickup_Type1_Blk_1
					GTR_Pickup_Type1_Blk_2
					GTR_Pickup_Type1_Blk_3
					GTR_Pickup_Type2_03
					GTR_Pickup_Type2_04
					GTR_Pickup_Type3_02
					GTR_Pickup_Type3_03
					GTR_Pickup_Type3b_02
					GTR_Pickup_Type3b_03
					GTR_Pickup_Type4_02
					GTR_Pickup_Type4_03
					GTR_Pickup_Type1_Blktan_1
					GTR_Pickup_Type1_Blktan_2
					GTR_Pickup_Type1_Blktan_3
					GTR_Pickup_Type5_01
					GTR_Pickup_Type5_02
					GTR_Pickup_Type5_03
					GTR_Pickup_Type6_TKD_03
					GTR_Pickup_Type6_TKD_02
					GTR_Pickup_Type6_TKD_01
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR_X9_Knob_Type1_03
					GTR_X9_Knob_Type2_03
					GTR_X9_Knob_Type3_03
					GTR_X9_Knob_Type4_03
					GTR_X9_Knob_Type5_03
					GTR_X9_Knob_Type6_03
					GTR_X9_Knob_Type7_03
					GTR_X9_Knob_Type8_03
					GTR_X9_Knob_Type9_03
					GTR_X9_Knob_Type10_03
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware01b
					GTR8_Hardware08a
					GTR_Hardware05
					GTR_Hardware06
					GTR_Hardware07
				]
			}
		]
	}
	{
		desc_id = Guitar_X_Trident_10
		frontend_desc = qs("\LRorschach Trident")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_X_Trident_10.skin'
		pak_num = 2
		price = 1300
		polaroid = guitar_rewards_body_trident
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_trident_d_10.dds'
				material = GTR_Body_X_Trident_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("FINISHES")
				mask = $CAG_X_Guitar_Trident
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_trident_d_10.dds'
				material = GTR_Body_X_Trident_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_X_Trident_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_trident_d_10.dds'
				material = GTR_Body_X_Trident_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_146
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_trident_d_10.dds'
				material = GTR_Body_X_Trident_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_146
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_trident_d_10.dds'
				material = GTR_Body_X_Trident_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_146
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_trident_d_10.dds'
				material = GTR_Body_X_Trident_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_146
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_trident_d_10.dds'
				material = GTR_Body_X_Trident_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_146
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_trident_d_10.dds'
				material = GTR_Body_X_Trident_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_146
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_trident_d_10.dds'
				material = GTR_Body_X_Trident_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_146
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_trident_d_10.dds'
				material = GTR_Body_X_Trident_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_146
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_trident_d_10.dds'
				material = GTR_Body_X_Trident_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_146
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_trident_d_10.dds'
				material = GTR_Body_X_Trident_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_146
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_trident_d_10.dds'
				material = GTR_Body_X_Trident_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_146
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					GTR_X_Trident_PickG01
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR_Pickups_Style_01a
					GTR_Pickups_Style_01b
					GTR_Pickups_Style_01c
					GTR_Pickup_Type1_Blk_1
					GTR_Pickup_Type1_Blk_2
					GTR_Pickup_Type1_Blk_3
					GTR_Pickup_Type2_03
					GTR_Pickup_Type2_04
					GTR_Pickup_Type3_02
					GTR_Pickup_Type3_03
					GTR_Pickup_Type3b_02
					GTR_Pickup_Type3b_03
					GTR_Pickup_Type4_02
					GTR_Pickup_Type4_03
					GTR_Pickup_Type1_Blktan_1
					GTR_Pickup_Type1_Blktan_2
					GTR_Pickup_Type1_Blktan_3
					GTR_Pickup_Type5_01
					GTR_Pickup_Type5_02
					GTR_Pickup_Type5_03
					GTR_Pickup_Type6_TKD_03
					GTR_Pickup_Type6_TKD_02
					GTR_Pickup_Type6_TKD_01
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					GTR_X10_Knob_Type1_03
					GTR_X10_Knob_Type2_03
					GTR_X10_Knob_Type3_03
					GTR_X10_Knob_Type4_03
					GTR_X10_Knob_Type5_03
					GTR_X10_Knob_Type6_03
					GTR_X10_Knob_Type7_03
					GTR_X10_Knob_Type8_03
					GTR_X10_Knob_Type9_03
					GTR_X10_Knob_Type10_03
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware01b
					GTR8_Hardware08a
					GTR_Hardware05
					GTR_Hardware06
					GTR_Hardware07
				]
			}
		]
	}
	{
		desc_id = Guitar_X_YinYang_14
		frontend_desc = qs("\LYingoYango")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_X_YinYang_14.skin'
		polaroid = guitar_rewards_body_ying
		price = 1500
		pak_num = 2
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_yinyang_d_14.dds'
				material = GTR_Body_X_YinYang_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("FINISHES")
				mask = $CAG_X_Guitar_YinYang
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_yinyang_d_14.dds'
				material = GTR_Body_X_YinYang_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_X_Guitar_YinYang_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_yinyang_d_14.dds'
				material = GTR_Body_X_YinYang_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_115
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_yinyang_d_14.dds'
				material = GTR_Body_X_YinYang_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_115
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_yinyang_d_14.dds'
				material = GTR_Body_X_YinYang_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_115
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_yinyang_d_14.dds'
				material = GTR_Body_X_YinYang_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_115
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_yinyang_d_14.dds'
				material = GTR_Body_X_YinYang_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_115
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_yinyang_d_14.dds'
				material = GTR_Body_X_YinYang_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_115
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_yinyang_d_14.dds'
				material = GTR_Body_X_YinYang_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_115
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_yinyang_d_14.dds'
				material = GTR_Body_X_YinYang_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_115
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_yinyang_d_14.dds'
				material = GTR_Body_X_YinYang_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_115
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_yinyang_d_14.dds'
				material = GTR_Body_X_YinYang_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_115
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/guitar_special_yinyang_d_14.dds'
				material = GTR_Body_X_YinYang_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_115
			}
		]
		inclusion = [
			{
				part = CAS_Guitar_Pickguards
				valid = [
					GTR_X_YinYang_PickG01
					none
				]
			}
			{
				part = CAS_Guitar_Pickups
				valid = [
					GTR_Pickups_Style_01a
					GTR_Pickups_Style_01b
					GTR_Pickups_Style_01c
					GTR_Pickup_Type1_Blk_1
					GTR_Pickup_Type1_Blk_2
					GTR_Pickup_Type1_Blk_3
					GTR_Pickup_Type2_03
					GTR_Pickup_Type2_04
					GTR_Pickup_Type3_02
					GTR_Pickup_Type3_03
					GTR_Pickup_Type3b_02
					GTR_Pickup_Type3b_03
					GTR_Pickup_Type4_02
					GTR_Pickup_Type4_03
					GTR_Pickup_Type1_Blktan_1
					GTR_Pickup_Type1_Blktan_2
					GTR_Pickup_Type1_Blktan_3
					GTR_Pickup_Type5_01
					GTR_Pickup_Type5_02
					GTR_Pickup_Type5_03
					GTR_Pickup_Type6_TKD_03
					GTR_Pickup_Type6_TKD_02
					GTR_Pickup_Type6_TKD_01
				]
			}
			{
				part = CAS_Guitar_Knobs
				valid = [
					gtr_x14_knob_type1_02
					gtr_x14_knob_type2_02
					gtr_x14_knob_type3_02
					gtr_x14_knob_type4_02
					gtr_x14_knob_type5_02
					gtr_x14_knob_type6_02
					gtr_x14_knob_type7_02
					gtr_x14_knob_type8_02
					gtr_x14_knob_type9_02
					gtr_x14_knob_type10_02
					none
				]
			}
			{
				part = CAS_Guitar_Bridges
				valid = [
					GTR_Hardware01a
					GTR_Hardware01b
					GTR_Hardware05
					GTR_Hardware06
					GTR_Hardware07
				]
			}
		]
	}
]
CAS_Guitar_Pickguards = [
	{
		desc_id = GTR5_Pickguard_01
		frontend_desc = qs("And Justice For")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR5_Pickguard_01.skin'
	}
	{
		desc_id = gtr12_pickguard_01
		frontend_desc = qs("\LApocalypse")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12_Pickguard_01.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr12_pickguard_d_01.dds'
				material = GTR12_Pickguard_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $gtr12_pickguard_01
			}
		]
	}
	{
		desc_id = GTR12_Pickguard_01b
		frontend_desc = qs("\LApocalypse Diamond Plate")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12_Pickguard_01b.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr12_pickguard_d_01b.dds'
				material = GTR12_Pickguard_01b_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $GTR12_Pickguard_01b
			}
		]
	}
	{
		desc_id = gtr12_pickguard_02
		frontend_desc = qs("\LCyanide")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12_Pickguard_02.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/GTR12_Pickguard_02_D.dds'
				material = GTR12_Pickguard_02_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $gtr12_pickguard_02
			}
		]
	}
	{
		desc_id = GTR12_Pickguard_02b
		frontend_desc = qs("\LCyanide Diamond Plate")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12_Pickguard_02b.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr12_pickguard_02b.dds'
				material = GTR12_Pickguard_02b_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $GTR12_Pickguard_02b
			}
		]
	}
	{
		desc_id = GTR12b_ESP_PG
		frontend_desc = qs("\LBlackCream PG")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12b_ESP_PG.skin'
	}
	{
		desc_id = GTR12D_PG
		frontend_desc = qs("\LCherry PG")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12D_PG.skin'
	}
	{
		desc_id = GTR12E_ESP_PG
		frontend_desc = qs("\LFlying Devil PG")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12E_ESP_PG.skin'
	}
	{
		desc_id = GTR12H_ESP_PG
		frontend_desc = qs("\LKill Em All PG")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12H_ESP_PG.skin'
	}
	{
		desc_id = gtr31_pgard
		frontend_desc = qs("\LViper Pickguard")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR31_PGard.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr31_vipepgard_d.dds'
				material = GTR31_PGARD_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $GTR31_PG
			}
		]
	}
	{
		desc_id = GTR33_Switch01
		frontend_desc = qs("\LKH2 Switch")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR33_Switch01.skin'
		pak_num = 0
		is_esp = 1
		Is_Metallica = 1
		i
	}
	{
		desc_id = gtr36_pgard
		frontend_desc = qs("\LSuper V Pickguard")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR36_PGARD.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr36_pgard.dds'
				material = GTR36_PGARD_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $GTR36_PG
			}
		]
	}
	{
		desc_id = gtr37_pguard01
		frontend_desc = qs("\LLRW")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR37_PGuard01.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr37_pguard01_d.dds'
				material = GTR37_PGuard_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $GTR37_PG
			}
		]
	}
	{
		desc_id = gtr62_esp_pg1b
		frontend_desc = qs("\LMother Witch Plate")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR62_ESP_PG1b.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr62_esp_pg1b_d.dds'
				material = GTR62_ESP_PG1b_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $gtr62_esp_pg1b
			}
		]
	}
	{
		desc_id = GTR62_ESP_PG1
		frontend_desc = qs("\LMother Witch")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR62_ESP_PG1.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr62_esp_pg1_d.dds'
				material = GTR62_ESP_PG1_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $GTR62_ESP_PG1
			}
		]
	}
	{
		desc_id = gtr62_esp_pg2
		frontend_desc = qs("\LHarlot")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR62_ESP_PG2.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr62_esp_pg2_d.dds'
				material = GTR62_ESP_PG2_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $gtr62_esp_pg2
			}
		]
	}
	{
		desc_id = gtr62_esp_pg2b
		frontend_desc = qs("\LHarlot Diamond Plate")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR62_ESP_PG2b.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr62_esp_pg2b_d.dds'
				material = GTR62_ESP_PG2b_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $gtr62_esp_pg2b
			}
		]
	}
	{
		desc_id = GTR62b_ESP_PG1
		frontend_desc = qs("\LHarlot Rusty")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR62b_ESP_PG1.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr62b_esp_pg1_d.dds'
				material = GTR62b_ESP_PG1_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $GTR62b_ESP_PG1
			}
		]
	}
	{
		desc_id = GTR63e_ESP_PG1
		frontend_desc = qs("\LRusty")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR63e_ESP_PG1.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr63e_esp_pg1_d.dds'
				material = GTR63e_ESP_PG1_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $GTR63e_ESP_PG1
			}
		]
	}
	{
		desc_id = gtr63f_esp_pg1
		frontend_desc = qs("\LHastings")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR63f_ESP_PG1.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr63f_esp_pg1_d.dds'
				material = GTR63f_ESP_PG1_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $gtr63f_esp_pg1
			}
		]
	}
	{
		desc_id = gtr63f_esp_pg1b
		frontend_desc = qs("\LHastings Diamondplate")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR63f_ESP_PG1b.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr63f_esp_pg1b_d.dds'
				material = GTR63f_ESP_PG1b_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $gtr63f_esp_pg1b
			}
		]
	}
	{
		desc_id = gtr63f_esp_pg2
		frontend_desc = qs("\LBrighton")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR63f_ESP_PG2.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr63f_esp_pg2_d.dds'
				material = GTR63f_ESP_PG2_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $gtr63f_esp_pg2
			}
		]
	}
	{
		desc_id = gtr63f_esp_pg2b
		frontend_desc = qs("\LBrighton Diamondplate")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR63f_ESP_PG2b.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr63f_esp_pg2b_d.dds'
				material = GTR63f_ESP_PG2b_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $gtr63f_esp_pg2b
			}
		]
	}
	{
		desc_id = gtr64_esp_pg1
		frontend_desc = qs("\LRazorback")
		mesh = 'models/CAR_Instruments/Guitar/ESP/gtr64_esp_PG1.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr64_esp_pg1_d.dds'
				material = gtr64_esp_PG1_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $gtr64_esp_pg1
			}
		]
	}
	{
		desc_id = gtr64_esp_pg1b
		frontend_desc = qs("\LRazorback Diamondplate")
		mesh = 'models/CAR_Instruments/Guitar/ESP/gtr64_esp_PG1b.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr64_esp_pg1b_d.dds'
				material = gtr64_esp_PG1b_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $gtr64_esp_pg1b
			}
		]
	}
	{
		desc_id = gtr64_esp_PG2
		frontend_desc = qs("\LHeadstrong")
		mesh = 'models/CAR_Instruments/Guitar/ESP/gtr64_esp_PG2.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr64_esp_pg2_d.dds'
				material = gtr64_esp_PG2_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $gtr64_esp_PG2
			}
		]
	}
	{
		desc_id = gtr64_esp_pg2b
		frontend_desc = qs("\LHeadstrong Diamondplate")
		mesh = 'models/CAR_Instruments/Guitar/ESP/gtr64_esp_PG2b.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr64_esp_pg2b_d.dds'
				material = gtr64_esp_PG2b_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $gtr64_esp_pg2b
			}
		]
	}
	{
		desc_id = Guitar_PickG01
		frontend_desc = qs("\LStyle 1")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_PickG01.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/Pickgrd1_Body1_D_01.dds'
				material = GTR_Body1_Pickgrd_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR1_PickGrd01
			}
		]
	}
	{
		desc_id = GTR_Body1_PickG02
		frontend_desc = qs("\LStyle 2")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body1_PickG02.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd2_body1_d_01.dds'
				material = Pckgrd2_Body1_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR1_PickGrd02
			}
		]
	}
	{
		desc_id = GTR_Body1_PickG03
		frontend_desc = qs("\LStyle 3")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body1_PickG03.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/Pickgrd3_Body1_D_01.dds'
				material = GTR_Pckgrd3_Body1_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR1_PickGrd03
			}
		]
	}
	{
		desc_id = GTR_Body2_PickG01
		frontend_desc = qs("\LStyle 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body2_PickG01.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd1_body2_d_01.dds'
				material = GTR_Body2_Pckgrd1_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR2_PickGrd01
			}
		]
	}
	{
		desc_id = GTR_Body2_PickG02
		frontend_desc = qs("\LStyle 2")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body2_PickG02.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd1_body2_02.dds'
				material = GTR_Body2_Pckgrd2_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR2_PickGrd02
			}
		]
	}
	{
		desc_id = GTR_Body2_PickG03
		frontend_desc = qs("\LStyle 3")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body2_PickG03.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd1_body2_03.dds'
				material = GTR_Body2_Pckgrd3_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR2_PickGrd03
			}
		]
	}
	{
		desc_id = GTR_Body3_PickG01
		frontend_desc = qs("\LStyle 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body3_PickG01.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body3_d_01.dds'
				material = Pckgrd_Body3_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR3_PickGrd01
			}
		]
	}
	{
		desc_id = GTR_Body3_PickG02
		frontend_desc = qs("\LStyle 2")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body3_PickG02.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body3_d_02.dds'
				material = Pckgrd_Body3_02_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR3_PickGrd02
			}
		]
	}
	{
		desc_id = GTR_Body3_PickG03
		frontend_desc = qs("\LStyle 3")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body3_PickG03.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body3_d_03.dds'
				material = Pckgrd_Body3_03_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR3_PickGrd03
			}
		]
	}
	{
		desc_id = GTR_Body4_PickG01
		frontend_desc = qs("\LStyle 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body4_PickG01.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body4_d_01.dds'
				material = Pckgrd_Body4_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR4_PickGrd01
			}
		]
	}
	{
		desc_id = GTR_Body4_PickG02
		frontend_desc = qs("\LStyle 2")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body4_PickG02.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body4_d_02.dds'
				material = Pckgrd_Body4_02_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR4_PickGrd02
			}
		]
	}
	{
		desc_id = GTR_Body4_PickG03
		frontend_desc = qs("\LStyle 3")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body4_PickG03.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body4_d_03.dds'
				material = Pckgrd_Body4_03_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR4_PickGrd03
			}
		]
	}
	{
		desc_id = GTR_Body5_PickG02
		frontend_desc = qs("\LStyle 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body5_PickG02.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body5_d_02.dds'
				material = Pckgrd_Body5_02_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR5_PickGrd02
			}
		]
	}
	{
		desc_id = GTR_Body5_PickG01
		frontend_desc = qs("\LStyle 2")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body5_PickG01.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body5_d_01.dds'
				material = Pckgrd_Body5_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR5_PickGrd01
			}
		]
	}
	{
		desc_id = GTR_Body5_PickG03
		frontend_desc = qs("\LStyle 3")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body5_PickG03.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body5_d_03.dds'
				material = Pckgrd_Body5_03_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR5_PickGrd03
			}
		]
	}
	{
		desc_id = GTR_Body6_PickG01
		frontend_desc = qs("\LStyle 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body6_PickG01.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body6_d_01.dds'
				material = Pckgrd_Body6_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR6_PickGrd01
			}
		]
	}
	{
		desc_id = GTR_Body6_PickG02
		frontend_desc = qs("\LStyle 2")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body6_PickG02.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body6_d_02.dds'
				material = Pckgrd_Body6_02_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR6_PickGrd02
			}
		]
	}
	{
		desc_id = GTR_Body6_PickG03
		frontend_desc = qs("\LStyle 3")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body6_PickG03.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body6_d_03.dds'
				material = Pckgrd_Body6_03_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR6_PickGrd03
			}
		]
	}
	{
		desc_id = GTR_Body7_PickG01
		frontend_desc = qs("\LStyle 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body7_PickG01.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body7_d_01.dds'
				material = Pckgrd_Body7_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR7_PickGrd01
			}
		]
	}
	{
		desc_id = GTR_Body7_PickG02
		frontend_desc = qs("\LStyle 2")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body7_PickG02.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body7_d_02.dds'
				material = Pckgrd_Body7_02_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR7_PickGrd02
			}
		]
	}
	{
		desc_id = GTR_Body7_PickG03
		frontend_desc = qs("\LStyle 3")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body7_PickG03.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body7_d_03.dds'
				material = Pckgrd_Body7_03_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR7_PickGrd03
			}
		]
	}
	{
		desc_id = GTR_Body8_PickG01
		frontend_desc = qs("\LStyle 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body8_PickG01.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body8_d_01.dds'
				material = Pckgrd_Body8_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR8_PickGrd01
			}
		]
	}
	{
		desc_id = GTR_Body8_PickG02
		frontend_desc = qs("\LStyle 2")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body8_PickG02.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body8_d_02.dds'
				material = Pckgrd_Body8_02_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR8_PickGrd02
			}
		]
	}
	{
		desc_id = GTR_Body8_PickG03
		frontend_desc = qs("\LStyle 3")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body8_PickG03.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body8_d_03.dds'
				material = Pckgrd_Body8_03_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR8_PickGrd03
			}
		]
	}
	{
		desc_id = GTR_Body9_PickG02
		frontend_desc = qs("\LStyle 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body9_PickG02.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body9_d_02.dds'
				material = Pckgrd_Body9_02_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR9_PickGrd02
			}
		]
	}
	{
		desc_id = GTR_Body9_PickG03
		frontend_desc = qs("\LStyle 2")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body9_PickG03.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body9_d_03.dds'
				material = Pckgrd_Body9_03_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR9_PickGrd03
			}
		]
	}
	{
		desc_id = GTR_Body9_PickG01
		frontend_desc = qs("\LStyle 3")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body9_PickG01.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body9_d_01.dds'
				material = Pckgrd_Body9_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR9_PickGrd01
			}
		]
	}
	{
		desc_id = GTR_Body10_PickG01
		frontend_desc = qs("\LStyle 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body10_PickG01.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body10_d_01.dds'
				material = Pckgrd_Body10_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR10_PickGrd01
			}
		]
	}
	{
		desc_id = GTR_Body10_PickG02
		frontend_desc = qs("\LStyle 2")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body10_PickG02.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body10_d_02.dds'
				material = Pckgrd_Body10_02_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR10_PickGrd02
			}
		]
	}
	{
		desc_id = GTR_Body10_PickG03
		frontend_desc = qs("\LStyle 3")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body10_PickG03.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body10_d_03.dds'
				material = Pckgrd_Body10_03_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR10_PickGrd03
			}
		]
	}
	{
		desc_id = GTR_Body11_PickG01
		frontend_desc = qs("\LStyle 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body11_PickG01.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body11_d_01.dds'
				material = Pckgrd_Body11_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR11_PickGrd01
			}
		]
	}
	{
		desc_id = GTR_Body11_PickG02
		frontend_desc = qs("\LStyle 2")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body11_PickG02.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body11_d_02.dds'
				material = Pckgrd_Body11_02_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR11_PickGrd02
			}
		]
	}
	{
		desc_id = GTR_Body11_PickG03
		frontend_desc = qs("\LStyle 3")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body11_PickG03.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body11_d_03.dds'
				material = Pckgrd_Body11_03_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR11_PickGrd03
			}
		]
	}
	{
		desc_id = GTR_Body12_PickG01
		frontend_desc = qs("\LStyle 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body12_PickG01.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body12_d_01.dds'
				material = Pckgrd_Body12_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR12_PickGrd01
			}
		]
	}
	{
		desc_id = GTR_Body12_PickG02
		frontend_desc = qs("\LStyle 2")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body12_PickG02.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body12_d_02.dds'
				material = Pckgrd_Body12_02_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR12_PickGrd02
			}
		]
	}
	{
		desc_id = GTR_Body12_PickG03
		frontend_desc = qs("\LStyle 3")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body12_PickG03.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body12_d_03.dds'
				material = Pckgrd_Body12_03_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR12_PickGrd03
			}
		]
	}
	{
		desc_id = GTR_Body13_PickG01
		frontend_desc = qs("\LStyle 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body13_PickG01.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body13_d_01.dds'
				material = Pckgrd_Body13_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR13_PickGrd01
			}
		]
	}
	{
		desc_id = GTR_Body13_PickG02
		frontend_desc = qs("Style 2")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body13_PickG02.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body13_d_02.dds'
				material = Pckgrd_Body13_02_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR13_PickGrd02
			}
		]
	}
	{
		desc_id = GTR_Body13_PickG03
		frontend_desc = qs("Style 3")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body13_PickG03.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body13_d_03.dds'
				material = Pckgrd_Body13_03_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR13_PickGrd03
			}
		]
	}
	{
		desc_id = GTR_Body14_PickG01
		frontend_desc = qs("Style 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body14_PickG01.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body14_d_01.dds'
				material = Pckgrd_Body14_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR14_PickGrd01
			}
		]
	}
	{
		desc_id = GTR_Body14_PickG02
		frontend_desc = qs("Style 2")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body14_PickG02.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body14_d_02.dds'
				material = Pckgrd_Body14_02_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR14_PickGrd02
			}
		]
	}
	{
		desc_id = GTR_Body14_PickG03
		frontend_desc = qs("Style 3")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body14_PickG03.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body14_d_03.dds'
				material = Pckgrd_Body14_03_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR14_PickGrd03
			}
		]
	}
	{
		desc_id = GTR_Body15_PickG01
		frontend_desc = qs("Style 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body15_PickG01.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body15_d_01.dds'
				material = Pckgrd_Body15_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR15_PickGrd01
			}
		]
	}
	{
		desc_id = GTR_Body15_PickG02
		frontend_desc = qs("Style 2")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body15_PickG02.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body15_d_02.dds'
				material = Pckgrd_Body15_02_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR15_PickGrd02
			}
		]
	}
	{
		desc_id = GTR_Body15_PickG03
		frontend_desc = qs("Style 3")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body15_PickG03.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body15_d_03.dds'
				material = Pckgrd_Body15_03_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR15_PickGrd03
			}
		]
	}
	{
		desc_id = GTR_Body16_PickG01
		frontend_desc = qs("\LHere, you kids!")
		mesh = 'models/CAR_Instruments/Guitar/CAG_PGard_Prdiktr01.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_predikt_pickg01_d_mls.dds'
				material = GTR_Body16_Pickgrd_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_216
			}
		]
	}
	{
		desc_id = GTR_Body16_PickG02
		frontend_desc = qs("\LStop There!")
		mesh = 'models/CAR_Instruments/Guitar/CAG_PGard_Prdiktr02.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_predikt_pickg02_d_mls.dds'
				material = GTR_Body16_Pickgrd_02_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR16_PickGrd02
			}
		]
	}
	{
		desc_id = GTR_Body16_PickG03
		frontend_desc = qs("\LI know your dads!")
		mesh = 'models/CAR_Instruments/Guitar/CAG_PGard_Prdiktr03.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_predikt_pickg03_d_mls.dds'
				material = GTR_Body16_Pickgrd_03_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR16_PickGrd03
			}
		]
	}
	{
		desc_id = GTR_Body16_PickG04
		frontend_desc = qs("\LGone")
		mesh = 'models/CAR_Instruments/Guitar/CAG_PGard_Prdiktr04.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_predikt_pickg01_d_mls.dds'
				material = GTR_Body16_Pickgrd_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_216
			}
		]
	}
	{
		desc_id = gtr_body17_pickg01
		frontend_desc = qs("Style 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body17_PickG01.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body17_pickg01_d.dds'
				material = Pckgrd_Body17_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR17_PickGrd01
			}
		]
	}
	{
		desc_id = gtr_body17_pickg02
		frontend_desc = qs("Style 2")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body17_PickG02.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body17_pickg02.dds'
				material = Pckgrd_Body17_02_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR17_PickGrd02
			}
		]
	}
	{
		desc_id = gtr_body17_pickg03
		frontend_desc = qs("Style 3")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body17_PickG03.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_body17_pickg03_d.dds'
				material = Pckgrd_Body17_03_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR17_PickGrd03
			}
		]
	}
	{
		desc_id = gtr_body20_pickg01
		frontend_desc = qs("Style 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body20_PickG01.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body20_d_01.dds'
				material = Pckgrd_Body20_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR20_PickGrd01
			}
		]
	}
	{
		desc_id = gtr_body20_pickg02
		frontend_desc = qs("Style 2")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body20_PickG02.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body20_d_02.dds'
				material = Pckgrd_Body20_02_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR20_PickGrd02
			}
		]
	}
	{
		desc_id = gtr_body20_pickg03
		frontend_desc = qs("Style 3")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Body20_PickG03.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body20_d_03.dds'
				material = Pckgrd_Body20_03_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR20_PickGrd03
			}
		]
	}
	{
		desc_id = GTR_X_Peace_PickG01
		frontend_desc = qs("\LPeace Wedge")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X_Peace_PickG01.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body_x_peace_d_01.dds'
				material = GTR_X_Peace_Pckgrd_1_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR_X_Peace_pkgrd1
			}
		]
	}
	{
		desc_id = GTR_X_YinYang_PickG01
		frontend_desc = qs("\LBalance")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X_YinYang_PickG01.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body_x_yinyang_d_01.dds'
				material = GTR_X_YinYang_Pckgrd_1_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR_X_YinYang_pkgrd1
			}
		]
	}
	{
		desc_id = GTR_X_Clear_PickG01
		frontend_desc = qs("Style 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X_Clear_PickG01.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body_x_clear_01.dds'
				material = GTR_X_Clear_Pckgrd_1_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR31_PickGrd01
			}
		]
	}
	{
		desc_id = GTR_X_Clear2_PickG02
		frontend_desc = qs("Style 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X_Clear2_PickG02.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body_x_clear2_02.dds'
				material = GTR_X_Clear2_Pckgrd_2_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR32_PickGrd02
			}
		]
	}
	{
		desc_id = GTR_X_Anarc_PickG02
		frontend_desc = qs("Style 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X_Anarc_PickG02.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body_x_anarchy_d_02.dds'
				material = GTR_X_Anarc_Pckgrd_2_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR_X_Anarc_pkgrd2
			}
		]
	}
	{
		desc_id = GTR_X_Anarc_PickG01
		frontend_desc = qs("Style 2")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X_Anarc_PickG01.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body_x_anarchy_d_01.dds'
				material = GTR_X_Anarc_Pckgrd_1_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR_X_Anarc_pkgrd1
			}
		]
	}
	{
		desc_id = GTR_X_Spider_PickG01
		frontend_desc = qs("Style 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X_Spider_PickG01.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body_x_spider_d_01.dds'
				material = GTR_X_Spider_Pckgrd_1_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR_X_Spider_pkgrd1
			}
		]
	}
	{
		desc_id = GTR_X_Xross_PickG01
		frontend_desc = qs("Style 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X_Xross_PickG01.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body_x_xross_d_01.dds'
				material = GTR_X_Xross_Pckgrd_1_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR_X_Xross_pkgrd1
			}
		]
	}
	{
		desc_id = GTR_X_Heart_PickG01
		frontend_desc = qs("\LMom")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X_Heart_PickG01.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body_x_heart_01.dds'
				material = GTR_X_Heart_Pckgrd_1_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR_X_Heart_pkgrd1
			}
		]
	}
	{
		desc_id = GTR_X_Heart_PickG02
		frontend_desc = qs("\LArrowhead")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X_Heart_PickG02.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body_x_heart_02.dds'
				material = GTR_X_Heart_Pckgrd_2_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR_X_Heart_pkgrd2
			}
		]
	}
	{
		desc_id = GTR_X_Money_PickG01
		frontend_desc = qs("\LDrip Drop")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X_Money_PickG01.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body_x_money_d_01.dds'
				material = GTR_X_Money_Pckgrd_1_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR_X_Money_pkgrd1
			}
		]
	}
	{
		desc_id = GTR_X_Fire_PickG01
		frontend_desc = qs("\LBurner")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X_Fire_PickG01.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body_x_firepick_d_01.dds'
				material = GTR_X_Fire_Pckgrd_1_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR_X_Fire_pkgrd1
			}
		]
	}
	{
		desc_id = GTR_X_Fire_PickG02
		frontend_desc = qs("Style 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X_Fire_PickG02.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body_x_firepick_d_02.dds'
				material = GTR_X_Fire_Pckgrd_2_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR_X_Fire_pkgrd2
			}
		]
	}
	{
		desc_id = GTR_X_Bird_PickG01
		frontend_desc = qs("Style 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X_Bird_PickG01.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body_x_bird_d_01.dds'
				material = GTR_X_Bird_Pckgrd_1_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR_X_Bird_pkgrd1
			}
		]
	}
	{
		desc_id = GTR_X_Trident_PickG01
		frontend_desc = qs("Style 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X_Trident_PickG01.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body_x_trident_d_01.dds'
				material = GTR_X_Trident_Pckgrd_1_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR_X_Trident_pkgrd1
			}
		]
	}
	{
		desc_id = gtr_x_skull_pickg01
		frontend_desc = qs("\LPatch")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X_Skull_PickG01.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/pickgrd_body_x_skull_d_01a.dds'
				material = GTR_X_Skull_Pickgrd_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_GTR_X_Skull_pkgrd1
			}
		]
	}
	{
		desc_id = none
		frontend_desc = qs("None")
		random_weight = 10.0
	}
]
CAS_Guitar_Pickups = [
	{
		desc_id = GTR_Pkup_Type1_Blk_2
		frontend_desc = qs("\LKaChunkaChunkr 2")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_Pkup_Type1_Blk_2.skin'
		materials = [
			GTR_Pkup_Type1_Blk_Primary
		]
	}
	{
		desc_id = GTR1_ESP_EMG_Pkup_2
		frontend_desc = qs("\LTruckster 2")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR1_ESP_EMG_Pkup_2.skin'
		materials = [
			GTR1_ESP_EMG_Pkup_2_Primary
		]
	}
	{
		desc_id = GTR62_ESP_EMG
		frontend_desc = qs("\LEMG")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR62_ESP_EMG.skin'
		materials = [
			GTR62_ESP_EMG_Primary
		]
	}
	{
		desc_id = GTR62_Pkup_Blk
		frontend_desc = qs("\LKachunkaChunkr 2")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR62_Pkup_Blk.skin'
		materials = [
			GTR62_Pkup_Blk_Primary
		]
	}
	{
		desc_id = GTR3_ESP_EMG_Pkup_2
		frontend_desc = qs("\LChrome4Custom EMG")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR3_ESP_EMG_Pkup_2.skin'
		materials = [
			GTR3_ESP_EMG_Pkup_2_Primary
		]
	}
	{
		desc_id = GTR6_Pkup_Worngold_2
		frontend_desc = qs("\LWorngold Hummers Deus")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR6_Pkup_Worngold_2.skin'
		materials = [
			GTR6_Pkup_Worngold_Primary
		]
	}
	{
		desc_id = GTR8_ESP_EMG_Pkup
		frontend_desc = qs("\LEMG Spiders")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR8_ESP_EMG_Pkup.skin'
		materials = [
			GTR8_ESP_EMG_Pkup_Primary
		]
	}
	{
		desc_id = GTR12_Pkup_EMG
		frontend_desc = qs("\LEMG Black")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR12_Pkup_EMG.skin'
		materials = [
			GTR12_Pkup_EMG_Primary
		]
	}
	{
		desc_id = GTR12b_Pkup_EMG
		frontend_desc = qs("\LEMG Black")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR12b_Pkup_EMG.skin'
		materials = [
			GTR12b_Pkup_EMG_Primary
		]
	}
	{
		desc_id = GTR12e_Pkup_EMG
		frontend_desc = qs("\LEMG Black")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR12e_Pkup_EMG.skin'
		materials = [
			GTR12e_Pkup_EMG_Primary
		]
	}
	{
		desc_id = GTR12_ESP_Pkup_2
		frontend_desc = qs("\LRatRods")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR12_ESP_Pkup_2.skin'
		materials = [
			GTR12_ESP_Pkup_2_Primary
		]
	}
	{
		desc_id = GTR14_Pkup_Worngold_14
		frontend_desc = qs("\LTiger Pickups")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR14_Pkup_Worngold_14.skin'
		materials = [
			GTR14_Pkup_Worngold_14_Primary
		]
	}
	{
		desc_id = GTR60b_Pkup_EMG
		frontend_desc = qs("\LEMG Black")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR60b_Pkup_EMG.skin'
		materials = [
			GTR60b_Pkup_EMG_Primary
		]
	}
	{
		desc_id = GTR62_Pkup_EMG_01
		frontend_desc = qs("\LEMG Single")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR62_Pkup_EMG_01.skin'
		materials = [
			GTR62_Pkup_EMG_01_Primary
		]
	}
	{
		desc_id = GTR63c_Pkup_EMG
		frontend_desc = qs("\LEMG Black")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR63c_Pkup_EMG.skin'
		materials = [
			GTR60b_Pkup_EMG_Primary
		]
	}
	{
		desc_id = gtr30_pickup_d
		frontend_desc = qs("\LESP Black and Tan")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR30_Pickup_D.skin'
		materials = [
			SD_HB_Pickup01_Primary
		]
	}
	{
		desc_id = gtr30_pickup_e
		frontend_desc = qs("\LSD Humbuckers")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR30_Pickup_E.skin'
		materials = [
			SD_HB_Pickup02_Primary
		]
	}
	{
		desc_id = gtr30_pickup_gold
		frontend_desc = qs("\LPAF Gold")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR30_Pickup_Gold.skin'
		materials = [
			GTR31_Pickup_Gold_Primary
		]
	}
	{
		desc_id = gtr30_pickup_f
		frontend_desc = qs("\LPAF Chrome")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR30_Pickup_F.skin'
		materials = [
			GTR_Pickup_Type3_Primary
		]
	}
	{
		desc_id = GTR30_Pickup_G
		frontend_desc = qs("\LSuper V Humbuckers")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR30_Pickup_G.skin'
		materials = [
			GTR36_Pickup01_Primary
		]
	}
	{
		desc_id = GTR30_EMG
		frontend_desc = qs("\LEMG")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR30_EMG.skin'
		materials = [
			GTR31b_EMG_Primary
		]
	}
	{
		desc_id = gtr31_pickup_gold
		frontend_desc = qs("\LPAF")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR31_Pickup_Gold.skin'
		materials = [
			GTR31_Pickup_Gold_Primary
		]
	}
	{
		desc_id = gtr31_pickup_e
		frontend_desc = qs("\LSD Humbuckers")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR31_Pickup_E.skin'
		materials = [
			SD_HB_Pickup02_Primary
		]
	}
	{
		desc_id = gtr31_pickup_d
		frontend_desc = qs("\LBlack & Cream ESP")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR31_Pickup_D.skin'
		materials = [
			SD_HB_Pickup01_Primary
		]
	}
	{
		desc_id = GTR31_Pickup_G
		frontend_desc = qs("\LSuper V Humbuckers")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR31_Pickup_G.skin'
		materials = [
			GTR36_Pickup01_Primary
		]
	}
	{
		desc_id = gtr31_pickup_f
		frontend_desc = qs("\LChrome PAF")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR31_Pickup_F.skin'
		materials = [
			GTR_Pickup_Type3_Primary
		]
	}
	{
		desc_id = GTR31b_Grynch_EMG
		frontend_desc = qs("\LGrynch EMG")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR31b_Grynch_EMG.skin'
		materials = [
			GTR31b_EMG_Primary
		]
	}
	{
		desc_id = GTR32_Pickup_Gold
		frontend_desc = qs("\LGold PAF")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR32_Pickup_Gold.skin'
		materials = [
			GTR31_Pickup_Gold_Primary
		]
	}
	{
		desc_id = GTR32_Pickup_F
		frontend_desc = qs("\LChrome PAF")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR31_Pickup_F.skin'
		materials = [
			GTR_Pickup_Type3_Primary
		]
	}
	{
		desc_id = GTR32_Pickup_G
		frontend_desc = qs("\LSuper V Humbuckers")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR32_Pickup_G.skin'
		materials = [
			GTR36_Pickup01_Primary
		]
	}
	{
		desc_id = GTR32_EMG
		frontend_desc = qs("\LEMG")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR32_EMG.skin'
		materials = [
			GTR31b_EMG_Primary
		]
	}
	{
		desc_id = GTR33_Pickup_MUM
		frontend_desc = qs("\LMummy EMG")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR33_Pickup_MUM.skin'
		pak_num = 1
		Is_Metallica = 1
		materials = [
			GTR33_Pkup_MUM_Primary
		]
	}
	{
		desc_id = GTR33_Pickup_BORIS
		frontend_desc = qs("\LBoris EMG")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR33_Pickup_BORIS.skin'
		pak_num = 1
		Is_Metallica = 1
		materials = [
			GTR33_Pkup_BORIS_Primary
		]
	}
	{
		desc_id = GTR33_Pickup_Drac
		frontend_desc = qs("\LDracula EMG")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR33_Pickup_DRAC.skin'
		pak_num = 1
		Is_Metallica = 1
		materials = [
			GTR33_Pkup_DRAC_Primary
		]
	}
	{
		desc_id = gtr33_pickup_bride
		frontend_desc = qs("\LBRIDE EMG")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR33_Pickup_Bride.skin'
		pak_num = 1
		Is_Metallica = 1
		materials = [
			GTR33_Pickup_Bride_Primary
		]
	}
	{
		desc_id = GTR33_EMG
		frontend_desc = qs("\LEMG")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR33_Pickup_EMG.skin'
		pak_num = 0
		is_esp = 1
		Is_Metallica = 1
		materials = [
			GTR33_EMG_Primary
		]
	}
	{
		desc_id = GTR33_Pickup_A
		frontend_desc = qs("\LSuper V Humbuckers")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR33_Pickup_A.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR36_Pickup01_Primary
		]
	}
	{
		desc_id = GTR33_Pickup_Gold
		frontend_desc = qs("\LGold PAF")
		mesh = 'models/CAR_Instruments/Guitar/esp/gtr33_Pickup_Gold.skin'
		materials = [
			GTR31_Pickup_Gold_Primary
		]
	}
	{
		desc_id = GTR33_Pickup_D
		frontend_desc = qs("\LBlack & Cream ESP")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR33_Pickup_D.skin'
		materials = [
			SD_HB_Pickup01_Primary
		]
	}
	{
		desc_id = GTR33_Pickup_E
		frontend_desc = qs("\LSD Humbuckers")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR33_Pickup_E.skin'
		materials = [
			SD_HB_Pickup02_Primary
		]
	}
	{
		desc_id = GTR33_Pickup_F
		frontend_desc = qs("\LChrome PAF")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR33_Pickup_F.skin'
		materials = [
			GTR_Pickup_Type3_Primary
		]
	}
	{
		desc_id = GTR36_Pickup
		frontend_desc = qs("\LSuper V Humbuckers")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR36_Pickup.skin'
		materials = [
			GTR36_Pickup01_Primary
		]
	}
	{
		desc_id = GTR36_Pickup_Gold
		frontend_desc = qs("\LGold PAF")
		mesh = 'models/CAR_Instruments/Guitar/esp/gtr36_Pickup_Gold.skin'
		materials = [
			GTR31_Pickup_Gold_Primary
		]
	}
	{
		desc_id = GTR36_Pickup_D
		frontend_desc = qs("\LBlack & Cream ESP")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR36_Pickup_D.skin'
		materials = [
			SD_HB_Pickup01_Primary
		]
	}
	{
		desc_id = GTR36_Pickup_E
		frontend_desc = qs("\LSD Humbuckers")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR36_Pickup_E.skin'
		materials = [
			SD_HB_Pickup02_Primary
		]
	}
	{
		desc_id = GTR36_Pickup_F
		frontend_desc = qs("\LChrome PAF")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR36_Pickup_F.skin'
		materials = [
			GTR_Pickup_Type3_Primary
		]
	}
	{
		desc_id = GTR36_EMG
		frontend_desc = qs("\LEMG")
		mesh = 'models/CAR_Instruments/Guitar/esp/gtr36_EMG.skin'
		materials = [
			GTR31b_EMG_Primary
		]
	}
	{
		desc_id = GTR37_Pickup
		frontend_desc = qs("\LRW Humbuckers")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR37_Pickup1.skin'
		materials = [
			GTR37_Pickup01_Primary
		]
	}
	{
		desc_id = GTR38_Pickup
		frontend_desc = qs("\LWave EMG")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR38_ESP_EMG.skin'
		pak_num = 0
		is_esp = 1
		Is_Metallica = 1
		materials = [
			GTR38_ESP_EMG_Pkup_Primary
		]
	}
	{
		desc_id = gtr37_pickup_a
		frontend_desc = qs("\LSuper V Humbuckers")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR37_Pickup_A.skin'
		materials = [
			GTR36_Pickup01_Primary
		]
	}
	{
		desc_id = gtr37_pickup_gold
		frontend_desc = qs("\LGold PAF")
		mesh = 'models/CAR_Instruments/Guitar/esp/gtr37_Pickup_Gold.skin'
		materials = [
			GTR31_Pickup_Gold_Primary
		]
	}
	{
		desc_id = gtr37_pickup_d
		frontend_desc = qs("\LBlack & Cream ESP")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR37_Pickup_D.skin'
		materials = [
			SD_HB_Pickup01_Primary
		]
	}
	{
		desc_id = gtr37_pickup_e
		frontend_desc = qs("\LSD Humbuckers")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR37_Pickup_E.skin'
		materials = [
			SD_HB_Pickup01_Primary
		]
	}
	{
		desc_id = gtr37_pickup_f
		frontend_desc = qs("\LChrome PAF")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR37_Pickup_F.skin'
		materials = [
			GTR_Pickup_Type3_Primary
		]
	}
	{
		desc_id = GTR63_Pkup_Blk
		frontend_desc = qs("\LSupersonic 2")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR63_Pkup_Blk.skin'
		materials = [
			GTR63_Pkup_Blk_Primary
		]
	}
	{
		desc_id = gtr_pickup_type66
		frontend_desc = qs("\LPickup")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR_Pickup_Type66.skin'
		materials = [
			GTR_Pickup_Type66_Primary
		]
	}
	{
		desc_id = GTR65_pickup_dummy
		frontend_desc = qs("\LPickup")
		mesh = 'models/CAR_Instruments/Guitar/esp/GTR65_pickup_dummy.skin'
		materials = [
			GTR65_pickup_dummy_Primary
		]
	}
	{
		desc_id = GTR_Pickups_Style_01a
		frontend_desc = qs("\LSupersonic 2")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Pickups_Style_01a.skin'
		materials = [
			GTR_Pickup_Type1_Primary
		]
	}
	{
		desc_id = GTR_Pickups_Style_01b
		frontend_desc = qs("\LSupersonic 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Pickups_Style_01b.skin'
		materials = [
			GTR_Pickup_Type1_Primary
		]
	}
	{
		desc_id = GTR_Pickups_Style_01c
		frontend_desc = qs("\LSupersonic 3")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Pickups_Style_01c.skin'
		materials = [
			GTR_Pickup_Type1_Primary
		]
	}
	{
		desc_id = GTR_Pickup_Type1_Blk_3
		frontend_desc = qs("\LKaChunkaChunkr 3")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Pickup_Type1_Blk_3.skin'
		materials = [
			GTR_Pickup_Type1_Blk_Primary
		]
	}
	{
		desc_id = GTR_Pickup_Type1_Blk_2
		frontend_desc = qs("\LKaChunkaChunkr 2")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Pickup_Type1_Blk_2.skin'
		materials = [
			GTR_Pickup_Type1_Blk_Primary
		]
	}
	{
		desc_id = GTR_Pickup_Type1_Blk_1
		frontend_desc = qs("\LKaChunkaChunkr 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Pickup_Type1_Blk_1.skin'
		materials = [
			GTR_Pickup_Type1_Blk_Primary
		]
	}
	{
		desc_id = GTR_Pickup_Type1_Blktan_1
		frontend_desc = qs("\LTwin Tone 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Pickup_Type1_Blktan_1.skin'
		materials = [
			GTR_Pickup_Type1_blktan_Primary
		]
	}
	{
		desc_id = GTR_Pickup_Type1_Blktan_2
		frontend_desc = qs("\LTwin Tone 2")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Pickup_Type1_Blktan_2.skin'
		materials = [
			GTR_Pickup_Type1_blktan_Primary
		]
	}
	{
		desc_id = GTR_Pickup_Type1_Blktan_3
		frontend_desc = qs("\LTwin Tone 3")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Pickup_Type1_Blktan_3.skin'
		materials = [
			GTR_Pickup_Type1_blktan_Primary
		]
	}
	{
		desc_id = GTR_Pickup_Type2_03
		frontend_desc = qs("\LStratos Threes")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Pickup_Type2_03.skin'
		materials = [
			GTR_Pickup_Type2_Primary
		]
	}
	{
		desc_id = GTR_Pickup_Type2_04
		frontend_desc = qs("\LStratos Fours")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Pickup_Type2_04.skin'
		materials = [
			GTR_Pickup_Type2_Primary
		]
	}
	{
		desc_id = GTR_Pickup_Type3_02
		frontend_desc = qs("Silver Humdingers 2")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Pickup_Type3_02.skin'
		materials = [
			GTR_Pickup_Type3_Primary
		]
		polaroid = guitar_rwds_pckp_HdingCRM_2
	}
	{
		desc_id = GTR_Pickup_Type3_03
		frontend_desc = qs("Silver Humdingers 3")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Pickup_Type3_03.skin'
		materials = [
			GTR_Pickup_Type3_Primary
		]
		polaroid = guitar_rwds_pckp_HdingCRM_3
	}
	{
		desc_id = GTR_Pickup_Type3b_02
		frontend_desc = qs("Gold Humdingers 2")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Pickup_Type3b_02.skin'
		materials = [
			GTR_Pickup_Type3b_Primary
		]
		polaroid = guitar_rwds_pckp_HdingGld_2
	}
	{
		desc_id = GTR_Pickup_Type3b_03
		frontend_desc = qs("Gold Humdingers 3")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Pickup_Type3b_03.skin'
		materials = [
			GTR_Pickup_Type3b_Primary
		]
		polaroid = guitar_rwds_pckp_HdingGld_3
	}
	{
		desc_id = GTR_Pickup_Type4_02
		frontend_desc = qs("\LP91 Groovies 2")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Pickup_Type4_02.skin'
		materials = [
			GTR_Pickup_Type4_Primary
		]
	}
	{
		desc_id = GTR_Pickup_Type4_03
		frontend_desc = qs("\LP91 Groovies 3")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Pickup_Type4_03.skin'
		materials = [
			GTR_Pickup_Type4_Primary
		]
	}
	{
		desc_id = GTR_Pickup_Type5_01
		frontend_desc = qs("\LOverwounder 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Pickup_Type5_01.skin'
		materials = [
			GTR_Pickup_Type5_Primary
		]
	}
	{
		desc_id = GTR_Pickup_Type5_02
		frontend_desc = qs("\LOverwounder 2")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Pickup_Type5_02.skin'
		materials = [
			GTR_Pickup_Type5_Primary
		]
	}
	{
		desc_id = GTR_Pickup_Type5_03
		frontend_desc = qs("\LOverwounder 3")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Pickup_Type5_03.skin'
		materials = [
			GTR_Pickup_Type5_Primary
		]
	}
	{
		desc_id = GTR_Pickup_Type6_TKD_03
		frontend_desc = qs("\LEMG 3")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Pickup_Type6_TKD_03.skin'
		materials = [
			GTR_Pickup_Type6_Primary
		]
	}
	{
		desc_id = GTR_Pickup_Type6_TKD_02
		frontend_desc = qs("\LEMG 2")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Pickup_Type6_TKD_02.skin'
		materials = [
			GTR_Pickup_Type6_Primary
		]
	}
	{
		desc_id = GTR_Pickup_Type6_TKD_01
		frontend_desc = qs("\LEMG 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Pickup_Type6_TKD_01.skin'
		materials = [
			GTR_Pickup_Type6_Primary
		]
	}
	{
		desc_id = GTR_X1_Skull_Pickup_01
		frontend_desc = qs("\LSupersonic 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X1_Skull_Pickup_01.skin'
		materials = [
			GTR_Pickup_Skull_Type1_Primary
		]
	}
	{
		desc_id = GTR_Pickup_skul1_Blk_01
		frontend_desc = qs("\LKaChunkaChunkr 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Pickup_skul1_Blk_01.skin'
		materials = [
			GTR_Pickup_Skul1_blk_primary
		]
	}
	{
		desc_id = GTR_Pickup_Skul1_Blktan_01
		frontend_desc = qs("\LTwin Tone 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Pickup_Skul1_Blktan_01.skin'
		materials = [
			GTR_Pickup_Skul1_blktan_Primary
		]
	}
	{
		desc_id = none
		frontend_desc = qs("None")
		random_weight = 10.0
	}
]
CAS_Guitar_Knobs = [
	{
		desc_id = GTR1_ESP_Knob_10_03
		frontend_desc = qs("\LTruckster Domes")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR1_ESP_Knob_10_03.skin'
		materials = [
			GTR1_ESP_Knob_10_01_Primary
		]
	}
	{
		desc_id = gtr4_esp_knob_10_03
		frontend_desc = qs("\LEclipse Domes")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR4_ESP_Knob_10_03.skin'
		materials = [
			GTR4_ESP_Knob_10_03_Primary
		]
	}
	{
		desc_id = GTR4_Knob_02
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR4_Knob_02.skin'
		materials = [
			GTR4_Knob_02_Primary
		]
	}
	{
		desc_id = gtr4_knob_03
		frontend_desc = qs("\LWedgies")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR4_Knob_03.skin'
		materials = [
			GTR4_Knob_03_Primary
		]
	}
	{
		desc_id = gtr4_knob_04
		frontend_desc = qs("\LTwistoffs")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR4_Knob_04.skin'
		materials = [
			GTR4_Knob_04_Primary
		]
	}
	{
		desc_id = gtr4_knob_05
		frontend_desc = qs("\LDice")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR4_Knob_05.skin'
		materials = [
			GTR4_Knob_05_Primary
		]
	}
	{
		desc_id = gtr4_knob_06
		frontend_desc = qs("\LSpeedsters")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR4_Knob_06.skin'
		materials = [
			GTR4_Knob_06_Primary
		]
	}
	{
		desc_id = GTR5_ESP_Knob_10_03
		frontend_desc = qs("\LCliff Domes")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR5_ESP_Knob_10_03.skin'
		materials = [
			GTR5_ESP_Knob_10_03_Primary
		]
	}
	{
		desc_id = GTR6_Knob_1_03
		frontend_desc = qs("\LBlack Bellenders")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR6_Knob_1_03.skin'
		materials = [
			GTR6_Knob_1_Primary
		]
	}
	{
		desc_id = GTR8_ESP_Knob_10_03
		frontend_desc = qs("\LSpider Knobs")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR8_ESP_Knob_10_03.skin'
		materials = [
			GTR4_ESP_Knob_10_03_Primary
		]
	}
	{
		desc_id = gtr9_esp_knob_10_02
		frontend_desc = qs("\LAX Knobs")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR9_ESP_Knob_10_02.skin'
		materials = [
			GTR4_ESP_Knob_10_03_Primary
		]
	}
	{
		desc_id = GTR9_Knob_02
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR9_Knob_02.skin'
		materials = [
			GTR9_Knob_02_Primary
		]
	}
	{
		desc_id = gtr9_knob_03
		frontend_desc = qs("\LWedgies")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR9_Knob_03.skin'
		materials = [
			GTR9_Knob_03_Primary
		]
	}
	{
		desc_id = gtr9_knob_04
		frontend_desc = qs("\LTwistoffs")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR9_Knob_04.skin'
		materials = [
			GTR9_Knob_04_Primary
		]
	}
	{
		desc_id = gtr9_knob_05
		frontend_desc = qs("\LDice")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR9_Knob_05.skin'
		materials = [
			GTR9_Knob_05_Primary
		]
	}
	{
		desc_id = gtr9_knob_06
		frontend_desc = qs("\LSpeedsters")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR9_Knob_06.skin'
		materials = [
			GTR9_Knob_06_Primary
		]
	}
	{
		desc_id = GTR10_Knob1_03
		frontend_desc = qs("\LRed Knobs")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR10_Knob1_03.skin'
		materials = [
			GTR10_Knob1_03_Primary
		]
	}
	{
		desc_id = gtr11_knob1_04
		frontend_desc = qs("\LMidnight Knobs")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR11_Knob1_04.skin'
		materials = [
			GTR10_Knob1_03_Primary
		]
	}
	{
		desc_id = GTR12_ESP_Knob_10_3
		frontend_desc = qs("\LRat Rod Knobs")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12_ESP_Knob_10_3.skin'
		materials = [
			GTR12_ESP_Knob_10_3_Primary
		]
	}
	{
		desc_id = GTR14_Knob1_04
		frontend_desc = qs("\LTiger Knobs")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR14_Knob1_04.skin'
		materials = [
			GTR14_Knob1_04_Primary
		]
	}
	{
		desc_id = gtr12_esp_knob_01
		frontend_desc = qs("\LDomes")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12_ESP_Knob_01.skin'
		materials = [
			GTR12_ESP_Knob_01_Primary
		]
	}
	{
		desc_id = gtr12_esp_knob_02
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12_ESP_Knob_02.skin'
		materials = [
			GTR12_ESP_Knob_02_Primary
		]
	}
	{
		desc_id = gtr12_esp_knob_03
		frontend_desc = qs("\LWedgies")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12_ESP_Knob_03.skin'
		materials = [
			GTR12_ESP_Knob_03_Primary
		]
	}
	{
		desc_id = gtr12_esp_knob_04
		frontend_desc = qs("\LTwistoffs")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12_ESP_Knob_04.skin'
		materials = [
			GTR12_ESP_Knob_04_Primary
		]
	}
	{
		desc_id = gtr12_esp_knob_05
		frontend_desc = qs("\LDice")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12_ESP_Knob_05.skin'
		materials = [
			GTR12_ESP_Knob_05_Primary
		]
	}
	{
		desc_id = gtr12_esp_knob_06
		frontend_desc = qs("\LSpeedsters")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12_ESP_Knob_06.skin'
		materials = [
			GTR12_ESP_Knob_06_Primary
		]
	}
	{
		desc_id = GTR12b_Knob
		frontend_desc = qs("\LSpeedsters")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12b_Knob.skin'
		materials = [
			GTR12b_Knob_Primary
		]
	}
	{
		desc_id = GTR12c_Knob
		frontend_desc = qs("\LDomes")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12c_Knob.skin'
		materials = [
			GTR12c_Knob_Primary
		]
	}
	{
		desc_id = gtr12d_knob
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12d_Knob.skin'
		materials = [
			GTR12d_Knob_Primary
		]
	}
	{
		desc_id = GTR12e_Knob
		frontend_desc = qs("\LDomes")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12e_Knob.skin'
		materials = [
			GTR12e_Knob_Primary
		]
	}
	{
		desc_id = gtr12h_knob
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12H_Knob.skin'
		materials = [
			GTR12H_Knob_Primary
		]
	}
	{
		desc_id = GTR_30_KNOBS_A
		frontend_desc = qs("\LH Series Knobs A")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_30_KNOBS_A.skin'
		materials = [
			GTR_31b_KNOBS_Viper_Primary
		]
	}
	{
		desc_id = gtr_30_knobs_b
		frontend_desc = qs("\LH Series Knobs B")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_30_KNOBS_B.skin'
		materials = [
			GTR36_Knobs_Primary
		]
	}
	{
		desc_id = gtr_30_knobs_c
		frontend_desc = qs("\LH Series Knobs C")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_30_KNOBS_C.skin'
		materials = [
			GTR60c_Knob_Type1_Primary
		]
	}
	{
		desc_id = gtr_30_knobs_d
		frontend_desc = qs("\LH Series Knobs D")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_30_KNOBS_D.skin'
	}
	{
		desc_id = gtr_30_knobs_e
		frontend_desc = qs("\LH Series Knobs E")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_30_KNOBS_E.skin'
		materials = [
			GTR12H_Knob_Primary
		]
	}
	{
		desc_id = GTR_31_KNOBS_VPR
		frontend_desc = qs("\LViper Knobs")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_31_KNOBS_VPR.skin'
		materials = [
			GTR_31_Knobs_Viper_Primary
		]
	}
	{
		desc_id = GTR_31B_KNOBS_VPR
		frontend_desc = qs("\LViper Knobs 2")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_31b_KNOBS_VPR.skin'
		materials = [
			GTR_31b_KNOBS_Viper_Primary
		]
	}
	{
		desc_id = gtr_31_knobs_b
		frontend_desc = qs("\LH Series Knobs B")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_31_KNOBS_B.skin'
		materials = [
			GTR36_Knobs_Primary
		]
	}
	{
		desc_id = gtr_31_knobs_c
		frontend_desc = qs("\LH Series Knobs C")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_31_KNOBS_C.skin'
		materials = [
			GTR60c_Knob_Type1_Primary
		]
	}
	{
		desc_id = gtr_31_knobs_d
		frontend_desc = qs("\LH Series Knobs D")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_31_KNOBS_D.skin'
	}
	{
		desc_id = gtr_31_knobs_e
		frontend_desc = qs("\LH Series Knobs E")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_31_KNOBS_E.skin'
		materials = [
			GTR12H_Knob_Primary
		]
	}
	{
		desc_id = gtr_32_knobs_a
		frontend_desc = qs("\LHorizon  Knobs A")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_32_KNOBS_A.skin'
		materials = [
			GTR_32_Knobs01_Primary
		]
	}
	{
		desc_id = GTR_32_KNOBS_B
		frontend_desc = qs("\LHorizon Knobs B")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_32_KNOBS_B.skin'
		materials = [
			GTR36_Knobs_Primary
		]
	}
	{
		desc_id = gtr_32_knobs_c
		frontend_desc = qs("\LHorizon Knobs C")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_32_KNOBS_C.skin'
		materials = [
			GTR60c_Knob_Type1_Primary
		]
	}
	{
		desc_id = gtr_32_knobs_d
		frontend_desc = qs("\LHorizon Knobs D")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_32_KNOBS_D.skin'
		materials = [
			GTR12_ESP_Knob_06_Primary
		]
	}
	{
		desc_id = gtr_32_knobs_e
		frontend_desc = qs("\LHorizon Knobs E")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_32_KNOBS_E.skin'
		materials = [
			GTR12H_Knob_Primary
		]
	}
	{
		desc_id = GTR33_Knobs_KH2
		frontend_desc = qs("\LCaution")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_33_KNOBS_KH2.skin'
		materials = [
			GTR_33_Knobs_Primary
		]
	}
	{
		desc_id = gtr_33_knobs_a
		frontend_desc = qs("\LKH Knobs A")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_33_KNOBS_A.skin'
		materials = [
			GTR_31b_KNOBS_Viper_Primary
		]
	}
	{
		desc_id = gtr_33_knobs_b
		frontend_desc = qs("\LKH Knobs B")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_33_KNOBS_B.skin'
		materials = [
			GTR36_Knobs_Primary
		]
	}
	{
		desc_id = gtr_33_knobs_c
		frontend_desc = qs("\LKH Knobs C")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_33_KNOBS_C.skin'
		materials = [
			GTR60c_Knob_Type1_Primary
		]
	}
	{
		desc_id = gtr_33_knobs_d
		frontend_desc = qs("\LKH Knobs D")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_33_KNOBS_D.skin'
	}
	{
		desc_id = gtr_33_knobs_e
		frontend_desc = qs("\LKH Knobs E")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_33_KNOBS_E.skin'
		materials = [
			GTR12H_Knob_Primary
		]
	}
	{
		desc_id = GTR_36_Knobs
		frontend_desc = qs("\LSuper V Knobs ")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_36_Knobs_B.skin'
		materials = [
			GTR_36_Knobs_Primary
		]
	}
	{
		desc_id = GTR_36_KNOBS_A
		frontend_desc = qs("\LSuper V Knobs A")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_36_KNOBS_A.skin'
		materials = [
			GTR_31b_KNOBS_Viper_Primary
		]
	}
	{
		desc_id = gtr_36_knobs_b
		frontend_desc = qs("\LSuper V Knobs B")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_36_Knobs_B.skin'
		materials = [
			GTR_36_Knobs_Primary
		]
	}
	{
		desc_id = gtr_36_knobs_c
		frontend_desc = qs("\LSuper V Knobs C")
		mesh = 'models/CAR_Instruments/Guitar/ESP/gtr_36_KNOBS_C.skin'
		materials = [
			GTR60c_Knob_Type1_Primary
		]
	}
	{
		desc_id = gtr_36_knobs_d
		frontend_desc = qs("\LSuper V Knobs D")
		mesh = 'models/CAR_Instruments/Guitar/ESP/gtr_36_KNOBS_D.skin'
		materials = [
			GTR12_ESP_Knob_06_Primary
		]
	}
	{
		desc_id = gtr_36_knobs_e
		frontend_desc = qs("\LSuper V Knobs E")
		mesh = 'models/CAR_Instruments/Guitar/ESP/gtr_36_KNOBS_E.skin'
		materials = [
			GTR12H_Knob_Primary
		]
	}
	{
		desc_id = gtr37_knobs01
		frontend_desc = qs("\LESP RW Knobs")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR37_Knobs01.skin'
		materials = [
			GTR37_Knobs_Primary
		]
	}
	{
		desc_id = GTR62_Knob_Type01
		frontend_desc = qs("\LDice")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR62_Knob_Type01.skin'
		materials = [
			GTR62_Knob_Type01_Primary
		]
	}
	{
		desc_id = gtr62_knob_type02
		frontend_desc = qs("\LWedgies")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR62_Knob_Type02.skin'
		materials = [
			GTR62_Knob_Type02_Primary
		]
	}
	{
		desc_id = gtr62_knob_type03
		frontend_desc = qs("\LDomes")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR62_Knob_Type03.skin'
		materials = [
			GTR62_Knob_Type03_Primary
		]
	}
	{
		desc_id = gtr62_knob_type04
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR62_Knob_Type04.skin'
		materials = [
			GTR62_Knob_Type04_Primary
		]
	}
	{
		desc_id = GTR62_Knob_Type05
		frontend_desc = qs("\LSpeedsters")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR62_Knob_Type05.skin'
		materials = [
			GTR62_Knob_Type05_Primary
		]
	}
	{
		desc_id = gtr62_knob_type06
		frontend_desc = qs("\LTwistoffs")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR62_Knob_Type06.skin'
		materials = [
			GTR62_Knob_Type06_Primary
		]
	}
	{
		desc_id = GTR62b_Knob_Type01
		frontend_desc = qs("\LDomes")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR62b_Knob_Type01.skin'
		materials = [
			GTR62b_Knob_Type01_Primary
		]
	}
	{
		desc_id = GTR63_Knob_Type1
		frontend_desc = qs("\LDomes")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR63_Knob_Type1.skin'
		materials = [
			GTR63_Knob_Type1_Primary
		]
	}
	{
		desc_id = GTR63c_Knob_Type1
		frontend_desc = qs("\LLugnuts")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR63c_Knob_Type1.skin'
		materials = [
			GTR63c_Knob_Type1_Primary
		]
	}
	{
		desc_id = GTR63g_Knob_Type1
		frontend_desc = qs("\LDomes")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR63g_Knob_Type1.skin'
		materials = [
			GTR63g_Knob_Type1_Primary
		]
	}
	{
		desc_id = gtr63_knob_type2
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR63_Knob_Type2.skin'
		materials = [
			GTR63_Knob_Type2_Primary
		]
	}
	{
		desc_id = gtr63_knob_type3
		frontend_desc = qs("\LWedgies")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR63_Knob_Type3.skin'
		materials = [
			GTR63_Knob_Type3_Primary
		]
	}
	{
		desc_id = GTR63_Knob_Type4
		frontend_desc = qs("\LTwistoffs")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR63_Knob_Type4.skin'
		materials = [
			GTR63_Knob_Type4_Primary
		]
	}
	{
		desc_id = GTR63_Knob_Type5
		frontend_desc = qs("\LDice")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR63_Knob_Type5.skin'
		materials = [
			GTR63_Knob_Type5_Primary
		]
	}
	{
		desc_id = GTR63_Knob_Type06
		frontend_desc = qs("\LDomes")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR63_Knob_Type06.skin'
		materials = [
			GTR63_Knob_Type06_Primary
		]
	}
	{
		desc_id = gtr64_knob_type1
		frontend_desc = qs("\LChrome Domes")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR64_Knob_Type1.skin'
		materials = [
			GTR64_Knob_Type1_Primary
		]
	}
	{
		desc_id = gtr64_knob_type2
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR64_Knob_Type2.skin'
		materials = [
			GTR64_Knob_Type2_Primary
		]
	}
	{
		desc_id = GTR64_Knob_Type3
		frontend_desc = qs("\LWedgies")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR64_Knob_Type3.skin'
		materials = [
			GTR64_Knob_Type3_Primary
		]
	}
	{
		desc_id = gtr64_knob_type4
		frontend_desc = qs("\LTwistoffs")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR64_Knob_Type4.skin'
		materials = [
			GTR64_Knob_Type4_Primary
		]
	}
	{
		desc_id = gtr64_knob_type5
		frontend_desc = qs("\LDice")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR64_Knob_Type5.skin'
		materials = [
			GTR64_Knob_Type5_Primary
		]
	}
	{
		desc_id = GTR64_Knob_Type6
		frontend_desc = qs("\LSpeedsters")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR64_Knob_Type6.skin'
		materials = [
			GTR64_Knob_Type6_Primary
		]
	}
	{
		desc_id = gtr66_knob_type1
		frontend_desc = qs("\LDomes")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR66_Knob_Type1.skin'
		materials = [
			GTR66_Knob_Type1_Primary
		]
	}
	{
		desc_id = GTR_Knobs_Style_01a
		frontend_desc = qs("\LBellenders")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Knobs_Style_01a.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = GTR1_Knob_Type2_04
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/Guitar/GTR1_Knob_Type2_04.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = GTR1_Knob_Type3_04
		frontend_desc = qs("\LBlazing Star")
		mesh = 'models/CAR_Instruments/Guitar/GTR1_Knob_Type3_04.skin'
		materials = [
			GTR_Knob_Type3_01_Primary
		]
	}
	{
		desc_id = GTR1_Knob_Type4_04
		frontend_desc = qs("\LSpeedsters")
		mesh = 'models/CAR_Instruments/Guitar/GTR1_Knob_Type4_04.skin'
	}
	{
		desc_id = GTR1_Knob_Type5_04
		frontend_desc = qs("\LBoneheads")
		mesh = 'models/CAR_Instruments/Guitar/GTR1_Knob_Type5_04.skin'
		materials = [
			GTR_Knob_Type5_01_Primary
		]
	}
	{
		desc_id = GTR1_Knob_Type6_04
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/Guitar/GTR1_Knob_Type6_04.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		polaroid = guitar_rewards_knobs_dice
	}
	{
		desc_id = GTR1_Knob_Type7_04
		frontend_desc = qs("\LTwistoffs")
		mesh = 'models/CAR_Instruments/Guitar/GTR1_Knob_Type7_04.skin'
		materials = [
			GTR_Knob_Type7_01_Primary
		]
	}
	{
		desc_id = GTR1_Knob_Type8_04
		frontend_desc = qs("\LWedgies")
		mesh = 'models/CAR_Instruments/Guitar/GTR1_Knob_Type8_04.skin'
		materials = [
			GTR_Knob_Type8_01_Primary
		]
	}
	{
		desc_id = GTR1_Knob_Type9_04
		frontend_desc = qs("\LMetal Heads")
		mesh = 'models/CAR_Instruments/Guitar/GTR1_Knob_Type9_04.skin'
		materials = [
			GTR_Knob_Type9_01_Primary
		]
		polaroid = guitar_rewards_knobs_metalheads
	}
	{
		desc_id = GTR1_Knob_Type10_04
		frontend_desc = qs("\LChrome Domes")
		mesh = 'models/CAR_Instruments/Guitar/GTR1_Knob_Type10_04.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = GTR_Knobs_Style_02a
		frontend_desc = qs("\LBellenders")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Knobs_Style_02a.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = GTR2_Knob_Type2_04
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/Guitar/GTR2_Knob_Type2_04.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = GTR2_Knob_Type3_04
		frontend_desc = qs("\LBlazing Stars")
		mesh = 'models/CAR_Instruments/Guitar/GTR2_Knob_Type3_04.skin'
		materials = [
			GTR_Knob_Type3_01_Primary
		]
	}
	{
		desc_id = GTR2_Knob_Type4_04
		frontend_desc = qs("\LSpeedsters")
		mesh = 'models/CAR_Instruments/Guitar/GTR2_Knob_Type4_04.skin'
	}
	{
		desc_id = GTR2_Knob_Type5_04
		frontend_desc = qs("\LBoneheads")
		mesh = 'models/CAR_Instruments/Guitar/GTR2_Knob_Type5_04.skin'
		materials = [
			GTR_Knob_Type5_01_Primary
		]
	}
	{
		desc_id = GTR2_Knob_Type6_04
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/Guitar/GTR2_Knob_Type6_04.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		polaroid = guitar_rewards_knobs_dice
	}
	{
		desc_id = GTR2_Knob_Type7_04
		frontend_desc = qs("\LTwistoffs")
		mesh = 'models/CAR_Instruments/Guitar/GTR2_Knob_Type7_04.skin'
		materials = [
			GTR_Knob_Type7_01_Primary
		]
	}
	{
		desc_id = GTR2_Knob_Type8_04
		frontend_desc = qs("\LWedgies")
		mesh = 'models/CAR_Instruments/Guitar/GTR2_Knob_Type8_04.skin'
		materials = [
			GTR_Knob_Type8_01_Primary
		]
	}
	{
		desc_id = GTR2_Knob_Type9_04
		frontend_desc = qs("\LMetal Heads")
		mesh = 'models/CAR_Instruments/Guitar/GTR2_Knob_Type9_04.skin'
		materials = [
			GTR_Knob_Type9_01_Primary
		]
		polaroid = guitar_rewards_knobs_metalheads
	}
	{
		desc_id = GTR2_Knob_Type10_04
		frontend_desc = qs("\LChrome Domes")
		mesh = 'models/CAR_Instruments/Guitar/GTR2_Knob_Type10_04.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = GTR3_Knobs_Style_03a
		frontend_desc = qs("\LBellenders")
		mesh = 'models/CAR_Instruments/Guitar/GTR3_Knobs_Style_03a.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = GTR3_Knob_Type2_03
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/Guitar/GTR3_Knob_Type2_03.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = GTR3_Knob_Type3_03
		frontend_desc = qs("\LBlazing Stars")
		mesh = 'models/CAR_Instruments/Guitar/GTR3_Knob_Type3_03.skin'
		materials = [
			GTR_Knob_Type3_01_Primary
		]
	}
	{
		desc_id = GTR3_Knob_Type4_03
		frontend_desc = qs("\LSpeedsters")
		mesh = 'models/CAR_Instruments/Guitar/GTR3_Knob_Type4_03.skin'
	}
	{
		desc_id = GTR3_Knob_Type5_03
		frontend_desc = qs("\LBoneheads")
		mesh = 'models/CAR_Instruments/Guitar/GTR3_Knob_Type5_03.skin'
		materials = [
			GTR_Knob_Type5_01_Primary
		]
	}
	{
		desc_id = GTR3_Knob_Type6_03
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/Guitar/GTR3_Knob_Type6_03.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		polaroid = guitar_rewards_knobs_dice
	}
	{
		desc_id = GTR3_Knob_Type7_03
		frontend_desc = qs("\LTwistoffs")
		mesh = 'models/CAR_Instruments/Guitar/GTR3_Knob_Type7_03.skin'
		materials = [
			GTR_Knob_Type7_01_Primary
		]
	}
	{
		desc_id = GTR3_Knob_Type8_03
		frontend_desc = qs("\LWedgies")
		mesh = 'models/CAR_Instruments/Guitar/GTR3_Knob_Type8_03.skin'
		materials = [
			GTR_Knob_Type8_01_Primary
		]
	}
	{
		desc_id = GTR3_Knob_Type9_03
		frontend_desc = qs("\LMetal Head")
		mesh = 'models/CAR_Instruments/Guitar/GTR3_Knob_Type9_03.skin'
		materials = [
			GTR_Knob_Type9_01_Primary
		]
	}
	{
		desc_id = GTR3_Knob_Type10_03
		frontend_desc = qs("\LChrome Domes")
		mesh = 'models/CAR_Instruments/Guitar/GTR3_Knob_Type10_03.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = GTR4_Knob_Type1_04
		frontend_desc = qs("\LBellenders")
		mesh = 'models/CAR_Instruments/Guitar/GTR4_Knob_Type1_04.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = GTR4_Knob_Type2_04
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/Guitar/GTR4_Knob_Type2_04.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = GTR4_Knob_Type3_04
		frontend_desc = qs("\LBlazing Stars")
		mesh = 'models/CAR_Instruments/Guitar/GTR4_Knob_Type3_04.skin'
		materials = [
			GTR_Knob_Type3_01_Primary
		]
	}
	{
		desc_id = GTR4_Knob_Type4_04
		frontend_desc = qs("\LSpeedsters")
		mesh = 'models/CAR_Instruments/Guitar/GTR4_Knob_Type4_04.skin'
	}
	{
		desc_id = GTR4_Knob_Type5_04
		frontend_desc = qs("\LBoneheads")
		mesh = 'models/CAR_Instruments/Guitar/GTR4_Knob_Type5_04.skin'
		materials = [
			GTR_Knob_Type5_01_Primary
		]
	}
	{
		desc_id = GTR4_Knob_Type6_04
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/Guitar/GTR4_Knob_Type6_04.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		polaroid = guitar_rewards_knobs_dice
	}
	{
		desc_id = GTR4_Knob_Type7_04
		frontend_desc = qs("\LTwistoffs")
		mesh = 'models/CAR_Instruments/Guitar/GTR4_Knob_Type7_04.skin'
		materials = [
			GTR_Knob_Type7_01_Primary
		]
	}
	{
		desc_id = GTR4_Knob_Type8_04
		frontend_desc = qs("\LWedgies")
		mesh = 'models/CAR_Instruments/Guitar/GTR4_Knob_Type8_04.skin'
		materials = [
			GTR_Knob_Type8_01_Primary
		]
	}
	{
		desc_id = GTR4_Knob_Type9_04
		frontend_desc = qs("\LMetal Head")
		mesh = 'models/CAR_Instruments/Guitar/GTR4_Knob_Type9_04.skin'
		materials = [
			GTR_Knob_Type9_01_Primary
		]
	}
	{
		desc_id = GTR4_Knob_Type10_04
		frontend_desc = qs("\LChrome Domes")
		mesh = 'models/CAR_Instruments/Guitar/GTR4_Knob_Type10_04.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = GTR6_Knob_Type1_03
		frontend_desc = qs("\LBellenders")
		mesh = 'models/CAR_Instruments/Guitar/GTR6_Knob_Type1_03.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = GTR6_Knob_Type2_03
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/Guitar/GTR6_Knob_Type2_03.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = GTR6_Knob_Type3_03
		frontend_desc = qs("\LBlazing Stars")
		mesh = 'models/CAR_Instruments/Guitar/GTR6_Knob_Type3_03.skin'
		materials = [
			GTR_Knob_Type3_01_Primary
		]
	}
	{
		desc_id = GTR6_Knob_Type4_03
		frontend_desc = qs("\LSpeedsters")
		mesh = 'models/CAR_Instruments/Guitar/GTR6_Knob_Type4_03.skin'
	}
	{
		desc_id = GTR6_Knob_Type5_03
		frontend_desc = qs("\LBoneheads")
		mesh = 'models/CAR_Instruments/Guitar/GTR6_Knob_Type5_03.skin'
		materials = [
			GTR_Knob_Type5_01_Primary
		]
	}
	{
		desc_id = GTR6_Knob_Type6_03
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/Guitar/GTR6_Knob_Type6_03.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		polaroid = guitar_rewards_knobs_dice
	}
	{
		desc_id = GTR6_Knob_Type7_03
		frontend_desc = qs("\LTwistoffs")
		mesh = 'models/CAR_Instruments/Guitar/GTR6_Knob_Type7_03.skin'
		materials = [
			GTR_Knob_Type7_01_Primary
		]
	}
	{
		desc_id = GTR6_Knob_Type8_03
		frontend_desc = qs("\LWedgies")
		mesh = 'models/CAR_Instruments/Guitar/GTR6_Knob_Type8_03.skin'
		materials = [
			GTR_Knob_Type8_01_Primary
		]
	}
	{
		desc_id = GTR6_Knob_Type9_03
		frontend_desc = qs("\LMetal Head")
		mesh = 'models/CAR_Instruments/Guitar/GTR6_Knob_Type9_03.skin'
		materials = [
			GTR_Knob_Type9_01_Primary
		]
	}
	{
		desc_id = GTR6_Knob_Type10_03
		frontend_desc = qs("\LChrome Domes")
		mesh = 'models/CAR_Instruments/Guitar/GTR6_Knob_Type10_03.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = GTR7_Knob_Type1_03
		frontend_desc = qs("\LBellenders")
		mesh = 'models/CAR_Instruments/Guitar/GTR7_Knob_Type1_03.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = GTR7_Knob_Type2_03
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/Guitar/GTR7_Knob_Type2_03.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = GTR7_Knob_Type3_03
		frontend_desc = qs("\LBlazing Stars")
		mesh = 'models/CAR_Instruments/Guitar/GTR7_Knob_Type3_03.skin'
		materials = [
			GTR_Knob_Type3_01_Primary
		]
	}
	{
		desc_id = GTR7_Knob_Type4_03
		frontend_desc = qs("\LSpeedsters")
		mesh = 'models/CAR_Instruments/Guitar/GTR7_Knob_Type4_03.skin'
	}
	{
		desc_id = GTR7_Knob_Type5_03
		frontend_desc = qs("\LBoneheads")
		mesh = 'models/CAR_Instruments/Guitar/GTR7_Knob_Type5_03.skin'
		materials = [
			GTR_Knob_Type5_01_Primary
		]
	}
	{
		desc_id = GTR7_Knob_Type6_03
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/Guitar/GTR7_Knob_Type6_03.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		polaroid = guitar_rewards_knobs_dice
	}
	{
		desc_id = GTR7_Knob_Type7_03
		frontend_desc = qs("\LTwistoffs")
		mesh = 'models/CAR_Instruments/Guitar/GTR7_Knob_Type7_03.skin'
		materials = [
			GTR_Knob_Type7_01_Primary
		]
	}
	{
		desc_id = GTR7_Knob_Type8_03
		frontend_desc = qs("\LWedgies")
		mesh = 'models/CAR_Instruments/Guitar/GTR7_Knob_Type8_03.skin'
		materials = [
			GTR_Knob_Type8_01_Primary
		]
	}
	{
		desc_id = GTR7_Knob_Type9_03
		frontend_desc = qs("\LMetal Heads")
		mesh = 'models/CAR_Instruments/Guitar/GTR7_Knob_Type9_03.skin'
		materials = [
			GTR_Knob_Type9_01_Primary
		]
		polaroid = guitar_rewards_knobs_metalheads
	}
	{
		desc_id = GTR7_Knob_Type10_03
		frontend_desc = qs("\LChrome Domes")
		mesh = 'models/CAR_Instruments/Guitar/GTR7_Knob_Type10_03.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = GTR8_Knob_Type1_03
		frontend_desc = qs("\LBellenders")
		mesh = 'models/CAR_Instruments/Guitar/GTR8_Knob_Type1_03.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = GTR8_Knob_Type2_03
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/Guitar/GTR8_Knob_Type2_03.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = GTR8_Knob_Type3_03
		frontend_desc = qs("\LBlazing Stars")
		mesh = 'models/CAR_Instruments/Guitar/GTR8_Knob_Type3_03.skin'
		materials = [
			GTR_Knob_Type3_01_Primary
		]
	}
	{
		desc_id = GTR8_Knob_Type4_03
		frontend_desc = qs("\LSpeedsters")
		mesh = 'models/CAR_Instruments/Guitar/GTR8_Knob_Type4_03.skin'
	}
	{
		desc_id = GTR8_Knob_Type5_03
		frontend_desc = qs("\LBoneheads")
		mesh = 'models/CAR_Instruments/Guitar/GTR8_Knob_Type5_03.skin'
		materials = [
			GTR_Knob_Type5_01_Primary
		]
	}
	{
		desc_id = GTR8_Knob_Type6_03
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/Guitar/GTR8_Knob_Type6_03.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		polaroid = guitar_rewards_knobs_dice
	}
	{
		desc_id = GTR8_Knob_Type7_03
		frontend_desc = qs("\LTwistoffs")
		mesh = 'models/CAR_Instruments/Guitar/GTR8_Knob_Type7_03.skin'
		materials = [
			GTR_Knob_Type7_01_Primary
		]
	}
	{
		desc_id = GTR8_Knob_Type8_03
		frontend_desc = qs("\LWedgies")
		mesh = 'models/CAR_Instruments/Guitar/GTR8_Knob_Type8_03.skin'
		materials = [
			GTR_Knob_Type8_01_Primary
		]
	}
	{
		desc_id = GTR8_Knob_Type9_03
		frontend_desc = qs("\LMetal Heads")
		mesh = 'models/CAR_Instruments/Guitar/GTR8_Knob_Type9_03.skin'
		materials = [
			GTR_Knob_Type9_01_Primary
		]
		polaroid = guitar_rewards_knobs_metalheads
	}
	{
		desc_id = GTR8_Knob_Type10_03
		frontend_desc = qs("\LChrome Domes")
		mesh = 'models/CAR_Instruments/Guitar/GTR8_Knob_Type10_03.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = GTR9_Knob_Type1_03
		frontend_desc = qs("\LBellenders")
		mesh = 'models/CAR_Instruments/Guitar/GTR9_Knob_Type1_03.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = GTR9_Knob_Type2_03
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/Guitar/GTR9_Knob_Type2_03.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = GTR9_Knob_Type3_03
		frontend_desc = qs("\LBlazing Stars")
		mesh = 'models/CAR_Instruments/Guitar/GTR9_Knob_Type3_03.skin'
		materials = [
			GTR_Knob_Type3_01_Primary
		]
	}
	{
		desc_id = GTR9_Knob_Type4_03
		frontend_desc = qs("\LSpeedsters")
		mesh = 'models/CAR_Instruments/Guitar/GTR9_Knob_Type4_03.skin'
	}
	{
		desc_id = GTR9_Knob_Type5_03
		frontend_desc = qs("\LBoneheads")
		mesh = 'models/CAR_Instruments/Guitar/GTR9_Knob_Type5_03.skin'
		materials = [
			GTR_Knob_Type5_01_Primary
		]
	}
	{
		desc_id = GTR9_Knob_Type6_03
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/Guitar/GTR9_Knob_Type6_03.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		polaroid = guitar_rewards_knobs_dice
	}
	{
		desc_id = GTR9_Knob_Type7_03
		frontend_desc = qs("\LTwistoffs")
		mesh = 'models/CAR_Instruments/Guitar/GTR9_Knob_Type7_03.skin'
		materials = [
			GTR_Knob_Type7_01_Primary
		]
	}
	{
		desc_id = GTR9_Knob_Type8_03
		frontend_desc = qs("\LWedgies")
		mesh = 'models/CAR_Instruments/Guitar/GTR9_Knob_Type8_03.skin'
		materials = [
			GTR_Knob_Type8_01_Primary
		]
	}
	{
		desc_id = GTR9_Knob_Type9_03
		frontend_desc = qs("\LMetal Heads")
		mesh = 'models/CAR_Instruments/Guitar/GTR9_Knob_Type9_03.skin'
		materials = [
			GTR_Knob_Type9_01_Primary
		]
		polaroid = guitar_rewards_knobs_metalheads
	}
	{
		desc_id = GTR9_Knob_Type10_03
		frontend_desc = qs("\LChrome Domes")
		mesh = 'models/CAR_Instruments/Guitar/GTR9_Knob_Type10_03.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = GTR10_Knob_Type1_03
		frontend_desc = qs("\LBellenders")
		mesh = 'models/CAR_Instruments/Guitar/GTR10_Knob_Type1_03.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = GTR10_Knob_Type2_03
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/Guitar/GTR10_Knob_Type2_03.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = GTR10_Knob_Type3_03
		frontend_desc = qs("\LBlazing Stars")
		mesh = 'models/CAR_Instruments/Guitar/GTR10_Knob_Type3_03.skin'
		materials = [
			GTR_Knob_Type3_01_Primary
		]
	}
	{
		desc_id = GTR10_Knob_Type4_03
		frontend_desc = qs("\LSpeedsters")
		mesh = 'models/CAR_Instruments/Guitar/GTR10_Knob_Type4_03.skin'
	}
	{
		desc_id = GTR10_Knob_Type5_03
		frontend_desc = qs("\LBoneheads")
		mesh = 'models/CAR_Instruments/Guitar/GTR10_Knob_Type5_03.skin'
		materials = [
			GTR_Knob_Type5_01_Primary
		]
	}
	{
		desc_id = GTR10_Knob_Type6_03
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/Guitar/GTR10_Knob_Type6_03.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		polaroid = guitar_rewards_knobs_dice
	}
	{
		desc_id = GTR10_Knob_Type7_03
		frontend_desc = qs("\LTwistoffs")
		mesh = 'models/CAR_Instruments/Guitar/GTR10_Knob_Type7_03.skin'
		materials = [
			GTR_Knob_Type7_01_Primary
		]
	}
	{
		desc_id = GTR10_Knob_Type8_03
		frontend_desc = qs("\LWedgies")
		mesh = 'models/CAR_Instruments/Guitar/GTR10_Knob_Type8_03.skin'
		materials = [
			GTR_Knob_Type8_01_Primary
		]
	}
	{
		desc_id = GTR10_Knob_Type9_03
		frontend_desc = qs("\LMetal Heads")
		mesh = 'models/CAR_Instruments/Guitar/GTR10_Knob_Type9_03.skin'
		materials = [
			GTR_Knob_Type9_01_Primary
		]
		polaroid = guitar_rewards_knobs_metalheads
	}
	{
		desc_id = GTR10_Knob_Type10_03
		frontend_desc = qs("\LChrome Domes")
		mesh = 'models/CAR_Instruments/Guitar/GTR10_Knob_Type10_03.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = GTR11_Knob_Type1_03
		frontend_desc = qs("\LBellenders")
		mesh = 'models/CAR_Instruments/Guitar/GTR11_Knob_Type1_03.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = GTR11_Knob_Type2_03
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/Guitar/GTR11_Knob_Type2_03.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = GTR11_Knob_Type3_03
		frontend_desc = qs("\LBlazing Stars")
		mesh = 'models/CAR_Instruments/Guitar/GTR11_Knob_Type3_03.skin'
		materials = [
			GTR_Knob_Type3_01_Primary
		]
	}
	{
		desc_id = GTR11_Knob_Type4_03
		frontend_desc = qs("\LSpeedsters")
		mesh = 'models/CAR_Instruments/Guitar/GTR11_Knob_Type4_03.skin'
	}
	{
		desc_id = GTR11_Knob_Type5_03
		frontend_desc = qs("\LBoneheads")
		mesh = 'models/CAR_Instruments/Guitar/GTR11_Knob_Type5_03.skin'
		materials = [
			GTR_Knob_Type5_01_Primary
		]
	}
	{
		desc_id = GTR11_Knob_Type6_03
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/Guitar/GTR11_Knob_Type6_03.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		polaroid = guitar_rewards_knobs_dice
	}
	{
		desc_id = GTR11_Knob_Type7_03
		frontend_desc = qs("\LTwistoffs")
		mesh = 'models/CAR_Instruments/Guitar/GTR11_Knob_Type7_03.skin'
		materials = [
			GTR_Knob_Type7_01_Primary
		]
	}
	{
		desc_id = GTR11_Knob_Type8_03
		frontend_desc = qs("\LWedgies")
		mesh = 'models/CAR_Instruments/Guitar/GTR11_Knob_Type8_03.skin'
		materials = [
			GTR_Knob_Type8_01_Primary
		]
	}
	{
		desc_id = GTR11_Knob_Type9_03
		frontend_desc = qs("\LMetal Heads")
		mesh = 'models/CAR_Instruments/Guitar/GTR11_Knob_Type9_03.skin'
		materials = [
			GTR_Knob_Type9_01_Primary
		]
		polaroid = guitar_rewards_knobs_metalheads
	}
	{
		desc_id = GTR11_Knob_Type10_03
		frontend_desc = qs("\LChrome Domes")
		mesh = 'models/CAR_Instruments/Guitar/GTR11_Knob_Type10_03.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = GTR12_Knob_Type1_04
		frontend_desc = qs("\LBellenders")
		mesh = 'models/CAR_Instruments/Guitar/GTR12_Knob_Type1_04.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = GTR12_Knob_Type2_04
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/Guitar/GTR12_Knob_Type2_04.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = GTR12_Knob_Type3_04
		frontend_desc = qs("\LBlazing Stars")
		mesh = 'models/CAR_Instruments/Guitar/GTR12_Knob_Type3_04.skin'
		materials = [
			GTR_Knob_Type3_01_Primary
		]
	}
	{
		desc_id = GTR12_Knob_Type4_04
		frontend_desc = qs("\LSpeedsters")
		mesh = 'models/CAR_Instruments/Guitar/GTR12_Knob_Type4_04.skin'
	}
	{
		desc_id = GTR12_Knob_Type5_04
		frontend_desc = qs("\LBoneheads")
		mesh = 'models/CAR_Instruments/Guitar/GTR12_Knob_Type5_04.skin'
		materials = [
			GTR_Knob_Type5_01_Primary
		]
	}
	{
		desc_id = GTR12_Knob_Type6_04
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/Guitar/GTR12_Knob_Type6_04.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		polaroid = guitar_rewards_knobs_dice
	}
	{
		desc_id = GTR12_Knob_Type7_04
		frontend_desc = qs("\LTwistoffs")
		mesh = 'models/CAR_Instruments/Guitar/GTR12_Knob_Type7_04.skin'
		materials = [
			GTR_Knob_Type7_01_Primary
		]
	}
	{
		desc_id = GTR12_Knob_Type8_04
		frontend_desc = qs("\LWedgies")
		mesh = 'models/CAR_Instruments/Guitar/GTR12_Knob_Type8_04.skin'
		materials = [
			GTR_Knob_Type8_01_Primary
		]
	}
	{
		desc_id = GTR12_Knob_Type9_04
		frontend_desc = qs("\LMetal Heads")
		mesh = 'models/CAR_Instruments/Guitar/GTR12_Knob_Type9_04.skin'
		materials = [
			GTR_Knob_Type9_01_Primary
		]
		polaroid = guitar_rewards_knobs_metalheads
	}
	{
		desc_id = GTR12_Knob_Type10_04
		frontend_desc = qs("\LChrome Domes")
		mesh = 'models/CAR_Instruments/Guitar/GTR12_Knob_Type10_04.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = GTR13_Knob_Type1_02
		frontend_desc = qs("\LBellenders")
		mesh = 'models/CAR_Instruments/Guitar/GTR13_Knob_Type1_02.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = GTR13_Knob_Type2_02
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/Guitar/GTR13_Knob_Type2_02.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = GTR13_Knob_Type3_02
		frontend_desc = qs("\LBlazing Stars")
		mesh = 'models/CAR_Instruments/Guitar/GTR13_Knob_Type3_02.skin'
		materials = [
			GTR_Knob_Type3_01_Primary
		]
	}
	{
		desc_id = GTR13_Knob_Type4_02
		frontend_desc = qs("\LSpeedsters")
		mesh = 'models/CAR_Instruments/Guitar/GTR13_Knob_Type4_02.skin'
	}
	{
		desc_id = GTR13_Knob_Type5_02
		frontend_desc = qs("\LBoneheads")
		mesh = 'models/CAR_Instruments/Guitar/GTR13_Knob_Type5_02.skin'
		materials = [
			GTR_Knob_Type5_01_Primary
		]
	}
	{
		desc_id = GTR13_Knob_Type6_02
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/Guitar/GTR13_Knob_Type6_02.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		polaroid = guitar_rewards_knobs_dice
	}
	{
		desc_id = GTR13_Knob_Type7_02
		frontend_desc = qs("\LTwistoffs")
		mesh = 'models/CAR_Instruments/Guitar/GTR13_Knob_Type7_02.skin'
		materials = [
			GTR_Knob_Type7_01_Primary
		]
	}
	{
		desc_id = GTR13_Knob_Type8_02
		frontend_desc = qs("\LWedgies")
		mesh = 'models/CAR_Instruments/Guitar/GTR13_Knob_Type8_02.skin'
		materials = [
			GTR_Knob_Type8_01_Primary
		]
	}
	{
		desc_id = GTR13_Knob_Type9_02
		frontend_desc = qs("\LMetal Heads")
		mesh = 'models/CAR_Instruments/Guitar/GTR13_Knob_Type9_02.skin'
		materials = [
			GTR_Knob_Type9_01_Primary
		]
		polaroid = guitar_rewards_knobs_metalheads
	}
	{
		desc_id = GTR13_Knob_Type10_02
		frontend_desc = qs("\LChrome Domes")
		mesh = 'models/CAR_Instruments/Guitar/GTR13_Knob_Type10_02.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = GTR14_Knob_Type1_04
		frontend_desc = qs("\LBellenders")
		mesh = 'models/CAR_Instruments/Guitar/GTR14_Knob_Type1_04.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = GTR14_Knob_Type2_04
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/Guitar/GTR14_Knob_Type2_04.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = GTR14_Knob_Type3_04
		frontend_desc = qs("\LBlazing Stars")
		mesh = 'models/CAR_Instruments/Guitar/GTR14_Knob_Type3_04.skin'
		materials = [
			GTR_Knob_Type3_01_Primary
		]
	}
	{
		desc_id = GTR14_Knob_Type4_04
		frontend_desc = qs("\LSpeedsters")
		mesh = 'models/CAR_Instruments/Guitar/GTR14_Knob_Type4_04.skin'
	}
	{
		desc_id = GTR14_Knob_Type5_04
		frontend_desc = qs("\LBoneheads")
		mesh = 'models/CAR_Instruments/Guitar/GTR14_Knob_Type5_04.skin'
		materials = [
			GTR_Knob_Type5_01_Primary
		]
	}
	{
		desc_id = GTR14_Knob_Type6_04
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/Guitar/GTR14_Knob_Type6_04.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		polaroid = guitar_rewards_knobs_dice
	}
	{
		desc_id = GTR14_Knob_Type7_04
		frontend_desc = qs("\LTwistoffs")
		mesh = 'models/CAR_Instruments/Guitar/GTR14_Knob_Type7_04.skin'
		materials = [
			GTR_Knob_Type7_01_Primary
		]
	}
	{
		desc_id = GTR14_Knob_Type8_04
		frontend_desc = qs("\LWedgies")
		mesh = 'models/CAR_Instruments/Guitar/GTR14_Knob_Type8_04.skin'
		materials = [
			GTR_Knob_Type8_01_Primary
		]
	}
	{
		desc_id = GTR14_Knob_Type9_04
		frontend_desc = qs("\LMetal Heads")
		mesh = 'models/CAR_Instruments/Guitar/GTR14_Knob_Type9_04.skin'
		materials = [
			GTR_Knob_Type9_01_Primary
		]
		polaroid = guitar_rewards_knobs_metalheads
	}
	{
		desc_id = GTR14_Knob_Type10_04
		frontend_desc = qs("\LChrome Domes")
		mesh = 'models/CAR_Instruments/Guitar/GTR14_Knob_Type10_04.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = GTR15_Knob_Type1_03
		frontend_desc = qs("\LBellenders")
		mesh = 'models/CAR_Instruments/Guitar/GTR15_Knob_Type1_03.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = GTR15_Knob_Type2_03
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/Guitar/GTR15_Knob_Type2_03.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = GTR15_Knob_Type3_03
		frontend_desc = qs("\LBlazing Stars")
		mesh = 'models/CAR_Instruments/Guitar/GTR15_Knob_Type3_03.skin'
		materials = [
			GTR_Knob_Type3_01_Primary
		]
	}
	{
		desc_id = GTR15_Knob_Type4_03
		frontend_desc = qs("\LSpeedsters")
		mesh = 'models/CAR_Instruments/Guitar/GTR15_Knob_Type4_03.skin'
	}
	{
		desc_id = GTR15_Knob_Type5_03
		frontend_desc = qs("\LBoneheads")
		mesh = 'models/CAR_Instruments/Guitar/GTR15_Knob_Type5_03.skin'
		materials = [
			GTR_Knob_Type5_01_Primary
		]
	}
	{
		desc_id = GTR15_Knob_Type6_03
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/Guitar/GTR15_Knob_Type6_03.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		polaroid = guitar_rewards_knobs_dice
	}
	{
		desc_id = GTR15_Knob_Type7_03
		frontend_desc = qs("\LTwistoffs")
		mesh = 'models/CAR_Instruments/Guitar/GTR15_Knob_Type7_03.skin'
		materials = [
			GTR_Knob_Type7_01_Primary
		]
	}
	{
		desc_id = GTR15_Knob_Type8_03
		frontend_desc = qs("\LWedgies")
		mesh = 'models/CAR_Instruments/Guitar/GTR15_Knob_Type8_03.skin'
		materials = [
			GTR_Knob_Type8_01_Primary
		]
	}
	{
		desc_id = GTR15_Knob_Type9_03
		frontend_desc = qs("\LMetal Heads")
		mesh = 'models/CAR_Instruments/Guitar/GTR15_Knob_Type9_03.skin'
		materials = [
			GTR_Knob_Type9_01_Primary
		]
		polaroid = guitar_rewards_knobs_metalheads
	}
	{
		desc_id = GTR15_Knob_Type10_03
		frontend_desc = qs("\LChrome Domes")
		mesh = 'models/CAR_Instruments/Guitar/GTR15_Knob_Type10_03.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = gtr20_knob_type1_03
		frontend_desc = qs("\LBellenders")
		mesh = 'models/CAR_Instruments/Guitar/GTR20_Knob_Type1_03.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = gtr20_knob_type2_03
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/Guitar/GTR20_Knob_Type2_03.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = gtr20_knob_type3_03
		frontend_desc = qs("\LBlazing Stars")
		mesh = 'models/CAR_Instruments/Guitar/GTR20_Knob_Type3_03.skin'
		materials = [
			GTR_Knob_Type3_01_Primary
		]
	}
	{
		desc_id = gtr20_knob_type4_03
		frontend_desc = qs("\LSpeedsters")
		mesh = 'models/CAR_Instruments/Guitar/GTR20_Knob_Type4_03.skin'
	}
	{
		desc_id = gtr20_knob_type5_03
		frontend_desc = qs("\LBoneheads")
		mesh = 'models/CAR_Instruments/Guitar/GTR20_Knob_Type5_03.skin'
		materials = [
			GTR_Knob_Type5_01_Primary
		]
	}
	{
		desc_id = gtr20_knob_type6_03
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/Guitar/GTR20_Knob_Type6_03.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		polaroid = guitar_rewards_knobs_dice
	}
	{
		desc_id = gtr20_knob_type7_03
		frontend_desc = qs("\LTwistoffs")
		mesh = 'models/CAR_Instruments/Guitar/GTR20_Knob_Type7_03.skin'
		materials = [
			GTR_Knob_Type7_01_Primary
		]
	}
	{
		desc_id = gtr20_knob_type8_03
		frontend_desc = qs("\LWedgies")
		mesh = 'models/CAR_Instruments/Guitar/GTR20_Knob_Type8_03.skin'
		materials = [
			GTR_Knob_Type8_01_Primary
		]
	}
	{
		desc_id = gtr20_knob_type9_03
		frontend_desc = qs("\LMetal Heads")
		mesh = 'models/CAR_Instruments/Guitar/GTR20_Knob_Type9_03.skin'
		materials = [
			GTR_Knob_Type9_01_Primary
		]
		polaroid = guitar_rewards_knobs_metalheads
	}
	{
		desc_id = gtr20_knob_type10_03
		frontend_desc = qs("\LChrome Domes")
		mesh = 'models/CAR_Instruments/Guitar/GTR20_Knob_Type10_03.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = gtr31_knob_type1_03
		frontend_desc = qs("\LBellenders")
		mesh = 'models/CAR_Instruments/Guitar/GTR31_Knob_Type1_03.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = gtr31_knob_type2_03
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/Guitar/GTR31_Knob_Type2_03.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = gtr31_knob_type3_03
		frontend_desc = qs("\LBlazing Stars")
		mesh = 'models/CAR_Instruments/Guitar/GTR31_Knob_Type3_03.skin'
		materials = [
			GTR_Knob_Type3_01_Primary
		]
	}
	{
		desc_id = gtr31_knob_type4_03
		frontend_desc = qs("\LSpeedsters")
		mesh = 'models/CAR_Instruments/Guitar/GTR31_Knob_Type4_03.skin'
	}
	{
		desc_id = gtr31_knob_type5_03
		frontend_desc = qs("\LBoneheads")
		mesh = 'models/CAR_Instruments/Guitar/GTR31_Knob_Type5_03.skin'
		materials = [
			GTR_Knob_Type5_01_Primary
		]
	}
	{
		desc_id = gtr31_knob_type6_03
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/Guitar/GTR31_Knob_Type6_03.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		polaroid = guitar_rewards_knobs_dice
	}
	{
		desc_id = gtr31_knob_type7_03
		frontend_desc = qs("\LTwistoffs")
		mesh = 'models/CAR_Instruments/Guitar/GTR31_Knob_Type7_03.skin'
		materials = [
			GTR_Knob_Type7_01_Primary
		]
	}
	{
		desc_id = gtr31_knob_type8_03
		frontend_desc = qs("\LWedgies")
		mesh = 'models/CAR_Instruments/Guitar/GTR31_Knob_Type8_03.skin'
		materials = [
			GTR_Knob_Type8_01_Primary
		]
	}
	{
		desc_id = gtr31_knob_type9_03
		frontend_desc = qs("\LMetal Heads")
		mesh = 'models/CAR_Instruments/Guitar/GTR31_Knob_Type9_03.skin'
		materials = [
			GTR_Knob_Type9_01_Primary
		]
		polaroid = guitar_rewards_knobs_metalheads
	}
	{
		desc_id = gtr31_knob_type10_03
		frontend_desc = qs("\LChrome Domes")
		mesh = 'models/CAR_Instruments/Guitar/GTR31_Knob_Type10_03.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = gtr32_knob_type1_03
		frontend_desc = qs("\LBellenders")
		mesh = 'models/CAR_Instruments/Guitar/GTR32_Knob_Type1_03.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = gtr32_knob_type2_03
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/Guitar/GTR32_Knob_Type2_03.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = gtr32_knob_type3_03
		frontend_desc = qs("\LBlazing Stars")
		mesh = 'models/CAR_Instruments/Guitar/GTR32_Knob_Type3_03.skin'
		materials = [
			GTR_Knob_Type3_01_Primary
		]
	}
	{
		desc_id = gtr32_knob_type4_03
		frontend_desc = qs("\LSpeedsters")
		mesh = 'models/CAR_Instruments/Guitar/GTR32_Knob_Type4_03.skin'
	}
	{
		desc_id = gtr32_knob_type5_03
		frontend_desc = qs("\LBoneheads")
		mesh = 'models/CAR_Instruments/Guitar/GTR32_Knob_Type5_03.skin'
		materials = [
			GTR_Knob_Type5_01_Primary
		]
	}
	{
		desc_id = gtr32_knob_type6_03
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/Guitar/GTR32_Knob_Type6_03.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		polaroid = guitar_rewards_knobs_dice
	}
	{
		desc_id = gtr32_knob_type7_03
		frontend_desc = qs("\LTwistoffs")
		mesh = 'models/CAR_Instruments/Guitar/GTR32_Knob_Type7_03.skin'
		materials = [
			GTR_Knob_Type7_01_Primary
		]
	}
	{
		desc_id = gtr32_knob_type8_03
		frontend_desc = qs("\LWedgies")
		mesh = 'models/CAR_Instruments/Guitar/GTR32_Knob_Type8_03.skin'
		materials = [
			GTR_Knob_Type8_01_Primary
		]
	}
	{
		desc_id = gtr32_knob_type9_03
		frontend_desc = qs("\LMetal Heads")
		mesh = 'models/CAR_Instruments/Guitar/GTR32_Knob_Type9_03.skin'
		materials = [
			GTR_Knob_Type9_01_Primary
		]
		polaroid = guitar_rewards_knobs_metalheads
	}
	{
		desc_id = gtr32_knob_type10_03
		frontend_desc = qs("\LChrome Domes")
		mesh = 'models/CAR_Instruments/Guitar/GTR32_Knob_Type10_03.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = gtr_x13_knob_type1_02
		frontend_desc = qs("\LBellenders")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X13_Knob_Type1_02.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = gtr_x13_knob_type2_02
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X13_Knob_Type2_02.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = gtr_x13_knob_type3_02
		frontend_desc = qs("\LBlazing Stars")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X13_Knob_Type3_02.skin'
		materials = [
			GTR_Knob_Type3_01_Primary
		]
	}
	{
		desc_id = gtr_x13_knob_type4_02
		frontend_desc = qs("\LSpeedsters")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X13_Knob_Type4_02.skin'
	}
	{
		desc_id = gtr_x13_knob_type5_02
		frontend_desc = qs("\LBoneheads")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X13_Knob_Type5_02.skin'
		materials = [
			GTR_Knob_Type5_01_Primary
		]
	}
	{
		desc_id = gtr_x13_knob_type6_02
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X13_Knob_Type6_02.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		polaroid = guitar_rewards_knobs_dice
	}
	{
		desc_id = gtr_x13_knob_type7_02
		frontend_desc = qs("\LTwistoffs")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X13_Knob_Type7_02.skin'
		materials = [
			GTR_Knob_Type7_01_Primary
		]
	}
	{
		desc_id = gtr_x13_knob_type8_02
		frontend_desc = qs("\LWedgies")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X13_Knob_Type8_02.skin'
		materials = [
			GTR_Knob_Type8_01_Primary
		]
	}
	{
		desc_id = gtr_x13_knob_type9_02
		frontend_desc = qs("\LMetal Heads")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X13_Knob_Type9_02.skin'
		materials = [
			GTR_Knob_Type9_01_Primary
		]
		polaroid = guitar_rewards_knobs_metalheads
	}
	{
		desc_id = gtr_x13_knob_type10_02
		frontend_desc = qs("\LChrome Domes")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X13_Knob_Type10_02.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = gtr_x14_knob_type1_02
		frontend_desc = qs("\LBellenders")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X14_Knob_Type1_02.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = gtr_x14_knob_type2_02
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X14_Knob_Type2_02.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = gtr_x14_knob_type3_02
		frontend_desc = qs("\LBlazing Stars")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X14_Knob_Type3_02.skin'
		materials = [
			GTR_Knob_Type3_01_Primary
		]
	}
	{
		desc_id = gtr_x14_knob_type4_02
		frontend_desc = qs("\LSpeedsters")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X14_Knob_Type4_02.skin'
	}
	{
		desc_id = gtr_x14_knob_type5_02
		frontend_desc = qs("\LBoneheads")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X14_Knob_Type5_02.skin'
		materials = [
			GTR_Knob_Type5_01_Primary
		]
	}
	{
		desc_id = gtr_x14_knob_type6_02
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X14_Knob_Type6_02.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		polaroid = guitar_rewards_knobs_dice
	}
	{
		desc_id = gtr_x14_knob_type7_02
		frontend_desc = qs("\LTwistoffs")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X14_Knob_Type7_02.skin'
		materials = [
			GTR_Knob_Type7_01_Primary
		]
	}
	{
		desc_id = gtr_x14_knob_type8_02
		frontend_desc = qs("\LWedgies")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X14_Knob_Type8_02.skin'
		materials = [
			GTR_Knob_Type8_01_Primary
		]
	}
	{
		desc_id = gtr_x14_knob_type9_02
		frontend_desc = qs("\LMetal Heads")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X14_Knob_Type9_02.skin'
		materials = [
			GTR_Knob_Type9_01_Primary
		]
		polaroid = guitar_rewards_knobs_metalheads
	}
	{
		desc_id = gtr_x14_knob_type10_02
		frontend_desc = qs("\LChrome Domes")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X14_Knob_Type10_02.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = GTR_X1_Skull_Knob_01
		frontend_desc = qs("\LBellenders 2")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X1_Skull_Knob_01.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = GTR_X1_Skull_Knob_02
		frontend_desc = qs("\LBellenders 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X1_Skull_Knob_02.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = GTR_X1_Knob_Type2_02
		frontend_desc = qs("\LTone Zones 2")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X1_Knob_Type2_02.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = GTR_X1_Knob_Type2_01
		frontend_desc = qs("\LTone Zones 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X1_Knob_Type2_01.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = GTR_X1_Knob_Type3_02
		frontend_desc = qs("\LBlazing Stars 2")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X1_Knob_Type3_02.skin'
		materials = [
			GTR_Knob_Type3_01_Primary
		]
	}
	{
		desc_id = GTR_X1_Knob_Type3_01
		frontend_desc = qs("\LBlazing Stars 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X1_Knob_Type3_01.skin'
		materials = [
			GTR_Knob_Type3_01_Primary
		]
	}
	{
		desc_id = GTR_X1_Knob_Type4_02
		frontend_desc = qs("\LSpeedsters 2")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X1_Knob_Type4_02.skin'
	}
	{
		desc_id = GTR_X1_Knob_Type4_01
		frontend_desc = qs("\LSpeedsters 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X1_Knob_Type4_01.skin'
	}
	{
		desc_id = GTR_X1_Knob_Type5_02
		frontend_desc = qs("\LBoneheads 2")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X1_Knob_Type5_02.skin'
		materials = [
			GTR_Knob_Type5_01_Primary
		]
	}
	{
		desc_id = GTR_X1_Knob_Type5_01
		frontend_desc = qs("\LBoneheads 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X1_Knob_Type5_01.skin'
		materials = [
			GTR_Knob_Type5_01_Primary
		]
	}
	{
		desc_id = GTR_X1_Knob_Type6_02
		frontend_desc = qs("\LLucky Die 2")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X1_Knob_Type6_02.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		polaroid = guitar_rewards_knobs_dice
	}
	{
		desc_id = GTR_X1_Knob_Type6_01
		frontend_desc = qs("\LLucky Die 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X1_Knob_Type6_01.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		polaroid = guitar_rewards_knobs_dice
	}
	{
		desc_id = GTR_X1_Knob_Type7_02
		frontend_desc = qs("\LTwistoffs 2")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X1_Knob_Type7_02.skin'
		materials = [
			GTR_Knob_Type7_01_Primary
		]
	}
	{
		desc_id = GTR_X1_Knob_Type7_01
		frontend_desc = qs("\LTwistoffs 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X1_Knob_Type7_01.skin'
		materials = [
			GTR_Knob_Type7_01_Primary
		]
	}
	{
		desc_id = GTR_X1_Knob_Type8_02
		frontend_desc = qs("\LWedgies 2")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X1_Knob_Type8_02.skin'
		materials = [
			GTR_Knob_Type8_01_Primary
		]
	}
	{
		desc_id = GTR_X1_Knob_Type8_01
		frontend_desc = qs("\LWedgies 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X1_Knob_Type8_01.skin'
		materials = [
			GTR_Knob_Type8_01_Primary
		]
	}
	{
		desc_id = GTR_X1_Knob_Type9_02
		frontend_desc = qs("\LMetal Heads 2")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X1_Knob_Type9_02.skin'
		materials = [
			GTR_Knob_Type9_01_Primary
		]
		polaroid = guitar_rewards_knobs_metalheads
	}
	{
		desc_id = GTR_X1_Knob_Type9_01
		frontend_desc = qs("\LMetal Heads 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X1_Knob_Type9_01.skin'
		materials = [
			GTR_Knob_Type9_01_Primary
		]
		polaroid = guitar_rewards_knobs_metalheads
	}
	{
		desc_id = GTR_X1_Knob_Type10_02
		frontend_desc = qs("\LChrome Domes 2")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X1_Knob_Type10_02.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = GTR_X1_Knob_Type10_01
		frontend_desc = qs("\LChrome Domes 1")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X1_Knob_Type10_01.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = GTR_X2_Knob_Type1_03
		frontend_desc = qs("\LBellenders")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X2_Knob_Type1_03.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = GTR_X2_Knob_Type2_03
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X2_Knob_Type2_03.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = GTR_X2_Knob_Type3_03
		frontend_desc = qs("\LBlazing Stars")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X2_Knob_Type3_03.skin'
		materials = [
			GTR_Knob_Type3_01_Primary
		]
	}
	{
		desc_id = GTR_X2_Knob_Type4_03
		frontend_desc = qs("\LSpeedsters")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X2_Knob_Type4_03.skin'
	}
	{
		desc_id = GTR_X2_Knob_Type5_03
		frontend_desc = qs("\LBoneheads")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X2_Knob_Type5_03.skin'
		materials = [
			GTR_Knob_Type5_01_Primary
		]
	}
	{
		desc_id = GTR_X2_Knob_Type6_03
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X2_Knob_Type6_03.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		polaroid = guitar_rewards_knobs_dice
	}
	{
		desc_id = GTR_X2_Knob_Type7_03
		frontend_desc = qs("\LTwistoffs")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X2_Knob_Type7_03.skin'
		materials = [
			GTR_Knob_Type7_01_Primary
		]
	}
	{
		desc_id = GTR_X2_Knob_Type8_03
		frontend_desc = qs("\LWedgies")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X2_Knob_Type8_03.skin'
		materials = [
			GTR_Knob_Type8_01_Primary
		]
	}
	{
		desc_id = GTR_X2_Knob_Type9_03
		frontend_desc = qs("\LMetal Heads")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X2_Knob_Type9_03.skin'
		materials = [
			GTR_Knob_Type9_01_Primary
		]
		polaroid = guitar_rewards_knobs_metalheads
	}
	{
		desc_id = GTR_X2_Knob_Type10_03
		frontend_desc = qs("\LChrome Domes")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X2_Knob_Type10_03.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = GTR_X3_Knob_Type1_03
		frontend_desc = qs("\LBellenders")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X3_Knob_Type1_03.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = GTR_X3_Knob_Type2_03
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X3_Knob_Type2_03.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = GTR_X3_Knob_Type3_03
		frontend_desc = qs("\LBlazing Stars")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X3_Knob_Type3_03.skin'
		materials = [
			GTR_Knob_Type3_01_Primary
		]
	}
	{
		desc_id = GTR_X3_Knob_Type4_03
		frontend_desc = qs("\LSpeedsters")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X3_Knob_Type4_03.skin'
	}
	{
		desc_id = GTR_X3_Knob_Type5_03
		frontend_desc = qs("\LBoneheads")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X3_Knob_Type5_03.skin'
		materials = [
			GTR_Knob_Type5_01_Primary
		]
	}
	{
		desc_id = GTR_X3_Knob_Type6_03
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X3_Knob_Type6_03.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		polaroid = guitar_rewards_knobs_dice
	}
	{
		desc_id = GTR_X3_Knob_Type7_03
		frontend_desc = qs("\LTwistoffs")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X3_Knob_Type7_03.skin'
		materials = [
			GTR_Knob_Type7_01_Primary
		]
	}
	{
		desc_id = GTR_X3_Knob_Type8_03
		frontend_desc = qs("\LWedgies")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X3_Knob_Type8_03.skin'
		materials = [
			GTR_Knob_Type8_01_Primary
		]
	}
	{
		desc_id = GTR_X3_Knob_Type9_03
		frontend_desc = qs("\LMetal Heads")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X3_Knob_Type9_03.skin'
		materials = [
			GTR_Knob_Type9_01_Primary
		]
		polaroid = guitar_rewards_knobs_metalheads
	}
	{
		desc_id = GTR_X3_Knob_Type10_03
		frontend_desc = qs("\LChrome Domes")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X3_Knob_Type10_03.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = GTR_X4_Knob_Type1_03
		frontend_desc = qs("\LBellenders")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X4_Knob_Type1_03.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = GTR_X4_Knob_Type2_03
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X4_Knob_Type2_03.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = GTR_X4_Knob_Type3_03
		frontend_desc = qs("\LBlazing Stars")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X4_Knob_Type3_03.skin'
		materials = [
			GTR_Knob_Type3_01_Primary
		]
	}
	{
		desc_id = GTR_X4_Knob_Type4_03
		frontend_desc = qs("\LSpeedsters")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X4_Knob_Type4_03.skin'
	}
	{
		desc_id = GTR_X4_Knob_Type5_03
		frontend_desc = qs("\LBoneheads")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X4_Knob_Type5_03.skin'
		materials = [
			GTR_Knob_Type5_01_Primary
		]
	}
	{
		desc_id = GTR_X4_Knob_Type6_03
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X4_Knob_Type6_03.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		polaroid = guitar_rewards_knobs_dice
	}
	{
		desc_id = GTR_X4_Knob_Type7_03
		frontend_desc = qs("\LTwistoffs")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X4_Knob_Type7_03.skin'
		materials = [
			GTR_Knob_Type7_01_Primary
		]
	}
	{
		desc_id = GTR_X4_Knob_Type8_03
		frontend_desc = qs("\LWedgies")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X4_Knob_Type8_03.skin'
		materials = [
			GTR_Knob_Type8_01_Primary
		]
	}
	{
		desc_id = GTR_X4_Knob_Type9_03
		frontend_desc = qs("\LMetal Heads")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X4_Knob_Type9_03.skin'
		materials = [
			GTR_Knob_Type9_01_Primary
		]
		polaroid = guitar_rewards_knobs_metalheads
	}
	{
		desc_id = GTR_X4_Knob_Type10_03
		frontend_desc = qs("\LChrome Domes")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X4_Knob_Type10_03.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = GTR_X5_Knob_Type1_03
		frontend_desc = qs("\LBellenders")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X5_Knob_Type1_03.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = GTR_X5_Knob_Type2_03
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X5_Knob_Type2_03.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = GTR_X5_Knob_Type3_03
		frontend_desc = qs("\LBlazing Stars")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X5_Knob_Type3_03.skin'
		materials = [
			GTR_Knob_Type3_01_Primary
		]
	}
	{
		desc_id = GTR_X5_Knob_Type4_03
		frontend_desc = qs("\LSpeedsters")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X5_Knob_Type4_03.skin'
	}
	{
		desc_id = GTR_X5_Knob_Type5_03
		frontend_desc = qs("\LBoneheads")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X5_Knob_Type5_03.skin'
		materials = [
			GTR_Knob_Type5_01_Primary
		]
	}
	{
		desc_id = GTR_X5_Knob_Type6_03
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X5_Knob_Type6_03.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		polaroid = guitar_rewards_knobs_dice
	}
	{
		desc_id = GTR_X5_Knob_Type7_03
		frontend_desc = qs("\LTwistoffs")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X5_Knob_Type7_03.skin'
		materials = [
			GTR_Knob_Type7_01_Primary
		]
	}
	{
		desc_id = GTR_X5_Knob_Type8_03
		frontend_desc = qs("\LWedgies")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X5_Knob_Type8_03.skin'
		materials = [
			GTR_Knob_Type8_01_Primary
		]
	}
	{
		desc_id = GTR_X5_Knob_Type9_03
		frontend_desc = qs("\LMetal Heads")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X5_Knob_Type9_03.skin'
		materials = [
			GTR_Knob_Type9_01_Primary
		]
		polaroid = guitar_rewards_knobs_metalheads
	}
	{
		desc_id = GTR_X5_Knob_Type10_03
		frontend_desc = qs("\LChrome Domes")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X5_Knob_Type10_03.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = GTR_X6_Knob_Type1_03
		frontend_desc = qs("\LBellenders")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X6_Knob_Type1_03.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = GTR_X6_Knob_Type2_03
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X6_Knob_Type2_03.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = GTR_X6_Knob_Type3_03
		frontend_desc = qs("\LBlazing Stars")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X6_Knob_Type3_03.skin'
		materials = [
			GTR_Knob_Type3_01_Primary
		]
	}
	{
		desc_id = GTR_X6_Knob_Type4_03
		frontend_desc = qs("\LSpeedsters")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X6_Knob_Type4_03.skin'
	}
	{
		desc_id = GTR_X6_Knob_Type5_03
		frontend_desc = qs("\LBoneheads")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X6_Knob_Type5_03.skin'
		materials = [
			GTR_Knob_Type5_01_Primary
		]
	}
	{
		desc_id = GTR_X6_Knob_Type6_03
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X6_Knob_Type6_03.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		polaroid = guitar_rewards_knobs_dice
	}
	{
		desc_id = GTR_X6_Knob_Type7_03
		frontend_desc = qs("\LTwistoffs")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X6_Knob_Type7_03.skin'
		materials = [
			GTR_Knob_Type7_01_Primary
		]
	}
	{
		desc_id = GTR_X6_Knob_Type8_03
		frontend_desc = qs("\LWedgies")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X6_Knob_Type8_03.skin'
		materials = [
			GTR_Knob_Type8_01_Primary
		]
	}
	{
		desc_id = GTR_X6_Knob_Type9_03
		frontend_desc = qs("\LMetal Heads")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X6_Knob_Type9_03.skin'
		materials = [
			GTR_Knob_Type9_01_Primary
		]
		polaroid = guitar_rewards_knobs_metalheads
	}
	{
		desc_id = GTR_X6_Knob_Type10_03
		frontend_desc = qs("\LChrome Domes")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X6_Knob_Type10_03.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = GTR_X7_Knob_Type1_03
		frontend_desc = qs("\LBellenders")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X7_Knob_Type1_03.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = GTR_X7_Knob_Type2_03
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X7_Knob_Type2_03.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = GTR_X7_Knob_Type3_03
		frontend_desc = qs("\LBlazing Stars")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X7_Knob_Type3_03.skin'
		materials = [
			GTR_Knob_Type3_01_Primary
		]
	}
	{
		desc_id = GTR_X7_Knob_Type4_03
		frontend_desc = qs("\LSpeedsters")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X7_Knob_Type4_03.skin'
	}
	{
		desc_id = GTR_X7_Knob_Type5_03
		frontend_desc = qs("\LBoneheads")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X7_Knob_Type5_03.skin'
		materials = [
			GTR_Knob_Type5_01_Primary
		]
	}
	{
		desc_id = GTR_X7_Knob_Type6_03
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X7_Knob_Type6_03.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		polaroid = guitar_rewards_knobs_dice
	}
	{
		desc_id = GTR_X7_Knob_Type7_03
		frontend_desc = qs("\LTwistoffs")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X7_Knob_Type7_03.skin'
		materials = [
			GTR_Knob_Type7_01_Primary
		]
	}
	{
		desc_id = GTR_X7_Knob_Type8_03
		frontend_desc = qs("\LWedgies")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X7_Knob_Type8_03.skin'
		materials = [
			GTR_Knob_Type8_01_Primary
		]
	}
	{
		desc_id = GTR_X7_Knob_Type9_03
		frontend_desc = qs("\LMetal Heads")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X7_Knob_Type9_03.skin'
		materials = [
			GTR_Knob_Type9_01_Primary
		]
		polaroid = guitar_rewards_knobs_metalheads
	}
	{
		desc_id = GTR_X7_Knob_Type10_03
		frontend_desc = qs("\LChrome Domes")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X7_Knob_Type10_03.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = GTR_X8_Knob_Type1_03
		frontend_desc = qs("\LBellenders")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X8_Knob_Type1_03.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = GTR_X8_Knob_Type2_03
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X8_Knob_Type2_03.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = GTR_X8_Knob_Type3_03
		frontend_desc = qs("\LBlazing Stars")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X8_Knob_Type3_03.skin'
		materials = [
			GTR_Knob_Type3_01_Primary
		]
	}
	{
		desc_id = GTR_X8_Knob_Type4_03
		frontend_desc = qs("\LSpeedsters")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X8_Knob_Type4_03.skin'
	}
	{
		desc_id = GTR_X8_Knob_Type5_03
		frontend_desc = qs("\LBoneheads")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X8_Knob_Type5_03.skin'
		materials = [
			GTR_Knob_Type5_01_Primary
		]
	}
	{
		desc_id = GTR_X8_Knob_Type6_03
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X8_Knob_Type6_03.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		polaroid = guitar_rewards_knobs_dice
	}
	{
		desc_id = GTR_X8_Knob_Type7_03
		frontend_desc = qs("\LTwistoffs")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X8_Knob_Type7_03.skin'
		materials = [
			GTR_Knob_Type7_01_Primary
		]
	}
	{
		desc_id = GTR_X8_Knob_Type8_03
		frontend_desc = qs("\LWedgies")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X8_Knob_Type8_03.skin'
		materials = [
			GTR_Knob_Type8_01_Primary
		]
	}
	{
		desc_id = GTR_X8_Knob_Type9_03
		frontend_desc = qs("\LMetal Heads")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X8_Knob_Type9_03.skin'
		materials = [
			GTR_Knob_Type9_01_Primary
		]
		polaroid = guitar_rewards_knobs_metalheads
	}
	{
		desc_id = GTR_X8_Knob_Type10_03
		frontend_desc = qs("\LChrome Domes")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X8_Knob_Type10_03.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = GTR_X9_Knob_Type1_03
		frontend_desc = qs("\LBellenders")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X9_Knob_Type1_03.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = GTR_X9_Knob_Type2_03
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X9_Knob_Type2_03.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = GTR_X9_Knob_Type3_03
		frontend_desc = qs("\LBlazing Stars")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X9_Knob_Type3_03.skin'
		materials = [
			GTR_Knob_Type3_01_Primary
		]
	}
	{
		desc_id = GTR_X9_Knob_Type4_03
		frontend_desc = qs("\LSpeedsters")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X9_Knob_Type4_03.skin'
	}
	{
		desc_id = GTR_X9_Knob_Type5_03
		frontend_desc = qs("\LBoneheads")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X9_Knob_Type5_03.skin'
		materials = [
			GTR_Knob_Type5_01_Primary
		]
	}
	{
		desc_id = GTR_X9_Knob_Type6_03
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X9_Knob_Type6_03.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		polaroid = guitar_rewards_knobs_dice
	}
	{
		desc_id = GTR_X9_Knob_Type7_03
		frontend_desc = qs("\LTwistoffs")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X9_Knob_Type7_03.skin'
		materials = [
			GTR_Knob_Type7_01_Primary
		]
	}
	{
		desc_id = GTR_X9_Knob_Type8_03
		frontend_desc = qs("\LWedgies")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X9_Knob_Type8_03.skin'
		materials = [
			GTR_Knob_Type8_01_Primary
		]
	}
	{
		desc_id = GTR_X9_Knob_Type9_03
		frontend_desc = qs("\LMetal Heads")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X9_Knob_Type9_03.skin'
		materials = [
			GTR_Knob_Type9_01_Primary
		]
		polaroid = guitar_rewards_knobs_metalheads
	}
	{
		desc_id = GTR_X9_Knob_Type10_03
		frontend_desc = qs("\LChrome Domes")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X9_Knob_Type10_03.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = GTR_X10_Knob_Type1_03
		frontend_desc = qs("\LBellenders")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X10_Knob_Type1_03.skin'
		materials = [
			GTR_Knob_Type1_01_Primary
		]
	}
	{
		desc_id = GTR_X10_Knob_Type2_03
		frontend_desc = qs("\LTone Zones")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X10_Knob_Type2_03.skin'
		materials = [
			GTR_Knob_Type2_01_Primary
		]
	}
	{
		desc_id = GTR_X10_Knob_Type3_03
		frontend_desc = qs("\LBlazing Stars")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X10_Knob_Type3_03.skin'
		materials = [
			GTR_Knob_Type3_01_Primary
		]
	}
	{
		desc_id = GTR_X10_Knob_Type4_03
		frontend_desc = qs("\LSpeedsters")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X10_Knob_Type4_03.skin'
	}
	{
		desc_id = GTR_X10_Knob_Type5_03
		frontend_desc = qs("\LBoneheads")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X10_Knob_Type5_03.skin'
		materials = [
			GTR_Knob_Type5_01_Primary
		]
	}
	{
		desc_id = GTR_X10_Knob_Type6_03
		frontend_desc = qs("\LLucky Die")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X10_Knob_Type6_03.skin'
		materials = [
			GTR_Knob_Type6_01_Primary
		]
		polaroid = guitar_rewards_knobs_dice
	}
	{
		desc_id = GTR_X10_Knob_Type7_03
		frontend_desc = qs("\LTwistoffs")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X10_Knob_Type7_03.skin'
		materials = [
			GTR_Knob_Type7_01_Primary
		]
	}
	{
		desc_id = GTR_X10_Knob_Type8_03
		frontend_desc = qs("\LWedgies")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X10_Knob_Type8_03.skin'
		materials = [
			GTR_Knob_Type8_01_Primary
		]
	}
	{
		desc_id = GTR_X10_Knob_Type9_03
		frontend_desc = qs("\LMetal Heads")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X10_Knob_Type9_03.skin'
		materials = [
			GTR_Knob_Type9_01_Primary
		]
		polaroid = guitar_rewards_knobs_metalheads
	}
	{
		desc_id = GTR_X10_Knob_Type10_03
		frontend_desc = qs("\LChrome Domes")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X10_Knob_Type10_03.skin'
		materials = [
			GTR_Knob_Type10_01_Primary
		]
	}
	{
		desc_id = none
		frontend_desc = qs("None")
		random_weight = 10.0
	}
]
CAS_Guitar_Bridges = [
	{
		desc_id = GTR1_ESP_Bridge_01
		frontend_desc = qs("\LTruckster")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR1_ESP_Bridge_01.skin'
		materials = [
			GTR1_ESP_Bridge_01_Primary
		]
	}
	{
		desc_id = GTR4_ESP_Bridge_02
		frontend_desc = qs("\LEclipse")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR4_ESP_Bridge_02.skin'
		materials = [
			GTR4_ESP_Bridge_02_Primary
		]
	}
	{
		desc_id = GTR4_Bridge_FR10
		frontend_desc = qs("\LWhammy Bridge")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR4_Bridge_FR10.skin'
		materials = [
			GTR4_Bridge_FR10_Primary
		]
		guitar_string_start = ESP_Whammy_Bridge_String_Start
	}
	{
		desc_id = gtr4_esp_bridge_9
		frontend_desc = qs("\LString Thru")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR4_ESP_Bridge_9.skin'
		materials = [
			GTR4_ESP_Bridge_9_Primary
		]
	}
	{
		desc_id = GTR5_ESP_Bridge_05
		frontend_desc = qs("\LCliff")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR5_ESP_Bridge_05.skin'
		materials = [
			GTR5_ESP_Bridge_05_Primary
		]
	}
	{
		desc_id = GTR6_Bridge_03
		frontend_desc = qs("\LWorn Gold")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR6_Bridge_03.skin'
		materials = [
			GTR6_Bridge_03_Primary
		]
	}
	{
		desc_id = GTR8_Bridge_FR
		frontend_desc = qs("\LSpider Bridge")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR8_Bridge_FR.skin'
		materials = [
			GTR8_Bridge_FR_Primary
		]
		guitar_string_start = ESP_KH_Spider_Bridge_String_Start
	}
	{
		desc_id = GTR9_ESP_Bridge_03
		frontend_desc = qs("\LString Thru")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR9_ESP_Bridge_03.skin'
		materials = [
			GTR9_ESP_Bridge_03_Primary
		]
	}
	{
		desc_id = gtr9_bridge_fr11
		frontend_desc = qs("\LWhammy Bridge")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR9_Bridge_FR11.skin'
		materials = [
			GTR9_Bridge_FR11_Primary
		]
		guitar_string_start = ESP_Whammy_Bridge_String_Start
	}
	{
		desc_id = gtr9_bridge_04
		frontend_desc = qs("\LLocking Bridge")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR9_Bridge_04.skin'
		materials = [
			GTR9_Bridge_04_Primary
		]
	}
	{
		desc_id = GTR10_Bridge_04
		frontend_desc = qs("\LWorn Gold")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR10_Bridge_04.skin'
		materials = [
			GTR10_Bridge_04_Primary
		]
	}
	{
		desc_id = GTR11_Bridge_06
		frontend_desc = qs("\LWorn Gold")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR11_Bridge_06.skin'
		materials = [
			GTR11_Bridge_06_Primary
		]
	}
	{
		desc_id = GTR14_Bridge_14
		frontend_desc = qs("\LWorn Tigers")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR14_Bridge_14.skin'
		materials = [
			GTR14_Bridge_14_Primary
		]
	}
	{
		desc_id = gtr12_bridge_1
		frontend_desc = qs("\LWhammy")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12_Bridge_1.skin'
		materials = [
			GTR12_Bridge_1_Primary
		]
		guitar_string_start = GTR12_Bridge_1_start_properties
		guitar_string_end = GTR12_Bridge_1_end_properties
	}
	{
		desc_id = gtr12_bridge_2
		frontend_desc = qs("\LNo Whammy")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12_Bridge_2.skin'
		materials = [
			GTR12_Bridge_2_Primary
		]
		guitar_string_start = GTR12_Bridge_2_start_properties
		guitar_string_end = GTR12_Bridge_2_end_properties
	}
	{
		desc_id = gtr12_bridge_3
		frontend_desc = qs("\LString Thru")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12_Bridge_3.skin'
		materials = [
			GTR12_Bridge_3_Primary
		]
		guitar_string_start = GTR12_Bridge_3_start_properties
		guitar_string_end = GTR12_Bridge_3_end_properties
	}
	{
		desc_id = GTR12b_Bridge
		frontend_desc = qs("\LNo Whammy")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12b_Bridge.skin'
		materials = [
			GTR12b_Bridge_Primary
		]
		guitar_string_start = GTR12b_Bridge_start_properties
		guitar_string_end = GTR12b_Bridge_end_properties
	}
	{
		desc_id = GTR12c_Bridge
		frontend_desc = qs("\LNo Whammy")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12c_Bridge.skin'
		materials = [
			GTR12c_Bridge_Primary
		]
		guitar_string_start = GTR12c_Bridge_start_properties
		guitar_string_end = GTR12c_Bridge_end_properties
	}
	{
		desc_id = GTR12D_Bridge
		frontend_desc = qs("\LDelta")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12D_Bridge.skin'
		materials = [
			GTR12D_Bridge_Primary
		]
		guitar_string_start = GTR12D_Bridge_start_properties
		guitar_string_end = GTR12D_Bridge_end_properties
	}
	{
		desc_id = GTR_Bridge12E
		frontend_desc = qs("\LNo Whammy")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_Bridge12E.skin'
		materials = [
			GTR_Bridge12E_Primary
		]
		guitar_string_start = GTR_Bridge12E_start_properties
		guitar_string_end = GTR_Bridge12E_end_properties
	}
	{
		desc_id = GTR12H_Bridge
		frontend_desc = qs("\LNo Whammy")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12H_Bridge.skin'
		materials = [
			GTR12H_Bridge_Primary
		]
		guitar_string_start = GTR12H_Bridge_start_properties
		guitar_string_end = GTR12H_Bridge_end_properties
	}
	{
		desc_id = GTR12_ESP_Bridge_12
		frontend_desc = qs("\LRat Rod Bridge")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12_ESP_Bridge_12.skin'
		materials = [
			GTR12_ESP_Bridge_12_Primary
		]
		guitar_string_start = ESP_JH_RatRod_String_Start
	}
	{
		desc_id = GTR30_Brdg_StrgThru
		frontend_desc = qs("\LString Thru")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR30_Brdg_StrgThru.skin'
		materials = [
			GTR30_Brdg_StrgThru_Primary
		]
	}
	{
		desc_id = gtr30_hardware_03
		frontend_desc = qs("\LStandard")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR30_Hardware_03.skin'
		materials = [
			GTR30_Hardware_03_Primary
		]
	}
	{
		desc_id = GTR30_Bridge_D
		frontend_desc = qs("\LWraparound")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR30_Bridge_D.skin'
		materials = [
			GTR30_Bridge_D_Primary
		]
	}
	{
		desc_id = GTR30_Bridge_E
		frontend_desc = qs("\LVee")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_30_Bridge_E.skin'
		materials = [
			GTR_30_Bridge_E_Primary
		]
	}
	{
		desc_id = GTR31_Bridge
		frontend_desc = qs("\LLocking")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR31_Bridge.skin'
		materials = [
			GTR31_Bridge_Primary
		]
	}
	{
		desc_id = GTR31_Bridge31
		frontend_desc = qs("\LChrome")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR31_TM.skin'
		materials = [
			GTR31_TM_Primary
		]
	}
	{
		desc_id = GTR31b_Bridge_TMatic
		frontend_desc = qs("\LBlack")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR31_Bridge_TM.skin'
		materials = [
			GTR31_Bridge_TM_Primary
		]
	}
	{
		desc_id = GTR31_Bridge_TMatic
		frontend_desc = qs("\LBlack2")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR31_Bridge_TMZ.skin'
		materials = [
			GTR31_Bridge_TM_Primary
		]
	}
	{
		desc_id = GTR31_Hardware_B
		frontend_desc = qs("\LStandard")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR31_Hardware_B.skin'
		materials = [
			GTR31_Hardware_B_Primary
		]
	}
	{
		desc_id = gtr_31_bridge_e
		frontend_desc = qs("\LVee Bridge")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_31_Bridge_E.skin'
		materials = [
			GTR_31_Bridge_E_Primary
		]
	}
	{
		desc_id = GTR32_Hardware01
		frontend_desc = qs("\LFloyd Rose")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR32_Hardware01.skin'
		materials = [
			GTR32_Hardware01_Primary
		]
	}
	{
		desc_id = GTR33_Hardware01Z
		frontend_desc = qs("\LFloyd Rose")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR33_Hardware01Z.skin'
		materials = [
			GTR33_Hardware01Z_Primary
		]
	}
	{
		desc_id = GTR33_Hardware02
		frontend_desc = qs("\LFloyd Rose")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR33_Bridge_FR.skin'
		materials = [
			GTR33_Bridge_FR_Primary
		]
	}
	{
		desc_id = GTR33_Brdg_StrgThru
		frontend_desc = qs("\LESP String Thru")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR33_Brdg_ST.skin'
		materials = [
			GTR33_Brdg_ST_Primary
		]
	}
	{
		desc_id = GTR36_Hardware01
		frontend_desc = qs("\LFloyd Rose B")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR36_Hardware01.skin'
		materials = [
			GTR36_Hardware01_Primary
		]
	}
	{
		desc_id = GTR36_Bridge_FR
		frontend_desc = qs("\LFloyd Rose Black")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR36_Bridge_FR.skin'
		pak_num = 1
		is_esp = 1
		materials = [
			GTR36_Bridge_FR_Primary
		]
	}
	{
		desc_id = gtr37_bridge
		frontend_desc = qs("\LT Type")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR37_Bridge.skin'
		materials = [
			GTR37_Bridge_Primary
		]
	}
	{
		desc_id = gtr37_hardware
		frontend_desc = qs("\LFloyd Rose")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR37_Hardware.skin'
		materials = [
			GTR37_Hardware_Primary
		]
	}
	{
		desc_id = gtr37_brdg_strgthru
		frontend_desc = qs("\LString Thru")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR37_Brdg_ST.skin'
		materials = [
			GTR37_Brdg_ST_Primary
		]
	}
	{
		desc_id = GTR_Hardware62
		frontend_desc = qs("\LDirty Delta")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_Hardware62.skin'
		materials = [
			GTR_Hardware62_Primary
		]
		guitar_string_start = GTR_Hardware60b_start_properties
		guitar_string_end = GTR_Hardware60b_end_properties
	}
	{
		desc_id = GTR_Hardware62a
		frontend_desc = qs("\LDelta")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_Hardware62a.skin'
		materials = [
			GTR_Hardware62a_Primary
		]
		guitar_string_start = GTR_Hardware60b_start_properties
		guitar_string_end = GTR_Hardware60b_end_properties
	}
	{
		desc_id = GTR_Hardware02
		frontend_desc = qs("\LWhammy")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_Hardware02.skin'
		materials = [
			GTR_Hardware02_Primary
		]
	}
	{
		desc_id = GTR_Hardware02b
		frontend_desc = qs("\LWhammy KH2")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR33_Bridge_FR.skin'
		pak_num = 0
		Is_Metallica = 1
		is_esp = 1
		materials = [
			GTR33_Bridge_FR_Primary
		]
	}
	{
		desc_id = gtr_hardware64
		frontend_desc = qs("\LNo Whammy")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_Hardware64.skin'
		materials = [
			GTR_Hardware64_Primary
		]
	}
	{
		desc_id = GTR_Hardware60b
		frontend_desc = qs("\LNo Whammy")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_Hardware60b.skin'
		materials = [
			GTR_Hardware60b_Primary
		]
		guitar_string_start = GTR_Hardware60b_start_properties
		guitar_string_end = GTR_Hardware60b_end_properties
	}
	{
		desc_id = GTR_Hardware63
		frontend_desc = qs("\LNo Whammy")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_Hardware63.skin'
		materials = [
			GTR_Hardware63_Primary
		]
	}
	{
		desc_id = GTR_Hardware63c
		frontend_desc = qs("\LNo Whammy")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_Hardware63c.skin'
		materials = [
			GTR_Hardware63c_Primary
		]
		guitar_string_start = GTR_Hardware63c_start_properties
		guitar_string_end = GTR_Hardware63c_end_properties
	}
	{
		desc_id = gtr_hardware63b
		frontend_desc = qs("\LWhammy")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_Hardware63b.skin'
		materials = [
			GTR_Hardware63b_Primary
		]
	}
	{
		desc_id = GTR_Hardware63f
		frontend_desc = qs("\LNo Whammy")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_Hardware63f.skin'
		materials = [
			GTR_Hardware63f_Primary
		]
	}
	{
		desc_id = gtr_hardware64b
		frontend_desc = qs("\LString Thru")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_hardware64b.skin'
		materials = [
			GTR_hardware64b_Primary
		]
	}
	{
		desc_id = GTR_Hardware64bb
		frontend_desc = qs("\LWhammy")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_Hardware64bb.skin'
		materials = [
			GTR_Hardware64bb_Primary
		]
	}
	{
		desc_id = GTR_Hardware64f
		frontend_desc = qs("\LNo Whammy")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_Hardware64f.skin'
		materials = [
			GTR_Hardware64f_Primary
		]
	}
	{
		desc_id = GTR_bridge_65
		frontend_desc = qs("\LAcoustic")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_bridge_65.skin'
		materials = [
			GTR_bridge_65_Primary
		]
		guitar_string_start = GTR_bridge_65_start_properties
		guitar_string_end = GTR_bridge_65_end_properties
	}
	{
		desc_id = gtr_hardware66
		frontend_desc = qs("\LShinigami")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_Hardware66.skin'
		materials = [
			GTR_Hardware66_Primary
		]
		guitar_string_start = GTR_bridge_66_start_properties
		guitar_string_end = GTR_bridge_66_end_properties
	}
	{
		desc_id = GTR_Hardware01a
		frontend_desc = qs("\LNo Whammy")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Hardware01a.skin'
		materials = [
			GTR_Hardware01a_Primary
		]
	}
	{
		desc_id = GTR_Hardware01b
		frontend_desc = qs("\LWhammy Bar")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Hardware01b.skin'
		materials = [
			GTR_Hardware01b_Primary
		]
		guitar_string_start = GTR_Hardware01b_start_properties
		guitar_string_end = GTR_Hardware01b_end_properties
	}
	{
		desc_id = GTR_Hardware05
		frontend_desc = qs("\LAshtray")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Hardware05.skin'
		materials = [
			GTR_Hardware05_Primary
		]
	}
	{
		desc_id = GTR_Hardware06
		frontend_desc = qs("\LDefender")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Hardware06.skin'
		materials = [
			GTR_Hardware06_Primary
		]
	}
	{
		desc_id = GTR_Hardware07
		frontend_desc = qs("\LWhale Tail")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Hardware07.skin'
		materials = [
			GTR_Hardware07_Primary
		]
	}
	{
		desc_id = GTR_Hardware03a
		frontend_desc = qs("\LVoracious V no Whammy")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Hardware03a.skin'
		materials = [
			GTR_Hardware03a_Primary
		]
	}
	{
		desc_id = GTR_Hardware04a
		frontend_desc = qs("\LStandard")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Hardware04a.skin'
		materials = [
			GTR_Hardware04a_Primary
		]
	}
	{
		desc_id = GTR8_Hardware08a
		frontend_desc = qs("\LFeedback Bridge")
		mesh = 'models/CAR_Instruments/Guitar/GTR8_Hardware08a.skin'
		materials = [
			GTR8_Hardware08a_Primary
		]
	}
	{
		desc_id = GTR12_Hardware_01
		frontend_desc = qs("\LJazzbox Hardware")
		mesh = 'models/CAR_Instruments/Guitar/GTR12_Hardware_01.skin'
		materials = [
			GTR12_Hardware_01_Primary
		]
	}
	{
		desc_id = GTR_X3_Anarc_Hardware03
		frontend_desc = qs("\LAnarchy in da USA")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X3_Anarc_Hardware03.skin'
		materials = [
			GTR_X3_Anarc_Hardware03_Primary
		]
	}
	{
		desc_id = GTR_X1_Skull_Hardware02
		frontend_desc = qs("\LSkull Bridge")
		mesh = 'models/CAR_Instruments/Guitar/GTR_X1_Skull_Hardware02.skin'
		materials = [
			GTR_X1_Skull_Hardware02_Primary
		]
	}
]
CAS_Guitar_Neck = [
	{
		desc_id = GTR_Fretboard_01
		frontend_desc = qs("\LESP 22 Fret Rosewood")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_Fretboard_01.skin'
		pak_num = 0
		is_esp = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr_fretboard_d_01.dds'
				material = GTR_Fretboard_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_241
				$car_rocker_guitars_factoredGlobal_242
			}
		]
		default_cap = [
			{
				base_tex = `tex/models/Car_Instruments/Guitars/ESP/gtr_fretboard_d_01.dds`
				material = GTR_Fretboard_01_Primary
				pre_layer = [
					{
						texture = `tex/models/Characters/Layers/CAG/ESP/gtr1_esp_inlay_01.img`
						flags = 4
						color = grey_5
					}
				]
				$car_rocker_guitars_factoredGlobal_243
			}
		]
	}
	{
		desc_id = GTR_Fretboard_02
		frontend_desc = qs("\LESP 22 Fret Maple")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_Fretboard_02.skin'
		pak_num = 0
		is_esp = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr_fretboard_d2_01.dds'
				material = GTR_Fretboard_02_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_241
				$car_rocker_guitars_factoredGlobal_244
			}
		]
		default_cap = [
			{
				base_tex = `tex/models/Car_Instruments/Guitars/ESP/gtr_fretboard_d2_01.dds`
				material = GTR_Fretboard_02_Primary
				pre_layer = [
					{
						texture = `tex/models/Characters/Layers/CAG/ESP/gtr1_esp_inlay_01.img`
						flags = 4
						color = grey_5
					}
				]
				$car_rocker_guitars_factoredGlobal_243
			}
		]
	}
	{
		desc_id = GTR_Fretboard_03
		frontend_desc = qs("\LESP 22 Fret Pao Ferro")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_Fretboard_03.skin'
		pak_num = 0
		is_esp = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr_fretboard_d3_01.dds'
				material = GTR_Fretboard_03_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_241
				$car_rocker_guitars_factoredGlobal_242
			}
		]
		default_cap = [
			{
				base_tex = `tex/models/Car_Instruments/Guitars/ESP/gtr_fretboard_d3_01.dds`
				material = GTR_Fretboard_03_Primary
				pre_layer = [
					{
						texture = `tex/models/Characters/Layers/CAG/ESP/gtr1_esp_inlay_01.img`
						flags = 4
						color = grey_5
					}
				]
				$car_rocker_guitars_factoredGlobal_243
			}
		]
	}
	{
		desc_id = GTR_Fretboard_04
		frontend_desc = qs("\LESP 22 Fret Ebony")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_Fretboard_04.skin'
		pak_num = 0
		is_esp = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr_fretboard_d4_01.dds'
				material = GTR_Fretboard_04_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_241
				$car_rocker_guitars_factoredGlobal_242
			}
		]
		default_cap = [
			{
				base_tex = `tex/models/Car_Instruments/Guitars/ESP/gtr_fretboard_d4_01.dds`
				material = GTR_Fretboard_04_Primary
				pre_layer = [
					{
						texture = `tex/models/Characters/Layers/CAG/ESP/gtr1_esp_inlay_01.img`
						flags = 4
						color = grey_5
					}
				]
				$car_rocker_guitars_factoredGlobal_243
			}
		]
	}
	{
		desc_id = GTR_Fretboard24_01
		frontend_desc = qs("\LESP 24 Fret Rosewood")
		pak_num = 0
		is_esp = 1
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_Fretboard24_01.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr_fretboard24_d1_02.dds'
				material = GTR_Fretboard24_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_245
			}
		]
		default_cap = [
			{
				base_tex = `tex/models/Car_Instruments/Guitars/esp/gtr_fretboard24_d1_02.dds`
				material = GTR_Fretboard24_01_Primary
				pre_layer = [
					{
						texture = `tex/models/Characters/Layers/CAG/ESP/24frt_LD_02.img`
						flags = 36
					}
				]
				$car_rocker_guitars_factoredGlobal_243
			}
		]
	}
	{
		desc_id = GTR_Fretboard24_02
		frontend_desc = qs("\LESP 24 Fret Maple")
		pak_num = 0
		is_esp = 1
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_Fretboard24_02.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr_fretboard24_d2_02.dds'
				material = GTR_Fretboard24_02_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_245
				$car_rocker_guitars_factoredGlobal_244
			}
		]
		default_cap = [
			{
				base_tex = `tex/models/Car_Instruments/Guitars/esp/gtr_fretboard24_d2_02.dds`
				material = GTR_Fretboard24_02_Primary
				pre_layer = [
					{
						texture = `tex/models/Characters/Layers/CAG/ESP/24frt_LD_02.img`
						flags = 36
					}
				]
				$car_rocker_guitars_factoredGlobal_243
			}
		]
	}
	{
		desc_id = GTR_Fretboard24_03
		frontend_desc = qs("\LESP 24 Fret Pao Ferro")
		pak_num = 0
		is_esp = 1
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_Fretboard24_03.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr_fretboard24_d3_02.dds'
				material = GTR_Fretboard24_03_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_245
			}
		]
		default_cap = [
			{
				base_tex = `tex/models/Car_Instruments/Guitars/esp/gtr_fretboard24_d3_02.dds`
				material = GTR_Fretboard24_03_Primary
				pre_layer = [
					{
						texture = `tex/models/Characters/Layers/CAG/ESP/24frt_LD_02.img`
						flags = 36
					}
				]
				$car_rocker_guitars_factoredGlobal_243
			}
		]
	}
	{
		desc_id = GTR_Fretboard24_04
		frontend_desc = qs("\LESP 24 Fret Ebony")
		pak_num = 0
		is_esp = 1
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_Fretboard24_04.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr_fretboard24_d4_02.dds'
				material = GTR_Fretboard24_04_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_245
			}
		]
		default_cap = [
			{
				base_tex = `tex/models/Car_Instruments/Guitars/esp/gtr_fretboard24_d4_02.dds`
				material = GTR_Fretboard24_04_Primary
				pre_layer = [
					{
						texture = `tex/models/Characters/Layers/CAG/ESP/24frt_LD_02.img`
						flags = 36
					}
				]
				$car_rocker_guitars_factoredGlobal_243
			}
		]
	}
	{
		desc_id = GTR_Fretboard_24
		frontend_desc = qs("\LESP 24 Fretboard")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_FBoard_ESP_24Fret.skin'
		pak_num = 0
		is_esp = 1
		Is_Metallica = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/ESP_Fretboard_24frt.dds'
				material = Gtr_Fboard_ESP_24_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Inlays")
				mask = $CAG_Neck_24b
			}
		]
	}
	{
		desc_id = GTR_FBoard_V1000
		frontend_desc = qs("\L24 Fret Ebony")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_FBoard_V1000.skin'
		pak_num = 0
		is_esp = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/esp_fretboard_24frt.dds'
				material = Gtr31_FBoard_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_247
				$car_rocker_guitars_factoredGlobal_244
			}
		]
	}
	{
		desc_id = GTR31_FBoard_02
		frontend_desc = qs("\L24 Fret Rosewood")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR31_FBoard_02.skin'
		pak_num = 0
		is_esp = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/frtbrd_esp_24fr_ros.dds'
				material = Gtr31_FBdRose_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_247
				$car_rocker_guitars_factoredGlobal_244
			}
		]
	}
	{
		desc_id = GTR31_FBoard_03
		frontend_desc = qs("\L24 Fret Maple")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR31_FBoard_03.skin'
		pak_num = 0
		is_esp = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/frtbrd_esp_24fr_map.dds'
				material = Gtr31_FBdMap_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_247
				$car_rocker_guitars_factoredGlobal_244
			}
		]
	}
	{
		desc_id = GTR31_FBoard_Gryn
		frontend_desc = qs("\LJH The Grynch")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR31_FBoard_Gryn.skin'
		pak_num = 1
		Is_Metallica = 1
	}
	{
		desc_id = GTR33_FBoard_MUM
		frontend_desc = qs("\LMummy Fretboard")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR33_FBoard_MUM.skin'
		pak_num = 1
		Is_Metallica = 1
	}
	{
		desc_id = GTR33D_FBoard_BRS
		frontend_desc = qs("\LBoris Fretboard")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR33D_FBoard_BRS.skin'
		pak_num = 1
		Is_Metallica = 1
	}
	{
		desc_id = GTR33D_FBoard_ANNI
		frontend_desc = qs("\LKH2 Anniversary")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR33D_FBoard_ANNI.skin'
		pak_num = 0
		is_esp = 1
		Is_Metallica = 1
	}
	{
		desc_id = GTR36_FBoard
		frontend_desc = qs("\LSuper V")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR36_FBoard.skin'
		pak_num = 0
		is_esp = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_fboard.dds'
				material = Gtr36_FBoard_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Inlays")
				mask = $CAG_FBOARD36
				$car_rocker_guitars_factoredGlobal_244
			}
		]
	}
	{
		desc_id = gtr_fboard_22
		frontend_desc = qs("\LESP Maple 22 frets")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_FBoard_22.skin'
		pak_num = 0
		is_esp = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/esp_fboard_22_d.dds'
				material = GTR_FBoard_22_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_249
				$car_rocker_guitars_factoredGlobal_244
			}
		]
	}
	{
		desc_id = gtr_fboard_22b
		frontend_desc = qs("\LESP Ebony 22 frets")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_FBoard_22B.skin'
		pak_num = 0
		is_esp = 1
		Is_Metallica = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/esp_fboard_22B_d.dds'
				material = GTR_FBoard_22B_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_249
				$car_rocker_guitars_factoredGlobal_244
			}
		]
	}
	{
		desc_id = gtr_fboard_22c
		frontend_desc = qs("\LESP Rosewood 22 frets")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_FBoard_22C.skin'
		pak_num = 0
		is_esp = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/esp_fboard_22c.dds'
				material = GTR_FBoard_22C_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_249
				$car_rocker_guitars_factoredGlobal_244
			}
		]
	}
	{
		desc_id = GTR33_FBoard_KH2Vint
		frontend_desc = qs("\LCaution")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR33_FBoard_KH2Vint.skin'
		pak_num = 1
		Is_Metallica = 1
	}
	{
		desc_id = GTR33_FBoard_Drac
		frontend_desc = qs("\LKH2 Dracula")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR33_FBoard_Drac.skin'
		pak_num = 1
		Is_Metallica = 1
	}
	{
		desc_id = GTR_Fretboard_65
		frontend_desc = qs("\L24 Fret Neck")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_Fretboard_65.skin'
		pak_num = 0
		Is_Metallica = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/ESP_Fretboard_24frtB.dds'
				material = GTR_Fretboard_65_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_245
			}
		]
	}
	{
		desc_id = gtr_fretboard_66
		frontend_desc = qs("\L22 Fret Neck")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR_Fretboard_66.skin'
		pak_num = 0
		is_esp = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/GTR_Fretboard_66_D.dds'
				material = GTR_Fretboard_66_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Inlays")
				mask = $CAG_FBOARD66
			}
		]
	}
	{
		desc_id = Guitar_Neck01
		frontend_desc = qs("\LMaple")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Neck01.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/neck_maple_tb_01.dds'
				material = Guitar_Neck1_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_251
				$car_rocker_guitars_factoredGlobal_252
			}
		]
		default_cap = [
			{
				base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_01.dds`
				material = Guitar_Neck1_Primary
				pre_layer = [
					{
						texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Ornate2_D_06.img`
						flags = 4
						color = grey_1
					}
				]
				$car_rocker_guitars_factoredGlobal_243
			}
		]
	}
	{
		desc_id = Guitar_Neck02
		frontend_desc = qs("\LRosewood")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Neck02.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/neck_maple_tb_02.dds'
				material = Guitar_Neck2_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_251
			}
		]
		default_cap = [
			{
				base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_02.dds`
				material = Guitar_Neck2_Primary
				pre_layer = [
					{
						texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Vine1_D_03.img`
						flags = 4
					}
				]
				$car_rocker_guitars_factoredGlobal_243
			}
		]
	}
	{
		desc_id = Guitar_Neck03
		frontend_desc = qs("\LEbony")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Neck03.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/neck_maple_tb_03.dds'
				material = Guitar_Neck3_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_251
			}
		]
		default_cap = [
			{
				base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_03.dds`
				material = Guitar_Neck3_Primary
				pre_layer = [
					{
						texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Ornate1_D_05.img`
						flags = 4
					}
				]
				$car_rocker_guitars_factoredGlobal_243
			}
		]
	}
	{
		desc_id = Guitar_Neck04
		frontend_desc = qs("\LWorn Maple")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Neck_04.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/neck_maple_tb_04.dds'
				material = Guitar_Neck4_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_251
				$car_rocker_guitars_factoredGlobal_252
			}
		]
		default_cap = [
			{
				base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_04.dds`
				material = Guitar_Neck4_Primary
				pre_layer = [
					{
						texture = `tex/models/Characters/Layers/CAG/Neck1_Inlay_Ornate2_D_06.img`
						flags = 4
						color = grey_1
					}
				]
				$car_rocker_guitars_factoredGlobal_243
			}
		]
	}
	{
		desc_id = Guitar_Neck05
		frontend_desc = qs("\LWorn Ebony")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Neck_05.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/neck_maple_tb_05.dds'
				material = Guitar_Neck5_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_251
				$car_rocker_guitars_factoredGlobal_252
			}
		]
		default_cap = [
			{
				base_tex = `tex/models/Car_Instruments/Guitars/neck_maple_tb_05.dds`
				material = Guitar_Neck5_Primary
				pre_layer = [
					{
						texture = `tex/models/Characters/Layers/CAG/neck1_inlay_dots1_d_01.img`
						flags = 4
						color = grey_3
					}
				]
				$car_rocker_guitars_factoredGlobal_243
			}
		]
	}
	{
		desc_id = Guitar_Neck07
		frontend_desc = qs("\LStone Free")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Neck_07.skin'
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/neck_stone_tb_07.dds'
				material = Guitar_Neck7_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_251
				$car_rocker_guitars_factoredGlobal_252
			}
		]
		default_cap = [
			{
				base_tex = `tex/models/Car_Instruments/Guitars/neck_stone_tb_07.dds`
				material = Guitar_Neck7_Primary
				pre_layer = [
					{
						texture = `tex/models/Characters/Layers/CAG/neck1_inlay_dots1_d_01.img`
						flags = 4
						color = grey_3
					}
				]
				$car_rocker_guitars_factoredGlobal_243
			}
		]
	}
	{
		desc_id = Guitar_Neck06
		frontend_desc = qs("\LHero")
		mesh = 'models/CAR_Instruments/Guitar/GTR_Neck_06.skin'
		random_weight = 0.0
	}
	{
		desc_id = guitar_neck_nugent
		frontend_desc = qs("\LNo Nate")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Neck_98.skin'
		$car_rocker_guitars_factoredGlobal_253
	}
	{
		desc_id = guitar_neck_corgan
		frontend_desc = qs("\LBilly Corgan")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Neck_97.skin'
		$car_rocker_guitars_factoredGlobal_253
	}
]
CAS_Guitar_Head = [
	{
		desc_id = GTR1_Neckhead_01
		frontend_desc = qs("\L Grey Truckster")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR1_Neckhead_01.skin'
		materials = [
			GTR1_Neckhead_01_Hardware
		]
		pak_num = 0
		is_esp = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr1_neckhead_d_01.dds'
				material = GTR1_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_254
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr1_neckhead_d_01.dds'
				material = GTR1_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_255
			}
		]
	}
	{
		desc_id = GTR2_Neckhead_02
		frontend_desc = qs("\L Black Truckster")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR2_Neckhead_02.skin'
		materials = [
			GTR2_Neckhead_02_Hardware
		]
		pak_num = 1
		Is_Metallica = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr2_neckhead_d_02.dds'
				material = GTR2_Neckhead_02_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_254
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr2_neckhead_d_02.dds'
				material = GTR2_Neckhead_02_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_255
			}
		]
	}
	{
		desc_id = GTR3_Neckhead_03
		frontend_desc = qs("\L JH Custom")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR3_Neckhead_03.skin'
		pak_num = 1
		Is_Metallica = 1
		materials = [
			GTR3_Neckhead_03_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr3_neckhead_d_03.dds'
				material = GTR3_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_254
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr3_neckhead_d_03.dds'
				material = GTR3_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_255
			}
		]
	}
	{
		desc_id = GTR4_Neckhead_01
		frontend_desc = qs("\LEclipse")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR4_Neckhead_01.skin'
		materials = [
			GTR4_Neckhead_01_Hardware
		]
		pak_num = 0
		is_esp = 1
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR4_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_256
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR4_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_257
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR4_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR4_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR4_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR4_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR4_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR4_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR4_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR4_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR4_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR4_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR4_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_258
			}
		]
	}
	{
		desc_id = GTR4_Neckhead_02
		frontend_desc = qs("\LAX ")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR4_Neckhead_02.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR4_Neckhead_02_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR4_Neckhead_02_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_259
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR4_Neckhead_02_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_260
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR4_Neckhead_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR4_Neckhead_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR4_Neckhead_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR4_Neckhead_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR4_Neckhead_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR4_Neckhead_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR4_Neckhead_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR4_Neckhead_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR4_Neckhead_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR4_Neckhead_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR4_Neckhead_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_258
			}
		]
	}
	{
		desc_id = GTR4_Neckhead_03
		frontend_desc = qs("\LKH")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR4_Neckhead_03.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR4_Neckhead_03_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR4_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_261
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR4_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_262
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR4_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR4_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR4_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR4_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR4_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR4_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR4_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR4_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR4_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR4_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR4_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_258
			}
		]
	}
	{
		desc_id = GTR4_Neckhead_04
		frontend_desc = qs("\LV Head")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR4_Neckhead_04.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR4_Neckhead_04_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR4_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_263
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR4_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_264
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR4_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR4_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR4_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR4_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR4_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR4_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR4_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR4_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR4_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR4_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR4_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_265
			}
		]
	}
	{
		desc_id = GTR4_Neckhead_05
		frontend_desc = qs("\LF-400")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR4_Neckhead_05.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR4_Neckhead_05_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR4_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_266
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR4_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_267
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR4_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR4_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR4_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR4_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR4_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR4_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR4_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR4_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR4_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR4_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR4_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_268
			}
		]
	}
	{
		desc_id = GTR4_Neckhead_06
		frontend_desc = qs("\LPointed Up")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR4_Neckhead_06.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR4_Neckhead_06_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR4_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_269
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR4_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_270
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR4_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR4_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR4_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR4_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR4_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR4_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR4_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR4_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR4_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR4_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR4_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_265
			}
		]
	}
	{
		desc_id = GTR4_Neckhead_07
		frontend_desc = qs("\LPointed Down")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR4_Neckhead_07.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR4_Neckhead_07_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR4_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_271
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR4_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_272
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR4_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR4_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR4_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR4_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR4_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR4_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR4_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR4_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR4_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR4_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR4_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_273
			}
		]
	}
	{
		desc_id = GTR5_Neckhead
		frontend_desc = qs("\L RIP Cliff Burton")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR5_Neckhead.skin'
		pak_num = 1
		Is_Metallica = 1
		materials = [
			GTR5_Neckhead_Hardware
		]
	}
	{
		desc_id = GTR6_Neckhead
		frontend_desc = qs("\L Iron Cross")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR6_Neckhead.skin'
		pak_num = 1
		Is_Metallica = 1
		materials = [
			GTR6_Neckhead_Hardware
		]
	}
	{
		desc_id = GTR7_Neckhead
		frontend_desc = qs("\L Old School")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR7_Neckhead.skin'
		pak_num = 1
		Is_Metallica = 1
		materials = [
			GTR7_Neckhead_Hardware
		]
	}
	{
		desc_id = GTR8_Neckhead
		frontend_desc = qs("\L Spider Head")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR8_Neckhead.skin'
		pak_num = 1
		Is_Metallica = 1
		materials = [
			GTR8_Neckhead_Hardware
		]
	}
	{
		desc_id = gtr9_neckhead_01
		frontend_desc = qs("\LAX")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR9_Neckhead_01.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR9_Neckhead_01_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR9_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_259
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR9_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_260
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR9_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR9_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR9_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR9_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR9_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR9_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR9_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR9_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR9_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR9_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR9_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_258
			}
		]
	}
	{
		desc_id = GTR9_Neckhead_02
		frontend_desc = qs("\LEclipse")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR9_Neckhead_02.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR4_Neckhead_01_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR4_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_256
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR4_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_257
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR4_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR4_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR4_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR4_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR4_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR4_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR4_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR4_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR4_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR4_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR4_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_258
			}
		]
	}
	{
		desc_id = GTR9_Neckhead_03
		frontend_desc = qs("\LKH")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR9_Neckhead_03.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR4_Neckhead_03_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR4_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_261
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR4_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_262
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR4_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR4_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR4_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR4_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR4_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR4_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR4_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR4_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR4_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR4_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR4_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_258
			}
		]
	}
	{
		desc_id = GTR9_Neckhead_04
		frontend_desc = qs("\LV Head")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR9_Neckhead_04.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR4_Neckhead_04_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR4_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_263
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR4_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_264
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR4_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR4_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR4_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR4_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR4_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR4_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR4_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR4_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR4_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR4_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR4_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_265
			}
		]
	}
	{
		desc_id = GTR9_Neckhead_05
		frontend_desc = qs("\LF-400")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR9_Neckhead_05.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR4_Neckhead_05_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR4_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_266
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR4_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_267
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR4_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR4_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR4_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR4_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR4_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR4_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR4_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR4_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR4_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR4_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR4_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_268
			}
		]
	}
	{
		desc_id = GTR9_Neckhead_06
		frontend_desc = qs("\LPointed Up")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR9_Neckhead_06.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR4_Neckhead_06_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR4_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_269
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR4_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_270
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR4_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR4_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR4_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR4_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR4_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR4_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR4_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR4_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR4_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR4_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR4_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_265
			}
		]
	}
	{
		desc_id = GTR9_Neckhead_07
		frontend_desc = qs("\LPointed Down")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR9_Neckhead_07.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR4_Neckhead_07_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR4_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_271
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR4_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_272
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR4_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR4_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR4_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR4_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR4_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR4_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR4_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR4_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR4_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR4_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR4_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_273
			}
		]
	}
	{
		desc_id = GTR10_Neckhead
		frontend_desc = qs("\L Red Head")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR10_Neckhead.skin'
		pak_num = 1
		Is_Metallica = 1
		materials = [
			GTR10_Neckhead_Hardware
		]
	}
	{
		desc_id = GTR11_Neckhead
		frontend_desc = qs("\L Midnight Head")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR11_Neckhead.skin'
		pak_num = 1
		Is_Metallica = 1
		materials = [
			GTR11_Neckhead_Hardware
		]
	}
	{
		desc_id = GTR12_Neckhead12
		frontend_desc = qs("\L Rat Rod Head")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12_Neckhead12.skin'
		pak_num = 1
		Is_Metallica = 1
		materials = [
			GTR12_Neckhead12_Hardware
		]
	}
	{
		desc_id = GTR14_Neckhead
		frontend_desc = qs("\L Tiger Stripe Head")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR14_Neckhead.skin'
		pak_num = 1
		Is_Metallica = 1
		materials = [
			GTR10_Neckhead_Hardware
		]
	}
	{
		desc_id = gtr12_neckhead_01
		frontend_desc = qs("\LEclipse")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12_Neckhead_01.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR12_Neckhead_01_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR12_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_256
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR12_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_257
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR12_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR12_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR12_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR12_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR12_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR12_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR12_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR12_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR12_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR12_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR12_Neckhead_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_258
			}
		]
	}
	{
		desc_id = gtr12_neckhead_02
		frontend_desc = qs("\LAX")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12_Neckhead_02.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR12_Neckhead_02_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR12_Neckhead_02_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_259
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR12_Neckhead_02_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_260
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR12_Neckhead_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR12_Neckhead_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR12_Neckhead_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR12_Neckhead_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR12_Neckhead_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR12_Neckhead_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR12_Neckhead_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR12_Neckhead_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR12_Neckhead_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR12_Neckhead_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR12_Neckhead_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_258
			}
		]
	}
	{
		desc_id = gtr12_neckhead_03
		frontend_desc = qs("\LKH")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12_Neckhead_03.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR12_Neckhead_03_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR12_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_261
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR12_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_262
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR12_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR12_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR12_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR12_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR12_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR12_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR12_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR12_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR12_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR12_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR12_Neckhead_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_258
			}
		]
	}
	{
		desc_id = gtr12_neckhead_04
		frontend_desc = qs("\LV Head")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12_Neckhead_04.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR12_Neckhead_04_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR12_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_263
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR12_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_264
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR12_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR12_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR12_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR12_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR12_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR12_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR12_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR12_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR12_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR12_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR12_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_265
			}
		]
	}
	{
		desc_id = gtr12_neckhead_05
		frontend_desc = qs("\LF-400")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12_Neckhead_05.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR12_Neckhead_05_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR12_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_266
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR12_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_267
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR12_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR12_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR12_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR12_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR12_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR12_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR12_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR12_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR12_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR12_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR12_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_268
			}
		]
	}
	{
		desc_id = gtr12_neckhead_06
		frontend_desc = qs("\LPointed Up")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12_Neckhead_06.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR12_Neckhead_06_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR12_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_269
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR12_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_270
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR12_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR12_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR12_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR12_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR12_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR12_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR12_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR12_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR12_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR12_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_06.dds'
				material = GTR12_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_265
			}
		]
	}
	{
		desc_id = gtr12_neckhead_07
		frontend_desc = qs("\LPointed Down")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12_Neckhead_07.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR12_Neckhead_07_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR12_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_271
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR12_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_272
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR12_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR12_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR12_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR12_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR12_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR12_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR12_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR12_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR12_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR12_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_07.dds'
				material = GTR12_Neckhead_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_273
			}
		]
	}
	{
		desc_id = GTR30_Nekhed_A
		frontend_desc = qs("\L3 per side B")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR30_Nekhed_A.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR30_Nekhead_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_274
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_275
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_276
			}
		]
	}
	{
		desc_id = GTR30_Nekhed_B
		frontend_desc = qs("\L3 per side A")
		pak_num = 0
		is_esp = 1
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR31c_NeckHead.skin'
		materials = [
			GTR31c_Neckhead_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_277
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_278
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_258
			}
		]
	}
	{
		desc_id = GTR30_Nekhed_C
		frontend_desc = qs("\LSuper V")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR36_NekHed.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR36_NHead_SprV_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_279
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_280
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_281
			}
		]
	}
	{
		desc_id = gtr30_nekhed_d
		frontend_desc = qs("\LPointed Down")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR32_Nekhead01.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR32_NHED_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_282
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_283
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_273
			}
		]
	}
	{
		desc_id = gtr30_nekhed_e
		frontend_desc = qs("\LPointed Up")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR31c_NeckHead04.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR33D_NeckHead_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_284
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_285
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_265
			}
		]
	}
	{
		desc_id = gtr30_nekhed_f
		frontend_desc = qs("\LRW")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR37_Neckhead.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR37_NHEAD_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_286
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_287
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_288
			}
		]
	}
	{
		desc_id = GTR31b_Neckhead
		frontend_desc = qs("\LGrynch Head")
		pak_num = 0
		Is_Metallica = 1
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR31b_Neckhead.skin'
		materials = [
			GTR31b_Neckhead_Hardware
		]
	}
	{
		desc_id = GTR31c_NeckHead
		frontend_desc = qs("\L3 per side A")
		pak_num = 0
		is_esp = 1
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR31c_NeckHead.skin'
		materials = [
			GTR31c_Neckhead_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_277
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_278
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_258
			}
		]
	}
	{
		desc_id = GTR31c_NeckHead03
		frontend_desc = qs("\LSuper V")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR31c_NeckHead03.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR36_NHead_SprV_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_279
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_280
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_281
			}
		]
	}
	{
		desc_id = GTR31c_NeckHead06
		frontend_desc = qs("\LRW")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR31c_NeckHead06.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR37_NHEAD_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_286
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_287
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_288
			}
		]
	}
	{
		desc_id = GTR31c_NeckHead04
		frontend_desc = qs("\LPointed Up")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR31c_NeckHead04.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR33D_NeckHead_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_284
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_285
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_265
			}
		]
	}
	{
		desc_id = GTR31c_NeckHead05
		frontend_desc = qs("\LPointed Down")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR31c_NeckHead05.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR32_NHED_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_282
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_283
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_273
			}
		]
	}
	{
		desc_id = GTR31c_NeckHead02
		frontend_desc = qs("\L3 per side B")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR31c_NeckHead02.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR30_Nekhead_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_274
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_275
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_276
			}
		]
	}
	{
		desc_id = GTR32_Nekhead01
		frontend_desc = qs("\LPointed Down")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR32_Nekhead01.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR32_NHED_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_282
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_283
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_273
			}
		]
	}
	{
		desc_id = GTR32_NeckHead_F
		frontend_desc = qs("\LSuper V")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR32_Neckhead_F.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR36_NHead_SprV_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_279
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_280
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_281
			}
		]
	}
	{
		desc_id = GTR32_Neckhead_C
		frontend_desc = qs("\LRW")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR32_Neckhead_C.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR37_NHEAD_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_286
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_287
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_288
			}
		]
	}
	{
		desc_id = GTR32_NeckHead_B
		frontend_desc = qs("\LPointed Up")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR32_Neckhead_B.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR33D_NeckHead_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_284
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_285
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_265
			}
		]
	}
	{
		desc_id = GTR32_Neckhead_E
		frontend_desc = qs("\L3 Per Side A")
		pak_num = 0
		is_esp = 1
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR31c_NeckHead.skin'
		materials = [
			GTR31c_Neckhead_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_277
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_278
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_258
			}
		]
	}
	{
		desc_id = GTR32_Neckhead_D
		frontend_desc = qs("\L3 per side B")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR32_Neckhead_D.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR30_Nekhead_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_274
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_275
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_276
			}
		]
	}
	{
		desc_id = GTR33d_NekHed
		frontend_desc = qs("\LPointed Head")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR33D_NekHed.skin'
		pak_num = 0
		is_esp = 1
		Is_Metallica = 1
		materials = [
			GTR33D_NeckHead_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_284
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_285
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_265
			}
		]
	}
	{
		desc_id = GTR33D_NekHed_B
		frontend_desc = qs("\LPointed Head B")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR33D_NekHed_B.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR32_NHED_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_282
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_283
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_273
			}
		]
	}
	{
		desc_id = GTR33D_Neckhead_D
		frontend_desc = qs("\LRW")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR33D_Nekhead_D.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR37_NHEAD_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_286
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_287
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_288
			}
		]
	}
	{
		desc_id = GTR33D_NekHed_C
		frontend_desc = qs("\LSuper V")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR33D_NekHed_C.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR36_NHead_SprV_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_279
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_280
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_281
			}
		]
	}
	{
		desc_id = GTR33D_NekHed_E
		frontend_desc = qs("\LH Series")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR33D_NekHed_E.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR30_Nekhead_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_274
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_275
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_276
			}
		]
	}
	{
		desc_id = GTR33D_NekHed_F
		frontend_desc = qs("\LViper")
		pak_num = 0
		is_esp = 1
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR33D_NekHed_F.skin'
		materials = [
			GTR31c_Neckhead_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_277
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_278
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_258
			}
		]
	}
	{
		desc_id = GTR33_NekHed_Drac
		frontend_desc = qs("\LDracula Head")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR33_NekHed_Drac.skin'
		pak_num = 1
		Is_Metallica = 1
		materials = [
			GTR33_NekHed_Drac_Hardware
		]
	}
	{
		desc_id = GTR33Brideshead
		frontend_desc = qs("\LBrideshead")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR33Brideshead.skin'
		pak_num = 1
		Is_Metallica = 1
		materials = [
			GTR33_Brideshead_Hardware
		]
	}
	{
		desc_id = GTR36_NekHed
		frontend_desc = qs("\LSuper V")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR36_NekHed.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR36_NHead_SprV_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_279
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_280
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_281
			}
		]
	}
	{
		desc_id = GTR36_NekHed_B
		frontend_desc = qs("\LRW")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR36_NekHed_B.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR37_NHEAD_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_286
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_287
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_288
			}
		]
	}
	{
		desc_id = GTR36_NekHed_E
		frontend_desc = qs("\LPointed Down")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR36_NekHed_E.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR32_NHED_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_282
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_283
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_273
			}
		]
	}
	{
		desc_id = GTR36_NekHed_F
		frontend_desc = qs("\LPointed Up")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR36_NekHed_F.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR33D_NeckHead_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_284
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_285
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_265
			}
		]
	}
	{
		desc_id = GTR36_NekHed_C
		frontend_desc = qs("\L3 Per Side A")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR36_NekHed_C.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR31c_Neckhead_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_277
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_278
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_258
			}
		]
	}
	{
		desc_id = GTR36_NekHed_D
		frontend_desc = qs("\L3 per side B")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR36_NekHed_D.skin'
		is_esp = 1
		pak_num = 0
		materials = [
			GTR30_Nekhead_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_274
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_275
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_276
			}
		]
	}
	{
		desc_id = gtr37_neckhead
		frontend_desc = qs("\LRW")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR37_Neckhead.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR37_NHEAD_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_286
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_287
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_288
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr37_nekhed.dds'
				material = GTR37_NHEAD_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_288
			}
		]
	}
	{
		desc_id = GTR37_NeckHead_B
		frontend_desc = qs("\LSuper V")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR37_Neckhead02.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR36_NHead_SprV_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_279
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_280
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_281
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr36_nekhed.dds'
				material = GTR36_NHead_SprV_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_281
			}
		]
	}
	{
		desc_id = GTR37_NeckHead_C
		frontend_desc = qs("\LPointed Down")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR37_Neckhead03.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR32_NHED_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_282
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_283
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr32_nekhed.dds'
				material = GTR32_NHED_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_273
			}
		]
	}
	{
		desc_id = GTR37_Neckhead_D
		frontend_desc = qs("\LPointed Up")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR37_Neckhead04.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR33D_NeckHead_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_284
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_285
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr33d_nekhed.dds'
				material = GTR33D_NeckHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_265
			}
		]
	}
	{
		desc_id = GTR37_Neckhead_E
		frontend_desc = qs("\L3 Per Side A")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR37_Neckhead05.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR31c_Neckhead_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_277
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_278
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr31_neckhead.dds'
				material = GTR31C_Neckhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_258
			}
		]
	}
	{
		desc_id = GTR37_Neckhead_F
		frontend_desc = qs("\L3 per side B")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR37_Neckhead06.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR30_Nekhead_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_274
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_275
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_276
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr30_nekhead_h_d.dds'
				material = GTR30_Nekhead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_276
			}
		]
	}
	{
		desc_id = GTR38_Neckhead
		frontend_desc = qs("\LKH WaveHead")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR38_Neckhead.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR38_NHead_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr38_nekhed.dds'
				material = GTR38_NHead_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $GTR38_Nhead
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr38_nekhed.dds'
				material = GTR38_NHead_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $GTR38_Nhead_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr38_nekhed.dds'
				material = GTR38_NHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_291
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr38_nekhed.dds'
				material = GTR38_NHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_291
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr38_nekhed.dds'
				material = GTR38_NHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_292
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr38_nekhed.dds'
				material = GTR38_NHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_292
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr38_nekhed.dds'
				material = GTR38_NHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_292
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr38_nekhed.dds'
				material = GTR38_NHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_292
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr38_nekhed.dds'
				material = GTR38_NHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_292
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr38_nekhed.dds'
				material = GTR38_NHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_292
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr38_nekhed.dds'
				material = GTR38_NHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_292
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr38_nekhed.dds'
				material = GTR38_NHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_292
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr38_nekhed.dds'
				material = GTR38_NHead_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_292
			}
		]
	}
	{
		desc_id = GTR60_Neckhead
		frontend_desc = qs("\LV Head")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR60_Neckhead.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR60_Neckhead_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/GTR60_D_Neckhead.dds'
				material = GTR60_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_263
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/GTR60_D_Neckhead.dds'
				material = GTR60_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_264
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/GTR60_D_Neckhead.dds'
				material = GTR60_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/GTR60_D_Neckhead.dds'
				material = GTR60_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_D_neckhead.dds'
				material = GTR60_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_D_neckhead.dds'
				material = GTR60_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_D_neckhead.dds'
				material = GTR60_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_D_neckhead.dds'
				material = GTR60_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_D_neckhead.dds'
				material = GTR60_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_D_neckhead.dds'
				material = GTR60_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_D_neckhead.dds'
				material = GTR60_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_D_neckhead.dds'
				material = GTR60_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_D_neckhead.dds'
				material = GTR60_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_265
			}
		]
	}
	{
		desc_id = GTR60_Neckhead2
		frontend_desc = qs("\LF-400")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR60_Neckhead2.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR60_Neckhead2_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr60_neckhead2_d.dds'
				material = GTR60_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $GTR60_Neckhead2
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr60_neckhead2_d.dds'
				material = GTR60_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $GTR60_Neckhead2_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_neckhead2_d.dds'
				material = GTR60_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_neckhead2_d.dds'
				material = GTR60_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_neckhead2_d.dds'
				material = GTR60_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_neckhead2_d.dds'
				material = GTR60_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_neckhead2_d.dds'
				material = GTR60_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_neckhead2_d.dds'
				material = GTR60_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_neckhead2_d.dds'
				material = GTR60_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_neckhead2_d.dds'
				material = GTR60_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_neckhead2_d.dds'
				material = GTR60_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_neckhead2_d.dds'
				material = GTR60_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_neckhead2_d.dds'
				material = GTR60_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_268
			}
		]
	}
	{
		desc_id = GTR60_Neckhead3
		frontend_desc = qs("\LPointed Down")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR60_Neckhead3.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR60_Neckhead3_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr62_d_neckhead.dds'
				material = GTR60_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_295
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr62_d_neckhead.dds'
				material = GTR60_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_296
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr62_d_neckhead.dds'
				material = GTR60_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr62_d_neckhead.dds'
				material = GTR60_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr62_d_neckhead.dds'
				material = GTR60_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr62_d_neckhead.dds'
				material = GTR60_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr62_d_neckhead.dds'
				material = GTR60_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr62_d_neckhead.dds'
				material = GTR60_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr62_d_neckhead.dds'
				material = GTR60_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr62_d_neckhead.dds'
				material = GTR60_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr62_d_neckhead.dds'
				material = GTR60_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr62_d_neckhead.dds'
				material = GTR60_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr62_d_neckhead.dds'
				material = GTR60_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_273
			}
		]
	}
	{
		desc_id = GTR60_Neckhead_04
		frontend_desc = qs("\LEclipse")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR60_Neckhead_04.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR60_Neckhead_04_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR60_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_256
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR60_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_257
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR60_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR60_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR60_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR60_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR60_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR60_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR60_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR60_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR60_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR60_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR60_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_258
			}
		]
	}
	{
		desc_id = GTR60_Neckhead_05
		frontend_desc = qs("\LAX")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR60_Neckhead_05.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR60_Neckhead_05_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR60_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_259
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR60_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_260
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR60_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR60_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR60_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR60_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR60_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR60_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR60_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR60_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR60_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR60_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR60_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_258
			}
		]
	}
	{
		desc_id = GTR12b_Neckhead
		frontend_desc = qs("\LBlack Cream")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12b_Neckhead.skin'
		pak_num = 0
		Is_Metallica = 1
		materials = [
			GTR12b_Neckhead_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr12b_neckhead_d.dds'
				material = GTR12b_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $GTR12b_Neckhead
			}
		]
	}
	{
		desc_id = GTR12c_Neckhead
		frontend_desc = qs("\LHot Rod V")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12c_Neckhead.skin'
		pak_num = 0
		Is_Metallica = 1
		materials = [
			GTR12c_Neckhead_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr12c_neckhead_d.dds'
				material = GTR12c_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $GTR12c_Neckhead
			}
		]
	}
	{
		desc_id = GTR12g_Neckhead
		frontend_desc = qs("\LGreen Hot Rod")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12g_Neckhead.skin'
		pak_num = 0
		Is_Metallica = 1
		materials = [
			GTR12g_Neckhead_Hardware
		]
		sections = [
		]
	}
	{
		desc_id = GTR12D_Neckhead
		frontend_desc = qs("\LCherry Red")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12D_Neckhead.skin'
		pak_num = 0
		Is_Metallica = 1
		materials = [
			GTR12D_Neckhead_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr12d_neckhead_d.dds'
				material = GTR12D_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $GTR12D_Neckhead
			}
		]
	}
	{
		desc_id = GTR12E_Neckhead
		frontend_desc = qs("\LFlying Devil")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12E_Neckhead.skin'
		pak_num = 0
		Is_Metallica = 1
		materials = [
			GTR12E_Neckhead_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr12e_neckhead_d.dds'
				material = GTR12E_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $GTR12E_Neckhead
			}
		]
	}
	{
		desc_id = GTR12H_Neckhead
		frontend_desc = qs("\LKill Em All ")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR12H_Neckhead.skin'
		pak_num = 0
		Is_Metallica = 1
		materials = [
			GTR12H_Neckhead_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr12h_neckhead_d.dds'
				material = GTR12H_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $GTR12H_Neckhead
			}
		]
	}
	{
		desc_id = GTR62b_Neckhead
		frontend_desc = qs("\LMaster Jackson")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR62b_Neckhead.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR62b_Neckhead_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr62b_neckhead_d.dds'
				material = GTR62b_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $GTR62b_Neckhead
			}
		]
	}
	{
		desc_id = GTR62_Neckhead
		frontend_desc = qs("\LPointed Down")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR62_Neckhead.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR62_Neckhead_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr62_d_neckhead.dds'
				material = GTR62_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_295
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr62_d_neckhead.dds'
				material = GTR62_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_296
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr62_d_neckhead.dds'
				material = GTR62_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr62_d_neckhead.dds'
				material = GTR62_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr62_d_neckhead.dds'
				material = GTR62_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr62_d_neckhead.dds'
				material = GTR62_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr62_d_neckhead.dds'
				material = GTR62_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr62_d_neckhead.dds'
				material = GTR62_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr62_d_neckhead.dds'
				material = GTR62_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr62_d_neckhead.dds'
				material = GTR62_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr62_d_neckhead.dds'
				material = GTR62_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr62_d_neckhead.dds'
				material = GTR62_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr62_d_neckhead.dds'
				material = GTR62_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_273
			}
		]
	}
	{
		desc_id = GTR62_Neckhead2
		frontend_desc = qs("\LF-400")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR62_Neckhead2.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR62_Neckhead2_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr64_neckhead_d.dds'
				material = GTR62_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_266
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr64_neckhead_d.dds'
				material = GTR62_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_267
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR62_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR62_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_D.dds'
				material = GTR62_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_D.dds'
				material = GTR62_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_D.dds'
				material = GTR62_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_D.dds'
				material = GTR62_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_D.dds'
				material = GTR62_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_D.dds'
				material = GTR62_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_D.dds'
				material = GTR62_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_D.dds'
				material = GTR62_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_D.dds'
				material = GTR62_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_268
			}
		]
	}
	{
		desc_id = GTR62_Neckhead3
		frontend_desc = qs("\LV Head")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR62_Neckhead3.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR62_Neckhead3_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr60_d_neckhead.dds'
				material = GTR62_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_263
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr60_d_neckhead.dds'
				material = GTR62_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_264
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR62_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR62_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR62_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR62_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR62_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR62_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR62_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR62_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR62_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR62_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR62_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_265
			}
		]
	}
	{
		desc_id = GTR62_Neckhead_04
		frontend_desc = qs("\LEclipse")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR62_Neckhead_04.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR62_Neckhead_04_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR62_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_256
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR62_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_257
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR62_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR62_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_D_01.dds'
				material = GTR62_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_D_01.dds'
				material = GTR62_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_D_01.dds'
				material = GTR62_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_D_01.dds'
				material = GTR62_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_D_01.dds'
				material = GTR62_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_D_01.dds'
				material = GTR62_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_D_01.dds'
				material = GTR62_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_D_01.dds'
				material = GTR62_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_D_01.dds'
				material = GTR62_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_258
			}
		]
	}
	{
		desc_id = GTR62_Neckhead_05
		frontend_desc = qs("\LAX")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR62_Neckhead_05.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR62_Neckhead_05_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR62_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_259
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR62_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_260
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR62_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR62_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR62_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR62_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR62_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR62_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR62_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR62_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR62_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR62_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR62_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_258
			}
		]
	}
	{
		desc_id = GTR62_Neckhead_06
		frontend_desc = qs("\LKH")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR62_Neckhead_06.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR62_Neckhead_06_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR62_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_261
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR62_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_262
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR62_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR62_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR62_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR62_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR62_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR62_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR62_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR62_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR62_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR62_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR62_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_258
			}
		]
	}
	{
		desc_id = GTR63_Neckhead
		frontend_desc = qs("\LEX Series")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR63_Neckhead.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR63_Neckhead_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr63_neckhead_d.dds'
				material = GTR63_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $GTR63_Neckhead
			}
		]
	}
	{
		desc_id = GTR63_Neckhead2
		frontend_desc = qs("\LV Head")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR63_Neckhead2.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR63_Neckhead2_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr60_d_neckhead.dds'
				material = GTR63_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_263
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr60_d_neckhead.dds'
				material = GTR63_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_264
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR63_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = GTR63_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_D_neckhead.dds'
				material = GTR63_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_D_neckhead.dds'
				material = GTR63_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_D_neckhead.dds'
				material = GTR63_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_D_neckhead.dds'
				material = GTR63_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_D_neckhead.dds'
				material = GTR63_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_D_neckhead.dds'
				material = GTR63_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_D_neckhead.dds'
				material = GTR63_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_D_neckhead.dds'
				material = GTR63_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_D_neckhead.dds'
				material = GTR63_Neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_265
			}
		]
	}
	{
		desc_id = GTR63_Neckhead3
		frontend_desc = qs("\LF-400")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR63_Neckhead3.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR63_Neckhead3_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr64_neckhead_d.dds'
				material = GTR63_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_266
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr64_neckhead_d.dds'
				material = GTR63_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_267
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR63_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = GTR63_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_D.dds'
				material = GTR63_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_D.dds'
				material = GTR63_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_D.dds'
				material = GTR63_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_D.dds'
				material = GTR63_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_D.dds'
				material = GTR63_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_D.dds'
				material = GTR63_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_D.dds'
				material = GTR63_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_D.dds'
				material = GTR63_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_D.dds'
				material = GTR63_Neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_268
			}
		]
	}
	{
		desc_id = GTR63_Neckhead_04
		frontend_desc = qs("\LEclipse")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR63_Neckhead_04.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR63_Neckhead_04_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR63_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_256
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR63_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_257
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR63_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR63_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_D_01.dds'
				material = GTR63_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_D_01.dds'
				material = GTR63_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_D_01.dds'
				material = GTR63_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_D_01.dds'
				material = GTR63_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_D_01.dds'
				material = GTR63_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_D_01.dds'
				material = GTR63_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_D_01.dds'
				material = GTR63_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_D_01.dds'
				material = GTR63_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_D_01.dds'
				material = GTR63_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_258
			}
		]
	}
	{
		desc_id = GTR63_Neckhead_05
		frontend_desc = qs("\LAX")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR63_Neckhead_05.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR63_Neckhead_05_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR63_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_259
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR63_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_260
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR63_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR63_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_D_01.dds'
				material = GTR63_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_D_01.dds'
				material = GTR63_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_D_01.dds'
				material = GTR63_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_D_01.dds'
				material = GTR63_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_D_01.dds'
				material = GTR63_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_D_01.dds'
				material = GTR63_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_D_01.dds'
				material = GTR63_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_D_01.dds'
				material = GTR63_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_D_01.dds'
				material = GTR63_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_258
			}
		]
	}
	{
		desc_id = GTR63_Neckhead_06
		frontend_desc = qs("\LKH")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR63_Neckhead_06.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR63_Neckhead_06_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR63_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_261
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR63_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_262
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR63_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR63_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR63_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR63_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR63_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR63_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR63_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR63_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR63_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR63_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR63_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_258
			}
		]
	}
	{
		desc_id = GTR63b_Neckhead
		frontend_desc = qs("\LTattoo")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR63b_Neckhead.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR63b_Neckhead_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr63b_neckhead_d.dds'
				material = GTR63b_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $GTR63b_Neckhead
			}
		]
	}
	{
		desc_id = GTR63c_Neckhead
		frontend_desc = qs("\LDiamond Plate")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR63c_Neckhead.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR63c_Neckhead_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr63c_neckhead_d.dds'
				material = GTR63c_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_305
			}
		]
	}
	{
		desc_id = GTR63d_Neckhead
		frontend_desc = qs("\LKen Lawrence")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR63d_Neckhead.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR63d_Neckhead_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr63d_neckhead_d.dds'
				material = GTR63d_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $GTR63d_Neckhead
			}
		]
	}
	{
		desc_id = GTR63e_Neckhead
		frontend_desc = qs("\LRusty")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR63e_Neckhead.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR63e_Neckhead_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr63e_neckhead_d.dds'
				material = GTR63e_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $GTR63e_Neckhead
			}
		]
	}
	{
		desc_id = GTR63f_Neckhead
		frontend_desc = qs("\LPointed Down")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR63f_Neckhead.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR63f_Neckhead_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr63f_neckhead_d.dds'
				material = GTR63f_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $GTR63f_Neckhead
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr63f_neckhead_d.dds'
				material = GTR63f_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_296
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr63f_neckhead_d.dds'
				material = GTR63f_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr63f_neckhead_d.dds'
				material = GTR63f_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr63f_neckhead_D.dds'
				material = GTR63f_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr63f_neckhead_D.dds'
				material = GTR63f_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr63f_neckhead_D.dds'
				material = GTR63f_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr63f_neckhead_D.dds'
				material = GTR63f_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr63f_neckhead_D.dds'
				material = GTR63f_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr63f_neckhead_D.dds'
				material = GTR63f_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr63f_neckhead_D.dds'
				material = GTR63f_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr63f_neckhead_D.dds'
				material = GTR63f_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr63f_neckhead_D.dds'
				material = GTR63f_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_273
			}
		]
	}
	{
		desc_id = GTR63g_Neckhead
		frontend_desc = qs("\LDeer Skull")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR63g_Neckhead.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR63g_Neckhead_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr63g_neckhead_d.dds'
				material = GTR63g_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_305
			}
		]
	}
	{
		desc_id = GTR64_Neckhead
		frontend_desc = qs("\LF-400")
		mesh = 'models/CAR_Instruments/Guitar/ESP/gtr64_neckhead.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			gtr64_neckhead_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr64_neckhead_d.dds'
				material = gtr64_neckhead_primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_266
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr64_neckhead_d.dds'
				material = gtr64_neckhead_primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_267
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = gtr64_neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_d.dds'
				material = gtr64_neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_D.dds'
				material = gtr64_neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_D.dds'
				material = gtr64_neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_D.dds'
				material = gtr64_neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_D.dds'
				material = gtr64_neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_D.dds'
				material = gtr64_neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_D.dds'
				material = gtr64_neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_D.dds'
				material = gtr64_neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_D.dds'
				material = gtr64_neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_268
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr64_neckhead_D.dds'
				material = gtr64_neckhead_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_268
			}
		]
	}
	{
		desc_id = gtr64_neckhead2
		frontend_desc = qs("\LV Head")
		mesh = 'models/CAR_Instruments/Guitar/ESP/gtr64_neckhead2.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			gtr64_neckhead2_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr60_d_neckhead.dds'
				material = gtr64_neckhead2_primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_263
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr60_d_neckhead.dds'
				material = gtr64_neckhead2_primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_264
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = gtr64_neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = gtr64_neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = gtr64_neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = gtr64_neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = gtr64_neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = gtr64_neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = gtr64_neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = gtr64_neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = gtr64_neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = gtr64_neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_265
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr60_d_neckhead.dds'
				material = gtr64_neckhead2_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_265
			}
		]
	}
	{
		desc_id = gtr64_neckhead3
		frontend_desc = qs("\LPointed Down")
		mesh = 'models/CAR_Instruments/Guitar/ESP/gtr64_neckhead3.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			gtr64_neckhead3_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr62_d_neckhead.dds'
				material = gtr64_neckhead3_primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_295
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr62_d_neckhead.dds'
				material = gtr64_neckhead3_primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_296
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr62_d_neckhead.dds'
				material = gtr64_neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr62_d_neckhead.dds'
				material = gtr64_neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr62_d_neckhead.dds'
				material = gtr64_neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr62_d_neckhead.dds'
				material = gtr64_neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr62_d_neckhead.dds'
				material = gtr64_neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr62_d_neckhead.dds'
				material = gtr64_neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr62_d_neckhead.dds'
				material = gtr64_neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr62_d_neckhead.dds'
				material = gtr64_neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr62_d_neckhead.dds'
				material = gtr64_neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr62_d_neckhead.dds'
				material = gtr64_neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_273
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr62_d_neckhead.dds'
				material = gtr64_neckhead3_primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_273
			}
		]
	}
	{
		desc_id = GTR64_Neckhead_04
		frontend_desc = qs("\LEclipse")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR64_Neckhead_04.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR64_Neckhead_04_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR64_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_256
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR64_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_257
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR64_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_01.dds'
				material = GTR64_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_D_01.dds'
				material = GTR64_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_D_01.dds'
				material = GTR64_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_D_01.dds'
				material = GTR64_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_D_01.dds'
				material = GTR64_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_D_01.dds'
				material = GTR64_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_D_01.dds'
				material = GTR64_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_D_01.dds'
				material = GTR64_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_D_01.dds'
				material = GTR64_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_D_01.dds'
				material = GTR64_Neckhead_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_258
			}
		]
	}
	{
		desc_id = GTR64_Neckhead_05
		frontend_desc = qs("\LAX")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR64_Neckhead_05.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR64_Neckhead_05_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR64_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_259
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR64_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_260
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR64_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_d_01.dds'
				material = GTR64_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_D_01.dds'
				material = GTR64_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_D_01.dds'
				material = GTR64_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_D_01.dds'
				material = GTR64_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_D_01.dds'
				material = GTR64_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_D_01.dds'
				material = GTR64_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_D_01.dds'
				material = GTR64_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_D_01.dds'
				material = GTR64_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_D_01.dds'
				material = GTR64_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr9_neckhead_D_01.dds'
				material = GTR64_Neckhead_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_258
			}
		]
	}
	{
		desc_id = GTR64_Neckhead_06
		frontend_desc = qs("\LKH")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR64_Neckhead_06.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR64_Neckhead_06_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR64_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_261
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR64_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_262
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR64_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR64_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR64_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR64_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR64_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR64_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR64_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR64_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR64_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR64_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_258
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/esp/gtr4_neckhead_d_03.dds'
				material = GTR64_Neckhead_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_258
			}
		]
	}
	{
		desc_id = GTR33_NeckHead
		frontend_desc = qs("\LCaution")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR33_Neckhead.skin'
		pak_num = 0
		is_esp = 1
		Is_Metallica = 1
		materials = [
			GTR33_Neckhead_primary
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr_33nek_kh2_d.dds'
				material = GTR33_Neckhead_primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_309
			}
		]
	}
	{
		desc_id = GTR33_NekHed
		frontend_desc = qs("\LMummy Head")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR33_NekHed_MUM.skin'
		pak_num = 1
		Is_Metallica = 1
		materials = [
			GTR33_NHead_MUM_primary
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/ESP/gtr33_nekhed_mum_d.dds'
				material = GTR33_NHead_MUM_primary
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_309
			}
		]
	}
	{
		desc_id = GTR65_Neckhead
		frontend_desc = qs("\LAcoustic Variax Natural")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR65_Neckhead.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR65_Neckhead_Hardware
		]
	}
	{
		desc_id = GTR65b_Neckhead
		frontend_desc = qs("\LAcoustic Variax Black")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR65b_Neckhead.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR65b_Neckhead_Hardware
		]
	}
	{
		desc_id = gtr66_neckhead
		frontend_desc = qs("\LShinigami")
		mesh = 'models/CAR_Instruments/Guitar/ESP/GTR66_Neckhead.skin'
		pak_num = 0
		is_esp = 1
		materials = [
			GTR66_Neckhead_Hardware
		]
	}
	{
		desc_id = Guitar_Head01
		frontend_desc = qs("\LT-Bone")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Head01.skin'
		materials = [
			Guitar_Head_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock01_D_01.dds'
				material = Guitar_Head_Headstock
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_254
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock01_D_01.dds'
				material = Guitar_Head_Headstock
				$car_rocker_guitars_factoredGlobal_0
				$car_rocker_guitars_factoredGlobal_255
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock01_D_01.dds'
				material = Guitar_Head_Headstock
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_310
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock01_D_01.dds'
				material = Guitar_Head_Headstock
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_310
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock01_D_01.dds'
				material = Guitar_Head_Headstock
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_310
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock01_D_01.dds'
				material = Guitar_Head_Headstock
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_310
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock01_D_01.dds'
				material = Guitar_Head_Headstock
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_310
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock01_D_01.dds'
				material = Guitar_Head_Headstock
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_310
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock01_D_01.dds'
				material = Guitar_Head_Headstock
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_310
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock01_D_01.dds'
				material = Guitar_Head_Headstock
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_310
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock01_D_01.dds'
				material = Guitar_Head_Headstock
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_310
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock01_D_01.dds'
				material = Guitar_Head_Headstock
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_310
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock01_D_01.dds'
				material = Guitar_Head_Headstock
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_310
			}
		]
	}
	{
		desc_id = Guitar_Head02
		frontend_desc = qs("\LDestroyer")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Head02.skin'
		materials = [
			Headstock2_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock02_d_01.dds'
				material = Headstock2_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_Headstk_02
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock02_D_01.dds'
				material = Headstock2_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_Headstk_02_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock02_D_01.dds'
				material = Headstock2_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock02_D_01.dds'
				material = Headstock2_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock02_D_01.dds'
				material = Headstock2_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock02_D_01.dds'
				material = Headstock2_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock02_D_01.dds'
				material = Headstock2_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock02_D_01.dds'
				material = Headstock2_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock02_D_01.dds'
				material = Headstock2_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock02_D_01.dds'
				material = Headstock2_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock02_D_01.dds'
				material = Headstock2_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock02_D_01.dds'
				material = Headstock2_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock02_D_01.dds'
				material = Headstock2_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_313
			}
		]
	}
	{
		desc_id = Guitar_Head03
		frontend_desc = qs("\LHaxor")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Head03.skin'
		materials = [
			Guitar_Head_03_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock03_d_01.dds'
				material = Guitar_Head_03_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_Headstk_03
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock03_D_01.dds'
				material = Guitar_Head_03_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_Headstk_03_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock03_D_01.dds'
				material = Guitar_Head_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock03_D_01.dds'
				material = Guitar_Head_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock03_D_01.dds'
				material = Guitar_Head_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock03_D_01.dds'
				material = Guitar_Head_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock03_D_01.dds'
				material = Guitar_Head_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock03_D_01.dds'
				material = Guitar_Head_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock03_D_01.dds'
				material = Guitar_Head_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock03_D_01.dds'
				material = Guitar_Head_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock03_D_01.dds'
				material = Guitar_Head_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock03_D_01.dds'
				material = Guitar_Head_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock03_D_01.dds'
				material = Guitar_Head_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_313
			}
		]
	}
	{
		desc_id = Guitar_Head04
		frontend_desc = qs("\LContempo")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Head04.skin'
		materials = [
			Guitar_Head_04_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock04_d_01.dds'
				material = Guitar_Head_04_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_Headstk_04
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock04_D_01.dds'
				material = Guitar_Head_04_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_Headstk_04_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock04_D_01.dds'
				material = Guitar_Head_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock04_D_01.dds'
				material = Guitar_Head_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock04_d_01.dds'
				material = Guitar_Head_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock04_d_01.dds'
				material = Guitar_Head_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock04_d_01.dds'
				material = Guitar_Head_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock04_d_01.dds'
				material = Guitar_Head_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock04_d_01.dds'
				material = Guitar_Head_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock04_d_01.dds'
				material = Guitar_Head_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock04_d_01.dds'
				material = Guitar_Head_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock04_d_01.dds'
				material = Guitar_Head_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock04_d_01.dds'
				material = Guitar_Head_04_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_313
			}
		]
	}
	{
		desc_id = Guitar_Head05
		frontend_desc = qs("\LSession")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Head05.skin'
		materials = [
			Guitar_Head_05_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock05_d_01.dds'
				material = Guitar_Head_05_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_Headstk_05
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock05_D_01.dds'
				material = Guitar_Head_05_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_Headstk_05_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock05_D_01.dds'
				material = Guitar_Head_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock05_D_01.dds'
				material = Guitar_Head_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock05_d_01.dds'
				material = Guitar_Head_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock05_d_01.dds'
				material = Guitar_Head_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock05_d_01.dds'
				material = Guitar_Head_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock05_d_01.dds'
				material = Guitar_Head_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock05_d_01.dds'
				material = Guitar_Head_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock05_d_01.dds'
				material = Guitar_Head_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock05_d_01.dds'
				material = Guitar_Head_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock05_d_01.dds'
				material = Guitar_Head_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock05_d_01.dds'
				material = Guitar_Head_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_313
			}
		]
	}
	{
		desc_id = Guitar_Head06
		frontend_desc = qs("\LBird Wing")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Head06.skin'
		materials = [
			Guitar_Head_06_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock06_d_01.dds'
				material = Guitar_Head_06_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_Headstk_06
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock06_D_01.dds'
				material = Guitar_Head_06_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_Headstk_06_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock06_D_01.dds'
				material = Guitar_Head_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock06_D_01.dds'
				material = Guitar_Head_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock06_d_01.dds'
				material = Guitar_Head_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock06_d_01.dds'
				material = Guitar_Head_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock06_d_01.dds'
				material = Guitar_Head_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock06_d_01.dds'
				material = Guitar_Head_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock06_d_01.dds'
				material = Guitar_Head_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock06_d_01.dds'
				material = Guitar_Head_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock06_d_01.dds'
				material = Guitar_Head_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock06_d_01.dds'
				material = Guitar_Head_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock06_d_01.dds'
				material = Guitar_Head_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_313
			}
		]
	}
	{
		desc_id = Guitar_Head07
		frontend_desc = qs("\LBrickyard")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Head07.skin'
		materials = [
			Guitar_Head_07_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock07_d_01.dds'
				material = Guitar_Head_07_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_Headstk_07
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock07_D_01.dds'
				material = Guitar_Head_07_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_Headstk_07_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock07_D_01.dds'
				material = Guitar_Head_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock07_D_01.dds'
				material = Guitar_Head_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock07_D_01.dds'
				material = Guitar_Head_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock07_D_01.dds'
				material = Guitar_Head_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock07_D_01.dds'
				material = Guitar_Head_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock07_D_01.dds'
				material = Guitar_Head_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock07_D_01.dds'
				material = Guitar_Head_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock07_D_01.dds'
				material = Guitar_Head_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock07_D_01.dds'
				material = Guitar_Head_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock07_D_01.dds'
				material = Guitar_Head_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock07_D_01.dds'
				material = Guitar_Head_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_313
			}
		]
	}
	{
		desc_id = Guitar_Head08
		frontend_desc = qs("\LOverlord")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Head08.skin'
		materials = [
			Guitar_Head_08_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock08_d_01.dds'
				material = Guitar_Head_08_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_Headstk_08
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock08_D_01.dds'
				material = Guitar_Head_08_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_Headstk_08_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock08_D_01.dds'
				material = Guitar_Head_08_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock08_D_01.dds'
				material = Guitar_Head_08_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock08_D_01.dds'
				material = Guitar_Head_08_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock08_D_01.dds'
				material = Guitar_Head_08_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock08_D_01.dds'
				material = Guitar_Head_08_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock08_D_01.dds'
				material = Guitar_Head_08_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock08_D_01.dds'
				material = Guitar_Head_08_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock08_D_01.dds'
				material = Guitar_Head_08_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock08_D_01.dds'
				material = Guitar_Head_08_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock08_D_01.dds'
				material = Guitar_Head_08_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock08_D_01.dds'
				material = Guitar_Head_08_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_313
			}
		]
	}
	{
		desc_id = Guitar_Head09
		frontend_desc = qs("\LEarfork")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Head09.skin'
		materials = [
			Guitar_Head_09_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock09_d_01.dds'
				material = Guitar_Head_09_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_Headstk_09
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock09_D_01.dds'
				material = Guitar_Head_09_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_Headstk_09_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock09_D_01.dds'
				material = Guitar_Head_09_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock09_D_01.dds'
				material = Guitar_Head_09_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock09_D_01.dds'
				material = Guitar_Head_09_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock09_D_01.dds'
				material = Guitar_Head_09_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock09_D_01.dds'
				material = Guitar_Head_09_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock09_D_01.dds'
				material = Guitar_Head_09_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock09_D_01.dds'
				material = Guitar_Head_09_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock09_D_01.dds'
				material = Guitar_Head_09_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock09_D_01.dds'
				material = Guitar_Head_09_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock09_D_01.dds'
				material = Guitar_Head_09_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock09_D_01.dds'
				material = Guitar_Head_09_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_313
			}
		]
	}
	{
		desc_id = Guitar_Head10
		frontend_desc = qs("\LVeejay")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Head10.skin'
		materials = [
			Guitar_Head_10_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock10_d_01.dds'
				material = Guitar_Head_10_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_Headstk_10
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock10_D_01.dds'
				material = Guitar_Head_10_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_Headstk_10_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock10_D_01.dds'
				material = Guitar_Head_10_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock10_D_01.dds'
				material = Guitar_Head_10_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock10_D_01.dds'
				material = Guitar_Head_10_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock10_D_01.dds'
				material = Guitar_Head_10_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock10_D_01.dds'
				material = Guitar_Head_10_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock10_D_01.dds'
				material = Guitar_Head_10_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock10_D_01.dds'
				material = Guitar_Head_10_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock10_D_01.dds'
				material = Guitar_Head_10_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock10_D_01.dds'
				material = Guitar_Head_10_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock10_D_01.dds'
				material = Guitar_Head_10_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock10_D_01.dds'
				material = Guitar_Head_10_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_313
			}
		]
	}
	{
		desc_id = Guitar_Head11
		frontend_desc = qs("\LCarver")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Head11.skin'
		materials = [
			Guitar_Head_11_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock11_d_01.dds'
				material = Guitar_Head_11_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_Headstk_11
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock11_D_01.dds'
				material = Guitar_Head_11_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_Headstk_11_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock11_D_01.dds'
				material = Guitar_Head_11_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock11_D_01.dds'
				material = Guitar_Head_11_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock11_d_01.dds'
				material = Guitar_Head_11_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock11_d_01.dds'
				material = Guitar_Head_11_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock11_d_01.dds'
				material = Guitar_Head_11_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock11_d_01.dds'
				material = Guitar_Head_11_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock11_d_01.dds'
				material = Guitar_Head_11_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock11_d_01.dds'
				material = Guitar_Head_11_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock11_d_01.dds'
				material = Guitar_Head_11_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock11_d_01.dds'
				material = Guitar_Head_11_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock11_d_01.dds'
				material = Guitar_Head_11_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_313
			}
		]
	}
	{
		desc_id = Guitar_Head12
		frontend_desc = qs("\LTunomatic")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Head12.skin'
		materials = [
			Guitar_Head_12_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock12_d_01.dds'
				material = Guitar_Head_12_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_Headstk_12
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock12_D_01.dds'
				material = Guitar_Head_12_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_Headstk_12_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock12_D_01.dds'
				material = Guitar_Head_12_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock12_D_01.dds'
				material = Guitar_Head_12_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock12_d_01.dds'
				material = Guitar_Head_12_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock12_d_01.dds'
				material = Guitar_Head_12_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock12_d_01.dds'
				material = Guitar_Head_12_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock12_d_01.dds'
				material = Guitar_Head_12_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock12_d_01.dds'
				material = Guitar_Head_12_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock12_d_01.dds'
				material = Guitar_Head_12_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock12_d_01.dds'
				material = Guitar_Head_12_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock12_d_01.dds'
				material = Guitar_Head_12_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock12_d_01.dds'
				material = Guitar_Head_12_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_313
			}
		]
	}
	{
		desc_id = Guitar_Head13
		frontend_desc = qs("\LClass Act")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Head13.skin'
		materials = [
			Guitar_Head_13_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock13_d_01.dds'
				material = Guitar_Head_13_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_Headstk_13
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock13_D_01.dds'
				material = Guitar_Head_13_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_Headstk_13_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock13_D_01.dds'
				material = Guitar_Head_13_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock13_D_01.dds'
				material = Guitar_Head_13_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock13_D_01.dds'
				material = Guitar_Head_13_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock13_D_01.dds'
				material = Guitar_Head_13_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock13_D_01.dds'
				material = Guitar_Head_13_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock13_D_01.dds'
				material = Guitar_Head_13_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock13_D_01.dds'
				material = Guitar_Head_13_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock13_D_01.dds'
				material = Guitar_Head_13_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock13_D_01.dds'
				material = Guitar_Head_13_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock13_D_01.dds'
				material = Guitar_Head_13_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock13_D_01.dds'
				material = Guitar_Head_13_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_313
			}
		]
	}
	{
		desc_id = Guitar_Head14
		frontend_desc = qs("\LGumbie")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Head14.skin'
		materials = [
			Guitar_Head_14_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock14_d_01.dds'
				material = Guitar_Head_14_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_Headstk_14
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock14_D_01.dds'
				material = Guitar_Head_14_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_Headstk_14_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock14_D_01.dds'
				material = Guitar_Head_14_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock14_D_01.dds'
				material = Guitar_Head_14_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock14_D_01.dds'
				material = Guitar_Head_14_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock14_D_01.dds'
				material = Guitar_Head_14_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock14_D_01.dds'
				material = Guitar_Head_14_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock14_D_01.dds'
				material = Guitar_Head_14_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock14_D_01.dds'
				material = Guitar_Head_14_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock14_D_01.dds'
				material = Guitar_Head_14_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock14_D_01.dds'
				material = Guitar_Head_14_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock14_D_01.dds'
				material = Guitar_Head_14_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock14_D_01.dds'
				material = Guitar_Head_14_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_313
			}
		]
	}
	{
		desc_id = Guitar_Head15
		frontend_desc = qs("\LShredder")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Head15.skin'
		materials = [
			Guitar_Head_15_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock15_d_01.dds'
				material = Guitar_Head_15_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_Headstk_15
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock15_D_01.dds'
				material = Guitar_Head_15_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_Headstk_15_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock15_D_01.dds'
				material = Guitar_Head_15_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock15_D_01.dds'
				material = Guitar_Head_15_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock15_D_01.dds'
				material = Guitar_Head_15_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock15_D_01.dds'
				material = Guitar_Head_15_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock15_D_01.dds'
				material = Guitar_Head_15_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock15_D_01.dds'
				material = Guitar_Head_15_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock15_D_01.dds'
				material = Guitar_Head_15_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock15_D_01.dds'
				material = Guitar_Head_15_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock15_D_01.dds'
				material = Guitar_Head_15_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock15_D_01.dds'
				material = Guitar_Head_15_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock15_D_01.dds'
				material = Guitar_Head_15_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_313
			}
		]
	}
	{
		desc_id = Guitar_Head16
		frontend_desc = qs("\LThe Ladder")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Head16.skin'
		materials = [
			Guitar_Head_16_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_predikt_hstock01_d_mls.dds'
				material = Guitar_Head_16_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_Headstk_16
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_predikt_hstock01_d_mls.dds'
				material = Guitar_Head_16_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_Headstk_16_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_predikt_hstock01_d_mls.dds'
				material = Guitar_Head_16_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_predikt_hstock01_d_mls.dds'
				material = Guitar_Head_16_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_predikt_hstock01_d_mls.dds'
				material = Guitar_Head_16_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_predikt_hstock01_d_mls.dds'
				material = Guitar_Head_16_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_predikt_hstock01_d_mls.dds'
				material = Guitar_Head_16_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_predikt_hstock01_d_mls.dds'
				material = Guitar_Head_16_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_predikt_hstock01_d_mls.dds'
				material = Guitar_Head_16_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_predikt_hstock01_d_mls.dds'
				material = Guitar_Head_16_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_predikt_hstock01_d_mls.dds'
				material = Guitar_Head_16_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_predikt_hstock01_d_mls.dds'
				material = Guitar_Head_16_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_predikt_hstock01_d_mls.dds'
				material = Guitar_Head_16_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_313
			}
		]
	}
	{
		desc_id = Guitar_Head20
		frontend_desc = qs("\LThruster")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Head20.skin'
		materials = [
			Guitar_Head_20_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock20_d_01.dds'
				material = Guitar_Head_20_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_Headstk_20
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock20_D_01.dds'
				material = Guitar_Head_20_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_Headstk_20_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock20_D_01.dds'
				material = Guitar_Head_20_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/GTR_Headtock20_D_01.dds'
				material = Guitar_Head_20_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock20_d_01.dds'
				material = Guitar_Head_20_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock20_d_01.dds'
				material = Guitar_Head_20_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock20_d_01.dds'
				material = Guitar_Head_20_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock20_d_01.dds'
				material = Guitar_Head_20_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock20_d_01.dds'
				material = Guitar_Head_20_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock20_d_01.dds'
				material = Guitar_Head_20_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock20_d_01.dds'
				material = Guitar_Head_20_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock20_d_01.dds'
				material = Guitar_Head_20_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock20_d_01.dds'
				material = Guitar_Head_20_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_313
			}
		]
	}
	{
		desc_id = Guitar_Head31
		frontend_desc = qs("\LHeadon")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Head31.skin'
		materials = [
			Guitar_Head_31_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock_d_31.dds'
				material = Guitar_Head_31_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_Headstk_31
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock_d_31.dds'
				material = Guitar_Head_31_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_Headstk_31_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock_d_31.dds'
				material = Guitar_Head_31_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock_d_31.dds'
				material = Guitar_Head_31_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock_d_31.dds'
				material = Guitar_Head_31_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock_d_31.dds'
				material = Guitar_Head_31_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock_d_31.dds'
				material = Guitar_Head_31_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock_d_31.dds'
				material = Guitar_Head_31_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock_d_31.dds'
				material = Guitar_Head_31_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock_d_31.dds'
				material = Guitar_Head_31_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock_d_31.dds'
				material = Guitar_Head_31_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock_d_31.dds'
				material = Guitar_Head_31_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock_d_31.dds'
				material = Guitar_Head_31_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_313
			}
		]
	}
	{
		desc_id = Guitar_Head99
		frontend_desc = qs("\LGrumbelstok")
		mesh = 'models/CAR_Instruments/Guitar/Guitar_Head_99.skin'
		materials = [
			Guitar_Head_99_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock099.dds'
				material = Guitar_Head_99_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_Headstk_99
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock099.dds'
				material = Guitar_Head_99_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_Headstk_99_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock099.dds'
				material = Guitar_Head_99_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock099.dds'
				material = Guitar_Head_99_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock099.dds'
				material = Guitar_Head_99_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock099.dds'
				material = Guitar_Head_99_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock099.dds'
				material = Guitar_Head_99_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock099.dds'
				material = Guitar_Head_99_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock099.dds'
				material = Guitar_Head_99_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock099.dds'
				material = Guitar_Head_99_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock099.dds'
				material = Guitar_Head_99_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock099.dds'
				material = Guitar_Head_99_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_headtock099.dds'
				material = Guitar_Head_99_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_313
			}
		]
	}
	{
		desc_id = Guitar_Head_X_01
		frontend_desc = qs("\LMetaAAal")
		mesh = 'models/CAR_Instruments/Guitar/Headstock_X_Hand_01.skin'
		materials = [
			Headstock_X_Hand_01_Hardware
		]
		price = 665
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_01.dds'
				material = Headstock_X_Hand_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_X_Headstk_01
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_01.dds'
				material = Headstock_X_Hand_01_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_X_Headstk_01_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_01.dds'
				material = Headstock_X_Hand_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_01.dds'
				material = Headstock_X_Hand_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_01.dds'
				material = Headstock_X_Hand_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_01.dds'
				material = Headstock_X_Hand_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_01.dds'
				material = Headstock_X_Hand_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_01.dds'
				material = Headstock_X_Hand_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_01.dds'
				material = Headstock_X_Hand_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_01.dds'
				material = Headstock_X_Hand_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_01.dds'
				material = Headstock_X_Hand_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_01.dds'
				material = Headstock_X_Hand_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_01.dds'
				material = Headstock_X_Hand_01_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_313
			}
		]
	}
	{
		desc_id = Headstock_X_Arrow_02
		frontend_desc = qs("\LOne Way to Rock")
		price = 500
		mesh = 'models/CAR_Instruments/Guitar/Headstock_X_Arrow_02.skin'
		materials = [
			Headstock_X_Arrow_02_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock2_d_01.dds'
				material = Headstock_X_Arrow_02_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_X_Headstk_02
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock2_d_01.dds'
				material = Headstock_X_Arrow_02_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_X_Headstk_02_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock2_d_01.dds'
				material = Headstock_X_Arrow_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock2_d_01.dds'
				material = Headstock_X_Arrow_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock2_d_01.dds'
				material = Headstock_X_Arrow_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock2_d_01.dds'
				material = Headstock_X_Arrow_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock2_d_01.dds'
				material = Headstock_X_Arrow_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock2_d_01.dds'
				material = Headstock_X_Arrow_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock2_d_01.dds'
				material = Headstock_X_Arrow_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock2_d_01.dds'
				material = Headstock_X_Arrow_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock2_d_01.dds'
				material = Headstock_X_Arrow_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock2_d_01.dds'
				material = Headstock_X_Arrow_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock2_d_01.dds'
				material = Headstock_X_Arrow_02_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_313
			}
		]
	}
	{
		desc_id = guitar_head_x_03
		frontend_desc = qs("\LCherry Bomb")
		mesh = 'models/CAR_Instruments/Guitar/Headstock_X_bomb_03.skin'
		price = 1000
		polaroid = guitar_rewards_head_BOMB
		materials = [
			Headstock_X_bomb_03_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_03.dds'
				material = Headstock_X_bomb_03_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_X_Headstk_03
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_03.dds'
				material = Headstock_X_bomb_03_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_X_Headstk_03_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_03.dds'
				material = Headstock_X_bomb_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_03.dds'
				material = Headstock_X_bomb_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_03.dds'
				material = Headstock_X_bomb_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_03.dds'
				material = Headstock_X_bomb_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_03.dds'
				material = Headstock_X_bomb_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_03.dds'
				material = Headstock_X_bomb_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_03.dds'
				material = Headstock_X_bomb_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_03.dds'
				material = Headstock_X_bomb_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_03.dds'
				material = Headstock_X_bomb_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_03.dds'
				material = Headstock_X_bomb_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_03.dds'
				material = Headstock_X_bomb_03_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_313
			}
		]
	}
	{
		desc_id = Headstock_X_Handle_05
		frontend_desc = qs("\LAxe Handle")
		price = 500
		mesh = 'models/CAR_Instruments/Guitar/Headstock_X_Handle_05.skin'
		materials = [
			Headstock_X_Handle_05_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_05.dds'
				material = Headstock_X_Handle_05_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_X_Headstk_05
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_05.dds'
				material = Headstock_X_Handle_05_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_X_Headstk_05_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_05.dds'
				material = Headstock_X_Handle_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_356
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_05.dds'
				material = Headstock_X_Handle_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_356
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_05.dds'
				material = Headstock_X_Handle_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_356
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_05.dds'
				material = Headstock_X_Handle_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_356
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_05.dds'
				material = Headstock_X_Handle_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_356
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_05.dds'
				material = Headstock_X_Handle_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_356
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_05.dds'
				material = Headstock_X_Handle_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_356
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_05.dds'
				material = Headstock_X_Handle_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_356
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_05.dds'
				material = Headstock_X_Handle_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_356
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_05.dds'
				material = Headstock_X_Handle_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_356
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_05.dds'
				material = Headstock_X_Handle_05_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_356
			}
		]
	}
	{
		desc_id = Headstock_X_Feather_06
		frontend_desc = qs("\LFeather Fire")
		price = 300
		mesh = 'models/CAR_Instruments/Guitar/Headstock_X_Feather_06.skin'
		materials = [
			Headstock_X_Feather_06_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_06.dds'
				material = Headstock_X_Feather_06_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_X_Headstk_06
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_06.dds'
				material = Headstock_X_Feather_06_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_X_Headstk_06_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_06.dds'
				material = Headstock_X_Feather_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_06.dds'
				material = Headstock_X_Feather_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_06.dds'
				material = Headstock_X_Feather_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_06.dds'
				material = Headstock_X_Feather_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_06.dds'
				material = Headstock_X_Feather_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_06.dds'
				material = Headstock_X_Feather_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_06.dds'
				material = Headstock_X_Feather_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_06.dds'
				material = Headstock_X_Feather_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_06.dds'
				material = Headstock_X_Feather_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_06.dds'
				material = Headstock_X_Feather_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_06.dds'
				material = Headstock_X_Feather_06_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_313
			}
		]
	}
	{
		desc_id = Headstock_X_Cents_07
		frontend_desc = qs("\LNo Cents")
		mesh = 'models/CAR_Instruments/Guitar/Headstock_X_Cents_07.skin'
		price = 500
		polaroid = guitar_rewards_HEAD_CENTS
		materials = [
			Headstock_X_Cents_07_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_07.dds'
				material = Headstock_X_Cents_07_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_X_Headstk_07
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_07.dds'
				material = Headstock_X_Cents_07_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_X_Headstk_07_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_07.dds'
				material = Headstock_X_Cents_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_07.dds'
				material = Headstock_X_Cents_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_07.dds'
				material = Headstock_X_Cents_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_07.dds'
				material = Headstock_X_Cents_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_07.dds'
				material = Headstock_X_Cents_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_07.dds'
				material = Headstock_X_Cents_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_07.dds'
				material = Headstock_X_Cents_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_07.dds'
				material = Headstock_X_Cents_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_07.dds'
				material = Headstock_X_Cents_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_07.dds'
				material = Headstock_X_Cents_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_07.dds'
				material = Headstock_X_Cents_07_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_313
			}
		]
	}
	{
		desc_id = Headstock_X_Flame_08
		frontend_desc = qs("\LFire Lick")
		price = 450
		mesh = 'models/CAR_Instruments/Guitar/Headstock_X_Flame_08.skin'
		materials = [
			Headstock_X_Flame_08_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_08.dds'
				material = Headstock_X_Flame_08_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_X_Headstk_08
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_08.dds'
				material = Headstock_X_Flame_08_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_X_Headstk_08_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_08.dds'
				material = Headstock_X_Flame_08_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_08.dds'
				material = Headstock_X_Flame_08_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_08.dds'
				material = Headstock_X_Flame_08_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_08.dds'
				material = Headstock_X_Flame_08_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_08.dds'
				material = Headstock_X_Flame_08_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_08.dds'
				material = Headstock_X_Flame_08_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_08.dds'
				material = Headstock_X_Flame_08_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_08.dds'
				material = Headstock_X_Flame_08_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_08.dds'
				material = Headstock_X_Flame_08_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_08.dds'
				material = Headstock_X_Flame_08_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_08.dds'
				material = Headstock_X_Flame_08_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_313
			}
		]
	}
	{
		desc_id = Headstock_X_Tip_10
		frontend_desc = qs("\LTri-Tip")
		price = 750
		mesh = 'models/CAR_Instruments/Guitar/Headstock_X_Tip_10.skin'
		materials = [
			Headstock_X_Tip_10_Hardware
		]
		sections = [
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_10.dds'
				material = Headstock_X_Tip_10_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Finishes
				frontend_desc = qs("Finishes")
				mask = $CAG_X_Headstk_10
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_10.dds'
				material = Headstock_X_Tip_10_Primary
				$car_rocker_guitars_factoredGlobal_0
				desc_id = Details
				frontend_desc = qs("Details")
				mask = $CAG_X_Headstk_10_Details
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_10.dds'
				material = Headstock_X_Tip_10_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_5
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_10.dds'
				material = Headstock_X_Tip_10_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_7
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_10.dds'
				material = Headstock_X_Tip_10_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_8
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_10.dds'
				material = Headstock_X_Tip_10_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_9
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_10.dds'
				material = Headstock_X_Tip_10_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_10
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_10.dds'
				material = Headstock_X_Tip_10_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_11
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_10.dds'
				material = Headstock_X_Tip_10_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_12
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_10.dds'
				material = Headstock_X_Tip_10_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_13
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_10.dds'
				material = Headstock_X_Tip_10_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_14
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_10.dds'
				material = Headstock_X_Tip_10_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_15
				$car_rocker_guitars_factoredGlobal_313
			}
			{
				base_tex = 'tex/models/Car_Instruments/Guitars/gtr_x_headstock_d_10.dds'
				material = Headstock_X_Tip_10_Primary
				$car_rocker_guitars_factoredGlobal_4
				$car_rocker_guitars_factoredGlobal_16
				$car_rocker_guitars_factoredGlobal_313
			}
		]
	}
]
car_rocker_guitars_factoredGlobal_0 = {
	diffuse
	pre_userlayer
}
car_rocker_guitars_factoredGlobal_1 = {
	desc_id = Finishes
	frontend_desc = qs("FINISHES")
	mask = $CAG_Guitar02_Body
}
car_rocker_guitars_factoredGlobal_4 = {
	userlayer
	diffuse
}
car_rocker_guitars_factoredGlobal_5 = {
	desc_id = car_metallica
	frontend_desc = qs("METALLICA")
	mask = $car_metallica
}
car_rocker_guitars_factoredGlobal_6 = {
	initial_values = {
		x_trans = -24
		x_scale = 30
		y_scale = 60
		y_trans = 25
	}
}
car_rocker_guitars_factoredGlobal_7 = {
	desc_id = car_bands
	frontend_desc = qs("BANDS")
	mask = $car_bands
}
car_rocker_guitars_factoredGlobal_8 = {
	desc_id = car_primitives
	frontend_desc = qs("PRIMITIVES")
	mask = $car_basic_primitives_1
}
car_rocker_guitars_factoredGlobal_9 = {
	desc_id = car_outlines_primitives
	frontend_desc = qs("OUTLINES")
	mask = $car_basic_primitives_2
}
car_rocker_guitars_factoredGlobal_10 = {
	desc_id = car_tattoo_decal
	frontend_desc = qs("GRADIENTS")
	mask = $car_gradiant_shapes
}
car_rocker_guitars_factoredGlobal_11 = {
	desc_id = car_icon_decals
	frontend_desc = qs("ICONS")
	mask = $car_icons
}
car_rocker_guitars_factoredGlobal_12 = {
	desc_id = car_graphics
	frontend_desc = qs("GRAPHICS")
	mask = $car_graphics
}
car_rocker_guitars_factoredGlobal_13 = {
	desc_id = car_sponsors
	frontend_desc = qs("SPONSORS")
	mask = $car_sponsors
}
car_rocker_guitars_factoredGlobal_14 = {
	desc_id = `Font A1`
	frontend_desc = qs("\LTEXT 1")
	mask = $car_fontgrid_title_a1
}
car_rocker_guitars_factoredGlobal_15 = {
	desc_id = `Font A6`
	frontend_desc = qs("\LTEXT 2")
	mask = $car_fontgrid_text_a6
}
car_rocker_guitars_factoredGlobal_16 = {
	desc_id = `Font A8`
	frontend_desc = qs("\LTEXT 3")
	mask = $car_fontgrid_text_a8
}
car_rocker_guitars_factoredGlobal_17 = {
	locked
}
car_rocker_guitars_factoredGlobal_20 = {
	initial_values = {
		x_trans = -14
		x_scale = 30
		y_scale = 60
		y_trans = 0
	}
}
car_rocker_guitars_factoredGlobal_23 = {
	initial_values = {
		x_trans = -8
		x_scale = 30
		y_scale = 60
		y_trans = 0
	}
}
car_rocker_guitars_factoredGlobal_26 = {
	initial_values = {
		x_trans = -24
		x_scale = 30
		y_scale = 60
		y_trans = 15
	}
}
car_rocker_guitars_factoredGlobal_29 = {
	initial_values = {
		x_trans = -35
		x_scale = 30
		y_scale = 60
		y_trans = 0
	}
}
car_rocker_guitars_factoredGlobal_33 = {
	desc_id = Finishes
	frontend_desc = qs("FINISHES")
	mask = $CAG_GTR33
}
car_rocker_guitars_factoredGlobal_35 = {
	desc_id = Finishes
	frontend_desc = qs("FINISHES")
	mask = $CAG_Guitar33D_Body
}
car_rocker_guitars_factoredGlobal_36 = {
	exclusive
	locked
}
car_rocker_guitars_factoredGlobal_40 = {
	initial_values = {
		x_trans = -6
		x_scale = 30
		y_scale = 60
		y_trans = 0
	}
}
car_rocker_guitars_factoredGlobal_43 = {
	initial_values = {
		x_trans = -24
		x_scale = 30
		y_scale = 60
		y_trans = 0
	}
}
car_rocker_guitars_factoredGlobal_57 = {
	desc_id = Finishes
	frontend_desc = qs("FINISHES")
	mask = $GTR63c_ESP_EX
}
car_rocker_guitars_factoredGlobal_64 = {
	desc_id = Finishes
	frontend_desc = qs("FINISHES")
}
car_rocker_guitars_factoredGlobal_67 = {
	initial_values = {
		x_trans = -26
		x_scale = 29
		y_scale = 60
		y_trans = 21
	}
}
car_rocker_guitars_factoredGlobal_68 = {
	initial_values = {
		x_trans = -26
		y_trans = 29
		y_scale = 60
		x_scale = 30
	}
}
car_rocker_guitars_factoredGlobal_72 = {
	initial_values = {
		y_trans = 25
		x_scale = 30
		y_scale = 60
		x_trans = -20
	}
}
car_rocker_guitars_factoredGlobal_75 = {
	initial_values = {
		x_trans = -32
		x_scale = 30
		y_scale = 60
		y_trans = 20
	}
}
car_rocker_guitars_factoredGlobal_83 = {
	initial_values = {
		x_trans = -28
		x_scale = 30
		y_scale = 60
		y_trans = 21
	}
}
car_rocker_guitars_factoredGlobal_86 = {
	initial_values = {
		y_trans = 21
		x_scale = 30
		y_scale = 60
		x_trans = -22
	}
}
car_rocker_guitars_factoredGlobal_91 = {
	initial_values = {
		y_trans = 21
		x_scale = 21
		y_scale = 45
		x_trans = -30
	}
}
car_rocker_guitars_factoredGlobal_94 = {
	initial_values = {
		x_trans = -34
		x_scale = 30
		y_scale = 60
		y_trans = 11
	}
}
car_rocker_guitars_factoredGlobal_103 = {
	initial_values = {
		x_trans = -10
		x_scale = 21
		y_scale = 45
		y_trans = 3
	}
}
car_rocker_guitars_factoredGlobal_106 = {
	initial_values = {
		x_trans = -20
		x_scale = 21
		y_scale = 45
		y_trans = 3
	}
}
car_rocker_guitars_factoredGlobal_111 = {
	initial_values = {
		y_trans = 4
		x_scale = 16
		y_scale = 45
		x_trans = -12
	}
}
car_rocker_guitars_factoredGlobal_112 = {
	desc_id = Finishes
	frontend_desc = qs("FINISHES")
	mask = $CAG_X_Guitar_Clear
}
car_rocker_guitars_factoredGlobal_115 = {
	initial_values = {
		x_trans = -17
		y_trans = 22
		x_scale = 31
		y_scale = 55
	}
}
car_rocker_guitars_factoredGlobal_120 = {
	initial_values = {
		y_trans = 9
		x_scale = 16
		y_scale = 35
		x_trans = -30
	}
}
car_rocker_guitars_factoredGlobal_123 = {
	initial_values = {
		x_trans = -13
		y_trans = 1
		x_scale = 16
		y_scale = 30
	}
}
car_rocker_guitars_factoredGlobal_126 = {
	initial_values = {
		y_trans = 29
		x_scale = 16
		y_scale = 30
		x_trans = -14
	}
}
car_rocker_guitars_factoredGlobal_129 = {
	initial_values = {
		x_trans = -12
		x_scale = 16
		y_scale = 30
		y_trans = -1
	}
}
car_rocker_guitars_factoredGlobal_132 = {
	initial_values = {
		x_trans = -28
		y_trans = 25
		x_scale = 26
		y_scale = 40
	}
}
car_rocker_guitars_factoredGlobal_135 = {
	initial_values = {
		y_trans = 2
		x_scale = 15
		y_scale = 30
		flags = 3
		x_trans = -39
	}
}
car_rocker_guitars_factoredGlobal_138 = {
	initial_values = {
		x_trans = -5
		x_scale = 15
		y_scale = 30
		y_trans = 20
	}
}
car_rocker_guitars_factoredGlobal_139 = {
	initial_values = {
		x_trans = -5
		x_scale = 15
		y_scale = 35
		y_trans = 20
	}
}
car_rocker_guitars_factoredGlobal_143 = {
	initial_values = {
		x_trans = -23
		x_scale = 15
		y_scale = 35
		y_trans = 31
	}
}
car_rocker_guitars_factoredGlobal_146 = {
	initial_values = {
		x_trans = -8
		x_scale = 15
		y_scale = 20
		flags = 3
		y_trans = 26
	}
}
car_rocker_guitars_factoredGlobal_216 = {
	desc_id = Finishes
	frontend_desc = qs("Finishes")
	mask = $CAG_GTR16_PickGrd01
}
car_rocker_guitars_factoredGlobal_241 = {
	desc_id = Finishes
	frontend_desc = qs("Inlays")
	mask = $CAG_Neck_22a
}
car_rocker_guitars_factoredGlobal_242 = {
	initial_values = {
		color = grey_5
	}
}
car_rocker_guitars_factoredGlobal_243 = {
	diffuse
}
car_rocker_guitars_factoredGlobal_244 = {
	initial_values = {
		color = grey_2
	}
}
car_rocker_guitars_factoredGlobal_245 = {
	desc_id = Finishes
	frontend_desc = qs("Inlays")
	mask = $CAG_Neck_24
}
car_rocker_guitars_factoredGlobal_247 = {
	desc_id = Finishes
	frontend_desc = qs("Inlays")
	mask = $CAG_Neck_31
}
car_rocker_guitars_factoredGlobal_249 = {
	desc_id = Finishes
	frontend_desc = qs("Inlays")
	mask = $CAG_FBOARD38
}
car_rocker_guitars_factoredGlobal_251 = {
	desc_id = Finishes
	frontend_desc = qs("Inlays")
	mask = $CAG_Neck_01
}
car_rocker_guitars_factoredGlobal_252 = {
	initial_values = {
		color = grey_1
	}
}
car_rocker_guitars_factoredGlobal_253 = {
	hidden
}
car_rocker_guitars_factoredGlobal_254 = {
	desc_id = Finishes
	frontend_desc = qs("Finishes")
	mask = $CAG_Headstk_01
}
car_rocker_guitars_factoredGlobal_255 = {
	desc_id = Details
	frontend_desc = qs("Details")
	mask = $CAG_Headstk_01_Details
}
car_rocker_guitars_factoredGlobal_256 = {
	desc_id = Finishes
	frontend_desc = qs("Finishes")
	mask = $GTR4_Neckhead
}
car_rocker_guitars_factoredGlobal_257 = {
	desc_id = Details
	frontend_desc = qs("Details")
	mask = $GTR4_Neckhead_Details
}
car_rocker_guitars_factoredGlobal_258 = {
	initial_values = {
		x_trans = -10
		x_scale = 26
		y_scale = 26
		y_trans = -25
	}
}
car_rocker_guitars_factoredGlobal_259 = {
	desc_id = Finishes
	frontend_desc = qs("Finishes")
	mask = $GTR9_Neckhead
}
car_rocker_guitars_factoredGlobal_260 = {
	desc_id = Details
	frontend_desc = qs("Details")
	mask = $GTR9_Neckhead_Details
}
car_rocker_guitars_factoredGlobal_261 = {
	desc_id = Finishes
	frontend_desc = qs("Finishes")
	mask = $GTR4_Neckhead_03
}
car_rocker_guitars_factoredGlobal_262 = {
	desc_id = Details
	frontend_desc = qs("Details")
	mask = $GTR4_Neckhead_03_Details
}
car_rocker_guitars_factoredGlobal_263 = {
	desc_id = Finishes
	frontend_desc = qs("Finishes")
	mask = $GTR60_Neckhead
}
car_rocker_guitars_factoredGlobal_264 = {
	desc_id = Details
	frontend_desc = qs("Details")
	mask = $GTR60_Neckhead_Details
}
car_rocker_guitars_factoredGlobal_265 = {
	initial_values = {
		x_trans = -25
		x_scale = 26
		y_scale = 26
		y_trans = -25
	}
}
car_rocker_guitars_factoredGlobal_266 = {
	desc_id = Finishes
	frontend_desc = qs("Finishes")
	mask = $GTR64_Neckhead
}
car_rocker_guitars_factoredGlobal_267 = {
	desc_id = Details
	frontend_desc = qs("Details")
	mask = $GTR64_Neckhead_Details
}
car_rocker_guitars_factoredGlobal_268 = {
	initial_values = {
		x_trans = -25
		x_scale = 26
		y_scale = 26
		y_trans = -20
	}
}
car_rocker_guitars_factoredGlobal_269 = {
	desc_id = Finishes
	frontend_desc = qs("Finishes")
	mask = $GTR4_Neckhead_06
}
car_rocker_guitars_factoredGlobal_270 = {
	desc_id = Details
	frontend_desc = qs("Details")
	mask = $GTR4_Neckhead_06_Details
}
car_rocker_guitars_factoredGlobal_271 = {
	desc_id = Finishes
	frontend_desc = qs("Finishes")
	mask = $GTR4_Neckhead_07
}
car_rocker_guitars_factoredGlobal_272 = {
	desc_id = Details
	frontend_desc = qs("Details")
	mask = $GTR4_Neckhead_07_Details
}
car_rocker_guitars_factoredGlobal_273 = {
	initial_values = {
		x_trans = -25
		x_scale = 26
		y_scale = 26
		y_trans = -30
	}
}
car_rocker_guitars_factoredGlobal_274 = {
	desc_id = Finishes
	frontend_desc = qs("Finishes")
	mask = $GTR30_Neckhead
}
car_rocker_guitars_factoredGlobal_275 = {
	desc_id = Details
	frontend_desc = qs("Details")
	mask = $GTR30_Neckhead_Details
}
car_rocker_guitars_factoredGlobal_276 = {
	initial_values = {
		x_trans = 0
		x_scale = 40
		y_scale = 20
		y_trans = -10
	}
}
car_rocker_guitars_factoredGlobal_277 = {
	desc_id = Finishes
	frontend_desc = qs("Finishes")
	mask = $GTR31_Nhead
}
car_rocker_guitars_factoredGlobal_278 = {
	desc_id = Details
	frontend_desc = qs("Details")
	mask = $GTR31_Nhead_Details
}
car_rocker_guitars_factoredGlobal_279 = {
	desc_id = Finishes
	frontend_desc = qs("Finishes")
	mask = $gtr36_Nekhead
}
car_rocker_guitars_factoredGlobal_280 = {
	desc_id = Details
	frontend_desc = qs("Details")
	mask = $GTR36_Nekhead_Details
}
car_rocker_guitars_factoredGlobal_281 = {
	initial_values = {
		x_trans = -10
		x_scale = 26
		y_scale = 26
		y_trans = -30
	}
}
car_rocker_guitars_factoredGlobal_282 = {
	desc_id = Finishes
	frontend_desc = qs("Finishes")
	mask = $GTR32_Nekhead
}
car_rocker_guitars_factoredGlobal_283 = {
	desc_id = Details
	frontend_desc = qs("Details")
	mask = $GTR32_Nekhead_Details
}
car_rocker_guitars_factoredGlobal_284 = {
	desc_id = Finishes
	frontend_desc = qs("Finishes")
	mask = $GTR33_NHead
}
car_rocker_guitars_factoredGlobal_285 = {
	desc_id = Details
	frontend_desc = qs("Details")
	mask = $GTR33_NHead_Details
}
car_rocker_guitars_factoredGlobal_286 = {
	desc_id = Finishes
	frontend_desc = qs("Finishes")
	mask = $GTR37_Nhead
}
car_rocker_guitars_factoredGlobal_287 = {
	desc_id = Details
	frontend_desc = qs("Details")
	mask = $GTR37_Nhead_Details
}
car_rocker_guitars_factoredGlobal_288 = {
	initial_values = {
		x_trans = -15
		x_scale = 26
		y_scale = 26
		y_trans = -30
	}
}
car_rocker_guitars_factoredGlobal_291 = {
	initial_values = {
		x_trans = 0
		x_scale = 26
		y_scale = 26
		y_trans = -10
	}
}
car_rocker_guitars_factoredGlobal_292 = {
	initial_values = {
		x_trans = -25
		x_scale = 26
		y_scale = 26
		y_trans = 2
	}
}
car_rocker_guitars_factoredGlobal_295 = {
	desc_id = Finishes
	frontend_desc = qs("Finishes")
	mask = $GTR62_Neckhead
}
car_rocker_guitars_factoredGlobal_296 = {
	desc_id = Details
	frontend_desc = qs("Details")
	mask = $GTR62_Neckhead_Details
}
car_rocker_guitars_factoredGlobal_305 = {
	desc_id = Finishes
	frontend_desc = qs("Finishes")
	mask = $GTR63c_Neckhead
}
car_rocker_guitars_factoredGlobal_309 = {
	desc_id = Details
	frontend_desc = qs("Details")
	mask = $GTR33_Neckhead_Details
}
car_rocker_guitars_factoredGlobal_310 = {
	initial_values = {
		x_trans = -25
		y_trans = 6
		x_scale = 21
		y_scale = 55
	}
}
car_rocker_guitars_factoredGlobal_313 = {
	initial_values = {
		x_trans = -25
		x_scale = 26
		y_scale = 55
		y_trans = 2
	}
}
car_rocker_guitars_factoredGlobal_356 = {
	initial_values = {
		x_trans = -38
		x_scale = 26
		y_scale = 55
		y_trans = 40
	}
}
