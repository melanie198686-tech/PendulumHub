

--[[ {<HATS NEEDED>} 
https://www.roblox.com/catalog/48474313/Red-Roblox-Cap

https://www.roblox.com/catalog/4391384843/International-Fedora-Russia

https://www.roblox.com/catalog/48474294/ROBLOX-Girl-Hair

https://www.roblox.com/catalog/62724852/Chestnut-Bun

https://www.roblox.com/catalog/451220849/Lavender-Updo

https://www.roblox.com/catalog/63690008/Pal-Hair

https://www.roblox.com/catalog/62234425/Brown-Hair
                   ]]
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

--local ModelsRequire = game:GetObjects("rbxassetid://7981107344")


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
FakeLimbs["Head"].Transparency = 1





local CloneChar = workspace.non
s = game:GetService("RunService").Heartbeat:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,35,0)
end)
task.spawn(function()
	while true do
		wait()
		if HumanDied == true then
			s:Disconnect()
			break
		end
	end
end)
local SHOW = Instance.new("SelectionBox",workspace)
SHOW.Adornee = game.Players.LocalPlayer.Character.HumanoidRootPart
























wait(1/30)
local plr =game.Players.LocalPlayer
local char = CloneChar
local hum = char:FindFirstChildWhichIsA('Humanoid')
local sit,run,crouch = false,false,false
local repeatkey = false
local repeatmouse = false
local MouseHit,MouseTarget,CCFrame,CCordFrame = nil,nil,nil,nil
local sine = 0
local attack=false
local speed = 12
local effects = Instance.new("Folder",char)
hum.MaxHealth=150
hum.Health=150
local Mouse = plr:GetMouse()

local Shooting = true
Mouse.Button1Up:Connect(function()
	Shooting = false
end)
Mouse.Button1Down:Connect(function()
	Shooting = true
	repeat
		shoot()
	until Shooting == false
end)
Mouse.KeyDown:Connect(function(key)
	if key == "c" then
		if crouch == true then
			crouch = false
		else
			crouch = true
		end
	elseif key == "e" then
		plasma_shoot()
	elseif key == "r" then
		grenadethrow()
	elseif key == "q" then
		if run == true then
			run = false
		else
			run = true
		end
	end
end)

for _,a in pairs(char:GetDescendants()) do
	if a:IsA'BasePart' then
		a.BrickColor=BrickColor.new("Really black")
		a.Color=Color3.new(0,0,0)
		if a.Name == "Head" then
			a.Transparency=1
		end
	elseif a.Name=="Animate" or a:IsA'Animator' or a:IsA'BodyColors' or a:IsA'Accessory' or a:IsA'Hat' or a:IsA'Decal' or a:IsA'ShirtGraphic' or a:IsA'Pants' or a:IsA'Shirt' or a:IsA'CharacterMesh' then
		a:Destroy()
	end
end
local mus = Instance.new("Sound",char:WaitForChild('Torso'))
mus.SoundId="rbxassetid://4814569349"
mus.Volume=1.5
mus.Pitch=1
mus.Looped=true
mus:Play()
local helmet = Instance.new("Part",char:WaitForChild('Head'))
helmet.Size=Vector3.new(1.25,1.25,1.25)
helmet.CanCollide=false
helmet.Name="Elite Combine Helmet"
local mesh = Instance.new("SpecialMesh",helmet)
mesh.MeshType="FileMesh"
mesh.MeshId="rbxassetid://480000024"
mesh.TextureId="rbxassetid://480143411"
mesh.Scale=Vector3.new(0.001525,0.001275,0.0013)
local eye = Instance.new("Part",helmet) Instance.new("SpecialMesh",eye).MeshType="Sphere"
eye.Color=Color3.new(1,0,0)
eye.Material="Neon"
eye.Size=Vector3.new(0.4,0.4,0.4)
eye.CanCollide=false
eye.Name="Neon Eye"
local blacc = Instance.new("Part",helmet) Instance.new("SpecialMesh",blacc).MeshType="Sphere"
blacc.Color=Color3.new(0,0,0)
blacc.Material="Neon"
blacc.Size=Vector3.new(1.05,1.35,0.5)
blacc.CanCollide=false
local bweld = Instance.new("Weld",blacc) bweld.Part0=blacc bweld.Part1 = helmet bweld.C0=CFrame.new(0,0.1,0.5)*CFrame.Angles(math.rad(-10),0,0)
local eweld = Instance.new("Weld",eye) eweld.Part0=eye eweld.Part1 = helmet eweld.C0=CFrame.new(0,0.31,-0.065)
local weld = Instance.new("Weld",helmet) weld.Part0=helmet weld.Part1 = char:WaitForChild('Head') weld.C0=CFrame.new(0,0.1,0)*CFrame.Angles(math.rad(90),math.rad(180),0)
local shirt = Instance.new("Shirt",char)
shirt.ShirtTemplate="http://www.roblox.com/asset/?id=252315488"
local pants = Instance.new("Pants",char)
pants.PantsTemplate="http://www.roblox.com/asset/?id=252315501"
local gun = Instance.new("Part",char)
gun.Size=Vector3.new(4,1.5,0.75)
gun.CanCollide=false
gun.Name="Elite Combine Gun"
local mesh = Instance.new("SpecialMesh",gun)
mesh.MeshType="FileMesh"
mesh.MeshId="rbxassetid://433818517"
mesh.TextureId="rbxassetid://433818528"
mesh.Scale=Vector3.new(0.615,0.7,0.675)
local gumweld = Instance.new("Weld",gun) gumweld.Part0=gun gumweld.Part1 = char:WaitForChild('Right Arm') gumweld.C0=CFrame.new(-1.2,-0.3,0.4)*CFrame.Angles(math.rad(70),math.rad(-5),math.rad(85))
local p = Instance.new("Part",char)
p.Color=Color3.new()
p.CanCollide=false
p.Size=Vector3.new(2.1,0.25,1.1)
p.Name="Things"
p.Material="Neon"
local weld = Instance.new("Weld",p) weld.Part0=p weld.Part1 = char:WaitForChild('Torso') weld.C0=CFrame.new(0,0.8,0)
local grenade = Instance.new("Part",workspace) local mesh = Instance.new("SpecialMesh",grenade) mesh.MeshType="FileMesh" mesh.MeshId="rbxassetid://548193107" mesh.TextureId="rbxassetid://926040988" mesh.Scale=Vector3.new(.1,.1,.1)
grenade.Size=Vector3.new(.5,1,.5)
grenade.CanCollide=true
local weld = Instance.new("Weld",grenade) weld.Part0=grenade weld.Part1=p weld.C0=CFrame.new(0.5,-0.25,-0.75)*CFrame.Angles(math.rad(-5),0,math.rad(-20))
local radio = Instance.new("Part",p) local mesh = Instance.new("SpecialMesh",radio) mesh.MeshType="FileMesh" mesh.MeshId="rbxassetid://2269958061" mesh.TextureId="rbxassetid://2269958743" mesh.Scale=Vector3.new(.075,.075,.075) mesh.Offset=Vector3.new(0,0,-.05)
radio.Size=Vector3.new(.25,2.5,.5)
radio.CanCollide=false
local weld = Instance.new("Weld",radio) weld.Part0=radio weld.Part1=p weld.C0=CFrame.new(1.15,-0.75,0.15)*CFrame.Angles(math.rad(15),math.rad(180),math.rad(5))
local fromaxisangle = function(x, y, z) -- credit to phantom forces devs
	if not y then
		x, y, z = x.x, x.y, x.z
	end
	local m = (x * x + y * y + z * z) ^ 0.5
	if m > 1.0E-5 then
		local si = math.sin(m / 2) / m
		return CFrame.new(0, 0, 0, si * x, si * y, si * z, math.cos(m / 2))
	else
		return CFrame.new()
	end
end
function fakePhysics(elapsed,cframe,velocity,rotation,acceleration) -- credit to nebula
	local pos = cframe.p
	local matrix = cframe-pos
	return fromaxisangle(elapsed*rotation)*matrix+pos+elapsed*velocity+elapsed*elapsed*acceleration
end
function CastRay(startPos,endPos,range,ignoreList)
	local ray = Ray.new(startPos,(endPos-startPos).unit*range)
	local part,pos,norm = workspace:FindPartOnRayWithIgnoreList(ray,ignoreList or {},false,true)
	return part,pos,norm,(pos and (startPos-pos).magnitude)
end
function MakeRD(who,power,t,h,f,customend)
	for _,a in pairs(who:GetDescendants()) do
		coroutine.resume(coroutine.create(function()
			if a:IsA'Motor6D' or a:IsA'Motor' or a:IsA'VelocityMotor' or a.Name=="LeftAnkle" or a.Name=="LeftWrist" or a.Name=="LeftElbow" or a.Name=="LeftKnee" or a.Name=="LeftShoulder" or a.Name=="LeftHip" or a.Name=="Root" or a.Name=="RightAnkle" or a.Name=="RightWrist" or a.Name=="RightElbow" or a.Name=="RightKnee" or a.Name=="RightShoulder" or a.Name=="RightHip" or a.Name=="Waist" or a.Name=="Neck" or a.Name=="Left Hip" or a.Name==" Left Shoulder" or a.Name=="Right Hip" or a.Name=="Right Shoulder" or a.Name=="RootJoint" then
				if t==true and h==false and f==false and a.Name ~= "Waist" and a.Name ~= "Left Hip" and a.Name ~= "Right Hip" then
					local ainfo = {a.C0,a.C1,a.Parent,a.Part0,a.Part1,a.Name}
					local h=Instance.new("BallSocketConstraint",ainfo[3]) h.Name=ainfo[6]
					h.LimitsEnabled=true h.TwistUpperAngle=135 h.TwistLimitsEnabled=true h.TwistLowerAngle=-135 h.TwistUpperAngle=135
					local a1=Instance.new("Attachment",ainfo[4]) a1.CFrame=ainfo[1]
					local a2=Instance.new("Attachment",ainfo[5]) a2.CFrame=ainfo[2]
					h.Attachment0=a1 h.Attachment1=a2
				elseif t==false and h==true and f==false and a.Name ~= "Neck" then
					local ainfo = {a.C0,a.C1,a.Parent,a.Part0,a.Part1,a.Name}
					local h=Instance.new("BallSocketConstraint",ainfo[3]) h.Name=ainfo[6]
					h.LimitsEnabled=true h.TwistUpperAngle=135 h.TwistLimitsEnabled=true h.TwistLowerAngle=-135 h.TwistUpperAngle=135
					local a1=Instance.new("Attachment",ainfo[4]) a1.CFrame=ainfo[1]
					local a2=Instance.new("Attachment",ainfo[5]) a2.CFrame=ainfo[2]
					h.Attachment0=a1 h.Attachment1=a2
				elseif h==true and t==true and f==false and a.Name ~= "Neck" and a.Name ~= "Waist" and a.Name ~= "Left Hip" and a.Name ~= "Right Hip" then
					local ainfo = {a.C0,a.C1,a.Parent,a.Part0,a.Part1,a.Name}
					local h=Instance.new("BallSocketConstraint",ainfo[3]) h.Name=ainfo[6]
					h.LimitsEnabled=true h.TwistUpperAngle=135 h.TwistLimitsEnabled=true h.TwistLowerAngle=-135 h.TwistUpperAngle=135
					local a1=Instance.new("Attachment",ainfo[4]) a1.CFrame=ainfo[1]
					local a2=Instance.new("Attachment",ainfo[5]) a2.CFrame=ainfo[2]
					h.Attachment0=a1 h.Attachment1=a2
				elseif t==false and h==false and f==false then
					local ainfo = {a.C0,a.C1,a.Parent,a.Part0,a.Part1,a.Name}
					local h=Instance.new("BallSocketConstraint",ainfo[3]) h.Name=ainfo[6]
					h.LimitsEnabled=true h.TwistUpperAngle=135 h.TwistLimitsEnabled=true h.TwistLowerAngle=-135 h.TwistUpperAngle=135
					local a1=Instance.new("Attachment",ainfo[4]) a1.CFrame=ainfo[1]
					local a2=Instance.new("Attachment",ainfo[5]) a2.CFrame=ainfo[2]
					h.Attachment0=a1 h.Attachment1=a2
				elseif f==true and a.Name ~= "Neck" and a.Name ~= "Left Hip" and a.Name ~= "Right Hip" and a.Name ~= "LeftHip" and a.Name ~= "RightHip" and a.Name ~= "LeftShoulder" and a.Name ~= "RightShoulder" and a.Name ~= "Left Shoulder" and a.Name ~= "Right Shoulder" then
					local ainfo = {a.C0,a.C1,a.Parent,a.Part0,a.Part1,a.Name}
					local h=Instance.new("BallSocketConstraint",ainfo[3]) h.Name=ainfo[6]
					h.LimitsEnabled=true h.TwistUpperAngle=135 h.TwistLimitsEnabled=true h.TwistLowerAngle=-135 h.TwistUpperAngle=135
					local a1=Instance.new("Attachment",ainfo[4]) a1.CFrame=ainfo[1]
					local a2=Instance.new("Attachment",ainfo[5]) a2.CFrame=ainfo[2]
					h.Attachment0=a1 h.Attachment1=a2
				end
				a:Destroy()	
			elseif a:IsA'Humanoid' then a.BreakJointsOnDeath=false a.MaxHealth=nil a.Health=nil a.PlatformStand=true
			elseif a:IsA'BasePart' then
				if a.Size == Vector3.new(2,2,1) or a.Size == Vector3.new(2,2.1,1) or a.Size == Vector3.new(1,1.105,1) or a.Size == Vector3.new(1,1.227,1) or a.Size == Vector3.new(1,1.253,1) or a.Size == Vector3.new(1,1.277,1) or a.Size == Vector3.new(1,2,1) or a.Size == Vector3.new(2,1,1) or a.Name == "Head" or a.Name == "Torso" or a.Name == "Right Arm" or a.Name == "Left Arm" or a.Name == "Right Leg" or a.Name == "Left Leg" or a.Name == "RightArm" or a.Name == "LeftArm" or a.Name == "RightLeg" or a.Name == "LeftLeg" or a.Name == "UpperTorso" or a.Name == "HumanoidRootPart" or a.Name == "LowerTorso" or a.Name == "RightHand" or a.Name == "LeftHand" or a.Name == "RightFoot" or a.Name == "LeftFoot" or a.Name == "LeftUpperArm" or a.Name == "LeftLowerArm" or a.Name == "RightUpperArm" or a.Name == "RightLowerArm" or a.Name == "LeftUpperLeg" or a.Name == "LeftLowerLeg" or a.Name == "RightUpperLeg" or a.Name == "RightLowerLeg" then
					spawn(function() a.Anchored=false a.CanCollide=true a.Velocity=Vector3.new(math.random(-power,power),math.random((power/3),(power*1.5)),math.random(-power,power)) while a~=nil do game:GetService("RunService").Heartbeat:Wait() a.Anchored=false a.CanCollide=true end end)
					spawn(function() local bv = Instance.new("BodyVelocity") bv.maxForce = Vector3.new(1000000000, 1000000000, 1000000000) bv.velocity = Vector3.new(math.random(-power,power),math.random((power/3),(power*1.5)),math.random(-power,power)) bv.Parent = a wait(0.06) bv:Destroy() end)
					if a.Name=="HumanoidRootPart" then a:Destroy() end end
			end
		end))
	end
	coroutine.resume(coroutine.create(function()while who~=nil do game:GetService("RunService").Heartbeat:Wait() if who:FindFirstChildOfClass'Humanoid' then local h=who:FindFirstChildOfClass'Humanoid' h.BreakJointsOnDeath=false h.MaxHealth=nil h.Health=nil h.PlatformStand=true end end end))
	if customend == false then
		wait(math.random(15,60)) 
		if who then
			for _,a in pairs(who:GetDescendants()) do
				coroutine.resume(coroutine.create(function()
					if a:IsA'BasePart' then
						for i=1,50 do wait()
							a.Transparency=a.Transparency+1/50
						end
						a:BreakJoints()
						a:Destroy()
					end
				end))
			end
		end
	end
