jowBlue = 717488127
jowGreen = 771697407
jowOrange = -6149377
jowRed = -15061505
jowYellow = -3267073

script JOW_Stars 
	printf \{qs("\L*******************************************************************")}
	printf <...>
	printf \{qs("\L*******************************************************************")}
endscript

script SafeGetUniqueCompositeObjectID \{preferredID = safeFXID01}
	if NOT GotParam \{ObjID}
		GetUniqueCompositeObjectID preferredID = <preferredID>
		return uniqueID = <uniqueID>
	endif
	i = 0
	FormatText TextName = index '%i' i = <i>
	ExtendCRC <preferredID> <index> out = preferredID
	begin
	MangleChecksums a = <preferredID> b = <ObjID>
	if NOT ObjectExists id = <mangled_ID>
		return uniqueID = <preferredID>
	else
		i = (<i> + 1)
		FormatText TextName = index '%i' i = <i>
		ExtendCRC <preferredID> <index> out = preferredID
	endif
	repeat
endscript

script SetLightIntensityOverTime \{i = 1.0
		time = 2.0
		stepTime = 0.05}
	targetI = <i>
	GetLightIntensity name = <name>
	numSteps = (<time> / <stepTime>)
	CastToInteger \{numSteps}
	stepSize = ((<targetI> - <i>) / <numSteps>)
	begin
	i = (<i> + <stepSize>)
	SetLightIntensity name = <name> intensity = <i>
	Wait <stepTime> seconds
	repeat (<numSteps> -1)
	SetLightIntensity name = <name> intensity = <targetI>
endscript

script anim_key 
	Obj_MoveToPos (<mov>) time = <time>
	Obj_Rotate absolute = <rot> time = <time>
	Obj_WaitMove
endscript

script ChangePassColor \{parameter = m_psPass0MaterialColor
		time = 1.0
		stepTime = 0.05}
	numSteps = (<time> / <stepTime>)
	CastToInteger \{numSteps}
	stepR = ((<endcolor> [0] - <startcolor> [0]) / <numSteps>)
	stepG = ((<endcolor> [1] - <startcolor> [1]) / <numSteps>)
	stepB = ((<endcolor> [2] - <startcolor> [2]) / <numSteps>)
	stepA = ((<endcolor> [3] - <startcolor> [3]) / <numSteps>)
	begin
	SetArrayElement ArrayName = startcolor index = 0 newvalue = (<startcolor> [0] + <stepR>)
	SetArrayElement ArrayName = startcolor index = 1 newvalue = (<startcolor> [1] + <stepG>)
	SetArrayElement ArrayName = startcolor index = 2 newvalue = (<startcolor> [2] + <stepB>)
	SetArrayElement ArrayName = startcolor index = 3 newvalue = (<startcolor> [3] + <stepA>)
	UpdateMaterialProperty {
		object = <ObjID>
		material = <material>
		parameter = <parameter>
		value = <startcolor>
	}
	Wait <stepTime> seconds
	repeat (<numSteps> -1)
	UpdateMaterialProperty {
		object = <ObjID>
		material = <material>
		parameter = <parameter>
		value = <endcolor>
	}
endscript

script Light_UpdatePosition \{offset = (0.0, 0.0, 0.0)}
	Obj_GetID
	begin
	if NOT IsCreated <attachObjID>
		Die
	endif
	<attachObjID> :Obj_GetPosition
	MoveLight name = <ObjID> pos = (<pos> + <offset>)
	Wait \{1
		frame}
	repeat
endscript

script HandofGod_ElectricCenter_Glow 
	DestroyScreenElement \{id = HOG_ElectricCenter_Glow}
	Wait \{1
		frame}
	CreateScreenElement \{type = SpriteElement
		parent = root_window
		id = HOG_ElectricCenter_Glow
		texture = PH_RadialGlow_01
		alpha = 1
		scale = (2.0, 2.0)
		dims = (800.0, 800.0)
		just = [
			center
			center
		]
		pos = (640.0, 260.0)
		blend = Add
		z_priority = 4
		rgba = [
			140
			200
			255
			255
		]}
endscript

script HandofGod_ElectricCenter_Glow_02 
	DestroyScreenElement \{id = HOG_ElectricCenter_Glow_02}
	Wait \{1
		frame}
	CreateScreenElement \{type = SpriteElement
		parent = root_window
		id = HOG_ElectricCenter_Glow_02
		texture = PH_RadialGlow_01
		alpha = 1
		scale = (2.0, 2.0)
		dims = (800.0, 800.0)
		just = [
			center
			center
		]
		pos = (640.0, 260.0)
		blend = Add
		z_priority = 4
		rgba = [
			140
			200
			255
			255
		]}
	HandofGod_ElectricCenter_Glow_Anim_02
endscript

script HandofGod_ElectricCenter_Glow_03 
	DestroyScreenElement \{id = HOG_ElectricCenter_Glow_03}
	Wait \{1
		frame}
	CreateScreenElement \{type = SpriteElement
		parent = root_window
		id = HOG_ElectricCenter_Glow_03
		texture = PH_RadialGlow_01
		alpha = 1
		scale = (2.0, 2.0)
		dims = (800.0, 800.0)
		just = [
			center
			center
		]
		pos = (640.0, 260.0)
		blend = Add
		z_priority = 4
		rgba = [
			140
			200
			255
			255
		]}
	HandofGod_ElectricCenter_Glow_Anim_03
endscript

script HandofGod_ElectricCenter_Flare 
	DestroyScreenElement \{id = HOG_ElectricCenter_Flare}
	Wait \{1
		frame}
	CreateScreenElement \{type = SpriteElement
		parent = root_window
		id = HOG_ElectricCenter_Flare
		texture = JOW_Flare02
		alpha = 1
		scale = (1.0, 1.0)
		dims = (800.0, 800.0)
		just = [
			center
			center
		]
		pos = (640.0, 260.0)
		blend = Add
		rot_angle = 45
		z_priority = 3
		rgba = [
			120
			200
			255
			255
		]}
	Wait \{2.2
		second}
	DestroyScreenElement \{id = HOG_ElectricCenter_Flare}
endscript

script HandofGod_ElectricCenter_Flare_02 
	DestroyScreenElement \{id = HOG_ElectricCenter_Flare_02}
	Wait \{1
		frame}
	CreateScreenElement \{type = SpriteElement
		parent = root_window
		id = HOG_ElectricCenter_Flare_02
		texture = JOW_ButtonFlare01
		alpha = 1
		scale = (1.0, 1.0)
		dims = (20.0, 20.0)
		just = [
			center
			center
		]
		pos = (640.0, 260.0)
		blend = Add
		z_priority = 3
		rgba = [
			220
			240
			255
			255
		]}
	HandofGod_ElectricCenter_Flare_02_Anim
endscript

script HandofGod_ElectricCenter 
	DestroyScreenElement \{id = HOG_ElectricCenter}
	Wait \{1
		frame}
	CreateScreenElement \{type = SpriteElement
		parent = root_window
		id = HOG_ElectricCenter
		texture = PH_Electricity_01
		alpha = 1
		scale = (2.0, 2.0)
		dims = (300.0, 300.0)
		just = [
			center
			center
		]
		pos = (640.0, 260.0)
		blend = Add
		z_priority = 2
		rgba = [
			146
			200
			255
			255
		]}
	Wait \{1
		frame}
	spawnscriptnow \{HandofGod_ElectricCenter_Anim_Scale}
endscript

script HandofGod_ElectricCenter_02 
	DestroyScreenElement \{id = HOG_ElectricCenter_02}
	Wait \{1
		frame}
	CreateScreenElement \{type = SpriteElement
		parent = root_window
		id = HOG_ElectricCenter_02
		texture = PH_Electricity_01
		alpha = 1
		scale = (2.0, 2.0)
		dims = (300.0, 300.0)
		just = [
			center
			center
		]
		pos = (640.0, 260.0)
		rot_angle = 45
		blend = Add
		z_priority = 2
		rgba = [
			146
			200
			255
			255
		]}
	Wait \{1
		frame}
	HandofGod_ElectricCenter_Anim_Scale_02
endscript

script HandofGod_ElectricCenter_Glow_Anim 
	HandofGod_ElectricCenter_Glow
	begin
	HOG_ElectricCenter_Glow :SE_SetProps scale = (2.2, 2.2) alpha = 0.4 time = 0.05 motion = Random (@ ease_in @ ease_out )
	HOG_ElectricCenter_Glow :SE_WaitProps
	HOG_ElectricCenter_Glow :SE_SetProps scale = (2.0, 2.0) alpha = 0.6 time = 0.1 motion = Random (@ ease_in @ ease_out )
	HOG_ElectricCenter_Glow :SE_WaitProps
	repeat 12
	DestroyScreenElement \{id = HOG_ElectricCenter_Glow}
endscript

script HandofGod_ElectricCenter_Glow_Anim_02 
	begin
	HOG_ElectricCenter_Glow_02 :SE_SetProps \{scale = (0.5, 0.5)
		alpha = 1}
	HOG_ElectricCenter_Glow_02 :SE_SetProps \{scale = (3.0, 3.0)
		alpha = 0
		time = 0.2}
	HOG_ElectricCenter_Glow_02 :SE_WaitProps
	repeat 7
	DestroyScreenElement \{id = HOG_ElectricCenter_Glow_02}
endscript

script HandofGod_ElectricCenter_Glow_Anim_03 
	HOG_ElectricCenter_Glow_03 :SE_SetProps \{scale = (5.0, 5.0)
		alpha = 0.4}
	HOG_ElectricCenter_Glow_03 :SE_SetProps \{scale = (1.0, 1.0)
		alpha = 0
		time = 1}
	HOG_ElectricCenter_Glow_03 :SE_WaitProps
	DestroyScreenElement \{id = HOG_ElectricCenter_Glow_02}
