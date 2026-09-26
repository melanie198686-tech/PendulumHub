-- MADE BY VIJJAY AND ELLERNATE
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local Debris = game:GetService("Debris")
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TextChatService = game:GetService("TextChatService")

local player = Players.LocalPlayer

-- Asset IDs
local STICK_ID = 78069648766953
local BLOOD_STICKER_ID = 137948423163043
local DROP_ACCESSORY_ID = 138992352014702

local chatPart1 = "-gh 91901275660465 137948423163043 78069648766953 138992352014702 91901275660465 91901275660465 91901275660465 91901275660465 91901275660465 91901275660465 91901275660465 91901275660465"
local chatPart2 = "-gh 91901275660465 91901275660465 91901275660465 91901275660465 91901275660465 91901275660465 91901275660465 91901275660465 91901275660465 91901275660465 91901275660465 91901275660465"

-- Robust Chat Sender
local function sendChat(msg)
    pcall(function()
        if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
            local channel = TextChatService.TextChannels:FindFirstChild("RBXGeneral")
            if channel then channel:SendAsync(msg) return end
        end
        local chatEvent = ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents")
        if chatEvent and chatEvent:FindFirstChild("SayMessageRequest") then
            chatEvent.SayMessageRequest:FireServer(msg, "All")
        end
    end)
end

local character = player.Character or player.CharacterAdded:Wait()
local animationRunning = false
local isUnderMap = false
local currentSpawnId = 0 -- Added to prevent overlapping loops on multiple deaths

local function getAccessoryByName(nameQuery)
    for _, obj in pairs(character:GetChildren()) do
        if obj:IsA("Accessory") and (obj.Name == nameQuery or obj.Name:find(nameQuery)) then
            return obj
        end
    end
    return nil
end

local function getAllAccessoriesByName(nameQuery)
    local list = {}
    for _, obj in pairs(character:GetChildren()) do
        if obj:IsA("Accessory") and (obj.Name == nameQuery or obj.Name:find(nameQuery)) then
            table.insert(list, obj)
        end
    end
    return list
end

local function ensureNoPlayerCollision(handle)
    if handle:FindFirstChild("HasNoCollision") then return end
    local marker = Instance.new("BoolValue")
    marker.Name = "HasNoCollision"
    marker.Parent = handle
    
    for _, part in pairs(character:GetDescendants()) do
        if part:IsA("BasePart") then
            local nc = Instance.new("NoCollisionConstraint")
            nc.Part0 = handle
            nc.Part1 = part
            nc.Parent = handle
        end
    end
end

-- Thread-safe hat commands to avoid breaking if you die repeatedly
local function sendHatCommands(spawnId)
    task.wait(1.5)
    if currentSpawnId ~= spawnId then return end
    sendChat(chatPart1)
    task.wait(0.8)
    if currentSpawnId ~= spawnId then return end
    sendChat(chatPart2)
    task.wait(1.5)
    if currentSpawnId ~= spawnId then return end
    sendChat("-net")
    task.wait(1)
    if currentSpawnId ~= spawnId then return end
    isUnderMap = true
end

task.spawn(function() sendHatCommands(currentSpawnId) end)

RunService.Stepped:Connect(function()
    if character then
        local hrp = character:FindFirstChild("HumanoidRootPart") or character:FindFirstChild("Torso")
        if hrp then
            -- Removed the hrp.Velocity = 0 line here so your character moves/falls normally!
            
            if isUnderMap and not animationRunning then
                local hrpCf = hrp.CFrame
                
                local propGun = getAccessoryByName("Cube.005Accessory")
                if propGun and propGun:FindFirstChild("Handle") then
                    local handle = propGun.Handle
                    for _, w in pairs(handle:GetChildren()) do if w:IsA("Weld") then w:Destroy() end end
                    handle.Anchored = false
                    handle.CanCollide = true
                    ensureNoPlayerCollision(handle)
                    handle.CFrame = hrpCf
                    handle.Velocity = Vector3.new(0, 0, 0)
                end
                
                local front6List = getAllAccessoriesByName("Front 6")
                for _, acc in ipairs(front6List) do
                    local handle = acc:FindFirstChild("Handle")
                    if handle then
                        for _, w in pairs(handle:GetChildren()) do if w:IsA("Weld") then w:Destroy() end end
                        handle.Anchored = false
                        handle.CanCollide = true
                        ensureNoPlayerCollision(handle)
                        handle.CFrame = hrpCf
                        handle.Velocity = Vector3.new(0, 0, 0)
                    end
                end
                
                local waistAcc = getAccessoryByName("Waist")
                if waistAcc and waistAcc:FindFirstChild("Handle") then
                    local handle = waistAcc.Handle
                    for _, w in pairs(handle:GetChildren()) do if w:IsA("Weld") then w:Destroy() end end
                    handle.Anchored = false
                    handle.CanCollide = true
                    ensureNoPlayerCollision(handle)
                    handle.CFrame = hrpCf
                    handle.Velocity = Vector3.new(0, 0, 0)
                end
            end
        end
    end
end)