end
local blpr = Instance.new("Part") Instance.new("SpecialMesh",blpr).MeshType="Sphere"
blpr.Color=Color3.fromRGB(117,0,0)
blpr.Material="Glass"
blpr.Anchored=true
blpr.CanCollide=false
blpr.Locked=true
blpr.Size=Vector3.new(.25,.25,.5)

local blprpl = Instance.new("ParticleEmitter",blpr)
blprpl.Color=ColorSequence.new(Color3.fromRGB(165,0,0))
blprpl.LightInfluence=0
blprpl.Size=NumberSequence.new({NumberSequenceKeypoint.new(0,0.5+math.random(-.25,.25)),NumberSequenceKeypoint.new(1,0)})
blprpl.Texture="rbxassetid://134531274"
blprpl.Transparency=NumberSequence.new(0.25)
blprpl.ZOffset=1
blprpl.Acceleration=Vector3.new(0,-5,0)
blprpl.Drag=-2
blprpl.VelocityInheritance=2
blprpl.EmissionDirection="Front"
blprpl.Lifetime=NumberRange.new(0.25,0.75)
blprpl.Rate=100
blprpl.Rotation=NumberRange.new(-180,180)
blprpl.RotSpeed=NumberRange.new(-60,60)
blprpl.Speed=NumberRange.new(1,3)
blprpl.SpreadAngle=Vector2.new(5,5)
blprpl.Name="Blood"
local blood = Instance.new("ParticleEmitter")
blood.Color=ColorSequence.new(Color3.fromRGB(165,0,0))
blood.LightInfluence=0
blood.Size=NumberSequence.new({NumberSequenceKeypoint.new(0,0.5+math.random(-.25,.25)),NumberSequenceKeypoint.new(1,0)})
blood.Texture="rbxassetid://134531274"
blood.Transparency=NumberSequence.new(0.25)
blood.ZOffset=1
blood.Acceleration=Vector3.new(0,-20,0)
blood.EmissionDirection="Front"
blood.Lifetime=NumberRange.new(0.25,1.75)
blood.Rate=1000000000
blood.Speed=NumberRange.new(5,14)
blood.SpreadAngle=Vector2.new(360,360)
blood.Name="Blood"
function BloodDrop(where,vel,siz,lt,ignor,parent)
	coroutine.resume(coroutine.create(function()
		local bl=blpr:Clone() bl.Transparency=math.random(5,45)/100 bl.Parent=parent bl.Size=Vector3.new(siz,siz,siz*2)
		bl:WaitForChild'Blood'.Size=NumberSequence.new({NumberSequenceKeypoint.new(0,siz+math.random(-0.25,0.25)),NumberSequenceKeypoint.new(1,0)})
		local StartTravel = tick()
		local startTick = tick()
		coroutine.wrap(function()
			while bl~=nil do
				local elapsed = tick()-startTick
				local trElapsed = tick()-StartTravel
				if(elapsed>lt)then
					bl:destroy();
					break
				end
				local newCF = fakePhysics(trElapsed,where,vel,Vector3.new(),Vector3.new(0,-workspace.Gravity,0))
				local nextCF = fakePhysics(trElapsed+.05,where,vel,Vector3.new(),Vector3.new(0,-workspace.Gravity,0))
				local dist = (bl.Position-newCF.p).magnitude
				local hit,pos,norm = CastRay(bl.Position,newCF.p,dist,ignor)
				bl.CFrame = CFrame.new(newCF.p,nextCF.p)
				if hit and hit.CanCollide then
					local pb = Instance.new("Part",parent) Instance.new("SpecialMesh",pb).MeshType="Cylinder" pb.Name='BloodEffect'
					pb.Size=Vector3.new(0.01,bl.Size.Y*2,bl.Size.Y*2) pb.CFrame=CFrame.new(pos,pos+norm)*CFrame.Angles(0,math.rad(90),0)
					pb.Anchored=false pb.CanCollide=false pb.Color=Color3.fromRGB(117,0,0) pb.Material="Glass" pb.Transparency=bl.Transparency
					local w=Instance.new("ManualWeld")w.Part0=hit w.Part1=pb w.C0=CFrame.new(0,0,0) w.C1=pb.CFrame:inverse()*hit.CFrame w.Parent = pb
					spawn(function() local bll = blood:Clone() bll.Parent=pb bll.Size=NumberSequence.new({NumberSequenceKeypoint.new(0,siz+math.random(-0.25,0.25)),NumberSequenceKeypoint.new(1,0)}) bll.Enabled=true wait(0.01) bll.Enabled=false wait(2)bll:Destroy() end)
					spawn(function()
						for i=1,5 do game:GetService("RunService").Heartbeat:Wait()
							pb.Size=pb.Size+Vector3.new(0,(bl.Size.Y*2)/5,(bl.Size.Y*2)/5)
						end
						wait(math.random(3,15))
						local random=math.random(25,100)
						local tran = (1-pb.Transparency)
						for i=1,random do game:GetService("RunService").Heartbeat:Wait()
							pb.Transparency=pb.Transparency+tran/random
							pb.Size=pb.Size-Vector3.new(0,(bl.Size.Y*3)/random,(bl.Size.Y*3)/random)
						end
						if pb then pb:Destroy() end
					end)
					bl.Transparency=1 bl:WaitForChild'Blood'.Enabled=false
					break
				end
				game:GetService("RunService").Heartbeat:Wait()
			end
			wait(1.76)
			if bl then bl:Destroy() end
		end)()
	end))
end
function reg(where,range,ignor)
	return workspace:FindPartsInRegion3WithIgnoreList(Region3.new(where-Vector3.new(1,1,1)*range/2,where+Vector3.new(1,1,1)*range/2),ignor,100)
end
function Kill(who,typ)
	coroutine.resume(coroutine.create(function()
		if who.Parent ~= char and who.Parent ~= effects and who ~= char and who ~= effects and who ~= script and who.Parent ~= script and who.Name ~= "Ietahuoy" then
			bambam.Force = Vector3.new(500,0,500)
			if typ=="Annihilate" then
				attack = true
				for i = 1,12 do

					wait()
					HumanRoot.Position = who.HumanoidRootPart.Position
				end
				attack = false
			elseif (typ==nil or not typ=="Annihilate") and who:FindFirstChild("KilledBy"..plr.Name) == nil then
				attack = true
				for i = 1,12 do
					wait()
					HumanRoot.Position = who.HumanoidRootPart.Position
				end
				attack = false
			end
		end
	end))
end
function Aoe(where,range,typ)
	coroutine.resume(coroutine.create(function()
		if where ~= nil then
			if typeof(where) == "CFrame"then where=where.p end
			local Killed={}
			for _,a in next, reg(where,range,{char}) do 
				if (not Killed[a] and a.Parent ~= CFrame and a.Parent ~= effects and a ~= char and a ~= effects and a ~= script and a.Parent ~= script and a.Name ~= "Base" and a.Name ~= "Baseplate") and a:IsA'BasePart' then
					if a and a.Parent ~= nil and (a.Parent:IsA("Model") or a.Parent.ClassName == "Model" or a.Parent:IsA("Folder") or a.Parent.ClassName == "Folder") and a.Size == Vector3.new(2,2,1) or a.Size == Vector3.new(2,2.1,1) or a.Size == Vector3.new(1,1.105,1) or a.Size == Vector3.new(1,1.227,1) or a.Size == Vector3.new(1,1.253,1) or a.Size == Vector3.new(1,1.277,1) or a.Size == Vector3.new(1,2,1) or a.Size == Vector3.new(2,1,1) or a.Name == "Head" or a.Name == "Torso" or a.Name == "Right Arm" or a.Name == "Left Arm" or a.Name == "Right Leg" or a.Name == "Left Leg" or a.Name == "UpperTorso" or a.Name == "HumanoidRootPart" or a.Name == "LowerTorso" or a.Name == "RightHand" or a.Name == "LeftHand" or a.Name == "RightFoot" or a.Name == "LeftFoot" or a.Name == "LeftUpperArm" or a.Name == "LeftLowerArm" or a.Name == "RightUpperArm" or a.Name == "RightLowerArm" or a.Name == "LeftUpperLeg" or a.Name == "LeftLowerLeg" or a.Name == "RightUpperLeg" or a.Name == "RightLowerLeg" then
						Killed[a]=true
						Kill(a.Parent,typ)
					end
				end
			end
		end
	end))