endscript

script HandofGod_ElectricCenter_Anim_Scale 
	<rot> = 0
	begin
	<rot> = (<rot> + 45)
	HOG_ElectricCenter :SE_SetProps rot_angle = <rot> alpha = 0
	HOG_ElectricCenter :SE_SetProps \{scale = (1.0, 1.0)
		alpha = 0.3
		time = 0.1}
	HOG_ElectricCenter :SE_WaitProps
	HOG_ElectricCenter :SE_SetProps \{scale = (1.3, 1.3)
		alpha = 1
		time = 0.1}
	HOG_ElectricCenter :SE_WaitProps
	repeat 9
	DestroyScreenElement \{id = HOG_ElectricCenter}
endscript

script HandofGod_ElectricCenter_Anim_Scale_02 
	<rot> = 0
	begin
	<rot> = (<rot> + 45)
	HOG_ElectricCenter_02 :SE_SetProps rot_angle = <rot>
	HOG_ElectricCenter_02 :SE_SetProps \{scale = (1.0, 1.0)
		alpha = 1}
	HOG_ElectricCenter_02 :SE_WaitProps
	HOG_ElectricCenter_02 :SE_SetProps \{scale = (2.0, 2.0)
		alpha = 0
		time = 0.2}
	HOG_ElectricCenter_02 :SE_WaitProps
	repeat 10
	DestroyScreenElement \{id = HOG_ElectricCenter_02}
endscript

script HandofGod_ElectricCenter_Flare_02_Anim 
	HOG_ElectricCenter_Flare_02 :SE_SetProps \{scale = (200.0, 200.0)
		rot_angle = -360
		alpha = 0.5
		time = 0.1}
	HOG_ElectricCenter_Flare_02 :SE_WaitProps
	DestroyScreenElement \{id = HOG_ElectricCenter_Flare_02}
endscript

script HandofGod_ElectricCenter_Combo 
	spawnscriptnow \{HandofGod_ElectricCenter_Glow_Anim}
	spawnscriptnow \{HandofGod_ElectricCenter}
	spawnscriptnow \{HandofGod_ElectricCenter_02}
	spawnscriptnow \{HandofGod_ElectricCenter_Flare}
	spawnscriptnow \{HandofGod_Smoke_01}
	spawnscriptnow \{HandofGod_ElectricCenter_Sparks_01}
endscript

script HandofGod_FX_01 
	spawnscriptnow \{HandofGod_ElectricCenter_Glow_Anim}
	spawnscriptnow \{HandofGod_ElectricCenter}
	spawnscriptnow \{HandofGod_ElectricCenter_02}
	spawnscriptnow \{HandofGod_ElectricCenter_Flare}
	spawnscriptnow \{HandofGod_Smoke_01}
	spawnscriptnow \{HandofGod_ElectricCenter_Sparks_01}
	spawnscriptnow \{HandofGod_Lightning_Combo}
	Wait \{2.2
		second}
	HandofGod_ElectricCenter_Flare_02
endscript

script HandofGod_FX_02 
	spawnscriptnow \{HandofGod_ElectricCenter_Glow_02}
	spawnscriptnow \{HandofGod_ElectricCenter_Sparks_02}
	Wait \{0.2
		second}
	HandofGod_Smoke_02
	HandofGod_ElectricCenter_Glow_03
endscript

script HandofGod_Lightning_God 
	DestroyScreenElement \{id = HOG_Lightning_God}
	Wait \{1
		frame}
	CreateScreenElement \{type = SpriteElement
		parent = root_window
		id = HOG_Lightning_God
		alpha = 1
		scale = (0.8, 0.8)
		just = [
			center
			center
		]
		pos = (800.0, 170.0)
		rot_angle = 60
		material = sys_Big_Bolt01_sys_Big_Bolt01
		z_priority = 1}
	Wait \{2.2
		second}
	DestroyScreenElement \{id = HOG_Lightning_God}
endscript

script HandofGod_Lighting_Devil 
	DestroyScreenElement \{id = HOG_Lighting_Devil}
	Wait \{1
		frame}
	CreateScreenElement \{type = SpriteElement
		parent = root_window
		id = HOG_Lighting_Devil
		alpha = 1
		scale = (1.1, 1.1)
		just = [
			center
			center
		]
		pos = (410.0, 435.0)
		rot_angle = 232
		material = sys_Big_Bolt01_Red_sys_Big_Bolt01_Red
		z_priority = 1}
	Wait \{2.2
		second}
	DestroyScreenElement \{id = HOG_Lighting_Devil}
endscript

script HandofGod_Lightning_Combo 
	spawnscriptnow \{HandofGod_Lightning_God}
	spawnscriptnow \{HandofGod_Lighting_Devil}
endscript

script HandofGod_FX_Kill 
	DestroyScreenElement \{id = HOG_ElectricCenter_Glow}
	DestroyScreenElement \{id = HOG_ElectricCenter_Flare}
	DestroyScreenElement \{id = HOG_ElectricCenter}
	DestroyScreenElement \{id = HOG_Lightning_God}
	DestroyScreenElement \{id = HOG_Lighting_Devil}
endscript

script HandofGod_ElectricCenter_Sparks_01 
	Destroy2DParticleSystem \{id = ElectricCenter_Sparks_01}
	Wait \{1
		frame}
	Create2DParticleSystem \{id = ElectricCenter_Sparks_01
		pos = (640.0, 260.0)
		z_priority = 2
		material = sys_Particle_Spark01_sys_Particle_Spark01
		parent = root_window
		start_color = [
			100
			200
			255
			255
		]
		end_color = [
			100
			200
			255
			0
		]
		start_scale = (1.2, 1.2)
		end_scale = (0.6, 0.5)
		start_angle_spread = 360.0
		min_rotation = -500.0
		max_rotation = 500.0
		emit_start_radius = 0.0
		emit_radius = 1.0
		emit_rate = 0.03
		emit_dir = 0.0
		emit_spread = 355.0
		velocity = 10
		friction = (0.0, 20.0)
		time = 0.5}
	Wait \{2.2
		second}
	Destroy2DParticleSystem \{id = ElectricCenter_Sparks_01}
endscript

script HandofGod_ElectricCenter_Sparks_02 
	Destroy2DParticleSystem \{id = ElectricCenter_Sparks_02}
	Wait \{1
		frame}
	Create2DParticleSystem \{id = ElectricCenter_Sparks_02
		pos = (640.0, 260.0)
		z_priority = 2
		material = sys_Particle_Spark01_sys_Particle_Spark01
		parent = root_window
		start_color = [
			100
			200
			255
			255
		]
		end_color = [
			100
			200
			255
			0
		]
		start_scale = (1.0, 1.0)
		end_scale = (0.6, 0.5)
		start_angle_spread = 360.0
		min_rotation = -500.0
		max_rotation = 500.0
		emit_start_radius = 0.0
		emit_radius = 1.0
		emit_rate = 0.02
		emit_dir = 0.0
		emit_spread = 355.0
		velocity = 20
		friction = (0.0, 20.0)
		time = 0.5}
	Wait \{1.5
		second}
	Destroy2DParticleSystem \{id = ElectricCenter_Sparks_02}
endscript

script HandofGod_Smoke_01 
	Destroy2DParticleSystem \{id = HOG_Smoke_01}
	Create2DParticleSystem \{id = HOG_Smoke_01
		pos = (640.0, 260.0)
		z_priority = 20.0
		material = Mat_HOG_Smoke
		parent = root_window
		start_color = [
			140
			200
			255
			175
		]
		end_color = [
			140
			200
			255
			0
		]
		start_scale = (1.0, 1.0)
		end_scale = (2.0, 2.0)
		start_angle_spread = 360.0
		min_rotation = -500.0
		max_rotation = 500.0
		emit_start_radius = 0.0
		emit_radius = 1.0
		emit_rate = 0.5
		emit_dir = 0.0
		emit_spread = 355.0
		velocity = 4
		friction = (0.0, 0.0)
		time = 0.5}
	Wait \{2
		second}
	Destroy2DParticleSystem \{id = HOG_Smoke_01}
endscript

script HandofGod_Smoke_02 
	Destroy2DParticleSystem \{id = HOG_Smoke_02}
	Create2DParticleSystem \{id = HOG_Smoke_02
		pos = (640.0, 260.0)
		z_priority = 20.0
		material = Mat_HOG_Smoke
		parent = root_window
		start_color = [
			140
			200
			255
			40
		]
		end_color = [
			140
			200
			255
			0
		]
		start_scale = (2.0, 2.0)
		end_scale = (6.0, 6.0)
		start_angle_spread = 360.0
		min_rotation = -1000.0
		max_rotation = 900.0
		emit_start_radius = 2.0
		emit_radius = 3.0
		emit_rate = 0.09
		emit_dir = 0.0
		emit_spread = 355.0
		velocity = 10
		friction = (0.0, 0.0)
		time = 1}
	Wait \{1.3499999
		second}
	Destroy2DParticleSystem \{id = HOG_Smoke_02
		kill_when_empty}
endscript

script Spit_Vocalist_Large 
	if CompositeObjectExists \{vocalist}
		GetUniqueCompositeObjectID \{preferredID = JamesSpit_01}
		CreateParticleSystem name = <uniqueID> ObjID = vocalist bone = Bone_Tongue params_Script = $GP_FX_Spit_01 groupID = zoneparticles
	endif
endscript

script Spit_Vocalist_Small 
	if CompositeObjectExists \{vocalist}
		GetUniqueCompositeObjectID \{preferredID = JamesSpit_01}
		CreateParticleSystem name = <uniqueID> ObjID = vocalist bone = Bone_Tongue params_Script = $GP_FX_Spit_Small_01 groupID = zoneparticles
	endif
endscript

