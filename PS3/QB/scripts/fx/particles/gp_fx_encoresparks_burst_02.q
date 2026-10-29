GP_FX_EncoreSparks_Burst_02 = {
	pos = (1.866025, 10.758766, 8.980048)
	angles = (0.0, 0.0, 0.0)
	Class = ParticleObject
	ParticleType = FlexParticle
	type = flat
	active
	CreatedAtStart
	EmitRangeDims = (0.1, 0.1, 0.1)
	emit_Target = (0.0, 1.0, 0.0)
	EmitAngle = (0.0, 0.0, 0.0)
	force = (0.0, -3.0, 0.0)
	WindCoeff = 0.0
	LocalWindCoeff = 0.0
	EmitterVelocityWeight = 0.0
	Radiate
	AngleSpread = 20.0
	LifeRange = (1.0, 4.0)
	emit_rate = 50.0
	max = 0
	TimeSeed = 0.0
	lifeTime = 0.0
	emitNum = 100
	FollowEmitter = 0.0
	EmitFunction = constant
	EmitPeriod = 1.0
	SizeRange = [
		(0.1, 0.1)
		(0.1, 0.1)
	]
	SpeedRange = (4.0, 7.0)
	RotVel = (0.0, 0.0)
	RotVelTimeScale = 0.0
	EmitDelayStart = 0.0
	PathFollowTime = 0.17
	History = 6
	HistoryListCoordinateSpace = world
	color = -1258753
	LOD_Default
	NoVisibilityTest
	QuickMaterial = {
		DiffuseTextureEnabled
		DiffuseTexture = JOW_Spark02
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
