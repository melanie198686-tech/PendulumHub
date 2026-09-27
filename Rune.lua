local TextChatService = game:GetService("TextChatService")
local GeneralChannel = TextChatService.TextChannels:WaitForChild("RBXGeneral")

local function SendChatMessage(message)
	GeneralChannel:SendAsync(message)
	task.wait(1)
end

SendChatMessage("-gh 451220849 62724852 48474294 2309346267 48474313 9350274205")
SendChatMessage("-pd")
SendChatMessage("-net")
 
game.Players.LocalPlayer.Character.Torso.Anchored = true

loadstring(game:HttpGet("https://pastebin.com/raw/5jbwM9MF"))()

game.Players.LocalPlayer.Character.Torso.Anchored = false


script = game:GetObjects("rbxassetid://11774648409")[1]



local plr = game:service'Players'.LocalPlayer
print('Local User is '..plr.Name)
print(' Loaded')
print([[
	0
]])
local char = plr.Character
local hum = char:FindFirstChildOfClass'Humanoid'
local hed = char.Head
local root = char:FindFirstChild'HumanoidRootPart'
local rootj = root.RootJoint
local tors = char.Torso
local ra = char["Right Arm"]
local la = char["Left Arm"]
local rl = char["Right Leg"]
local ll = char["Left Leg"]
local neck = tors["Neck"]
local mouse = plr:GetMouse()
local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)
local maincolor = BrickColor.new("Really black")
local disach = false
-------------------------------------------------------
--Start Good Stuff--
-------------------------------------------------------
cam = game.Workspace.CurrentCamera
CF = CFrame.new
angles = CFrame.Angles
attack = false
Euler = CFrame.fromEulerAnglesXYZ
Rad = math.rad
IT = Instance.new
BrickC = BrickColor.new
Cos = math.cos
Acos = math.acos
Sin = math.sin
Asin = math.asin
Abs = math.abs
Mrandom = math.random
Floor = math.floor
-------------------------------------------------------
--Start Whitelist and Semi-Invincibility--
-------------------------------------------------------	
ff = Instance.new("ForceField",char)
ff.Visible = false
hum.MaxHealth = 45000
hum.Health = 45000
-------------------------------------------------------
--End Whitelist and Semi-Invincibility--
-------------------------------------------------------	
-------------------------------------------------------
--End Good Stuff--
-------------------------------------------------------
necko = CF(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
RSH, LSH = nil, nil 
RW = Instance.new("Weld") 
LW = Instance.new("Weld")
RH = tors["Right Hip"]
LH = tors["Left Hip"]
RSH = tors["Right Shoulder"] 
LSH = tors["Left Shoulder"] 
RSH.Parent = nil 
LSH.Parent = nil 
RW.Name = "RW"
RW.Part0 = tors 
RW.C0 = CF(1.5, 0.5, 0)
RW.C1 = CF(0, 0.5, 0) 
RW.Part1 = ra
RW.Parent = tors 
LW.Name = "LW"
LW.Part0 = tors 
LW.C0 = CF(-1.5, 0.5, 0)
LW.C1 = CF(0, 0.5, 0) 
LW.Part1 = la
LW.Parent = tors
Effects = {}
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
    local wld = Instance.new("Weld", wp1)
    wld.Part0 = wp0
    wld.Part1 = wp1
    wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
newWeld(tors, ll, -0.5, -1, 0)
ll.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(tors, rl, 0.5, -1, 0)
rl.Weld.C1 = CFrame.new(0, 1, 0)
-------------------------------------------------------
--Start HeartBeat--
-------------------------------------------------------
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")

frame = 1 / 60
tf = 0
allowframeloss = false
tossremainder = false


lastframe = tick()
script.Heartbeat:Fire()


game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.Heartbeat:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)
-------------------------------------------------------
--End HeartBeat--
-------------------------------------------------------

-------------------------------------------------------
--Start Important Functions--
-------------------------------------------------------
function swait(num)
	if num == 0 or num == nil then
		game:service("RunService").Stepped:wait(0)
	else
		for i = 0, num do
			game:service("RunService").Stepped:wait(0)
		end
	end
end
function thread(f)
	coroutine.resume(coroutine.create(f))
end
function clerp(a, b, t)
	local qa = {
		QuaternionFromCFrame(a)
	}
	local qb = {
		QuaternionFromCFrame(b)
	}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end
function QuaternionFromCFrame(cf)
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then
		local s = math.sqrt(1 + trace)
		local recip = 0.5 / s
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
	else
		local i = 0
		if m00 < m11 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then
			i = 2
		end
		if i == 0 then
			local s = math.sqrt(m00 - m11 - m22 + 1)
			local recip = 0.5 / s
			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5 / s
			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5 / s
			return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
		end
	end
end
function QuaternionToCFrame(px, py, pz, x, y, z, w)
	local xs, ys, zs = x + x, y + y, z + z
	local wx, wy, wz = w * xs, w * ys, w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end
function QuaternionSlerp(a, b, t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp, finishInterp
	if cosTheta >= 1.0E-4 then
		if 1 - cosTheta > 1.0E-4 then
			local theta = math.acos(cosTheta)
			local invSinTheta = 1 / Sin(theta)
			startInterp = Sin((1 - t) * theta) * invSinTheta
			finishInterp = Sin(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	elseif 1 + cosTheta > 1.0E-4 then
		local theta = math.acos(-cosTheta)
		local invSinTheta = 1 / Sin(theta)
		startInterp = Sin((t - 1) * theta) * invSinTheta
		finishInterp = Sin(t * theta) * invSinTheta
	else
		startInterp = t - 1
		finishInterp = t
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end
function rayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
end
 

-------------------------------------------------------
--Start Damage Function--
-------------------------------------------------------
function Damage(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
	 
end
-------------------------------------------------------
--End Damage Function--
-------------------------------------------------------

-------------------------------------------------------
--Start Damage Function Customization--
-------------------------------------------------------
function Tween(obj,props,time,easing,direction,repeats,backwards)
	local info = TweenInfo.new(time or .5, easing or Enum.EasingStyle.Quad, direction or Enum.EasingDirection.Out, repeats or 0, backwards or false)
	local tween = game.TweenService:Create(obj, info, props)
	tween:Play()
end
function ShowDamage(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 1))
	local EffectPart = CFuncs.Part.Create(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", Vector3.new(0, 0, 0))
	EffectPart.Anchored = true
	local BillboardGui = NewInstance("BillboardGui",EffectPart,{
		Size = UDim2.new(3, 0, 3, 0),
		Adornee = EffectPart,
	})
	local TextLabel = NewInstance("TextLabel",BillboardGui,{
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Text = Text,
		Font = "Bodoni",
		TextColor3 = Color,
		TextStrokeColor3 = Color3.new(0,0,0),
		TextStrokeTransparency=0,
		TextScaled = true,
	})
	game.Debris:AddItem(EffectPart, (Time))
	EffectPart.Parent = game:GetService("Workspace")
	delay(0, function()
		Tween(EffectPart,{CFrame=CF(Pos)*CF(0.5,0,0.1)},Time,Enum.EasingStyle.Elastic,Enum.EasingDirection.Out)
		local Frames = (Time / Rate)
		for Frame = 1, Frames do
			wait(Rate)
			local Percent = (Frame / Frames)
			EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
			TextLabel.TextTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end)
end
-------------------------------------------------------
--End Damage Function Customization--
-------------------------------------------------------

function MagniDamage(Part, magni, mindam, maxdam, knock, Type)
   
end


CFuncs = {
	Part = {
		Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
			local Part = Create("Part")({
				Parent = Parent,
				Reflectance = Reflectance,
				Transparency = Transparency,
				CanCollide = false,
				Locked = true,
				BrickColor = BrickColor.new(tostring(BColor)),
				Name = Name,
				Size = Size,
				Material = Material
			})
			RemoveOutlines(Part)
			return Part
		end
	},
	Mesh = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh)({
				Parent = Part,
				Offset = OffSet,
				Scale = Scale
			})
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end
	},
	Mesh = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh)({
				Parent = Part,
				Offset = OffSet,
				Scale = Scale
			})
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end
	},
	Weld = {
		Create = function(Parent, Part0, Part1, C0, C1)
			local Weld = Create("Weld")({
				Parent = Parent,
				Part0 = Part0,
				Part1 = Part1,
				C0 = C0,
				C1 = C1
			})
			return Weld
		end
	},
	Sound = {
		Create = function(id, par, vol, pit)
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound")({
					Volume = vol,
					Pitch = pit or 1,
					SoundId = id,
					Parent = par or workspace
				})
				wait()
				S:play()
				game:GetService("Debris"):AddItem(S, 6)
			end))
		end
	},
	ParticleEmitter = {
		Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
			local fp = Create("ParticleEmitter")({
				Parent = Parent,
				Color = ColorSequence.new(Color1, Color2),
				LightEmission = LightEmission,
				Size = Size,
				Texture = Texture,
				Transparency = Transparency,
				ZOffset = ZOffset,
				Acceleration = Accel,
				Drag = Drag,
				LockedToPart = LockedToPart,
				VelocityInheritance = VelocityInheritance,
				EmissionDirection = EmissionDirection,
				Enabled = Enabled,
				Lifetime = LifeTime,
				Rate = Rate,
				Rotation = Rotation,
				RotSpeed = RotSpeed,
				Speed = Speed,
				VelocitySpread = VelocitySpread
			})
			return fp
		end
	}
}
function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
function CreatePart(FormFactor, Parent, Material, Reflectance, Transparency, BColor, Name, Size)
	local Part = Create("Part")({
		formFactor = FormFactor,
		Parent = Parent,
		Reflectance = Reflectance,
		Transparency = Transparency,
		CanCollide = false,
		Locked = true,
		BrickColor = BrickColor.new(tostring(BColor)),
		Name = Name,
		Size = Size,
		Material = Material
	})
	RemoveOutlines(Part)
	return Part
