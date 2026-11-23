local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local StarterGui = game:GetService("StarterGui")
local Workspace = game:GetService("Workspace")
local TweenService = game:GetService("TweenService")
local Debris = game:GetService("Debris")
local UserInputService = game:GetService("UserInputService")
local TeleportService = game:GetService("TeleportService")

local lp = Players.LocalPlayer
local char = lp.Character or lp.CharacterAdded:Wait()

local function safeDestroyMesh(accessoryName, meshClass)
	local acc = char:FindFirstChild(accessoryName)
	local handle = acc and acc:FindFirstChild("Handle")
	local mesh = handle and handle:FindFirstChildOfClass(meshClass or "DataModelMesh")
	if mesh then
		mesh:Destroy()
	end
end

safeDestroyMesh("VANS_Umbrella", "SpecialMesh")
safeDestroyMesh("PogoStick", "SpecialMesh")
safeDestroyMesh("PlaneModel", "SpecialMesh")
safeDestroyMesh("RedcliffKnight_HelmetAccessory", "SpecialMesh")
safeDestroyMesh("HatAccessory", "SpecialMesh")
safeDestroyMesh("RunningBull", "SpecialMesh")

if not game:GetService("ReplicatedStorage"):FindFirstChild("01_server") then
	pcall(function()
		TeleportService:Teleport(17574618959, lp)
	end)
	return
end

for _, limbName in ipairs({ "Right Arm", "Left Arm", "Right Leg", "Left Leg" }) do
	local limb = char:FindFirstChild(limbName)
	if limb and limb:IsA("BasePart") then
		limb.Parent = nil
		limb.Transparency = 1
		limb.Parent = char
	end
end

local v3_net, v3_808 = Vector3.new(0, 25.1, 0), Vector3.new(8, 0, 8)
local function getNetlessVelocity(realPartVelocity)
	local mag = realPartVelocity.Magnitude
	if mag > 1 then
		local unit = realPartVelocity.Unit
		if (unit.Y > 0.25) or (unit.Y < -0.75) then
			return unit * (25.1 / unit.Y)
		end
	end
	return v3_net + (realPartVelocity * v3_808)
end

local simradius = "shp" -- "shp" | "ssr" | false
local antiragdoll = true
local newanimate = false
local discharscripts = true
local R15toR6 = true
local hatcollide = true
local humState16 = true
local addtools = false
local hedafterneck = false
local healthHide = false
local loadtime = Players.RespawnTime + 0.5
local method = 0 -- 0..5
local alignmode = 3 -- 1..3

local stepped = RunService.Stepped
local heartbeat = RunService.Heartbeat
local renderstepped = RunService.RenderStepped
local cf = CFrame.new
local v3 = Vector3.new
local v3_0 = v3(0, 0, 0)
local inf = math.huge

local c = char
if not (c and c.Parent) then
	return
end

c.Destroying:Connect(function()
	c = nil
end)

local function gp(parent, name, className)
	if typeof(parent) == "Instance" then
		for _, v in ipairs(parent:GetChildren()) do
			if (v.Name == name) and v:IsA(className) then
				return v
			end
		end
	end
	return nil
end

healthHide = healthHide and ((method == 0) or (method == 2)) and gp(c, "Head", "BasePart")

local function align(Part0, Part1)
	if not (Part0 and Part1) then
		return
	end
	Part0.CustomPhysicalProperties = PhysicalProperties.new(0.0001, 0.0001, 0.0001, 0.0001, 0.0001)

	local att0 = Instance.new("Attachment")
	att0.Orientation = v3_0
	att0.Position = v3_0
	att0.Name = "att0_" .. Part0.Name
	att0.Parent = Part0

	local att1 = Instance.new("Attachment")
	att1.Orientation = v3_0
	att1.Position = v3_0
	att1.Name = "att1_" .. Part1.Name
	att1.Parent = Part1

	if (alignmode == 1) or (alignmode == 2) then
		local ape = Instance.new("AlignPosition")
		ape.ApplyAtCenterOfMass = false
		ape.MaxForce = inf
		ape.MaxVelocity = inf
		ape.ReactionForceEnabled = false
		ape.Responsiveness = 200
		ape.Attachment1 = att1
		ape.Attachment0 = att0
		ape.Name = "AlignPositionRtrue"
		ape.RigidityEnabled = true
		ape.Parent = att0
	end

	if (alignmode == 2) or (alignmode == 3) then
		local apd = Instance.new("AlignPosition")
		apd.ApplyAtCenterOfMass = false
		apd.MaxForce = inf
		apd.MaxVelocity = inf
		apd.ReactionForceEnabled = false
		apd.Responsiveness = 200
		apd.Attachment1 = att1
		apd.Attachment0 = att0
		apd.Name = "AlignPositionRfalse"
		apd.RigidityEnabled = false
		apd.Parent = att0
	end

	local ao = Instance.new("AlignOrientation")
	ao.MaxAngularVelocity = inf
	ao.MaxTorque = inf
	ao.PrimaryAxisOnly = false
	ao.ReactionTorqueEnabled = false
	ao.Responsiveness = 200
	ao.Attachment1 = att1
	ao.Attachment0 = att0
	ao.RigidityEnabled = false
	ao.Parent = att0

	if type(getNetlessVelocity) == "function" then
		local realVelocity = v3_0
		local steppedcon = stepped:Connect(function()
			if Part0 then
				Part0.AssemblyLinearVelocity = realVelocity
			end
		end)
		local heartbeatcon = heartbeat:Connect(function()
			if Part0 then
				realVelocity = Part0.AssemblyLinearVelocity
				Part0.AssemblyLinearVelocity = getNetlessVelocity(realVelocity)
			end
		end)
		Part0.Destroying:Connect(function()
			Part0 = nil
			steppedcon:Disconnect()
			heartbeatcon:Disconnect()
		end)
	end
end

local function respawnrequest()
	local camera = Workspace.CurrentCamera
	local ccfr = camera and camera.CFrame
	local currentChar = lp.Character
	lp.Character = nil
	lp.Character = currentChar
	if camera and ccfr then
		local con
		con = camera.Changed:Connect(function(prop)
			if (prop ~= "Parent") and (prop ~= "CFrame") then
				return
			end
			camera.CFrame = ccfr
			con:Disconnect()
		end)
	end
end

local destroyhum = (method == 4) or (method == 5)
local breakjoints = (method == 0) or (method == 4)
local antirespawn = (method == 0) or (method == 2) or (method == 3)

hatcollide = hatcollide and (method == 0)
addtools = addtools and gp(lp, "Backpack", "Backpack")

local fenv = getfenv()
local shp = fenv.sethiddenproperty or fenv.set_hidden_property or fenv.set_hidden_prop or fenv.sethiddenprop
local ssr = fenv.setsimulationradius or fenv.set_simulation_radius or fenv.set_sim_radius or fenv.setsimradius or fenv.set_simulation_rad or fenv.setsimulationrad

if shp and (simradius == "shp") then
	task.spawn(function()
		while c and heartbeat:Wait() do
			pcall(shp, lp, "SimulationRadius", inf)
		end
	end)
elseif ssr and (simradius == "ssr") then
	task.spawn(function()
		while c and heartbeat:Wait() do
			pcall(ssr, inf)
		end
	end)
end

local function stripRagdoll(v)
	if v:IsA("HingeConstraint") or v:IsA("BallSocketConstraint") then
		v.Parent = nil
	end
end

if antiragdoll then
	for _, v in ipairs(c:GetDescendants()) do
		stripRagdoll(v)
	end
	c.DescendantAdded:Connect(stripRagdoll)
end

