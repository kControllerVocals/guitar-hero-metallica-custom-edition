CAS_Female_Torso = [
	{
		desc_id = f_torso_tshirt
		frontend_desc = qs("\LT-Shirt")
		random_weight = 0.5
		genre = [
			Rock
			`Heavy Metal`
		]
		chosen_materials = {
			material1 = Black_1guitar
		}
		default_cap = [
			{
				base_tex = `tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds`
				material = M_Torso_TShirt_Primary
				Cas_1
				layers = [
					{
						texture = `tex/models/Characters/Skater_Male/Decals/CAG_Metallica_logo013.img`
						y_trans = 10
						y_scale = 38
						flags = 3
						x_scale = 36
					}
					{
						texture = `tex/models/Characters/Skater_Male/Decals/CAG_Metallica_Pushead008.img`
						x_trans = -52
						x_scale = 40
						flags = 3
						y_scale = 48
					}
				]
			}
		]
		$CAS_Female_TShirt_Def
	}
	{
		desc_id = f_torso_layered
		frontend_desc = qs("\LLayered Shirt")
		mesh = 'models/CAR/Female/F_Torso_Layered.skin'
		genre = [
			Rock
		]
		materials = [
			F_Torso_Layered_Primary
			F_Torso_Layered_Secondary
		]
	}
	{
		desc_id = f_torso_hoodie
		frontend_desc = qs("\LZebra")
		mesh = 'models/CAR/Female/F_Torso_Hoodie.skin'
		genre = [
			Rock
		]
		materials = [
			F_Torso_Hoodie_Primary
			F_Torso_Hoodie_Secondary
		]
		chosen_materials = {
			material2 = red_2
			material1 = navy_1
		}
		acc_skeleton = Skel_F_Torso_Hoodie
		acc_ragdoll = Rag_F_Torso_Hoodie
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
	}
	{
		desc_id = F_Punk_Torso_TankTop
		frontend_desc = qs("\LPunky Tank")
		mesh = 'models/CAR/Female/F_Punk_Torso_TankTop.skin'
		materials = [
			F_Punk_Torso_TankTop_Primary
			F_Punk_Torso_TankTop_Secondary
		]
		acc_skeleton = Skel_F_Rock_Torso_Flower
		acc_ragdoll = Rag_F_Rock_Torso_Flower
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
		]
		genre = [
			Punk
		]
		random_weight = 0.5
	}
	{
		desc_id = f_punk_torso_zipup
		frontend_desc = qs("\LZipup")
		mesh = 'models/CAR/Female/F_Punk_Torso_Zipup.skin'
		materials = [
			F_Punk_Torso_Zipup_Primary
		]
		genre = [
			Punk
		]
		acc_skeleton = Skel_F_Punk_Torso_Zipup
		acc_ragdoll = Rag_F_Punk_Torso_Zipup
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 75
		random_weight = 0.5
	}
	{
		desc_id = f_punk_torso_leather
		frontend_desc = qs("\LRock The Idol")
		mesh = 'models/CAR/Female/F_Punk_Torso_Leather.skin'
		genre = [
			Punk
		]
		acc_skeleton = Skel_F_Punk_Torso_Leather
		acc_ragdoll = Rag_F_Punk_Torso_Leather
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 450
		random_weight = 0.5
	}
	{
		desc_id = f_punk_torso_leather_02
		frontend_desc = qs("\LSo Punk")
		mesh = 'models/CAR/Female/F_Punk_Torso_Leather_02.skin'
		genre = [
			Punk
		]
		acc_skeleton = Skel_F_Punk_Torso_Leather
		acc_ragdoll = Rag_F_Punk_Torso_Leather
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 500
		random_weight = 0.5
	}
	{
		desc_id = f_punk_torso_leather_03
		frontend_desc = qs("\LChaos")
		mesh = 'models/CAR/Female/F_Punk_Torso_Leather_03.skin'
		genre = [
			Punk
		]
		acc_skeleton = Skel_F_Punk_Torso_Leather
		acc_ragdoll = Rag_F_Punk_Torso_Leather
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 650
		random_weight = 0.0
	}
	{
		desc_id = F_Punk_Torso_Judy01
		frontend_desc = qs("\LShocking")
		mesh = 'models/CAR/Female/F_Punk_Torso_Judy01.skin'
		materials = [
			F_Punk_Torso_Judy01_Primary
			F_Punk_Torso_Judy01_Secondary
		]
		genre = [
			Punk
		]
		acc_skeleton = Skel_F_Punk_Torso_JudyNails1
		acc_ragdoll = Rag_F_Punk_Torso_JudyNails1
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		random_weight = 0.0
	}
	{
		desc_id = f_punk_torso_stripe
		frontend_desc = qs("\LFortunate")
		mesh = 'models/CAR/Female/F_Punk_Torso_Stripe.skin'
		materials = [
			F_Punk_Torso_Stripe_Primary
			F_Punk_Torso_Stripe_Secondary
		]
		genre = [
			Punk
		]
		acc_skeleton = Skel_F_Punk_Torso_Stripe
		acc_ragdoll = Rag_F_Punk_Torso_Stripe
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
		]
	}
	{
		desc_id = F_Punk_Torso_Judy02
		frontend_desc = qs("\LSkool Grrl")
		mesh = 'models/CAR/Female/F_Punk_Torso_Judy02.skin'
		materials = [
			F_Punk_Torso_Judy02_Primary
			F_Punk_Torso_Judy02_Secondary
		]
		genre = [
			Punk
		]
	}
	{
		desc_id = f_rock_torso_jjacket
		frontend_desc = qs("\LVenice Beach")
		mesh = 'models/CAR/Female/F_Rock_Torso_JJacket.skin'
		materials = [
			F_Rock_Torso_JJacket_Primary
			F_Rock_Torso_jjacket_Secondary
			F_Rock_Torso_jjacket_Tertiary
		]
		genre = [
			Rock
		]
		acc_skeleton = Skel_F_Rock_Torso_JeanJacket01
		acc_ragdoll = Ragdoll_F_Rock_Torso_JeanJacket01
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
	}
	{
		desc_id = f_rock_torso_raglan
		frontend_desc = qs("\LHome Team")
		mesh = 'models/CAR/Female/F_Rock_Torso_Raglan.skin'
		materials = [
			F_Rock_Torso_Raglan_Primary
			F_Rock_Torso_Raglan_Secondary
		]
		genre = [
			Rock
			`Heavy Metal`
		]
		acc_skeleton = Skel_F_Rock_Torso_Raglan
		acc_ragdoll = Rag_F_Rock_Torso_Raglan
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
		]
	}
	{
		desc_id = f_rock_torso_corset
		frontend_desc = qs("\LVast Purple")
		mesh = 'models/CAR/Female/F_Rock_Torso_Corset.skin'
		materials = [
			F_Rock_Torso_Corset_Primary
		]
		genre = [
			Rock
		]
		random_weight = 0.1
	}
	{
		desc_id = f_rock_torso_ljacket
		frontend_desc = qs("\LBad Mutha")
		mesh = 'models/CAR/Female/F_Rock_Torso_LJacket.skin'
		materials = [
			F_Rock_Torso_LJacket_Primary
			F_Rock_Torso_LJacket_Secondary
		]
		genre = [
			Rock
		]
		acc_skeleton = Skel_F_Rock_Torso_LJacket
		acc_ragdoll = Rag_F_Rock_Torso_LJacket
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 250
	}
	{
		desc_id = f_rock_torso_tie
		frontend_desc = qs("\LAll Business")
		mesh = 'models/CAR/Female/F_Rock_Torso_Tie.skin'
		materials = [
			F_Rock_Torso_Tie_Primary
			F_Rock_Torso_Tie_Secondary
		]
		genre = [
			Rock
		]
		acc_skeleton = Skel_F_Rock_Torso_Tie
		acc_ragdoll = Rag_F_Rock_Torso_Tie
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 80
	}
	{
		desc_id = f_rock_torso_bass
		frontend_desc = qs("\LBaby Chemise")
		mesh = 'models/CAR/Female/F_Rock_Torso_Bass.skin'
		genre = [
			Rock
		]
		materials = [
			F_Rock_Torso_Bass_Primary
		]
	}
	{
		desc_id = F_Rock_Torso_Bass_Contest
		frontend_desc = qs("\LRock_Bassist Shirt Contest")
		mesh = 'models/CAR/Female/F_Rock_Torso_Bass_Contest.skin'
		genre = [
			Rock
		]
		materials = [
			F_Rock_Torso_Bass_Contest_Primary
		]
		hidden
		price = 5
	}
	{
		desc_id = f_rock_torso_flower
		frontend_desc = qs("\LFlowershirt")
		mesh = 'models/CAR/Female/F_Rock_Torso_Flower.skin'
		materials = [
			F_Rock_Torso_Flower_Primary
		]
		acc_skeleton = Skel_F_Rock_Torso_Flower
		acc_ragdoll = Rag_F_Rock_Torso_Flower
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
		]
		genre = [
			Rock
		]
	}
	{
		desc_id = F_Glam_Torso_LaceBraTop
		frontend_desc = qs("\LHardly Looking")
		mesh = 'models/CAR/Female/F_Glam_Torso_LaceBraTop.skin'
		genre = [
			`Glam Rock`
		]
		materials = [
			F_Glam_Torso_LaceBraTop_Primary
		]
		price = 150
	}
	{
		desc_id = f_glam_torso_lightning
		frontend_desc = qs("\LTeenage Outlaw")
		mesh = 'models/CAR/Female/F_Glam_Torso_Lightning.skin'
		genre = [
			`Glam Rock`
		]
		materials = [
			F_Glam_Torso_Lightning_Primary
			F_Glam_Torso_Lightning_Secondary
		]
		chosen_materials = {
			material1 = yellow_1
			material2 = red_3
		}
		acc_skeleton = Skel_F_Glam_Torso_Lightning
		acc_ragdoll = Rag_F_Glam_Torso_Lightning
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
		]
		price = 210
	}
	{
		desc_id = f_goth_torso_corsetop
		frontend_desc = qs("\LBell Curves")
		mesh = 'models/CAR/Female/F_Goth_Torso_Corsetop.skin'
		materials = [
			F_Goth_Torso_Corsetop_Primary
			F_Goth_Torso_Corsetop_Secondary
		]
		chosen_materials = {
			material1 = navy_3
			material3 = navy_3
			material2 = grey_1
		}
		genre = [
			Goth
		]
		acc_skeleton = Skel_F_Goth_Torso_Corsetop
		acc_ragdoll = Rag_F_Goth_Torso_Corsetop
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
		]
		price = 175
	}
	{
		desc_id = f_goth_torso_frillybodice
		frontend_desc = qs("\LGet Your Frills")
		mesh = 'models/CAR/Female/F_Goth_Torso_FrillyBodice.skin'
		materials = [
			F_Goth_Torso_FrillyBodice_shirt
			F_Goth_Torso_FrillyBodice_lining
			F_Goth_Torso_FrillyBodice_corset
			F_Goth_Torso_FrillyBodice_ribbon
		]
		genre = [
			Goth
		]
		acc_skeleton = Skel_F_Goth_Torso_FrillyBodice
		acc_ragdoll = Rag_F_Goth_Torso_FrillyBodice
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 175
	}
	{
		desc_id = f_goth_torso_halfstrap
		frontend_desc = qs("\LBuckle Up")
		mesh = 'models/CAR/Female/F_Goth_Torso_HalfStrap.skin'
		acc_skeleton = Skel_F_Goth_Torso_HalfStrap
		acc_ragdoll = Rag_F_Goth_Torso_HalfStrap
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
		]
		material_groups = [
			{
				materials = [
					F_Goth_Torso_HalfStrap_Primary
				]
			}
			{
				materials = [
					F_Goth_Torso_HalfStrap_Secondary
				]
			}
			{
				materials = [
					F_Goth_Torso_HalfStrap_Glove
				]
			}
		]
		chosen_materials = {
			material1 = navy_3
			material3 = navy_3
			material2 = grey_1
		}
		genre = [
			Goth
		]
		price = 1750
	}
	{
		desc_id = f_goth_torso_cyberstrap
		frontend_desc = qs("\LStrapped In")
		mesh = 'models/CAR/Female/F_Goth_Torso_CyberStrap.skin'
		materials = [
			F_Goth_Torso_CyberStrap_Primary
			F_Goth_Torso_CyberStrap_Secondary
		]
		chosen_materials = {
			material2 = navy_3
		}
		acc_skeleton = Skel_F_Goth_Torso_CyberStrap
		acc_ragdoll = Rag_F_Goth_Torso_CyberStrap
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		genre = [
			Goth
		]
		price = 550
		random_weight_cpu = 0.1
	}
	{
		desc_id = f_goth_torso_dress
		frontend_desc = qs("\LBlack Pearls")
		mesh = 'models/CAR/Female/F_Goth_Torso_Dress.skin'
		genre = [
			Goth
		]
		acc_skeleton = Skel_F_Goth_Torso_Dress
		acc_ragdoll = Rag_F_Goth_Torso_Dress
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
	}
	{
		desc_id = f_fun_torso_angelw
		frontend_desc = qs("\LAngel Wings")
		mesh = 'models/CAR/Female/F_Fun_Torso_AngelW.skin'
		materials = [
			F_Fun_Torso_AngelW_Wing
			F_Fun_Torso_AngelW_Bra
		]
		chosen_materials = {
			material1 = grey_1
			material2 = red_1
		}
		genre = [
			Goth
		]
		acc_skeleton = Skel_F_Fun_Torso_AngelW
		acc_ragdoll = Rag_F_Fun_Torso_AngelW
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 7500
		polaroid = p_f_goth_torso_angelw
		random_weight = 0.0
	}
	{
		desc_id = F_Fun_Torso_Bra
		frontend_desc = qs("\LBikini Top")
		mesh = 'models/CAR/Female/F_Fun_Torso_Bra.skin'
		materials = [
			F_Fun_Torso_AngelW_Bra
		]
		genre = [
			Goth
			Rock
			`Heavy Metal`
		]
		random_weight = 0.0
	}
	{
		desc_id = f_metl_torso_bullets01
		frontend_desc = qs("\LBandolero Chic")
		mesh = 'models/CAR/Female/F_Metl_Torso_Bullets01.skin'
		genre = [
			`Heavy Metal`
		]
		materials = [
			F_Metl_Torso_bullets01_Primary
			F_Metl_Torso_Bullets01_Secondary
		]
		acc_skeleton = Skel_F_Metl_Torso_Bullets01
		acc_ragdoll = Rag_F_Metl_Torso_Bullets01
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 250
	}
	{
		desc_id = F_Metl_Torso_Vest01
		frontend_desc = qs("\LLeather Rider")
		mesh = 'models/CAR/Female/F_Metl_Torso_Vest01.skin'
		genre = [
			`Heavy Metal`
		]
		materials = [
			F_Metl_Torso_vest01_Primary
			F_Metl_Torso_vest01_Secondary
		]
		acc_skeleton = Skel_F_Metl_Torso_Vest01
		acc_ragdoll = Rag_F_Metl_Torso_Vest01
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
	}
	{
		desc_id = f_metl_torso_bramesh
		frontend_desc = qs("\LTrouble Star")
		mesh = 'models/CAR/Female/F_Metl_Torso_BraMesh.skin'
		genre = [
			`Heavy Metal`
			`Black Metal`
		]
		price = 120
	}
	{
		desc_id = F_Metl_Torso_JeanLthr
		frontend_desc = qs("\LStonewashed")
		mesh = 'models/CAR/Female/F_Metl_Torso_JeanLthr.skin'
		materials = [
			F_Metl_Torso_JeanLthr_Primary
			F_Metl_Torso_JeanLthr_Secondary
			F_Metl_Torso_JeanLthr_Shirt
		]
		genre = [
			`Heavy Metal`
		]
		acc_skeleton = Skel_F_Metl_Torso_JeanLthr
		acc_ragdoll = Rag_F_Metl_Torso_JeanLthr
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 150
	}
	{
		desc_id = f_metl_torso_shirtbra
		frontend_desc = qs("\LArmy Brat")
		mesh = 'models/CAR/Female/F_Metl_Torso_ShirtBra.skin'
		materials = [
			F_Metl_Torso_ShirtBra_Primary
			F_Metl_Torso_ShirtBra_Secondary
		]
		genre = [
			`Heavy Metal`
			`Black Metal`
		]
	}
	{
		desc_id = F_Metl_Torso_ShldrHoody
		frontend_desc = qs("\LOff the Shoulder")
		mesh = 'models/CAR/Female/F_Metl_Torso_ShldrHoody.skin'
		materials = [
			F_Metl_Torso_ShldrHoody_Primary
			F_Metl_Torso_ShldrHoody_Secondary
		]
		chosen_materials = {
			material1 = purple_blue_1
			material2 = carblack_1
		}
		genre = [
			`Heavy Metal`
		]
	}
	{
		desc_id = F_MTL_Torso_Dvest
		frontend_desc = qs("\LHunk O' Denim")
		mesh = 'models/CAR/Female/F_MTL_Torso_Dvest.skin'
		materials = [
			F_Mtl_Torso_Dvest_Primary
			F_Mtl_Torso_Dvest_Secondary
		]
		genre = [
			`Heavy Metal`
			`Black Metal`
		]
		acc_skeleton = Skel_F_MTL_Torso_Dvest
		acc_ragdoll = Rag_F_MTL_Torso_Dvest
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		locked
		polaroid = car_hunkodenim_torso
	}
	{
		desc_id = F_MTL_Torso_Acid
		frontend_desc = qs("\LPieced Together")
		mesh = 'models/CAR/Female/F_MTL_Torso_Acid.skin'
		materials = [
			F_Mtl_Torso_Acid_Primary
			F_Mtl_Torso_Acid_Sleeves
			F_Mtl_Torso_Acid_Straps
			F_Mtl_Torso_Acid_Secondary
		]
		genre = [
			`Heavy Metal`
			`Black Metal`
		]
	}
	{
		desc_id = F_Metl_Torso_LaceTank
		frontend_desc = qs("\LLace Over Tank")
		mesh = 'models/CAR/Female/F_Metl_Torso_LaceTank.skin'
		materials = [
			F_Metl_Torso_LaceTank_Primary
			F_Metl_Torso_LaceTank_Secondary
		]
		genre = [
			`Heavy Metal`
		]
		price = 200
		locked
		polaroid = car_bat_torso
	}
	{
		desc_id = F_Clsc_Torso_Striped
		frontend_desc = qs("\LOversized Belt")
		mesh = 'models/CAR/Female/F_Clsc_Torso_Striped.skin'
		materials = [
			F_Clsc_Torso_Striped_Primary
			F_Clsc_Torso_Striped_Secondary
		]
		chosen_materials = {
			material2 = grey_1
			material1 = navy_2
		}
		genre = [
			`Classic Rock`
		]
	}
	{
		desc_id = f_clsc_torso_jersey
		frontend_desc = qs("\LJersey Shirt")
		mesh = 'models/CAR/Female/F_Clsc_Torso_Jersey.skin'
		materials = [
			F_Clsc_Torso_Jersey_Primary
			F_Clsc_Torso_Jersey_Secondary
		]
		chosen_materials = {
			material1 = red_orange_1
			material2 = blue_1
		}
		genre = [
			`Classic Rock`
		]
	}
	{
		desc_id = f_clsc_torso_flwr
		frontend_desc = qs("\LMidnight Child")
		mesh = 'models/CAR/Female/F_Clsc_Torso_Flwr.skin'
		genre = [
			`Classic Rock`
		]
		acc_skeleton = Skel_F_Clsc_Torso_Flwr
		acc_ragdoll = Rag_F_Clsc_Torso_Flwr
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		materials = [
			F_Clsc_Torso_Flwr_Primary
			F_Clsc_Torso_Flwr_Secondary
			F_Clsc_Torso_Flwr_Third
			F_Clsc_Torso_Flwr_Rose
		]
		price = 140
	}
	{
		desc_id = f_clsc_torso_dress
		frontend_desc = qs("\LArachno")
		mesh = 'models/CAR/Female/F_Clsc_Torso_Dress.skin'
		genre = [
			`Classic Rock`
		]
		materials = [
			F_Clsc_Torso_Dress_Primary
		]
		price = 90
	}
	{
		desc_id = f_pop_torso_longsleeves
		frontend_desc = qs("\LInked Sleeves")
		materials = [
			F_Pop_Torso_Longsleeves_Primary
		]
		mesh = 'models/CAR/Female/F_Pop_Torso_Longsleeves.skin'
		genre = [
			Pop
		]
	}
	{
		desc_id = f_pop_torso_buttontop
		frontend_desc = qs("\LAhoy!")
		mesh = 'models/CAR/Female/F_Pop_Torso_ButtonTop.skin'
		materials = [
			F_Pop_ButtonTop_Primary
			F_Pop_ButtonTop_Secondary
		]
		chosen_materials = {
			material2 = grey_1
			material1 = navy_2
		}
		genre = [
			Pop
		]
		acc_skeleton = Skel_F_Pop_Torso_ButtonTop
		acc_ragdoll = Rag_F_Pop_Torso_ButtonTop
		acc_bones = [
			Bone_ACC_Torso_01
		]
		price = 195
		random_weight = 1.5
	}
	{
		desc_id = F_Pop_Torso_HayleyShirt
		frontend_desc = qs("\LSleeveless Sensation")
		mesh = 'models/CAR/Female/F_Pop_Torso_HayleyShirt.skin'
		materials = [
			F_Pop_Torso_HayleyShirt_Primary
		]
		genre = [
			Pop
		]
		random_weight = 0.0
		random_weight_cpu = 0.0
	}
	{
		desc_id = f_bmtl_torso_corset01
		frontend_desc = qs("\LDomination")
		mesh = 'models/CAR/Female/F_bmtl_Torso_Corset01.skin'
		genre = [
			`Black Metal`
		]
		acc_skeleton = Skel_F_bmtl_Torso_Corset01
		acc_ragdoll = Rag_F_bmtl_Torso_Corset01
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
		price = 450
	}
	{
		desc_id = f_bmtl_torso_spikeshirt
		frontend_desc = qs("\LDark Brigandine")
		mesh = 'models/CAR/Female/F_Bmtl_Torso_Spikeshirt.skin'
		materials = [
			F_Bmtl_Torso_Spikeshirt_Primary
			F_Bmtl_Torso_Spikeshirt_Secondary
		]
		genre = [
			`Black Metal`
		]
	}
	{
		desc_id = f_bmtl_torso_fur
		frontend_desc = qs("\LFur Crazy")
		mesh = 'models/CAR/Female/F_Bmtl_Torso_Fur.skin'
		genre = [
			`Black Metal`
		]
		acc_skeleton = Skel_F_Bmtl_Torso_Fur
		acc_ragdoll = Rag_F_Bmtl_Torso_Fur
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
		]
		price = 2000
	}
	{
		desc_id = f_bmtl_torso_spikearmor
		frontend_desc = qs("\LGrid Iron")
		mesh = 'models/CAR/Female/F_Bmtl_Torso_SpikeArmor.skin'
		genre = [
			`Black Metal`
		]
		price = 650
	}
	{
		desc_id = f_bmtl_torso_bikini
		frontend_desc = qs("\LPuncture")
		mesh = 'models/CAR/Female/F_Bmtl_Torso_Bikini.skin'
		materials = [
			F_Bmtl_Torso_Bikini_Primary
		]
		genre = [
			`Black Metal`
		]
		acc_skeleton = Skel_F_Bmtl_Torso_Bikini
		acc_ragdoll = Rag_F_Bmtl_Torso_Bikini
		acc_bones = [
			Bone_ACC_Torso_01
		]
		price = 275
	}
	{
		desc_id = F_Bmtl_Torso_Bat
		frontend_desc = qs("\LBat")
		mesh = 'models/CAR/Female/F_Bmtl_Torso_Bat.skin'
		materials = [
			F_Bmtl_Torso_Bat_Primary
			F_Bmtl_Torso_Bat_Secondary
		]
		genre = [
			`Black Metal`
		]
		acc_skeleton = Skel_F_Bmtl_Torso_Bat
		acc_ragdoll = Rag_F_Bmtl_Torso_Bat
		acc_bones = [
			Bone_ACC_Torso_01
			Bone_ACC_Torso_02
			Bone_ACC_Torso_03
			Bone_ACC_Torso_04
		]
	}
	{
		desc_id = f_torso_tshirt01
		frontend_desc = qs("\LAngry")
		random_weight = 0.5
		genre = [
			Rock
			`Heavy Metal`
		]
		no_logo_edit
		chosen_materials = {
			material1 = Black_1guitar
		}
		default_cap = [
			{
				base_tex = `tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds`
				material = M_Torso_TShirt_Primary
				Cas_1
				layers = [
					{
						texture = `tex/models/Characters/Skater_Male/Decals/CAG_Metallica_Pushead004.img`
						y_trans = 0
						y_scale = 50
						flags = 3
						x_scale = 50
					}
					{
						texture = `tex/models/Characters/Skater_Male/Decals/CAG_Metallica_Pushead003.img`
						x_trans = -52
						x_scale = 40
						flags = 3
						y_scale = 48
					}
				]
			}
		]
		$CAS_Female_TShirt_Def
	}
	{
		desc_id = f_torso_tshirt03
		frontend_desc = qs("\LAngry ST")
		random_weight = 0.0
		genre = [
			Rock
			`Heavy Metal`
		]
		no_logo_edit
		chosen_materials = {
			material1 = Black_1guitar
		}
		default_cap = [
			{
				base_tex = `tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds`
				material = M_Torso_TShirt_Primary
				Cas_1
				layers = [
					{
						texture = `tex/models/Characters/Skater_Male/Decals/CAG_Metallica_Pushead007.img`
						y_trans = 0
						y_scale = 35
						flags = 3
						x_scale = 35
					}
					{
						texture = `tex/models/Characters/Skater_Male/Decals/CAG_Metallica_Pushead006.img`
						x_trans = -52
						x_scale = 40
						flags = 3
						y_scale = 40
					}
				]
			}
		]
		$CAS_Female_TShirt_Def
	}
	{
		desc_id = f_torso_tshirt05
		frontend_desc = qs("\LDamaged Justice")
		random_weight = 0.0
		price = 25
		genre = [
			Rock
			`Heavy Metal`
		]
		no_logo_edit
		chosen_materials = {
			material1 = Black_1guitar
		}
		default_cap = [
			{
				base_tex = `tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds`
				material = M_Torso_TShirt_Primary
				Cas_1
				layers = [
					{
						texture = `tex/models/Characters/Skater_Male/Decals/CAG_Metallica_Pushead012.img`
						y_trans = 0
						y_scale = 50
						flags = 3
						x_scale = 45
					}
				]
			}
		]
		$CAS_Female_TShirt_Def
	}
	{
		desc_id = f_torso_tshirt07
		frontend_desc = qs("\LKing Nothing")
		random_weight = 0.5
		price = 25
		genre = [
			Rock
			`Heavy Metal`
		]
		no_logo_edit
		chosen_materials = {
			material1 = Black_1guitar
		}
		default_cap = [
			{
				base_tex = `tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds`
				material = M_Torso_TShirt_Primary
				Cas_1
				layers = [
					{
						texture = `tex/models/Characters/Skater_Male/Decals/CAG_Metallica_Pushead011.img`
						y_trans = 0
						y_scale = 40
						flags = 3
						x_scale = 40
					}
				]
			}
		]
		$CAS_Female_TShirt_Def
	}
	{
		desc_id = f_torso_tshirt08
		frontend_desc = qs("\LMetal Rod")
		random_weight = 0.5
		price = 50
		genre = [
			Rock
			`Heavy Metal`
		]
		no_logo_edit
		chosen_materials = {
			material1 = Black_1guitar
		}
		default_cap = [
			{
				base_tex = `tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds`
				material = M_Torso_TShirt_Primary
				Cas_1
				layers = [
					{
						texture = `tex/models/Characters/Skater_Male/Decals/CAG_Metallica_Pushead010.img`
						y_trans = 0
						y_scale = 50
						flags = 3
						x_scale = 45
					}
				]
			}
		]
		$CAS_Female_TShirt_Def
	}
	{
		desc_id = f_torso_tshirt09
		frontend_desc = qs("\LPus Quantes")
		random_weight = 0.5
		genre = [
			Rock
			`Heavy Metal`
		]
		no_logo_edit
		chosen_materials = {
			material1 = Black_1guitar
		}
		default_cap = [
			{
				base_tex = `tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds`
				material = M_Torso_TShirt_Primary
				Cas_1
				layers = [
					{
						texture = `tex/models/Characters/Skater_Male/Decals/CAG_Metallica_Pushead001.img`
						y_trans = 0
						y_scale = 40
						flags = 3
						x_scale = 40
					}
					{
						texture = `tex/models/Characters/Skater_Male/Decals/CAG_Metallica_Pushead002.img`
						x_trans = -52
						x_scale = 50
						flags = 3
						y_scale = 50
					}
				]
			}
		]
		$CAS_Female_TShirt_Def
	}
	{
		desc_id = f_torso_tshirt10
		frontend_desc = qs("\LSanitarium 2")
		random_weight = 0.0
		price = 25
		genre = [
			Rock
			`Heavy Metal`
		]
		no_logo_edit
		chosen_materials = {
			material1 = Black_1guitar
		}
		default_cap = [
			{
				base_tex = `tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds`
				material = M_Torso_TShirt_Primary
				Cas_1
				layers = [
					{
						texture = `tex/models/Characters/Skater_Male/Decals/CAG_Metallica_Pushead013.img`
						y_trans = 0
						y_scale = 50
						flags = 3
						x_scale = 45
					}
				]
			}
		]
		$CAS_Female_TShirt_Def
	}
	{
		desc_id = f_torso_tshirt12
		frontend_desc = qs("\LSince 81")
		random_weight = 0.0
		price = 75
		genre = [
			Rock
			`Heavy Metal`
		]
		no_logo_edit
		chosen_materials = {
			material1 = Black_1guitar
		}
		default_cap = [
			{
				base_tex = `tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds`
				material = M_Torso_TShirt_Primary
				Cas_1
				layers = [
					{
						texture = `tex/models/Characters/Skater_Male/Decals/CAG_Metallica_Pushead015.img`
						y_trans = 0
						y_scale = 40
						flags = 3
						x_scale = 40
					}
				]
			}
		]
		$CAS_Female_TShirt_Def
	}
	{
		desc_id = f_torso_tshirt13
		frontend_desc = qs("\LThe Struggle Within")
		price = 25
		random_weight = 0.0
		genre = [
			Rock
			`Heavy Metal`
		]
		no_logo_edit
		chosen_materials = {
			material1 = Black_1guitar
		}
		default_cap = [
			{
				base_tex = `tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds`
				material = M_Torso_TShirt_Primary
				Cas_1
				layers = [
					{
						texture = `tex/models/Characters/Skater_Male/Decals/CAG_Metallica_Pushead016.img`
						y_trans = 0
						y_scale = 50
						flags = 3
						x_scale = 45
					}
				]
			}
		]
		$CAS_Female_TShirt_Def
	}
	{
		desc_id = f_torso_tshirt19
		frontend_desc = qs("\LNinja Star")
		random_weight = 0.0
		price = 25
		genre = [
			Rock
			`Heavy Metal`
		]
		no_logo_edit
		chosen_materials = {
			material1 = Black_1guitar
		}
		default_cap = [
			{
				base_tex = `tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds`
				material = M_Torso_TShirt_Primary
				Cas_1
				layers = [
					{
						texture = `tex/models/Characters/Skater_Male/Decals/CAG_Metallica_logo010.img`
						y_trans = 10
						y_scale = 35
						flags = 3
						x_scale = 30
					}
					{
						texture = `tex/models/Characters/Skater_Male/Decals/CAG_Metallica_logo015.img`
						a = 55
						x_trans = -100
						y_trans = 10
						x_scale = 21
						flags = 3
						y_scale = 30
					}
				]
			}
		]
		$CAS_Female_TShirt_Def
	}
	{
		desc_id = f_torso_tshirt23
		frontend_desc = qs("\LScary Wings")
		random_weight = 0.0
		price = 25
		genre = [
			Rock
			`Heavy Metal`
		]
		no_logo_edit
		chosen_materials = {
			material1 = Black_1guitar
		}
		default_cap = [
			{
				base_tex = `tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds`
				material = M_Torso_TShirt_Primary
				Cas_1
				layers = [
					{
						texture = `tex/models/Characters/Skater_Male/Decals/CAG_Metallica_Graphic012.img`
						y_trans = 10
						y_scale = 35
						flags = 3
						x_scale = 30
					}
				]
			}
		]
		$CAS_Female_TShirt_Def
	}
	{
		desc_id = f_torso_tshirt04
		frontend_desc = qs("\LArgh Matie")
		random_weight = 0.0
		price = 25
		genre = [
			Rock
			`Heavy Metal`
		]
		no_logo_edit
		chosen_materials = {
			material1 = Black_1guitar
		}
		default_cap = [
			{
				base_tex = `tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds`
				material = M_Torso_TShirt_Primary
				Cas_1
				layers = [
					{
						texture = `tex/models/Characters/Skater_Male/Decals/CAG_Metallica_Pushead008.img`
						y_trans = 0
						y_scale = 50
						flags = 3
						x_scale = 45
					}
				]
			}
		]
		$CAS_Female_TShirt_Def
	}
	{
		desc_id = f_torso_tshirt24
		frontend_desc = qs("\LFlaming Skull")
		random_weight = 0.0
		price = 25
		genre = [
			Rock
			`Heavy Metal`
		]
		no_logo_edit
		chosen_materials = {
			material1 = Black_1guitar
		}
		default_cap = [
			{
				base_tex = `tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds`
				material = M_Torso_TShirt_Primary
				Cas_1
				layers = [
					{
						texture = `tex/models/Characters/Skater_Male/Decals/CAG_Metallica_Pushead017.img`
						y_trans = 10
						y_scale = 35
						flags = 3
						x_scale = 30
					}
				]
			}
		]
		$CAS_Female_TShirt_Def
	}
	{
		desc_id = f_torso_tshirt25
		frontend_desc = qs("\LDeath Magnetic")
		random_weight = 0.0
		price = 40
		genre = [
			Rock
			`Heavy Metal`
		]
		no_logo_edit
		chosen_materials = {
			material1 = Black_1guitar
		}
		default_cap = [
			{
				base_tex = `tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds`
				material = M_Torso_TShirt_Primary
				Cas_1
				layers = [
					{
						texture = `tex/models/Characters/Skater_Male/Decals/CAG_Metallica_logo017.img`
						y_trans = 0
						y_scale = 40
						flags = 3
						x_scale = 30
					}
				]
			}
		]
		$CAS_Female_TShirt_Def
	}
	{
		desc_id = f_torso_tshirt11
		frontend_desc = qs("\LJump in the Fire")
		random_weight = 0.0
		price = 100
		genre = [
			Rock
			`Heavy Metal`
		]
		no_logo_edit
		chosen_materials = {
			material1 = Black_1guitar
		}
		default_cap = [
			{
				base_tex = `tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds`
				material = M_Torso_TShirt_Primary
				Cas_1
				layers = [
					{
						texture = `tex/models/Characters/Skater_Male/Decals/CAG_Metallica_logo005.img`
						y_trans = 0
						y_scale = 35
						flags = 3
						x_scale = 35
					}
				]
			}
		]
		$CAS_Female_TShirt_Def
	}
	{
		desc_id = f_torso_tshirt06
		frontend_desc = qs("\LBlack Snake")
		random_weight = 0.0
		price = 25
		genre = [
			Rock
			`Heavy Metal`
		]
		no_logo_edit
		chosen_materials = {
			material1 = Black_1guitar
		}
		default_cap = [
			{
				base_tex = `tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds`
				material = M_Torso_TShirt_Primary
				Cas_1
				layers = [
					{
						texture = `tex/models/Characters/Skater_Male/Decals/CAG_Metallica_Pushead009.img`
						y_trans = 0
						y_scale = 50
						flags = 3
						x_scale = 45
					}
				]
			}
		]
		$CAS_Female_TShirt_Def
	}
	{
		desc_id = F_Torso_TShirt27
		frontend_desc = qs("\L...And Justice For All")
		random_weight = 0.0
		price = 25
		genre = [
			Rock
			`Heavy Metal`
		]
		no_logo_edit
		chosen_materials = {
			material1 = Black_1guitar
		}
		default_cap = [
			{
				base_tex = `tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds`
				material = M_Torso_TShirt_Primary
				Cas_1
				layers = [
					{
						texture = `tex/models/Characters/Skater_Male/Decals/CAG_Metallica_Pushead018.img`
						y_trans = 0
						y_scale = 45
						flags = 3
						x_scale = 40
					}
				]
			}
		]
		$CAS_Female_TShirt_Def
	}
	{
		desc_id = F_Torso_TShirt28
		frontend_desc = qs("\LKill 'em All")
		random_weight = 0.0
		price = 25
		genre = [
			Rock
			`Heavy Metal`
		]
		no_logo_edit
		chosen_materials = {
			material1 = Black_1guitar
		}
		default_cap = [
			{
				base_tex = `tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds`
				material = M_Torso_TShirt_Primary
				Cas_1
				layers = [
					{
						texture = `tex/models/Characters/Skater_Male/Decals/CAG_Metallica_Pushead020.img`
						y_trans = 0
						y_scale = 45
						flags = 3
						x_scale = 40
					}
				]
			}
		]
		$CAS_Female_TShirt_Def
	}
	{
		desc_id = F_Torso_TShirt29
		frontend_desc = qs("\LMaster of Puppets")
		random_weight = 0.0
		price = 25
		genre = [
			Rock
			`Heavy Metal`
		]
		no_logo_edit
		chosen_materials = {
			material1 = Black_1guitar
		}
		default_cap = [
			{
				base_tex = `tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds`
				material = M_Torso_TShirt_Primary
				Cas_1
				layers = [
					{
						texture = `tex/models/Characters/Skater_Male/Decals/CAG_Metallica_Pushead021.img`
						y_trans = 0
						y_scale = 45
						flags = 3
						x_scale = 40
					}
				]
			}
		]
		$CAS_Female_TShirt_Def
	}
	{
		desc_id = F_Torso_TShirt26
		frontend_desc = qs("\LRide The Lightning")
		random_weight = 0.0
		price = 25
		genre = [
			Rock
			`Heavy Metal`
		]
		no_logo_edit
		chosen_materials = {
			material1 = Black_1guitar
		}
		default_cap = [
			{
				base_tex = `tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds`
				material = M_Torso_TShirt_Primary
				Cas_1
				layers = [
					{
						texture = `tex/models/Characters/Skater_Male/Decals/CAG_Metallica_Pushead022.img`
						y_trans = 0
						y_scale = 50
						flags = 3
						x_scale = 40
					}
					{
						texture = `tex/models/Characters/Skater_Male/Decals/CAG_Metallica_Pushead023.img`
						x_trans = -52
						x_scale = 40
						flags = 3
						y_scale = 40
					}
				]
			}
		]
		$CAS_Female_TShirt_Def
	}
	{
		desc_id = f_torso_tshirt20
		frontend_desc = qs("\LMetclub 08")
		random_weight = 0.0
		price = 100
		genre = [
			Rock
			`Heavy Metal`
		]
		no_logo_edit
		chosen_materials = {
			material1 = Black_1guitar
		}
		default_cap = [
			{
				base_tex = `tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds`
				material = M_Torso_TShirt_Primary
				Cas_1
				layers = [
					{
						texture = `tex/models/Characters/Skater_Male/Decals/CAG_Metallica_logo001.img`
						y_trans = 0
						y_scale = 45
						flags = 3
						x_scale = 35
					}
				]
			}
		]
		$CAS_Female_TShirt_Def
	}
	{
		desc_id = f_torso_tshirt02
		frontend_desc = qs("\LClub 'em all 2003")
		random_weight = 0.0
		price = 100
		genre = [
			Rock
			`Heavy Metal`
		]
		no_logo_edit
		chosen_materials = {
			material1 = Black_1guitar
		}
		default_cap = [
			{
				base_tex = `tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds`
				material = M_Torso_TShirt_Primary
				Cas_1
				layers = [
					{
						texture = `tex/models/Characters/Skater_Male/Decals/CAG_Metallica_Pushead005.img`
						y_trans = 0
						y_scale = 40
						flags = 3
						x_scale = 40
					}
				]
			}
		]
		$CAS_Female_TShirt_Def
	}
	{
		desc_id = f_torso_tshirt18
		frontend_desc = qs("\LYoung Metal Attack")
		random_weight = 0.0
		price = 150
		genre = [
			Rock
			`Heavy Metal`
		]
		no_logo_edit
		chosen_materials = {
			material1 = Black_1guitar
		}
		default_cap = [
			{
				base_tex = `tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds`
				material = M_Torso_TShirt_Primary
				Cas_1
				layers = [
					{
						texture = `tex/models/Characters/Skater_Male/Decals/CAG_Metallica_logo007.img`
						y_trans = 10
						y_scale = 35
						flags = 3
						x_scale = 30
					}
				]
			}
		]
		$CAS_Female_TShirt_Def
	}
	{
		desc_id = f_torso_tshirt21
		frontend_desc = qs("\LLogo 01")
		random_weight = 0.0
		genre = [
			Rock
			`Heavy Metal`
		]
		no_logo_edit
		chosen_materials = {
			material1 = Black_1guitar
		}
		default_cap = [
			{
				base_tex = `tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds`
				material = M_Torso_TShirt_Primary
				Cas_1
				layers = [
					{
						texture = `tex/models/Characters/Skater_Male/Decals/CAG_Metallica_logo012.img`
						y_trans = 10
						y_scale = 35
						flags = 3
						x_scale = 30
					}
				]
			}
		]
		$CAS_Female_TShirt_Def
	}
	{
		desc_id = f_torso_tshirt22
		frontend_desc = qs("\LLogo 02")
		random_weight = 0.5
		genre = [
			Rock
			`Heavy Metal`
		]
		no_logo_edit
		chosen_materials = {
			material1 = Black_1guitar
		}
		default_cap = [
			{
				base_tex = `tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds`
				material = M_Torso_TShirt_Primary
				Cas_1
				layers = [
					{
						texture = `tex/models/Characters/Skater_Male/Decals/CAG_Metallica_logo013.img`
						y_trans = 10
						y_scale = 35
						flags = 3
						x_scale = 30
						color = red_3
					}
				]
			}
		]
		$CAS_Female_TShirt_Def
	}
]
CAS_Female_TShirt_Def = {
	mesh = 'models/CAR/Female/F_Torso_TShirt.skin'
	materials = [
		M_Torso_TShirt_Primary
	]
	sections = [
		{
			desc_id = car_metallica
			frontend_desc = qs("METALLICA")
			base_tex = 'tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds'
			material = M_Torso_TShirt_Primary
			mask = $car_metallica
			userlayer
			omit_base_tex
			wrap_u
			Cas_1
			initial_values = {
				x_scale = 21
				y_scale = 30
			}
		}
		{
			desc_id = car_bands
			frontend_desc = qs("BANDS")
			base_tex = 'tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds'
			material = M_Torso_TShirt_Primary
			mask = $car_bands
			userlayer
			omit_base_tex
			wrap_u
			Cas_1
			initial_values = {
				x_scale = 21
				y_scale = 30
			}
		}
		{
			desc_id = car_primitives
			frontend_desc = qs("PRIMITIVES")
			base_tex = 'tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds'
			material = M_Torso_TShirt_Primary
			mask = $car_basic_primitives_1
			userlayer
			omit_base_tex
			wrap_u
			Cas_1
			initial_values = {
				x_scale = 21
				y_scale = 30
			}
		}
		{
			desc_id = car_outlines_primitives
			frontend_desc = qs("OUTLINES")
			base_tex = 'tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds'
			material = M_Torso_TShirt_Primary
			mask = $car_basic_primitives_2
			userlayer
			omit_base_tex
			wrap_u
			Cas_1
			initial_values = {
				x_scale = 21
				y_scale = 30
			}
		}
		{
			desc_id = car_tattoo_decal
			frontend_desc = qs("GRADIENTS")
			base_tex = 'tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds'
			material = M_Torso_TShirt_Primary
			mask = $car_gradiant_shapes
			userlayer
			omit_base_tex
			wrap_u
			Cas_1
			initial_values = {
				x_scale = 21
				y_scale = 30
			}
		}
		{
			desc_id = car_icon_decals
			frontend_desc = qs("ICONS")
			base_tex = 'tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds'
			material = M_Torso_TShirt_Primary
			mask = $car_icons
			userlayer
			omit_base_tex
			wrap_u
			Cas_1
			initial_values = {
				x_scale = 21
				y_scale = 30
			}
		}
		{
			desc_id = car_graphics
			frontend_desc = qs("GRAPHICS")
			base_tex = 'tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds'
			material = M_Torso_TShirt_Primary
			mask = $car_graphics
			userlayer
			omit_base_tex
			wrap_u
			Cas_1
			initial_values = {
				x_scale = 21
				y_scale = 30
			}
		}
		{
			desc_id = car_sponsors
			frontend_desc = qs("SPONSORS")
			base_tex = 'tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds'
			material = M_Torso_TShirt_Primary
			mask = $car_sponsors
			userlayer
			omit_base_tex
			wrap_u
			Cas_1
			initial_values = {
				x_scale = 21
				y_scale = 30
			}
		}
		{
			desc_id = `Font A1`
			frontend_desc = qs("\LTEXT 1")
			base_tex = 'tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds'
			material = M_Torso_TShirt_Primary
			mask = $car_fontgrid_title_a1
			Cas_1
			omit_base_tex
			wrap_u
			userlayer
			initial_values = {
				x_scale = 80
				y_scale = 80
			}
		}
		{
			desc_id = `Font A6`
			frontend_desc = qs("\LTEXT 2")
			base_tex = 'tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds'
			material = M_Torso_TShirt_Primary
			mask = $car_fontgrid_text_a6
			Cas_1
			omit_base_tex
			wrap_u
			userlayer
			initial_values = {
				x_scale = 80
				y_scale = 80
			}
		}
		{
			desc_id = `Font A8`
			frontend_desc = qs("\LTEXT 3")
			base_tex = 'tex/models/Characters/CAR/Male/m_torso_tshirt_o_dnc.dds'
			material = M_Torso_TShirt_Primary
			mask = $car_fontgrid_text_a8
			Cas_1
			omit_base_tex
			wrap_u
			userlayer
			initial_values = {
				x_scale = 80
				y_scale = 80
			}
		}
	]
}