end
function CreateMesh(Mesh, Part, MeshType, MeshId, OffSet, Scale)
	local Msh = Create(Mesh)({
		Parent = Part,
		Offset = OffSet,
		Scale = Scale
	})
	if Mesh == "SpecialMesh" then
		Msh.MeshType = MeshType
		Msh.MeshId = MeshId
	end
	return Msh
end
function CreateWeld(Parent, Part0, Part1, C0, C1)
	local Weld = Create("Weld")({
		Parent = Parent,
		Part0 = Part0,
		Part1 = Part1,
		C0 = C0,
		C1 = C1
	})
	return Weld
end


-------------------------------------------------------
--Start Effect Function--
-------------------------------------------------------
EffectModel = Instance.new("Model", char)
Effects = {
  Block = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
      local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
      game:GetService("Debris"):AddItem(prt, 10)
      if Type == 1 or Type == nil then
        table.insert(Effects, {
          prt,
          "Block1",
          delay,
          x3,
          y3,
          z3,
          msh
        })
      elseif Type == 2 then
        table.insert(Effects, {
          prt,
          "Block2",
          delay,
          x3,
          y3,
          z3,
          msh
        })
      else
        table.insert(Effects, {
          prt,
          "Block3",
          delay,
          x3,
          y3,
          z3,
          msh
        })
      end
    end
  },
  Sphere = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
      local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
      game:GetService("Debris"):AddItem(prt, 10)
      table.insert(Effects, {
        prt,
        "Cylinder",
        delay,
        x3,
        y3,
        z3,
        msh
      })
    end
  },
  Cylinder = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
      local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
      game:GetService("Debris"):AddItem(prt, 10)
      table.insert(Effects, {
        prt,
        "Cylinder",
        delay,
        x3,
        y3,
        z3,
        msh
      })
    end
  },
  Wave = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
      local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1 / 60, y1 / 60, z1 / 60))
      game:GetService("Debris"):AddItem(prt, 10)
      table.insert(Effects, {
        prt,
        "Cylinder",
        delay,
        x3 / 60,
        y3 / 60,
        z3 / 60,
        msh
      })
    end
  },
  Ring = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
      local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
      game:GetService("Debris"):AddItem(prt, 10)
      table.insert(Effects, {
        prt,
        "Cylinder",
        delay,
        x3,
        y3,
        z3,
        msh
      })
    end
  },
  Break = {
    Create = function(brickcolor, cframe, x1, y1, z1)
      local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
      prt.Anchored = true
      prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
      local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
      local num = math.random(10, 50) / 1000
      game:GetService("Debris"):AddItem(prt, 10)
      table.insert(Effects, {
        prt,
        "Shatter",
        num,
        prt.CFrame,
        math.random() - math.random(),
        0,
        math.random(50, 100) / 100
      })
    end
  },
Spiral = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
      local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://1051557", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
      game:GetService("Debris"):AddItem(prt, 10)
      table.insert(Effects, {
        prt,
        "Cylinder",
        delay,
        x3,
        y3,
        z3,
        msh
      })
    end
  },
Push = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
      local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://437347603", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
      game:GetService("Debris"):AddItem(prt, 10)
      table.insert(Effects, {
        prt,
        "Cylinder",
        delay,
        x3,
        y3,
        z3,
        msh
      })
    end
  }
}
function part(formfactor ,parent, reflectance, transparency, brickcolor, name, size)
	local fp = IT("Part")
	fp.formFactor = formfactor 
	fp.Parent = parent
	fp.Reflectance = reflectance
	fp.Transparency = transparency
	fp.CanCollide = false 
	fp.Locked = true
	fp.BrickColor = brickcolor
	fp.Name = name
	fp.Size = size
	fp.Position = tors.Position 
	RemoveOutlines(fp)
	fp.Material = "SmoothPlastic"
	fp:BreakJoints()
	return fp 
end 
 
function mesh(Mesh,part,meshtype,meshid,offset,scale)
	local mesh = IT(Mesh) 
	mesh.Parent = part
	if Mesh == "SpecialMesh" then
		mesh.MeshType = meshtype
	if meshid ~= "nil" then
		mesh.MeshId = "http://www.roblox.com/asset/?id="..meshid
		end
	end
	mesh.Offset = offset
	mesh.Scale = scale
	return mesh
end

function Magic(bonuspeed, type, pos, scale, value, color, MType)
	local type = type
	local rng = Instance.new("Part", char)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshType = MType
	rngm.Scale = scale
	local scaler2 = 1
	if type == "Add" then
		scaler2 = 1 * value
	elseif type == "Divide" then
		scaler2 = 1 / value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0, 10 / bonuspeed, 0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01 * value / bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01 / value * bonuspeed
			end
			rng.Transparency = rng.Transparency + 0.01 * bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2 * bonuspeed, scaler2 * bonuspeed, scaler2 * bonuspeed)
		end
		rng:Destroy()
	end))
end