if antirespawn then
	respawnrequest()
end

if method == 0 then
	task.wait(loadtime)
	if not c then
		return
	end
end

if discharscripts then
	for _, v in ipairs(c:GetChildren()) do
		if v:IsA("LocalScript") then
			v.Disabled = true
		end
	end
elseif newanimate then
	local animate = gp(c, "Animate", "LocalScript")
	if animate and (not animate.Disabled) then
		animate.Disabled = true
	else
		newanimate = false
	end
end

if addtools then
	for _, v in ipairs(addtools:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = c
		end
	end
end

pcall(function()
	settings().Physics.AllowSleep = false
	settings().Physics.PhysicsEnvironmentalThrottle = Enum.EnviromentalPhysicsThrottle.Disabled
end)

local OLDscripts = {}
for _, v in ipairs(c:GetDescendants()) do
	if v.ClassName == "Script" then
		table.insert(OLDscripts, v)
	end
end

local scriptNames = {}
for i, v in ipairs(c:GetDescendants()) do
	if v:IsA("BasePart") then
		local newName = tostring(i)
		local exists = true
		while exists do
			exists = false
			for _, oldScr in ipairs(OLDscripts) do
				if oldScr.Name == newName then
					exists = true
				end
			end
			if exists then
				newName = newName .. "_"
			end
		end
		table.insert(scriptNames, newName)
		local marker = Instance.new("Script")
		marker.Name = newName
		marker.Parent = v
	end
end

c.Archivable = true
local hum = c:FindFirstChildOfClass("Humanoid")
if hum then
	for _, track in ipairs(hum:GetPlayingAnimationTracks()) do
		track:Stop()
	end
end

local cl = c:Clone()
if hum and humState16 then
	hum:ChangeState(Enum.HumanoidStateType.Physics)
	if destroyhum then
		task.wait(1.6)
	end
end
if hum and hum.Parent and destroyhum then
	hum:Destroy()
end

if not c then
	return
end

local head = gp(c, "Head", "BasePart")
local torso = gp(c, "Torso", "BasePart") or gp(c, "UpperTorso", "BasePart")
local root = gp(c, "HumanoidRootPart", "BasePart")
if hatcollide and c:FindFirstChildOfClass("Accessory") then
	local anything = c:FindFirstChildOfClass("BodyColors") or gp(c, "Health", "Script")
	if torso and root and anything then
		torso:Destroy()
		root:Destroy()
		if shp then
			for _, v in ipairs(c:GetChildren()) do
				if v:IsA("Accessory") then
					pcall(shp, v, "BackendAccoutrementState", 0)
				end
			end
		end
		anything:Destroy()
	end
end

for _, v in ipairs(cl:GetDescendants()) do
	if v:IsA("BasePart") then
		v.Transparency = 1
		v.Anchored = false
	end
end

local model = Instance.new("Model")
model.Name = model.ClassName
model.Parent = c

model.Destroying:Connect(function()
	model = nil
end)

for _, v in ipairs(c:GetChildren()) do
	if v ~= model then
		if addtools and v:IsA("Tool") then
			for _, v1 in ipairs(v:GetDescendants()) do
				if v1 and v1.Parent and v1:IsA("BasePart") then
					local bv = Instance.new("BodyVelocity")
					bv.Velocity = v3_0
					bv.MaxForce = v3(1000, 1000, 1000)
					bv.P = 1250
					bv.Name = "bv_" .. v.Name
					bv.Parent = v1
				end
			end
		end
		v.Parent = model
	end
end

if breakjoints then
	model:BreakJoints()
else
	if head and torso then
		for _, v in ipairs(model:GetDescendants()) do
			if v:IsA("Weld") or v:IsA("Snap") or v:IsA("Glue") or v:IsA("Motor") or v:IsA("Motor6D") then
				local save = ((v.Part0 == torso) and (v.Part1 == head)) or ((v.Part0 == head) and (v.Part1 == torso))
				if save then
					if hedafterneck then
						hedafterneck = v
					end
				else
					v:Destroy()
				end
			end
		end
	end
	if method == 3 then
		task.spawn(function()
			task.wait(loadtime)
			if model then
				model:BreakJoints()
			end
		end)
	end
end

cl.Parent = c
for _, v in ipairs(cl:GetChildren()) do
	v.Parent = c
end
cl:Destroy()

local modelDes = {}
for i, v in ipairs(model:GetDescendants()) do
	if v:IsA("BasePart") then
		local key = tostring(i)
		v.Destroying:Connect(function()
			modelDes[key] = nil
		end)
		modelDes[key] = v
	end
end

local modelcolcon
local function modelcolf()
	if model then
		for _, v in pairs(modelDes) do
			if v then
				v.CanCollide = false
			end
		end
	elseif modelcolcon then
		modelcolcon:Disconnect()
	end
end
modelcolcon = stepped:Connect(modelcolf)
modelcolf()

for _, scr in ipairs(model:GetDescendants()) do
	if (scr.ClassName == "Script") and table.find(scriptNames, scr.Name) then
		local Part0 = scr.Parent
		if Part0 and Part0:IsA("BasePart") then
			for _, scr1 in ipairs(c:GetDescendants()) do
				if (scr1.ClassName == "Script") and (scr1.Name == scr.Name) and (not scr1:IsDescendantOf(model)) then
					local Part1 = scr1.Parent
					if Part1 and (Part1.ClassName == Part0.ClassName) and (Part1.Name == Part0.Name) then
						align(Part0, Part1)
						break
					end
				end
			end
		end
	end
end

if (typeof(hedafterneck) == "Instance") and head then
	local aligns = {}
	local con
	con = hedafterneck.Changed:Connect(function(prop)
		if (prop == "Parent") and not hedafterneck.Parent then
			con:Disconnect()
			for _, v in pairs(aligns) do
				if v then
					v.Enabled = true
				end
			end
		end
	end)
	for i, v in ipairs(head:GetDescendants()) do
		if v:IsA("AlignPosition") or v:IsA("AlignOrientation") then
			local key = tostring(i)
			aligns[key] = v
			v.Destroying:Connect(function()
				aligns[key] = nil
			end)
			v.Enabled = false
		end
	end
end

for _, v in ipairs(c:GetDescendants()) do
	if v and v.Parent then
		if v.ClassName == "Script" then
			if table.find(scriptNames, v.Name) then
				v:Destroy()
			end
		elseif not v:IsDescendantOf(model) then
			if v:IsA("Decal") then
				v.Transparency = 1
			elseif v:IsA("ForceField") then
				v.Visible = false
			elseif v:IsA("Sound") then
				v.Playing = false
			elseif v:IsA("BillboardGui") or v:IsA("SurfaceGui") or v:IsA("ParticleEmitter") or v:IsA("Fire") or v:IsA("Smoke") or v:IsA("Sparkles") then
				v.Enabled = false
			end
		end
	end
end

if newanimate then
	local animate = gp(c, "Animate", "LocalScript")
	if animate then
		animate.Disabled = false
	end
end

if addtools then
	for _, v in ipairs(c:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = addtools
		end
	end
end

local hum0 = model and model:FindFirstChildOfClass("Humanoid")
if hum0 then
	hum0.Destroying:Connect(function()
		hum0 = nil
	end)
end

local hum1 = c:FindFirstChildOfClass("Humanoid")
if hum1 then
	hum1.Destroying:Connect(function()
		hum1 = nil
	end)
end

if hum1 then
	if Workspace.CurrentCamera then
		Workspace.CurrentCamera.CameraSubject = hum1
	end
	local camSubCon
	local function camSubFunc()
		if camSubCon then
			camSubCon:Disconnect()
		end
		if c and hum1 and Workspace.CurrentCamera then
			Workspace.CurrentCamera.CameraSubject = hum1
		end
	end
	camSubCon = renderstepped:Connect(camSubFunc)
	if hum0 then
		hum0.Changed:Connect(function(prop)
			if hum1 and (prop == "Jump") then
				hum1.Jump = hum0.Jump
			end
		end)
	else
		respawnrequest()
	end
end

local rb = Instance.new("BindableEvent")
rb.Parent = c
rb.Event:Connect(function()
	rb:Destroy()
	StarterGui:SetCore("ResetButtonCallback", true)
	if destroyhum then
		c:BreakJoints()
		return
	end
	if hum0 and (hum0.Health > 0) then
		if model then
			model:BreakJoints()
		end
		hum0.Health = 0
	end
	if antirespawn then
		respawnrequest()
	end
end)
pcall(function()
	StarterGui:SetCore("ResetButtonCallback", rb)
end)

task.spawn(function()
	while c do
		if hum0 and hum1 then
			hum1.Jump = hum0.Jump
		end
		task.wait()
	end
	pcall(function()
		StarterGui:SetCore("ResetButtonCallback", true)
	end)
end)

R15toR6 = R15toR6 and hum1 and (hum1.RigType == Enum.HumanoidRigType.R15)
if R15toR6 then
	local basePart = gp(c, "HumanoidRootPart", "BasePart")
		or gp(c, "UpperTorso", "BasePart")
		or gp(c, "LowerTorso", "BasePart")
		or gp(c, "Head", "BasePart")
		or c:FindFirstChildWhichIsA("BasePart")
	if basePart then
		local cfr = basePart.CFrame
		local R6parts = {
			head = { Name = "Head", Size = v3(2, 1, 1), R15 = { Head = 0 } },
			torso = { Name = "Torso", Size = v3(2, 2, 1), R15 = { UpperTorso = 0.2, LowerTorso = -0.7 } },
			root = { Name = "HumanoidRootPart", Size = v3(2, 2, 1), R15 = { HumanoidRootPart = 0 } },
			leftArm = { Name = "Left Arm", Size = v3(1, 2, 1), R15 = { LeftHand = -0.7, LeftLowerArm = -0.2, LeftUpperArm = 0.4 } },
			rightArm = { Name = "Right Arm", Size = v3(1, 2, 1), R15 = { RightHand = -0.7, RightLowerArm = -0.2, RightUpperArm = 0.4 } },
			leftLeg = { Name = "Left Leg", Size = v3(1, 2, 1), R15 = { LeftFoot = -0.7, LeftLowerLeg = -0.15, LeftUpperLeg = 0.6 } },
			rightLeg = { Name = "Right Leg", Size = v3(1, 2, 1), R15 = { RightFoot = -0.7, RightLowerLeg = -0.15, RightUpperLeg = 0.6 } },
		}

		for _, v in ipairs(c:GetChildren()) do
			if v:IsA("BasePart") then
				for _, v1 in ipairs(v:GetChildren()) do
					if v1:IsA("Motor6D") then
						v1.Part0 = nil
					end
				end
			end
		end

		basePart.Archivable = true
		for key, v in pairs(R6parts) do
			local r6Part = basePart:Clone()
			r6Part:ClearAllChildren()
			r6Part.Name = v.Name
			r6Part.Size = v.Size
			r6Part.CFrame = cfr
			r6Part.Anchored = false
			r6Part.Transparency = 1
			r6Part.CanCollide = false

			for r15Name, offsetY in pairs(v.R15) do
				local R15part = gp(c, r15Name, "BasePart")
				if R15part then
					local att = gp(R15part, "att1_" .. r15Name, "Attachment")
					local weld = Instance.new("Weld")
					weld.Name = "Weld_" .. r15Name
					weld.Part0 = r6Part
					weld.Part1 = R15part
					weld.C0 = cf(0, offsetY, 0)
					weld.C1 = cf(0, 0, 0)
					weld.Parent = R15part
					R15part.Massless = true
					R15part.Name = "R15_" .. r15Name
					R15part.Parent = r6Part
					if att then
						att.Parent = r6Part
						att.Position = v3(0, offsetY, 0)
					end
				end
			end

			r6Part.Parent = c
			R6parts[key] = r6Part
		end

		local R6joints = {
			neck = { Parent = R6parts.torso, Name = "Neck", Part0 = R6parts.torso, Part1 = R6parts.head, C0 = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), C1 = cf(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) },
			rootJoint = { Parent = R6parts.root, Name = "RootJoint", Part0 = R6parts.root, Part1 = R6parts.torso, C0 = cf(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), C1 = cf(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) },
			rightShoulder = { Parent = R6parts.torso, Name = "Right Shoulder", Part0 = R6parts.torso, Part1 = R6parts.rightArm, C0 = cf(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0), C1 = cf(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0) },
			leftShoulder = { Parent = R6parts.torso, Name = "Left Shoulder", Part0 = R6parts.torso, Part1 = R6parts.leftArm, C0 = cf(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0), C1 = cf(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0) },
			rightHip = { Parent = R6parts.torso, Name = "Right Hip", Part0 = R6parts.torso, Part1 = R6parts.rightLeg, C0 = cf(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0), C1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0) },
			leftHip = { Parent = R6parts.torso, Name = "Left Hip", Part0 = R6parts.torso, Part1 = R6parts.leftLeg, C0 = cf(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0), C1 = cf(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0) },
		}

		for key, data in pairs(R6joints) do
			local joint = Instance.new("Motor6D")
			for prop, val in pairs(data) do
				joint[prop] = val
			end
			R6joints[key] = joint
		end

		hum1.RigType = Enum.HumanoidRigType.R6
		hum1.HipHeight = 0
	end
