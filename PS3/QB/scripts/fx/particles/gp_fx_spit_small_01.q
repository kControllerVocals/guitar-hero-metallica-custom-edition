GP_FX_Spit_Small_01 = {
	pos = (0.0, 0.0, -0.0)
	angles = (0.0, 0.0, 0.0)
	Class = ParticleObject
	ParticleType = FlexParticle
	type = textureribbontrail
	active
	CreatedAtStart
	attach
	Align
	ApplyPositionOffset
	bone = Bone_Tongue
	EmitRangeDims = (0.0, 0.0, 0.0)
	emit_Target = (0.0, 1.0, 0.0)
	EnableRotate
	EmitAngle = (0.0, 0.0, 0.0)
	force = (0.0, -2.0, 0.0)
	WindCoeff = 0.0
	LocalWindCoeff = 0.0
	EmitterVelocityWeight = 0.0
	Radiate
	AngleSpread = 75.0
	LifeRange = (0.05, 0.3)
	emit_rate = 75.0
	max = 0
	TimeSeed = 0.0
	lifeTime = 0.15
	emitNum = 0
	FollowEmitter = 0.0
	EmitFunction = constant
	EmitPeriod = 1.0
	SizeRange = [
		(0.007, 0.007)
		(0.005, 0.005)
	]
	SpeedRange = (0.5, 3.0)
	RotVel = (0.5, -0.5)
	RotVelTimeScale = 0.5
	EmitDelayStart = 0.0
	PathFollowTime = 0.005
	History = 1
	HistoryListCoordinateSpace = world
	color = -875044275
	LOD_Default
	QuickMaterial = {
		DiffuseTextureEnabled
		DiffuseTexture = JOW_Spark01
		SpecularPower = 0
		alphacutoff = 1
		blendMode = blend
		QuadAnimationFPS = 0
	}
	Knot = [
		(-13.435686, 0.0, 0.029422998)
		(-13.435686, 0.0, 0.029422998)
		(-12.927258, 0.0, 0.016345998)
		(-12.418823, 0.0, 0.003269)
		(-11.910389, 0.0, -0.009807999)
		(-8.93138, 0.0, -0.009807999)
		(-5.952371, 0.0, -0.009807999)
		(-2.973362, 0.0, -0.009807999)
		(2.9005432, 0.0, -0.009807999)
		(8.774441, 0.0, -0.009807999)
		(14.6483555, 0.0, -0.009807999)
		(14.6483555, 0.0, -0.009807999)
	]
	ParticleColor = [
		-256
		-256
		-1
		-1
		-1
		-1
		-256
		-256
	]
	VertexWeight = [
		0.054329004
		0.37254798
		1.0
	]
}