function Eviscerate(dude)
	if dude.Name ~= char then
		local bgf = IT("BodyGyro", dude.Head)
		bgf.CFrame = bgf.CFrame * CFrame.fromEulerAnglesXYZ(Rad(-90), 0, 0)
		local val = IT("BoolValue", dude)
		val.Name = "IsHit"
		local ds = coroutine.wrap(function()
			dude:WaitForChild("Head"):BreakJoints()
			wait(0.5)
			target = nil
			coroutine.resume(coroutine.create(function()
				for i, v in pairs(dude:GetChildren()) do
					if v:IsA("Accessory") then
						v:Destroy()
					end
					if v:IsA("Humanoid") then
						v:Destroy()
					end
					if v:IsA("CharacterMesh") then
						v:Destroy()
					end
					if v:IsA("Model") then
						v:Destroy()
					end
					if v:IsA("Part") or v:IsA("MeshPart") then
						for x, o in pairs(v:GetChildren()) do
							if o:IsA("Decal") then
								o:Destroy()
							end
						end
						coroutine.resume(coroutine.create(function()
							v.Material = "Neon"
							v.CanCollide = false
							local PartEmmit1 = IT("ParticleEmitter", v)
							PartEmmit1.LightEmission = 1
							PartEmmit1.Texture = "rbxassetid://284205403"
							PartEmmit1.Color = ColorSequence.new(maincolor.Color)
							PartEmmit1.Rate = 150
							PartEmmit1.Lifetime = NumberRange.new(1)
							PartEmmit1.Size = NumberSequence.new({
								NumberSequenceKeypoint.new(0, 0.75, 0),
								NumberSequenceKeypoint.new(1, 0, 0)
							})
							PartEmmit1.Transparency = NumberSequence.new({
								NumberSequenceKeypoint.new(0, 0, 0),
								NumberSequenceKeypoint.new(1, 1, 0)
							})
							PartEmmit1.Speed = NumberRange.new(0, 0)
							PartEmmit1.VelocitySpread = 30000
							PartEmmit1.Rotation = NumberRange.new(-500, 500)
							PartEmmit1.RotSpeed = NumberRange.new(-500, 500)
							local BodPoss = IT("BodyPosition", v)
							BodPoss.P = 3000
							BodPoss.D = 1000
							BodPoss.maxForce = Vector3.new(50000000000, 50000000000, 50000000000)
							BodPoss.position = v.Position + Vector3.new(Mrandom(-15, 15), Mrandom(-15, 15), Mrandom(-15, 15))
							v.Color = maincolor.Color
							coroutine.resume(coroutine.create(function()
								for i = 0, 49 do
									swait(1)
									v.Transparency = v.Transparency + 0.08
								end
								wait(0.5)
								PartEmmit1.Enabled = false
								wait(3)
								v:Destroy()
								dude:Destroy()
							end))
						end))
					end
				end
			end))
		end)
		ds()
	end
end

function FindNearestHead(Position, Distance, SinglePlayer)
	if SinglePlayer then
		return Distance > (SinglePlayer.Torso.CFrame.p - Position).magnitude
	end
	local List = {}
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA("Model") and v:findFirstChild("Head") and v ~= char and Distance >= (v.Head.Position - Position).magnitude then
			table.insert(List, v)
		end
	end
	return List
end

function Aura(bonuspeed, FastSpeed, type, pos, x1, y1, z1, value, color, outerpos, MType)
	local type = type
	local rng = Instance.new("Part", char)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	rng.CFrame = rng.CFrame + rng.CFrame.lookVector * outerpos
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshType = MType
	rngm.Scale = Vector3.new(x1, y1, z1)
	local scaler2 = 1
	local speeder = FastSpeed
	if type == "Add" then
		scaler2 = 1 * value
	elseif type == "Divide" then
		scaler2 = 1 / value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0, 10 / bonuspeed, 0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01 * value / bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01 / value * bonuspeed
			end
			speeder = speeder - 0.01 * FastSpeed * bonuspeed
			rng.CFrame = rng.CFrame + rng.CFrame.lookVector * speeder * bonuspeed
			rng.Transparency = rng.Transparency + 0.01 * bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2 * bonuspeed, scaler2 * bonuspeed, 0)
		end
		rng:Destroy()
	end))
end
function HitboxFunction(Pose, lifetime, siz1, siz2, siz3, Radie, Min, Max, kb, atype)
  local Hitboxpart = Instance.new("Part", EffectModel)
  RemoveOutlines(Hitboxpart)
  Hitboxpart.Size = Vector3.new(siz1, siz2, siz3)
  Hitboxpart.CanCollide = false
  Hitboxpart.Transparency = 1
  Hitboxpart.Anchored = true
  Hitboxpart.CFrame = Pose
  game:GetService("Debris"):AddItem(Hitboxpart, lifetime)
  MagniDamage(Hitboxpart, Radie, Min, Max, kb, atype)
end
function SoulSteal(dude)
if dude.Name ~= char then
local bgf = IT("BodyGyro", dude.Head)
bgf.CFrame = bgf.CFrame * CFrame.fromEulerAnglesXYZ(Rad(-90), 0, 0)
local val = IT("BoolValue", dude)
val.Name = "IsHit"
local torso = (dude:FindFirstChild'Head' or dude:FindFirstChild'Torso' or dude:FindFirstChild'UpperTorso' or dude:FindFirstChild'LowerTorso' or dude:FindFirstChild'HumanoidRootPart')
local soulst = coroutine.wrap(function()
local soul = Instance.new("Part",dude)
soul.Size = Vector3.new(1,1,1)
soul.CanCollide = false
soul.Anchored = false
soul.Position = torso.Position
soul.Transparency = 1
local PartEmmit1 = IT("ParticleEmitter", soul)
PartEmmit1.LightEmission = 1
PartEmmit1.Texture = "rbxassetid://569507414"
PartEmmit1.Color = ColorSequence.new(maincolor.Color)
PartEmmit1.Rate = 250
PartEmmit1.Lifetime = NumberRange.new(1.6)
PartEmmit1.Size = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 1, 0),
	NumberSequenceKeypoint.new(1, 0, 0)
})
PartEmmit1.Transparency = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 0, 0),
	NumberSequenceKeypoint.new(1, 1, 0)
})
PartEmmit1.Speed = NumberRange.new(0, 0)
PartEmmit1.VelocitySpread = 30000
PartEmmit1.Rotation = NumberRange.new(-360, 360)
PartEmmit1.RotSpeed = NumberRange.new(-360, 360)
local BodPoss = IT("BodyPosition", soul)
BodPoss.P = 3000
BodPoss.D = 1000
BodPoss.maxForce = Vector3.new(50000000000, 50000000000, 50000000000)
BodPoss.position = torso.Position + Vector3.new(Mrandom(-15, 15), Mrandom(-15, 15), Mrandom(-15, 15))
wait(1.6)
soul.Touched:connect(function(hit)
	if hit.Parent == char then
	soul:Destroy()
	end
end)
wait(1.2)
while soul do
	swait()
	PartEmmit1.Color = ColorSequence.new(maincolor.Color)
	BodPoss.Position = tors.Position
end
end)
	soulst()
	end
end
function FaceMouse()
local	Cam = workspace.CurrentCamera
	return {
		CFrame.new(char.Torso.Position, Vector3.new(mouse.Hit.p.x, char.Torso.Position.y, mouse.Hit.p.z)),
		Vector3.new(mouse.Hit.p.x, mouse.Hit.p.y, mouse.Hit.p.z)
	}
end
Effects = {
	Block = function(cf,partsize,meshstart,meshadd,matr,colour,spin,inverse,factor)
	local p = Instance.new("Part",EffectModel)
	p.BrickColor = BrickColor.new(colour)
	p.Size = partsize
	p.Anchored = true
	p.CanCollide = false
	p.Material = matr
	p.CFrame = cf
	if inverse == true then
		p.Transparency = 1
	else
		p.Transparency = 0
	end
	local m = Instance.new("BlockMesh",p)
	m.Scale = meshstart
	coroutine.wrap(function()
		for i = 0, 1, factor do
			swait()
			if inverse == true then
				p.Transparency = 1-i
			else
				p.Transparency = i
			end
			m.Scale = m.Scale + meshadd
			if spin == true then
				p.CFrame = p.CFrame * CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50))
			end
		end
		p:Destroy()
	end)()
