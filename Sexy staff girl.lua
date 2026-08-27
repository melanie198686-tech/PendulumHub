--[[
    FIXED REANIMATION
    FIXED BY MELANIE
]]

local function New(Object, Parent, Name, Data)
    local obj = Instance.new(Object)
    for Index, Value in pairs(Data or {}) do
        obj[Index] = Value
    end
    obj.Parent = Parent
    obj.Name = Name
    return obj
end

local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character
if not Character then
    Character = Player.CharacterAdded:Wait()
end

-- Wait for all limbs to exist
local function waitForChild(parent, name)
    local c = parent:FindFirstChild(name)
    if c then return c end
    return parent:WaitForChild(name)
end

local la = waitForChild(Character, "Left Arm")
local ra = waitForChild(Character, "Right Arm")
local ll = waitForChild(Character, "Left Leg")
local rl = waitForChild(Character, "Right Leg")
local Torso = waitForChild(Character, "Torso")
local Humanoid = waitForChild(Character, "Humanoid")
local Mouse = Player:GetMouse()

-- Disable default animations
local animate = Character:FindFirstChild("Animate")
if animate then animate.Disabled = true end
local animator = Humanoid:FindFirstChild("Animator")
if animator then animator:Destroy() end

-- Build staff
local Staff = New("Model", Character, "Staff", {})
local Handle = New("Part", Staff, "Handle", {
    BrickColor = BrickColor.new("Really black"),
    Material = Enum.Material.Wood,
    FormFactor = Enum.FormFactor.Symmetric,
    Shape = Enum.PartType.Cylinder,
    Size = Vector3.new(4.7, 0.2, 0.3),
    CFrame = CFrame.new(0.5715, 1.8893, -0.8989, -0.9447, 0.31997, -0.07182, -0.3276, -0.93058, 0.16337, -0.01456, 0.17786, 0.98395),
    CanCollide = false,
    BottomSurface = Enum.SurfaceType.Smooth,
    TopSurface = Enum.SurfaceType.Smooth,
    Color = Color3.new(0.4549, 0.5255, 0.6157),
})

local Part1 = New("Part", Staff, "Part1", {
    BrickColor = BrickColor.new("Really black"),
    Material = Enum.Material.Wood,
    FormFactor = Enum.FormFactor.Symmetric,
    Shape = Enum.PartType.Cylinder,
    Size = Vector3.new(1.38, 0.2, 0.3),
    CFrame = CFrame.new(2.8791, 2.2632, -0.79256, -0.95236, -0.29642, -0.07182, 0.28195, -0.94542, 0.16337, -0.11633, 0.13534, 0.98394),
    CanCollide = false,
    BottomSurface = Enum.SurfaceType.Smooth,
    TopSurface = Enum.SurfaceType.Smooth,
    Color = Color3.new(0.4549, 0.5255, 0.6157),
})
New("Motor", Part1, "mot", {
    Part0 = Part1,
    Part1 = Handle,
    C0 = CFrame.new(0, 0, 0, -0.95235, 0.28194, -0.11633, -0.29642, -0.94542, 0.13534, -0.07182, 0.16337, 0.98395),
    C1 = CFrame.new(-2.3041, 0.40928, -1.192e-7, -0.9447, -0.3276, -0.01456, 0.31997, -0.93058, 0.17786, -0.07182, 0.16337, 0.98395),
})

local Part2 = New("Part", Staff, "Part2", {
    BrickColor = BrickColor.new("Really black"),
    Material = Enum.Material.Wood,
    FormFactor = Enum.FormFactor.Symmetric,
    Shape = Enum.PartType.Cylinder,
    Size = Vector3.new(0.7, 0.2, 0.3),
    CFrame = CFrame.new(3.8013, 2.1865, -0.71251, -0.9447, 0.31997, -0.07182, -0.3276, -0.93058, 0.16337, -0.01456, 0.17787, 0.98394),
    CanCollide = false,
    BottomSurface = Enum.SurfaceType.Smooth,
    TopSurface = Enum.SurfaceType.Smooth,
    Color = Color3.new(0.4549, 0.5255, 0.6157),
})
New("Motor", Part2, "mot", {
    Part0 = Part2,
    Part1 = Handle,
    C0 = CFrame.new(0, 0, 0, -0.9447, -0.3276, -0.01456, 0.31997, -0.93058, 0.17786, -0.07182, 0.16337, 0.98395),
    C1 = CFrame.new(-3.1512, 0.7900, 0, -0.9447, -0.3276, -0.01456, 0.31997, -0.93058, 0.17786, -0.07182, 0.16337, 0.98395),
})