end

local function fakemotor()
	return { C0 = cf(), C1 = cf() }
end

local torso = gp(c, "Torso", "BasePart")
local root = gp(c, "HumanoidRootPart", "BasePart")

local neck = (torso and gp(torso, "Neck", "Motor6D")) or fakemotor()
local rootJoint = (root and gp(root, "RootJoint", "Motor6D")) or fakemotor()
local leftShoulder = (torso and gp(torso, "Left Shoulder", "Motor6D")) or fakemotor()
local rightShoulder = (torso and gp(torso, "Right Shoulder", "Motor6D")) or fakemotor()
local leftHip = (torso and gp(torso, "Left Hip", "Motor6D")) or fakemotor()
local rightHip = (torso and gp(torso, "Right Hip", "Motor6D")) or fakemotor()

local fps = 40
local fpsEvent = Instance.new("BindableEvent")
fpsEvent.Name = "40 fps"
fpsEvent.Parent = c
local frameInterval = 1 / fps
local tf = 0
local fpsCon
fpsCon = RunService.RenderStepped:Connect(function(dt)
	if not c then
		fpsCon:Disconnect()
		return
	end
	tf += dt
	if tf >= frameInterval then
		for _ = 1, math.floor(tf / frameInterval) do
			fpsEvent:Fire(c)
		end
		tf %= frameInterval
	end
end)

local biggesthandle
for _, v in ipairs(c:GetChildren()) do
	if v:IsA("Accessory") then
		local handle = gp(v, "Handle", "BasePart")
		if handle and ((not biggesthandle) or (biggesthandle.Size.Magnitude < handle.Size.Magnitude)) then
			biggesthandle = handle
		end
	end
end