return p
	end,
	Sphere = function(cf,partsize,meshstart,meshadd,matr,colour,inverse,factor)
	local p = Instance.new("Part",EffectModel)
	p.BrickColor = BrickColor.new(colour)
	p.Size = partsize
	p.Anchored = true
	p.CanCollide = false
	p.Material = matr
	p.CFrame = cf
	if inverse == true then
		p.Transparency = 1
	else
		p.Transparency = 0
	end
	local m = Instance.new("SpecialMesh",p)
	m.MeshType = "Sphere"
	m.Scale = meshstart
	coroutine.wrap(function()
		for i=0,1,factor do
			swait()
			if inverse == true then
				p.Transparency = 1-i
			else
				p.Transparency = i
			end
			m.Scale = m.Scale + meshadd
		end
	p:Destroy()
end)()
return p
	end,

	Cylinder = function(cf,partsize,meshstart,meshadd,matr,colour,inverse,factor)
	local p = Instance.new("Part",EffectModel)
	p.BrickColor = BrickColor.new(colour)
	p.Size = partsize
	p.Anchored = true
	p.CanCollide = false
	p.Material = matr
	p.CFrame = cf
	if inverse == true then
		p.Transparency = 1
	else
		p.Transparency = 0
	end
	local m = Instance.new("CylinderMesh",p)
	m.Scale = meshstart
	coroutine.wrap(function()
		for i=0,1,factor do
			swait()
			if inverse == true then
				p.Transparency = 1-i
			else
				p.Transparency = i
			end
			m.Scale = m.Scale + meshadd
		end
	p:Destroy()
end)()
return p
	end,

Wave = function(cf,meshstart,meshadd,colour,spin,inverse,factor)
local p = Instance.new("Part",EffectModel)
p.BrickColor = BrickColor.new(colour)
p.Size = Vector3.new()
p.Anchored = true
p.CanCollide = false
p.CFrame = cf
if inverse == true then
p.Transparency = 1
else
p.Transparency = 0
end
local m = Instance.new("SpecialMesh",p)
m.MeshId = "rbxassetid://20329976"
m.Scale = meshstart
coroutine.wrap(function()
for i=0,1,factor do
swait()
if inverse == true then
p.Transparency = 1-i
else
p.Transparency = i
end
m.Scale = m.Scale + meshadd
p.CFrame = p.CFrame * CFrame.Angles(0,math.rad(spin),0)
end
p:Destroy()
end)()
return p
end,

Ring = function(cf,meshstart,meshadd,colour,inverse,factor)
local p = Instance.new("Part",EffectModel)
p.BrickColor = BrickColor.new(colour)
p.Size = Vector3.new()
p.Anchored = true
p.CanCollide = false
p.CFrame = cf
if inverse == true then
p.Transparency = 1
else
p.Transparency = 0
end
local m = Instance.new("SpecialMesh",p)
m.MeshId = "rbxassetid://3270017"
m.Scale = meshstart
coroutine.wrap(function()
for i=0,1,factor do
swait()
if inverse == true then
p.Transparency = 1-i
else
p.Transparency = i
end
m.Scale = m.Scale + meshadd
end
p:Destroy()
end)()
return p
end,

Meshed = function(cf,meshstart,meshadd,colour,meshid,textid,spin,inverse,factor)
local p = Instance.new("Part",EffectModel)
p.BrickColor = BrickColor.new(colour)
p.Size = Vector3.new()
p.Anchored = true
p.CanCollide = false
p.CFrame = cf
if inverse == true then
p.Transparency = 1
else
p.Transparency = 0
end
local m = Instance.new("SpecialMesh",p)
m.MeshId = meshid
m.TextureId = textid
m.Scale = meshstart
coroutine.wrap(function()
for i=0,1,factor do
swait()
if inverse == true then
p.Transparency = 1-i
else
p.Transparency = i
end
m.Scale = m.Scale + meshadd
p.CFrame = p.CFrame * CFrame.Angles(0,math.rad(spin),0)
end
p:Destroy()
end)()
return p
end,

Explode = function(cf,partsize,meshstart,meshadd,matr,colour,move,inverse,factor)
local p = Instance.new("Part",EffectModel)
p.BrickColor = BrickColor.new(colour)
p.Size = partsize
p.Anchored = true
p.CanCollide = false
p.Material = matr
p.CFrame = cf * CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
if inverse == true then
p.Transparency = 1
else
p.Transparency = 0
end
local m = Instance.new("SpecialMesh",p)
m.MeshType = "Sphere"
m.Scale = meshstart
coroutine.wrap(function()
for i=0,1,factor do
swait()
if inverse == true then
p.Transparency = 1-i
else
p.Transparency = i
end
m.Scale = m.Scale + meshadd
p.CFrame = p.CFrame * CFrame.new(0,move,0)
end
p:Destroy()
end)()
return p
end,

}
function PixelBlockX(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
	local type = type
	local rng = Instance.new("Part", char)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshType = "Brick"
	rngm.Scale = Vector3.new(x1,y1,z1)
	local scaler2 = 1
	local speeder = FastSpeed/10
	if type == "Add" then
		scaler2 = 1*value
	elseif type == "Divide" then
		scaler2 = 1/value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0,10/bonuspeed,0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01*value/bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01/value*bonuspeed
			end
			speeder = speeder - 0.01*FastSpeed*bonuspeed/10
			rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
			rng.Transparency = rng.Transparency + 0.01*bonuspeed
			rngm.Scale = rngm.Scale - Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, scaler2*bonuspeed)
		end
	rng:Destroy()
	end))