local Part3 = New("Part", Staff, "Part3", {
    BrickColor = BrickColor.new("Really black"),
    Material = Enum.Material.Wood,
    FormFactor = Enum.FormFactor.Symmetric,
    Shape = Enum.PartType.Cylinder,
    Size = Vector3.new(0.9, 0.2, 0.3),
    CFrame = CFrame.new(4.2772, 2.6764, -0.75911, -0.42608, 0.90183, -0.07182, -0.89698, -0.41078, 0.16337, 0.11783, 0.13403, 0.98394),
    CanCollide = false,
    BottomSurface = Enum.SurfaceType.Smooth,
    TopSurface = Enum.SurfaceType.Smooth,
    Color = Color3.new(0.4549, 0.5255, 0.6157),
})
New("Motor", Part3, "mot", {
    Part0 = Part3,
    Part1 = Handle,
    C0 = CFrame.new(0, 0, 0, -0.42608, -0.89698, 0.11783, 0.90183, -0.41078, 0.13403, -0.07182, 0.16337, 0.98395),
    C1 = CFrame.new(-3.7607, 0.4781, -4.172e-7, -0.9447, -0.3276, -0.01456, 0.31997, -0.93058, 0.17786, -0.07182, 0.16337, 0.98395),
})

local Part4 = New("Part", Staff, "Part4", {
    BrickColor = BrickColor.new("Really black"),
    Material = Enum.Material.Wood,
    FormFactor = Enum.FormFactor.Symmetric,
    Shape = Enum.PartType.Cylinder,
    Size = Vector3.new(0.9, 0.2, 0.3),
    CFrame = CFrame.new(4.1806, 3.3199, -0.87301, 0.66366, 0.74458, -0.07182, -0.7286, 0.66517, 0.16337, 0.16942, -0.05609, 0.98394),
    CanCollide = false,
    BottomSurface = Enum.SurfaceType.Smooth,
    TopSurface = Enum.SurfaceType.Smooth,
    Color = Color3.new(0.4549, 0.5255, 0.6157),
})
New("Motor", Part4, "mot", {
    Part0 = Part4,
    Part1 = Handle,
    C0 = CFrame.new(0, 0, 0, 0.66366, -0.7286, 0.16941, 0.74458, 0.66517, -0.05609, -0.07182, 0.16337, 0.98395),
    C1 = CFrame.new(-3.8786, -0.17193, -8.94e-7, -0.9447, -0.3276, -0.01456, 0.31997, -0.93058, 0.17786, -0.07182, 0.16337, 0.98395),
})

local Snowball = New("Part", Staff, "Snowball", {
    BrickColor = BrickColor.new("Really red"),
    Material = Enum.Material.Neon,
    FormFactor = Enum.FormFactor.Symmetric,
    Shape = Enum.PartType.Ball,
    Size = Vector3.new(0.4, 0.4, 0.4),
    CFrame = CFrame.new(3.5126, 2.9092, -0.85358, 0.31997, 0.9447, -0.07182, -0.93058, 0.3276, 0.16337, 0.17787, 0.01456, 0.98394),
    CanCollide = false,
    BottomSurface = Enum.SurfaceType.Smooth,
    TopSurface = Enum.SurfaceType.Smooth,
    Color = Color3.new(0.6863, 0.8667, 1),
})
New("PointLight", Snowball, "PointLight", {
    Color = Color3.new(0.7412, 1, 1),
    Brightness = 6,
    Range = 7,
    Shadows = true,
})
New("Motor", Snowball, "mot", {
    Part0 = Snowball,
    Part1 = Handle,
    C0 = CFrame.new(0, 0, 0, 0.31997, -0.93058, 0.17786, 0.9447, 0.3276, 0.01456, -0.07182, 0.16337, 0.98395),
    C1 = CFrame.new(-3.1133, 1.1086e-5, -4.649e-6, -0.9447, -0.3276, -0.01456, 0.31997, -0.93058, 0.17786, -0.07182, 0.16337, 0.98395),
})