local function getAccessoryById(id)
    for _, obj in pairs(character:GetChildren()) do
        if obj:IsA("Accessory") then
            local handle = obj:FindFirstChild("Handle")
            if handle then
                local mesh = handle:FindFirstChildOfClass("SpecialMesh") or handle:FindFirstChildOfClass("Mesh")
                if mesh and (tostring(mesh.MeshId):find(tostring(id)) or tostring(mesh.TextureId):find(tostring(id))) then
                    return obj
                end
            end
        end
    end
    return nil
end

local function isHat(accessory)
    local handle = accessory:FindFirstChild("Handle")
    if not handle then return false end
    for _, attachment in pairs(handle:GetChildren()) do
        if attachment:IsA("Attachment") and (attachment.Name:lower():find("hat") or attachment.Name:lower():find("head")) then
            return true
        end
    end
    if accessory.Name:lower():find("hat") then return true end
    return false
end

local function processAccessories()
    local dropAccessory = getAccessoryById(DROP_ACCESSORY_ID)
    local count = 0
    
    for _, obj in pairs(character:GetChildren()) do
        if obj:IsA("Accessory") then
            local handle = obj:FindFirstChild("Handle")
            if handle then
                if obj == dropAccessory then
                    for _, weld in pairs(handle:GetChildren()) do
                        if weld:IsA("Weld") or weld:IsA("ManualWeld") then weld:Destroy() end
                    end
                    local torso = character:FindFirstChild("Torso") or character:FindFirstChild("UpperTorso")
                    if torso then
                        handle.Parent = workspace
                        handle.Anchored = false
                        handle.CanCollide = true
                        handle.CFrame = torso.CFrame * CFrame.new(0, 0, 2)
                        local bodyVel = Instance.new("BodyVelocity")
                        bodyVel.Velocity = Vector3.new(0, -15, 0)
                        bodyVel.MaxForce = Vector3.new(50, 50, 50)
                        bodyVel.Parent = handle
                        Debris:AddItem(bodyVel, 0.3)
                    end
                elseif not isHat(obj) then
                    for _, weld in pairs(handle:GetChildren()) do
                        if weld:IsA("Weld") or weld:IsA("ManualWeld") then weld:Destroy() end
                    end
                    local rootPart = character:FindFirstChild("HumanoidRootPart") or character:FindFirstChild("Torso")
                    if rootPart then
                        handle.Parent = workspace
                        handle.Anchored = false
                        handle.CanCollide = true
                        handle.CFrame = rootPart.CFrame * CFrame.new(math.random(-2, 2), -3 - (count * 0.5), math.random(-2, 2))
                        local bodyVel = Instance.new("BodyVelocity")
                        bodyVel.Velocity = Vector3.new(math.random(-10, 10), -10, math.random(-10, 10))
                        bodyVel.MaxForce = Vector3.new(50, 50, 50)
                        bodyVel.Parent = handle
                        Debris:AddItem(bodyVel, 0.3)
                    end
                    count = count + 1
                else
                    local head = character:FindFirstChild("Head")
                    if head then
                        for _, weld in pairs(handle:GetChildren()) do
                            if weld:IsA("Weld") or weld:IsA("ManualWeld") then weld:Destroy() end
                        end
                        handle.Parent = workspace
                        handle.Anchored = false
                        handle.CanCollide = false
                        local hatWeld = Instance.new("Weld")
                        hatWeld.Part0 = head
                        hatWeld.Part1 = handle
                        hatWeld.C0 = CFrame.new(0, 0.5, 0)
                        hatWeld.Parent = handle
                    end
                end
            end
        end
    end
end

local function positionStick()
    local stick = getAccessoryById(STICK_ID)
    if not stick then return nil end
    local handle = stick:FindFirstChild("Handle")
    local rightArm = character:FindFirstChild("Right Arm") or character:FindFirstChild("RightHand")
    if not handle or not rightArm then return nil end
    
    for _, weld in pairs(handle:GetChildren()) do
        if weld:IsA("Weld") then weld:Destroy() end
    end
    
    handle.Anchored = false
    local weld = Instance.new("Weld")
    weld.Part0 = rightArm
    weld.Part1 = handle
    weld.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(90), 0, 0)
    weld.Parent = rightArm
    
    return handle
