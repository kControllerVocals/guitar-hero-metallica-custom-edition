
script ui_fx_set_effect 
	RequireParams \{[
			amount
			effectName
			viewport
			effectParams
			amountParamName
		]
		all}
	AddParam structure_name = effectParams name = <amountParamName> value = <amount>
	<tolerance> = 0.01
	if (<amount> > <tolerance>)
		if ScreenFX_FxInstanceExists viewport = <viewport> name = <effectName>
			ScreenFX_UpdateFXInstanceParams {
				<effectParams>
				viewport = <viewport>
				name = <effectName>
			}
		else
			printf qs("\LUI FX: adding %s") s = <effectName>
			ScreenFX_AddFXInstance {
				<effectParams>
				viewport = <viewport>
				name = <effectName>
			}
		endif
	else
		if ScreenFX_FxInstanceExists viewport = <viewport> name = <effectName>
			printf qs("\LUI FX: removing %s") s = <effectName>
			ScreenFX_RemoveFXInstance viewport = <viewport> name = <effectName>
		endif
	endif
endscript

script ui_fx_get_start_value 
	RequireParams \{[
			effectName
			viewport
			amountParamName
		]
		all}
	<startValue> = 0.0
	if ScreenFX_FxInstanceExists viewport = <viewport> name = <effectName>
		if ScreenFX_GetActiveScreenFXInstances viewport = <viewport> effectName = <effectName>
			if StructureContains Structure = <curEffect> <amountParamName>
				<startValue> = (<curEffect>.<amountParamName>)
			endif
		endif
	endif
	return startValue = <startValue>
endscript

script ui_fx_adjust_effect 
	RequireParams \{[
			time
			amount
			effectName
			viewport
			effectParams
			amountParamName
		]
		all}
	if (<time> = 0)
		ui_fx_set_effect {
			viewport = <viewport>
			amount = <amount>
			amountParamName = <amountParamName>
			effectName = <effectName>
			effectParams = <effectParams>
		}
	else
		ui_fx_get_start_value viewport = <viewport> effectName = <effectName> amountParamName = <amountParamName>
		RequireParams \{[
				startValue
			]
			all}
		GetTrueStartTime
		<StartTimeSeconds> = (<StartTime> / 1000.0)
		begin
		GetTrueStartTime
		<CurTimeSeconds> = (<StartTime> / 1000.0)
		<ElapsedTimeSeconds> = (<CurTimeSeconds> - <StartTimeSeconds>)
		if (<ElapsedTimeSeconds> >= <time>)
			<ElapsedTimeSeconds> = <time>
			<done> = true
		else
			<done> = false
		endif
		InterpolateParameters a = {value = <startValue>} b = {value = <amount>} proportion = (<ElapsedTimeSeconds> / <time>)
		ui_fx_set_effect {
			viewport = <viewport>
			amount = (<interpolated>.value)
			amountParamName = <amountParamName>
			effectName = <effectName>
			effectParams = <effectParams>
		}
		if (<done> = true)
			break
		endif
		Wait \{1
			gameframes}
		repeat
	endif
endscript

script ui_fx_set_noise \{amount = 0.5
		time = 0
		viewport = ui}
	<effectParams> = {
		on = 1
		type = noise2
		color = [0.5 0.5 0.5 0.5]
		uv = [8.0 6.0 0.0 0.0]
	}
	KillSpawnedScript \{id = ui_fx_noise_interpolation}
	spawnscriptnow {
		ui_fx_adjust_effect
		id = ui_fx_noise_interpolation
		params = {
			viewport = <viewport>
			time = <time>
			amount = <amount>
			amountParamName = intensity
			effectName = uiNoise
			effectParams = <effectParams>
		}
	}
endscript

script ui_fx_set_blur \{amount = 0.5
		time = 0
		viewport = ui}
	effectParams = {
		on = 1
		type = dof3
		nearblurend = 0.0
		farblurbegin = 0.0
		farblurend = 0.0
	}
	KillSpawnedScript \{id = ui_fx_dof_interpolation}
	spawnscriptnow {
		ui_fx_adjust_effect
		id = ui_fx_dof_interpolation
		params = {
			viewport = <viewport>
			time = <time>
			amount = <amount>
			amountParamName = strength
			effectName = uiDOF
			effectParams = <effectParams>
		}
	}
endscript