-- Limb welds (replaces Motor6D with Weld)
local LeftArmJ = New("Weld", Torso, "LeftArmJ", {
    Part0 = Torso,
    Part1 = la,
    C0 = CFrame.new(-1.5, 0.5, 0),
    C1 = CFrame.new(0, 0.5, 0),
})
local RightArmJ = New("Weld", Torso, "RightArmJ", {
    Part0 = Torso,
    Part1 = ra,
    C0 = CFrame.new(1.5, 0.5, 0),
    C1 = CFrame.new(0, 0.5, 0),
})
local LeftLegJ = New("Weld", Torso, "LeftLegJ", {
    Part0 = Torso,
    Part1 = ll,
    C0 = CFrame.new(-0.5, -1, 0),
    C1 = CFrame.new(0, 1, 0),
})
local RightLegJ = New("Weld", Torso, "RightLegJ", {
    Part0 = Torso,
    Part1 = rl,
    C0 = CFrame.new(0.5, -1, 0),
    C1 = CFrame.new(0, 1, 0),
})
local Staffw = New("Weld", Torso, "StaffJoint", {
    Part0 = Torso,
    Part1 = Handle,
})

local RootJoint = New("Weld", Character.HumanoidRootPart, "RootJ", {
    Part0 = Character.HumanoidRootPart,
    Part1 = Torso,
})

local NeckJ = New("Weld", Torso, "NeckJ", {
    Part0 = Torso,
    Part1 = Character.Head,
    C1 = CFrame.new(0, -1.5, 0),
})

-- Helper: Lerp
local function Lerp(a, b, i)
    return a:Lerp(b, i)
end

-- Chat function (replaces _G.chatcustom)
local function Chat(msg, color, player)
    local head = player.Character and player.Character:FindFirstChild("Head")
    if not head then return end
    local bg = Instance.new("BillboardGui")
    bg.Adornee = head
    bg.Size = UDim2.new(3, 0, 1, 0)
    bg.StudsOffset = Vector3.new(0, 2, 0)
    bg.Parent = head
    local label = Instance.new("TextLabel", bg)
    label.Size = UDim2.new(1, 0, 1, 0)
    label.BackgroundTransparency = 1
    label.Text = msg
    label.TextColor3 = color == "Really red" and Color3.new(1, 0, 0) or Color3.new(1, 1, 1)
    label.TextStrokeColor3 = Color3.new(0, 0, 0)
    label.TextScaled = true
    label.Font = Enum.Font.SourceSansBold
    game:GetService("Debris"):AddItem(bg, 2)
end

-- SpellBinder function
local MoveCheck1 = false
local SatanState = false
local SpellBindStuff = 0
local SpellBind = nil
local UnsealEnforca = nil