script MouthFog_Vocalist 
	if CompositeObjectExists \{vocalist}
		GetUniqueCompositeObjectID \{preferredID = JamesMouthFog_01}
		CreateParticleSystem name = <uniqueID> ObjID = vocalist bone = Bone_Tongue params_Script = $GP_FX_MouthFog_01 groupID = zoneparticles
	endif
endscript

script MouthFog_Guitarist 
	if CompositeObjectExists \{Guitarist}
		GetUniqueCompositeObjectID \{preferredID = JamesMouthFog_01}
		CreateParticleSystem name = <uniqueID> ObjID = Guitarist bone = Bone_Tongue params_Script = $GP_FX_MouthFog_01 groupID = zoneparticles
	endif
endscript

script MouthFog_Bassist 
	if CompositeObjectExists \{bassist}
		GetUniqueCompositeObjectID \{preferredID = JamesMouthFog_01}
		CreateParticleSystem name = <uniqueID> ObjID = bassist bone = Bone_Tongue params_Script = $GP_FX_MouthFog_01 groupID = zoneparticles
	endif
endscript

script MouthFog_Drummer 
	if CompositeObjectExists \{Drummer}
		GetUniqueCompositeObjectID \{preferredID = JamesMouthFog_01}
		CreateParticleSystem name = <uniqueID> ObjID = Drummer bone = Bone_Tongue params_Script = $GP_FX_MouthFog_01 groupID = zoneparticles
	endif
endscript

script CameraBlur_FastZoom_InandOut 
	if NOT BG_fx_get_start_params \{viewport = bg_viewport
			effectName = Depth_of_Field__simplified_}
		return
	endif
	BG_fx_set_blur \{appendStrength = 1
		time = 0.1}
	Wait \{0.2
		seconds}
	BG_fx_set_blur \{appendStrength = 0
		time = 0.3}
	Wait \{0.2
		seconds}
	BG_fx_set_blur \{appendStrength = 0.5
		time = 0.1}
	Wait \{0.1
		second}
	BG_fx_set_blur effectParams = <startValue> time = 0.4
endscript

script CameraBlur_SlowZoom_InandOut 
	if NOT BG_fx_get_start_params \{viewport = bg_viewport
			effectName = Depth_of_Field__simplified_}
		return
	endif
	BG_fx_set_blur \{appendStrength = 1
		time = 0.5}
	Wait \{0.4
		seconds}
	BG_fx_set_blur \{appendStrength = 0
		time = 0.4}
	Wait \{0.5
		seconds}
	BG_fx_set_blur \{appendStrength = 1
		time = 0.3}
	Wait \{0.3
		second}
	BG_fx_set_blur effectParams = <startValue> time = 0.4
endscript

script CameraBlur_FocusIn 
	if NOT BG_fx_get_start_params \{viewport = bg_viewport
			effectName = Depth_of_Field__simplified_}
		return
	endif
	BG_fx_set_blur \{appendStrength = 1
		time = 0}
	Wait \{0.1
		second}
	BG_fx_set_blur effectParams = <startValue> time = 0.5
endscript

script CameraBlur_FocusOut 
	if NOT BG_fx_get_start_params \{viewport = bg_viewport
			effectName = Depth_of_Field__simplified_}
		return
	endif
	BG_fx_set_blur \{appendStrength = 1
		time = 0.6}
endscript

script CameraFX_WhiteFlash 
	if NOT BG_fx_get_start_params \{viewport = bg_viewport
			effectName = Brightness___Saturation}
		return
	endif
	BG_fx_set_brightness_WhiteFlash \{appendBrightness = 100
		time = 0}
	Wait \{0.06
		second}
	if ViewportExists \{id = bg_viewport}
		BG_fx_set_brightness_WhiteFlash effectParams = <startValue> time = 0.06
	endif
endscript

script CameraFX_BlackFadeIn 
	if NOT BG_fx_get_start_params \{viewport = bg_viewport
			effectName = Brightness___Saturation}
		return
	endif
	OnExitRun CameraFX_BlackFadeIn_Cleanup params = {startValue = <startValue>}
	BG_fx_set_brightness_BlackFade appendBrightness = 0 time = (<length> * 0.001)
	Block
endscript

script CameraFX_BlackFadeIn_Cleanup 
	if ViewportExists \{id = bg_viewport}
		BG_fx_set_brightness_BlackFade effectParams = <startValue>
	endif
endscript

script CameraFX_BlackFadeOut 
	if NOT BG_fx_get_start_params \{viewport = bg_viewport
			effectName = Brightness___Saturation}
		return
	endif
	BG_fx_set_brightness_BlackFade \{appendBrightness = 0
		time = 0}
	Wait \{1
		frame}
	BG_fx_set_brightness_BlackFade effectParams = <startValue> time = 0.75
endscript

script CameraFX_BlackFadeOut_CareerIntro 
	if NOT BG_fx_get_start_params \{viewport = bg_viewport
			effectName = Brightness___Saturation}
		return
	endif
	BG_fx_set_brightness_BlackFade \{appendBrightness = 0
		time = 0}
	Wait \{1
		frame}
	BG_fx_set_brightness_BlackFade effectParams = <startValue> time = 0.5
endscript

script ONE_IntroFX 
	GetPakManCurrent \{map = zones}
	switch <pak>
		case z_justice
		ONE_IntroFX_Justice
		case z_donnington
		ONE_IntroFX_Donnington
		case z_forum
		ONE_IntroFX_Forum
		case z_IceCave
		ONE_IntroFX_IceCave
		case z_meadowlands
		ONE_IntroFX_Meadowlands
		case z_MoP
		ONE_IntroFX_MoP
		case z_stone
		ONE_IntroFX_Stone
		case z_tushino
		ONE_IntroFX_Tushino
	endswitch
endscript

script ONE_IntroFX_Justice 
	TOD_Proxim_Apply_CareerIntroFX
	LightShow_SetTime \{time = 1.5}
	LightShow_SetParams \{mood = OneIntro01}
	SafeKill \{nodeName = Z_Justice_GFX_FX_SunFlare_01}
	SafeKill \{nodeName = Z_Justice_GFX_FX_SunFlare_01}
	kill \{prefix = Z_Justice_GFX_FX_OneIntro}
	Wait \{1
		frame}
	create \{prefix = Z_Justice_GFX_FX_OneIntro}
	SafeCreate \{nodeName = Z_Justice_GFX_FX_FFWF_IntroSmoke_01}
	Wait \{2.5
		seconds}
	SafeCreate \{nodeName = Z_Justice_GFX_FX_OneIntroLeftFlash_01}
	SafeCreate \{nodeName = Z_Justice_GFX_FX_OneIntroLeftFlash_02}
	spawnscriptnow \{ONE_IntroFX_Explosions_01}
	Wait \{3.6
		seconds}
	SafeCreate \{nodeName = Z_Justice_GFX_FX_OneIntroRightFlash_01}
	SafeCreate \{nodeName = Z_Justice_GFX_FX_OneIntroRightFlash_02}
	spawnscriptnow \{ONE_IntroFX_Explosions_02}
	Wait \{2.2
		seconds}
	SafeCreate \{nodeName = Z_Justice_GFX_FX_OneIntroLeftFlash_01}
	SafeCreate \{nodeName = Z_Justice_GFX_FX_OneIntroLeftFlash_02}
	spawnscriptnow \{ONE_IntroFX_Explosions_01}
	Wait \{1.3
		seconds}
	kill \{prefix = Z_Justice_GFX_FX_OneIntro}
	create \{prefix = Z_Justice_GFX_FX_FFWF_IntroFlare}
	EnableLight \{name = Z_Justice_GFX_FX_OneIntroJamesOmni_01}
	Wait \{18.5
		seconds}
	kill \{prefix = Z_Justice_GFX_FX_FFWF_IntroFlare}
	SafeKill \{nodeName = Z_Justice_GFX_FX_FFWF_IntroSmoke_01}
	disablelight \{name = Z_Donnington_GFX_FX_OneIntroJamesOmni_01}
	LightShow_SetTime \{time = 2}
	LightShow_SetParams \{mood = OneIntro02}
endscript

script ONE_IntroFX_Donnington 
	TOD_Proxim_Apply_CareerIntroFX
	LightShow_SetTime \{time = 1.5}
	LightShow_SetParams \{mood = OneIntro01}
	kill \{prefix = Z_Donnington_GFX_FX_OneIntro}
	Wait \{1
		frame}
	create \{prefix = Z_Donnington_GFX_FX_OneIntro}
	SafeCreate \{nodeName = Z_Donnington_GFX_FX_FFWF_IntroSmoke_01}
	Wait \{2.5
		seconds}
	SafeCreate \{nodeName = Z_Donnington_GFX_FX_OneIntroLeftFlash_01}
	SafeCreate \{nodeName = Z_Donnington_GFX_FX_OneIntroLeftFlash_02}
	spawnscriptnow \{ONE_IntroFX_Explosions_01}
	Wait \{3.6
		seconds}
	SafeCreate \{nodeName = Z_Donnington_GFX_FX_OneIntroRightFlash_01}
	SafeCreate \{nodeName = Z_Donnington_GFX_FX_OneIntroRightFlash_02}
	spawnscriptnow \{ONE_IntroFX_Explosions_02}
	Wait \{2.2
		seconds}
	SafeCreate \{nodeName = Z_Donnington_GFX_FX_OneIntroLeftFlash_01}
	SafeCreate \{nodeName = Z_Donnington_GFX_FX_OneIntroLeftFlash_02}
	spawnscriptnow \{ONE_IntroFX_Explosions_01}
	Wait \{1.3
		seconds}
	kill \{prefix = Z_Donnington_GFX_FX_OneIntro}
	create \{prefix = Z_Donnington_GFX_FX_FFWF_IntroFlare}
	EnableLight \{name = Z_Donnington_GFX_FX_OneIntroJamesOmni_01}
	Wait \{18.5
		seconds}
	SafeKill \{nodeName = Z_Donnington_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_Donnington_GFX_FX_FFWF_IntroFlare}
	disablelight \{name = Z_Donnington_GFX_FX_OneIntroJamesOmni_01}
	LightShow_SetTime \{time = 2}
	LightShow_SetParams \{mood = OneIntro02}
