GP_FX_EncoreSparks_Burst_01 = {
	pos = (1.7681241, 11.066138, 9.0240345)
	angles = (0.0, 0.0, 0.0)
	Class = ParticleObject
	ParticleType = FlexParticle
	type = textureribbontrail
	active
	CreatedAtStart
	EmitRangeDims = (1.0, 0.0, 0.3)
	emit_Target = (0.0, 1.0, 0.0)
	EmitAngle = (0.0, 0.0, 0.0)
	force = (0.0, -3.0, 0.0)
	WindCoeff = 0.0
	LocalWindCoeff = 0.0
	EmitterVelocityWeight = 0.0
	Radiate
	AngleSpread = 360.0
	LifeRange = (0.1, 1.0)
	emit_rate = 0.0
	max = 0
	TimeSeed = 0.0
	lifeTime = 0.0
	emitNum = 300
	FollowEmitter = 0.0
	EmitFunction = constant
	EmitPeriod = 1.0
	SizeRange = [
		(0.07, 0.1)
		(0.05, 0.05)
	]
	SpeedRange = (1.0, 6.0)
	RotVel = (0.0, 0.0)
	RotVelTimeScale = 0.0
	EmitDelayStart = 0.0
	PathFollowTime = 0.17
	History = 6
	HistoryListCoordinateSpace = world
	color = -2186753
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
		(-0.38307703, 0.0, 0.26823398)
		(-0.38307703, 0.0, 0.26823398)
		(-0.127693, 0.0, 0.089412)
		(0.127693, 0.0, -0.089412)
		(0.38307703, 0.0, -0.26823398)
		(0.38307703, 0.0, -0.26823398)
	]
	ParticleColor = [
		-1
		-1
		-256
		-256
	]
	VertexWeight = [
		1.0
	]
}