local function SpellBinder(SpellID)
    if MoveCheck1 then return end
    MoveCheck1 = true

    if not SatanState then
        SatanState = true
        local model = game:GetObjects("rbxassetid://437368177")[1]
        if not model then MoveCheck1 = false return end
        -- Find decals and particle emitter
        local decal = model:FindFirstChild("Decal")
        local decal1 = model:FindFirstChild("Decal1")
        local emitter = model:FindFirstChild("ParticleEmitter")
        if decal then decal.Texture = "rbxassetid://" .. SpellID end
        if decal1 then decal1.Texture = "rbxassetid://" .. SpellID end
        if emitter then
            emitter.Color = ColorSequence.new(Color3.new(1, 0, 0))
            emitter.Size = NumberSequence.new(5)
        end

        model.Parent = Character
        local startCF = Character.Torso.CFrame + Character.Torso.CFrame.LookVector * 35
        model:SetPrimaryPartCFrame(startCF * CFrame.Angles(1.6, 0, 0))
        SpellBind = model
        SpellBindStuff = 0

        UnsealEnforca = game:GetService("RunService").RenderStepped:Connect(function()
            if not SpellBind or not SpellBind.Parent then return end
            local newCF = Character.Torso.CFrame + Character.Torso.CFrame.LookVector * 35
            SpellBind:SetPrimaryPartCFrame(CFrame.new(newCF.Position, Character.Torso.Position) * CFrame.Angles(1.6, SpellBindStuff, 0))
            SpellBindStuff = SpellBindStuff + 0.012
        end)

        -- Scale the model's parts
        local parts = {}
        for _, v in ipairs(SpellBind:GetDescendants()) do
            if v:IsA("BasePart") then
                table.insert(parts, v)
            end
        end
        for i = 1, 117 do
            local scale = 1 + i * 0.05 -- grow gradually
            for _, part in ipairs(parts) do
                part.Size = Vector3.new(0.5, 0.5, 0.5) * scale
            end
            wait(0.07)
        end
        wait(0.1)
        Chat("You shall not pass!", "Really red", Player)
        MoveCheck1 = false
    else
        -- Shrink and remove
        local parts = {}
        for _, v in ipairs(SpellBind:GetDescendants()) do
            if v:IsA("BasePart") then
                table.insert(parts, v)
            end
        end
        for i = 1, 117 do
            local scale = 1 - i * 0.05
            for _, part in ipairs(parts) do
                part.Size = Vector3.new(0.5, 0.5, 0.5) * math.max(scale, 0.05)
            end
            wait(0.07)
        end
        if UnsealEnforca then UnsealEnforca:Disconnect() UnsealEnforca = nil end
        if SpellBind then SpellBind:Destroy() SpellBind = nil end
        SatanState = false
        MoveCheck1 = false
    end
end

-- State management
local LimbAccess = { LA = true, RA = true, LL = true, RL = true, RJ = true, NJ = true, Weapon = true }
local State = "Lounge"
local Active = true
local Mode = "Staff"

-- Empty Change function (placeholder)
local function Change() end

-- Input
local ConnectionAgent = Mouse.KeyDown:Connect(function(key)
    if key == "q" then
        if State == "Flying" and Active then
            State = "Lounge"
            Humanoid.WalkSpeed = 30
        elseif State == "Lounge" and Active then
            State = "Battle"
            Humanoid.WalkSpeed = 20
        elseif State == "Battle" and Active then
            State = "Flying"
            Humanoid.WalkSpeed = 50
        end
    elseif key == "e" and State == "Battle" and Active then
        SpellBinder(375165574)
    elseif key == "e" and Active then
        -- Change mode placeholder
        --[[
        Humanoid.WalkSpeed = 0
        State = "Changing"
        Mode = "Changing"
        Active = false
        Change()
        ]]
    end
end)

-- Clean up on death
Humanoid.Died:Connect(function()
    if ConnectionAgent then ConnectionAgent:Disconnect() end
    if UnsealEnforca then UnsealEnforca:Disconnect() end
end)

-- Animation loop
local angle = 0
local angle2 = 0
local angle3 = 0
local anglespeed = 2
local anglespeed2 = 1
local anglespeed3 = 0.4

