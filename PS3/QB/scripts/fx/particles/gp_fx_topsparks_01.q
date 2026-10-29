GP_FX_Topsparks_01 = {
	pos = (0.091719, 11.185053, 14.0338545)
	angles = (0.0, 0.0, 0.0)
	Class = ParticleObject
	ParticleType = FlexParticle
	type = flat
	active
	CreatedAtStart
	EmitRangeDims = (0.0, 0.0, 0.0)
	emit_Target = (0.0, -0.2, 0.0)
	EmitAngle = (0.0, 0.0, 0.0)
	force = (0.0, -4.0, 0.0)
	WindCoeff = 0.0
	LocalWindCoeff = 0.0
	EmitterVelocityWeight = 0.0
	AngleSpread = 30.0
	LifeRange = (1.0, 1.5)
	emit_rate = 150.0
	max = 0
	TimeSeed = 0.0
	lifeTime = 0.5
	emitNum = 0
	FollowEmitter = 0.0
	AlwaysEmit
	EmitFunction = constant
	EmitPeriod = 0.02
	SizeRange = [
		(0.1, 0.1)
		(0.01, 0.1)
	]
	SpeedRange = (1.0, 5.0)
	RotVel = (0.0, 0.0)
	RotVelTimeScale = 0.0
	EmitDelayStart = 0.0
	AlignWithPath
	PathFollowTime = 0.1
	History = 2
	HistoryListCoordinateSpace = world
	color = -7716609
	LOD_Default
	NoVisibilityTest
	QuickMaterial = {
		DiffuseTextureEnabled
		DiffuseTexture = JOW_Spark01
		SpecularPower = 0
		bloom
		alphacutoff = 16
		blendMode = Add
		QuadAnimationFPS = 0
	}
	Knot = [
		(0.30060002, 0.0, -0.358242)
		(0.30060002, 0.0, -0.358242)
		(0.100201, 0.0, -0.119414)
		(-0.100201, 0.0, 0.119414)
		(-0.30060002, 0.0, 0.358242)
		(-0.30060002, 0.0, 0.358242)
	]
	ParticleColor = [
		-1
		-1
		-1
		-1
	]
	VertexWeight = [
		1.0
	]
}