end
function shoot()
	attack=true
	local MouseHit = Mouse.Hit
	if run and crouch==false then speed=12 elseif run==false and crouch then speed=4 elseif run==false and crouch==false then speed=8 end
	repeat
		for _=0,0.5,0.1 do game:GetService("RunService").Heartbeat:Wait()
			if crouch==false then
				char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0=char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,0+0.075*math.cos(sine/24))*CFrame.Angles(math.rad(1+1*math.cos(sine/24)),0,math.rad(-40)),.2)
			else
				char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0=char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,-1+0.075*math.cos(sine/24))*CFrame.Angles(math.rad(1+1*math.cos(sine/24)),0,math.rad(-40)),.2)
			end
			char:WaitForChild('Torso'):FindFirstChild('Neck').C0=char:WaitForChild('Torso'):FindFirstChild('Neck').C0:lerp(CFrame.new(0,1,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,0)*CFrame.Angles(math.rad(2.5-5*math.sin(sine/24)),0,math.rad(40)),.2)
			char:WaitForChild('Torso'):FindFirstChild('Right Shoulder').C0=char:WaitForChild('Torso'):FindFirstChild('Right Shoulder').C0:lerp(CFrame.new(1,0.5,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.new(0.25,0+0.075*math.sin(sine/24),-0.5)*CFrame.Angles(0,math.rad(40+1*math.cos(sine/24)),math.rad(90-1*math.sin(sine/24))),.2)
			char:WaitForChild('Torso'):FindFirstChild('Left Shoulder').C0=char:WaitForChild('Torso'):FindFirstChild('Left Shoulder').C0:lerp(CFrame.new(-1,0.5,0)*CFrame.Angles(0,math.rad(-90),0)*CFrame.new(-0.75,0+0.075*math.sin(sine/24),-0.5)*CFrame.Angles(0,math.rad(-10-1*math.cos(sine/24)),math.rad(-100+1*math.sin(sine/24))),.2)
			gumweld.C0=gumweld.C0:lerp(CFrame.new(-1.2,-0.3,0.4)*CFrame.Angles(math.rad(70),math.rad(-5),math.rad(85)),.2)
		end
		local bullet = Instance.new("Part",effects) Instance.new("SpecialMesh",bullet).MeshType="Sphere"
		bullet.Color=Color3.new(0,0,0)
		bullet.Size=Vector3.new(.25,.25,4)
		bullet.Material="Neon"
		bullet.Anchored=true
		bullet.CanCollide=false
		bullet.CFrame=gun.CFrame*CFrame.new(2,0.5,0)
		local partic1 = Instance.new("ParticleEmitter",bullet)
		partic1.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,1,0)),ColorSequenceKeypoint.new(0.25,Color3.new(0,0,1)),ColorSequenceKeypoint.new(1,Color3.new())})
		partic1.LightEmission=1
		partic1.LightInfluence=1
		partic1.Size=NumberSequence.new({NumberSequenceKeypoint.new(0,0.5),NumberSequenceKeypoint.new(0.25,1+math.random(-.25,.25)),NumberSequenceKeypoint.new(1,0)})
		partic1.Texture="rbxassetid://134531274"
		partic1.ZOffset=-1
		partic1.LockedToPart=false
		partic1.Lifetime=NumberRange.new(1)
		partic1.Rate=100
		partic1.Rotation=NumberRange.new(-180,180)
		partic1.Speed=NumberRange.new(0.5)
		partic1.SpreadAngle=Vector2.new(360,360)
		local at1 = Instance.new("Attachment",bullet) at1.Position=Vector3.new(0,.175,0)
		local at2 = Instance.new("Attachment",bullet) at2.Position=Vector3.new(0,-.175,0)	
		local trail = Instance.new("Trail",bullet)
		trail.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,1,0)),ColorSequenceKeypoint.new(0.25,Color3.new(0,0,1)),ColorSequenceKeypoint.new(1,Color3.new())})
		trail.LightEmission=1
		trail.LightInfluence=1
		trail.Transparency=NumberSequence.new(0,1)
		trail.Lifetime=0.5
		trail.WidthScale=NumberSequence.new(1,0)
		trail.Attachment0=at1
		trail.Attachment1=at2
		trail.FaceCamera=true
		local so = Instance.new("Sound",gun)
		so.SoundId="rbxassetid://161233154"
		so.Volume=2
		so.Pitch=math.random(95,105)/100
		so.PlayOnRemove=true
		so:Play()
		so:Destroy()
		coroutine.resume(coroutine.create(function()
			bullet.CFrame=CFrame.new(bullet.Position,MouseHit.p+Vector3.new(math.random(-25,25)/10,math.random(-25,25)/10,math.random(-25,25)/10))*CFrame.new(0,0,-2)
			for _=1,100 do game:GetService("RunService").Heartbeat:Wait()
				local h,p,norm = workspace:FindPartOnRayWithIgnoreList(Ray.new(bullet.CFrame*CFrame.new(0,0,4).p,(bullet.CFrame*CFrame.new(0,0,-4).p-bullet.CFrame*CFrame.new(0,0,4).p).unit*8),{char})
				if (h and h.Parent and h.Parent:IsA'Accessory') or (h and h.Parent and h.Parent:IsA'Hat') then
					h:Destroy()
					spawn(function()
						if h and h.Parent and h.Parent:IsA'Model' then
							Kill(h.Parent)
						end
					end)
					h:Destroy()
					break
				elseif (h and h.CanCollide==true) then
					if h.Material==Enum.Material.Glass or h.Material==Enum.Material.ForceField then
						local model = Instance.new("Model",h.Parent) model.Name=h.Name.."'s chuncs"
						local p = Instance.new("Part",model) p.Size=Vector3.new(h.Size.X/2,h.Size.Y/2,h.Size.Z/2) p.CFrame=h.CFrame*CFrame.new(h.Size.X/4,h.Size.Y/4,h.Size.Y/4) p.Color=h.Color p.Material=h.Material p.Transparency=h.Transparency p.Velocity=Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5)) p.RotVelocity=Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
						local p2 = Instance.new("Part",model) p2.Size=Vector3.new(h.Size.X/2,h.Size.Y/2,h.Size.Z/2) p2.CFrame=h.CFrame*CFrame.new(-h.Size.X/4,h.Size.Y/4,h.Size.Y/4) p2.Color=h.Color p2.Material=h.Material p2.Transparency=h.Transparency p2.Velocity=Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5)) p2.RotVelocity=Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
						local p3 = Instance.new("Part",model) p3.Size=Vector3.new(h.Size.X/2,h.Size.Y/2,h.Size.Z/2) p3.CFrame=h.CFrame*CFrame.new(h.Size.X/4,-h.Size.Y/4,h.Size.Y/4) p3.Color=h.Color p3.Material=h.Material p3.Transparency=h.Transparency p3.Velocity=Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5)) p3.RotVelocity=Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
						local p4 = Instance.new("Part",model) p4.Size=Vector3.new(h.Size.X/2,h.Size.Y/2,h.Size.Z/2) p4.CFrame=h.CFrame*CFrame.new(-h.Size.X/4,-h.Size.Y/4,h.Size.Y/4) p4.Color=h.Color p4.Material=h.Material p4.Transparency=h.Transparency  p4.Velocity=Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5)) p4.RotVelocity=Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
						local p5 = Instance.new("Part",model) p5.Size=Vector3.new(h.Size.X/2,h.Size.Y/2,h.Size.Z/2) p5.CFrame=h.CFrame*CFrame.new(h.Size.X/4,h.Size.Y/4,-h.Size.Y/4) p5.Color=h.Color p5.Material=h.Material p5.Transparency=h.Transparency p5.Velocity=Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5)) p5.RotVelocity=Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
						local p6 = Instance.new("Part",model) p6.Size=Vector3.new(h.Size.X/2,h.Size.Y/2,h.Size.Z/2) p6.CFrame=h.CFrame*CFrame.new(-h.Size.X/4,h.Size.Y/4,-h.Size.Y/4) p6.Color=h.Color p6.Material=h.Material p6.Transparency=h.Transparency p6.Velocity=Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5)) p6.RotVelocity=Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
						local p7 = Instance.new("Part",model) p7.Size=Vector3.new(h.Size.X/2,h.Size.Y/2,h.Size.Z/2) p7.CFrame=h.CFrame*CFrame.new(h.Size.X/4,-h.Size.Y/4,-h.Size.Y/4) p7.Color=h.Color p7.Material=h.Material p7.Transparency=h.Transparency p7.Velocity=Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5)) p7.RotVelocity=Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
						local p8 = Instance.new("Part",model) p8.Size=Vector3.new(h.Size.X/2,h.Size.Y/2,h.Size.Z/2) p8.CFrame=h.CFrame*CFrame.new(-h.Size.X/4,-h.Size.Y/4,-h.Size.Y/4) p8.Color=h.Color p8.Material=h.Material p8.Transparency=h.Transparency  p8.Velocity=Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5)) p8.RotVelocity=Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
						local so = Instance.new("Sound",h)
						so.SoundId="rbxassetid://516789356"
						so.Volume=2
						so.Pitch=math.random(95,105)/100
						so.PlayOnRemove=true
						so:Play()
						so:Destroy()
						h:Destroy()
						if math.random(1,2)==1 then
							break
						end
						spawn(function()
							wait(math.random(3,5))
							for _,a in pairs(model:GetChildren()) do
								spawn(function()
									if a:IsA'BasePart' then
										for _=1,25 do game:GetService("RunService").Heartbeat:Wait()
											a.Transparency=a.Transparency+1/25
										end
									end
								end)
							end
							repeat game:GetService("RunService").Heartbeat:Wait() until model:FindFirstChildWhichIsA'BasePart'==nil
							wait(.1) model:Destroy()
						end)
					elseif h.Transparency<=0.5 then
						break
					end
				end
				bullet.CFrame=bullet.CFrame*CFrame.new(0,0,-8)
			end
			Aoe(bullet.CFrame,8)
			bullet.Transparency=1
			for _,a in pairs(bullet:GetChildren()) do
				if a:IsA'ParticleEmitter' or a:IsA'Trail' then
					a.Enabled=false
				end
			end
			wait(1.1)
			bullet:Destroy()
		end))
		for _=0,0.25,0.25 do game:GetService("RunService").Heartbeat:Wait()
			if crouch==false then
				char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0=char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,0+0.075*math.cos(sine/24))*CFrame.Angles(math.rad(1+1*math.cos(sine/24)),0,math.rad(-40)),.4)
			else
				char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0=char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,-1+0.075*math.cos(sine/24))*CFrame.Angles(math.rad(1+1*math.cos(sine/24)),0,math.rad(-40)),.4)
			end
			char:WaitForChild('Torso'):FindFirstChild('Neck').C0=char:WaitForChild('Torso'):FindFirstChild('Neck').C0:lerp(CFrame.new(0,1,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,0)*CFrame.Angles(math.rad(2.5-5*math.sin(sine/24)),0,math.rad(40)),.4)
			char:WaitForChild('Torso'):FindFirstChild('Right Shoulder').C0=char:WaitForChild('Torso'):FindFirstChild('Right Shoulder').C0:lerp(CFrame.new(1,0.5,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.new(0.25,0+0.075*math.sin(sine/24),-0.5)*CFrame.Angles(0,math.rad(40+1*math.cos(sine/24)),math.rad(95-1*math.sin(sine/24))),.4)
			char:WaitForChild('Torso'):FindFirstChild('Left Shoulder').C0=char:WaitForChild('Torso'):FindFirstChild('Left Shoulder').C0:lerp(CFrame.new(-1,0.5,0)*CFrame.Angles(0,math.rad(-90),0)*CFrame.new(-0.75,0+0.075*math.sin(sine/24),-0.5)*CFrame.Angles(0,math.rad(-10-1*math.cos(sine/24)),math.rad(-105+1*math.sin(sine/24))),.4)	
			gumweld.C0=gumweld.C0:lerp(CFrame.new(-1.2,-0.3,0.4)*CFrame.Angles(math.rad(70),math.rad(-5),math.rad(85)),.4)
		end
	until repeatmouse==false
	if run and crouch==false then speed=24 elseif run==false and crouch then speed=6 elseif run==false and crouch==false then speed=12 end
	attack=false
end
function grenadethrow()
	attack=true
	MouseHit = Mouse.Hit
	if run and crouch==false then speed=12 elseif run==false and crouch then speed=4 elseif run==false and crouch==false then speed=8 end
	for _=0,1,0.05 do game:GetService("RunService").Heartbeat:Wait()
		if crouch==false then
			char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0=char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,0+0.075*math.cos(sine/24))*CFrame.Angles(math.rad(1+1*math.cos(sine/24)),0,0),.2)
		else
			char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0=char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,-1+0.075*math.cos(sine/24))*CFrame.Angles(math.rad(1+1*math.cos(sine/24)),0,0),.2)
		end
		char:WaitForChild('Torso'):FindFirstChild('Neck').C0=char:WaitForChild('Torso'):FindFirstChild('Neck').C0:lerp(CFrame.new(0,1,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,0)*CFrame.Angles(math.rad(2.5-5*math.sin(sine/24)),0,0),.2)
		char:WaitForChild('Torso'):FindFirstChild('Right Shoulder').C0=char:WaitForChild('Torso'):FindFirstChild('Right Shoulder').C0:lerp(CFrame.new(1,0.5,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.new(0,0+0.075*math.sin(sine/24),0)*CFrame.Angles(0,math.rad(25+1*math.cos(sine/24)),math.rad(45-1*math.sin(sine/24))),.2)
		char:WaitForChild('Torso'):FindFirstChild('Left Shoulder').C0=char:WaitForChild('Torso'):FindFirstChild('Left Shoulder').C0:lerp(CFrame.new(-1,0.5,0)*CFrame.Angles(0,math.rad(-90),0)*CFrame.new(0,0+0.075*math.sin(sine/24),0)*CFrame.Angles(0,math.rad(60-1*math.cos(sine/24)),math.rad(40+1*math.sin(sine/24))),.2)
		gumweld.C0=gumweld.C0:lerp(CFrame.new(-1.2,-0.3,0.4)*CFrame.Angles(math.rad(70),math.rad(-5),math.rad(85))*CFrame.new(-0.3,0,0)*CFrame.Angles(0,0,math.rad(20)),.2)
	end
	spawn(function()
		grenade.Transparency=1
		wait(1)
		for _=1,10 do game:GetService("RunService").Heartbeat:Wait()
			grenade.Transparency=grenade.Transparency-1/10
		end
	end)
	local gren = Instance.new("Part",workspace) local mesh = Instance.new("SpecialMesh",gren) mesh.MeshType="FileMesh" mesh.MeshId="rbxassetid://548193107" mesh.TextureId="rbxassetid://926040988" mesh.Scale=Vector3.new(.1,.1,.1)
	gren.Size=Vector3.new(.5,1,.5)
	gren.CanCollide=true
	local weld = Instance.new("Weld",gren) weld.Part0=gren weld.Part1=char:WaitForChild('Left Arm') weld.C0=CFrame.new(0,0,1)*CFrame.Angles(math.rad(90),0,0)
	for _=0,1,0.05 do game:GetService("RunService").Heartbeat:Wait()
		if crouch==false then
			char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0=char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,0+0.075*math.cos(sine/24))*CFrame.Angles(math.rad(1+1*math.cos(sine/24)),0,0),.2)
		else
			char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0=char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,-1+0.075*math.cos(sine/24))*CFrame.Angles(math.rad(1+1*math.cos(sine/24)),0,0),.2)
		end
		char:WaitForChild('Torso'):FindFirstChild('Neck').C0=char:WaitForChild('Torso'):FindFirstChild('Neck').C0:lerp(CFrame.new(0,1,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,0)*CFrame.Angles(math.rad(2.5-5*math.sin(sine/24)),0,0),.2)
		char:WaitForChild('Torso'):FindFirstChild('Right Shoulder').C0=char:WaitForChild('Torso'):FindFirstChild('Right Shoulder').C0:lerp(CFrame.new(1,0.5,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.new(0,0+0.075*math.sin(sine/24),0)*CFrame.Angles(0,math.rad(25+1*math.cos(sine/24)),math.rad(45-1*math.sin(sine/24))),.2)
		char:WaitForChild('Torso'):FindFirstChild('Left Shoulder').C0=char:WaitForChild('Torso'):FindFirstChild('Left Shoulder').C0:lerp(CFrame.new(-1,0.5,0)*CFrame.Angles(0,math.rad(-90),0)*CFrame.new(0,0+0.075*math.sin(sine/24),0)*CFrame.Angles(0,math.rad(30-1*math.cos(sine/24)),math.rad(-40+1*math.sin(sine/24))),.2)
		gumweld.C0=gumweld.C0:lerp(CFrame.new(-1.2,-0.3,0.4)*CFrame.Angles(math.rad(70),math.rad(-5),math.rad(85))*CFrame.new(-0.3,0,0)*CFrame.Angles(0,0,math.rad(20)),.2)
	end
	local pl = Instance.new("PointLight",gren)
	pl.Brightness=40
	pl.Color=Color3.new(1,0,0)
	pl.Range=3
	pl.Shadows=true
	local at1 = Instance.new("Attachment",gren) at1.Position=Vector3.new(0,0.5,0)
	local at2 = Instance.new("Attachment",gren) at2.Position=Vector3.new(0,0.25,0)
	local trl = Instance.new("Trail",gren)
	trl.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0)),ColorSequenceKeypoint.new(1,Color3.new())})
	trl.FaceCamera=true
	trl.LightEmission=1
	trl.LightInfluence=1
	trl.Transparency=NumberSequence.new(0,1)
	trl.Attachment0=at1
	trl.Attachment1=at2
	trl.Lifetime=3
	trl.WidthScale=NumberSequence.new(1,0)
	local particpart = Instance.new("Part",gren)
	particpart.Size=Vector3.new()
	particpart.Transparency=1
	particpart.CanCollide=false
	local w = Instance.new("Weld",particpart) w.Part0=particpart w.Part1=gren w.C0=CFrame.new(0,-0.325,0)
	local partic = Instance.new("ParticleEmitter",particpart)
	partic.Color=ColorSequence.new(Color3.new(1,0,0))
	partic.LightEmission=1
	partic.LightInfluence=1
	partic.ZOffset=1
	partic.Size=NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.02,1+math.random(-.5,.5)),NumberSequenceKeypoint.new(1,0)})
	partic.Texture="rbxasset://textures/particles/sparkles_main.dds"
	partic.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.05,0.75+math.random(-.25,.25)),NumberSequenceKeypoint.new(1,1)})
	partic.LockedToPart=true
	partic.Rate=50
	partic.Lifetime=NumberRange.new(1)
	partic.Rotation=NumberRange.new(-180,180)
	partic.RotSpeed=NumberRange.new(-30,30)
	partic.Speed=NumberRange.new(0.5)
	partic.SpreadAngle=Vector2.new(360,360)
	coroutine.resume(coroutine.create(function()
		local w = 1
		local ran = math.random(5)
		for i=1,ran do
			local so = Instance.new("Sound",gren)
			so.SoundId="rbxassetid://2164165859"
			so.Volume=2
			so.Pitch=1+(1/ran)
			so.PlayOnRemove=true
			so:Play()
			so:Destroy()
			wait(w)
			w=w-(1/ran)
		end
		Aoe(gren.CFrame,40)
		local so = Instance.new("Sound",gren)
		so.SoundId="rbxassetid://4307076141"
		so.Volume=4
		so.Pitch=math.random(95,105)/100
		so.PlayOnRemove=true
		so:Play()
		so:Destroy()
		gren.Transparency=1
		for _,a in pairs(gren:GetDescendants()) do
			if a:IsA'PointLight' or a:IsA'ParticleEmitter' or a:IsA'Trail' then
				a.Enabled=false
			end
		end
		local partic1 = Instance.new("ParticleEmitter",gren)
		partic1.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0)),ColorSequenceKeypoint.new(0.25,Color3.new(0,0,1)),ColorSequenceKeypoint.new(0.5,Color3.new(1,1,0)),ColorSequenceKeypoint.new(1,Color3.new())})
		partic1.LightEmission=1
		partic1.LightInfluence=1
		partic1.Size=NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.025,2.5),NumberSequenceKeypoint.new(1,5)})
		partic1.Texture="rbxassetid://971284039"
		partic1.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.025,0),NumberSequenceKeypoint.new(0.7,0.25),NumberSequenceKeypoint.new(1,1)})
		partic1.ZOffset=1
		partic1.Acceleration=Vector3.new(0,2,0)
		partic1.Drag=2
		partic1.Lifetime=NumberRange.new(1,3)
		partic1.Rate=100000000
		partic1.Rotation=NumberRange.new(-180,180)
		partic1.RotSpeed=NumberRange.new(-30,30)
		partic1.Speed=NumberRange.new(1,5)
		partic1.SpreadAngle=Vector2.new(360,360)
		coroutine.resume(coroutine.create(function()
			wait(.2)
			partic1.Enabled=false
			wait(3.1)
			partic1:Destroy()
		end))
		local partic2 = Instance.new("ParticleEmitter",gren)
		partic2.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,1,0)),ColorSequenceKeypoint.new(0.05,Color3.new(1,1,1)),ColorSequenceKeypoint.new(1,Color3.new())})
		partic2.LightEmission=0
		partic2.LightInfluence=1
		partic2.Size=NumberSequence.new({NumberSequenceKeypoint.new(0,2.5+math.random(-25,25)/10),NumberSequenceKeypoint.new(0.3,5),NumberSequenceKeypoint.new(1,3.75+math.random(-25,25)/10)})
		partic2.Texture="rbxassetid://1946917526"
		partic2.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.025,0.5),NumberSequenceKeypoint.new(1,1)})
		partic2.ZOffset=1
		partic2.Acceleration=Vector3.new(0,5,0)
		partic2.Drag=2
		partic2.Lifetime=NumberRange.new(1,5)
		partic2.Rate=100000000
		partic2.Rotation=NumberRange.new(-180,180)
		partic2.RotSpeed=NumberRange.new(-90,90)
		partic2.Speed=NumberRange.new(10,20)
		partic2.SpreadAngle=Vector2.new(360,360)
		coroutine.resume(coroutine.create(function()
			wait(.2)
			partic2.Enabled=false
			wait(5.1)
			partic2:Destroy()
		end))
		wait(5.1)
		gren:Destroy()
	end))
	for _=0,0.5,0.05 do game:GetService("RunService").Heartbeat:Wait()
		if crouch==false then
			char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0=char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,0+0.075*math.cos(sine/24))*CFrame.Angles(math.rad(1+1*math.cos(sine/24)),0,0),.4)
		else
			char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0=char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,-1+0.075*math.cos(sine/24))*CFrame.Angles(math.rad(1+1*math.cos(sine/24)),0,0),.4)
		end
		char:WaitForChild('Torso'):FindFirstChild('Neck').C0=char:WaitForChild('Torso'):FindFirstChild('Neck').C0:lerp(CFrame.new(0,1,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,0)*CFrame.Angles(math.rad(2.5-5*math.sin(sine/24)),0,0),.4)
		char:WaitForChild('Torso'):FindFirstChild('Right Shoulder').C0=char:WaitForChild('Torso'):FindFirstChild('Right Shoulder').C0:lerp(CFrame.new(1,0.5,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.new(0,0+0.075*math.sin(sine/24),0)*CFrame.Angles(0,math.rad(25+1*math.cos(sine/24)),math.rad(45-1*math.sin(sine/24))),.4)
		char:WaitForChild('Torso'):FindFirstChild('Left Shoulder').C0=char:WaitForChild('Torso'):FindFirstChild('Left Shoulder').C0:lerp(CFrame.new(-1,0.5,0)*CFrame.Angles(0,math.rad(-90),0)*CFrame.new(0,0+0.075*math.sin(sine/24),0)*CFrame.Angles(0,math.rad(30-1*math.cos(sine/24)),math.rad(-35+1*math.sin(sine/24))),.4)
		gumweld.C0=gumweld.C0:lerp(CFrame.new(-1.2,-0.3,0.4)*CFrame.Angles(math.rad(70),math.rad(-5),math.rad(85))*CFrame.new(-0.3,0,0)*CFrame.Angles(0,0,math.rad(20)),.4)
	end
	repeat game:GetService("RunService").Heartbeat:Wait() 
		if crouch==false then
			char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0=char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,0+0.075*math.cos(sine/24))*CFrame.Angles(math.rad(1+1*math.cos(sine/24)),0,0),.4)
		else
			char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0=char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,-1+0.075*math.cos(sine/24))*CFrame.Angles(math.rad(1+1*math.cos(sine/24)),0,0),.4)
		end
		char:WaitForChild('Torso'):FindFirstChild('Neck').C0=char:WaitForChild('Torso'):FindFirstChild('Neck').C0:lerp(CFrame.new(0,1,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,0)*CFrame.Angles(math.rad(2.5-5*math.sin(sine/24)),0,0),.4)
		char:WaitForChild('Torso'):FindFirstChild('Right Shoulder').C0=char:WaitForChild('Torso'):FindFirstChild('Right Shoulder').C0:lerp(CFrame.new(1,0.5,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.new(0,0+0.075*math.sin(sine/24),0)*CFrame.Angles(0,math.rad(25+1*math.cos(sine/24)),math.rad(45-1*math.sin(sine/24))),.4)
		char:WaitForChild('Torso'):FindFirstChild('Left Shoulder').C0=char:WaitForChild('Torso'):FindFirstChild('Left Shoulder').C0:lerp(CFrame.new(-1,0.5,0)*CFrame.Angles(0,math.rad(-90),0)*CFrame.new(0,0+0.075*math.sin(sine/24),0)*CFrame.Angles(0,math.rad(30-1*math.cos(sine/24)),math.rad(-35+1*math.sin(sine/24))),.4)
		gumweld.C0=gumweld.C0:lerp(CFrame.new(-1.2,-0.3,0.4)*CFrame.Angles(math.rad(70),math.rad(-5),math.rad(85))*CFrame.new(-0.3,0,0)*CFrame.Angles(0,0,math.rad(20)),.4)
	until repeatkey==false
	for _=0,1,0.05 do game:GetService("RunService").Heartbeat:Wait()
		if crouch==false then
			char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0=char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,0+0.075*math.cos(sine/24))*CFrame.Angles(math.rad(1+1*math.cos(sine/24)),0,math.rad(40)),.2)
		else
			char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0=char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,-1+0.075*math.cos(sine/24))*CFrame.Angles(math.rad(1+1*math.cos(sine/24)),0,math.rad(40)),.2)
		end
		char:WaitForChild('Torso'):FindFirstChild('Neck').C0=char:WaitForChild('Torso'):FindFirstChild('Neck').C0:lerp(CFrame.new(0,1,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,0)*CFrame.Angles(math.rad(2.5-5*math.sin(sine/24)),0,math.rad(-40)),.2)
		char:WaitForChild('Torso'):FindFirstChild('Right Shoulder').C0=char:WaitForChild('Torso'):FindFirstChild('Right Shoulder').C0:lerp(CFrame.new(1,0.5,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.new(0,0+0.075*math.sin(sine/24),0)*CFrame.Angles(0,math.rad(25+1*math.cos(sine/24)),math.rad(45-1*math.sin(sine/24))),.2)
		char:WaitForChild('Torso'):FindFirstChild('Left Shoulder').C0=char:WaitForChild('Torso'):FindFirstChild('Left Shoulder').C0:lerp(CFrame.new(-1,0.5,0)*CFrame.Angles(0,math.rad(-90),0)*CFrame.new(0,0+0.075*math.sin(sine/24),0)*CFrame.Angles(0,math.rad(50-1*math.cos(sine/24)),math.rad(-175+1*math.sin(sine/24))),.2)
		gumweld.C0=gumweld.C0:lerp(CFrame.new(-1.2,-0.3,0.4)*CFrame.Angles(math.rad(70),math.rad(-5),math.rad(85))*CFrame.new(-0.3,0,0)*CFrame.Angles(0,0,math.rad(20)),.2)
	end
	weld:Destroy()
	gren.CanCollide=true
	gren.CFrame=gren.CFrame*CFrame.new(0,0,-2)
	local dis = (gren.Position - MouseHit.p).magnitude
	if dis > 250 then dis = 250 end
	gren.Velocity=CFrame.new(gren.Position,MouseHit.p+Vector3.new(0,50,0)).lookVector*(dis*2)
	local tou
	tou = gren.Touched:connect(function(a)
		if a.Parent~=char and not a:IsDescendantOf(char) then
			tou:Disconnect()
			gren.Velocity=Vector3.new() wait()
			gren.Velocity=Vector3.new(math.random(-25,25),math.random(-25,25),math.random(-25,25))
		end
	end)
	for _=0,1,0.05 do game:GetService("RunService").Heartbeat:Wait()
		if crouch==false then
			char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0=char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,0+0.075*math.cos(sine/24))*CFrame.Angles(math.rad(1+1*math.cos(sine/24)),0,math.rad(-60)),.2)
		else
			char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0=char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,-1+0.075*math.cos(sine/24))*CFrame.Angles(math.rad(1+1*math.cos(sine/24)),0,math.rad(-60)),.2)
		end
		char:WaitForChild('Torso'):FindFirstChild('Neck').C0=char:WaitForChild('Torso'):FindFirstChild('Neck').C0:lerp(CFrame.new(0,1,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,0)*CFrame.Angles(math.rad(2.5-5*math.sin(sine/24)),0,math.rad(60)),.2)
		char:WaitForChild('Torso'):FindFirstChild('Right Shoulder').C0=char:WaitForChild('Torso'):FindFirstChild('Right Shoulder').C0:lerp(CFrame.new(1,0.5,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.new(0,0+0.075*math.sin(sine/24),0)*CFrame.Angles(0,math.rad(25+1*math.cos(sine/24)),math.rad(45-1*math.sin(sine/24))),.2)
		char:WaitForChild('Torso'):FindFirstChild('Left Shoulder').C0=char:WaitForChild('Torso'):FindFirstChild('Left Shoulder').C0:lerp(CFrame.new(-1,0.5,0)*CFrame.Angles(0,math.rad(-90),0)*CFrame.new(0,0+0.075*math.sin(sine/24),0)*CFrame.Angles(0,math.rad(-30-1*math.cos(sine/24)),math.rad(-35+1*math.sin(sine/24))),.2)
		gumweld.C0=gumweld.C0:lerp(CFrame.new(-1.2,-0.3,0.4)*CFrame.Angles(math.rad(70),math.rad(-5),math.rad(85))*CFrame.new(-0.3,0,0)*CFrame.Angles(0,0,math.rad(20)),.2)
	end
	if run and crouch==false then speed=24 elseif run==false and crouch then speed=6 elseif run==false and crouch==false then speed=12 end
	attack=false
end
function plasma_shoot()
	MouseHit = Mouse.Hit
	attack=true
	if run and crouch==false then speed=12 elseif run==false and crouch then speed=4 elseif run==false and crouch==false then speed=8 end
	local so = Instance.new("Sound",char:WaitForChild('Head'))
	so.SoundId="rbxassetid://1051194362"
	so.Volume=2
	so.Pitch=1.5
	so.PlayOnRemove=true
	so:Play()
	so:Destroy()
	for _=0,3,0.05 do game:GetService("RunService").Heartbeat:Wait()
		if crouch==false then
			char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0=char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,0+0.075*math.cos(sine/24))*CFrame.Angles(math.rad(1+1*math.cos(sine/24)),0,math.rad(-40)),.2)
		else
			char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0=char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,-1+0.075*math.cos(sine/24))*CFrame.Angles(math.rad(1+1*math.cos(sine/24)),0,math.rad(-40)),.2)
		end
		char:WaitForChild('Torso'):FindFirstChild('Neck').C0=char:WaitForChild('Torso'):FindFirstChild('Neck').C0:lerp(CFrame.new(0,1,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,0)*CFrame.Angles(math.rad(2.5-5*math.sin(sine/24)),0,math.rad(40)),.2)
		char:WaitForChild('Torso'):FindFirstChild('Right Shoulder').C0=char:WaitForChild('Torso'):FindFirstChild('Right Shoulder').C0:lerp(CFrame.new(1,0.5,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.new(0.25,0+0.075*math.sin(sine/24),-0.5)*CFrame.Angles(0,math.rad(40+1*math.cos(sine/24)),math.rad(90-1*math.sin(sine/24))),.2)
		char:WaitForChild('Torso'):FindFirstChild('Left Shoulder').C0=char:WaitForChild('Torso'):FindFirstChild('Left Shoulder').C0:lerp(CFrame.new(-1,0.5,0)*CFrame.Angles(0,math.rad(-90),0)*CFrame.new(-0.75,0+0.075*math.sin(sine/24),-0.5)*CFrame.Angles(0,math.rad(-10-1*math.cos(sine/24)),math.rad(-100+1*math.sin(sine/24))),.2)
		gumweld.C0=gumweld.C0:lerp(CFrame.new(-1.2,-0.3,0.4)*CFrame.Angles(math.rad(70),math.rad(-5),math.rad(85)),.2)
	end
	local bullet = Instance.new("Part",effects)
	bullet.Color=Color3.fromRGB(254,243,187)
	bullet.Material="ForceField"
	bullet.Anchored=true
	bullet.CanCollide=false
	bullet.Shape="Ball"
	bullet.Size=Vector3.new(1.5,1.5,1.5)
	bullet.CFrame=gun.CFrame*CFrame.new(2,0,0)
	local effectpart = Instance.new("Part",bullet)
	effectpart.Anchored=false
	effectpart.CanCollide=false
	effectpart.Size=Vector3.new()
	effectpart.Transparency=1
	local weld = Instance.new("Weld",effectpart) weld.Part0=effectpart weld.Part1=bullet
	local partic1 = Instance.new("ParticleEmitter",effectpart)
	partic1.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0)),ColorSequenceKeypoint.new(0.25,Color3.new(0,0,1)),ColorSequenceKeypoint.new(0.75,Color3.new(1,1,0)),ColorSequenceKeypoint.new(1,Color3.new())})
	partic1.LightEmission=1
	partic1.LightInfluence=1
	partic1.Size=NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.05,0.5),NumberSequenceKeypoint.new(1,0)})
	partic1.Texture="rbxassetid://134531274"
	partic1.ZOffset=1
	partic1.Drag=15
	partic1.LockedToPart=true
	partic1.Lifetime=NumberRange.new(0.5)
	partic1.Rate=100
	partic1.Rotation=NumberRange.new(-180,180)
	partic1.Speed=NumberRange.new(1,5)
	partic1.SpreadAngle=Vector2.new(360,360)
	local partic2 = Instance.new("ParticleEmitter",effectpart)
	partic2.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new()),ColorSequenceKeypoint.new(0.25,Color3.new(0,0,1)),ColorSequenceKeypoint.new(0.75,Color3.new(1,1,0)),ColorSequenceKeypoint.new(1,Color3.new(1,0,0))})
	partic2.LightEmission=1
	partic2.LightInfluence=1
	partic2.Size=NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,2)})
	partic2.Texture="rbxassetid://527972793"
	partic2.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,.75),NumberSequenceKeypoint.new(1,1)})
	partic2.ZOffset=1
	partic2.LockedToPart=true
	partic2.Lifetime=NumberRange.new(1)
	partic2.Rate=5
	partic2.Rotation=NumberRange.new(-180,180)
	partic2.RotSpeed=NumberRange.new(-90,90)
	partic2.Speed=NumberRange.new(0)
	local partic3 = Instance.new("ParticleEmitter",effectpart)
	partic3.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(0,0,1)),ColorSequenceKeypoint.new(0.75,Color3.new(1,1,0)),ColorSequenceKeypoint.new(1,Color3.new())})
	partic3.LightEmission=1
	partic3.LightInfluence=1
	partic3.Size=NumberSequence.new(0.25)
	partic3.Texture="rbxassetid://28010908"
	partic3.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.025,.5+math.random(-.25,.25)),NumberSequenceKeypoint.new(1,1)})
	partic3.ZOffset=1
	partic3.Drag=1
	partic3.VelocityInheritance=1
	partic3.Lifetime=NumberRange.new(2)
	partic3.Rate=100
	partic3.Rotation=NumberRange.new(-180,180)
	partic3.RotSpeed=NumberRange.new(-360,360)
	partic3.Speed=NumberRange.new(1,3)
	partic3.SpreadAngle=Vector2.new(360,360)
	coroutine.resume(coroutine.create(function()
		bullet.CFrame=CFrame.new(bullet.Position,MouseHit.p)
		local hits = 0
		local maxhits = math.random(1,5)
		for _=1,250 do game:GetService("RunService").Heartbeat:Wait()
			local hit,pos,norm = workspace:FindPartOnRayWithIgnoreList(Ray.new(bullet.Position,bullet.CFrame.LookVector.unit*2),{char})
			if hit and (hits>=maxhits or hit.Size == Vector3.new(2,2,1) or hit.Size == Vector3.new(2,2.1,1) or hit.Size == Vector3.new(1,1.105,1) or hit.Size == Vector3.new(1,1.227,1) or hit.Size == Vector3.new(1,1.253,1) or hit.Size == Vector3.new(1,1.277,1) or hit.Size == Vector3.new(1,2,1) or hit.Size == Vector3.new(2,1,1) or hit.Name == "Head" or hit.Name == "Torso" or hit.Name == "Right Arm" or hit.Name == "Left Arm" or hit.Name == "Right Leg" or hit.Name == "Left Leg" or hit.Name == "UpperTorso" or hit.Name == "HumanoidRootPart" or hit.Name == "LowerTorso" or hit.Name == "RightHand" or hit.Name == "LeftHand" or hit.Name == "RightFoot" or hit.Name == "LeftFoot" or hit.Name == "LeftUpperArm" or hit.Name == "LeftLowerArm" or hit.Name == "RightUpperArm" or hit.Name == "RightLowerArm" or hit.Name == "LeftUpperLeg" or hit.Name == "LeftLowerLeg" or hit.Name == "RightUpperLeg" or hit.Name == "RightLowerLeg") then
				break
			elseif hit and hits<maxhits and hit.Size ~= Vector3.new(2,2,1) and hit.Size ~= Vector3.new(2,2.1,1) and hit.Size ~= Vector3.new(1,1.105,1) and hit.Size ~= Vector3.new(1,1.227,1) and hit.Size ~= Vector3.new(1,1.253,1) and hit.Size ~= Vector3.new(1,1.277,1) and hit.Size ~= Vector3.new(1,2,1) and hit.Size ~= Vector3.new(2,1,1) and hit.Name ~= "Head" and hit.Name ~= "Torso" and hit.Name ~= "Right Arm" and hit.Name ~= "Left Arm" and hit.Name ~= "Right Leg" and hit.Name ~= "Left Leg" and hit.Name ~= "UpperTorso" and hit.Name ~= "HumanoidRootPart" and hit.Name ~= "LowerTorso" and hit.Name ~= "RightHand" and hit.Name ~= "LeftHand" and hit.Name ~= "RightFoot" and hit.Name ~= "LeftFoot" and hit.Name ~= "LeftUpperArm" and hit.Name ~= "LeftLowerArm" and hit.Name ~= "RightUpperArm" and hit.Name ~= "RightLowerArm" and hit.Name ~= "LeftUpperLeg" and hit.Name ~= "LeftLowerLeg" and hit.Name ~= "RightUpperLeg" and hit.Name ~= "RightLowerLeg" then
				hits=hits+1
				bullet.CFrame=CFrame.new(pos,pos+(bullet.CFrame.LookVector-2*norm:Dot(bullet.CFrame.LookVector)*norm))
				local ids = {4458751694,4458751342,4458751594,4458751201}
				local so = Instance.new("Sound",bullet)
				so.SoundId="rbxassetid://"..ids[math.random(1,#ids)]
				so.Volume=2
				so.Pitch=2
				so.PlayOnRemove=true
				so:Play()
				so:Destroy()
			elseif (hit and hit.Parent and hit.Parent:IsA'Accessory') or (hit and hit.Parent and hit.Parent:IsA'Hat') then
				hit:Destroy()
			end
			bullet.CFrame=bullet.CFrame*CFrame.new(0,0,-2)
		end
		Aoe(bullet.CFrame,17,"Annihilate")
		local so = Instance.new("Sound",bullet)
		so.SoundId="rbxassetid://4299512779"
		so.Volume=2
		so.Pitch=1
		so.PlayOnRemove=true
		so:Play()
		so:Destroy()
		local so2 = Instance.new("Sound",bullet)
		so2.SoundId="rbxassetid://3750994166"
		so2.Volume=2
		so2.Pitch=1
		so2.PlayOnRemove=true
		so2:Play()
		so2:Destroy()
		local so3 = Instance.new("Sound",bullet)
		so3.SoundId="rbxassetid://4299513168"
		so3.Volume=2
		so3.Pitch=1
		so3.PlayOnRemove=true
		so3:Play()
		so3:Destroy()
		local explosionpart = Instance.new("Part",effects)
		explosionpart.Anchored=true
		explosionpart.CanCollide=false
		explosionpart.Size=Vector3.new()
		explosionpart.Transparency=1
		explosionpart.CFrame=bullet.CFrame
		local partic2 = Instance.new("ParticleEmitter",explosionpart)
		partic2.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,1,0)),ColorSequenceKeypoint.new(0.05,Color3.new(1,1,1)),ColorSequenceKeypoint.new(1,Color3.new())})
		partic2.LightEmission=0
		partic2.LightInfluence=1
		partic2.Size=NumberSequence.new({NumberSequenceKeypoint.new(0,5+math.random(-25,25)/10),NumberSequenceKeypoint.new(0.3,10),NumberSequenceKeypoint.new(1,7.5+math.random(-25,25)/10)})
		partic2.Texture="rbxassetid://1946917526"
		partic2.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.025,0.5),NumberSequenceKeypoint.new(1,1)})
		partic2.ZOffset=1
		partic2.Acceleration=Vector3.new(0,5,0)
		partic2.Drag=2
		partic2.Lifetime=NumberRange.new(1,5)
		partic2.Rate=100000000
		partic2.Rotation=NumberRange.new(-180,180)
		partic2.RotSpeed=NumberRange.new(-90,90)
		partic2.Speed=NumberRange.new(10,20)
		partic2.SpreadAngle=Vector2.new(360,360)
		coroutine.resume(coroutine.create(function()
			wait(.2)
			partic2.Enabled=false
			wait(5.1)
			partic2:Destroy()
		end))
		local partic3 = Instance.new("ParticleEmitter",explosionpart)
		partic3.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(0,0,1)),ColorSequenceKeypoint.new(1,Color3.new())})
		partic3.LightEmission=1
		partic3.LightInfluence=1
		partic3.Size=NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.5,10),NumberSequenceKeypoint.new(1,10)})
		partic3.Texture="rbxassetid://2916153928"
		partic3.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,0.75),NumberSequenceKeypoint.new(1,1)})
		partic3.ZOffset=2
		partic3.Drag=2
		partic3.Lifetime=NumberRange.new(.5,2)
		partic3.Rate=100000000
		partic3.Rotation=NumberRange.new(-180,180)
		partic3.RotSpeed=NumberRange.new(-180,180)
		partic3.Speed=NumberRange.new(10)
		partic3.SpreadAngle=Vector2.new(360,360)
		coroutine.resume(coroutine.create(function()
			wait(1)
			partic3.Enabled=false
			wait(1.1)
			partic3:Destroy()
		end))
		bullet.Transparency=1
		for _,a in pairs(bullet:GetDescendants()) do
			if a:IsA'ParticleEmitter' then
				a.Enabled=false
			end
		end
		wait(5.1)
		bullet:Destroy()
		explosionpart:Destroy()
	end))
	for _=0,1,0.075 do game:GetService("RunService").Heartbeat:Wait()
		if crouch==false then
			char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0=char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,0+0.075*math.cos(sine/24))*CFrame.Angles(math.rad(1+1*math.cos(sine/24)),0,math.rad(-40)),.4)
		else
			char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0=char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,-1+0.075*math.cos(sine/24))*CFrame.Angles(math.rad(1+1*math.cos(sine/24)),0,math.rad(-40)),.4)
		end
		char:WaitForChild('Torso'):FindFirstChild('Neck').C0=char:WaitForChild('Torso'):FindFirstChild('Neck').C0:lerp(CFrame.new(0,1,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,0)*CFrame.Angles(math.rad(2.5-5*math.sin(sine/24)),0,math.rad(40)),.4)
		char:WaitForChild('Torso'):FindFirstChild('Right Shoulder').C0=char:WaitForChild('Torso'):FindFirstChild('Right Shoulder').C0:lerp(CFrame.new(1,0.5,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.new(-0.25,0+0.075*math.sin(sine/24),0)*CFrame.Angles(0,math.rad(40+1*math.cos(sine/24)),math.rad(90-1*math.sin(sine/24))),.4)
		char:WaitForChild('Torso'):FindFirstChild('Left Shoulder').C0=char:WaitForChild('Torso'):FindFirstChild('Left Shoulder').C0:lerp(CFrame.new(-1,0.5,0)*CFrame.Angles(0,math.rad(-90),0)*CFrame.new(-0.25,0+0.075*math.sin(sine/24),-0.75)*CFrame.Angles(0,math.rad(-10-1*math.cos(sine/24)),math.rad(-100+1*math.sin(sine/24))),.4)	
		gumweld.C0=gumweld.C0:lerp(CFrame.new(-1.2,-0.3,0.4)*CFrame.Angles(math.rad(70),math.rad(-5),math.rad(85)),.4)
	end
	if run and crouch==false then speed=24 elseif run==false and crouch then speed=6 elseif run==false and crouch==false then speed=12 end
	attack=false
end
plr.Chatted:Connect(function(m)
	if string.find(m,"Hahaha",1) or string.find(m,"hahaha",1) or string.find(m,"Hehehe",1) or string.find(m,"hehehe",1) or string.find(m,"Hehe",1) or string.find(m,"hehe",1) or string.find(m,"Haha",1) or string.find(m,"haha",1) then
		local so = Instance.new("Sound",char:WaitForChild('Head'))
		so.SoundId="rbxassetid://165507936"
		so.Volume=2
		so.Pitch=1
		so.PlayOnRemove=true
		so:Play()
		so:Destroy()
	elseif string.find(m,"Citizen",1) or string.find(m,"citizen",1) then
		local so = Instance.new("Sound",char:WaitForChild('Head'))
		so.SoundId="rbxassetid://176734741"
		so.Volume=2
		so.Pitch=1
		so.PlayOnRemove=true
		so:Play()
		so:Destroy()
	elseif string.find(m,"Amputate",1) or string.find(m,"amputate",1) then
		local so = Instance.new("Sound",char:WaitForChild('Head'))
		so.SoundId="rbxassetid://176734778"
		so.Volume=2
		so.Pitch=1
		so.PlayOnRemove=true
		so:Play()
		so:Destroy()
	elseif string.find(m,"Move along",1) or string.find(m,"move along",1) then
		local so = Instance.new("Sound",char:WaitForChild('Head'))
		so.SoundId="rbxassetid://176734834"
		so.Volume=2
		so.Pitch=1
		so.PlayOnRemove=true
		so:Play()
		so:Destroy()	
	elseif string.find(m,"Hold it right there!",1) or string.find(m,"hold it right there!",1) or  string.find(m,"Hold it right there",1) or string.find(m,"hold it right there",1) then
		local so = Instance.new("Sound",char:WaitForChild('Head'))
		so.SoundId="rbxassetid://176734691"
		so.Volume=2
		so.Pitch=1
		so.PlayOnRemove=true
		so:Play()
		so:Destroy()	
	end
end)
hum.Died:connect(function()
	local ids = {4593020878,4593020162,4593018831,4593019496}
	local so = Instance.new("Sound",char:WaitForChild('Head'))
	so.SoundId="rbxassetid://"..ids[math.random(1,#ids)]
	so.Volume=math.random(15,25)/10
	so.Pitch=math.random(95,105)/100
	so.PlayOnRemove=true
	so:Play()
	so:Destroy()
	if char:WaitForChild('HumanoidRootPart') then char:WaitForChild('HumanoidRootPart'):Destroy() end
	local bweld = Instance.new("Weld",blacc) bweld.Part0=blacc bweld.Part1 = helmet bweld.C0=CFrame.new(0,0.1,0.5)*CFrame.Angles(math.rad(-10),0,0)
	local eweld = Instance.new("Weld",eye) eweld.Part0=eye eweld.Part1 = helmet eweld.C0=CFrame.new(0,0.31,-0.065)
	local weld = Instance.new("Weld",p) weld.Part0=p weld.Part1 = char:WaitForChild('Torso') weld.C0=CFrame.new(0,0.8,0)
	eye.Material="SmoothPlastic"
	eye.Color=Color3.new(.5,0,0)
	gun.CanCollide=true
	blacc.CanCollide=true
	helmet.CanCollide=true
	grenade.CanCollide=true
	radio.CanCollide=true
	p.Transparency=1
	p.CanCollide=true
	mus:Destroy()
	for _=1,math.random(8,13) do
		BloodDrop(char:WaitForChild('Torso').CFrame,Vector3.new(math.random(-30,30),math.random(75,150),math.random(-30,30)),math.random(2,5)/10,2,{char},workspace)
	end
end)
local heat = hum.Health
hum.HealthChanged:connect(function() local Health = math.min(hum.Health-heat) if heat-1<-Health then hum.Health = 1 end heat = hum.Health end)









bambam = Instance.new("BodyThrust")
bambam.Parent = HumanRoot
bambam.Force = Vector3.new(0,0,0)
while true do game:GetService("RunService").Heartbeat:Wait() sine=sine+(2/3)
	hum:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
	hum:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
	hum:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
	hum.MaxHealth=150
	if hum.Health < 150 then hum.Health=hum.Health+5 end
	hum.DisplayDistanceType=Enum.HumanoidDisplayDistanceType.None
	hum.WalkSpeed=speed
	hum.JumpPower=50
	hum.PlatformStand=false
	for _,a in pairs(char:GetDescendants()) do
		if a:IsA'BasePart' and a~=eye and a~=blacc and a~=helmet and a~=gun and not a:IsDescendantOf(effects) then
			a.BrickColor=BrickColor.new("Really black")
			a.Color=Color3.new(0,0,0)
			if a.Name == "Head" then
				a.Transparency=1
			end
		elseif a.Name=="Animate" or a:IsA'Animator' or a:IsA'BodyColors' or a:IsA'Accessory' or a:IsA'Hat' or a:IsA'Decal' or a:IsA'ShirtGraphic' and a~=shirt and a~=pants then
			a:Destroy()
		end
	end
	if hum.Sit==true then sit=true else sit=false end
	if char:WaitForChild('HumanoidRootPart') and char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint') and char:WaitForChild('Torso') and char:WaitForChild('Torso'):FindFirstChild('Neck') and char:WaitForChild('Torso'):FindFirstChild('Right Hip') and char:WaitForChild('Torso'):FindFirstChild('Left Hip') and char:WaitForChild('Torso'):FindFirstChild('Right Shoulder') and char:WaitForChild('Torso'):FindFirstChild('Left Shoulder') then
		local h,p =	workspace:FindPartOnRay(Ray.new(char:WaitForChild('HumanoidRootPart').Position, (CFrame.new(char:WaitForChild('HumanoidRootPart').Position,char:WaitForChild('HumanoidRootPart').Position+Vector3.new(0,-1,0))).lookVector.unit * 4), char)
		if attack==false then
			bambam.Location = HumanRoot.Position
			HumanRoot.Position = CloneChar.HumanoidRootPart.Position
			HumanRoot.AssemblyAngularVelocity = Vector3.new(0,0,0)
			bambam.Force = Vector3.new(0,0,0)
			if sit==false then
				if (char:WaitForChild('HumanoidRootPart').Velocity * Vector3.new(1, 0, 1)).magnitude < 1 and h ~= nil then
					if crouch then speed=6
						char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0=char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,-1+0.075*math.cos(sine/24))*CFrame.Angles(math.rad(5+1*math.cos(sine/24)),0,0),.2)
						char:WaitForChild('Torso'):FindFirstChild('Neck').C0=char:WaitForChild('Torso'):FindFirstChild('Neck').C0:lerp(CFrame.new(0,1,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-2.5-5*math.sin(sine/24)),0,0),.2)
						char:WaitForChild('Torso'):FindFirstChild('Right Shoulder').C0=char:WaitForChild('Torso'):FindFirstChild('Right Shoulder').C0:lerp(CFrame.new(1,0.5,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.new(0,0+0.075*math.sin(sine/24),0)*CFrame.Angles(0,math.rad(55+1*math.cos(sine/24)),math.rad(55-1*math.sin(sine/24))),.2)
						char:WaitForChild('Torso'):FindFirstChild('Left Shoulder').C0=char:WaitForChild('Torso'):FindFirstChild('Left Shoulder').C0:lerp(CFrame.new(-1,0.5,0)*CFrame.Angles(0,math.rad(-90),0)*CFrame.new(0,0+0.075*math.sin(sine/24),0)*CFrame.Angles(0,math.rad(-10-1*math.cos(sine/24)),math.rad(-45+1*math.sin(sine/24))),.2)
						char:WaitForChild('Torso'):FindFirstChild('Right Hip').C0=char:WaitForChild('Torso'):FindFirstChild('Right Hip').C0:lerp(CFrame.new(1,-1,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.new(0.25,0-0.075*math.cos(sine/24),0)*CFrame.Angles(math.rad(-5),math.rad(-10),math.rad(-55+1*math.cos(sine/24))),.2)
						char:WaitForChild('Torso'):FindFirstChild('Left Hip').C0=char:WaitForChild('Torso'):FindFirstChild('Left Hip').C0:lerp(CFrame.new(-1,-1,0)*CFrame.Angles(0,math.rad(-90),0)*CFrame.new(-0.5,1-0.075*math.cos(sine/24),0)*CFrame.Angles(math.rad(-5),math.rad(10),math.rad(-5-1*math.cos(sine/24))),.2)	
						gumweld.C0=gumweld.C0:lerp(CFrame.new(-1.2,-0.3,0.4)*CFrame.Angles(math.rad(70),math.rad(-5),math.rad(85))*CFrame.new(-0.3,0,0)*CFrame.Angles(0,0,math.rad(20)),.2)
					else
						char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0=char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,0+0.075*math.cos(sine/24))*CFrame.Angles(math.rad(1+1*math.cos(sine/24)),0,0),.2)
						char:WaitForChild('Torso'):FindFirstChild('Neck').C0=char:WaitForChild('Torso'):FindFirstChild('Neck').C0:lerp(CFrame.new(0,1,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,0)*CFrame.Angles(math.rad(2.5-5*math.sin(sine/24)),0,0),.2)
						char:WaitForChild('Torso'):FindFirstChild('Right Shoulder').C0=char:WaitForChild('Torso'):FindFirstChild('Right Shoulder').C0:lerp(CFrame.new(1,0.5,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.new(0,0+0.075*math.sin(sine/24),0)*CFrame.Angles(0,math.rad(55+1*math.cos(sine/24)),math.rad(55-1*math.sin(sine/24))),.2)
						char:WaitForChild('Torso'):FindFirstChild('Left Shoulder').C0=char:WaitForChild('Torso'):FindFirstChild('Left Shoulder').C0:lerp(CFrame.new(-1,0.5,0)*CFrame.Angles(0,math.rad(-90),0)*CFrame.new(0,0+0.075*math.sin(sine/24),0)*CFrame.Angles(0,math.rad(-10-1*math.cos(sine/24)),math.rad(-45+1*math.sin(sine/24))),.2)
						char:WaitForChild('Torso'):FindFirstChild('Right Hip').C0=char:WaitForChild('Torso'):FindFirstChild('Right Hip').C0:lerp(CFrame.new(1,-1,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.new(0,0-0.075*math.cos(sine/24),0)*CFrame.Angles(math.rad(-1),math.rad(-5),math.rad(1+1*math.cos(sine/24))),.2)
						char:WaitForChild('Torso'):FindFirstChild('Left Hip').C0=char:WaitForChild('Torso'):FindFirstChild('Left Hip').C0:lerp(CFrame.new(-1,-1,0)*CFrame.Angles(0,math.rad(-90),0)*CFrame.new(0,0-0.075*math.cos(sine/24),0)*CFrame.Angles(math.rad(-1),math.rad(5),math.rad(-1-1*math.cos(sine/24))),.2)	
						gumweld.C0=gumweld.C0:lerp(CFrame.new(-1.2,-0.3,0.4)*CFrame.Angles(math.rad(70),math.rad(-5),math.rad(85))*CFrame.new(-0.3,0,0)*CFrame.Angles(0,0,math.rad(20)),.2)
					end
				elseif (char:WaitForChild('HumanoidRootPart').Velocity * Vector3.new(1, 0, 1)).magnitude > 1 and h ~= nil then
					if run and crouch==false then speed=24
						char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0=char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),math.rad(180+2.5*math.sin(sine/6)),0)*CFrame.new(0,0,0+0.075*math.cos(sine/6))*CFrame.Angles(math.rad(15+2.5*math.cos(sine/6)),math.rad(0-1*math.cos(sine/6)),0),.2)
						char:WaitForChild('Torso'):FindFirstChild('Neck').C0=char:WaitForChild('Torso'):FindFirstChild('Neck').C0:lerp(CFrame.new(0,1,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-15-5*math.sin(sine/6)),0,0),.2)
						char:WaitForChild('Torso'):FindFirstChild('Right Shoulder').C0=char:WaitForChild('Torso'):FindFirstChild('Right Shoulder').C0:lerp(CFrame.new(1,0.5,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.new(0,0+0.075*math.sin(sine/6),0)*CFrame.Angles(0,math.rad(55-5*math.sin(sine/6)),math.rad(55+5*math.cos(sine/6))),.2)
						char:WaitForChild('Torso'):FindFirstChild('Left Shoulder').C0=char:WaitForChild('Torso'):FindFirstChild('Left Shoulder').C0:lerp(CFrame.new(-1,0.5,0)*CFrame.Angles(0,math.rad(-90),0)*CFrame.new(0,0+0.075*math.sin(sine/6),0)*CFrame.Angles(0,math.rad(-10-5*math.sin(sine/6)),math.rad(-45-5*math.cos(sine/6))),.2)
						char:WaitForChild('Torso'):FindFirstChild('Right Hip').C0=char:WaitForChild('Torso'):FindFirstChild('Right Hip').C0:lerp(CFrame.new(1,-1,-0.1-0.2*math.cos(sine/6))*CFrame.Angles(0,math.rad(90),0)*CFrame.new(0,0-0.25*math.sin(sine/6),0)*CFrame.Angles(math.rad(-1),math.rad(-5),math.rad(0+40*math.cos(sine/6))),.2)
						char:WaitForChild('Torso'):FindFirstChild('Left Hip').C0=char:WaitForChild('Torso'):FindFirstChild('Left Hip').C0:lerp(CFrame.new(-1,-1,-0.1+0.2*math.cos(sine/6))*CFrame.Angles(0,math.rad(-90),0)*CFrame.new(0,0+0.25*math.sin(sine/6),0)*CFrame.Angles(math.rad(-1),math.rad(5),math.rad(0+40*math.cos(sine/6))),.2)		
					elseif run==false and crouch then speed=6
						char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0=char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),math.rad(180+2.5*math.sin(sine/24)),0)*CFrame.new(0,0,-1+0.075*math.cos(sine/24))*CFrame.Angles(math.rad(10+2.5*math.cos(sine/24)),math.rad(0-1*math.cos(sine/24)),0),.2)
						char:WaitForChild('Torso'):FindFirstChild('Neck').C0=char:WaitForChild('Torso'):FindFirstChild('Neck').C0:lerp(CFrame.new(0,1,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-10-5*math.sin(sine/24)),0,0),.2)
						char:WaitForChild('Torso'):FindFirstChild('Right Shoulder').C0=char:WaitForChild('Torso'):FindFirstChild('Right Shoulder').C0:lerp(CFrame.new(1,0.5,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.new(0,0+0.075*math.sin(sine/24),0)*CFrame.Angles(0,math.rad(55-5*math.sin(sine/24)),math.rad(55+5*math.cos(sine/24))),.2)
						char:WaitForChild('Torso'):FindFirstChild('Left Shoulder').C0=char:WaitForChild('Torso'):FindFirstChild('Left Shoulder').C0:lerp(CFrame.new(-1,0.5,0)*CFrame.Angles(0,math.rad(-90),0)*CFrame.new(0,0+0.075*math.sin(sine/24),0)*CFrame.Angles(0,math.rad(-10-5*math.sin(sine/24)),math.rad(-45-5*math.cos(sine/24))),.2)
						char:WaitForChild('Torso'):FindFirstChild('Right Hip').C0=char:WaitForChild('Torso'):FindFirstChild('Right Hip').C0:lerp(CFrame.new(1,0,-0.1-0.2*math.cos(sine/24))*CFrame.Angles(0,math.rad(90),0)*CFrame.new(0.25,0-0.25*math.sin(sine/24),0)*CFrame.Angles(math.rad(-1),math.rad(-10),math.rad(0+20*math.cos(sine/24))),.2)
						char:WaitForChild('Torso'):FindFirstChild('Left Hip').C0=char:WaitForChild('Torso'):FindFirstChild('Left Hip').C0:lerp(CFrame.new(-1,0,-0.1+0.2*math.cos(sine/24))*CFrame.Angles(0,math.rad(-90),0)*CFrame.new(-0.25,0+0.25*math.sin(sine/24),0)*CFrame.Angles(math.rad(-1),math.rad(10),math.rad(0+20*math.cos(sine/24))),.2)		
					elseif run==false and crouch==false then speed=12
						char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0=char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),math.rad(180+2.5*math.sin(sine/10)),0)*CFrame.new(0,0,0+0.075*math.cos(sine/10))*CFrame.Angles(math.rad(2.5+2.5*math.cos(sine/10)),math.rad(0-1*math.cos(sine/10)),0),.2)
						char:WaitForChild('Torso'):FindFirstChild('Neck').C0=char:WaitForChild('Torso'):FindFirstChild('Neck').C0:lerp(CFrame.new(0,1,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,0)*CFrame.Angles(math.rad(2.5-5*math.sin(sine/10)),0,0),.2)
						char:WaitForChild('Torso'):FindFirstChild('Right Shoulder').C0=char:WaitForChild('Torso'):FindFirstChild('Right Shoulder').C0:lerp(CFrame.new(1,0.5,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.new(0,0+0.075*math.sin(sine/10),0)*CFrame.Angles(0,math.rad(55-5*math.sin(sine/10)),math.rad(55+5*math.cos(sine/10))),.2)
						char:WaitForChild('Torso'):FindFirstChild('Left Shoulder').C0=char:WaitForChild('Torso'):FindFirstChild('Left Shoulder').C0:lerp(CFrame.new(-1,0.5,0)*CFrame.Angles(0,math.rad(-90),0)*CFrame.new(0,0+0.075*math.sin(sine/10),0)*CFrame.Angles(0,math.rad(-10-5*math.sin(sine/10)),math.rad(-45-5*math.cos(sine/10))),.2)
						char:WaitForChild('Torso'):FindFirstChild('Right Hip').C0=char:WaitForChild('Torso'):FindFirstChild('Right Hip').C0:lerp(CFrame.new(1,-1,-0.1-0.2*math.cos(sine/10))*CFrame.Angles(0,math.rad(90),0)*CFrame.new(0,0-0.25*math.sin(sine/10),0)*CFrame.Angles(math.rad(-1),math.rad(-5),math.rad(-5+40*math.cos(sine/10))),.2)
						char:WaitForChild('Torso'):FindFirstChild('Left Hip').C0=char:WaitForChild('Torso'):FindFirstChild('Left Hip').C0:lerp(CFrame.new(-1,-1,-0.1+0.2*math.cos(sine/10))*CFrame.Angles(0,math.rad(-90),0)*CFrame.new(0,0+0.25*math.sin(sine/10),0)*CFrame.Angles(math.rad(-1),math.rad(5),math.rad(5+40*math.cos(sine/10))),.2)		
					end
				elseif char:WaitForChild('HumanoidRootPart').Velocity.Y > 1 and h == nil then
					char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0=char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,0+0.075*math.cos(sine/12))*CFrame.Angles(math.rad(-10+5*math.cos(sine/12)),0,0),.3)
					char:WaitForChild('Torso'):FindFirstChild('Neck').C0=char:WaitForChild('Torso'):FindFirstChild('Neck').C0:lerp(CFrame.new(0,1,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,0)*CFrame.Angles(math.rad(0-5*math.sin(sine/12)),0,0),.3)
					char:WaitForChild('Torso'):FindFirstChild('Right Shoulder').C0=char:WaitForChild('Torso'):FindFirstChild('Right Shoulder').C0:lerp(CFrame.new(1,0.5,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.new(0,0+0.075*math.sin(sine/24),0)*CFrame.Angles(0,math.rad(55+1*math.cos(sine/24)),math.rad(55-1*math.sin(sine/24))),.3)
					char:WaitForChild('Torso'):FindFirstChild('Left Shoulder').C0=char:WaitForChild('Torso'):FindFirstChild('Left Shoulder').C0:lerp(CFrame.new(-1,0.5,0)*CFrame.Angles(0,math.rad(-90),0)*CFrame.new(0,0+0.075*math.sin(sine/24),0)*CFrame.Angles(0,math.rad(-10-1*math.cos(sine/24)),math.rad(-45+1*math.sin(sine/24))),.3)
					char:WaitForChild('Torso'):FindFirstChild('Right Hip').C0=char:WaitForChild('Torso'):FindFirstChild('Right Hip').C0:lerp(CFrame.new(1,-1,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.new(0.5,0.75-0.075*math.cos(sine/12),0)*CFrame.Angles(math.rad(-1),math.rad(-5),math.rad(-20+1*math.cos(sine/12))),.3)
					char:WaitForChild('Torso'):FindFirstChild('Left Hip').C0=char:WaitForChild('Torso'):FindFirstChild('Left Hip').C0:lerp(CFrame.new(-1,-1,0)*CFrame.Angles(0,math.rad(-90),0)*CFrame.new(-0.25,0.25-0.075*math.cos(sine/12),0)*CFrame.Angles(math.rad(-1),math.rad(5),math.rad(10-1*math.cos(sine/12))),.3)		
				elseif char:WaitForChild('HumanoidRootPart').Velocity.Y < 1 and h == nil then
					char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0=char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,0+0.075*math.cos(sine/12))*CFrame.Angles(math.rad(5+5*math.cos(sine/12)),0,0),.2)
					char:WaitForChild('Torso'):FindFirstChild('Neck').C0=char:WaitForChild('Torso'):FindFirstChild('Neck').C0:lerp(CFrame.new(0,1,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,0)*CFrame.Angles(math.rad(5-5*math.sin(sine/12)),0,0),.2)
					char:WaitForChild('Torso'):FindFirstChild('Right Shoulder').C0=char:WaitForChild('Torso'):FindFirstChild('Right Shoulder').C0:lerp(CFrame.new(1,0.5,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.new(0,0+0.075*math.sin(sine/24),0)*CFrame.Angles(0,math.rad(55+1*math.cos(sine/24)),math.rad(55-1*math.sin(sine/24))),.2)
					char:WaitForChild('Torso'):FindFirstChild('Left Shoulder').C0=char:WaitForChild('Torso'):FindFirstChild('Left Shoulder').C0:lerp(CFrame.new(-1,0.5,0)*CFrame.Angles(0,math.rad(-90),0)*CFrame.new(0,0+0.075*math.sin(sine/24),0)*CFrame.Angles(0,math.rad(-10-1*math.cos(sine/24)),math.rad(-45+1*math.sin(sine/24))),.2)
					char:WaitForChild('Torso'):FindFirstChild('Right Hip').C0=char:WaitForChild('Torso'):FindFirstChild('Right Hip').C0:lerp(CFrame.new(1,-1,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.new(0.25,0.5-0.075*math.cos(sine/12),0)*CFrame.Angles(math.rad(-1),math.rad(-5),math.rad(-10+1*math.cos(sine/12))),.2)
					char:WaitForChild('Torso'):FindFirstChild('Left Hip').C0=char:WaitForChild('Torso'):FindFirstChild('Left Hip').C0:lerp(CFrame.new(-1,-1,0)*CFrame.Angles(0,math.rad(-90),0)*CFrame.new(0,0-0.075*math.cos(sine/12),0)*CFrame.Angles(math.rad(-1),math.rad(5),math.rad(5-1*math.cos(sine/12))),.2)		
				end
			else
				char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0=char:WaitForChild('HumanoidRootPart'):FindFirstChild('RootJoint').C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,0+0.075*math.cos(sine/24))*CFrame.Angles(math.rad(1+1*math.cos(sine/24)),0,0),.2)
				char:WaitForChild('Torso'):FindFirstChild('Neck').C0=char:WaitForChild('Torso'):FindFirstChild('Neck').C0:lerp(CFrame.new(0,1,0)*CFrame.Angles(math.rad(90),math.rad(180),0)*CFrame.new(0,0,0)*CFrame.Angles(math.rad(2.5-5*math.sin(sine/24)),0,0),.2)
				char:WaitForChild('Torso'):FindFirstChild('Right Shoulder').C0=char:WaitForChild('Torso'):FindFirstChild('Right Shoulder').C0:lerp(CFrame.new(1,0.5,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.new(0,0+0.075*math.sin(sine/24),0)*CFrame.Angles(0,math.rad(55+1*math.cos(sine/24)),math.rad(55-1*math.sin(sine/24))),.2)
				char:WaitForChild('Torso'):FindFirstChild('Left Shoulder').C0=char:WaitForChild('Torso'):FindFirstChild('Left Shoulder').C0:lerp(CFrame.new(-1,0.5,0)*CFrame.Angles(0,math.rad(-90),0)*CFrame.new(0,0+0.075*math.sin(sine/24),0)*CFrame.Angles(0,math.rad(-10-1*math.cos(sine/24)),math.rad(-45+1*math.sin(sine/24))),.2)
				char:WaitForChild('Torso'):FindFirstChild('Right Hip').C0=char:WaitForChild('Torso'):FindFirstChild('Right Hip').C0:lerp(CFrame.new(1,-1,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.new(0.75,0.25-0.075*math.cos(sine/24),0)*CFrame.Angles(math.rad(-1),math.rad(-5),math.rad(1+1*math.cos(sine/24))),.2)
				char:WaitForChild('Torso'):FindFirstChild('Left Hip').C0=char:WaitForChild('Torso'):FindFirstChild('Left Hip').C0:lerp(CFrame.new(-1,-1,0)*CFrame.Angles(0,math.rad(-90),0)*CFrame.new(-0.75,0.25-0.075*math.cos(sine/24),0)*CFrame.Angles(math.rad(-1),math.rad(5),math.rad(-1-1*math.cos(sine/24))),.2)		
			end
		else
			if (char:WaitForChild('HumanoidRootPart').Velocity * Vector3.new(1, 0, 1)).magnitude < 1 and h ~= nil then
				if crouch then
					char:WaitForChild('Torso'):FindFirstChild('Right Hip').C0=char:WaitForChild('Torso'):FindFirstChild('Right Hip').C0:lerp(CFrame.new(1,-1,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.new(0.25,0-0.075*math.cos(sine/24),0)*CFrame.Angles(math.rad(-5),math.rad(-10),math.rad(-55+1*math.cos(sine/24))),.2)
					char:WaitForChild('Torso'):FindFirstChild('Left Hip').C0=char:WaitForChild('Torso'):FindFirstChild('Left Hip').C0:lerp(CFrame.new(-1,-1,0)*CFrame.Angles(0,math.rad(-90),0)*CFrame.new(-0.5,1-0.075*math.cos(sine/24),0)*CFrame.Angles(math.rad(-5),math.rad(10),math.rad(-5-1*math.cos(sine/24))),.2)	
				else
					char:WaitForChild('Torso'):FindFirstChild('Right Hip').C0=char:WaitForChild('Torso'):FindFirstChild('Right Hip').C0:lerp(CFrame.new(1,-1,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.new(0,0-0.075*math.cos(sine/24),0)*CFrame.Angles(math.rad(-1),math.rad(-5),math.rad(1+1*math.cos(sine/24))),.2)
					char:WaitForChild('Torso'):FindFirstChild('Left Hip').C0=char:WaitForChild('Torso'):FindFirstChild('Left Hip').C0:lerp(CFrame.new(-1,-1,0)*CFrame.Angles(0,math.rad(-90),0)*CFrame.new(0,0-0.075*math.cos(sine/24),0)*CFrame.Angles(math.rad(-1),math.rad(5),math.rad(-1-1*math.cos(sine/24))),.2)	
				end
			elseif (char:WaitForChild('HumanoidRootPart').Velocity * Vector3.new(1, 0, 1)).magnitude > 1 and h ~= nil then
				if run and crouch==false then
					char:WaitForChild('Torso'):FindFirstChild('Right Hip').C0=char:WaitForChild('Torso'):FindFirstChild('Right Hip').C0:lerp(CFrame.new(1,-1,-0.1-0.2*math.cos(sine/6))*CFrame.Angles(0,math.rad(90),0)*CFrame.new(0,0-0.25*math.sin(sine/6),0)*CFrame.Angles(math.rad(-1),math.rad(-5),math.rad(0+40*math.cos(sine/6))),.2)
					char:WaitForChild('Torso'):FindFirstChild('Left Hip').C0=char:WaitForChild('Torso'):FindFirstChild('Left Hip').C0:lerp(CFrame.new(-1,-1,-0.1+0.2*math.cos(sine/6))*CFrame.Angles(0,math.rad(-90),0)*CFrame.new(0,0+0.25*math.sin(sine/6),0)*CFrame.Angles(math.rad(-1),math.rad(5),math.rad(0+40*math.cos(sine/6))),.2)		
				elseif run==false and crouch then
					char:WaitForChild('Torso'):FindFirstChild('Right Hip').C0=char:WaitForChild('Torso'):FindFirstChild('Right Hip').C0:lerp(CFrame.new(1,0,-0.1-0.2*math.cos(sine/24))*CFrame.Angles(0,math.rad(90),0)*CFrame.new(0.25,0-0.25*math.sin(sine/24),0)*CFrame.Angles(math.rad(-1),math.rad(-10),math.rad(0+20*math.cos(sine/24))),.2)
					char:WaitForChild('Torso'):FindFirstChild('Left Hip').C0=char:WaitForChild('Torso'):FindFirstChild('Left Hip').C0:lerp(CFrame.new(-1,0,-0.1+0.2*math.cos(sine/24))*CFrame.Angles(0,math.rad(-90),0)*CFrame.new(-0.25,0+0.25*math.sin(sine/24),0)*CFrame.Angles(math.rad(-1),math.rad(10),math.rad(0+20*math.cos(sine/24))),.2)		
				elseif run==false and crouch==false then
					char:WaitForChild('Torso'):FindFirstChild('Right Hip').C0=char:WaitForChild('Torso'):FindFirstChild('Right Hip').C0:lerp(CFrame.new(1,-1,-0.1-0.2*math.cos(sine/10))*CFrame.Angles(0,math.rad(90),0)*CFrame.new(0,0-0.25*math.sin(sine/10),0)*CFrame.Angles(math.rad(-1),math.rad(-5),math.rad(-5+40*math.cos(sine/10))),.2)
					char:WaitForChild('Torso'):FindFirstChild('Left Hip').C0=char:WaitForChild('Torso'):FindFirstChild('Left Hip').C0:lerp(CFrame.new(-1,-1,-0.1+0.2*math.cos(sine/10))*CFrame.Angles(0,math.rad(-90),0)*CFrame.new(0,0+0.25*math.sin(sine/10),0)*CFrame.Angles(math.rad(-1),math.rad(5),math.rad(5+40*math.cos(sine/10))),.2)		
				end
			elseif char:WaitForChild('HumanoidRootPart').Velocity.Y > 1 and h == nil then
				char:WaitForChild('Torso'):FindFirstChild('Right Hip').C0=char:WaitForChild('Torso'):FindFirstChild('Right Hip').C0:lerp(CFrame.new(1,-1,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.new(0.5,0.75-0.075*math.cos(sine/12),0)*CFrame.Angles(math.rad(-1),math.rad(-5),math.rad(-20+1*math.cos(sine/12))),.3)
				char:WaitForChild('Torso'):FindFirstChild('Left Hip').C0=char:WaitForChild('Torso'):FindFirstChild('Left Hip').C0:lerp(CFrame.new(-1,-1,0)*CFrame.Angles(0,math.rad(-90),0)*CFrame.new(-0.25,0.25-0.075*math.cos(sine/12),0)*CFrame.Angles(math.rad(-1),math.rad(5),math.rad(10-1*math.cos(sine/12))),.3)		
			elseif char:WaitForChild('HumanoidRootPart').Velocity.Y < 1 and h == nil then
				char:WaitForChild('Torso'):FindFirstChild('Right Hip').C0=char:WaitForChild('Torso'):FindFirstChild('Right Hip').C0:lerp(CFrame.new(1,-1,0)*CFrame.Angles(0,math.rad(90),0)*CFrame.new(0.25,0.5-0.075*math.cos(sine/12),0)*CFrame.Angles(math.rad(-1),math.rad(-5),math.rad(-10+1*math.cos(sine/12))),.2)
				char:WaitForChild('Torso'):FindFirstChild('Left Hip').C0=char:WaitForChild('Torso'):FindFirstChild('Left Hip').C0:lerp(CFrame.new(-1,-1,0)*CFrame.Angles(0,math.rad(-90),0)*CFrame.new(0,0-0.075*math.cos(sine/12),0)*CFrame.Angles(math.rad(-1),math.rad(5),math.rad(5-1*math.cos(sine/12))),.2)		
			end
		end
	end
end
