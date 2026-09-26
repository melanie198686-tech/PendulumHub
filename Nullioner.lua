-- MADE BY ELLERNATE
local TextChatService = game:GetService("TextChatService")
local GeneralChannel = TextChatService.TextChannels:WaitForChild("RBXGeneral")

local function SendChatMessage(message)
	GeneralChannel:SendAsync(message)
	task.wait(1)
end

SendChatMessage("-gh 48474313 4391384843 48474294 62724852 451220849 63690008 62234425")
SendChatMessage("-pd")
SendChatMessage("-net")

FakeLimbs = {["Head"] = nil,["Torso1"] = nil,["Torso2"] = nil,["Right Arm"] = nil,["Left Arm"] = nil,["Right Leg"] = nil,["Left Leg"] = nil}
Accessorys = {}

local ModelsRequire = game:GetObjects("rbxassetid://7981107344")
print(ModelsRequire[1])


local HumanRoot = game.Players.LocalPlayer.Character.HumanoidRootPart
function StickAcc(Part0,Part1,Angle,Position)
	Part0:FindFirstChildWhichIsA("Weld"):Destroy()
	local AlignPos = Instance.new('AlignPosition', Part1)
	AlignPos.ApplyAtCenterOfMass = true;
	AlignPos.MaxForce = 67752;
	AlignPos.MaxVelocity = math.huge/9e110;
	AlignPos.ReactionForceEnabled = false;
	AlignPos.Responsiveness = 200;
	AlignPos.RigidityEnabled = false;
	local AlignOri = Instance.new('AlignOrientation', Part1)
	AlignOri.MaxAngularVelocity = math.huge/9e110;
	AlignOri.MaxTorque = 67752;
	AlignOri.PrimaryAxisOnly = false;
	AlignOri.ReactionTorqueEnabled = false;
	AlignOri.Responsiveness = 200;
	AlignOri.RigidityEnabled = false;
	local AttachmentA=Instance.new('Attachment',Part1)
	local AttachmentB=Instance.new('Attachment',Part0)
	local AttachmentC=Instance.new('Attachment',Part1)
	local AttachmentD=Instance.new('Attachment',Part0)
	AlignPos.Attachment1 = AttachmentA;
	AlignPos.Attachment0 = AttachmentB;
	AlignOri.Attachment1 = AttachmentC;
	AlignOri.Attachment0 = AttachmentD;
	AttachmentC.Orientation = Angle
	Part0.Parent = FakeCharacter
	if Position then
		AttachmentA.Position = Position
	end
	game:GetService("RunService").Heartbeat:connect(function()
		Part0.Velocity = Vector3.new(0,35,0)
	end)
end

for i, part in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
	if part:IsA("Accessory") then
		if part.Handle.Size == Vector3.new(1, 1, 2) then
			if FakeLimbs["Right Arm"] == nil then
				FakeLimbs["Right Arm"] = part.Handle
			elseif FakeLimbs["Left Arm"] == nil then
				FakeLimbs["Left Arm"] = part.Handle

			elseif FakeLimbs["Right Leg"] == nil then
				FakeLimbs["Right Leg"] = part.Handle
			elseif FakeLimbs["Left Leg"] == nil then
				FakeLimbs["Left Leg"] = part.Handle
			elseif FakeLimbs["Torso1"] == nil then
				FakeLimbs["Torso1"] = part.Handle
			elseif FakeLimbs["Torso2"] == nil then
				FakeLimbs["Torso2"] = part.Handle
			end
		elseif part.Handle.Size == Vector3.new(1,1,1) then
			FakeLimbs["Head"] = part.Handle
		end
	end