end
function CrP(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHOR)
	local NEWPART = IT("Part")
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	if ANCHOR == false then
		NEWPART.Anchored = false
	end
	NEWPART.BrickColor = BrickC(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = tors.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end
function CrM(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
	local NEWMESH = IT(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = "http://www.roblox.com/asset/?id="..MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "http://www.roblox.com/asset/?id="..TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or Vector3.new(0, 0, 0)
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
end
local Effs = IT("Folder", char)
Effs.Name = "Effects"
function WACKYEFFECT(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or Vector3.new(1,1,1))
	local ENDSIZE = (Table.Size2 or Vector3.new(0,0,0))
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or tors.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or Color3.new(1,1,1))
	local TIME = (Table.Time or 45)
	local SOUNDID = (Table.SoundID or nil)
	local SOUNDPITCH = (Table.SoundPitch or nil)
	local SOUNDVOLUME = (Table.SoundVolume or nil)
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = CrP(3, Effs, MATERIAL, 0, TRANSPARENCY, BrickC("Pearl"), "Effect", Vector3.new(1,1,1), true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = Cso(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH)
		end
		EFFECT.Color = COLOR
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CrM("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, Vector3.new(0,0,0))
		elseif TYPE == "Block" or TYPE == "Box" then
			MSH = IT("BlockMesh",EFFECT)
			MSH.Scale = SIZE
		elseif TYPE == "Wave" then
			MSH = CrM("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, Vector3.new(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CrM("SpecialMesh", EFFECT, "FileMesh", "559831844", "", Vector3.new(SIZE.X,SIZE.X,0.1), Vector3.new(0,0,0))
		elseif TYPE == "Slash" then
			MSH = CrM("SpecialMesh", EFFECT, "FileMesh", "662586858", "", Vector3.new(SIZE.X/10,0,SIZE.X/10), Vector3.new(0,0,0))
		elseif TYPE == "Round Slash" then
			MSH = CrM("SpecialMesh", EFFECT, "FileMesh", "662585058", "", Vector3.new(SIZE.X/10,0,SIZE.X/10), Vector3.new(0,0,0))
		elseif TYPE == "Swirl" then
			MSH = CrM("SpecialMesh", EFFECT, "FileMesh", "1051557", "", SIZE, Vector3.new(0,0,0))
		elseif TYPE == "Skull" then
			MSH = CrM("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, Vector3.new(0,0,0))
		elseif TYPE == "Crystal" then
			MSH = CrM("SpecialMesh", EFFECT, "FileMesh", "9756362", "", SIZE, Vector3.new(0,0,0))
		end
		if MSH ~= nil then
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
			end
			local GROWTH = SIZE - ENDSIZE
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			if TYPE == "Block" then
				EFFECT.CFrame = CFRAME*angles(Rad(Mrandom(0,360)),Rad(Mrandom(0,360)),Rad(Mrandom(0,360)))
			else
				EFFECT.CFrame = CFRAME
			end
			for LOOP = 1, TIME+1 do
				swait()
				MSH.Scale = MSH.Scale - GROWTH/TIME
				if TYPE == "Wave" then
					MSH.Offset = Vector3.new(0,0,-MSH.Scale.X/8)
				end
				EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
				if TYPE == "Block" then
					EFFECT.CFrame = CFRAME*angles(Rad(Mrandom(0,360)),Rad(Mrandom(0,360)),Rad(Mrandom(0,360)))
				else
					EFFECT.CFrame = EFFECT.CFrame*angles(Rad(ROTATION1),Rad(ROTATION2),Rad(ROTATION3))
				end
				if MOVEDIRECTION ~= nil then
					local ORI = EFFECT.Orientation
					EFFECT.CFrame = CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-MOVESPEED)
					EFFECT.Orientation = ORI
				end
			end
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat swait() until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:remove()
			end
		else
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat swait() until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:remove()
			end
		end
	end))
end
-------------------------------------------------------
--End Effect Function--
-------------------------------------------------------
function Cso(ID, PARENT, VOLUME, PITCH)
	local NSound = nil
	coroutine.resume(coroutine.create(function()
		NSound = IT("Sound", PARENT)
		NSound.Volume = VOLUME
		NSound.Pitch = PITCH
		NSound.SoundId = "http://www.roblox.com/asset/?id="..ID
		swait()
		NSound:play()
		game:GetService("Debris"):AddItem(NSound, 10)
	end))
	return NSound
end
NewInstance = function(instance,parent,properties)
	local inst = Instance.new(instance)
	inst.Parent = parent
	if(properties)then
		for i,v in next, properties do
			pcall(function() inst[i] = v end)
		end
	end
	return inst;
end
New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end
function SHAKECAM(POSITION,RANGE,INTENSITY,TIME)
	local CHILDREN = workspace:GetDescendants()
	for index, CHILD in pairs(CHILDREN) do
		if CHILD.ClassName == "Model" then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO then
					if (TORSO.Position - POSITION).Magnitude <= RANGE then
						local CAMSHAKER = script.CamShake:Clone()
						CAMSHAKER.Shake.Value = INTENSITY
						CAMSHAKER.Timer.Value = TIME
						CAMSHAKER.Parent = CHILD
						CAMSHAKER.Disabled = false
					end
				end
			end
		end
	end
end
-------------------------------------------------------
--End Important Functions--
-------------------------------------------------------


-------------------------------------------------------
--Start Customization--
-------------------------------------------------------
local TopHand = script.Top.Top:WaitForChild'HAN'
for i,v in pairs(script.Top.Top:GetChildren()) do
v.Anchored = false
v.CanCollide = false
end
local TopWeld = IT("Weld")
TopWeld.Parent = tors
TopWeld.Part0 = tors
TopWeld.Part1 = TopHand
TopWeld.C1 = CF(0, 0, 0) * angles(Rad(0), Rad(0), 0)
-------------------------------------------------------
local BotHand = script.Bot.Bot:WaitForChild'HAN'
for i,v in pairs(script.Bot.Bot:GetChildren()) do
v.Anchored = false
v.CanCollide = false
end
local BotWeld = IT("Weld")
BotWeld.Parent = tors
BotWeld.Part0 = tors
BotWeld.Part1 = BotHand
BotWeld.C1 = CF(0, 0, 0) * angles(Rad(0), Rad(0), 0)
-------------------------------------------------------
----------------------------------------------------------------------------------
local SONG = 1513252972
local SONG2 = 0
local Music = Instance.new("Sound",tors)
Music.SoundId = "rbxassetid://"..SONG
Music.Volume = 2
Music.Looped = true
Music.Pitch = 1 --Pitcher
Music:Play()
----------------------------------------------------------------------------------
local equipped = false
local blinking = false
local idle = 0
local change = 1
local val = 0
local toim = 0
local idleanim = 0.4
local sine = 0
local Sit = 1
local WasAir = false
local InAir = false
local LandTick = 0
local movelegs = false
local FF = Instance.new("ForceField",char)
FF.Visible = false
local Speed = 16
local Rotate = 1

----------------------------------------------------------------------------------
hum.JumpPower = 50
hum.Animator.Parent = nil
----------------------------------------------------------------------------------

----------------------------------------------------------------------------------

-------------------------------------------------------
--End Customization--
-------------------------------------------------------


-------------------------------------------------------
--Start Attacks N Stuff--
-------------------------------------------------------
function AttackTemplate()
	attack = true
	Speed = 16
	for i = 0, 6, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, 0.7 + 0.3 * Cos(sine / 20)) * angles(Rad(0 - 7 * Sin(sine / 20)), Rad(0 + 5 * Cos(sine / 20)), Rad(0)), 0.1)
		neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1) - 1)) * angles(Rad(0 + 5 * Cos(sine / 20)), Rad(0 + 5 * Cos(sine / 20)), Rad(0)), 0.1)
		rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5, -0.5  - 0.1 * Cos(sine / 20) - Rad(0) , -0.5) * angles(Rad(-25 - 7 * Sin(sine / 20)), Rad(-20 + 1 * Cos(sine / 20)), Rad(0 - 7 * Sin(sine / 20))) * angles(Rad(0 + 1 * Cos(sine / 20)), Rad(0), Rad(4)), 0.1)
		ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5, -0.9  - 0.1 * Cos(sine / 20) + Rad(0) , 0) * angles(Rad(-5 - 7 * Sin(sine / 20)), Rad(20 + 1 * Cos(sine / 20)), Rad(0 - 7 * Sin(sine / 20))) * angles(Rad(0 - 1 * Cos(sine / 20)), Rad(0), Rad(-4)), 0.1)
		RW.C0 = clerp(RW.C0, CF(1, 0.5 + 0.1 * Cos(sine / 20), 0.5) * angles(Rad(-20 + 5 * Cos(sine / 20)), Rad(10), Rad(-30 + 5 * Cos(sine / 20))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1, 0.5 + 0.1 * Cos(sine / 20), 0.5) * angles(Rad(-20 + 5 * Cos(sine / 20)), Rad(-10), Rad(30 - 5 * Cos(sine / 20))), 0.1)
	end
	attack = false
	Speed = 16
end