local handle1 = biggesthandle and model and gp(gp(model, biggesthandle.Parent.Name, "Accessory"), "Handle", "BasePart")
if biggesthandle and handle1 then
	handle1.Destroying:Connect(function()
		handle1 = nil
	end)
	biggesthandle.Destroying:Connect(function()
		biggesthandle = nil
	end)
	biggesthandle:BreakJoints()
	biggesthandle.Anchored = true

	local function doForSignal(signal, vel)
		task.spawn(function()
			while signal:Wait() and c and handle1 and biggesthandle do
				handle1.AssemblyAngularVelocity = vel
			end
		end)
	end
	doForSignal(stepped, v3(100, 100, 100))
	doForSignal(renderstepped, v3(100, 100, 100))
	doForSignal(heartbeat, v3(1e9, 1e9, 1e9))
end

local function attachAccessoryToPart(accName, targetPart, pos, rot)
	if not targetPart then
		return
	end
	local acc = gp(c, accName, "Accessory")
	local handle = acc and gp(acc, "Handle", "BasePart")
	local att = handle and gp(handle, "att1_Handle", "Attachment")
	if att then
		att.Parent = targetPart
		att.Position = pos
		att.Rotation = rot
	end
end

local headPart = gp(c, "Head", "BasePart")
attachAccessoryToPart("RunningBull", headPart, v3(-1, 0.3, -1.65), v3(90, 0, 0))
attachAccessoryToPart("Metashard", headPart, v3(1, 0.3, -1.5), v3(0, -90, 0))

-----------//VEREUS\\-----------
-- Controls:
-- Q = Reverse Penance Stare
-- E = Doom Pillars
-- T = Unleashed Evil Ball
-- Y = The Hunt Is On
-- Z = Crazy Xester Switch
-- X = Re_*101011Dact/^ed.exe

local Player = lp
local Character = c
local humVereus = Character:FindFirstChildOfClass("Humanoid")
if humVereus then
	humVereus.Name = "vereus"
end
local hum = humVereus

local LeftArm = gp(Character, "Left Arm", "BasePart")
local LeftLeg = gp(Character, "Left Leg", "BasePart")
local RightArm = gp(Character, "Right Arm", "BasePart")
local RightLeg = gp(Character, "Right Leg", "BasePart")
local Root = gp(Character, "HumanoidRootPart", "BasePart")
local Head = gp(Character, "Head", "BasePart")
local Torso = gp(Character, "Torso", "BasePart")
local Neck = Torso and gp(Torso, "Neck", "Motor6D")

if not (hum and Root and Head and Torso) then
	warn("Missing core R6 character parts.")
	return
end

local attacking = false
local laughing = false
local xester = false
local rachjumper = false
local ws = 92
local hpheight = 5.8
local huntdown = false
local tauntdebounce = false
local MseGuide = true
local position = "Idle"
local mouse = Player:GetMouse()
local sine = 0
local change = 0.5
local debounce = false

local dmt2 = { 143536946, 2858940717 }
local laughs = { 2011349649, 2011349983, 2011351501, 2011352223, 2011355991, 2011356475 }
local soundtable2 = {
	2616767970, 2614901458, 2616891279, 2614896603, 2616768521, 2616848595,
	2614905967, 2614918002, 2563244734, 2563244134, 2563244444, 2563244999,
	2563245407, 2563654940, 2563656758, 2563658474, 2563659001,
}

local function makeManualWeld(parent, part0, part1, c0)
	if not (parent and part0) then
		return { C0 = c0 or cf() }
	end
	local w = Instance.new("ManualWeld")
	w.Part0 = part0
	w.Part1 = part1
	w.C0 = c0 or cf()
	w.Parent = parent
	return w
end

local HEADLERP = makeManualWeld(Head, Head, Head, cf(0, -1.5, -0.5) * CFrame.Angles(math.rad(30), 0, 0))
local TORSOLERP = makeManualWeld(Root, Torso, nil, cf())
local ROOTLERP = makeManualWeld(Root, Root, Torso, cf())
local RIGHTARMLERP = RightArm and makeManualWeld(RightArm, RightArm, Torso, cf(-1.5, 0, 0)) or fakemotor()
local LEFTARMLERP = LeftArm and makeManualWeld(LeftArm, LeftArm, Torso, cf(1.5, 0, 0)) or fakemotor()
local RIGHTLEGLERP = RightLeg and makeManualWeld(RightLeg, RightLeg, Torso, cf(-0.5, 2, 0)) or fakemotor()
local LEFTLEGLERP = LeftLeg and makeManualWeld(LeftLeg, LeftLeg, Torso, cf(0.5, 2, 0)) or fakemotor()

local function weldBetween(a, b)
	if not (a and b) then
		return nil
	end
	local weld = Instance.new("ManualWeld")
	weld.Part0 = a
	weld.Part1 = b
	weld.C0 = a.CFrame:Inverse() * b.CFrame
	weld.Parent = a
	return weld
end

local function swait(num)
	local count = (num == nil or num <= 0) and 1 or num
	for _ = 1, count do
		RunService.Stepped:Wait()
	end
end

task.spawn(function()
	while Character and hum do
		hum.WalkSpeed = ws
		task.wait()
	end
end)

task.spawn(function()
	for _, v in ipairs(Character:GetChildren()) do
		if v:IsA("BasePart") and v ~= Root then
			v.Anchored = false
		end
	end
	while Character and hum do
		hum.MaxHealth = math.huge
		hum.Health = math.huge
		task.wait(0.1)
	end
end)

local ff = Instance.new("ForceField")
ff.Visible = false
ff.Parent = Character

for _, x in ipairs(Character:GetChildren()) do
	if x:IsA("Decal") then
		x:Destroy()
	end
end

local function damagealll(Radius, Position)
	local Returning = {}
	for _, v in ipairs(Workspace:GetChildren()) do
		if v ~= Character then
			local targetHum = v:FindFirstChildOfClass("Humanoid")
			local anchorPart = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
			if targetHum and anchorPart then
				if (anchorPart.Position - Position).Magnitude < Radius then
					table.insert(Returning, v)
				end
			end
		end
	end
	return Returning
end

local function SOUND(parent, soundId, vol, loop, removeAfter)
	if not parent then
		return nil
	end
	local so = Instance.new("Sound")
	so.SoundId = "rbxassetid://" .. tostring(soundId)
	so.Volume = vol
	so.Looped = loop
	so.Parent = parent
	so:Play()
	if removeAfter then
		Debris:AddItem(so, removeAfter)
	end
	return so
end