endscript

script ONE_IntroFX_Forum 
	TOD_Proxim_Apply_CareerIntroFX
	LightShow_SetTime \{time = 1.5}
	LightShow_SetParams \{mood = OneIntro01}
	kill \{prefix = Z_Forum_GFX_FX_OneIntro}
	Wait \{1
		frame}
	create \{prefix = Z_Forum_GFX_FX_OneIntro}
	SafeCreate \{nodeName = Z_Forum_GFX_FX_FFWF_IntroSmoke_01}
	Wait \{2.5
		seconds}
	SafeCreate \{nodeName = Z_Forum_GFX_FX_OneIntroLeftFlash_01}
	SafeCreate \{nodeName = Z_Forum_GFX_FX_OneIntroLeftFlash_02}
	spawnscriptnow \{ONE_IntroFX_Explosions_01}
	Wait \{3.6
		seconds}
	SafeCreate \{nodeName = Z_Forum_GFX_FX_OneIntroRightFlash_01}
	SafeCreate \{nodeName = Z_Forum_GFX_FX_OneIntroRightFlash_02}
	spawnscriptnow \{ONE_IntroFX_Explosions_02}
	Wait \{2.2
		seconds}
	SafeCreate \{nodeName = Z_Forum_GFX_FX_OneIntroLeftFlash_01}
	SafeCreate \{nodeName = Z_Forum_GFX_FX_OneIntroLeftFlash_02}
	spawnscriptnow \{ONE_IntroFX_Explosions_01}
	Wait \{1.3
		seconds}
	kill \{prefix = Z_Forum_GFX_FX_OneIntro}
	create \{prefix = Z_Forum_GFX_FX_FFWF_IntroFlare}
	EnableLight \{name = Z_Forum_GFX_FX_OneIntroJamesOmni_01}
	Wait \{18.5
		seconds}
	SafeKill \{nodeName = Z_Forum_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_Forum_GFX_FX_FFWF_IntroFlare}
	LightShow_SetTime \{time = 2}
	LightShow_SetParams \{mood = OneIntro02}
	disablelight \{name = Z_Forum_GFX_FX_OneIntroJamesOmni_01}
endscript

script ONE_IntroFX_IceCave 
	TOD_Proxim_Apply_CareerIntroFX
	LightShow_SetTime \{time = 1.5}
	LightShow_SetParams \{mood = OneIntro01}
	kill \{prefix = Z_IceCave_GFX_FX_OneIntro}
	Wait \{1
		frame}
	create \{prefix = Z_IceCave_GFX_FX_OneIntro}
	SafeCreate \{nodeName = Z_IceCave_GFX_FX_FFWF_IntroSmoke_01}
	Wait \{2.5
		seconds}
	SafeCreate \{nodeName = Z_IceCave_GFX_FX_OneIntroLeftFlash_01}
	SafeCreate \{nodeName = Z_IceCave_GFX_FX_OneIntroLeftFlash_02}
	spawnscriptnow \{ONE_IntroFX_Explosions_01}
	Wait \{3.6
		seconds}
	SafeCreate \{nodeName = Z_IceCave_GFX_FX_OneIntroRightFlash_01}
	SafeCreate \{nodeName = Z_IceCave_GFX_FX_OneIntroRightFlash_02}
	spawnscriptnow \{ONE_IntroFX_Explosions_02}
	Wait \{2.2
		seconds}
	SafeCreate \{nodeName = Z_IceCave_GFX_FX_OneIntroLeftFlash_01}
	SafeCreate \{nodeName = Z_IceCave_GFX_FX_OneIntroLeftFlash_02}
	spawnscriptnow \{ONE_IntroFX_Explosions_01}
	Wait \{1.3
		seconds}
	kill \{prefix = Z_IceCave_GFX_FX_OneIntro}
	create \{prefix = Z_IceCave_GFX_FX_FFWF_IntroFlare}
	EnableLight \{name = Z_IceCave_GFX_FX_OneIntroJamesOmni_01}
	Wait \{18.5
		seconds}
	LightShow_SetTime \{time = 2}
	LightShow_SetParams \{mood = OneIntro02}
	SafeKill \{nodeName = Z_IceCave_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_IceCave_GFX_FX_FFWF_IntroFlare}
	disablelight \{name = Z_IceCave_GFX_FX_OneIntroJamesOmni_01}
endscript

script ONE_IntroFX_Meadowlands 
	TOD_Proxim_Apply_CareerIntroFX
	LightShow_SetTime \{time = 1.5}
	LightShow_SetParams \{mood = OneIntro01}
	kill \{prefix = Z_Meadowlands_GFX_FX_OneIntro}
	Wait \{1
		frame}
	create \{prefix = Z_Meadowlands_GFX_FX_OneIntro}
	SafeCreate \{nodeName = Z_Meadowlands_GFX_FX_FFWF_IntroSmoke_01}
	Wait \{2.5
		seconds}
	SafeCreate \{nodeName = Z_Meadowlands_GFX_FX_OneIntroLeftFlash_01}
	SafeCreate \{nodeName = Z_Meadowlands_GFX_FX_OneIntroLeftFlash_02}
	spawnscriptnow \{ONE_IntroFX_Explosions_01}
	Wait \{3.6
		seconds}
	SafeCreate \{nodeName = Z_Meadowlands_GFX_FX_OneIntroRightFlash_01}
	SafeCreate \{nodeName = Z_Meadowlands_GFX_FX_OneIntroRightFlash_02}
	spawnscriptnow \{ONE_IntroFX_Explosions_02}
	Wait \{2.2
		seconds}
	SafeCreate \{nodeName = Z_Meadowlands_GFX_FX_OneIntroLeftFlash_01}
	SafeCreate \{nodeName = Z_Meadowlands_GFX_FX_OneIntroLeftFlash_02}
	spawnscriptnow \{ONE_IntroFX_Explosions_01}
	Wait \{1.3
		seconds}
	kill \{prefix = Z_Meadowlands_GFX_FX_OneIntro}
	SafeCreate \{nodeName = Z_Meadowlands_GFX_FX_OneIntroSunFlare_01}
	create \{prefix = Z_Meadowlands_GFX_FX_FFWF_IntroFlare}
	EnableLight \{name = Z_Meadowlands_GFX_FX_OneIntroJamesOmni_01}
	Wait \{18.5
		seconds}
	SafeKill \{nodeName = Z_Meadowlands_GFX_FX_FFWF_IntroSmoke_01}
	SafeKill \{nodeName = Z_Meadowlands_GFX_FX_OneIntroSunFlare_01}
	kill \{prefix = Z_Meadowlands_GFX_FX_FFWF_IntroFlare}
	disablelight \{name = Z_Meadowlands_GFX_FX_OneIntroJamesOmni_01}
	LightShow_SetTime \{time = 2}
	LightShow_SetParams \{mood = OneIntro02}
endscript

script ONE_IntroFX_MoP 
	TOD_Proxim_Apply_CareerIntroFX
	LightShow_SetTime \{time = 1.5}
	LightShow_SetParams \{mood = OneIntro01}
	kill \{prefix = Z_MoP_GFX_FX_OneIntro}
	Wait \{1
		frame}
	create \{prefix = Z_MoP_GFX_FX_OneIntro}
	SafeCreate \{nodeName = Z_Mop_GFX_FX_FFWF_IntroSmoke_01}
	Wait \{2.5
		seconds}
	SafeCreate \{nodeName = Z_MoP_GFX_FX_OneIntroLeftFlash_01}
	SafeCreate \{nodeName = Z_MoP_GFX_FX_OneIntroLeftFlash_02}
	spawnscriptnow \{ONE_IntroFX_Explosions_01}
	Wait \{3.6
		seconds}
	SafeCreate \{nodeName = Z_MoP_GFX_FX_OneIntroRightFlash_01}
	SafeCreate \{nodeName = Z_MoP_GFX_FX_OneIntroRightFlash_02}
	spawnscriptnow \{ONE_IntroFX_Explosions_02}
	Wait \{2.2
		seconds}
	SafeCreate \{nodeName = Z_MoP_GFX_FX_OneIntroLeftFlash_01}
	SafeCreate \{nodeName = Z_MoP_GFX_FX_OneIntroLeftFlash_02}
	spawnscriptnow \{ONE_IntroFX_Explosions_01}
	Wait \{1.3
		seconds}
	kill \{prefix = Z_MoP_GFX_FX_OneIntro}
	create \{prefix = Z_Mop_GFX_FX_FFWF_IntroFlare}
	EnableLight \{name = Z_Mop_GFX_FX_OneIntroJamesOmni_01}
	Wait \{18.6
		seconds}
	kill \{prefix = Z_Mop_GFX_FX_FFWF_IntroFlare}
	SafeKill \{nodeName = Z_Mop_GFX_FX_FFWF_IntroSmoke_01}
	disablelight \{name = Z_Mop_GFX_FX_OneIntroJamesOmni_01}
	LightShow_SetTime \{time = 2}
	LightShow_SetParams \{mood = OneIntro02}
endscript

