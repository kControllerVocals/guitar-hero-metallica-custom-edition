GP_FX_ForumEncore_Rocket_OrangeSparks_01 = {
	pos = (0.812655, 0.0, 30.881618)
	angles = (0.0, 0.0, 0.0)
	Class = ParticleObject
	ParticleType = FlexParticle
	type = flat
	active
	CreatedAtStart
	attach
	EmitRangeDims = (0.2, 0.2, 0.2)
	emit_Target = (0.0, 1.0, 0.0)
	EmitAngle = (0.0, 0.0, 0.0)
	force = (0.0, -0.1, 0.0)
	WindCoeff = 0.0
	LocalWindCoeff = 0.0
	EmitterVelocityWeight = 0.0
	Radiate
	AngleSpread = 1.0
	LifeRange = (2.0, 2.5)
	emit_rate = 200.0
	max = 0
	TimeSeed = 0.0
	lifeTime = 1.3
	emitNum = 0
	FollowEmitter = 0.0
	AlwaysEmit
	EmitFunction = constant
	EmitPeriod = 1.0
	SizeRange = [
		(0.4, 0.4)
		(0.2, 0.2)
	]
	SpeedRange = (0.6, 1.5)
	RotVel = (1.0, -1.0)
	RotVelTimeScale = 1.0
	EmitDelayStart = 0.0
	PathFollowTime = 0.0
	History = 2
	HistoryListCoordinateSpace = world
	color = -5153025
	LOD_Default
	QuickMaterial = {
		DiffuseTextureEnabled
		DiffuseTexture = JOW_Spark02
		SpecularPower = 0
		bloom
		alphacutoff = 1
		blendMode = Add
		QuadAnimationFPS = 0
	}
	Knot = [
		(1.004494, 0.0, -0.3009)
		(1.004494, 0.0, -0.3009)
		(0.33483106, 0.0, -0.1003)
		(-0.33483106, 0.0, 0.1003)
		(-1.004494, 0.0, 0.3009)
		(-1.004494, 0.0, 0.3009)
	]
	ParticleColor = [
		-2448385
		-1076756481
		-2448624
		-1076756709
	]
	VertexWeight = [
		1.0
	]
}