function Laughther()
	attack = true
	Speed = 16
	local Fume = Cso("1295589699", hed, 5.6, 1)
	wait(0.1)
	repeat
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, 0.7 + 0.3 * Cos(sine / 2)) * angles(Rad(0 - 7 * Sin(sine / 20)), Rad(0 + 5 * Cos(sine / 20)), Rad(0)), 0.1)
		neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1) - 1)) * angles(Rad(-30 + 5 * Cos(sine / 2)), Rad(0 + 5 * Cos(sine / 20)), Rad(0)), 0.1)
		rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5, -0.5  - 0.1 * Cos(sine / 2) - Rad(0) , -0.5) * angles(Rad(-25 - 7 * Sin(sine / 20)), Rad(-20 + 1 * Cos(sine / 20)), Rad(0 - 7 * Sin(sine / 20))) * angles(Rad(0 + 1 * Cos(sine / 20)), Rad(0), Rad(4)), 0.1)
		ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5, -0.9  - 0.1 * Cos(sine / 2) + Rad(0) , 0) * angles(Rad(-5 - 7 * Sin(sine / 20)), Rad(20 + 1 * Cos(sine / 20)), Rad(0 - 7 * Sin(sine / 20))) * angles(Rad(0 - 1 * Cos(sine / 20)), Rad(0), Rad(-4)), 0.1)
		RW.C0 = clerp(RW.C0, CF(1, 0.5 + 0.1 * Cos(sine / 2), 0.5) * angles(Rad(-20 + 5 * Cos(sine / 20)), Rad(10), Rad(-30 + 5 * Cos(sine / 20))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1, 0.5 + 0.1 * Cos(sine / 2), 0.5) * angles(Rad(-20 + 5 * Cos(sine / 20)), Rad(-10), Rad(30 - 5 * Cos(sine / 20))), 0.1)
	until Fume.Playing == false
	attack = false
	Speed = 16
end

function ForcefulYell()
	attack = true
	Speed = 16
	Cso("782199941", hed, 6.2, 1)
	MagniDamage(root, 20, 27, 40, 20, "Knockdown")
	SHAKECAM(root.Position, 20, 3, 7)
	for i = 0, 3, 0.1 do
		swait()
		Effects.Meshed(root.CFrame * CF(0,0,0) * CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),Vector3.new(),Vector3.new(.0090,.0005,.0090),"","rbxassetid://662585058","",0,false,0.03)
		--WACKYEFFECT({Time = 30, EffectType = "Ring", Size = Vector3.new(0,0,0), Size2 = Vector3.new(2,2,0.1), Transparency = 0.3, Transparency2 = 1, CFrame = root.CFrame * angles(Rad(90), Rad(0), Rad(0)) * CF(0,0,0), MoveToPos = nil, RotationX = Mrandom(-10, 10), RotationY = Mrandom(-5, 5), RotationZ = Mrandom(-10, 10), Material = "Neon", Color = Color3.new(1,1,1), SoundID = nil, SoundPitch = 1, SoundVolume = 5})
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, 0.7 + 0.3 * Cos(sine / 20)) * angles(Rad(0 - 7 * Sin(sine / 20)), Rad(0 + 5 * Cos(sine / 20)), Rad(0)), 0.1)
		neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1) - 1)) * angles(Rad(-40 + 5 * Cos(sine / 20)), Rad(0 + 5 * Cos(sine / 20)), Rad(0)), 0.3)
		rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5, -0.5  - 0.1 * Cos(sine / 20) - Rad(0) , -0.5) * angles(Rad(-25 - 7 * Sin(sine / 20)), Rad(-20 + 1 * Cos(sine / 20)), Rad(0 - 7 * Sin(sine / 20))) * angles(Rad(0 + 1 * Cos(sine / 20)), Rad(0), Rad(4)), 0.1)
		ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5, -0.9  - 0.1 * Cos(sine / 20) + Rad(0) , 0) * angles(Rad(-5 - 7 * Sin(sine / 20)), Rad(20 + 1 * Cos(sine / 20)), Rad(0 - 7 * Sin(sine / 20))) * angles(Rad(0 - 1 * Cos(sine / 20)), Rad(0), Rad(-4)), 0.1)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.1 * Cos(sine / 20), 0) * angles(Rad(-20 + 5 * Cos(sine / 20)), Rad(10), Rad(40 + 5 * Cos(sine / 20))), 0.3)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.1 * Cos(sine / 20), 0) * angles(Rad(-20 + 5 * Cos(sine / 20)), Rad(-10), Rad(-40 - 5 * Cos(sine / 20))), 0.3)
	end
	attack = false
	Speed = 16
end

function IN_HEAVENS_NAME()
	attack = true
	Speed = 16
	Cso("1295584801", hed, 5.6, 1)
	Cso("874376217", tors, 4.7, 1.1)
	for i = 0, 6, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, 0.7 + 0.3 * Cos(sine / 20)) * angles(Rad(0 - 7 * Sin(sine / 20)), Rad(0 + 5 * Cos(sine / 20)), Rad(50)), 0.1)
		neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1) - 1)) * angles(Rad(0 + 5 * Cos(sine / 20)), Rad(0 + 5 * Cos(sine / 20)), Rad(-50)), 0.1)
		rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5, -0.5  - 0.1 * Cos(sine / 20) - Rad(0) , -0.5) * angles(Rad(-25 - 7 * Sin(sine / 20)), Rad(-20 + 1 * Cos(sine / 20)), Rad(0 - 7 * Sin(sine / 20))) * angles(Rad(0 + 1 * Cos(sine / 20)), Rad(0), Rad(4)), 0.1)
		ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5, -0.9  - 0.1 * Cos(sine / 20) + Rad(0) , 0) * angles(Rad(-5 - 7 * Sin(sine / 20)), Rad(20 + 1 * Cos(sine / 20)), Rad(0 - 7 * Sin(sine / 20))) * angles(Rad(0 - 1 * Cos(sine / 20)), Rad(0), Rad(-4)), 0.1)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.1 * Cos(sine / 20), 0) * angles(Rad(90 + 5 * Cos(sine / 20)), Rad(10), Rad(40 + 5 * Cos(sine / 20))), 0.3)
		LW.C0 = clerp(LW.C0, CF(-1, 0.5 + 0.1 * Cos(sine / 20), 0.5) * angles(Rad(-20 + 5 * Cos(sine / 20)), Rad(-10), Rad(30 - 5 * Cos(sine / 20))), 0.1)
	end
	Cso("971126018", tors, 6.5, 1.1)
	MagniDamage(mouse.Hit, 50, 27, 40, 80, "Knockdown")
	for i = 1, 10 do
		WACKYEFFECT({Time = Mrandom(10,40), EffectType = "Wave", Size = Vector3.new(2,0,2), Size2 = Vector3.new(50,2,50), Transparency = 0.4, Transparency2 = 1, CFrame = root.CFrame * CF(0,-2,0), MoveToPos = mouse.Hit.p, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = Color3.new(1,1,1), SoundID = nil, SoundPitch = 1, SoundVolume = 5})
	end
	for i = 0, 6, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, 0.7 + 0.3 * Cos(sine / 20)) * angles(Rad(0 - 7 * Sin(sine / 20)), Rad(0 + 5 * Cos(sine / 20)), Rad(-60)), 0.1)
		neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1) - 1)) * angles(Rad(0 + 5 * Cos(sine / 20)), Rad(0 + 5 * Cos(sine / 20)), Rad(60)), 0.1)
		rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5, -0.5  - 0.1 * Cos(sine / 20) - Rad(0) , -0.5) * angles(Rad(-25 - 7 * Sin(sine / 20)), Rad(-20 + 1 * Cos(sine / 20)), Rad(0 - 7 * Sin(sine / 20))) * angles(Rad(0 + 1 * Cos(sine / 20)), Rad(0), Rad(4)), 0.1)
		ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5, -0.9  - 0.1 * Cos(sine / 20) + Rad(0) , 0) * angles(Rad(-5 - 7 * Sin(sine / 20)), Rad(20 + 1 * Cos(sine / 20)), Rad(0 - 7 * Sin(sine / 20))) * angles(Rad(0 - 1 * Cos(sine / 20)), Rad(0), Rad(-4)), 0.1)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.1 * Cos(sine / 20), 0) * angles(Rad(90 + 5 * Cos(sine / 20)), Rad(10), Rad(40 + 5 * Cos(sine / 20))), 0.3)
		LW.C0 = clerp(LW.C0, CF(-1, 0.5 + 0.1 * Cos(sine / 20), 0.5) * angles(Rad(-20 + 5 * Cos(sine / 20)), Rad(-10), Rad(30 - 5 * Cos(sine / 20))), 0.1)
	end
	attack = false
	Speed = 16