script ONE_IntroFX_Stone 
	TOD_Proxim_Apply_CareerIntroFX
	kill \{prefix = Z_Stone_GFX_FX_OneIntro}
	Wait \{0.2
		second}
	create \{prefix = Z_Stone_GFX_FX_OneIntro}
	SafeCreate \{nodeName = Z_Stone_GFX_FX_FFWF_IntroSmoke_01}
	LightShow_SetTime \{time = 1.3}
	LightShow_SetParams \{mood = OneIntro01}
	Wait \{2.5
		seconds}
	SafeCreate \{nodeName = Z_Stone_GFX_FX_OneIntroLeftFlash_01}
	SafeCreate \{nodeName = Z_Stone_GFX_FX_OneIntroLeftFlash_02}
	spawnscriptnow \{ONE_IntroFX_Explosions_01}
	Wait \{3.6
		seconds}
	SafeCreate \{nodeName = Z_Stone_GFX_FX_OneIntroRightFlash_01}
	SafeCreate \{nodeName = Z_Stone_GFX_FX_OneIntroRightFlash_02}
	spawnscriptnow \{ONE_IntroFX_Explosions_02}
	Wait \{2.2
		seconds}
	SafeCreate \{nodeName = Z_Stone_GFX_FX_OneIntroLeftFlash_01}
	SafeCreate \{nodeName = Z_Stone_GFX_FX_OneIntroLeftFlash_02}
	spawnscriptnow \{ONE_IntroFX_Explosions_01}
	Wait \{1.4
		seconds}
	kill \{prefix = Z_Stone_GFX_FX_OneIntro}
	create \{prefix = Z_Stone_GFX_FX_FFWF_IntroFlare}
	EnableLight \{name = Z_Stone_GFX_FX_OneIntroJamesOmni_01}
	Wait \{18.3
		seconds}
	SafeKill \{nodeName = Z_Stone_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_Stone_GFX_FX_FFWF_IntroFlare}
	LightShow_SetTime \{time = 2}
	LightShow_SetParams \{mood = OneIntro02}
	disablelight \{name = Z_Stone_GFX_FX_OneIntroJamesOmni_01}
endscript

script ONE_IntroFX_Tushino 
	TOD_Proxim_Apply_CareerIntroFX
	LightShow_SetTime \{time = 1.5}
	LightShow_SetParams \{mood = OneIntro01}
	kill \{prefix = Z_Tushino_GFX_FX_OneIntro}
	Wait \{1
		frame}
	create \{prefix = Z_Tushino_GFX_FX_OneIntro}
	SafeCreate \{nodeName = Z_Tushino_GFX_FX_FFWF_IntroSmoke_01}
	Wait \{2.5
		seconds}
	SafeCreate \{nodeName = Z_Tushino_GFX_FX_OneIntroLeftFlash_01}
	SafeCreate \{nodeName = Z_Tushino_GFX_FX_OneIntroLeftFlash_02}
	spawnscriptnow \{ONE_IntroFX_Explosions_01}
	Wait \{3.6
		seconds}
	SafeCreate \{nodeName = Z_Tushino_GFX_FX_OneIntroRightFlash_01}
	SafeCreate \{nodeName = Z_Tushino_GFX_FX_OneIntroRightFlash_02}
	spawnscriptnow \{ONE_IntroFX_Explosions_02}
	Wait \{2.2
		seconds}
	SafeCreate \{nodeName = Z_Tushino_GFX_FX_OneIntroLeftFlash_01}
	SafeCreate \{nodeName = Z_Tushino_GFX_FX_OneIntroLeftFlash_02}
	spawnscriptnow \{ONE_IntroFX_Explosions_01}
	Wait \{1.3
		seconds}
	kill \{prefix = Z_Tushino_GFX_FX_OneIntro}
	create \{prefix = Z_Tushino_GFX_FX_FFWF_IntroFlare}
	EnableLight \{name = Z_Tushino_GFX_FX_OneIntroJamesOmni_01}
	Wait \{18.4
		seconds}
	SafeKill \{nodeName = Z_Tushino_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_Tushino_GFX_FX_FFWF_IntroFlare}
	LightShow_SetTime \{time = 2}
	LightShow_SetParams \{mood = OneIntro02}
	disablelight \{name = Z_Tushino_GFX_FX_OneIntroJamesOmni_01}
endscript

script ONE_IntroFX_Explosions_01 
	GetUniqueCompositeObjectID \{preferredID = ONE_IntroFX_Explosions_Left_01}
	CreateParticleSystem name = <uniqueID> pos = (-3.84608, 0.0, 0.77381605) params_Script = $GP_FX_SparkFountain_Big_Sparks_01 groupID = zoneparticles
	GetUniqueCompositeObjectID \{preferredID = ONE_IntroFX_Explosions_Left_02}
	CreateParticleSystem name = <uniqueID> pos = (-3.84608, 0.0, 0.77381605) params_Script = $GP_FX_SparkFountain_frontFlash_01 groupID = zoneparticles
	Wait \{1
		frame}
	GetUniqueCompositeObjectID \{preferredID = ONE_IntroFX_Explosions_Left_03}
	CreateParticleSystem name = <uniqueID> pos = (-3.84608, 0.0, 0.77381605) params_Script = $GP_FX_SparkFountain_FrontGlow_01 groupID = zoneparticles
	GetUniqueCompositeObjectID \{preferredID = ONE_IntroFX_Explosions_Left_04}
	CreateParticleSystem name = <uniqueID> pos = (-3.84608, 0.0, 0.77381605) params_Script = $GP_FX_SparkFountain_Sparks_01 groupID = zoneparticles
	Wait \{1
		frame}
	GetUniqueCompositeObjectID \{preferredID = ONE_IntroFX_Explosions_Left_05}
	CreateParticleSystem name = <uniqueID> pos = (-3.84608, 0.0, 0.77381605) params_Script = $GP_FX_Encore_ES_Sparks_01 groupID = zoneparticles
	GetUniqueCompositeObjectID \{preferredID = ONE_IntroFX_Explosions_Left_06}
	CreateParticleSystem name = <uniqueID> pos = (-3.84608, 0.0, 0.77381605) params_Script = $GP_FX_Encore_ES_Smoke_01 groupID = zoneparticles
	Wait \{1
		frame}
	GetUniqueCompositeObjectID \{preferredID = ONE_IntroFX_Explosions_Left_07}
	CreateParticleSystem name = <uniqueID> pos = (-3.84608, 0.0, 0.77381605) params_Script = $GP_FX_Encore_ES_PulseGlow_01 groupID = zoneparticles
endscript

script ONE_IntroFX_Explosions_02 
	GetUniqueCompositeObjectID \{preferredID = ONE_IntroFX_Explosions_Right_01}
	CreateParticleSystem name = <uniqueID> pos = (3.64269, 0.0, 0.28839597) params_Script = $GP_FX_SparkFountain_Big_Sparks_01 groupID = zoneparticles
	GetUniqueCompositeObjectID \{preferredID = ONE_IntroFX_Explosions_Right_02}
	CreateParticleSystem name = <uniqueID> pos = (3.64269, 0.0, 0.28839597) params_Script = $GP_FX_SparkFountain_frontFlash_01 groupID = zoneparticles
	Wait \{1
		frame}
	GetUniqueCompositeObjectID \{preferredID = ONE_IntroFX_Explosions_Right_03}
	CreateParticleSystem name = <uniqueID> pos = (3.64269, 0.0, 0.28839597) params_Script = $GP_FX_SparkFountain_FrontGlow_01 groupID = zoneparticles
	GetUniqueCompositeObjectID \{preferredID = ONE_IntroFX_Explosions_Right_04}
	CreateParticleSystem name = <uniqueID> pos = (3.64269, 0.0, 0.28839597) params_Script = $GP_FX_SparkFountain_Sparks_01 groupID = zoneparticles
	Wait \{1
		frame}
	GetUniqueCompositeObjectID \{preferredID = ONE_IntroFX_Explosions_Right_05}
	CreateParticleSystem name = <uniqueID> pos = (3.64269, 0.0, 0.28839597) params_Script = $GP_FX_Encore_ES_Sparks_01 groupID = zoneparticles
	GetUniqueCompositeObjectID \{preferredID = ONE_IntroFX_Explosions_Right_06}
	CreateParticleSystem name = <uniqueID> pos = (3.64269, 0.0, 0.28839597) params_Script = $GP_FX_Encore_ES_Smoke_01 groupID = zoneparticles
	Wait \{1
		frame}
	GetUniqueCompositeObjectID \{preferredID = ONE_IntroFX_Explosions_Right_07}
	CreateParticleSystem name = <uniqueID> pos = (3.64269, 0.0, 0.28839597) params_Script = $GP_FX_Encore_ES_PulseGlow_01 groupID = zoneparticles
endscript

script ONE_IntroFX_Kill 
	GetPakManCurrent \{map = zones}
	switch <pak>
		case z_justice
		ONE_IntroFX_Justice_Kill
		case z_donnington
		ONE_IntroFX_Donnington_Kill
		case z_forum
		ONE_IntroFX_Forum_Kill
		case z_IceCave
		ONE_IntroFX_IceCave_Kill
		case z_meadowlands
		ONE_IntroFX_Meadowlands_Kill
		case z_MoP
		ONE_IntroFX_MoP_Kill
		case z_stone
		ONE_IntroFX_Stone_Kill
		case z_tushino
		ONE_IntroFX_Tushino_Kill
	endswitch
endscript

script ONE_IntroFX_Justice_Kill 
	SafeKill \{nodeName = Z_Justice_GFX_FX_ONEIntro2_James_LH_05}
	SafeKill \{nodeName = Z_Justice_GFX_FX_SunFlare_01}
	kill \{prefix = Z_Justice_GFX_FX_OneIntro
		noprefixwarning}
	disablelight \{name = Z_Justice_GFX_FX_OneIntroJamesOmni_01}
	SafeKill \{nodeName = Z_Justice_GFX_FX_Encore_LH_01}
endscript

script ONE_IntroFX_Donnington_Kill 
	kill \{prefix = Z_Donnington_GFX_FX_OneIntro
		noprefixwarning}
	disablelight \{name = Z_Donnington_GFX_FX_OneIntroJamesOmni_01}