game:GetService("RunService").Stepped:Connect(function()
    angle = (angle + anglespeed / 10) % 100
    angle2 = (angle2 + anglespeed2 / 10) % 100
    angle3 = (angle3 + anglespeed3 / 10) % 100

    local speed = Vector3.new(Torso.Velocity.X, 0, Torso.Velocity.Z).Magnitude

    -- States: Flying, Lounge, Battle, Changing
    if State == "Flying" then
        Humanoid.WalkSpeed = 50
        local idle = speed < 2
        if LimbAccess.RJ then
            RootJoint.C0 = Lerp(RootJoint.C0, CFrame.new(-0.5, 0.5 + math.sin(angle2) * 0.1, 0) * CFrame.Angles(math.sin(angle3) * 0.02, math.rad(90), 0), 0.2)
        end
        if LimbAccess.LA then
            LeftArmJ.C0 = Lerp(LeftArmJ.C0, CFrame.new(-1.2, 0.35, 0) * CFrame.Angles(math.rad(-25) + math.sin(angle3) * 0.06, math.sin(angle3) * 0.06, math.rad(idle and 0 or 7) + math.sin(angle3) * 0.06), 0.1)
        end
        if LimbAccess.NJ then
            NeckJ.C0 = Lerp(NeckJ.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.sin(-angle3) * 0.04, math.rad(-45) + math.sin(-angle3) * 0.04, 0), 0.25)
        end
        if LimbAccess.RA then
            RightArmJ.C0 = Lerp(RightArmJ.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-25) + math.sin(angle3) * 0.06, math.sin(angle3) * 0.06, math.rad(-5) + math.sin(angle3) * 0.06), 0.1)
        end
        if LimbAccess.LL then
            LeftLegJ.C0 = Lerp(LeftLegJ.C0, CFrame.new(-0.5, (math.sin(angle3) * 0.1) - 0.6, -0.2) * CFrame.Angles(math.rad(35) + math.sin(angle3) * 0.1, 0, math.rad(-5)), 0.1)
        end
        if LimbAccess.RL then
            RightLegJ.C0 = Lerp(RightLegJ.C0, CFrame.new(0.5, (math.sin(angle3) * 0.1) - 0.7, -0.1) * CFrame.Angles(math.rad(45) + math.sin(angle3) * 0.1, 0, math.rad(5)), 0.1)
        end
        if LimbAccess.Weapon then
            Staffw.C0 = Lerp(Staffw.C0, CFrame.new(0, -1, 0), 0.2)
            Staffw.C1 = Lerp(Staffw.C1, CFrame.new(0, 0, -0.4) * CFrame.Angles(math.rad(180), math.rad(180), 0), 0.2)
        end
    elseif State == "Lounge" then
        Humanoid.WalkSpeed = 30
        local idle = speed < 2
        if LimbAccess.RJ then
            RootJoint.C0 = Lerp(RootJoint.C0, CFrame.new(-0.5, 0, 0) * CFrame.Angles(math.sin(angle3) * 0.02, math.rad(0), 0), 0.2)
        end
        if LimbAccess.LA then
            LeftArmJ.C0 = Lerp(LeftArmJ.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(5) + math.sin(angle3) * 0.06, math.sin(angle3) * 0.06, math.rad(idle and -3 or -23) + math.sin(angle3) * 0.06), 0.1)
        end
        if LimbAccess.NJ then
            NeckJ.C0 = Lerp(NeckJ.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.sin(-angle3) * 0.04, math.rad(0) + math.sin(-angle3) * 0.04, 0), 0.25)
        end
        if LimbAccess.RA then
            RightArmJ.C0 = Lerp(RightArmJ.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(5) + math.sin(angle3) * 0.1, 0, math.rad(idle and 3 or 23)), 0.1)
        end
        if LimbAccess.LL then
            LeftLegJ.C0 = Lerp(LeftLegJ.C0, CFrame.new(-0.5, (math.sin(angle3) * 0.1) - (idle and 1 or 0.6), idle and 0 or -0.2) * CFrame.Angles(idle and 0 or math.rad(-15) + math.sin(angle3) * 0.1, 0, math.rad(-5) + math.sin(angle3) * 0.02), 0.1)
        end
        if LimbAccess.RL then
            RightLegJ.C0 = Lerp(RightLegJ.C0, CFrame.new(0.5, (math.sin(angle3) * 0.1) - (idle and 1 or 0.7), idle and 0 or -0.1) * CFrame.Angles(idle and 0 or math.rad(-15) + math.sin(angle3) * 0.1, 0, math.rad(idle and 15 or 5) + math.sin(angle3) * -0.02), 0.1)
        end
        if LimbAccess.Weapon then
            Staffw.C0 = Lerp(Staffw.C0, CFrame.new(0, 0, 0.5), 0.2)
            Staffw.C1 = Lerp(Staffw.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(180), math.rad(180), math.rad(-45)), 0.2)
        end
    elseif State == "Battle" then
        Humanoid.WalkSpeed = 20
        local idle = speed < 2
        if LimbAccess.RJ then
            RootJoint.C0 = Lerp(RootJoint.C0, CFrame.new(-0.5, 0.5 + math.sin(angle2) * 0.1, 0) * CFrame.Angles(math.sin(angle3) * 0.02, math.rad(0), 0), 0.2)
        end
        if LimbAccess.LA then
            LeftArmJ.C0 = Lerp(LeftArmJ.C0, CFrame.new(idle and -1.1 or -0.9, idle and 0.5 or 0.6, -0.7) * CFrame.Angles(math.rad(5), math.rad(-135), math.rad(-90)), 0.1)
        end
        if LimbAccess.NJ then
            NeckJ.C0 = Lerp(NeckJ.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.sin(-angle3) * 0.04, math.rad(0) + math.sin(-angle3) * 0.04, 0), 0.25)
        end
        if LimbAccess.RA then
            RightArmJ.C0 = Lerp(RightArmJ.C0, CFrame.new(idle and 1.1 or 1.1, idle and 0.5 or 0.4, -0.7) * CFrame.Angles(math.rad(5), math.rad(135), math.rad(90)), 0.1)
        end
        if LimbAccess.LL then
            LeftLegJ.C0 = Lerp(LeftLegJ.C0, CFrame.new(-0.5, (math.sin(angle3) * 0.1) - (idle and 1 or 0.7), idle and 0 or -0.2) * CFrame.Angles(idle and 0 or math.rad(-15) + math.sin(angle3) * 0.1, 0, math.rad(idle and -5 or -5) + math.sin(angle3) * 0.02), 0.1)
        end
        if LimbAccess.RL then
            RightLegJ.C0 = Lerp(RightLegJ.C0, CFrame.new(0.5, (math.sin(angle3) * 0.1) - (idle and 1 or 0.7), idle and 0 or -0.1) * CFrame.Angles(idle and 0 or math.rad(-15) + math.sin(angle3) * 0.1, 0, math.rad(idle and 5 or 5) + math.sin(angle3) * -0.02), 0.1)
        end
        if LimbAccess.Weapon then
            if idle then
                Staffw.C0 = Lerp(Staffw.C0, CFrame.new(0, -0.5, -1), 0.2)
                Staffw.C1 = Lerp(Staffw.C1, CFrame.new(0, 0.6, 0) * CFrame.Angles(math.rad(90), math.rad(180), math.rad(-90)), 0.2)
            else
                Staffw.C0 = Lerp(Staffw.C0, CFrame.new(0.4, 0.5, -1), 0.2)
                Staffw.C1 = Lerp(Staffw.C1, CFrame.new(0, 0.1, 0) * CFrame.Angles(math.rad(135), math.rad(120), math.rad(-135)), 0.2)
            end
        end
    elseif State == "Changing" then
        if LimbAccess.RJ then
            RootJoint.C0 = Lerp(RootJoint.C0, CFrame.new(-0.5, 0.5 + math.sin(angle2) * 0.1, 0) * CFrame.Angles(math.sin(angle3) * 0.02, math.rad(0), 0), 0.2)
        end
        if LimbAccess.LA then
            LeftArmJ.C0 = Lerp(LeftArmJ.C0, CFrame.new(-1.3, 0.51, -0.7) * CFrame.Angles(math.rad(5), math.rad(-165), math.rad(-90)), 0.1)
        end
        if LimbAccess.NJ then
            NeckJ.C0 = Lerp(NeckJ.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10), math.rad(0) + math.sin(-angle3) * 0.04, 0), 0.25)
        end
        if LimbAccess.RA then
            RightArmJ.C0 = Lerp(RightArmJ.C0, CFrame.new(1.3, 0.49, -0.7) * CFrame.Angles(math.rad(5), math.rad(165), math.rad(90)), 0.1)
        end
        if LimbAccess.LL then
            LeftLegJ.C0 = Lerp(LeftLegJ.C0, CFrame.new(-1, -1, -0.4) * CFrame.Angles(0, math.rad(25), math.rad(75)), 0.1)
        end
        if LimbAccess.RL then
            RightLegJ.C0 = Lerp(RightLegJ.C0, CFrame.new(1, -1, -0.4) * CFrame.Angles(0, math.rad(-25), math.rad(-75)), 0.1)
        end
    end
end)