end

local function createBlood()
    local head = character:FindFirstChild("Head")
    if not head then return end
    
    local decal = Instance.new("Decal")
    decal.Texture = "rbxassetid://" .. BLOOD_STICKER_ID
    decal.Face = Enum.NormalId.Right
    decal.Transparency = 0.2
    decal.Color3 = Color3.fromRGB(180, 0, 0)
    decal.Rotation = 90
    decal.Parent = head
end

local function runDeathSequence(isInstant)
    if animationRunning then return end
    animationRunning = true 
    
    character = player.Character
    if not character then 
        animationRunning = false
        return 
    end
    
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    local torso = character:FindFirstChild("Torso")
    local head = character:FindFirstChild("Head")
    local hrp = character:FindFirstChild("HumanoidRootPart")
    local rightArm = character:FindFirstChild("Right Arm") or character:FindFirstChild("RightHand")
    
    if not (humanoid and torso and head and hrp) then
        animationRunning = false
        return
    end
    
    -- Cache handles
    local cubeAccessory = getAccessoryByName("CubeAccessory")
    local cubeHandle = cubeAccessory and cubeAccessory:FindFirstChild("Handle")
    
    local propGun = getAccessoryByName("Cube.005Accessory")
    local propGunHandle = propGun and propGun:FindFirstChild("Handle")
    
    local waistAccessory = getAccessoryByName("Waist")
    local waistHandle = waistAccessory and waistAccessory:FindFirstChild("Handle")
    
    local front6List = getAllAccessoriesByName("Front 6")
    local front6Handles = {}
    for _, acc in ipairs(front6List) do
        local h = acc:FindFirstChild("Handle")
        if h then table.insert(front6Handles, h) end
    end

    local underPos = hrp.Position - Vector3.new(0, 10, 0)
    
    -- 1. Teleport CubeAccessory 10 studs under
    if cubeHandle then
        for _, w in pairs(cubeHandle:GetChildren()) do if w:IsA("Weld") then w:Destroy() end end
        cubeHandle.Parent = workspace
        cubeHandle.Anchored = false
        cubeHandle.CanCollide = false
        cubeHandle.CFrame = CFrame.new(underPos)
    end
    
    local aimWeld = nil

    -- 2. Prop Gun Aim Sequence (Animate Arm + Tilt Gun to Head)
    if propGunHandle then
        propGunHandle.Anchored = false
        for _, weld in pairs(propGunHandle:GetChildren()) do
            if weld:IsA("Weld") then weld:Destroy() end
        end
        propGunHandle.Parent = workspace
        propGunHandle.CanCollide = false
        
        local gunWeld = Instance.new("Weld")
        gunWeld.Part0 = rightArm
        gunWeld.Part1 = propGunHandle
        gunWeld.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(180), 0, 0)
        gunWeld.Parent = rightArm
        
        -- Override right shoulder for smooth aim animation
        local rightShoulder = torso:FindFirstChild("Right Shoulder")
        if rightShoulder and rightShoulder:IsA("Motor6D") then
            rightShoulder.Enabled = false
            
            aimWeld = Instance.new("Weld")
            aimWeld.Name = "AimWeld"
            aimWeld.Part0 = torso
            aimWeld.Part1 = rightArm
            aimWeld.C0 = CFrame.new(1.5, 0.5, 0)
            aimWeld.C1 = CFrame.new(0, 0.5, 0)
            aimWeld.Parent = rightArm
            
            -- Targeted CFrames for aiming right at the side of the head
            local targetArmCFrame = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(140), math.rad(0), math.rad(-45))
            local targetGunCFrame = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(90), math.rad(90), 0)

            if isInstant then
                -- Snap instantly if FREAK YOU is pressed
                aimWeld.C0 = targetArmCFrame
                gunWeld.C0 = targetGunCFrame
            else
                -- Tween Arm to tuck into head
                TweenService:Create(aimWeld, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    C0 = targetArmCFrame
                }):Play()
                
                -- Tween Gun to rotate inwards at the temple
                TweenService:Create(gunWeld, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    C0 = targetGunCFrame
                }):Play()
            end
        end
    end
    
    if not isInstant then
        -- HOLD THE ANIMATION (Wait for aim to finish + hold the pose)
        task.wait(1.5)
    end

    -- ==========================================
    -- 3. THE SHOT (Instant if button 2 is pressed)
    -- ==========================================
    
    createBlood()
    
    -- Attach Waist blood mesh rotated correctly
    if waistHandle then
        waistHandle.Anchored = false
        for _, weld in pairs(waistHandle:GetChildren()) do
            if weld:IsA("Weld") then weld:Destroy() end
        end
        waistHandle.Parent = workspace
        waistHandle.CanCollide = false
        
        local faceWeld = Instance.new("Weld")
        faceWeld.Part0 = head
        faceWeld.Part1 = waistHandle
        faceWeld.C0 = CFrame.new(0.9, 0, 0.1) * CFrame.Angles(0, math.rad(90), 0)
        faceWeld.Parent = waistHandle
    end
    
    -- Explode the gun instantly
    if propGunHandle then
        for _, w in pairs(propGunHandle:GetChildren()) do if w:IsA("Weld") then w:Destroy() end end
        propGunHandle.Anchored = false
        propGunHandle.CanCollide = true
        local vel = Instance.new("BodyVelocity")
        vel.Velocity = Vector3.new(math.random(-50, 50), math.random(20, 50), math.random(-50, 50))
        vel.MaxForce = Vector3.new(3000, 3000, 3000)
        vel.Parent = propGunHandle
        Debris:AddItem(vel, 0.4)
    end
    
    -- Explode the Front 6 casing instantly
    for _, handle in ipairs(front6Handles) do
        handle.Anchored = false
        for _, w in pairs(handle:GetChildren()) do if w:IsA("Weld") then w:Destroy() end end
        handle.Parent = workspace
        handle.CanCollide = true
        handle.CFrame = head.CFrame * CFrame.new(0.6, 0, 0)
        
        local vel = Instance.new("BodyVelocity")
        vel.Velocity = Vector3.new(math.random(-50, 50), math.random(10, 50), math.random(-50, 50))
        vel.MaxForce = Vector3.new(3000, 3000, 3000)
        vel.Parent = handle
        Debris:AddItem(vel, 0.4)
    end

    -- ==========================================
    -- 4. RAGDOLL PHYSICS
    -- ==========================================

    humanoid.BreakJointsOnDeath = false 
    hrp.Anchored = true 
    
    character.Archivable = true
    local dummyRig = character:Clone()
    dummyRig.Name = "InvisibleAnimRig"
    
    for _, obj in pairs(dummyRig:GetDescendants()) do
        if obj:IsA("BasePart") then
            obj.Transparency = 1
            obj.CanCollide = false
            obj.Massless = true
            for _, child in pairs(obj:GetChildren()) do
                if child:IsA("Decal") or child:IsA("Texture") or child:IsA("BillboardGui") then
                    child:Destroy()
                end
            end
        elseif obj:IsA("Script") or obj:IsA("LocalScript") or obj:IsA("Accessory") then
            obj:Destroy()
        end
    end
    
    dummyRig.Parent = workspace
    dummyRig:SetPrimaryPartCFrame(hrp.CFrame)
    
    local dummyTorso = dummyRig:FindFirstChild("Torso")
    if dummyTorso then
        local tWeld = Instance.new("Weld")
        tWeld.Part0 = dummyTorso
        tWeld.Part1 = torso
        tWeld.C0 = CFrame.new()
        tWeld.C1 = CFrame.new()
        tWeld.Parent = dummyTorso
    end
    
    if aimWeld then aimWeld:Destroy() end
    
    for _, jointName in ipairs({"Right Shoulder", "Left Shoulder", "Right Hip", "Left Hip", "Neck"}) do
        local realJoint = torso:FindFirstChild(jointName)
        if realJoint and realJoint:IsA("Motor6D") then
            local realPart = realJoint.Part1
            local dummyPart = dummyRig:FindFirstChild(realPart.Name)
            
            if dummyPart then
                local weld = Instance.new("Weld")
                weld.Part0 = dummyPart
                weld.Part1 = realPart
                weld.C0 = CFrame.new()
                weld.C1 = CFrame.new()
                weld.Parent = dummyPart
            end
            realJoint:Destroy()
        end
    end

    processAccessories()
    positionStick()

    humanoid.Health = 0 
    
    local dRightShoulder = dummyTorso:FindFirstChild("Right Shoulder")
    local dLeftShoulder = dummyTorso:FindFirstChild("Left Shoulder")
    
    if dRightShoulder and dLeftShoulder then
        TweenService:Create(dRightShoulder, TweenInfo.new(0.4), {
            C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(160), 0, math.rad(-20))
        }):Play()
        TweenService:Create(dLeftShoulder, TweenInfo.new(0.4), {
            C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-20), 0, math.rad(20))
        }):Play()
    end
    
    local r6JointData = {
        ["Right Arm"] = {CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0), CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)},
        ["Left Arm"] = {CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0), CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)},
        ["Right Leg"] = {CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0), CFrame.new(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)},
        ["Left Leg"] = {CFrame.new(-0.5, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0), CFrame.new(0, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)},
        ["Head"] = {CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)}
    }
    
    for partName, cframes in pairs(r6JointData) do
        local limb = character:FindFirstChild(partName)
        if limb then
            local a0 = Instance.new("Attachment", torso)
            a0.CFrame = cframes[1]
            local a1 = Instance.new("Attachment", limb)
            a1.CFrame = cframes[2]
            
            local socket = Instance.new("BallSocketConstraint")
            socket.Attachment0 = a0
            socket.Attachment1 = a1
            socket.LimitsEnabled = true
            socket.TwistLimitsEnabled = true
            socket.Parent = torso
            
            local nc = Instance.new("NoCollisionConstraint")
            nc.Part0 = torso
            nc.Part1 = limb
            nc.Parent = torso
        end
    end
    
    dummyRig:Destroy()
    hrp.Anchored = false 

    -- Shoot forces backwards from impact
    if rightArm then
        local rVel = Instance.new("BodyVelocity")
        rVel.Velocity = Vector3.new(25, 25, 25)
        rVel.MaxForce = Vector3.new(3000, 3000, 3000)
        rVel.Parent = rightArm
        Debris:AddItem(rVel, 0.2)
    end

    if head then
        local hVel = Instance.new("BodyVelocity")
        hVel.Velocity = Vector3.new(-25, 25, -25)
        hVel.MaxForce = Vector3.new(3000, 3000, 3000)
        hVel.Parent = head
        Debris:AddItem(hVel, 0.2)
    end
    
    animationRunning = false