endscript

script ONE_IntroFX_Forum_Kill 
	SafeKill \{nodeName = Z_Forum_GFX_CareerIntro_Ground}
	SafeCreate \{nodeName = Z_Forum_JS_Ground}
	SafeCreate \{nodeName = Z_Forum_JS_Walkway_Pipes_Intro}
	kill \{prefix = Z_Forum_GFX_FX_CareerIntroSunFlare
		noprefixwarning}
	SafeKill \{nodeName = Z_forum_GFX_CareerIntro_Smoke_01}
	SafeCreate \{nodeName = Z_Forum_Tunnel_Light}
	SafeKill \{nodeName = Z_Forum_GFX_FX_ONEIntro2_James_LH_06}
	kill \{prefix = Z_Forum_GFX_FX_OneIntro
		noprefixwarning}
	disablelight \{name = Z_Forum_GFX_FX_OneIntroJamesOmni_01}
	disablelight \{name = Z_Forum_GFX_CareerIntro_PyroLight_01}
	disablelight \{name = Z_Forum_GFX_CareerIntro_PyroLight_Front_01}
	SafeKill \{nodeName = Z_forum_GFX_CareerIntro_Dust_01}
	kill \{prefix = Z_Forum_GFX_FX_CareerIntroSunFlare02
		noprefixwarning}
	kill \{prefix = Z_Forum_GFX_FX_Encore_Smoke
		noprefixwarning}
	kill \{prefix = Z_Forum_GFX_FX_Encore_LH_Snakes
		noprefixwarning}
	SafeKill \{nodeName = Z_Forum_GFX_FX_CareerIntro_DrumLH}
endscript

script ONE_IntroFX_IceCave_Kill 
	kill \{prefix = Z_IceCave_GFX_FX_OneIntro
		noprefixwarning}
	disablelight \{name = Z_IceCave_GFX_FX_OneIntroJamesOmni_01}
endscript

script ONE_IntroFX_Meadowlands_Kill 
	kill \{prefix = Z_Meadowlands_GFX_FX_OneIntro
		noprefixwarning}
	disablelight \{name = Z_Meadowlands_GFX_FX_OneIntroJamesOmni_01}
endscript

script ONE_IntroFX_MoP_Kill 
	kill \{prefix = Z_MoP_GFX_FX_OneIntro
		noprefixwarning}
	disablelight \{name = Z_Mop_GFX_FX_OneIntroJamesOmni_01}
endscript

script ONE_IntroFX_Stone_Kill 
	kill \{prefix = Z_Stone_GFX_FX_OneIntro
		noprefixwarning}
	disablelight \{name = Z_Stone_GFX_FX_OneIntroJamesOmni_01}
endscript

script ONE_IntroFX_Tushino_Kill 
	kill \{prefix = Z_Tushino_GFX_FX_OneIntro
		noprefixwarning}
	disablelight \{name = Z_Tushino_GFX_FX_OneIntroJamesOmni_01}
endscript

script FFWF_IntroFX 
	GetPakManCurrent \{map = zones}
	switch <pak>
		case z_justice
		FFWF_IntroFX_Justice
		case z_donnington
		FFWF_IntroFX_Donnington
		case z_forum
		FFWF_IntroFX_Forum
		case z_IceCave
		FFWF_IntroFX_IceCave
		case z_meadowlands
		FFWF_IntroFX_Meadowlands
		case z_MoP
		FFWF_IntroFX_MoP
		case z_stone
		FFWF_IntroFX_Stone
		case z_tushino
		FFWF_IntroFX_Tushino
	endswitch
endscript

script FFWF_IntroFX_Justice 
	TOD_Proxim_Apply_CareerIntro_Cut1_FX
	kill \{prefix = Z_Justice_GFX_FX_Smoke
		noprefixwarning}
	SafeKill \{nodeName = Z_Justice_GFX_FX_CrowdFog_01}
	Wait \{1
		second}
	LightShow_SetTime \{time = 1}
	LightShow_SetParams \{mood = FFWFIntro01}
	SafeCreate \{nodeName = Z_Justice_GFX_FX_FFWF_IntroSmoke_01}
	create \{prefix = Z_Justice_GFX_FX_FFWF_IntroFlare}
	Wait \{38
		seconds}
	LightShow_SetTime \{time = 7}
	LightShow_SetParams \{mood = FFWFIntro02}
	Wait \{20
		seconds}
	create \{prefix = Z_Justice_GFX_FX_Smoke}
	SafeKill \{nodeName = Z_Justice_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_Justice_GFX_FX_FFWF_IntroFlare}
endscript

script FFWF_IntroFX_Donnington 
	TOD_Proxim_Apply_CareerIntro_Cut1_FX
	kill \{prefix = Z_Donnington_GFX_FX_Smoke
		noprefixwarning}
	SafeKill \{nodeName = Z_Donnington_GFX_FX_CrowdFog_01}
	Wait \{1
		second}
	LightShow_SetTime \{time = 1}
	LightShow_SetParams \{mood = FFWFIntro01}
	SafeCreate \{nodeName = Z_Donnington_GFX_FX_FFWF_IntroSmoke_01}
	create \{prefix = Z_Donnington_GFX_FX_FFWF_IntroFlare}
	Wait \{38
		seconds}
	LightShow_SetTime \{time = 7}
	LightShow_SetParams \{mood = FFWFIntro02}
	Wait \{20
		seconds}
	create \{prefix = Z_Donnington_GFX_FX_Smoke}
	SafeKill \{nodeName = Z_Donnington_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_Donnington_GFX_FX_FFWF_IntroFlare}
endscript

script FFWF_IntroFX_Forum 
	LightShow_SetTime \{time = 0}
	LightShow_SetParams \{mood = FFWFIntro01}
	TOD_Proxim_Apply_CareerIntroFX
	kill \{prefix = Z_Forum_GFX_FX_Smoke
		noprefixwarning}
	SafeCreate \{nodeName = Z_Forum_GFX_FX_FFWF_IntroSmoke_01}
	create \{prefix = Z_Forum_GFX_FX_FFWF_IntroFlare}
	Wait \{39
		seconds}
	LightShow_SetTime \{time = 7}
	LightShow_SetParams \{mood = FFWFIntro02}
	Wait \{20
		seconds}
	create \{prefix = Z_Forum_GFX_FX_Smoke}
	SafeKill \{nodeName = Z_Forum_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_Forum_GFX_FX_FFWF_IntroFlare}
endscript

script FFWF_IntroFX_IceCave 
	TOD_Proxim_Apply_CareerIntro_Cut1_FX
	kill \{prefix = Z_icecave_GFX_FX_Smoke
		noprefixwarning}
	Wait \{1
		second}
	LightShow_SetTime \{time = 1}
	LightShow_SetParams \{mood = FFWFIntro01}
	SafeCreate \{nodeName = Z_IceCave_GFX_FX_FFWF_IntroSmoke_01}
	create \{prefix = Z_IceCave_GFX_FX_FFWF_IntroFlare}
	Wait \{38
		seconds}
	LightShow_SetTime \{time = 7}
	LightShow_SetParams \{mood = FFWFIntro02}
	Wait \{20
		seconds}
	create \{prefix = Z_icecave_GFX_FX_Smoke}
	SafeKill \{nodeName = Z_IceCave_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_IceCave_GFX_FX_FFWF_IntroFlare}
endscript

script FFWF_IntroFX_Meadowlands 
	TOD_Proxim_Apply_CareerIntro_Cut1_FX
	kill \{prefix = Z_Meadowlands_GFX_FX_Smoke
		noprefixwarning}
	Wait \{1
		second}
	LightShow_SetTime \{time = 1}
	LightShow_SetParams \{mood = FFWFIntro01}
	SafeCreate \{nodeName = Z_Meadowlands_GFX_FX_FFWF_IntroSmoke_01}
	create \{prefix = Z_Meadowlands_GFX_FX_FFWF_IntroFlare}
	Wait \{38
		seconds}
	LightShow_SetTime \{time = 7}
	LightShow_SetParams \{mood = FFWFIntro02}
	Wait \{20
		seconds}
	create \{prefix = Z_Meadowlands_GFX_FX_Smoke}
	SafeKill \{nodeName = Z_Meadowlands_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_Meadowlands_GFX_FX_FFWF_IntroFlare}
endscript

script FFWF_IntroFX_MoP 
	TOD_Proxim_Apply_CareerIntro_Cut1_FX
	kill \{prefix = Z_MoP_GFX_FX_Smoke
		noprefixwarning}
	SafeKill \{nodeName = Z_MoP_GFX_FX_CrowdFog_01}
	Wait \{1
		second}
	LightShow_SetTime \{time = 1}
	LightShow_SetParams \{mood = FFWFIntro01}
	SafeCreate \{nodeName = Z_Mop_GFX_FX_FFWF_IntroSmoke_01}
	create \{prefix = Z_Mop_GFX_FX_FFWF_IntroFlare}
	Wait \{38
		seconds}
	LightShow_SetTime \{time = 7}
	LightShow_SetParams \{mood = FFWFIntro02}
	Wait \{20
		seconds}
	create \{prefix = Z_MoP_GFX_FX_Smoke}
	SafeKill \{nodeName = Z_Mop_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_Mop_GFX_FX_FFWF_IntroFlare}
endscript

script FFWF_IntroFX_Stone 
	TOD_Proxim_Apply_CareerIntro_Cut1_FX
	kill \{prefix = Z_Stone_GFX_FX_Smoke
		noprefixwarning}
	SafeKill \{nodeName = Z_Stone_GFX_FX_CrowdFog_01}
	Wait \{1
		second}
	LightShow_SetTime \{time = 1}
	LightShow_SetParams \{mood = FFWFIntro01}
	SafeCreate \{nodeName = Z_Stone_GFX_FX_FFWF_IntroSmoke_01}
	create \{prefix = Z_Stone_GFX_FX_FFWF_IntroFlare}
	Wait \{38
		seconds}
	LightShow_SetTime \{time = 7}
	LightShow_SetParams \{mood = FFWFIntro02}
	Wait \{20
		seconds}
	create \{prefix = Z_Stone_GFX_FX_Smoke}
	SafeKill \{nodeName = Z_Stone_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_Stone_GFX_FX_FFWF_IntroFlare}
