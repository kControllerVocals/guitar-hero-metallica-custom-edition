z_meadowlands_crowd_models = [
	{
		name = crowd1
		camera = crowd1_cam
		ViewportParams = imposter_rendering_quad0
		HRViewportParams = imposter_rendering_highres_quad0
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\Crowd_Ped_01B.skin'
		id = crowd1_cam_viewport
		bb_mesh_id = Z_meadowlands_Crowd_Billboard_01
		texture = viewport1
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/z_meadowlands/z_meadowlands.tex`
		assetcontext = z_meadowlands
		TriggerScript = z_meadowlands_Crowd_peds
		params = {
			name = crowd1
		}
		no_resolve_colorbuffer = 1
		roty = -90
	}
	{
		name = crowd2
		camera = crowd2_cam
		ViewportParams = imposter_rendering_quad1
		HRViewportParams = imposter_rendering_highres_quad1
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\Crowd_Ped_02B.skin'
		id = crowd2_cam_viewport
		bb_mesh_id = Z_meadowlands_Crowd_Billboard_01
		texture = viewport2
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/z_meadowlands/z_meadowlands.tex`
		assetcontext = z_meadowlands
		TriggerScript = z_meadowlands_Crowd_peds
		params = {
			name = crowd2
		}
		no_resolve_colorbuffer = 1
		roty = 90
	}
	{
		name = crowd3
		camera = crowd3_cam
		ViewportParams = imposter_rendering_quad2
		HRViewportParams = imposter_rendering_highres_quad2
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\Crowd_Ped_03B.skin'
		id = crowd3_cam_viewport
		bb_mesh_id = Z_meadowlands_Crowd_Billboard_02
		texture = viewport3
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/z_meadowlands/z_meadowlands.tex`
		assetcontext = z_meadowlands
		TriggerScript = z_meadowlands_Crowd_peds
		params = {
			name = crowd3
		}
		no_resolve_colorbuffer = 1
		roty = 180
	}
	{
		name = crowd4
		camera = crowd4_cam
		ViewportParams = imposter_rendering_quad3
		HRViewportParams = imposter_rendering_highres_quad3
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\Crowd_Ped_04B.skin'
		id = crowd4_cam_viewport
		bb_mesh_id = Z_meadowlands_Crowd_Billboard_02
		texture = viewport4
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/z_meadowlands/z_meadowlands.tex`
		assetcontext = z_meadowlands
		TriggerScript = z_meadowlands_Crowd_peds
		params = {
			name = crowd4
		}
		no_resolve_colorbuffer = 1
		roty = 180
	}
	{
		name = crowd5
		camera = crowd5_cam
		ViewportParams = imposter_rendering_quad4
		HRViewportParams = imposter_rendering_highres_quad4
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\crowd_pedF_1B.skin'
		id = crowd5_cam_viewport
		bb_mesh_id = Z_meadowlands_Crowd_Billboard_03
		texture = viewport5
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/z_meadowlands/z_meadowlands.tex`
		assetcontext = z_meadowlands
		TriggerScript = z_meadowlands_Crowd_peds
		params = {
			name = crowd5
		}
		no_resolve_colorbuffer = 1
		roty = -90
	}
	{
		name = crowd6
		camera = crowd6_cam
		ViewportParams = imposter_rendering_quad5
		HRViewportParams = imposter_rendering_highres_quad5
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\crowd_pedF_2B.skin'
		id = crowd6_cam_viewport
		bb_mesh_id = Z_meadowlands_Crowd_Billboard_03
		texture = viewport6
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/z_meadowlands/z_meadowlands.tex`
		assetcontext = z_meadowlands
		TriggerScript = z_meadowlands_Crowd_peds
		params = {
			name = crowd6
		}
		no_resolve_colorbuffer = 1
		roty = 90
	}
]
z_Stone_crowd_models = [
	{
		name = crowd1
		camera = crowd1_cam
		ViewportParams = imposter_rendering_quad0
		HRViewportParams = imposter_rendering_highres_quad0
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\Crowd_Ped_01C.skin'
		id = crowd1_cam_viewport
		bb_mesh_id = Z_Stone_Crowd_Billboard_01
		texture = viewport1
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/Z_Stone/Z_Stone.tex`
		assetcontext = z_stone
		TriggerScript = Z_Stone_Crowd_peds
		params = {
			name = crowd1
		}
		no_resolve_colorbuffer = 1
	}
	{
		name = crowd2
		camera = crowd2_cam
		ViewportParams = imposter_rendering_quad1
		HRViewportParams = imposter_rendering_highres_quad1
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\Crowd_Ped_02C.skin'
		id = crowd2_cam_viewport
		bb_mesh_id = Z_Stone_Crowd_Billboard_01
		texture = viewport2
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/Z_Stone/Z_Stone.tex`
		assetcontext = z_stone
		TriggerScript = Z_Stone_Crowd_peds
		params = {
			name = crowd2
		}
		no_resolve_colorbuffer = 1
	}
	{
		name = crowd3
		camera = crowd3_cam
		ViewportParams = imposter_rendering_quad2
		HRViewportParams = imposter_rendering_highres_quad2
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\Crowd_Ped_03C.skin'
		id = crowd3_cam_viewport
		bb_mesh_id = Z_Stone_Crowd_Billboard_01
		texture = viewport3
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/Z_Stone/Z_Stone.tex`
		assetcontext = z_stone
		TriggerScript = Z_Stone_Crowd_peds
		params = {
			name = crowd3
		}
		no_resolve_colorbuffer = 1
	}
	{
		name = crowd4
		camera = crowd4_cam
		ViewportParams = imposter_rendering_quad3
		HRViewportParams = imposter_rendering_highres_quad3
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\Crowd_Ped_04C.skin'
		id = crowd4_cam_viewport
		bb_mesh_id = Z_Stone_Crowd_Billboard_01
		texture = viewport4
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/Z_Stone/Z_Stone.tex`
		assetcontext = z_stone
		TriggerScript = Z_Stone_Crowd_peds
		params = {
			name = crowd4
		}
		no_resolve_colorbuffer = 1
	}
	{
		name = crowd5
		camera = crowd5_cam
		ViewportParams = imposter_rendering_quad4
		HRViewportParams = imposter_rendering_highres_quad4
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\crowd_pedF_1C.skin'
		id = crowd5_cam_viewport
		bb_mesh_id = Z_Stone_Crowd_Billboard_01
		texture = viewport5
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/Z_Stone/Z_Stone.tex`
		assetcontext = z_stone
		TriggerScript = Z_Stone_Crowd_peds
		params = {
			name = crowd5
		}
		no_resolve_colorbuffer = 1
	}
	{
		name = crowd6
		camera = crowd6_cam
		ViewportParams = imposter_rendering_quad5
		HRViewportParams = imposter_rendering_highres_quad5
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\crowd_pedF_2C.skin'
		id = crowd6_cam_viewport
		bb_mesh_id = Z_Stone_Crowd_Billboard_01
		texture = viewport6
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/Z_Stone/Z_Stone.tex`
		assetcontext = z_stone
		TriggerScript = Z_Stone_Crowd_peds
		params = {
			name = crowd6
		}
		no_resolve_colorbuffer = 1
	}
]
z_Tushino_crowd_models = [
	{
		name = crowd1
		camera = crowd1_cam
		ViewportParams = imposter_rendering_quad0
		HRViewportParams = imposter_rendering_highres_quad0
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\Crowd_Ped_01.skin'
		id = crowd1_cam_viewport
		bb_mesh_id = Z_Tushino_Crowd_Billboard_01
		texture = viewport1
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/z_Tushino/z_Tushino.tex`
		assetcontext = z_tushino
		TriggerScript = z_Tushino_Crowd_peds
		params = {
			name = crowd1
		}
		no_resolve_colorbuffer = 1
	}
	{
		name = crowd2
		camera = crowd2_cam
		ViewportParams = imposter_rendering_quad1
		HRViewportParams = imposter_rendering_highres_quad1
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\Crowd_Ped_02.skin'
		id = crowd2_cam_viewport
		bb_mesh_id = Z_Tushino_Crowd_Billboard_01
		texture = viewport2
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/z_Tushino/z_Tushino.tex`
		assetcontext = z_tushino
		TriggerScript = z_Tushino_Crowd_peds
		params = {
			name = crowd2
		}
		no_resolve_colorbuffer = 1
	}
	{
		name = crowd3
		camera = crowd3_cam
		ViewportParams = imposter_rendering_quad2
		HRViewportParams = imposter_rendering_highres_quad2
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\Crowd_Ped_03.skin'
		id = crowd3_cam_viewport
		bb_mesh_id = Z_Tushino_Crowd_Billboard_01
		texture = viewport3
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/z_Tushino/z_Tushino.tex`
		assetcontext = z_tushino
		TriggerScript = z_Tushino_Crowd_peds
		params = {
			name = crowd3
		}
		no_resolve_colorbuffer = 1
	}
	{
		name = crowd4
		camera = crowd4_cam
		ViewportParams = imposter_rendering_quad3
		HRViewportParams = imposter_rendering_highres_quad3
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\Crowd_Ped_04.skin'
		id = crowd4_cam_viewport
		bb_mesh_id = Z_Tushino_Crowd_Billboard_01
		texture = viewport4
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/z_Tushino/z_Tushino.tex`
		assetcontext = z_tushino
		TriggerScript = z_Tushino_Crowd_peds
		params = {
			name = crowd4
		}
		no_resolve_colorbuffer = 1
	}
	{
		name = crowd5
		camera = crowd5_cam
		ViewportParams = imposter_rendering_quad4
		HRViewportParams = imposter_rendering_highres_quad4
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\crowd_pedF_1.skin'
		id = crowd5_cam_viewport
		bb_mesh_id = Z_Tushino_Crowd_Billboard_01
		texture = viewport5
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/z_Tushino/z_Tushino.tex`
		assetcontext = z_tushino
		TriggerScript = z_Tushino_Crowd_peds
		params = {
			name = crowd5
		}
		no_resolve_colorbuffer = 1
	}
	{
		name = crowd6
		camera = crowd6_cam
		ViewportParams = imposter_rendering_quad5
		HRViewportParams = imposter_rendering_highres_quad5
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\crowd_pedF_2.skin'
		id = crowd6_cam_viewport
		bb_mesh_id = Z_Tushino_Crowd_Billboard_01
		texture = viewport6
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/z_Tushino/z_Tushino.tex`
		assetcontext = z_tushino
		TriggerScript = z_Tushino_Crowd_peds
		params = {
			name = crowd6
		}
		no_resolve_colorbuffer = 1
	}
]
z_Justice_crowd_models = [
	{
		name = crowd1
		camera = crowd1_cam
		ViewportParams = imposter_rendering_quad0
		HRViewportParams = imposter_rendering_highres_quad0
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\Crowd_Ped_01.skin'
		id = crowd1_cam_viewport
		bb_mesh_id = Z_Justice_Crowd_Billboard_01
		texture = viewport1
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/z_Justice/z_Justice.tex`
		assetcontext = z_justice
		TriggerScript = z_Justice_Crowd_peds
		params = {
			name = crowd1
		}
		no_resolve_colorbuffer = 1
	}
	{
		name = crowd2
		camera = crowd2_cam
		ViewportParams = imposter_rendering_quad1
		HRViewportParams = imposter_rendering_highres_quad1
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\Crowd_Ped_02.skin'
		id = crowd2_cam_viewport
		bb_mesh_id = Z_Justice_Crowd_Billboard_01
		texture = viewport2
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/z_Justice/z_Justice.tex`
		assetcontext = z_justice
		TriggerScript = z_Justice_Crowd_peds
		params = {
			name = crowd2
		}
		no_resolve_colorbuffer = 1
	}
	{
		name = crowd3
		camera = crowd3_cam
		ViewportParams = imposter_rendering_quad2
		HRViewportParams = imposter_rendering_highres_quad2
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\Crowd_Ped_03.skin'
		id = crowd3_cam_viewport
		bb_mesh_id = Z_Justice_Crowd_Billboard_01
		texture = viewport3
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/z_Justice/z_Justice.tex`
		assetcontext = z_justice
		TriggerScript = z_Justice_Crowd_peds
		params = {
			name = crowd3
		}
		no_resolve_colorbuffer = 1
	}
	{
		name = crowd4
		camera = crowd4_cam
		ViewportParams = imposter_rendering_quad3
		HRViewportParams = imposter_rendering_highres_quad3
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\Crowd_Ped_04.skin'
		id = crowd4_cam_viewport
		bb_mesh_id = Z_Justice_Crowd_Billboard_01
		texture = viewport4
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/z_Justice/z_Justice.tex`
		assetcontext = z_justice
		TriggerScript = z_Justice_Crowd_peds
		params = {
			name = crowd4
		}
		no_resolve_colorbuffer = 1
	}
	{
		name = crowd5
		camera = crowd5_cam
		ViewportParams = imposter_rendering_quad4
		HRViewportParams = imposter_rendering_highres_quad4
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\crowd_pedF_1.skin'
		id = crowd5_cam_viewport
		bb_mesh_id = Z_Justice_Crowd_Billboard_01
		texture = viewport5
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/z_Justice/z_Justice.tex`
		assetcontext = z_justice
		TriggerScript = z_Justice_Crowd_peds
		params = {
			name = crowd5
		}
		no_resolve_colorbuffer = 1
	}
	{
		name = crowd6
		camera = crowd6_cam
		ViewportParams = imposter_rendering_quad5
		HRViewportParams = imposter_rendering_highres_quad5
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\crowd_pedF_2.skin'
		id = crowd6_cam_viewport
		bb_mesh_id = Z_Justice_Crowd_Billboard_01
		texture = viewport6
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/z_Justice/z_Justice.tex`
		assetcontext = z_justice
		TriggerScript = z_Justice_Crowd_peds
		params = {
			name = crowd6
		}
		no_resolve_colorbuffer = 1
	}
]
z_MoP_crowd_models = [
	{
		name = crowd1
		camera = crowd1_cam
		ViewportParams = imposter_rendering_quad0
		HRViewportParams = imposter_rendering_highres_quad0
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\Crowd_Ped_01.skin'
		id = crowd1_cam_viewport
		bb_mesh_id = Z_MoP_Crowd_Billboard_01
		texture = viewport1
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/z_MoP/z_MoP.tex`
		assetcontext = z_MoP
		TriggerScript = z_MoP_Crowd_peds
		params = {
			name = crowd1
		}
		no_resolve_colorbuffer = 1
	}
	{
		name = crowd2
		camera = crowd2_cam
		ViewportParams = imposter_rendering_quad1
		HRViewportParams = imposter_rendering_highres_quad1
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\Crowd_Ped_02.skin'
		id = crowd2_cam_viewport
		bb_mesh_id = Z_MoP_Crowd_Billboard_01
		texture = viewport2
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/z_MoP/z_MoP.tex`
		assetcontext = z_MoP
		TriggerScript = z_MoP_Crowd_peds
		params = {
			name = crowd2
		}
		no_resolve_colorbuffer = 1
	}
	{
		name = crowd3
		camera = crowd3_cam
		ViewportParams = imposter_rendering_quad2
		HRViewportParams = imposter_rendering_highres_quad2
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\Crowd_Ped_03.skin'
		id = crowd3_cam_viewport
		bb_mesh_id = Z_MoP_Crowd_Billboard_01
		texture = viewport3
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/z_MoP/z_MoP.tex`
		assetcontext = z_MoP
		TriggerScript = z_MoP_Crowd_peds
		params = {
			name = crowd3
		}
		no_resolve_colorbuffer = 1
	}
	{
		name = crowd4
		camera = crowd4_cam
		ViewportParams = imposter_rendering_quad3
		HRViewportParams = imposter_rendering_highres_quad3
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\Crowd_Ped_04.skin'
		id = crowd4_cam_viewport
		bb_mesh_id = Z_MoP_Crowd_Billboard_01
		texture = viewport4
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/z_MoP/z_MoP.tex`
		assetcontext = z_MoP
		TriggerScript = z_MoP_Crowd_peds
		params = {
			name = crowd4
		}
		no_resolve_colorbuffer = 1
	}
	{
		name = crowd5
		camera = crowd5_cam
		ViewportParams = imposter_rendering_quad4
		HRViewportParams = imposter_rendering_highres_quad4
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\crowd_pedF_1.skin'
		id = crowd5_cam_viewport
		bb_mesh_id = Z_MoP_Crowd_Billboard_01
		texture = viewport5
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/z_MoP/z_MoP.tex`
		assetcontext = z_MoP
		TriggerScript = z_MoP_Crowd_peds
		params = {
			name = crowd5
		}
		no_resolve_colorbuffer = 1
	}
	{
		name = crowd6
		camera = crowd6_cam
		ViewportParams = imposter_rendering_quad5
		HRViewportParams = imposter_rendering_highres_quad5
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\crowd_pedF_2.skin'
		id = crowd6_cam_viewport
		bb_mesh_id = Z_MoP_Crowd_Billboard_01
		texture = viewport6
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/z_MoP/z_MoP.tex`
		assetcontext = z_MoP
		TriggerScript = z_MoP_Crowd_peds
		params = {
			name = crowd6
		}
		no_resolve_colorbuffer = 1
	}
]
z_Donnington_crowd_models = [
	{
		name = crowd1
		camera = crowd1_cam
		ViewportParams = imposter_rendering_quad0
		HRViewportParams = imposter_rendering_highres_quad0
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\Crowd_Ped_01.skin'
		id = crowd1_cam_viewport
		bb_mesh_id = z_Donnington_Crowd_Billboard_01
		texture = viewport1
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/z_Donnington/z_Donnington.tex`
		assetcontext = z_donnington
		TriggerScript = z_Donnington_Crowd_peds
		params = {
			name = crowd1
		}
		no_resolve_colorbuffer = 1
	}
	{
		name = crowd2
		camera = crowd2_cam
		ViewportParams = imposter_rendering_quad1
		HRViewportParams = imposter_rendering_highres_quad1
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\Crowd_Ped_02.skin'
		id = crowd2_cam_viewport
		bb_mesh_id = z_Donnington_Crowd_Billboard_01
		texture = viewport2
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/z_Donnington/z_Donnington.tex`
		assetcontext = z_donnington
		TriggerScript = z_Donnington_Crowd_peds
		params = {
			name = crowd2
		}
		no_resolve_colorbuffer = 1
	}
	{
		name = crowd3
		camera = crowd3_cam
		ViewportParams = imposter_rendering_quad2
		HRViewportParams = imposter_rendering_highres_quad2
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\Crowd_Ped_03.skin'
		id = crowd3_cam_viewport
		bb_mesh_id = z_Donnington_Crowd_Billboard_01
		texture = viewport3
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/z_Donnington/z_Donnington.tex`
		assetcontext = z_donnington
		TriggerScript = z_Donnington_Crowd_peds
		params = {
			name = crowd3
		}
		no_resolve_colorbuffer = 1
	}
	{
		name = crowd4
		camera = crowd4_cam
		ViewportParams = imposter_rendering_quad3
		HRViewportParams = imposter_rendering_highres_quad3
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\Crowd_Ped_04.skin'
		id = crowd4_cam_viewport
		bb_mesh_id = z_Donnington_Crowd_Billboard_01
		texture = viewport4
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/z_Donnington/z_Donnington.tex`
		assetcontext = z_donnington
		TriggerScript = z_Donnington_Crowd_peds
		params = {
			name = crowd4
		}
		no_resolve_colorbuffer = 1
	}
	{
		name = crowd5
		camera = crowd5_cam
		ViewportParams = imposter_rendering_quad4
		HRViewportParams = imposter_rendering_highres_quad4
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\crowd_pedF_1.skin'
		id = crowd5_cam_viewport
		bb_mesh_id = z_Donnington_Crowd_Billboard_01
		texture = viewport5
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/z_Donnington/z_Donnington.tex`
		assetcontext = z_donnington
		TriggerScript = z_Donnington_Crowd_peds
		params = {
			name = crowd5
		}
		no_resolve_colorbuffer = 1
	}
	{
		name = crowd6
		camera = crowd6_cam
		ViewportParams = imposter_rendering_quad5
		HRViewportParams = imposter_rendering_highres_quad5
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\crowd_pedF_2.skin'
		id = crowd6_cam_viewport
		bb_mesh_id = z_Donnington_Crowd_Billboard_01
		texture = viewport6
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/z_Donnington/z_Donnington.tex`
		assetcontext = z_donnington
		TriggerScript = z_Donnington_Crowd_peds
		params = {
			name = crowd6
		}
		no_resolve_colorbuffer = 1
	}
]
Z_Forum_crowd_models = [
	{
		name = crowd1
		camera = crowd1_cam
		ViewportParams = imposter_rendering_quad0
		HRViewportParams = imposter_rendering_highres_quad0
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\Crowd_Ped_01.skin'
		id = crowd1_cam_viewport
		bb_mesh_id = Z_Forum_Crowd_Billboard_01
		texture = viewport1
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/Z_Forum/Z_Forum.tex`
		assetcontext = z_forum
		TriggerScript = Z_Forum_Crowd_peds
		params = {
			name = crowd1
		}
		no_resolve_colorbuffer = 1
		roty = -90
	}
	{
		name = crowd2
		camera = crowd2_cam
		ViewportParams = imposter_rendering_quad1
		HRViewportParams = imposter_rendering_highres_quad1
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\Crowd_Ped_02.skin'
		id = crowd2_cam_viewport
		bb_mesh_id = Z_Forum_Crowd_Billboard_01
		texture = viewport2
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/Z_Forum/Z_Forum.tex`
		assetcontext = z_forum
		TriggerScript = Z_Forum_Crowd_peds
		params = {
			name = crowd2
		}
		no_resolve_colorbuffer = 1
		roty = 90
	}
	{
		name = crowd3
		camera = crowd3_cam
		ViewportParams = imposter_rendering_quad2
		HRViewportParams = imposter_rendering_highres_quad2
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\Crowd_Ped_03.skin'
		id = crowd3_cam_viewport
		bb_mesh_id = Z_Forum_Crowd_Billboard_02
		texture = viewport3
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/Z_Forum/Z_Forum.tex`
		assetcontext = z_forum
		TriggerScript = Z_Forum_Crowd_peds
		params = {
			name = crowd3
		}
		no_resolve_colorbuffer = 1
		roty = 180
	}
	{
		name = crowd4
		camera = crowd4_cam
		ViewportParams = imposter_rendering_quad3
		HRViewportParams = imposter_rendering_highres_quad3
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\Crowd_Ped_04.skin'
		id = crowd4_cam_viewport
		bb_mesh_id = Z_Forum_Crowd_Billboard_02
		texture = viewport4
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/Z_Forum/Z_Forum.tex`
		assetcontext = z_forum
		TriggerScript = Z_Forum_Crowd_peds
		params = {
			name = crowd4
		}
		no_resolve_colorbuffer = 1
		roty = 180
	}
	{
		name = crowd5
		camera = crowd5_cam
		ViewportParams = imposter_rendering_quad4
		HRViewportParams = imposter_rendering_highres_quad4
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\crowd_pedF_1.skin'
		id = crowd5_cam_viewport
		bb_mesh_id = Z_Forum_Crowd_Billboard_03
		texture = viewport5
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/Z_Forum/Z_Forum.tex`
		assetcontext = z_forum
		TriggerScript = Z_Forum_Crowd_peds
		params = {
			name = crowd5
		}
		no_resolve_colorbuffer = 1
		roty = -90
	}
	{
		name = crowd6
		camera = crowd6_cam
		ViewportParams = imposter_rendering_quad5
		HRViewportParams = imposter_rendering_highres_quad5
		ResourceViewport = crowd_base_viewport
		Model = 'Real_Crowd\\crowd_pedF_2.skin'
		id = crowd6_cam_viewport
		bb_mesh_id = Z_Forum_Crowd_Billboard_03
		texture = viewport6
		textureasset = `tex/models/Real_Crowd/crowd_atlas0.dds`
		texdict = `zones/Z_Forum/Z_Forum.tex`
		assetcontext = z_forum
		TriggerScript = Z_Forum_Crowd_peds
		params = {
			name = crowd6
		}
		no_resolve_colorbuffer = 1
		roty = 90
	}
]
