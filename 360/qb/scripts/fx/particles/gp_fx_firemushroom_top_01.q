GP_FX_FireMushroom_Top_01 = {
	pos = (0.35212502, 1.1464609, 5.5563483)
	angles = (0.0, 0.0, 0.0)
	Class = ParticleObject
	ParticleType = FlexParticle
	type = flat
	active
	CreatedAtStart
	EmitRangeDims = (0.2, 0.0, 0.0)
	emit_Target = (0.0, 1.0, 0.0)
	EmitAngle = (0.0, 0.0, 0.0)
	force = (0.0, 0.0, 0.0)
	WindCoeff = 0.0
	LocalWindCoeff = 0.0
	EmitterVelocityWeight = 0.0
	AngleSpread = 45.0
	LifeRange = (1.2, 1.4)
	emit_rate = 20.0
	max = 0
	TimeSeed = 0.0
	lifeTime = 0.3
	emitNum = 10
	FollowEmitter = 0.0
	AlwaysEmit
	EmitFunction = constant
	EmitPeriod = 1.0
	SizeRange = [
		(0.7, 0.7)
		(1.8, 1.8)
	]
	SpeedRange = (2.2, 2.8)
	RotVel = (2.0, -2.0)
	RotVelTimeScale = 0.1
	EmitDelayStart = 0.5
	PathFollowTime = 0.0
	History = 2
	HistoryListCoordinateSpace = world
	color = -3964161
	LOD_Default
	QuickMaterial = {
		DiffuseTextureEnabled
		DiffuseTexture = PH_FirePuffs
		SpecularPower = 0
		bloom
		alphacutoff = 1
		blendMode = Add
		QuadAnimationFPS = 0
	}
	Knot = [
		(-0.48103303, 0.0, -0.0)
		(-0.48103303, 0.0, -0.0)
		(-0.448603, 0.0, -0.0)
		(-0.162793, 0.0, -0.0)
		(-0.130363, 0.0, -0.0)
		(0.021665, 0.0, -0.0)
		(-0.049086, 0.0, -0.0)
		(0.07229701, 0.0, -0.0)
		(0.18011501, 0.0, -0.0)
		(0.342422, 0.0, -0.0)
		(0.477463, 0.0, -0.0)
		(0.477463, 0.0, -0.0)
	]
	ParticleColor = [
		-256
		-256
		-1
		-1
		-88
		-73
		0
		0
	]
	VertexWeight = [
		0.36585402
		0.57729
		1.0
	]
}