endscript

script FFWF_IntroFX_Tushino 
	TOD_Proxim_Apply_CareerIntro_Cut1_FX
	kill \{prefix = Z_Tushino_GFX_FX_Smoke
		noprefixwarning}
	SafeKill \{nodeName = Z_Tushino_GFX_FX_CrowdFog_01}
	Wait \{1
		second}
	LightShow_SetTime \{time = 1}
	LightShow_SetParams \{mood = FFWFIntro01}
	SafeCreate \{nodeName = Z_Tushino_GFX_FX_FFWF_IntroSmoke_01}
	create \{prefix = Z_Tushino_GFX_FX_FFWF_IntroFlare}
	Wait \{38
		seconds}
	LightShow_SetTime \{time = 7}
	LightShow_SetParams \{mood = FFWFIntro02}
	Wait \{20
		seconds}
	create \{prefix = Z_Tushino_GFX_FX_Smoke}
	SafeKill \{nodeName = Z_Tushino_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_Tushino_GFX_FX_FFWF_IntroFlare}
endscript

script FFWF_IntroFX_Kill 
	GetPakManCurrent \{map = zones}
	switch <pak>
		case z_justice
		FFWF_IntroFX_Justice_Kill
		case z_donnington
		FFWF_IntroFX_Donnington_Kill
		case z_forum
		FFWF_IntroFX_Forum_Kill
		case z_IceCave
		FFWF_IntroFX_IceCave_Kill
		case z_meadowlands
		FFWF_IntroFX_Meadowlands_Kill
		case z_MoP
		FFWF_IntroFX_MoP_Kill
		case z_stone
		FFWF_IntroFX_Stone_Kill
		case z_tushino
		FFWF_IntroFX_Tushino_Kill
	endswitch
endscript

script FFWF_IntroFX_Justice_Kill 
	SafeKill \{nodeName = Z_Justice_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_Justice_GFX_FX_FFWF_IntroFlare
		noprefixwarning}
endscript

script FFWF_IntroFX_Donnington_Kill 
	SafeKill \{nodeName = Z_Donnington_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_Donnington_GFX_FX_FFWF_IntroFlare
		noprefixwarning}
endscript

script FFWF_IntroFX_Forum_Kill 
	SafeKill \{nodeName = Z_Forum_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_Forum_GFX_FX_FFWF_IntroFlare
		noprefixwarning}
endscript

script FFWF_IntroFX_IceCave_Kill 
	SafeKill \{nodeName = Z_IceCave_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_IceCave_GFX_FX_FFWF_IntroFlare
		noprefixwarning}
endscript

script FFWF_IntroFX_Meadowlands_Kill 
	SafeKill \{nodeName = Z_Meadowlands_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_Meadowlands_GFX_FX_FFWF_IntroFlare
		noprefixwarning}
endscript

script FFWF_IntroFX_MoP_Kill 
	SafeKill \{nodeName = Z_Mop_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_Mop_GFX_FX_FFWF_IntroFlare
		noprefixwarning}
endscript

script FFWF_IntroFX_Stone_Kill 
	SafeKill \{nodeName = Z_Stone_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_Stone_GFX_FX_FFWF_IntroFlare
		noprefixwarning}
endscript

script FFWF_IntroFX_Tushino_Kill 
	SafeKill \{nodeName = Z_Tushino_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_Tushino_GFX_FX_FFWF_IntroFlare
		noprefixwarning}
endscript

script Lemmy_IntroFX 
	GetPakManCurrent \{map = zones}
	switch <pak>
		case z_justice
		Lemmy_IntroFX_Justice
		case z_donnington
		Lemmy_IntroFX_Donnington
		case z_forum
		Lemmy_IntroFX_Forum
		case z_IceCave
		Lemmy_IntroFX_IceCave
		case z_meadowlands
		Lemmy_IntroFX_Meadowlands
		case z_MoP
		Lemmy_IntroFX_MoP
		case z_stone
		Lemmy_IntroFX_Stone
		case z_tushino
		Lemmy_IntroFX_Tushino
	endswitch
endscript

script Lemmy_IntroFX_Justice 
	SafeCreate \{nodeName = Z_Justice_GFX_FX_FFWF_IntroSmoke_01}
	create \{prefix = Z_Justice_GFX_FX_FFWF_IntroFlare}
	LightShow_PlaySnapshot \{name = Intro_01
		UseSnapshotPositions = true
		save = true}
	LightShow_EnableSpotlights \{enabled = true
		spots = [
			vocalist
		]}
endscript

script Lemmy_IntroFX_Donnington 
	SafeCreate \{nodeName = Z_Donnington_GFX_FX_FFWF_IntroSmoke_01}
	create \{prefix = Z_Donnington_GFX_FX_FFWF_IntroFlare}
	LightShow_PlaySnapshot \{name = Intro01
		UseSnapshotPositions = true
		save = true}
	LightShow_EnableSpotlights \{enabled = true
		spots = [
			vocalist
		]}
endscript

script Lemmy_IntroFX_Forum 
	SafeCreate \{nodeName = Z_Forum_GFX_FX_FFWF_IntroSmoke_01}
	create \{prefix = Z_Forum_GFX_FX_FFWF_IntroFlare}
	LightShow_PlaySnapshot \{name = intro
		UseSnapshotPositions = true
		save = true}
	LightShow_EnableSpotlights \{enabled = true
		spots = [
			vocalist
		]}
endscript

script Lemmy_IntroFX_IceCave 
	SafeCreate \{nodeName = Z_IceCave_GFX_FX_FFWF_IntroSmoke_01}
	create \{prefix = Z_IceCave_GFX_FX_FFWF_IntroFlare}
	LightShow_PlaySnapshot \{name = Intro_01
		UseSnapshotPositions = true
		save = true}
	LightShow_EnableSpotlights \{enabled = true
		spots = [
			vocalist
		]}
endscript

script Lemmy_IntroFX_Meadowlands 
	SafeCreate \{nodeName = Z_Meadowlands_GFX_FX_FFWF_IntroSmoke_01}
	create \{prefix = Z_Meadowlands_GFX_FX_FFWF_IntroFlare}
	LightShow_PlaySnapshot \{name = intro
		UseSnapshotPositions = true
		save = true}
	LightShow_EnableSpotlights \{enabled = true
		spots = [
			vocalist
		]}
endscript

script Lemmy_IntroFX_MoP 
	SafeCreate \{nodeName = Z_Mop_GFX_FX_FFWF_IntroSmoke_01}
	create \{prefix = Z_Mop_GFX_FX_FFWF_IntroFlare}
	LightShow_PlaySnapshot \{name = intro
		UseSnapshotPositions = true
		save = true}
	LightShow_EnableSpotlights \{enabled = true
		spots = [
			vocalist
		]}
endscript

script Lemmy_IntroFX_Stone 
	SafeCreate \{nodeName = Z_Stone_GFX_FX_FFWF_IntroSmoke_01}
	create \{prefix = Z_Stone_GFX_FX_FFWF_IntroFlare}
	LightShow_PlaySnapshot \{name = intro
		UseSnapshotPositions = true
		save = true}
	LightShow_EnableSpotlights \{enabled = true
		spots = [
			vocalist
		]}
endscript

script Lemmy_IntroFX_Tushino 
	SafeCreate \{nodeName = Z_Tushino_GFX_FX_FFWF_IntroSmoke_01}
	create \{prefix = Z_Tushino_GFX_FX_FFWF_IntroFlare}
	LightShow_PlaySnapshot \{name = intro
		UseSnapshotPositions = true
		save = true}
	LightShow_EnableSpotlights \{enabled = true
		spots = [
			vocalist
		]}
endscript

script Lemmy_IntroFX_Kill 
	GetPakManCurrent \{map = zones}
	switch <pak>
		case z_justice
		Lemmy_IntroFX_Justice_Kill
		case z_donnington
		Lemmy_IntroFX_Donnington_Kill
		case z_forum
		Lemmy_IntroFX_Forum_Kill
		case z_IceCave
		Lemmy_IntroFX_IceCave_Kill
		case z_meadowlands
		Lemmy_IntroFX_Meadowlands_Kill
		case z_MoP
		Lemmy_IntroFX_MoP_Kill
		case z_stone
		Lemmy_IntroFX_Stone_Kill
		case z_tushino
		Lemmy_IntroFX_Tushino_Kill
	endswitch
endscript

script Lemmy_IntroFX_Justice_Kill 
	SafeKill \{nodeName = Z_Justice_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_Justice_GFX_FX_FFWF_IntroFlare
		noprefixwarning}
	LightShow_EnableSpotlights \{enabled = false
		spots = [
			vocalist
		]}
endscript

script Lemmy_IntroFX_Donnington_Kill 
	SafeKill \{nodeName = Z_Donnington_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_Donnington_GFX_FX_FFWF_IntroFlare
		noprefixwarning}
	LightShow_EnableSpotlights \{enabled = false
		spots = [
			vocalist
		]}
endscript

script Lemmy_IntroFX_Forum_Kill 
	SafeKill \{nodeName = Z_Forum_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_Forum_GFX_FX_FFWF_IntroFlare
		noprefixwarning}
	LightShow_EnableSpotlights \{enabled = false
		spots = [
			vocalist
		]}
endscript