end
game.Players.LocalPlayer.Character.Archivable = true
function sandbox(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
Model0 = Instance.new("Model")
Part1 = Instance.new("Part")
Motor6D2 = Instance.new("Motor6D")
Part3 = Instance.new("Part")
Motor6D4 = Instance.new("Motor6D")
Motor6D5 = Instance.new("Motor6D")
Motor6D6 = Instance.new("Motor6D")
Motor6D7 = Instance.new("Motor6D")
Motor6D8 = Instance.new("Motor6D")
Part9 = Instance.new("Part")
Part10 = Instance.new("Part")
Part11 = Instance.new("Part")
Part12 = Instance.new("Part")
Part13 = Instance.new("Part")
Decal14 = Instance.new("Decal")
SpecialMesh15 = Instance.new("SpecialMesh")
Humanoid16 = Instance.new("Humanoid")
Model0.Name = "Dummy"
Model0.Parent = mas
Model0.PrimaryPart = Part1
Part1.Name = "HumanoidRootPart"
Part1.Parent = Model0
Part1.Position =game.Players.LocalPlayer.Character.HumanoidRootPart.Position
Part1.Transparency = 0.5
Part1.Size = Vector3.new(2, 2, 1)
Part1.Anchored = false
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.TopSurface = Enum.SurfaceType.Smooth
Motor6D2.Name = "Root Hip"
Motor6D2.Parent = Part1
Motor6D2.MaxVelocity = 0.10000000149012
Motor6D2.C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
Motor6D2.C1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
Motor6D2.Part0 = Part1
Motor6D2.Part1 = Part3
Motor6D2.part1 = Part3
Part3.Name = "Torso"
Part3.Parent = Model0
Part3.CFrame = CFrame.new(282.536926, 2.99999976, 343.539185, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part3.Position = Vector3.new(282.53692626953, 2.9999997615814, 343.53918457031)
Part3.Size = Vector3.new(2, 2, 1)
Part3.BottomSurface = Enum.SurfaceType.Smooth
Part3.CanCollide = false
Part3.TopSurface = Enum.SurfaceType.Smooth
Motor6D4.Name = "Left Hip"
Motor6D4.Parent = Part3
Motor6D4.MaxVelocity = 0.10000000149012
Motor6D4.C0 = CFrame.new(-1, -1, 0, -4.37113883e-08, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-08)
Motor6D4.C1 = CFrame.new(-0.5, 1, 0, -4.37113883e-08, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-08)
Motor6D4.Part0 = Part3
Motor6D4.Part1 = Part9
Motor6D4.part1 = Part9
Motor6D5.Name = "Right Hip"
Motor6D5.Parent = Part3
Motor6D5.MaxVelocity = 0.10000000149012
Motor6D5.C0 = CFrame.new(1, -1, 0, -4.37113883e-08, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-08)
Motor6D5.C1 = CFrame.new(0.5, 1, 0, -4.37113883e-08, 0, 1, 0, 0.99999994, 0, -1, 0, -4.37113883e-08)
Motor6D5.Part0 = Part3
Motor6D5.Part1 = Part10
Motor6D5.part1 = Part10
Motor6D6.Name = "Left Shoulder"
Motor6D6.Parent = Part3
Motor6D6.MaxVelocity = 0.10000000149012
Motor6D6.C0 = CFrame.new(-1, 0.5, 0, -4.37113883e-08, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-08)
Motor6D6.C1 = CFrame.new(0.5, 0.5, 0, -4.37113883e-08, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-08)
Motor6D6.Part0 = Part3
Motor6D6.Part1 = Part11
Motor6D6.part1 = Part11
Motor6D7.Name = "Right Shoulder"
Motor6D7.Parent = Part3
Motor6D7.MaxVelocity = 0.10000000149012
Motor6D7.C0 = CFrame.new(1, 0.5, 0, -4.37113883e-08, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-08)
Motor6D7.C1 = CFrame.new(-0.5, 0.5, 0, -4.37113883e-08, 0, 1, 0, 0.99999994, 0, -1, 0, -4.37113883e-08)
Motor6D7.Part0 = Part3
Motor6D7.Part1 = Part12
Motor6D7.part1 = Part12
Motor6D8.Name = "Neck"
Motor6D8.Parent = Part3
Motor6D8.MaxVelocity = 0.10000000149012
Motor6D8.C0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
Motor6D8.C1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
Motor6D8.Part0 = Part3
Motor6D8.Part1 = Part13
Motor6D8.part1 = Part13
Part9.Name = "Left Leg"
Part9.Parent = Model0
Part9.CFrame = CFrame.new(282.036926, 0.999999881, 343.539185, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1)
Part9.Position = Vector3.new(282.03692626953, 0.99999988079071, 343.53918457031)
Part9.Size = Vector3.new(1, 2, 1)
Part9.BottomSurface = Enum.SurfaceType.Smooth
Part9.CanCollide = false
Part9.TopSurface = Enum.SurfaceType.Smooth
Part10.Name = "Right Leg"
Part10.Parent = Model0
Part10.CFrame = CFrame.new(283.036926, 0.999999881, 343.539185, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1)
Part10.Position = Vector3.new(283.03692626953, 0.99999988079071, 343.53918457031)
Part10.Size = Vector3.new(1, 2, 1)
Part10.BottomSurface = Enum.SurfaceType.Smooth
Part10.CanCollide = false
Part10.TopSurface = Enum.SurfaceType.Smooth
Part11.Name = "Left Arm"
Part11.Parent = Model0
Part11.CFrame = CFrame.new(281.036926, 2.99999976, 343.539185, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1)
Part11.Position = Vector3.new(281.03692626953, 2.9999997615814, 343.53918457031)
Part11.Size = Vector3.new(1, 2, 1)
Part11.BottomSurface = Enum.SurfaceType.Smooth
Part11.CanCollide = false
Part11.TopSurface = Enum.SurfaceType.Smooth
Part12.Name = "Right Arm"
Part12.Parent = Model0
Part12.CFrame = CFrame.new(284.036926, 2.99999976, 343.539185, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1)
Part12.Position = Vector3.new(284.03692626953, 2.9999997615814, 343.53918457031)
Part12.Size = Vector3.new(1, 2, 1)
Part12.BottomSurface = Enum.SurfaceType.Smooth
Part12.CanCollide = false
Part12.TopSurface = Enum.SurfaceType.Smooth
Part13.Name = "Head"
Part13.Parent = Model0
Part13.CFrame = CFrame.new(282.536926, 4.5, 343.539185, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part13.Position = Vector3.new(282.53692626953, 4.5, 343.53918457031)
Part13.Size = Vector3.new(2, 1, 1)
Part13.BottomSurface = Enum.SurfaceType.Smooth
Part13.TopSurface = Enum.SurfaceType.Smooth
Decal14.Name = "Face"
Decal14.Parent = Part13
Decal14.Texture = "rbxasset://textures/face.png"
SpecialMesh15.Parent = Part13
SpecialMesh15.Scale = Vector3.new(1.25, 1.25, 1.25)
Humanoid16.Parent = Model0
Humanoid16.LeftLeg = Part9
Humanoid16.RightLeg = Part10
Humanoid16.Torso = Part1
for i,v in pairs(mas:GetChildren()) do
	v.Parent = script
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end













-- Kill Player
FakeCharacter = Model0
FakeCharacter.Parent = workspace



for i, part in pairs(FakeCharacter:GetDescendants()) do
	if part:IsA("Part") or part:IsA("MeshPart") then
		part.Transparency = 1
	elseif part:IsA("Accessory") then
		part:Destroy()
	end
end
for i = 1,#Accessorys do
	StickAcc(Accessorys[i],FakeCharacter.Head,Vector3.new(0,0,0))
end








function StickParts(Part0,Part1,Angle,Position)
	Part0:FindFirstChildWhichIsA("Weld"):Destroy()
	Part0:FindFirstChildWhichIsA("SpecialMesh"):Destroy()
	local AlignPos = Instance.new('AlignPosition', Part1)
	AlignPos.ApplyAtCenterOfMass = true;
	AlignPos.MaxForce = 67752;
	AlignPos.MaxVelocity = math.huge/9e110;
	AlignPos.ReactionForceEnabled = false;
	AlignPos.Responsiveness = 200;
	AlignPos.RigidityEnabled = false;
	local AlignOri = Instance.new('AlignOrientation', Part1)
	AlignOri.MaxAngularVelocity = math.huge/9e110;
	AlignOri.MaxTorque = 67752;
	AlignOri.PrimaryAxisOnly = false;
	AlignOri.ReactionTorqueEnabled = false;
	AlignOri.Responsiveness = 200;
	AlignOri.RigidityEnabled = false;
	local AttachmentA=Instance.new('Attachment',Part1)
	local AttachmentB=Instance.new('Attachment',Part0)
	local AttachmentC=Instance.new('Attachment',Part1)
	local AttachmentD=Instance.new('Attachment',Part0)
	AlignPos.Attachment1 = AttachmentA;
	AlignPos.Attachment0 = AttachmentB;
	AlignOri.Attachment1 = AttachmentC;
	AlignOri.Attachment0 = AttachmentD;
	AttachmentC.Orientation = Angle
	Part0.Parent = FakeCharacter
	if Position then
		AttachmentA.Position = Position
	end
	s = game:GetService("RunService").Heartbeat:connect(function()
		Part0.Velocity = Vector3.new(0,50,0)
	end)
	spawn(function()
		while true do
			wait()
			if HumanDied then
				s:Disconnect()
				break
			end
		end
	end)
end




Bypass = "death"
if not Bypass then Bypass = "limbs" end
HumanDied = false

CountSCIFIMOVIELOL = 1
function SCIFIMOVIELOL(Part0,Part1,Position,Angle)
	local AlignPos = Instance.new('AlignPosition', Part1); AlignPos.Name = "AliP_"..CountSCIFIMOVIELOL
	AlignPos.ApplyAtCenterOfMass = true;
	AlignPos.MaxForce = 67752;
	AlignPos.MaxVelocity = math.huge/9e110;
	AlignPos.ReactionForceEnabled = false;
	AlignPos.Responsiveness = 200;
	AlignPos.RigidityEnabled = false;
	local AlignOri = Instance.new('AlignOrientation', Part1); AlignOri.Name = "AliO_"..CountSCIFIMOVIELOL
	AlignOri.MaxAngularVelocity = math.huge/9e110;
	AlignOri.MaxTorque = 67752;
	AlignOri.PrimaryAxisOnly = false;
	AlignOri.ReactionTorqueEnabled = false;
	AlignOri.Responsiveness = 200;
	AlignOri.RigidityEnabled = false;
	local AttachmentA=Instance.new('Attachment',Part1); AttachmentA.Name = "AthP_"..CountSCIFIMOVIELOL
	local AttachmentB=Instance.new('Attachment',Part0); AttachmentB.Name = "AthP_"..CountSCIFIMOVIELOL
	local AttachmentC=Instance.new('Attachment',Part1); AttachmentC.Name = "AthO_"..CountSCIFIMOVIELOL
	local AttachmentD=Instance.new('Attachment',Part0); AttachmentD.Name = "AthO_"..CountSCIFIMOVIELOL
	AttachmentC.Orientation = Angle
	AttachmentA.Position = Position
	AlignPos.Attachment1 = AttachmentA;
	AlignPos.Attachment0 = AttachmentB;
	AlignOri.Attachment1 = AttachmentC;
	AlignOri.Attachment0 = AttachmentD;
	CountSCIFIMOVIELOL = CountSCIFIMOVIELOL + 1

end

coroutine.wrap(function()
	local player = game.Players.LocalPlayer
	local char = player.Character or player.CharacterAdded:wait()
	if sethiddenproperty then
		while true do
			game:GetService("RunService").RenderStepped:Wait()
			settings().Physics.AllowSleep = false
			local TBL = game:GetService("Players"):GetChildren() 
			for _ = 1,#TBL do local Players = TBL[_]
				if Players ~= game:GetService("Players").LocalPlayer then
					Players.MaximumSimulationRadius = 0
					sethiddenproperty(Players,"SimulationRadius",0) 
				end 
			end
			game:GetService("Players").LocalPlayer.MaximumSimulationRadius = math.pow(math.huge,math.huge)
			sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.pow(math.huge,math.huge)*math.huge)
			if HumanDied then break end
		end
	else
		while true do
			game:GetService("RunService").RenderStepped:Wait()
			settings().Physics.AllowSleep = false
			local TBL = game:GetService("Players"):GetChildren() 
			for _ = 1,#TBL do local Players = TBL[_]
				if Players ~= game:GetService("Players").LocalPlayer then
					Players.MaximumSimulationRadius = 0
				end 
			end
			game:GetService("Players").LocalPlayer.MaximumSimulationRadius = math.pow(math.huge,math.huge)
			if HumanDied then break end
		end
	end
end)()

if game:GetService("Players").LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
	if Bypass == "limbs" then --------------------------------------------------------------------------------------------------------------------
		game:GetService("Players").LocalPlayer["Character"].Archivable = true 
		local CloneChar = game:GetService("Players").LocalPlayer["Character"]:Clone()
		CloneChar.Parent = workspace 
		CloneChar.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer["Character"].HumanoidRootPart.CFrame * CFrame.new(0,2,0)
		wait() 
		CloneChar.Humanoid.BreakJointsOnDeath = false
		workspace.Camera.CameraSubject = CloneChar.Humanoid
		CloneChar.Name = "non" 
		CloneChar.Humanoid.DisplayDistanceType = "None"
		if CloneChar.Head:FindFirstChild("face") then CloneChar.Head:FindFirstChild("face"):Destroy() end
		if workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face") then workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face").Parent = CloneChar.Head end

		local DeadChar = workspace[game:GetService("Players").LocalPlayer.Name]
		DeadChar.HumanoidRootPart:Destroy()

		local LVecPart = Instance.new("Part", workspace) LVecPart.CanCollide = false LVecPart.Transparency = 1
		local CONVEC
		local function VECTORUNIT()
			if HumanDied then CONVEC:Disconnect(); return end
			local lookVec = workspace.Camera.CFrame.lookVector
			local Root = CloneChar["HumanoidRootPart"]
			LVecPart.Position = Root.Position
			LVecPart.CFrame = CFrame.new(LVecPart.Position, Vector3.new(lookVec.X * 9999, lookVec.Y, lookVec.Z * 9999))
		end
		CONVEC = game:GetService("RunService").Heartbeat:Connect(VECTORUNIT)

		local CONDOWN
		local WDown, ADown, SDown, DDown, SpaceDown = false, false, false, false, false
		local function KEYDOWN(_,Processed) 
			if HumanDied then CONDOWN:Disconnect(); return end
			if Processed ~= true then
				local Key = _.KeyCode
				if Key == Enum.KeyCode.W then
					WDown = true end
				if Key == Enum.KeyCode.A then
					ADown = true end
				if Key == Enum.KeyCode.S then
					SDown = true end
				if Key == Enum.KeyCode.D then
					DDown = true end
				if Key == Enum.KeyCode.Space then
					SpaceDown = true end end end
		CONDOWN = game:GetService("UserInputService").InputBegan:Connect(KEYDOWN)

		local CONUP
		local function KEYUP(_)
			if HumanDied then CONUP:Disconnect(); return end
			local Key = _.KeyCode
			if Key == Enum.KeyCode.W then
				WDown = false end
			if Key == Enum.KeyCode.A then
				ADown = false end
			if Key == Enum.KeyCode.S then
				SDown = false end
			if Key == Enum.KeyCode.D then
				DDown = false end
			if Key == Enum.KeyCode.Space then
				SpaceDown = false end end
		CONUP = game:GetService("UserInputService").InputEnded:Connect(KEYUP)

		local function MoveClone(X,Y,Z)
			VEL = 1
			LVecPart.CFrame = LVecPart.CFrame * CFrame.new(-X,Y,-Z)
			workspace["non"].Humanoid.WalkToPoint = LVecPart.Position
			wait()
			VEL = 0
		end

		coroutine.wrap(function() 
			while true do game:GetService("RunService").RenderStepped:Wait()
				if HumanDied then break end
				if WDown then MoveClone(0,0,1e4) end
				if ADown then MoveClone(1e4,0,0) end
				if SDown then MoveClone(0,0,-1e4) end
				if DDown then MoveClone(-1e4,0,0) end
				if SpaceDown then CloneChar["Humanoid"].Jump = true end
				if WDown ~= true and ADown ~= true and SDown ~= true and DDown ~= true then
					workspace["non"].Humanoid.WalkToPoint = workspace["non"].HumanoidRootPart.Position end
			end 
		end)()

		local con
		function UnCollide()
			if HumanDied then con:Disconnect(); return end
			for _,Parts in next, CloneChar:GetDescendants() do
				if Parts:IsA("BasePart") then
					Parts.CanCollide = false 
				end 
			end
			for _,Parts in next, DeadChar:GetDescendants() do
				if Parts:IsA("BasePart") then
					Parts.CanCollide = false
				end 
			end 
		end
		con = game:GetService("RunService").Stepped:Connect(UnCollide)

		local resetBindable = Instance.new("BindableEvent")
		resetBindable.Event:connect(function()
			game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
			resetBindable:Destroy()
			pcall(function()
				CloneChar.Humanoid.Health = 0
				DeadChar.Humanoid.Health = 0
			end)
		end)
		game:GetService("StarterGui"):SetCore("ResetButtonCallback", resetBindable)

		coroutine.wrap(function()
			while true do
				game:GetService("RunService").RenderStepped:wait()
				if not CloneChar or not CloneChar:FindFirstChild("Head") or not CloneChar:FindFirstChild("Humanoid") or CloneChar:FindFirstChild("Humanoid").Health <= 0 or not DeadChar or not DeadChar:FindFirstChild("Head") or not DeadChar:FindFirstChild("Humanoid") or DeadChar:FindFirstChild("Humanoid").Health <= 0 then 
					HumanDied = true
					pcall(function()
						game.Players.LocalPlayer.Character = CloneChar
						CloneChar:Destroy()
						game.Players.LocalPlayer.Character = DeadChar
						if resetBindable then
							game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
							resetBindable:Destroy()
						end
						DeadChar.Humanoid.Health = 0
					end)
					break
				end		
			end
		end)()

		SCIFIMOVIELOL(DeadChar["Head"],CloneChar["Head"],Vector3.new(0,0,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["Torso"],CloneChar["Torso"],Vector3.new(0,0,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["Left Arm"],CloneChar["Left Arm"],Vector3.new(0,0,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["Right Arm"],CloneChar["Right Arm"],Vector3.new(0,0,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["Left Leg"],CloneChar["Left Leg"],Vector3.new(0,0,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["Right Leg"],CloneChar["Right Leg"],Vector3.new(0,0,0),Vector3.new(0,0,0))

		coroutine.wrap(function()
			while true do
				game:GetService("RunService").RenderStepped:wait()
				if HumanDied then break end
				DeadChar["Torso"].CFrame = CloneChar["Torso"].CFrame
			end
		end)()

		for _,v in next, DeadChar:GetChildren() do
			if v:IsA("Accessory") and table.find(SETHATS,v.Handle) == nil then
				SCIFIMOVIELOL(v.Handle,CloneChar[v.Name].Handle,Vector3.new(0,0,0),Vector3.new(0,0,0))
			end
		end

		for _,BodyParts in next, CloneChar:GetDescendants() do
			if BodyParts:IsA("BasePart") or BodyParts:IsA("Part") then
				BodyParts.Transparency = 1 end end

		DeadChar.Torso["Left Shoulder"]:Destroy()
		DeadChar.Torso["Right Shoulder"]:Destroy()
		DeadChar.Torso["Left Hip"]:Destroy()
		DeadChar.Torso["Right Hip"]:Destroy()

	elseif Bypass == "death" then --------------------------------------------------------------------------------------------------------------------
		game:GetService("Players").LocalPlayer["Character"].Archivable = true 
		local CloneChar = game:GetService("Players").LocalPlayer["Character"]:Clone()
		game:GetService("Players").LocalPlayer["Character"].Humanoid.WalkSpeed = 0 
		game:GetService("Players").LocalPlayer["Character"].Humanoid.JumpPower = 0 
		game:GetService("Players").LocalPlayer["Character"].Humanoid.AutoRotate = false
		local FalseChar = Instance.new("Model", workspace); FalseChar.Name = ""
		Instance.new("Part",FalseChar).Name = "Head" 
		Instance.new("Part",FalseChar).Name = "Torso" 
		Instance.new("Humanoid",FalseChar).Name = "Humanoid"
		game:GetService("Players").LocalPlayer["Character"] = FalseChar
		game:GetService("Players").LocalPlayer["Character"].Humanoid.Name = "FalseHumanoid"
		local Clone = game:GetService("Players").LocalPlayer["Character"]:FindFirstChild("FalseHumanoid"):Clone()
		Clone.Parent = game:GetService("Players").LocalPlayer["Character"]
		Clone.Name = "Humanoid"
		game:GetService("Players").LocalPlayer["Character"]:FindFirstChild("FalseHumanoid"):Destroy() 
		game:GetService("Players").LocalPlayer["Character"].Humanoid.Health = 0 
		game:GetService("Players").LocalPlayer["Character"] = workspace[game:GetService("Players").LocalPlayer.Name] 
		wait(5.65) 
		game:GetService("Players").LocalPlayer["Character"].Humanoid.Health = 0
		CloneChar.Parent = workspace 
		CloneChar.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer["Character"].HumanoidRootPart.CFrame * CFrame.new(0,2,0)


		StickParts(FakeLimbs["Head"],CloneChar.Head,Vector3.new(0,0,0))
		StickParts(FakeLimbs["Right Arm"],CloneChar["Right Arm"],Vector3.new(90,0,0))
		StickParts(FakeLimbs["Left Arm"],CloneChar["Left Arm"],Vector3.new(90,0,0))
		StickParts(FakeLimbs["Right Leg"],CloneChar["Right Leg"],Vector3.new(90,0,0))
		StickParts(FakeLimbs["Left Leg"],CloneChar["Left Leg"],Vector3.new(90,0,0))
		StickParts(FakeLimbs["Torso1"],CloneChar.Torso,Vector3.new(90,0,0),Vector3.new(0.5,0,0))
		StickParts(FakeLimbs["Torso2"],CloneChar.Torso,Vector3.new(90,0,0),Vector3.new(-0.5,0,0))

		wait() 




		CloneChar.Humanoid.BreakJointsOnDeath = false
		workspace.Camera.CameraSubject = CloneChar.Humanoid 
		CloneChar.Name = "non" 
		CloneChar.Humanoid.DisplayDistanceType = "None"
		if CloneChar.Head:FindFirstChild("face") then CloneChar.Head:FindFirstChild("face"):Destroy() end
		if workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face") then workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face").Parent = CloneChar.Head end

		FalseChar:Destroy()

		local DeadChar = workspace[game:GetService("Players").LocalPlayer.Name]

		local LVecPart = Instance.new("Part", workspace) LVecPart.CanCollide = false LVecPart.Transparency = 1
		local CONVEC
		local function VECTORUNIT()
			if HumanDied then CONVEC:Disconnect(); return end
			local lookVec = workspace.Camera.CFrame.lookVector
			local Root = CloneChar["HumanoidRootPart"]
			LVecPart.Position = Root.Position
			LVecPart.CFrame = CFrame.new(LVecPart.Position, Vector3.new(lookVec.X * 9999, lookVec.Y, lookVec.Z * 9999))
		end
		CONVEC = game:GetService("RunService").Heartbeat:Connect(VECTORUNIT)

		local CONDOWN
		local WDown, ADown, SDown, DDown, SpaceDown = false, false, false, false, false
		local function KEYDOWN(_,Processed) 
			if HumanDied then CONDOWN:Disconnect(); return end
			if Processed ~= true then
				local Key = _.KeyCode
				if Key == Enum.KeyCode.W then
					WDown = true end
				if Key == Enum.KeyCode.A then
					ADown = true end
				if Key == Enum.KeyCode.S then
					SDown = true end
				if Key == Enum.KeyCode.D then
					DDown = true end
				if Key == Enum.KeyCode.Space then
					SpaceDown = true end end end
		CONDOWN = game:GetService("UserInputService").InputBegan:Connect(KEYDOWN)

		local CONUP
		local function KEYUP(_)
			if HumanDied then CONUP:Disconnect(); return end
			local Key = _.KeyCode
			if Key == Enum.KeyCode.W then
				WDown = false end
			if Key == Enum.KeyCode.A then
				ADown = false end
			if Key == Enum.KeyCode.S then
				SDown = false end
			if Key == Enum.KeyCode.D then
				DDown = false end
			if Key == Enum.KeyCode.Space then
				SpaceDown = false end end
		CONUP = game:GetService("UserInputService").InputEnded:Connect(KEYUP)

		local function MoveClone(X,Y,Z)
			LVecPart.CFrame = LVecPart.CFrame * CFrame.new(-X,Y,-Z)
			workspace["non"].Humanoid.WalkToPoint = LVecPart.Position
		end

		coroutine.wrap(function() 
			while true do game:GetService("RunService").RenderStepped:Wait()
				if HumanDied then break end
				if WDown then MoveClone(0,0,1e4) end
				if ADown then MoveClone(1e4,0,0) end
				if SDown then MoveClone(0,0,-1e4) end
				if DDown then MoveClone(-1e4,0,0) end
				if SpaceDown then CloneChar["Humanoid"].Jump = true end
				if WDown ~= true and ADown ~= true and SDown ~= true and DDown ~= true then
					CloneChar.Humanoid.WalkToPoint = CloneChar.HumanoidRootPart.Position end
			end 
		end)()

		local con
		function UnCollide()
			if HumanDied then con:Disconnect(); return end
			for _,Parts in next, CloneChar:GetDescendants() do
				if Parts:IsA("BasePart") then
					HumanRoot.CanCollide = false
					Parts.CanCollide = false 
				end 
			end
			for _,Parts in next, DeadChar:GetDescendants() do
				if Parts:IsA("BasePart") then
					Parts.CanCollide = false
					HumanRoot.CanCollide = false
				end 
			end 
		end
		con = game:GetService("RunService").Stepped:Connect(UnCollide)

		local resetBindable = Instance.new("BindableEvent")
		resetBindable.Event:connect(function()
			game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
			resetBindable:Destroy()
			CloneChar.Humanoid.Health = 0
		end)
		game:GetService("StarterGui"):SetCore("ResetButtonCallback", resetBindable)

		coroutine.wrap(function()
			while true do
				game:GetService("RunService").RenderStepped:wait()
				if not CloneChar or not CloneChar:FindFirstChild("Head") or not CloneChar:FindFirstChild("Humanoid") or CloneChar:FindFirstChild("Humanoid").Health <= 0 then 
					HumanDied = true
					pcall(function()
						game.Players.LocalPlayer.Character = CloneChar
						CloneChar:Destroy()
						game.Players.LocalPlayer.Character = DeadChar
						if resetBindable then
							game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
							resetBindable:Destroy()
						end
						DeadChar.Humanoid.Health = 0
					end)
					break
				end		
			end
		end)()



		for _,BodyParts in next, CloneChar:GetDescendants() do
			if BodyParts:IsA("BasePart") or BodyParts:IsA("Part") then
				BodyParts.Transparency = 1 end end
	elseif Bypass == "hats" then
		game:GetService("Players").LocalPlayer["Character"].Archivable = true 
		local DeadChar = game.Players.LocalPlayer.Character
		DeadChar.Name = "non"
		local HatPosition = Vector3.new(0,0,0)
		local HatName = "MediHood"
		local HatsLimb = {
			Rarm = DeadChar:FindFirstChild("Hat1"),
			Larm = DeadChar:FindFirstChild("Pink Hair"),
			Rleg = DeadChar:FindFirstChild("Robloxclassicred"),
			Lleg = DeadChar:FindFirstChild("Kate Hair"),
			Torso1 = DeadChar:FindFirstChild("Pal Hair"),
			Torso2 = DeadChar:FindFirstChild("LavanderHair")
		}
		HatName = DeadChar:FindFirstChild(HatName)

		coroutine.wrap(function()
			while true do
				game:GetService("RunService").RenderStepped:wait()
				if not DeadChar or not DeadChar:FindFirstChild("Head") or not DeadChar:FindFirstChild("Humanoid") or DeadChar:FindFirstChild("Humanoid").Health <= 0 then 
					HumanDied = true
					pcall(function()
						if resetBindable then
							game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
							resetBindable:Destroy()
						end
						DeadChar.Humanoid.Health = 0
					end)
					break
				end		
			end
		end)()

		local con
		function UnCollide()
			if HumanDied then con:Disconnect(); return end
			for _,Parts in next, DeadChar:GetDescendants() do
				if Parts:IsA("BasePart") then
					Parts.CanCollide = false
				end 
			end 
		end
		con = game:GetService("RunService").Stepped:Connect(UnCollide)

		SCIFIMOVIELOL(HatName.Handle,DeadChar["Head"],Vector3.new(0,0,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(HatsLimb.Torso1.Handle,DeadChar["Torso"],Vector3.new(0.5,0,0),Vector3.new(90,0,0))
		SCIFIMOVIELOL(HatsLimb.Torso2.Handle,DeadChar["Torso"],Vector3.new(-0.5,0,0),Vector3.new(90,0,0))
		SCIFIMOVIELOL(HatsLimb.Larm.Handle,DeadChar["Left Arm"],Vector3.new(0,0,0),Vector3.new(90,0,0))
		SCIFIMOVIELOL(HatsLimb.Rarm.Handle,DeadChar["Right Arm"],Vector3.new(0,0,0),Vector3.new(90,0,0))
		SCIFIMOVIELOL(HatsLimb.Lleg.Handle,DeadChar["Left Leg"],Vector3.new(0,0,0),Vector3.new(90,0,0))
		SCIFIMOVIELOL(HatsLimb.Rleg.Handle,DeadChar["Right Leg"],Vector3.new(0,0,0),Vector3.new(90,0,0))

		for i,v in pairs(HatsLimb) do
			v.Handle:FindFirstChild("AccessoryWeld"):Destroy()
			if v.Handle:FindFirstChild("Mesh") then v.Handle:FindFirstChild("Mesh"):Destroy() end
			if v.Handle:FindFirstChild("SpecialMesh") then v.Handle:FindFirstChild("SpecialMesh"):Destroy() end
		end
		HatName.Handle:FindFirstChild("AccessoryWeld"):Destroy()
	end
else
	if Bypass == "limbs" then --------------------------------------------------------------------------------------------------------------------
		game:GetService("Players").LocalPlayer["Character"].Archivable = true 
		local CloneChar = game:GetObjects("rbxassetid://5227463276")[1]
		CloneChar.Parent = workspace 
		CloneChar.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer["Character"].HumanoidRootPart.CFrame * CFrame.new(0,0.5,0.1)
		CloneChar.Humanoid.BreakJointsOnDeath = false
		workspace.Camera.CameraSubject = CloneChar.Humanoid 
		CloneChar.Name = "non" 
		CloneChar.Humanoid.DisplayDistanceType = "None"
		if CloneChar.Head:FindFirstChild("face") then CloneChar.Head:FindFirstChild("face"):Destroy() end
		if workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face") then workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face").Parent = CloneChar.Head end

		local DeadChar = workspace[game:GetService("Players").LocalPlayer.Name]
		DeadChar.HumanoidRootPart:Destroy()

		local LVecPart = Instance.new("Part", workspace) LVecPart.CanCollide = false LVecPart.Transparency = 1
		local CONVEC
		local function VECTORUNIT()
			if HumanDied then CONVEC:Disconnect(); return end
			local lookVec = workspace.Camera.CFrame.lookVector
			local Root = CloneChar["HumanoidRootPart"]
			LVecPart.Position = Root.Position
			LVecPart.CFrame = CFrame.new(LVecPart.Position, Vector3.new(lookVec.X * 9999, lookVec.Y, lookVec.Z * 9999))
		end
		CONVEC = game:GetService("RunService").Heartbeat:Connect(VECTORUNIT)

		local CONDOWN
		local WDown, ADown, SDown, DDown, SpaceDown = false, false, false, false, false
		local function KEYDOWN(_,Processed) 
			if HumanDied then CONDOWN:Disconnect(); return end
			if Processed ~= true then
				local Key = _.KeyCode
				if Key == Enum.KeyCode.W then
					WDown = true end
				if Key == Enum.KeyCode.A then
					ADown = true end
				if Key == Enum.KeyCode.S then
					SDown = true end
				if Key == Enum.KeyCode.D then
					DDown = true end
				if Key == Enum.KeyCode.Space then
					SpaceDown = true end end end
		CONDOWN = game:GetService("UserInputService").InputBegan:Connect(KEYDOWN)

		local CONUP
		local function KEYUP(_)
			if HumanDied then CONUP:Disconnect(); return end
			local Key = _.KeyCode
			if Key == Enum.KeyCode.W then
				WDown = false end
			if Key == Enum.KeyCode.A then
				ADown = false end
			if Key == Enum.KeyCode.S then
				SDown = false end
			if Key == Enum.KeyCode.D then
				DDown = false end
			if Key == Enum.KeyCode.Space then
				SpaceDown = false end end
		CONUP = game:GetService("UserInputService").InputEnded:Connect(KEYUP)

		local function MoveClone(X,Y,Z)
			LVecPart.CFrame = LVecPart.CFrame * CFrame.new(-X,Y,-Z)
			workspace["non"].Humanoid.WalkToPoint = LVecPart.Position
		end

		coroutine.wrap(function() 
			while true do game:GetService("RunService").RenderStepped:Wait()
				if HumanDied then break end
				if WDown then MoveClone(0,0,1e4) end
				if ADown then MoveClone(1e4,0,0) end
				if SDown then MoveClone(0,0,-1e4) end
				if DDown then MoveClone(-1e4,0,0) end
				if SpaceDown then CloneChar["Humanoid"].Jump = true end
				if WDown ~= true and ADown ~= true and SDown ~= true and DDown ~= true then
					workspace["non"].Humanoid.WalkToPoint = workspace["non"].HumanoidRootPart.Position end
			end 
		end)()

		local con
		function UnCollide()
			if HumanDied then con:Disconnect(); return end
			for _,Parts in next, CloneChar:GetDescendants() do
				if Parts:IsA("BasePart") then
					Parts.CanCollide = false 
				end 
			end
			for _,Parts in next, DeadChar:GetDescendants() do
				if Parts:IsA("BasePart") then
					Parts.CanCollide = false
				end 
			end 
		end
		con = game:GetService("RunService").Stepped:Connect(UnCollide)

		local resetBindable = Instance.new("BindableEvent")
		resetBindable.Event:connect(function()
			game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
			resetBindable:Destroy()
			CloneChar.Humanoid.Health = 0
		end)
		game:GetService("StarterGui"):SetCore("ResetButtonCallback", resetBindable)

		coroutine.wrap(function()
			while true do
				game:GetService("RunService").RenderStepped:wait()
				if not CloneChar or not CloneChar:FindFirstChild("Head") or not CloneChar:FindFirstChild("Humanoid") or CloneChar:FindFirstChild("Humanoid").Health <= 0 or not DeadChar or not DeadChar:FindFirstChild("Head") or not DeadChar:FindFirstChild("Humanoid") or DeadChar:FindFirstChild("Humanoid").Health <= 0 then 
					HumanDied = true
					pcall(function()
						game.Players.LocalPlayer.Character = CloneChar
						CloneChar:Destroy()
						game.Players.LocalPlayer.Character = DeadChar
						if resetBindable then
							game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
							resetBindable:Destroy()
						end
						DeadChar.Humanoid.Health = 0
					end)
					break
				end		
			end
		end)()

		for _,v in next, DeadChar:GetChildren() do
			if v:IsA("Accessory") then
				v:Clone().Parent = CloneChar
			end
		end

		for _,v in next, DeadChar:GetDescendants() do
			if v:IsA("Motor6D") and v.Name ~= "Neck" then
				v:Destroy()
			end
		end

		SCIFIMOVIELOL(DeadChar["Head"],CloneChar["Head"],Vector3.new(0,0,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["UpperTorso"],CloneChar["Torso"],Vector3.new(0,0.2,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["LowerTorso"],CloneChar["Torso"],Vector3.new(0,-0.78,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["LeftUpperArm"],CloneChar["Left Arm"],Vector3.new(0,0.375,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["LeftLowerArm"],CloneChar["Left Arm"],Vector3.new(0,-0.215,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["LeftHand"],CloneChar["Left Arm"],Vector3.new(0,-0.825,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["RightUpperArm"],CloneChar["Right Arm"],Vector3.new(0,0.375,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["RightLowerArm"],CloneChar["Right Arm"],Vector3.new(0,-0.215,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["RightHand"],CloneChar["Right Arm"],Vector3.new(0,-0.825,0),Vector3.new(0,0,0))

		SCIFIMOVIELOL(DeadChar["LeftUpperLeg"],CloneChar["Left Leg"],Vector3.new(0,0.575,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["LeftLowerLeg"],CloneChar["Left Leg"],Vector3.new(0,-0.137,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["LeftFoot"],CloneChar["Left Leg"],Vector3.new(0,-0.787,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["RightUpperLeg"],CloneChar["Right Leg"],Vector3.new(0,0.575,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["RightLowerLeg"],CloneChar["Right Leg"],Vector3.new(0,-0.137,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["RightFoot"],CloneChar["Right Leg"],Vector3.new(0,-0.787,0),Vector3.new(0,0,0))

		coroutine.wrap(function()
			while true do
				game:GetService("RunService").RenderStepped:wait()
				if HumanDied then break end
				DeadChar["UpperTorso"].CFrame = CloneChar["Torso"].CFrame * CFrame.new(0,0.2,0)
			end
		end)()

		for _,v in next, DeadChar:GetChildren() do
			if v:IsA("Accessory") then
				SCIFIMOVIELOL(v.Handle,CloneChar[v.Name].Handle,Vector3.new(0,0,0),Vector3.new(0,0,0))
			end
		end

		for _,BodyParts in next, CloneChar:GetDescendants() do
			if BodyParts:IsA("BasePart") or BodyParts:IsA("Part") then
				BodyParts.Transparency = 1 end end

	elseif Bypass == "death" then --------------------------------------------------------------------------------------------------------------------
		game:GetService("Players").LocalPlayer["Character"].Archivable = true 
		local CloneChar = game:GetObjects("rbxassetid://5227463276")[1]
		game:GetService("Players").LocalPlayer["Character"].Humanoid.WalkSpeed = 0 
		game:GetService("Players").LocalPlayer["Character"].Humanoid.JumpPower = 0 
		game:GetService("Players").LocalPlayer["Character"].Humanoid.AutoRotate = false
		local FalseChar = Instance.new("Model", workspace); FalseChar.Name = ""
		Instance.new("Part",FalseChar).Name = "Head" 
		Instance.new("Part",FalseChar).Name = "UpperTorso"
		Instance.new("Humanoid",FalseChar).Name = "Humanoid"
		game:GetService("Players").LocalPlayer["Character"] = FalseChar
		game:GetService("Players").LocalPlayer["Character"].Humanoid.Name = "FalseHumanoid"
		local Clone = game:GetService("Players").LocalPlayer["Character"]:FindFirstChild("FalseHumanoid"):Clone()
		Clone.Parent = game:GetService("Players").LocalPlayer["Character"]
		Clone.Name = "Humanoid"
		game:GetService("Players").LocalPlayer["Character"]:FindFirstChild("FalseHumanoid"):Destroy() 
		game:GetService("Players").LocalPlayer["Character"].Humanoid.Health = 0 
		game:GetService("Players").LocalPlayer["Character"] = workspace[game:GetService("Players").LocalPlayer.Name] 
		wait(5.65) 
		game:GetService("Players").LocalPlayer["Character"].Humanoid.Health = 0
		CloneChar.Parent = workspace 
		CloneChar.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer["Character"].HumanoidRootPart.CFrame * CFrame.new(0,0.5,0.1)
		wait() 
		CloneChar.Humanoid.BreakJointsOnDeath = false
		workspace.Camera.CameraSubject = CloneChar.Humanoid 
		CloneChar.Name = "non" 
		CloneChar.Humanoid.DisplayDistanceType = "None"
		if CloneChar.Head:FindFirstChild("face") then CloneChar.Head:FindFirstChild("face"):Destroy() end
		if workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face") then workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face").Parent = CloneChar.Head end

		FalseChar:Destroy()

		local DeadChar = workspace[game:GetService("Players").LocalPlayer.Name]

		local LVecPart = Instance.new("Part", workspace) LVecPart.CanCollide = false LVecPart.Transparency = 1
		local CONVEC
		local function VECTORUNIT()
			if HumanDied then CONVEC:Disconnect(); return end
			local lookVec = workspace.Camera.CFrame.lookVector
			local Root = CloneChar["HumanoidRootPart"]
			LVecPart.Position = Root.Position
			LVecPart.CFrame = CFrame.new(LVecPart.Position, Vector3.new(lookVec.X * 9999, lookVec.Y, lookVec.Z * 9999))
		end
		CONVEC = game:GetService("RunService").Heartbeat:Connect(VECTORUNIT)

		local CONDOWN
		local WDown, ADown, SDown, DDown, SpaceDown = false, false, false, false, false
		local function KEYDOWN(_,Processed) 
			if HumanDied then CONDOWN:Disconnect(); return end
			if Processed ~= true then
				local Key = _.KeyCode
				if Key == Enum.KeyCode.W then
					WDown = true end
				if Key == Enum.KeyCode.A then
					ADown = true end
				if Key == Enum.KeyCode.S then
					SDown = true end
				if Key == Enum.KeyCode.D then
					DDown = true end
				if Key == Enum.KeyCode.Space then
					SpaceDown = true end end end
		CONDOWN = game:GetService("UserInputService").InputBegan:Connect(KEYDOWN)

		local CONUP
		local function KEYUP(_)
			if HumanDied then CONUP:Disconnect(); return end
			local Key = _.KeyCode
			if Key == Enum.KeyCode.W then
				WDown = false end
			if Key == Enum.KeyCode.A then
				ADown = false end
			if Key == Enum.KeyCode.S then
				SDown = false end
			if Key == Enum.KeyCode.D then
				DDown = false end
			if Key == Enum.KeyCode.Space then
				SpaceDown = false end end
		CONUP = game:GetService("UserInputService").InputEnded:Connect(KEYUP)

		local function MoveClone(X,Y,Z)
			LVecPart.CFrame = LVecPart.CFrame * CFrame.new(-X,Y,-Z)
			workspace["non"].Humanoid.WalkToPoint = LVecPart.Position
		end

		coroutine.wrap(function() 
			while true do game:GetService("RunService").RenderStepped:Wait()
				if HumanDied then break end
				if WDown then MoveClone(0,0,1e4) end
				if ADown then MoveClone(1e4,0,0) end
				if SDown then MoveClone(0,0,-1e4) end
				if DDown then MoveClone(-1e4,0,0) end
				if SpaceDown then CloneChar["Humanoid"].Jump = true end
				if WDown ~= true and ADown ~= true and SDown ~= true and DDown ~= true then
					workspace["non"].Humanoid.WalkToPoint = workspace["non"].HumanoidRootPart.Position end
			end 
		end)()

		local con
		function UnCollide()
			if HumanDied then con:Disconnect(); return end
			for _,Parts in next, CloneChar:GetDescendants() do
				if Parts:IsA("BasePart") then
					Parts.CanCollide = false 
				end 
			end
			for _,Parts in next, DeadChar:GetDescendants() do
				if Parts:IsA("BasePart") then
					Parts.CanCollide = false
				end 
			end 
		end
		con = game:GetService("RunService").Stepped:Connect(UnCollide)

		local resetBindable = Instance.new("BindableEvent")
		resetBindable.Event:connect(function()
			game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
			resetBindable:Destroy()
			CloneChar.Humanoid.Health = 0
		end)
		game:GetService("StarterGui"):SetCore("ResetButtonCallback", resetBindable)

		coroutine.wrap(function()
			while true do
				game:GetService("RunService").RenderStepped:wait()
				if not CloneChar or not CloneChar:FindFirstChild("Head") or not CloneChar:FindFirstChild("Humanoid") or CloneChar:FindFirstChild("Humanoid").Health <= 0 then 
					HumanDied = true
					pcall(function()
						game.Players.LocalPlayer.Character = CloneChar
						CloneChar:Destroy()
						game.Players.LocalPlayer.Character = DeadChar
						if resetBindable then
							game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
							resetBindable:Destroy()
						end
						DeadChar.Humanoid.Health = 0
					end)
					break
				end		
			end
		end)()

		for _,v in next, DeadChar:GetChildren() do
			if v:IsA("Accessory") then
				v:Clone().Parent = CloneChar
			end
		end

		SCIFIMOVIELOL(DeadChar["Head"],CloneChar["Head"],Vector3.new(0,0,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["UpperTorso"],CloneChar["Torso"],Vector3.new(0,0.2,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["LowerTorso"],CloneChar["Torso"],Vector3.new(0,-0.78,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["LeftUpperArm"],CloneChar["Left Arm"],Vector3.new(0,0.375,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["LeftLowerArm"],CloneChar["Left Arm"],Vector3.new(0,-0.215,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["LeftHand"],CloneChar["Left Arm"],Vector3.new(0,-0.825,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["RightUpperArm"],CloneChar["Right Arm"],Vector3.new(0,0.375,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["RightLowerArm"],CloneChar["Right Arm"],Vector3.new(0,-0.215,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["RightHand"],CloneChar["Right Arm"],Vector3.new(0,-0.825,0),Vector3.new(0,0,0))

		SCIFIMOVIELOL(DeadChar["LeftUpperLeg"],CloneChar["Left Leg"],Vector3.new(0,0.575,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["LeftLowerLeg"],CloneChar["Left Leg"],Vector3.new(0,-0.137,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["LeftFoot"],CloneChar["Left Leg"],Vector3.new(0,-0.787,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["RightUpperLeg"],CloneChar["Right Leg"],Vector3.new(0,0.575,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["RightLowerLeg"],CloneChar["Right Leg"],Vector3.new(0,-0.137,0),Vector3.new(0,0,0))
		SCIFIMOVIELOL(DeadChar["RightFoot"],CloneChar["Right Leg"],Vector3.new(0,-0.787,0),Vector3.new(0,0,0))

		SCIFIMOVIELOL(DeadChar["HumanoidRootPart"],CloneChar["HumanoidRootPart"],Vector3.new(0,0,0),Vector3.new(0,0,0))

		for _,v in next, DeadChar:GetChildren() do
			if v:IsA("Accessory") then
				SCIFIMOVIELOL(v.Handle,CloneChar[v.Name].Handle,Vector3.new(0,0,0),Vector3.new(0,0,0))
			end
		end

		for _,BodyParts in next, CloneChar:GetDescendants() do
			if BodyParts:IsA("BasePart") or BodyParts:IsA("Part") then
				BodyParts.Transparency = 1 end end
		if DeadChar.Head:FindFirstChild("Neck") then
			game.Players.LocalPlayer.Character:BreakJoints()
		end
	end
end






local CloneChar = workspace.non

turnto = function(position)
	CloneChar.HumanoidRootPart.CFrame=CFrame.new(CloneChar.HumanoidRootPart.CFrame.p,Vector3.new(position.X,CloneChar.HumanoidRootPart.Position.Y,position.Z)) * CFrame.new(0, 0, 0)
end

local HumanRoot = game.Players.LocalPlayer.Character.HumanoidRootPart
local SHOW = Instance.new("SelectionBox",workspace)
SHOW.Adornee = HumanRoot
local bambam = Instance.new("BodyThrust")
bambam.Parent = HumanRoot
bambam.Force = Vector3.new(500,0,500)



s = game:GetService("RunService").Heartbeat:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,35,0)
end)
spawn(function()
		while true do
			wait()
			if HumanDied == true then
				s:Disconnect()
				break
			end
		end
	end)



















-- <Nullioner Start> --




















local math=setmetatable({random=function(Arg1,Arg2,DIV) DIV=DIV or 1 return math.random(Arg1*DIV,Arg2*DIV)/DIV end,CosSin=function(Arg) return (math.sin(Arg/2)*math.cos(Arg/2)) end,},{__index=math,})
local CFrame=setmetatable({Angles=function(Arg1,Arg2,Arg3,Angles) if not Angles then return CFrame.Angles(Arg1,Arg2,Arg3) else return CFrame.Angles(math.rad(Arg1),math.rad(Arg2),math.rad(Arg3)) end end,},{__index=CFrame,})
local Instance=setmetatable({new=function(type,args) local instance=Instance.new(type) if args then if string.lower(typeof(args)) == "instance" then instance.Parent=args elseif string.lower(typeof(args))=="table" then for i,v in pairs(args) do pcall(function() instance[i]=v end) end end end return instance end,Remove=function(Instance_,Time) if string.lower(typeof(Instance_))=="instance" then game:GetService("Debris"):AddItem(Instance_,Time or 0) elseif string.lower(typeof(Instance_))=="table" then table.foreach(Instance_,function(_,v) game:GetService("Debris"):AddItem(v,Time or 0) end) end end},{__index=Instance,})
local Player,Mouse = game.Players.LocalPlayer,game.Players.LocalPlayer:GetMouse()




--// Shortcuts
local ins=Instance.new
local v3=Vector3.new
local v2=Vector2.new
local cf=CFrame.new
local angles=CFrame.Angles
local ud=UDim.new
local ud2=UDim2.new
local c3=Color3.new
local rgb=Color3.fromRGB
local hsv=Color3.fromHSV
local bc=BrickColor.new
local bcRandom=BrickColor.Random
local palette=BrickColor.palatte
local cs=ColorSequence.new
local ns=NumberSequence.new
local nsk=NumberSequenceKeypoint.new
local nr=NumberRange.new
local random=math.random
local rad=math.rad
local sin=math.sin
local cos=math.cos
local tan=math.tan
local CosSin=math.CosSin
local floor=math.floor
local pi=math.floor
local abs=math.abs
local sqrt=math.sqrt
local clamp=math.clamp
local ray=Ray.new
local huge=math.huge
--// Basic functions
function Tween(Object,Args,Info)
	if Object and Args then
		Info = Info or TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0)
		if typeof(Info) == "table" then Info = TweenInfo.new(unpack(Info)) end
		game:GetService("TweenService"):Create(Object,Info,Args):Play()
	end
end
function Sound(Id,Volume,Pitch,Parent,MaxDistance,EmitterSize,Looped)
	local S=ins("Sound",{Volume=Volume or 1,Pitch=Pitch or 1,MaxDistance=MaxDistance or 500,EmitterSize=EmitterSize or 5,Looped=Looped or false,SoundId="rbxassetid://"..Id,Parent=Parent})
	S:Play()
	coroutine.wrap(function()
		if S.Looped then return end
		if S.IsLoaded then
			Instance.Remove(S,S.TimeLength/S.Pitch)
		else
			S.Loaded:Connect(function()
				Instance.Remove(S,S.TimeLength/S.Pitch)
			end)
		end
	end)()
	return S
end
function Raycast(Origin,Direction,Blacklist,MaxDistance,IgnoreWater)
	return workspace:FindPartOnRayWithIgnoreList(ray(Origin,Direction.Unit*MaxDistance),Blacklist or {},false,IgnoreWater)
end
--// Setup 1
for i,v in pairs(Player.Character:GetDescendants()) do
	if (v.Name=="Animate" and v:IsA("LocalScript")) or v:IsA("Animator") then
		Instance.Remove(v)
	end
end
--// Character indexing
local LockWS,LockJP=false,false
local Type="R6"
local Char,char= CloneChar,CloneChar
local Hum,hum=Char:FindFirstChildOfClass("Humanoid"),Char:FindFirstChildOfClass("Humanoid")
local hrp,HRP=Char.HumanoidRootPart,Char.HumanoidRootPart
local h,t,rs,ls,rl,ll
local nec,rs,ls,rh,lh,rutj
local necC0,necC1=cf(),cf()
local rutjC0,rutjC1=cf(),cf()
local rsC0,rsC1=cf(),cf()
local lsC0,lsC1=cf(),cf()
local rhC0,rhC1=cf(),cf()
local lhC0,lhC1=cf(),cf()
local h,ut,lt,rua,rla,rh,lua,lla,lh,ral,rll,rf,lul,lll,lf
local CFs={}
local Joints={}
if Type=="R6" then
	h,t,ra,la,rl,ll=char.Head,char.Torso,char["Right Arm"],char["Left Arm"],char["Right Leg"],char["Left Leg"]
	nec,rutj,rs,ls,rh,lh=t.Neck,hrp.RootJoint,t["Right Shoulder"],t["Left Shoulder"],t["Right Hip"],t["Left Hip"]
	necC0,necC1=cf(0,t.Size.Y/2,0),cf(0,-h.Size.Y/2,0)
	rutjC0,rutjC1=cf(0,0,0),cf(0,0,0)
	rsC0,rsC1=cf(t.Size.X/2,t.Size.Y/4,0),cf(-ra.Size.X/2,ra.Size.Y/4,0)
	lsC0,lsC1=cf(-t.Size.X/2,t.Size.Y/4,0),cf(la.Size.X/2,la.Size.Y/4,0)
	rhC0,rhC1=cf(t.Size.X/4,-t.Size.Y/2,0),cf(0,rl.Size.Y/2,0)
	lhC0,lhC1=cf(-t.Size.X/4,-t.Size.Y/2,0),cf(0,ll.Size.Y/2,0)
	Instance.Remove({nec,rutj,rs,ls,rh,lh})
	nec=ins("Motor6D",{Name="Neck",Part0=t,Part1=h,C0=necC0,C1=necC1,Parent=t,})
	rutj=ins("Motor6D",{Name="RootJoint",Part0=hrp,Part1=t,C0=rutjC0,C1=rutjC1,Parent=hrp,})
	rs=ins("Motor6D",{Name="Right Shoulder",Part0=t,Part1=ra,C0=rsC0,C1=rsC1,Parent=t,})
	ls=ins("Motor6D",{Name="Left Shoulder",Part0=t,Part1=la,C0=lsC0,C1=lsC1,Parent=t,})
	rh=ins("Motor6D",{Name="Right Hip",Part0=t,Part1=rl,C0=rhC0,C1=rhC1,Parent=t,})
	lh=ins("Motor6D",{Name="Left Hip",Part0=t,Part1=ll,C0=lhC0,C1=lhC1,Parent=t,})
elseif Type=="R15" then
	h,hrp=Char.Head,Char.HumanoidRootPart
	ut,lt=Char.UpperTorso,Char.LowerTorso
	rua,rla,rh=Char.RightUpperArm,Char.RightLowerArm,Char.RightHand
	lua,lla,lh=Char.LeftUpperArm,Char.LeftLowerArm,Char.LeftHand
	rul,rll,rf=Char.RightUpperLeg,Char.RightLowerLeg,Char.RightFoot
	lul,lll,lf=Char.LeftUpperLeg,Char.LeftLowerLeg,Char.LeftFoot
	for i,v in pairs(Char:GetDescendants()) do
		if v:IsA("Motor6D") then
			local CFData={C0=cf(v.C0.Position),C1=cf(v.C1.Position),Part0=v.Part0,Part1=v.Part1,Parent=v.Parent}
			local Joint=ins("Motor6D",{C0=CFData.C0,C1=CFData.C1,Part0=CFData.Part0,Part1=CFData.Part1,Name=v.Name,Parent=CFData.Parent,})
			CFs[v.Name]=CFData
			Joints[v.Name]=setmetatable({Object=Joint,Link=CFData,Remove=function(Time) Instance.Remove(Joint,Time) end},{__index=Joint,__newindex=function(self,k,v) Joint[k]=v end})
			v.Parent=nil
			Instance.Remove(v)
		end
	end
end
--// Variables
local Using=false
local Muted=false
local Holding=false
local TimePos=0
local Sine=0
local Change=1
local WS,JP=16,50
local Step="R"


local StepSounds={Plastic=2812418291,SmoothPlastic=2812418291,Neon=2812418291,ForceField=2812418291,Metal=2812417769,DiamondPlate=2812417769,CorrodedMetal=2812417769,Foil=2812417769,Sand=619188333,Grass=619188333,Slate=941640049,Concrete=941640049,Granite=941640049,Pebble=941640049,Marble=941640049,Cobblestone=941640049,Brick=941640049,Water=685857471,Wood=2812419402,WoodPlanks=2812419402,Fabric=133705377,Snow=619083295}
--// Setup 2
local Effects=ins("Model",{Name="Effects",Parent=Char})
local Theme=Sound(243924503,not Muted and 1.5 or 0,1,t,250,15,true)
ins("ForceField",{Parent=char,Visible=false})
local Rifle=ModelsRequire[1].Rifle Rifle.Parent=t
local RW=ins("Motor6D",{Parent=t,Part0=ra,Part1=Rifle.Dark,C0=cf(-.1,-ra.Size.Y/2,0),C1=cf(Rifle.Dark.HandlePos.Position)*angles(-90,180,90,true)})
--// Functions
function Kill(Model,StartPart,HUM)
	if Model==Char then return end
	local function CheckWeldedParts(Part)
		local Parts={}
		for i,v in pairs(Model:GetDescendants()) do
			if v:IsA("Motor6D") or v:IsA("Weld") then
				if v.Part1==Part then
					table.insert(Parts,v.Part0)
				elseif v.Part0==Part then
					table.insert(Parts,v.Part1)
				end
			end
		end
		return Parts
	end
	local NewThread
	NewThread=function(Parts)
		if #Parts<1 then return end
		for i,v in pairs(Parts) do
			local Parts=CheckWeldedParts(v)
			v:BreakJoints()
			local Time=random(.4,.9,100)
			Instance.Remove(v,Time*2)
			v.Material="Neon"
			v.Color=bc("Neon orange").Color
			v.Anchored=true
			v.CanCollide=false
			v.Massless=true
			v.Locked=true
			v.Transparency=0
			v:ClearAllChildren()
			v.Parent=Effects
			Tween(v,{Transparency=1},{Time,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0})
			NewThread(CheckWeldedParts(Parts))
			local E=ModelsRequire[1].Emit:Clone()
			E.Parent=v
			v:GetPropertyChangedSignal("Transparency"):Connect(function()
				if v.Transparency>.8 then
					E.Enabled=false
				end
			end)
			wait(random(.01,.05,100))
		end
	end
	local Parts=CheckWeldedParts(StartPart)
	StartPart:BreakJoints()
	local Time=random(.4,.9,100)
	Instance.Remove(StartPart,Time*2)
	StartPart.Material="Neon"
	StartPart.Color=bc("Neon orange").Color
	StartPart.Anchored=true
	StartPart.CanCollide=false
	StartPart.Massless=true
	StartPart.Locked=true
	StartPart.Transparency=0
	StartPart:ClearAllChildren()
	StartPart.Parent=Effects
	Tween(StartPart,{Transparency=1},{Time,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0})
	local E=ModelsRequire[1].Emit:Clone()
	E.Parent=StartPart
	StartPart:GetPropertyChangedSignal("Transparency"):Connect(function()
		if StartPart.Transparency>.8 then
			E.Enabled=false
		end
	end)
	NewThread(Parts)
	wait(1)
	if HUM.Health>.01 then return end
	Model.Archivable=true
	local Clone=Model:Clone()
	Clone.Parent=workspace
	for i,v in pairs(Model:GetChildren()) do
		if not v:IsA("Humanoid") then
			Instance.Remove(v)
		end
	end
	Instance.Remove(Model,6)
	for i,v in pairs(Clone:GetDescendants()) do
		if v:IsA("BasePart") then
			v:BreakJoints()
			local Time=random(.4,.9,100)
			Instance.Remove(v,Time*2)
			v.Material="Neon"
			v.Color=bc("Neon orange").Color
			v.Anchored=true
			v.CanCollide=false
			v.Massless=true
			v.Locked=true
			v.Transparency=0
			v:ClearAllChildren()
			v.Parent=Effects
			Tween(v,{Transparency=1},{Time,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0})
			local E=ModelsRequire[1].Emit:Clone()
			E.Parent=v
			v:GetPropertyChangedSignal("Transparency"):Connect(function()
				if v.Transparency>.8 then
					E.Enabled=false
				end
			end)
			wait(random(.01,.05,100))
		end
	end
	Instance.Remove(Clone)
end
local function Connect(Model)
	Model.ChildAdded:Connect(function(Child)
		if Child.Name=="Bullet" then
			local Ignore={Char}
			for i,v in pairs(workspace:GetDescendants()) do
				if v:IsA("Accessory") or v:IsA("Hat") or v.Name=="BulletImpact" or v.Name=="PhysicalSpark" then
					table.insert(Ignore,v)
				end
			end
			local RHit,RPos,RNID=Raycast(Child.Position,Child.CFrame.LookVector,Ignore,500,true)
			for i = 1,13 do
						wait()
						game.Players.LocalPlayer.Character.HumanoidRootPart.Position = RPos
						bambam.Location = 	RPos
					end
			if RHit then
				Child.Name="DeadBullet"
				Child.Anchored=true
				Child.CFrame=CFrame.new(RPos)
				game.Debris:AddItem(Child,1.5)
				for i,v in pairs(Child:GetChildren()) do
					if v:IsA("ParticleEmitter") or v:IsA("Trail") then
						v.Enabled=false
					end
				end
			end
			Instance.new("BodyVelocity",{Parent=Child;MaxForce=Vector3.new(200000,200000,200000);Velocity=Child.CFrame.LookVector*500})
		end
	end)
end
Connect(Effects)
function CreateBullet()
	local B=ModelsRequire[1].Bullet:Clone()
	B.CFrame=cf((Rifle.Tubes.CFrame*cf(Rifle.Tubes.FireEffect.Position)).Position,Mouse.Hit.Position)
	B.Parent=Effects
	Instance.Remove(B,5)
end
--// Moves
function Fire(Start)
	Using=true
	if Start then
		local Time=.25
		Tween(nec,{C0=necC0*cf(0,0,0)*angles(0,85,0,true)*angles(0,0,-40,true)},{Time,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0})
		Tween(rutj,{C1=rutjC1*(cf(0,0,0)*angles(0,-85,0,true)):Inverse()},{Time,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0})
		Tween(rs,{C0=rsC0*cf(.1,-.2,-.2)*angles(90,0,0,true)*angles(0,0,-85,true)*angles(10,0,0,true)},{Time,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0})
		Tween(ls,{C0=lsC0*cf(.7,-.35,.1)*angles(90,0,0,true)*angles(0,0,-45,true)*angles(50,90,0,true)},{Time,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0})
		Tween(rh,{C1=rhC1*(cf(0,0,0)*angles(0,0,0,true)):Inverse()},{Time,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0})
		Tween(lh,{C1=lhC1*(cf(0,0,0)*angles(0,0,0,true)):Inverse()},{Time,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0})
		Tween(RW,{C0=cf(-.1,-ra.Size.Y/2,0)*angles(-10,0,0,true)},{Time,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0})
		wait(Time)
	end
	if not Holding then Using=false return end
	Using=true
	local Time=.025
	Tween(nec,{C0=necC0*cf(0,0,0)*angles(0,85,0,true)*angles(0,0,-40,true)*angles(5,0,0,true)},{Time,Enum.EasingStyle.Elastic,Enum.EasingDirection.Out,0,false,0})
	Tween(rutj,{C1=rutjC1*(cf(0,0,.05)*angles(5,0,0,true)*angles(0,-85,0,true)):Inverse()},{Time,Enum.EasingStyle.Elastic,Enum.EasingDirection.Out,0,false,0})
	Tween(rs,{C0=rsC0*cf(.1,-.2,-.2)*angles(90,0,0,true)*angles(0,0,-85,true)*angles(5,0,0,true)*angles(10,0,0,true)},{Time,Enum.EasingStyle.Elastic,Enum.EasingDirection.Out,0,false,0})
	Tween(ls,{C0=lsC0*cf(.7,-.275,.1)*angles(90,0,0,true)*angles(0,0,-45,true)*angles(5,0,0,true)*angles(50,90,0,true)},{Time,Enum.EasingStyle.Elastic,Enum.EasingDirection.Out,0,false,0})
	Tween(rh,{C1=rhC1*(cf(0,0,0)*angles(0,0,5,true)):Inverse()},{Time,Enum.EasingStyle.Elastic,Enum.EasingDirection.Out,0,false,0})
	Tween(lh,{C1=lhC1*(cf(0,0,0)*angles(0,0,5,true)):Inverse()},{Time,Enum.EasingStyle.Elastic,Enum.EasingDirection.Out,0,false,0})
	Tween(RW,{C0=cf(-.1,-ra.Size.Y/2,0)*angles(-10,0,0,true)},{Time,Enum.EasingStyle.Elastic,Enum.EasingDirection.Out,0,false,0})
	Sound(1905343596,1.5,random(.9,1.1,100),Rifle.Tubes,150,7.5)
	Rifle.TubesGlow.Color=rgb(255,65,0)
	Tween(Rifle.TubesGlow,{Color=c3(0,0,0)},{1,Enum.EasingStyle.Circular,Enum.EasingDirection.Out,0,false,0})
	coroutine.wrap(function()
		wait(.1)
		Sound(2781583369,.5,random(5,6.5,100),Rifle.Tubes,65,5)
	end)()
	for i=1,random(3,7) do
		local Time=random(.15,.5,100)
		local Scale=random(.75,1.25,1000)
		local Spark=ModelsRequire[1].PhysicalSpark:Clone()
		Spark.CFrame=Rifle.Tubes.CFrame*cf(Rifle.Tubes.FireEffect.Position)*angles(random(-180,180,10),random(-180,180,10),random(-180,180,10),true)
		Spark.Attachment1.Position=Spark.Attachment1.Position*v3(1,Scale,1)
		Spark.Attachment2.Position=Spark.Attachment2.Position*v3(1,Scale,1)
		Spark.Parent=workspace
		ins("BodyVelocity",{MaxForce=v3(huge,huge,huge),Velocity=Rifle.Tubes.CFrame.RightVector*random(5,40),Parent=Spark})
		ins("BodyAngularVelocity",{MaxTorque=v3(huge,huge,huge),AngularVelocity=v3(random(-20,20),random(-20,20),random(-20,20)),Parent=Spark})
		Tween(Spark.Attachment1,{Position=Spark.Attachment1.Position*v3(1,0,1)},{Time,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,0})
		Tween(Spark.Attachment2,{Position=Spark.Attachment2.Position*v3(1,0,1)},{Time,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,0})
		Instance.Remove(Spark,Time*2.5)
	end
	for i,v in pairs(Rifle.Tubes:GetDescendants()) do
		if v:IsA("ParticleEmitter") then
			if v:FindFirstChild("Amount") then
				v:Emit(clamp(v.Amount.Value+random(-5,5),1,25))
			end
			if v.Name==v.ClassName then
				coroutine.wrap(function()
					v.Enabled=true
					wait(.225)
					v.Enabled=false
				end)()
			end
		end
	end
	CreateBullet()
	local Time=math.random(.25,.5,1000)
	local Blur=Instance.new("BlurEffect",{Parent=game:GetService("Lighting"),Size=math.random(10,15,10)})
	Instance.Remove(Blur,Time)
	Tween(Blur,{Size=0},{Time,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0})
	for i=1,math.random(2,4) do
		Tween(game.Workspace.CurrentCamera,{CFrame=game.Workspace.CurrentCamera.CFrame*CFrame.Angles(.35,0,0,true)*CFrame.Angles(math.random(-1,1,100),math.random(-1,1,100),math.random(-1,1,100),true)},{.03,Enum.EasingStyle.Back,Enum.EasingDirection.InOut,0,true,0})
		game:GetService("RunService").RenderStepped:Wait()
	end
	wait(.025)
	local Time=.2
	Tween(nec,{C0=necC0*cf(0,0,0)*angles(0,85,0,true)*angles(0,0,-40,true)},{Time,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,false,0})
	Tween(rutj,{C1=rutjC1*(cf(0,0,0)*angles(0,-85,0,true)):Inverse()},{Time,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,false,0})
	Tween(rs,{C0=rsC0*cf(.1,-.2,-.2)*angles(90,0,0,true)*angles(0,0,-85,true)*angles(10,0,0,true)},{Time,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,false,0})
	Tween(ls,{C0=lsC0*cf(.7,-.35,.1)*angles(90,0,0,true)*angles(0,0,-45,true)*angles(50,90,0,true)},{Time,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,false,0})
	Tween(rh,{C1=rhC1*(cf(0,0,0)*angles(0,0,0,true)):Inverse()},{Time,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,false,0})
	Tween(lh,{C1=lhC1*(cf(0,0,0)*angles(0,0,0,true)):Inverse()},{Time,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,false,0})
	Tween(RW,{C0=cf(-.1,-ra.Size.Y/2,0)*angles(-10,0,0,true)},{Time,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,false,0})
	wait(Time-.05)
	Using=false
end
--// Connections

Mouse.Button1Up:Connect(function()
	Holding = nil
end)
Mouse.Button1Down:Connect(function()
	Fire(true)
	Holding = true
	spawn(function()
		while Holding == true do
			game:GetService("RunService").Heartbeat:wait()
			turnto(Mouse.Hit.Position)
		end
	end)
	repeat
		Fire()
	until not Holding
end)


game:GetService("RunService").Heartbeat:Connect(function()
	Sine=Sine+Change
	if not Effects or not Effects.Parent then
		Instance.Remove(Effects)
		Effects=ins("Model",{Name="Effects",Parent=Char})
	end
	if not Theme or Theme.Parent~=t then
		Instance.Remove(Theme)
		Theme=Sound(243924503,not Muted and 1.5 or 0,1,t,250,15,true)
	end
	Theme:Resume()
	Theme.SoundId="rbxassetid://"..243924503
	Theme.Pitch=1
	Theme.Volume=not Muted and 1.5 or 0
	Theme.Looped=true
	Theme.MaxDistance=250
	Theme.EmitterSize=15
	TimePos=Theme.TimePosition
	local Direction=hum.MoveDirection
	if Direction.Magnitude==0 then Direction=hrp.Velocity/7.5 end
	local MoveZ=clamp((Direction*(t or lt).CFrame.LookVector).X+(Direction*(t or lt).CFrame.LookVector).Z,-1,1)
	local MoveX=clamp((Direction*(t or lt).CFrame.RightVector).X+(Direction*(t or lt).CFrame.RightVector).Z,-1,1)
	local Moving=(hrp.Velocity*v3(1,0,1)).Magnitude>.01
	local VerY=hrp.Velocity.Y
	local StandR,RPos,RNID=Raycast(hrp.CFrame*cf(hrp.Size.X/4,-hrp.Size.Y/2,0).Position,-hrp.CFrame.UpVector,{char},3,false)
	local StandL,LPos,LNID=Raycast(hrp.CFrame*cf(-hrp.Size.X/4,-hrp.Size.Y/2,0).Position,-hrp.CFrame.UpVector,{char},3,false)
	local Stand=StandR or StandL
	hum.WalkSpeed,hum.JumpPower=(LockWS and WS or hum.WalkSpeed),(LockJP and JP or hum.JumpPower)
	if not Moving and Stand then
		Change=1
		local IdleVal=20
		nec.C0=nec.C0:Lerp(necC0*cf(0,0,0)*angles(sin(Sine/IdleVal)*2,CosSin(Sine/(IdleVal*3))*7.5,0,true)*cf(0,0,0)*angles(-2,0,0,true),.1)
		rutj.C0=rutj.C0:Lerp(rutjC0*cf(0,.05*cos(Sine/IdleVal),0)*angles(CosSin(Sine/(IdleVal*1.5))*2.5,cos(Sine/(IdleVal*2))*2.5,0,true)*cf(0,0,0)*angles(0,0,0,true),.1)
		rs.C0=rs.C0:Lerp(rsC0*cf(0,-.05*cos(Sine/IdleVal),0)*angles(sin(Sine/IdleVal)*-3,0,0,true)*cf(0,-.15,-.1)*angles(40,0,-60,true)*angles(-20,50,25,true),.1)
		ls.C0=ls.C0:Lerp(lsC0*cf(0,-.05*cos(Sine/IdleVal),0)*angles(sin(Sine/IdleVal)*-3,0,0,true)*cf(-.15,-.1,-.5)*angles(60,0,15,true)*angles(0,100,0,true),.1)
		rh.C0=rh.C0:Lerp(rhC0*cf(0,-.05*cos(Sine/IdleVal),0)*angles(CosSin(Sine/(IdleVal*1.5))*-3.65,0,0,true)*angles(cos(Sine/(IdleVal*2))*-2,0,0,true)*cf(0,0,0)*angles(0,-5,2.5,true),.1)
		lh.C0=lh.C0:Lerp(lhC0*cf(0,-.05*cos(Sine/IdleVal),0)*angles(CosSin(Sine/(IdleVal*1.5))*-3.65,0,0,true)*angles(cos(Sine/(IdleVal*2))*2,0,0,true)*cf(0,0,0)*angles(0,5,-2.5,true),.1)
		RW.C0=RW.C0:Lerp(cf(-.1,-ra.Size.Y/2,0)*angles(5,0,-10,true),.1)
	elseif Moving and Stand then
		local WSVal=6/clamp(hum.WalkSpeed/16,.25,2)*hrp.Size.Y/2
		Change=1
		nec.C0=nec.C0:Lerp(necC0*cf(0,0,0)*angles(cos(Sine/(WSVal/2))*-5,CosSin(Sine/WSVal)*-10,0,true)*cf(0,0,0)*angles(2.5*MoveZ,-55*MoveX,0,true),.2/(t.Size.Y/2)*(hum.WalkSpeed/16)/3)
		rutj.C0=rutj.C0:Lerp(rutjC0*cf(0,.65*cos(Sine/(WSVal/2)),0)*angles(sin(Sine/(WSVal/2))*5,CosSin(Sine/WSVal)*10,0,true)*cf(0,0,0)*angles(-5*MoveZ,0,-5*MoveX,true),.2/(t.Size.Y/2)*(hum.WalkSpeed/16)/3)
		rs.C0=rs.C0:Lerp(rsC0*cf(0,.2*sin(Sine/(WSVal/2)),0)*angles(CosSin(Sine/(WSVal/2))*5,0,0,true)*cf(0,-.15,-.1)*angles(40,0,-60,true)*angles(-20,50,25,true),.2/(t.Size.Y/2)*(hum.WalkSpeed/16)/3)
		ls.C0=ls.C0:Lerp(lsC0*cf(0,.2*sin(Sine/(WSVal/2)),0)*angles(CosSin(Sine/(WSVal/2))*5,0,0,true)*cf(-.15,-.1,-.5)*angles(60,0,15,true)*angles(0,100,0,true),.2/(t.Size.Y/2)*(hum.WalkSpeed/16)/3)
		rh.C0=rh.C0:Lerp(rhC0*cf(0,-.5*cos(Sine/WSVal),-.15+.6*cos(Sine/WSVal))*angles(-(10*abs(MoveZ))+CosSin(Sine/WSVal)*-140*MoveZ,0,CosSin(Sine/WSVal)*-100*MoveX,true)*cf(0,0,0)*angles(0,0,0,true),.2/(t.Size.Y/2)*(hum.WalkSpeed/16)/3)
		lh.C0=lh.C0:Lerp(lhC0*cf(0,.5*cos(Sine/WSVal),-.15-.6*cos(Sine/WSVal))*angles(-(10*abs(MoveZ))+CosSin(Sine/WSVal)*140*MoveZ,0,CosSin(Sine/WSVal)*100*MoveX,true)*cf(0,0,0)*angles(0,0,0,true),.2/(t.Size.Y/2)*(hum.WalkSpeed/16)/3)
		RW.C0=RW.C0:Lerp(cf(-.1,-ra.Size.Y/2,0)*angles(5,0,-15,true),.2/(t.Size.Y/2)*(hum.WalkSpeed/16)/3)
		--thanks to kyu or neb.. whatever
		if cos(Sine/WSVal)/2>.2 and Step=="L" then
			Step="R"
			if StandR then
				local SoundId=StepSounds[StandR.Material.Name] or 0
				if StandR.Material=="Sand" and (StandR.Color.r>.7 and StandR.Color.g>.7 and StandR.Color.b>.7) then
					SoundId=StepSounds["Snow"]
				end
				local SizeVal=StandR.Size*RNID
				if SoundId==941640049 then
					SizeVal=SizeVal/2
				end
				Sound(SoundId,(.35*clamp((WSVal)/1.5,.5,3.5))/clamp(math.max(SizeVal.X,SizeVal.Y,SizeVal.Z),.5,1.25),random(.9,1.1,100)*clamp(math.max(SizeVal.X,SizeVal.Y,SizeVal.Z)/10,.5,1.2)*clamp((WSVal)/1.5,.5,2),t)
			end
		end
		if cos(Sine/WSVal)/2<-.2 and Step=="R" then
			Step="L"
			if StandL then
				local SoundId=StepSounds[StandL.Material.Name] or 0
				if StandL.Material==Enum.Material.Sand and (StandL.Color.r>.7 and StandL.Color.g>.7 and StandL.Color.b>.7) then
					SoundId=StepSounds["Snow"]
				end
				local SizeVal=StandL.Size*LNID
				if SoundId==941640049 then
					SizeVal=SizeVal/2
				end
				Sound(SoundId,(.35*clamp((WSVal)/1.5,.5,3.5))/clamp(math.max(SizeVal.X,SizeVal.Y,SizeVal.Z),.5,1.25),random(.9,1.1,100)*clamp(math.max(SizeVal.X,SizeVal.Y,SizeVal.Z)/10,.5,1.2)*clamp((WSVal)/1.5,.5,2),t)
			end
		end
		--[[
		nec.C0=nec.C0:Lerp(necC0*cf(0,0,0)*angles(0,0,0,true)*cf(0,0,0)*angles(0,0,0,true),.1)
		rutj.C0=rutj.C0:Lerp(rutjC0*cf(0,0,0)*angles(0,0,0,true)*cf(0,0,0)*angles(0,0,0,true),.1)
		rs.C0=rs.C0:Lerp(rsC0*cf(0,0,0)*angles(0,0,0,true)*cf(0,0,0)*angles(0,0,0,true),.1)
		ls.C0=ls.C0:Lerp(lsC0*cf(0,0,0)*angles(0,0,0,true)*cf(0,0,0)*angles(0,0,0,true),.1)
		rh.C0=rh.C0:Lerp(rhC0*cf(0,0,0)*angles(0,0,0,true)*cf(0,0,0)*angles(0,0,0,true),.1)
		lh.C0=lh.C0:Lerp(lhC0*cf(0,0,0)*angles(0,0,0,true)*cf(0,0,0)*angles(0,0,0,true),.1)
		
		nec.C0=nec.C0:Lerp(necC0*cf(0,0,0)*angles(0,0,0,true)*cf(0,0,0)*angles(0,0,0,true),.2/(t.Size.Y/2)*(hum.WalkSpeed/16)/3)
		rutj.C0=rutj.C0:Lerp(rutjC0*cf(0,0,0)*angles(0,0,0,true)*cf(0,0,0)*angles(0,0,0,true),.2/(t.Size.Y/2)*(hum.WalkSpeed/16)/3)
		rs.C0=rs.C0:Lerp(rsC0*cf(0,0,0)*angles(0,0,0,true)*cf(0,0,0)*angles(0,0,0,true),.2/(t.Size.Y/2)*(hum.WalkSpeed/16)/3)
		ls.C0=ls.C0:Lerp(lsC0*cf(0,0,0)*angles(0,0,0,true)*cf(0,0,0)*angles(0,0,0,true),.2/(t.Size.Y/2)*(hum.WalkSpeed/16)/3)
		rh.C0=rh.C0:Lerp(rhC0*cf(0,0,0)*angles(0,0,0,true)*cf(0,0,0)*angles(0,0,0,true),.2/(t.Size.Y/2)*(hum.WalkSpeed/16)/3)
		lh.C0=lh.C0:Lerp(lhC0*cf(0,0,0)*angles(0,0,0,true)*cf(0,0,0)*angles(0,0,0,true),.2/(t.Size.Y/2)*(hum.WalkSpeed/16)/3)
		
		-																									-
		
		Joints.Neck.C0=Joints.Neck.C0:Lerp(Joints.Neck.Link.C0*cf(0,0,0)*angles(0,0,0,true)*cf(0,0,0)*angles(0,0,0,true),.1)
		Joints.Root.C0=Joints.Root.C0:Lerp(Joints.Root.Link.C0*cf(0,0,0)*angles(0,0,0,true)*cf(0,0,0)*angles(0,0,0,true),.1)
		Joints.Waist.C0=Joints.Waist.C0:Lerp(Joints.Waist.Link.C0*cf(0,0,0)*angles(0,0,0,true)*cf(0,0,0)*angles(0,0,0,true),.1)
		Joints.RightShoulder.C0=Joints.RightShoulder.C0:Lerp(Joints.RightShoulder.Link.C0*cf(0,0,0)*angles(0,0,0,true)*cf(0,0,0)*angles(0,0,0,true),.1)
		Joints.RightElbow.C0=Joints.RightElbow.C0:Lerp(Joints.RightElbow.Link.C0*cf(0,0,0)*angles(0,0,0,true)*cf(0,0,0)*angles(0,0,0,true),.1)
		Joints.RightWrist.C0=Joints.RightWrist.C0:Lerp(Joints.RightWrist.Link.C0*cf(0,0,0)*angles(0,0,0,true)*cf(0,0,0)*angles(0,0,0,true),.1)
		Joints.LeftShoulder.C0=Joints.LeftShoulder.C0:Lerp(Joints.LeftShoulder.Link.C0*cf(0,0,0)*angles(0,0,0,true)*cf(0,0,0)*angles(0,0,0,true),.1)
		Joints.LeftElbow.C0=Joints.LeftElbow.C0:Lerp(Joints.LeftElbow.Link.C0*cf(0,0,0)*angles(0,0,0,true)*cf(0,0,0)*angles(0,0,0,true),.1)
		Joints.LeftWrist.C0=Joints.LeftWrist.C0:Lerp(Joints.LeftWrist.Link.C0*cf(0,0,0)*angles(0,0,0,true)*cf(0,0,0)*angles(0,0,0,true),.1)
		Joints.RightHip.C0=Joints.RightHip.C0:Lerp(Joints.RightHip.Link.C0*cf(0,0,0)*angles(0,0,0,true)*cf(0,0,0)*angles(0,0,0,true),.1)
		Joints.RightKnee.C0=Joints.RightKnee.C0:Lerp(Joints.RightKnee.Link.C0*cf(0,0,0)*angles(0,0,0,true)*cf(0,0,0)*angles(0,0,0,true),.1)
		Joints.RightAnkle.C0=Joints.RightAnkle.C0:Lerp(Joints.RightAnkle.Link.C0*cf(0,0,0)*angles(0,0,0,true)*cf(0,0,0)*angles(0,0,0,true),.1)
		Joints.LeftHip.C0=Joints.LeftHip.C0:Lerp(Joints.LeftHip.Link.C0*cf(0,0,0)*angles(0,0,0,true)*cf(0,0,0)*angles(0,0,0,true),.1)
		Joints.LeftKnee.C0=Joints.LeftKnee.C0:Lerp(Joints.LeftKnee.Link.C0*cf(0,0,0)*angles(0,0,0,true)*cf(0,0,0)*angles(0,0,0,true),.1)
		Joints.LeftAnkle.C0=Joints.LeftAnkle.C0:Lerp(Joints.LeftAnkle.Link.C0*cf(0,0,0)*angles(0,0,0,true)*cf(0,0,0)*angles(0,0,0,true),.1)
		--]]
	elseif not Stand then
		Change=1
		nec.C0=nec.C0:Lerp(necC0*cf(0,0,0)*angles(0,0,0,true)*cf(0,0,0)*angles(clamp(hrp.Velocity.Y,-15,15),0,0,true),.1)
		rutj.C0=rutj.C0:Lerp(rutjC0*cf(0,0,0)*angles(0,0,0,true)*cf(0,0,0)*angles(clamp(hrp.Velocity.Y,-30,20),0,0,true),.1)
		rs.C0=rs.C0:Lerp(rsC0*cf(0,0,0)*angles(0,0,0,true)*cf(0,-.15,-.1)*angles(40,0,-60,true)*angles(-20,50,25,true),.1)
		ls.C0=ls.C0:Lerp(lsC0*cf(0,0,0)*angles(0,0,0,true)*cf(-.15,-.1,-.5)*angles(60,0,15,true)*angles(0,100,0,true),.1)
		rh.C0=rh.C0:Lerp(rhC0*cf(0,0,0)*angles(0,0,0,true)*cf(0,.4,-.35)*angles(-10,-5,5,true),.1)
		lh.C0=lh.C0:Lerp(lhC0*cf(0,0,0)*angles(clamp(-hrp.Velocity.Y,-25,35),0,0,true)*cf(0,.2,-.15)*angles(-2.5,5,-5,true),.1)
		RW.C0=RW.C0:Lerp(cf(-.1,-ra.Size.Y/2,0)*angles(5,0,-10,true),.1)
	end
	if Type=="R6" then
		if not Using then
			nec.C1=nec.C1:Lerp(necC1,.2)
			rutj.C1=rutj.C1:Lerp(rutjC1,.2)
			rs.C1=rs.C1:Lerp(rsC1,.2)
			ls.C1=ls.C1:Lerp(lsC1,.2)
			rh.C1=rh.C1:Lerp(rhC1,.2)
			lh.C1=lh.C1:Lerp(lhC1,.2)
		end
		necC0,necC1=cf(0,t.Size.Y/2,0),cf(0,-h.Size.Y/2,0)
		rutjC0,rutjC1=cf(0,0,0),cf(0,0,0)
		rsC0,rsC1=cf(t.Size.X/2,t.Size.Y/4,0),cf(-ra.Size.X/2,ra.Size.Y/4,0)
		lsC0,lsC1=cf(-t.Size.X/2,t.Size.Y/4,0),cf(la.Size.X/2,la.Size.Y/4,0)
		rhC0,rhC1=cf(t.Size.X/4,-t.Size.Y/2,0),cf(0,rl.Size.Y/2,0)
		lhC0,lhC1=cf(-t.Size.X/4,-t.Size.Y/2,0),cf(0,ll.Size.Y/2,0)
	end
	if Using == false then
		HumanRoot.Position = CloneChar.Torso.Position
		bambam.Location = CloneChar.Torso.Position
	end
end)