end

-- Strictly Stable Draggable Multi-Button GUI
local function createGUI()
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "DeathAnimGUI"
    screenGui.ResetOnSpawn = false
    screenGui.Parent = player:WaitForChild("PlayerGui")
    
    -- Main draggable container
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 150, 0, 110)
    frame.Position = UDim2.new(0.5, -75, 0.8, -100)
    frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    frame.BorderSizePixel = 0
    frame.Active = true
    frame.Parent = screenGui
    
    local frameCorner = Instance.new("UICorner")
    frameCorner.CornerRadius = UDim.new(0, 8)
    frameCorner.Parent = frame
    
    -- Normal Die Button (Wait + Animation)
    local btnDie = Instance.new("TextButton")
    btnDie.Name = "DieBtn"
    btnDie.Size = UDim2.new(1, -10, 0, 45)
    btnDie.Position = UDim2.new(0, 5, 0, 5)
    btnDie.Text = "DIE"
    btnDie.TextColor3 = Color3.new(1, 1, 1)
    btnDie.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
    btnDie.BorderSizePixel = 0
    btnDie.TextSize = 18
    btnDie.Font = Enum.Font.GothamBold
    btnDie.Parent = frame
    
    local cornerDie = Instance.new("UICorner")
    cornerDie.CornerRadius = UDim.new(0, 6)
    cornerDie.Parent = btnDie

    -- Instant Die Button (FREAK YOU)
    local btnFreak = Instance.new("TextButton")
    btnFreak.Name = "FreakBtn"
    btnFreak.Size = UDim2.new(1, -10, 0, 45)
    btnFreak.Position = UDim2.new(0, 5, 0, 60)
    btnFreak.Text = "FREAK YOU"
    btnFreak.TextColor3 = Color3.new(1, 1, 1)
    btnFreak.BackgroundColor3 = Color3.fromRGB(150, 30, 150)
    btnFreak.BorderSizePixel = 0
    btnFreak.TextSize = 18
    btnFreak.Font = Enum.Font.GothamBold
    btnFreak.Parent = frame
    
    local cornerFreak = Instance.new("UICorner")
    cornerFreak.CornerRadius = UDim.new(0, 6)
    cornerFreak.Parent = btnFreak
    
    -- Dragging Logic applied to the Frame
    local dragging = false
    local dragStart, startPos
    
    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = frame.Position
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            local delta = input.Position - dragStart
            frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)
    
    -- Button Connections
    btnDie.MouseButton1Click:Connect(function()
        runDeathSequence(false) -- Plays full animation
    end)
    
    btnFreak.MouseButton1Click:Connect(function()
        runDeathSequence(true) -- Skips animation/wait, happens instantly
    end)
end

player.CharacterAdded:Connect(function(char)
    character = char
    animationRunning = false
    isUnderMap = false
    currentSpawnId = currentSpawnId + 1 -- Update spawn ID on death
    task.spawn(function() sendHatCommands(currentSpawnId) end)
end)

createGUI()