script Lemmy_IntroFX_IceCave_Kill 
	SafeKill \{nodeName = Z_IceCave_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_IceCave_GFX_FX_FFWF_IntroFlare
		noprefixwarning}
	LightShow_EnableSpotlights \{enabled = false
		spots = [
			vocalist
		]}
endscript

script Lemmy_IntroFX_Meadowlands_Kill 
	SafeKill \{nodeName = Z_Meadowlands_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_Meadowlands_GFX_FX_FFWF_IntroFlare
		noprefixwarning}
	LightShow_EnableSpotlights \{enabled = false
		spots = [
			vocalist
		]}
endscript

script Lemmy_IntroFX_MoP_Kill 
	SafeKill \{nodeName = Z_Mop_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_Mop_GFX_FX_FFWF_IntroFlare
		noprefixwarning}
	LightShow_EnableSpotlights \{enabled = false
		spots = [
			vocalist
		]}
endscript

script Lemmy_IntroFX_Stone_Kill 
	SafeKill \{nodeName = Z_Stone_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_Stone_GFX_FX_FFWF_IntroFlare
		noprefixwarning}
	LightShow_EnableSpotlights \{enabled = false
		spots = [
			vocalist
		]}
endscript

script Lemmy_IntroFX_Tushino_Kill 
	SafeKill \{nodeName = Z_Tushino_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_Tushino_GFX_FX_FFWF_IntroFlare
		noprefixwarning}
	LightShow_EnableSpotlights \{enabled = false
		spots = [
			vocalist
		]}
endscript

script KingDiamond_IntroFX 
	GetPakManCurrent \{map = zones}
	switch <pak>
		case z_justice
		KingDiamond_IntroFX_Justice
		case z_donnington
		KingDiamond_IntroFX_Donnington
		case z_forum
		KingDiamond_IntroFX_Forum
		case z_IceCave
		KingDiamond_IntroFX_IceCave
		case z_meadowlands
		KingDiamond_IntroFX_Meadowlands
		case z_MoP
		KingDiamond_IntroFX_MoP
		case z_stone
		KingDiamond_IntroFX_Stone
		case z_tushino
		KingDiamond_IntroFX_Tushino
	endswitch
endscript

script KingDiamond_IntroFX_Justice 
	SafeCreate \{nodeName = Z_Justice_GFX_FX_FFWF_IntroSmoke_01}
	create \{prefix = Z_Justice_GFX_FX_FFWF_IntroFlare}
	LightShow_PlaySnapshot \{name = Intro_01
		UseSnapshotPositions = true
		save = true}
	LightShow_EnableSpotlights \{enabled = true
		spots = [
			vocalist
		]}
endscript

script KingDiamond_IntroFX_Donnington 
	SafeCreate \{nodeName = Z_Donnington_GFX_FX_FFWF_IntroSmoke_01}
	create \{prefix = Z_Donnington_GFX_FX_FFWF_IntroFlare}
	LightShow_PlaySnapshot \{name = Intro01
		UseSnapshotPositions = true
		save = true}
	LightShow_EnableSpotlights \{enabled = true
		spots = [
			vocalist
		]}
endscript

script KingDiamond_IntroFX_Forum 
	SafeCreate \{nodeName = Z_Forum_GFX_FX_FFWF_IntroSmoke_01}
	create \{prefix = Z_Forum_GFX_FX_FFWF_IntroFlare}
	LightShow_PlaySnapshot \{name = intro
		UseSnapshotPositions = true
		save = true}
	LightShow_EnableSpotlights \{enabled = true
		spots = [
			vocalist
		]}
endscript

script KingDiamond_IntroFX_IceCave 
	SafeCreate \{nodeName = Z_IceCave_GFX_FX_FFWF_IntroSmoke_01}
	create \{prefix = Z_IceCave_GFX_FX_FFWF_IntroFlare}
	LightShow_PlaySnapshot \{name = Intro_01
		UseSnapshotPositions = true
		save = true}
	LightShow_EnableSpotlights \{enabled = true
		spots = [
			vocalist
		]}
endscript

script KingDiamond_IntroFX_Meadowlands 
	SafeCreate \{nodeName = Z_Meadowlands_GFX_FX_FFWF_IntroSmoke_01}
	create \{prefix = Z_Meadowlands_GFX_FX_FFWF_IntroFlare}
	LightShow_PlaySnapshot \{name = intro
		UseSnapshotPositions = true
		save = true}
	LightShow_EnableSpotlights \{enabled = true
		spots = [
			vocalist
		]}
endscript

script KingDiamond_IntroFX_MoP 
	SafeCreate \{nodeName = Z_Mop_GFX_FX_FFWF_IntroSmoke_01}
	create \{prefix = Z_Mop_GFX_FX_FFWF_IntroFlare}
	LightShow_PlaySnapshot \{name = intro
		UseSnapshotPositions = true
		save = true}
	LightShow_EnableSpotlights \{enabled = true
		spots = [
			vocalist
		]}
endscript

script KingDiamond_IntroFX_Stone 
	SafeCreate \{nodeName = Z_Stone_GFX_FX_FFWF_IntroSmoke_01}
	create \{prefix = Z_Stone_GFX_FX_FFWF_IntroFlare}
	LightShow_PlaySnapshot \{name = intro
		UseSnapshotPositions = true
		save = true}
	LightShow_EnableSpotlights \{enabled = true
		spots = [
			vocalist
		]}
endscript

script KingDiamond_IntroFX_Tushino 
	SafeCreate \{nodeName = Z_Tushino_GFX_FX_FFWF_IntroSmoke_01}
	create \{prefix = Z_Tushino_GFX_FX_FFWF_IntroFlare}
	LightShow_PlaySnapshot \{name = intro
		UseSnapshotPositions = true
		save = true}
	LightShow_EnableSpotlights \{enabled = true
		spots = [
			vocalist
		]}
endscript

script KingDiamond_IntroFX_Kill 
	GetPakManCurrent \{map = zones}
	switch <pak>
		case z_justice
		KingDiamond_IntroFX_Justice_Kill
		case z_donnington
		KingDiamond_IntroFX_Donnington_Kill
		case z_forum
		KingDiamond_IntroFX_Forum_Kill
		case z_IceCave
		KingDiamond_IntroFX_IceCave_Kill
		case z_meadowlands
		KingDiamond_IntroFX_Meadowlands_Kill
		case z_MoP
		KingDiamond_IntroFX_MoP_Kill
		case z_stone
		KingDiamond_IntroFX_Stone_Kill
		case z_tushino
		KingDiamond_IntroFX_Tushino_Kill
	endswitch
endscript

script KingDiamond_IntroFX_Justice_Kill 
	SafeKill \{nodeName = Z_Justice_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_Justice_GFX_FX_FFWF_IntroFlare
		noprefixwarning}
	LightShow_EnableSpotlights \{enabled = false
		spots = [
			vocalist
		]}
endscript

script KingDiamond_IntroFX_Donnington_Kill 
	SafeKill \{nodeName = Z_Donnington_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_Donnington_GFX_FX_FFWF_IntroFlare
		noprefixwarning}
	LightShow_EnableSpotlights \{enabled = false
		spots = [
			vocalist
		]}
endscript

script KingDiamond_IntroFX_Forum_Kill 
	SafeKill \{nodeName = Z_Forum_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_Forum_GFX_FX_FFWF_IntroFlare
		noprefixwarning}
	LightShow_EnableSpotlights \{enabled = false
		spots = [
			vocalist
		]}
endscript

script KingDiamond_IntroFX_IceCave_Kill 
	SafeKill \{nodeName = Z_IceCave_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_IceCave_GFX_FX_FFWF_IntroFlare
		noprefixwarning}
	LightShow_EnableSpotlights \{enabled = false
		spots = [
			vocalist
		]}
endscript

script KingDiamond_IntroFX_Meadowlands_Kill 
	SafeKill \{nodeName = Z_Meadowlands_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_Meadowlands_GFX_FX_FFWF_IntroFlare
		noprefixwarning}
	LightShow_EnableSpotlights \{enabled = false
		spots = [
			vocalist
		]}
endscript

script KingDiamond_IntroFX_MoP_Kill 
	SafeKill \{nodeName = Z_Mop_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_Mop_GFX_FX_FFWF_IntroFlare
		noprefixwarning}
	LightShow_EnableSpotlights \{enabled = false
		spots = [
			vocalist
		]}
endscript

script KingDiamond_IntroFX_Stone_Kill 
	SafeKill \{nodeName = Z_Stone_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_Stone_GFX_FX_FFWF_IntroFlare
		noprefixwarning}
	LightShow_EnableSpotlights \{enabled = false
		spots = [
			vocalist
		]}
endscript

script KingDiamond_IntroFX_Tushino_Kill 
	SafeKill \{nodeName = Z_Tushino_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_Tushino_GFX_FX_FFWF_IntroFlare
		noprefixwarning}
	LightShow_EnableSpotlights \{enabled = false
		spots = [
			vocalist
		]}
endscript

script FWTBT_IntroSnapshot 
	LightShow_SetTime \{time = 1}
	LightShow_PlaySnapshot \{name = Strobe03
		UseSnapshotPositions = true
		save = true}
	kill \{prefix = Z_Forum_GFX_FX_Smoke
		noprefixwarning}
	kill \{prefix = Z_Forum_GFX_FX_FFWF_IntroFlare}
	SafeCreate \{nodeName = Z_Forum_GFX_FX_FFWF_IntroSmoke_01}
	create \{prefix = Z_Forum_GFX_FX_FFWF_IntroFlare}
	Wait \{7
		seconds}
	LightShow_SetTime \{time = 1}
	create \{prefix = Z_Forum_GFX_FX_Smoke}
	SafeKill \{nodeName = Z_Forum_GFX_FX_FFWF_IntroSmoke_01}
	kill \{prefix = Z_Forum_GFX_FX_FFWF_IntroFlare}
endscript