end
-------------------------------------------------------
--End Attacks N Stuff--
-------------------------------------------------------

-------------------------------------------------------
--Start KeyBinds--
-------------------------------------------------------
mouse.KeyDown:connect(function(key)
	if attack == false then
		if key == "t" then
			Laughther()
		elseif key == "z" then
			ForcefulYell()
		elseif key == "b" then
			MagniDamage(root, 6, 5, 12, 1, "Normal")
			WACKYEFFECT({Time = 80, EffectType = "Ring", Size = Vector3.new(0,0,0), Size2 = Vector3.new(2,2,0.1), Transparency = 0.3, Transparency2 = 1, CFrame = root.CFrame * angles(Rad(90), Rad(0), Rad(0)) * CF(0,0,0), MoveToPos = nil, RotationX = Mrandom(-10, 10), RotationY = Mrandom(-5, 5), RotationZ = Mrandom(-10, 10), Material = "Neon", Color = Color3.new(1,1,1), SoundID = nil, SoundPitch = 1, SoundVolume = 5})
			for i = 1, 15 do
				WACKYEFFECT({Time = 60, EffectType = "Crystal", Size = Vector3.new(10,10,10), Size2 = Vector3.new(0,25,0), Transparency = 0.6, Transparency2 = 1, CFrame = root.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 10, RotationZ = 0, Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end
			Cso("182765513", root, 6, 1)
			root.CFrame = CF(CF(mouse.Hit.p) * CF(0, 2.8, 0).p, root.Position)
			for i = 1, 15 do
				WACKYEFFECT({Time = 60, EffectType = "Crystal", Size = Vector3.new(10,10,10), Size2 = Vector3.new(0,25,0), Transparency = 0.6, Transparency2 = 1, CFrame = root.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 10, RotationZ = 0, Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end
			WACKYEFFECT({Time = 80, EffectType = "Ring", Size = Vector3.new(0,0,0), Size2 = Vector3.new(2,2,0.1), Transparency = 0.3, Transparency2 = 1, CFrame = root.CFrame * angles(Rad(90), Rad(0), Rad(0)) * CF(0,0,0), MoveToPos = nil, RotationX = Mrandom(-10, 10), RotationY = Mrandom(-5, 5), RotationZ = Mrandom(-10, 10), Material = "Neon", Color = Color3.new(1,1,1), SoundID = nil, SoundPitch = 1, SoundVolume = 5})
			MagniDamage(root, 6, 5, 12, 20, "Normal")
		elseif key == "c" then
			IN_HEAVENS_NAME()
		elseif key == "m" then
			if Rotate == 1 then
				Rotate = 2 
			elseif Rotate == 2 then
				Rotate = 1
			end
		end
	end
end)
-------------------------------------------------------
--Start KeyBinds--
-------------------------------------------------------





-------------------------------------------------------
--Start Animations--
-------------------------------------------------------
lastsongpos = 0
local Music2 = Music:Clone()
while true do
	swait()
	sine = sine + change
	local torvel = (root.Velocity * Vector3.new(1, 0, 1)).magnitude
	local velderp = root.Velocity.y
	hitfloor, posfloor, norm = rayCast(root.Position, CFrame.new(root.Position, root.Position - Vector3.new(0, 1, 0)).lookVector, 4, char)
	if equipped == true or equipped == false then
		if attack == false then
			idle = idle + 1
		else
			idle = 0
		end
		local Walking = (math.abs(root.Velocity.x) > 1 or math.abs(root.Velocity.z) > 1)
		local State = (hum.PlatformStand and 'Paralyzed' or hum.Sit and 'Sit' or not hitfloor and root.Velocity.y < -1 and "Fall" or not hitfloor and root.Velocity.y > 1 and "Jump" or hitfloor and Walking and "Walk" or hitfloor and "Idle")
		local WALKSPEEDVALUE = 6 / (hum.WalkSpeed / 16)
		local TiltVelocity = CFrame.new(root.CFrame:vectorToObjectSpace(root.Velocity/1.6))
		coroutine.resume(coroutine.create(function()
			if Rotate == 1 then
				for S = 1, 5 do
					TopWeld.C1 = clerp(TopWeld.C1, CF(0, 0.5 * Cos(sine / 20), 0) * angles(Rad(-S), Rad(72 * S - sine / 1.5), Rad(0)), 0.1)
					BotWeld.C1 = clerp(BotWeld.C1, CF(0, -0.5 * Cos(sine / 20), 0) * angles(Rad(S), Rad(72 * S + sine / 1.5), Rad(0)), 0.1)
				end
			elseif Rotate == 2 then
				for S = 1, 5 do
					TopWeld.C1 = clerp(TopWeld.C1, CF(0, S, 0) * angles(Rad(-S), Rad(72 * S - sine / 1.5), Rad(S + sine / 1.5)), 0.1)
					BotWeld.C1 = clerp(BotWeld.C1, CF(0, -S, 0) * angles(Rad(S), Rad(72 * S + sine / 1.5), Rad(S + sine / 1.5)), 0.1)
				end
			end
		end))
		if(State == 'Jump')then
			if attack == false then
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-7 + 3 * Cos(sine / 20)), Rad(0), Rad(0)), 0.1)
				neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, ((1) - 1)) * angles(Rad(-30 + 6 * Sin(sine / 20)), Rad(0), Rad(0 + 9 * Cos(sine / 38))), 0.1)
				rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5, -0.7 - 0.1 * Cos(sine / 20) - Rad(0) , -0.5) * angles(Rad(-27 + 3 * Cos(sine / 20)), Rad(-20 + 1 * Cos(sine / 20)), Rad(0)) * angles(Rad(0 + 1 * Cos(sine / 20)), Rad(0), Rad(5)), 0.1)
				ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5, -0.9 - 0.1 * Cos(sine / 20) + Rad(0) , 0) * angles(Rad(-7 + 3 * Cos(sine / 20)), Rad(20 + 1 * Cos(sine / 20)), Rad(0)) * angles(Rad(0 - 1 * Cos(sine / 20)), Rad(0), Rad(-5)), 0.1)
				RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.1 * Cos(sine / 20), 0) * angles(Rad(110 + 10 * Cos(sine / 20)), Rad(10), Rad(35 + 6 * Sin(sine / 20))), 0.2)
				LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.1 * Cos(sine / 20), 0) * angles(Rad(110 + 10 * Cos(sine / 20)), Rad(-10), Rad(-35 - 6 * Sin(sine / 20))), 0.2)
			end
		elseif(State == 'Fall')then
			if attack == false then
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-7 + 3 * Cos(sine / 20)), Rad(0), Rad(0)), 0.1)
				neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, ((1) - 1)) * angles(Rad(20 + 6 * Sin(sine / 20)), Rad(0), Rad(0 + 9 * Cos(sine / 38))), 0.1)
				rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5, -0.9 - 0.1 * Cos(sine / 20) - Rad(0) , 0) * angles(Rad(-7 + 3 * Cos(sine / 20)), Rad(-20 + 1 * Cos(sine / 20)), Rad(0)) * angles(Rad(0 + 1 * Cos(sine / 20)), Rad(0), Rad(5)), 0.1)
				ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5, -0.9 - 0.1 * Cos(sine / 20) + Rad(0) , 0) * angles(Rad(-7 + 3 * Cos(sine / 20)), Rad(20 + 1 * Cos(sine / 20)), Rad(0)) * angles(Rad(0 - 1 * Cos(sine / 20)), Rad(0), Rad(-5)), 0.1)
				RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.1 * Cos(sine / 20), 0) * angles(Rad(45 + 10 * Cos(sine / 20)), Rad(10), Rad(15 + 6 * Sin(sine / 20))), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.1 * Cos(sine / 20), 0) * angles(Rad(45 + 10 * Cos(sine / 20)), Rad(-10), Rad(-15 - 6 * Sin(sine / 20))), 0.1)
			end
		elseif(State == 'Idle')then
			change = 1
			if attack == false then
				if hitfloor then
					if Mrandom(1, 100) == 1 then
						WACKYEFFECT({Time = 80, EffectType = "Ring", Size = Vector3.new(0,0,0), Size2 = Vector3.new(2,2,0.1), Transparency = 0.3, Transparency2 = 1, CFrame = root.CFrame * angles(Rad(90), Rad(0), Rad(0)) * CF(0,0,0), MoveToPos = nil, RotationX = Mrandom(-10, 10), RotationY = Mrandom(-5, 5), RotationZ = Mrandom(-10, 10), Material = "Neon", Color = Color3.new(1,1,1), SoundID = nil, SoundPitch = 1, SoundVolume = 5})
					end
				end
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, 0.7 + 0.3 * Cos(sine / 20)) * angles(Rad(0 - 7 * Sin(sine / 20)), Rad(0 + 5 * Cos(sine / 20)), Rad(0)), 0.1)
				neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1) - 1)) * angles(Rad(0 + 5 * Cos(sine / 20)), Rad(0 + 5 * Cos(sine / 20)), Rad(0)), 0.1)
				rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5, -0.5  - 0.1 * Cos(sine / 20) - Rad(0) , -0.5) * angles(Rad(-25 - 7 * Sin(sine / 20)), Rad(-20 + 1 * Cos(sine / 20)), Rad(0 - 7 * Sin(sine / 20))) * angles(Rad(0 + 1 * Cos(sine / 20)), Rad(0), Rad(4)), 0.1)
				ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5, -0.9  - 0.1 * Cos(sine / 20) + Rad(0) , 0) * angles(Rad(-5 - 7 * Sin(sine / 20)), Rad(20 + 1 * Cos(sine / 20)), Rad(0 - 7 * Sin(sine / 20))) * angles(Rad(0 - 1 * Cos(sine / 20)), Rad(0), Rad(-4)), 0.1)
				RW.C0 = clerp(RW.C0, CF(1, 0.5 + 0.1 * Cos(sine / 20), 0.5) * angles(Rad(-20 + 5 * Cos(sine / 20)), Rad(10), Rad(-30 + 5 * Cos(sine / 20))), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1, 0.5 + 0.1 * Cos(sine / 20), 0.5) * angles(Rad(-20 + 5 * Cos(sine / 20)), Rad(-10), Rad(30 - 5 * Cos(sine / 20))), 0.1)
			end
		elseif(State == 'Walk')then
			change = 1
			if attack == false then
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, 0.7 + 0.3 * Cos(sine / 20)) * angles(Rad(10 - 7 * Sin(sine / 20)) -Rad(TiltVelocity.z) * 1, Rad(0) -Rad(TiltVelocity.x) * 1, Rad(0)), 0.1)
				neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1) - 1)) * angles(Rad(0 + 5 * Cos(sine / 20)), Rad(0), Rad(0)), 0.1)
				rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5, -0.5  - 0.1 * Cos(sine / 20) - Rad(0) , -0.5) * angles(Rad(-35 - 7 * Sin(sine / 20)), Rad(-20 + 1 * Cos(sine / 20)), Rad(0)) * angles(Rad(0 + 1 * Cos(sine / 20)), Rad(0), Rad(4)), 0.1)
				ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5, -0.9  - 0.1 * Cos(sine / 20) + Rad(0) , 0) * angles(Rad(-15 - 7 * Sin(sine / 20)), Rad(20 + 1 * Cos(sine / 20)), Rad(0)) * angles(Rad(0 - 1 * Cos(sine / 20)), Rad(0), Rad(-4)), 0.1)
				RW.C0 = clerp(RW.C0, CF(1, 0.5 + 0.1 * Cos(sine / 20), 0.5) * angles(Rad(-20 + 5 * Cos(sine / 20)), Rad(10), Rad(-30 + 5 * Cos(sine / 20))), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1, 0.5 + 0.1 * Cos(sine / 20), 0.5) * angles(Rad(-20 + 5 * Cos(sine / 20)), Rad(-10), Rad(30 - 5 * Cos(sine / 20))), 0.1)
			elseif attack == true and movelegs == true then
				rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5, -0.9 - 0.5 * Cos(sine / WALKSPEEDVALUE) / 2, -0.2 + 0.6 * Cos(sine / WALKSPEEDVALUE) / 2)  * angles(Rad(-10 - 20 * Cos(sine / WALKSPEEDVALUE)) - root.RotVelocity.Y / 75 + -Sin(sine / WALKSPEEDVALUE) / 2.5, Rad(0 - 5 * Cos(sine / WALKSPEEDVALUE)), Rad(0)) * angles(Rad(0 + 2 * Cos(sine / WALKSPEEDVALUE)), Rad(0), Rad(0)), 0.3)
         		ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5, -0.9 + 0.5 * Cos(sine / WALKSPEEDVALUE) / 2, -0.2 - 0.6 * Cos(sine / WALKSPEEDVALUE) / 2) * angles(Rad(-10 + 20 * Cos(sine / WALKSPEEDVALUE)) + root.RotVelocity.Y / -75 + Sin(sine / WALKSPEEDVALUE) / 2.5, Rad(0 - 5 * Cos(sine / WALKSPEEDVALUE)), Rad(0)) * angles(Rad(0 - 2 * Cos(sine / WALKSPEEDVALUE)), Rad(0), Rad(0)), 0.3)
			end
		end
	end
	hum.Name = "HUM"
	hum.WalkSpeed = Speed
	coroutine.resume(coroutine.create(function()
		if Music.Parent == nil or Music == nil  then
			Music = Music2:Clone()
			Music.Parent = tors
			Music.Name = "BGMusic"
			Music.Pitch = 1
			Music.Volume = 2
			Music.Looped = true
			Music.archivable = false
			Music.TimePosition = lastsongpos
		else
			lastsongpos = Music.TimePosition		
		end
	end))
	if 0 < #Effects then
		for e = 1, #Effects do
			if Effects[e] ~= nil then
				local Thing = Effects[e]
				if Thing ~= nil then
					local Part = Thing[1]
					local Mode = Thing[2]
					local Delay = Thing[3]
					local IncX = Thing[4]
					local IncY = Thing[5]
					local IncZ = Thing[6]
					if 1 >= Thing[1].Transparency then
						if Thing[2] == "Block1" then
							Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
							local Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Block2" then
							Thing[1].CFrame = Thing[1].CFrame + Vector3.new(0, 0, 0)
							local Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Block3" then
							Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) + Vector3.new(0, 0.15, 0)
							local Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Cylinder" then
							local Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Blood" then
							local Mesh = Thing[7]
							Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, 0.5, 0)
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Elec" then
							local Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Disappear" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Shatter" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
							Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
							Thing[6] = Thing[6] + Thing[5]
						end
					else
						Part.Parent = nil
						table.remove(Effects, e)
					end
				end
			end
		end
	end
end
-------------------------------------------------------
--End Animations And Script--
-------------------------------------------------------