local function createDoomTheme()
	local chosen = dmt2[math.random(1, #dmt2)]
	local s = Instance.new("Sound")
	s.Volume = 4
	s.Name = "doomtheme"
	s.Looped = true
	s.SoundId = "rbxassetid://" .. tostring(chosen)
	s.Pitch = (chosen == 2858940717) and 0.49 or 1
	s.Parent = Torso
	s:Play()
	return s
end

local doomtheme = createDoomTheme()
Torso.ChildRemoved:Connect(function(removed)
	if removed.Name == "doomtheme" then
		if xester then
			doomtheme = Instance.new("Sound")
			doomtheme.Volume = 4
			doomtheme.Name = "doomtheme"
			doomtheme.Looped = true
			doomtheme.SoundId = "rbxassetid://1382488262"
			doomtheme.TimePosition = 20.72
			doomtheme.Parent = Torso
			doomtheme:Play()
		else
			doomtheme = createDoomTheme()
		end
	end
end)

local bighead = Instance.new("Part")
bighead.Size = v3(0, 0, 0)
bighead.Anchored = false
bighead.CanCollide = false
bighead.Locked = true
bighead.BrickColor = BrickColor.new("Really black")
bighead.CFrame = Head.CFrame
bighead.Parent = Torso
local bigheadweld = weldBetween(bighead, Head)
local headmesh = Instance.new("SpecialMesh")
headmesh.MeshType = Enum.MeshType.Head
headmesh.Scale = v3(1.25, 1.25, 1.25)
headmesh.Parent = bighead

local umbrella = Character:FindFirstChild("VANS_Umbrella")
local umbrellaHandle = umbrella and umbrella:FindFirstChild("Handle")
local umbrellaAtt = umbrellaHandle and umbrellaHandle:FindFirstChild("att1_Handle")
if umbrellaAtt then
	umbrellaAtt.Parent = bighead
	umbrellaAtt.Rotation = v3(0, 0, 0)
end

local mask = Instance.new("Part")
mask.Size = v3(0.1, 0.39, 0.1)
mask.Anchored = false
mask.Locked = true
mask.CanCollide = false
mask.BrickColor = BrickColor.new("White")
mask.Material = Enum.Material.CorrodedMetal
mask.Parent = Torso
local maskweld = weldBetween(mask, bighead)
if maskweld then
	maskweld.C0 = cf(0, -2.4, 0) * CFrame.Angles(math.rad(90), 0, 0)
end
local maskmesh = Instance.new("SpecialMesh")
maskmesh.Scale = v3(0, 0, 0)
maskmesh.Parent = mask

local lightpart1 = Instance.new("Part")
lightpart1.Size = v3(2.42, 2, 0.516)
lightpart1.Anchored = false
lightpart1.Transparency = 1
lightpart1.BrickColor = BrickColor.new("White")
lightpart1.Material = Enum.Material.Neon
lightpart1.Parent = Head
local lightpart1weld = weldBetween(lightpart1, Head)
if lightpart1weld then
	lightpart1weld.C0 = cf(0, 0.9, 2.595)
end

local horns = Instance.new("Part")
horns.Size = v3(0.1, 0.1, 0.1)
horns.Material = Enum.Material.Slate
horns.Locked = true
horns.CanCollide = false
horns.Anchored = false
horns.BrickColor = BrickColor.new("Really black")
horns.CFrame = Head.CFrame * cf(0, 3, 0)
horns.Parent = Torso
local hornsmesh = Instance.new("SpecialMesh")
hornsmesh.Scale = v3(13, 12, 12)
hornsmesh.Parent = horns
local hornsweld = weldBetween(horns, bighead)
if hornsweld then
	hornsweld.C0 = cf(0, -3.3, 0.82) * CFrame.Angles(0, math.rad(180), 0)
end

local hand1 = Instance.new("Part")
hand1.Size = v3(0.1, 0.1, 0.1)
hand1.Anchored = false
hand1.Locked = true
hand1.CanCollide = false
hand1.BrickColor = BrickColor.new("White")
hand1.Material = Enum.Material.Slate
hand1.Parent = Torso
local hand1mesh = Instance.new("SpecialMesh")
hand1mesh.Scale = v3(8, 8, 8)
hand1mesh.Parent = hand1
local HAND1LERP = weldBetween(hand1, Torso)
if HAND1LERP then
	HAND1LERP.C0 = cf(4.5, -5, 6) * CFrame.Angles(math.rad(10), math.rad(-5), math.rad(-36))
end

local pogo = Character:FindFirstChild("PogoStick")
local pogoHandle = pogo and pogo:FindFirstChild("Handle")
local pogoAtt = pogoHandle and pogoHandle:FindFirstChild("att1_Handle")
if pogoAtt then
	pogoAtt.Parent = hand1
	pogoAtt.Rotation = v3(0, 90, 0)
	pogoAtt.Position = v3(1, -2, -1)
end

local hand2 = Instance.new("Part")
hand2.Size = v3(0.1, 0.1, 0.1)
hand2.Anchored = false
hand2.CanCollide = false
hand2.Locked = true
hand2.BrickColor = BrickColor.new("White")
hand2.Material = Enum.Material.Slate
hand2.Parent = Torso
local hand2mesh = Instance.new("SpecialMesh")
hand2mesh.Scale = v3(0.8, 0.8, 0.8)
hand2mesh.Parent = hand2
local HAND2LERP = weldBetween(hand2, Torso)
if HAND2LERP then
	HAND2LERP.C0 = HAND2LERP.C0:Inverse() * cf(-5, -5, 6) * CFrame.Angles(math.rad(90), math.rad(90), math.rad(95))
end

local plane = Character:FindFirstChild("PlaneModel")
local planeHandle = plane and plane:FindFirstChild("Handle")
local planeAtt = planeHandle and planeHandle:FindFirstChild("att1_Handle")
if planeAtt then
	planeAtt.Parent = hand2
	planeAtt.Rotation = v3(0, 0, 80)
	planeAtt.Position = v3(-1, -2, -1)
end

local mg1 = Instance.new("Part")
mg1.Anchored = false
mg1.CanCollide = false
mg1.Locked = true
mg1.Size = v3(0, 0, 0)
mg1.Shape = Enum.PartType.Ball
mg1.Material = Enum.Material.Neon
mg1.CFrame = hand1.CFrame
mg1.Parent = Torso
local mg1weld = weldBetween(mg1, hand1)
if mg1weld then
	mg1weld.C0 = cf(0, 2.7, -4)
end

local hatAcc = Character:FindFirstChild("HatAccessory")
local hatHandle = hatAcc and hatAcc:FindFirstChild("Handle")
local hatAtt = hatHandle and hatHandle:FindFirstChild("att1_Handle")
if hatAtt then
	hatAtt.Parent = mg1
	hatAtt.Rotation = v3(0, 0, 0)
	hatAtt.Position = v3(1, 0.8, 0)
end

local mg2 = Instance.new("Part")
mg2.Anchored = false
mg2.CanCollide = false
mg2.Shape = Enum.PartType.Ball
mg2.Locked = true
mg2.Size = v3(0, 0, 0)
mg2.Material = Enum.Material.Neon
mg2.CFrame = hand2.CFrame
mg2.Parent = Torso
local mg2weld = weldBetween(mg2, hand2)
if mg2weld then
	mg2weld.C0 = cf(0, 2.7, -4)
end

local blackhole2 = Instance.new("ParticleEmitter")
blackhole2.Size = NumberSequence.new(2, 2)
blackhole2.Rate = 50
blackhole2.Color = ColorSequence.new(BrickColor.new("Really black").Color)
blackhole2.RotSpeed = NumberRange.new(50)
blackhole2.Lifetime = NumberRange.new(1)
blackhole2.LockedToPart = true
blackhole2.Speed = NumberRange.new(0)
blackhole2.Parent = mg2

local knightAcc = Character:FindFirstChild("RedcliffKnight_HelmetAccessory")
local knightHandle = knightAcc and knightAcc:FindFirstChild("Handle")
local knightAtt = knightHandle and knightHandle:FindFirstChild("att1_Handle")
if knightAtt then
	knightAtt.Parent = mg2
	knightAtt.Rotation = v3(0, 0, 80)
	knightAtt.Position = v3(-1, 1, 0)
end

local function makeDecal(parent, textureId, color, face)
	local d = Instance.new("Decal")
	d.Texture = "rbxassetid://" .. tostring(textureId)
	d.Color3 = color
	d.Face = face or Enum.NormalId.Top
	d.Parent = parent
	return d
end

local slaten = makeDecal(hand2, 0, Color3.new(0, 0, 0))
local slaten2 = makeDecal(hand2, 0, Color3.new(0, 0, 0))
local slatez = makeDecal(hand1, 0, Color3.new(0, 0, 0))
local slatez2 = makeDecal(hand1, 0, Color3.new(0, 0, 0))
local slatez3 = makeDecal(hand1, 0, Color3.new(1, 1, 1))
local slatez4 = makeDecal(hand1, 0, Color3.new(1, 1, 1))
local slatex = makeDecal(horns, 0, Color3.new(0, 0, 0))
local slatex2 = makeDecal(horns, 0, Color3.new(0, 0, 0))
local slatex3 = makeDecal(horns, 0, Color3.new(0, 0, 0))
local slatex4 = makeDecal(horns, 0, Color3.new(0, 0, 0))
local slatex5 = makeDecal(horns, 0, Color3.new(0, 0, 0))

local function makeEye(size, material, brickColorName, c0, isSphereMesh)
	local p = Instance.new("Part")
	p.Anchored = false
	p.CanCollide = false
	p.Locked = true
	p.Shape = Enum.PartType.Ball
	p.Material = material
	p.Size = size
	p.BrickColor = BrickColor.new(brickColorName)
	p.Parent = Torso
	local w = weldBetween(p, Head)
	if w then
		w.C0 = c0
	end
	if isSphereMesh then
		local m = Instance.new("SpecialMesh")
		m.MeshType = Enum.MeshType.Sphere
		m.Parent = p
	end
	return p
end

local eyeball1 = makeEye(v3(0, 0, 0), Enum.Material.Glass, "Really black", cf(0.6, -0.2, 1.25), false)
local eyeball2 = makeEye(v3(0, 0, 0), Enum.Material.Glass, "Really black", cf(-0.6, -0.2, 1.25), false)
local eyeball3 = makeEye(v3(0, 0, 0), Enum.Material.Neon, "Crimson", cf(-1.2, -0.3, 2.65), true)
local eyeball4 = makeEye(v3(0, 0, 0), Enum.Material.Neon, "Crimson", cf(1.2, -0.3, 2.65), true)

task.spawn(function()
	while Character and eyeball3 and eyeball4 do
		task.wait(5)
		for _ = 1, 10 do
			eyeball3.Size -= v3(0, 0.04, 0)
			eyeball4.Size -= v3(0, 0.04, 0)
			swait()
		end
		for _ = 1, 10 do
			eyeball3.Size += v3(0, 0.04, 0)
			eyeball4.Size += v3(0, 0.04, 0)
			swait()
		end
	end
end)

local slateh = makeDecal(mask, 647441616, Color3.new(0, 0, 0))
local slateh2 = makeDecal(mask, 647417318, Color3.new(0, 0, 0))
local slateh3 = makeDecal(mask, 647410994, Color3.new(1, 1, 1))
local slateh4 = makeDecal(mask, 647413967, Color3.new(1, 1, 1))
local slateh5 = makeDecal(mask, 647393266, Color3.new(1, 1, 1))

local function hideDecalsAndEyes()
	for _, d in ipairs({
		slaten, slaten2, slateh, slateh2, slateh3, slateh4, slateh5,
		slatex, slatex2, slatex3, slatex4, slatex5, slatez, slatez2, slatez3, slatez4,
	}) do
		d.Transparency = 1
	end
	for _, eye in ipairs({ eyeball1, eyeball2, eyeball3, eyeball4 }) do
		eye.Transparency = 1
	end
end

local function shatterTarget(targetModel)
	if not (targetModel and targetModel:IsA("Model")) then
		return
	end
	local targetHum = targetModel:FindFirstChildOfClass("Humanoid")
	local centerPart = targetModel:FindFirstChild("UpperTorso") or targetModel:FindFirstChild("Torso") or targetModel:FindFirstChild("HumanoidRootPart")

	if centerPart then
		task.spawn(function()
			local w = Instance.new("Part")
			w.Anchored = true
			w.CanCollide = false
			w.Material = Enum.Material.Neon
			w.BrickColor = BrickColor.new("Really black")
			w.CFrame = centerPart.CFrame
			w.Size = v3(3, 3, 3)
			w.Shape = Enum.PartType.Ball
			w.Parent = Torso
			for _ = 1, 50 do
				w.Transparency += 0.05
				w.Size += v3(3.5, 3.5, 3.5)
				swait()
			end
			w:Destroy()
		end)
	end

	if targetHum then
		targetHum.Health = 0
	end
end

local particlemiter1, particlemiter2, particlemiter3, face

mouse.KeyDown:Connect(function(Press)
	Press = Press:lower()
	if Press == "x" then
		if debounce then
			return
		end
		debounce = true
		attacking = true
		ws = 0
		for _ = 1, 70 do
			ROOTLERP.C0 = ROOTLERP.C0:Lerp(cf(0, 0, 0) * CFrame.Angles(math.rad(-50), 0, 0), 0.1)
			HAND1LERP.C0 = HAND1LERP.C0:Lerp(cf(-2, -2, -4) * CFrame.Angles(math.rad(-50 + 2 * math.sin(sine)), math.rad(180 + 1 * math.sin(sine)), math.rad(30 + 2 * math.sin(sine))), 0.1)
			HAND2LERP.C0 = HAND2LERP.C0:Lerp(cf(2, -2, -4) * CFrame.Angles(math.rad(-50 + 2 * math.sin(sine)), math.rad(180 - 1 * math.sin(sine)), math.rad(-30 - 2 * math.sin(sine))), 0.1)
			swait()
		end
		rachjumper = true
		xester = false
		doomtheme.Volume = 0

		local particlecolor = ColorSequence.new(Color3.new(1, 1, 1))
		local function makeEmitter(parent, sizeVal)
			local pe = Instance.new("ParticleEmitter")
			pe.Enabled = true
			pe.Color = particlecolor
			pe.Texture = "rbxassetid://1390780157"
			pe.Lifetime = NumberRange.new(0.05)
			pe.Size = NumberSequence.new(sizeVal, sizeVal)
			pe.Rate = 4
			pe.Rotation = NumberRange.new(0, 360)
			pe.RotSpeed = NumberRange.new(0)
			pe.Speed = NumberRange.new(0)
			pe.Parent = parent
			return pe
		end

		particlemiter1 = makeEmitter(bighead, 7.5)
		particlemiter2 = makeEmitter(hand1, 5)
		particlemiter3 = makeEmitter(hand2, 5)

		task.spawn(function()
			SOUND(Torso, 159576182, 10, false, 10)
			task.wait(1)
			SOUND(Torso, 2565721367, 8, false, 15)
			task.wait(2.2)
			doomtheme.SoundId = "rbxassetid://2902017580"
			doomtheme.Pitch = 1
			doomtheme.TimePosition = 0
			doomtheme:Play()
			for _ = 1, 30 do
				doomtheme.Volume += 0.25
				swait()
			end
		end)

		hideDecalsAndEyes()
		lightpart1.Transparency = 1
		Root.Anchored = false
		horns.BrickColor = BrickColor.new("Really black")
		hornsmesh.VertexColor = v3(1, 0, 0)
		hornsmesh.Scale = v3(4.9, 5.5, 5.8)
		if hornsweld then
			hornsweld.C0 = cf(0, 3.8, -4.5)
		end
		mask.Transparency = 0
		maskmesh.Scale = v3(5.04, 5.04, 5.04)
		if maskweld then
			maskweld.C0 = cf(0, 1.45, -0.4)
		end
		hand1.BrickColor = BrickColor.new("Really black")
		hand2.BrickColor = BrickColor.new("Really black")

		if not face then
			face = makeDecal(bighead, 1127768638, Color3.new(1, 1, 1), Enum.NormalId.Front)
		end

		attacking = false
		ws = 92
		debounce = false
	elseif Press == "z" then
		if debounce then
			return
		end
		debounce = true
		attacking = true
		ws = 0
		for _ = 1, 70 do
			ROOTLERP.C0 = ROOTLERP.C0:Lerp(cf(0, 0, 0) * CFrame.Angles(math.rad(-50), 0, 0), 0.1)
			HAND1LERP.C0 = HAND1LERP.C0:Lerp(cf(-2, -2, -4) * CFrame.Angles(math.rad(-50 + 2 * math.sin(sine)), math.rad(180 + 1 * math.sin(sine)), math.rad(30 + 2 * math.sin(sine))), 0.1)
			HAND2LERP.C0 = HAND2LERP.C0:Lerp(cf(2, -2, -4) * CFrame.Angles(math.rad(-50 + 2 * math.sin(sine)), math.rad(180 - 1 * math.sin(sine)), math.rad(-30 - 2 * math.sin(sine))), 0.1)
			swait()
		end
		if rachjumper then
			if face then face:Destroy(); face = nil end
			if particlemiter1 then particlemiter1:Destroy(); particlemiter1 = nil end
			if particlemiter2 then particlemiter2:Destroy(); particlemiter2 = nil end
			if particlemiter3 then particlemiter3:Destroy(); particlemiter3 = nil end
		end
		xester = true
		rachjumper = false
		hand1.BrickColor = BrickColor.new("White")
		hand2.BrickColor = BrickColor.new("White")

		doomtheme.SoundId = "rbxassetid://1382488262"
		doomtheme.Volume = 6
		doomtheme.Pitch = 1
		doomtheme.TimePosition = 20.7
		doomtheme:Play()

		hideDecalsAndEyes()
		lightpart1.Transparency = 0
		local chosenLaugh = laughs[math.random(1, #laughs)]
		SOUND(Head, chosenLaugh, 10, false, 10)

		hornsmesh.VertexColor = v3(1, 0, 0)
		hornsmesh.Scale = v3(5.41, 5.41, 5.41)
		if hornsweld then
			hornsweld.C0 = cf(0, -2.75, -1.7)
		end
		mask.Transparency = 0
		maskmesh.Scale = v3(5.53, 5, 5.1)
		if maskweld then
			maskweld.C0 = cf(0, 0, 2.5)
		end

		for _ = 1, 30 do
			ROOTLERP.C0 = ROOTLERP.C0:Lerp(cf(0, 0, 0) * CFrame.Angles(math.rad(30), 0, 0), 0.1)
			swait()
		end

		ws = 155
		debounce = false
		attacking = false
	elseif Press == "q" then
		local targetModel = mouse.Target and mouse.Target:FindFirstAncestorOfClass("Model")
		local targetHum = targetModel and targetModel:FindFirstChildOfClass("Humanoid")
		if targetHum and not debounce then
			debounce = true
			ws = 0
			local g1 = Instance.new("BodyGyro")
			g1.D = 175
			g1.P = 20000
			g1.MaxTorque = v3(0, 9000, 0)
			g1.Parent = Root

			local targetHead = targetModel:FindFirstChild("Head")
			if targetHead then
				for _ = 1, 20 do
					g1.CFrame = g1.CFrame:Lerp(cf(Root.Position, targetHead.Position), 0.2)
					swait()
				end
			end
			Debris:AddItem(g1, 0.01)

			eyeball1.BrickColor = BrickColor.new("Crimson")
			eyeball1.Material = Enum.Material.Neon
			eyeball2.BrickColor = BrickColor.new("Crimson")
			eyeball2.Material = Enum.Material.Neon
			SOUND(Head, 2175667385, 10, false, 10)

			shatterTarget(targetModel)

			local resetGoal = { Color = BrickColor.new("Really black").Color }
			for _ = 1, 40 do
				TweenService:Create(eyeball1, TweenInfo.new(0.3, Enum.EasingStyle.Linear), resetGoal):Play()
				TweenService:Create(eyeball2, TweenInfo.new(0.3, Enum.EasingStyle.Linear), resetGoal):Play()
				swait()
			end

			eyeball1.BrickColor = BrickColor.new("Really black")
			eyeball2.BrickColor = BrickColor.new("Really black")
			eyeball1.Material = Enum.Material.Glass
			eyeball2.Material = Enum.Material.Glass
			ws = xester and 155 or 92
			debounce = false
		end
	elseif Press == "r" then
		local targetModel = mouse.Target and mouse.Target:FindFirstAncestorOfClass("Model")
		local enemy = targetModel and targetModel:FindFirstChildOfClass("Humanoid")
		local enemyTorso = enemy and (targetModel:FindFirstChild("Torso") or targetModel:FindFirstChild("UpperTorso"))
		if enemy and enemyTorso and not debounce then
			debounce = true
			attacking = true
			SOUND(Head, 1837106999, 10, false, 10)
			ws = 0

			local crimsonGoal = { Color = BrickColor.new("Crimson").Color }
			local blackGoal = { Color = BrickColor.new("Really black").Color }
			eyeball1.Material = Enum.Material.Neon
			eyeball2.Material = Enum.Material.Neon

			for _ = 1, 70 do
				TweenService:Create(eyeball1, TweenInfo.new(0.3, Enum.EasingStyle.Linear), crimsonGoal):Play()
				TweenService:Create(eyeball2, TweenInfo.new(0.3, Enum.EasingStyle.Linear), crimsonGoal):Play()
				ROOTLERP.C0 = ROOTLERP.C0:Lerp(cf(0, 0, 0) * CFrame.Angles(math.rad(-50), 0, 0), 0.05)
				HAND1LERP.C0 = HAND1LERP.C0:Lerp(cf(-2, -2, -4) * CFrame.Angles(math.rad(-50 + 2 * math.sin(sine)), math.rad(180 + 1 * math.sin(sine)), math.rad(30 + 2 * math.sin(sine))), 0.05)
				HAND2LERP.C0 = HAND2LERP.C0:Lerp(cf(2, -2, -4) * CFrame.Angles(math.rad(-50 + 2 * math.sin(sine)), math.rad(180 - 1 * math.sin(sine)), math.rad(-30 - 2 * math.sin(sine))), 0.05)
				swait()
			end

			attacking = false
			local targetfound = false
			local chasemusic = SOUND(Head, 2866313732, 10, true, nil)

			for _ = 1, 1000 do
				if targetfound or not enemyTorso.Parent then
					break
				end
				for _, v in ipairs(damagealll(15, Torso.Position)) do
					if v == targetModel then
						targetfound = true
						break
					end
				end
				huntdown = true
				hum:MoveTo(enemyTorso.Position)
				ws = 150
				swait()
			end

			if targetfound and enemyTorso.Parent then
				attacking = true
				local lweld = weldBetween(enemyTorso, hand1)
				if lweld then
					lweld.C0 = cf(2, -2, 0) * CFrame.Angles(0, math.rad(90), math.rad(90))
				end
				ws = 0
				enemy.WalkSpeed = 0
				enemy.JumpPower = 0
				SOUND(Head, 2867055627, 10, false, 10)

				for _ = 1, 120 do
					if not enemyTorso.Parent then
						break
					end
					ROOTLERP.C0 = ROOTLERP.C0:Lerp(cf(0, 0, 0) * CFrame.Angles(math.rad(-10), 0, 0), 0.05)
					HAND1LERP.C0 = HAND1LERP.C0:Lerp(cf(2, -7.5, -2.2) * CFrame.Angles(math.rad(90), 0, math.rad(-80)), 0.2)
					HAND2LERP.C0 = HAND2LERP.C0:Lerp(cf(-2, -7.5, -2.2) * CFrame.Angles(math.rad(90), 0, math.rad(80)), 0.2)
					swait()
				end

				if lweld then
					lweld:Destroy()
				end
				shatterTarget(targetModel)
				SOUND(hand1, 264486467, 8, false, 10)
			end

			huntdown = false
			for _ = 1, 25 do
				TweenService:Create(eyeball1, TweenInfo.new(0.5, Enum.EasingStyle.Linear), blackGoal):Play()
				TweenService:Create(eyeball2, TweenInfo.new(0.5, Enum.EasingStyle.Linear), blackGoal):Play()
				if chasemusic then
					chasemusic.Volume = math.max(0, chasemusic.Volume - 0.4)
				end
				swait()
			end
			if chasemusic then
				chasemusic:Destroy()
			end

			eyeball1.Material = Enum.Material.Glass
			eyeball2.Material = Enum.Material.Glass
			ws = xester and 155 or 92
			attacking = false
			debounce = false
		end
	end
end)

task.spawn(function()
	while Character and Root do
		if Root.AssemblyLinearVelocity.Magnitude < 10 then
			position = "Idle"
		else
			position = "Walking"
		end
		task.wait()
	end
end)

local OrgnC0 = Neck and Neck.C0 or cf()
task.spawn(function()
	while Character and Head and Torso do
		RunService.RenderStepped:Wait()
		if Neck and MseGuide and mouse and mouse.Hit then
			local origin = Head.CFrame.Position
			local point = mouse.Hit.Position
			local dist = (origin - point).Magnitude
			if dist > 0.01 then
				local diff = origin.Y - point.Y
				HEADLERP.C0 = cf(0, -1.5, 0)
				Neck.C0 = Neck.C0:Lerp(
					OrgnC0 * CFrame.Angles(math.atan(diff / dist), 0, ((origin - point).Unit):Cross(Torso.CFrame.LookVector).Y),
					0.1
				)
			end
		end
	end
end)

task.spawn(function()
	while Character and hum do
		hpheight = 5.8 + 0.95 * math.sin(sine / 12)
		hum.HipHeight = hpheight
		swait()
	end
end)

task.spawn(function()
	while Character do
		sine += change
		if position == "Walking" and not attacking then
			change = huntdown and 0.85 or 0.5
			if xester then
				ws = 155
				HAND1LERP.C0 = HAND1LERP.C0:Lerp(cf(5.9, -7, 5) * CFrame.Angles(math.rad(212 + 3 * math.sin(sine / 6)), math.rad(-25), math.rad(2 * math.sin(sine / 6))), 0.2)
				HAND2LERP.C0 = HAND2LERP.C0:Lerp(cf(-5.9, -7, 5) * CFrame.Angles(math.rad(212 + 3 * math.sin(sine / 6)), math.rad(25), math.rad(2 * math.sin(sine / 6))), 0.2)
				ROOTLERP.C0 = ROOTLERP.C0:Lerp(cf(0, 0, 0) * CFrame.Angles(0, Root.AssemblyAngularVelocity.Y / 15, Root.AssemblyAngularVelocity.Y / 19), 0.2)
			else
				ws = 92
				HAND1LERP.C0 = HAND1LERP.C0:Lerp(cf(4.2 + math.sin(sine / 3.5), -5 + 0.5 * math.sin(sine / 3.5), 6) * CFrame.Angles(math.rad(150 + 120 * math.sin(sine / 3.5)), math.rad(30 * math.sin(sine / 3.5)), math.rad(-17 * math.sin(sine / 3.5))), 0.2)
				HAND2LERP.C0 = HAND2LERP.C0:Lerp(cf(-4.2 + math.sin(sine / 3.5), -5 + 0.5 * math.sin(sine / 3.5), 6) * CFrame.Angles(math.rad(150 + 120 * -math.sin(sine / 3.5)), math.rad(30 * math.sin(sine / 3.5)), math.rad(-17 * math.sin(sine / 3.5))), 0.2)
				ROOTLERP.C0 = ROOTLERP.C0:Lerp(cf(0, math.sin(sine / 1.75), 0) * CFrame.Angles(math.rad(5 * math.sin(sine / 3.5)), math.rad(10 * math.sin(sine / 3.5)) + Root.AssemblyAngularVelocity.Y / 15, Root.AssemblyAngularVelocity.Y / 19), 0.2)
			end
			LEFTARMLERP.C0 = LEFTARMLERP.C0:Lerp(cf(1.5, 0.78, 0) * CFrame.Angles(math.rad(180 + 4 * math.sin(sine / 12)), math.rad(4), math.rad(35)), 0.25)
			RIGHTARMLERP.C0 = RIGHTARMLERP.C0:Lerp(cf(-1.5, 0.78, 0) * CFrame.Angles(math.rad(180 + 4 * math.sin(sine / 12)), math.rad(-4), math.rad(-35)), 0.25)
			RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:Lerp(cf(-0.58, 1.8, 0) * CFrame.Angles(math.rad(6 + math.sin(sine / 12)), math.rad(-2 + 2 * math.sin(sine / 12)), math.rad(5 - math.sin(sine / 12))), 0.2)
			LEFTLEGLERP.C0 = LEFTLEGLERP.C0:Lerp(cf(1.2, 1.3, -0.12) * CFrame.Angles(math.rad(-9 + 0.5 * math.sin(sine / 12)), math.rad(2 - math.sin(sine / 12)), math.rad(-35 + math.sin(sine / 12))), 0.2)
		elseif position == "Idle" and not attacking then
			change = 0.5
			HAND1LERP.C0 = HAND1LERP.C0:Lerp(cf(4.5, -5 + 0.5 * math.sin(sine / 14), 6) * CFrame.Angles(math.rad(10 + math.sin(sine / 13)), math.rad(-5 + 5 * math.sin(sine / 12)), math.rad(-36 - 4 * math.sin(sine / 11))), 0.2)
			HAND2LERP.C0 = HAND2LERP.C0:Lerp(cf(-5, -5 + 0.5 * math.sin(sine / 14), 6) * CFrame.Angles(math.rad(13 - 3 * math.sin(sine / 12)), math.rad(36 - 3 * math.sin(sine / 13)), math.rad(35 + 2 * math.sin(sine / 11))), 0.2)
			ROOTLERP.C0 = ROOTLERP.C0:Lerp(cf(0, 0, 0) * CFrame.Angles(math.rad(5 * math.sin(sine / 12)), 0, 0), 0.2)
			LEFTARMLERP.C0 = LEFTARMLERP.C0:Lerp(cf(1.5, 0.78, 0) * CFrame.Angles(math.rad(180 + 4 * math.sin(sine / 12)), math.rad(4), math.rad(35)), 0.25)
			RIGHTARMLERP.C0 = RIGHTARMLERP.C0:Lerp(cf(-1.5, 0.78, 0) * CFrame.Angles(math.rad(180 + 4 * math.sin(sine / 12)), math.rad(-4), math.rad(-35)), 0.25)
			RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:Lerp(cf(-0.58, 1.8, 0) * CFrame.Angles(math.rad(6 + math.sin(sine / 12)), math.rad(-2 + 2 * math.sin(sine / 12)), math.rad(5 - math.sin(sine / 12))), 0.2)
			LEFTLEGLERP.C0 = LEFTLEGLERP.C0:Lerp(cf(1.2, 1.3, -0.12) * CFrame.Angles(math.rad(-9 + 0.5 * math.sin(sine / 12)), math.rad(2 - math.sin(sine / 12)), math.rad(-35 + math.sin(sine / 12))), 0.2)
		end
		swait()
	end
end)

warn("The one you fear, Made by Supr14.")
