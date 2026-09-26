local Flinging = false
local Highlight = Instance.new("Highlight")
local Root = game.Players.LocalPlayer.Character.HumanoidRootPart
local Version = "v1.0.5"
print(Version)

Highlight.FillColor = Color3.fromRGB(34, 77, 153)
Highlight.OutlineColor = Color3.fromRGB(55, 127, 244)

getgenv().AntiVoid = true
getgenv().ShowReal = true
getgenv().Fling = true
getgenv().AutoReclaim = true
getgenv().AntiSleep = true
getgenv().EnableSpin = true
loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/CenteredSniper/Kenzen/master/ZendeyReanimate.lua", true))()
Root.Transparency = 0

Highlight.Parent = Root
Highlight.Adornee = Root



local PASettings = {
    WalkSpeed = 16,
    JumpPower = 125,
    ScriptCreator = "Anonymous Creator",
    HatsBeingAnimated = {
        
    },
    Teleportation = {
        Enabled = false,
        Key = "t"
    },
    Animations = {
        IdleAnimation = {
            AnimationID = nil,
            FrameSpeed = math.huge,
            TweenSpeed = nil
        },
        WalkAnimation = {
            AnimationID = nil,
            FrameSpeed = math.huge,
            TweenSpeed = nil
        },
        SprintAnimation = {
            SprintingEnabled = false,
            Key = "52",
            SprintSpeed = nil,
            AnimationID = nil,
            FrameSpeed = math.huge,
            TweenSpeed = nil
        },
     
        Attacks = {
            OneKeyAttack = {
               --[[ Attack1 = {
                    Key = "q",
                    AnimationID = 7142973417,
                    FrameSpeed = math.huge,
                    TweenSpeed = .1,
                    AttackWalkSpeed = 2
                },
                ]]
            }
        }
    }
}


getgenv().Methods = {}

local Methods = getgenv().Methods
local CurrentType = "Idle"
local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
local Sprinting = false

local Attacking = false

local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character

local Humanoid = Character:FindFirstChildOfClass("Humanoid")
Humanoid.WalkSpeed = PASettings.WalkSpeed

task.spawn(function()
    while task.wait() do
       if not Flinging then
            Root.Position = Character.Torso.Position - Vector3.new(0, 5, 0)
        end
    end
end)

function Methods:SetWalkSpeed(Value)
    PASettings.WalkSpeed = Value
    Humanoid.WalkSpeed = Value
end

function Methods:PlaySound(SoundID, Looped)
	local Sound = Instance.new("Sound", Character.Torso)
	Sound.SoundId = "rbxassetid://"..SoundID
	Sound.Volume = 5
	if Looped then Sound.Looped = true else Sound.Looped = false end
	Sound:Play()
end

function Methods:Chat(Message)
	local args = {
    	[1] = Message,
    	[2] = "All"
	}

	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
end

local FakeRoot = getgenv().CloneRig.HumanoidRootPart

function Methods:FreezeChar()
    FakeRoot.Anchored = true
end

function Methods:ThawChar()
    FakeRoot.Anchored = false
end

function Methods:NoYield(fn)
    task.spawn(fn)   
end

function Methods:ApplyVelocityFoward(Distance)
   FakeRoot.Velocity = FakeRoot.CFrame.LookVector.Unit * Distance * 25
end

function Methods:ApplyVelocityUpward(Distance)
    FakeRoot.Velocity = Vector3.new(FakeRoot.Velocity.X,Distance,FakeRoot.Velocity.Z)    
end

function Methods:LookAtMouse()
	Character.HumanoidRootPart.CFrame = CFrame.lookAt(Character.HumanoidRootPart.Position, Vector3.new(Mouse.Hit.p.X, Character.HumanoidRootPart.Position.Y, Mouse.Hit.p.Z))
end

function Methods:SetWalkAnimation(AnimationID, FrameSpeed)
    PASettings.Animations.WalkAnimation.AnimationID = AnimationID
    PASettings.Animations.WalkAnimation.TweenSpeed = FrameSpeed
end

function Methods:SetIdleAnimation(AnimationID, FrameSpeed)
    PASettings.Animations.IdleAnimation.AnimationID = AnimationID
    PASettings.Animations.IdleAnimation.TweenSpeed = FrameSpeed
end

function Methods:SetJumpPower(Value)
    PASettings.JumpPower = Value
end

function Methods:NewAttack(AttackName, Key, AnimationID, TweenSpeed, Speed)
    PASettings.Animations.Attacks.OneKeyAttack[AttackName] = {}
    local Attack = PASettings.Animations.Attacks.OneKeyAttack[AttackName]
    Attack.Key = Key
    Attack.AnimationID = AnimationID
    Attack.FrameSpeed = math.huge
    Attack.TweenSpeed = TweenSpeed
    Attack.AttackWalkSpeed = Speed
end

function Methods:EnableSprinting(AnimationID, TweenSpeed, Speed)
    local Sprint = PASettings.Animations.SprintAnimation
    Sprint.SprintingEnabled = true
    Sprint.AnimationID = AnimationID
    Sprint.TweenSpeed = TweenSpeed
    Sprint.SprintSpeed = Speed
end


function Methods:HatToAnimate(HatName, WeldedTo)
    PASettings.HatsBeingAnimated[HatName] = HatName.."\\\\"..WeldedTo
end

function Methods:HatFlingOnTouch(Hat)
    local Hat = Character[Hat].Handle
    Hat.Touched:Connect(function(BasePart)
        if BasePart.Parent:FindFirstChildOfClass("Humanoid") and BasePart.Parent.Name ~= Player.Name and Attacking and not Flinging then
            Flinging = true
            local Connection = game:GetService("RunService").Heartbeat:Connect(function()
                Root.Position = BasePart.Parent.PrimaryPart.Position
            end)
            task.wait(1)
            Connection:Disconnect()
            Flinging = false
        elseif BasePart.Parent.Parent:FindFirstAncestorOfClass("Humanoid") and BasePart.Parent.Parent.Name ~= Player.Name and Attacking and not Flinging then
            Flinging = true
            local Connection = game:GetService("RunService").Heartbeat:Connect(function()
                Root.Position = BasePart.Parent.Parent.PrimaryPart.Position
            end)
            task.wait(1)
            Connection:Disconnect()
            Flinging = false
        end
    end)
end


function Methods:BodyPartFlingOnTouch(BodyPart)
    local Hat = Character[BodyPart]
    Hat.Touched:Connect(function(BasePart)
        if BasePart.Parent:FindFirstChildOfClass("Humanoid") and BasePart.Parent.Name ~= Player.Name and Attacking and not Flinging then
            Flinging = true
            local Connection = game:GetService("RunService").Heartbeat:Connect(function()
                Root.Position = BasePart.Parent.PrimaryPart.Position
            end)
            task.wait(1)
            Connection:Disconnect()
            Flinging = false
        elseif BasePart.Parent.Parent:FindFirstAncestorOfClass("Humanoid") and BasePart.Parent.Parent.Name ~= Player.Name and Attacking and not Flinging then
            Flinging = true
            local Connection = game:GetService("RunService").Heartbeat:Connect(function()
                Root.Position = BasePart.Parent.Parent.PrimaryPart.Position
            end)
            task.wait(1)
            Connection:Disconnect()
            Flinging = false
        end
    end)
end

function Methods:ChangeHatName(OGName, NewName)
    Character[OGName].Name = NewName
end

function Methods:OnKeyPress(Key, Main)
   Mouse.KeyDown:Connect(function(Pressed)
        if string.lower(Key) == Pressed then
             Main()    
        end
    end)   
end

function Methods:Wait(Time)
    task.wait(Time)    
end

function Methods:SystemMessage(Text)
    game.StarterGui:SetCore( "ChatMakeSystemMessage",  { Text = Text, Color = Color3.fromRGB(43,98,255), Font = Enum.Font.Ubuntu} )
end

Methods:SystemMessage("Current Version: "..Version)

function Methods:RemoveMesh(HatName)
    local success, failed = pcall(function()
        getgenv().CloneRig[HatName].Handle:FindFirstChildOfClass("SpecialMesh"):Destroy()
	getgenv().RealRig[HatName].Handle:FindFirstChildOfClass("SpecialMesh"):Destroy()
    end)
    if success then
        print("Successfully destroyed "..HatName.." mesh!")
    else
        warn("Failed to destroy "..HatName..". This may have happened because the mesh is already destroyed, or your avatar type is R15.")
    end
end

local Global = getgenv()
Global.Dancing = true

function Methods:SetScriptCreator(Name)
    PASettings.ScriptCreator = Name    
end

function Methods:RunScript()
	
function LoadIntro()
	game:GetService("ContentProvider"):PreloadAsync({"http://www.roblox.com/asset/?id=8955607825"})
	
	task.wait()
	local ScreenGui = Instance.new("ScreenGui")
	local ImageLabel = Instance.new("ImageLabel")
	local TextLabel = Instance.new("TextLabel")
	local Blur = Instance.new("BlurEffect")
	Blur.Size = 0
	Blur.Parent = game:GetService("Lighting")
	ScreenGui.Parent = game:GetService("CoreGui")
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	
	local Sound0 = Instance.new("Sound")
	local Sound1 = Instance.new("Sound")
	local Sound2 = Instance.new("Sound")
	Sound0.Name = "Swish Suck Reversed Metallic Swoosh Impact 2 (SFX)"
	Sound0.Parent = workspace
	Sound0.SoundId = "rbxassetid://9119707271"
	Sound0.Volume = 10
	Sound1.Name = "Swoosh"
	Sound1.Parent = workspace
	Sound1.SoundId = "rbxassetid://9125527144"
	Sound1.Volume = 10
	Sound2.Name = "Typewriter 4 (SFX)"
	Sound2.Parent = workspace
	Sound2.SoundId = "rbxassetid://9113880610"
	Sound2.Volume = 10
	
	ImageLabel.Parent = ScreenGui
	ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.BackgroundTransparency = 1.000
	ImageLabel.Position = UDim2.new(0.5, 0, 1.5, 0)
	ImageLabel.Size = UDim2.new(0, 300, 0, 300)
	ImageLabel.Image = "http://www.roblox.com/asset/?id=8955607825"

	TextLabel.Parent = ScreenGui
	TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Position = UDim2.new(0.5, 0, 0.699999988, 0)
	TextLabel.Size = UDim2.new(0, 200, 0, 50)
	TextLabel.Font = Enum.Font.Ubuntu
	TextLabel.Text = ""
	TextLabel.TextColor3 = Color3.fromRGB(43, 97, 191)
	TextLabel.TextSize = 52.000
	TextLabel.TextStrokeColor3 = Color3.fromRGB(21, 23, 30)
	TextLabel.TextStrokeTransparency = .500
	
	local BlurIn = game:GetService("TweenService"):Create(Blur, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0), {Size = 56})
	BlurIn:Play()
	workspace.Swoosh:Play()
	ImageLabel:TweenPosition(UDim2.new(0.5, 0, 0.5, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Back, 1)
	
	task.wait(1.25)
	
	local function Type(Text, Object)
		for letter,_ in string.gmatch(Text, ".") do
			workspace["Typewriter 4 (SFX)"]:Play()
			Object.Text = Object.Text..letter
			task.wait(.05)
		end
	end
	BlurIn:Pause()
	Type("Credits:\nScript created using Pendulum Animator.\nScript created by "..PASettings.ScriptCreator..".", TextLabel)
	task.wait(1)
	workspace["Swish Suck Reversed Metallic Swoosh Impact 2 (SFX)"]:Play()
	
	local function TweenTransparency(Object, Time, PropertyTable)
		game:GetService("TweenService"):Create(Object, TweenInfo.new(Time, Enum.EasingStyle.Exponential, Enum.EasingDirection.InOut), PropertyTable):Play()
	end
	
	TweenTransparency(TextLabel, workspace["Swish Suck Reversed Metallic Swoosh Impact 2 (SFX)"].TimeLength, {TextTransparency = 1, TextStrokeTransparency = 1})
	TweenTransparency(ImageLabel, workspace["Swish Suck Reversed Metallic Swoosh Impact 2 (SFX)"].TimeLength, {ImageTransparency = 1})
	game:GetService("TweenService"):Create(Blur, TweenInfo.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.InOut, 0), {Size = 0}):Play()
	task.wait(2)
	print("Intro done.")
end
LoadIntro()

if PASettings.Teleportation.Enabled then
    Mouse.KeyDown:Connect(function(Key)
        if Key == string.lower(PASettings.Teleportation.Key) and not Attacking then
            Character:MoveTo(Mouse.Hit.Position)
        end
    end)
end

Mouse.KeyDown:Connect(function(Key)
    if not Sprinting and PASettings.Animations.SprintAnimation.SprintingEnabled and tostring(string.byte(Key)) == "52" then
        Sprinting = true
        Humanoid.WalkSpeed = PASettings.Animations.SprintAnimation.SprintSpeed
    end
end)

Mouse.KeyUp:Connect(function(Key)
    if Sprinting and PASettings.Animations.SprintAnimation.SprintingEnabled and tostring(string.byte(Key)) == "52" then
        Sprinting = false
        Humanoid.WalkSpeed = PASettings.WalkSpeed
    end
end)

task.spawn(
    function()
        while task.wait() do
            if Humanoid.MoveDirection.X == 0 and not Attacking or Humanoid.MoveDirection.Z == 0 and not Attacking then -- MoveDirection is much more efficent.
                CurrentType = "Idle"
            elseif not Attacking and Sprinting and not Attacking then
                CurrentType = "Sprinting"
            elseif not Attacking and not Sprinting and not Attacking then
                CurrentType = "Running"
            elseif Attacking then
                CurrentType = "Attacking"
            end
        end
    end
)

local function PAError(Message)
    error("PA error: \n" .. Message)
end


local function PlayAnimation(ID, FrameSpeed, TweenSpeed, Type)
    
    local number = ID

    if Global.Dancing == true then
        Global.Dancing = false
    end

    local aaa = "rbxassetid://" .. number

    local NeededAssets = game:GetObjects(aaa)[1]
    local TweenService = game:GetService "TweenService"
    if game.Players.LocalPlayer.Character.Humanoid:FindFirstChild("Animator") then
        game.Players.LocalPlayer.Character.Humanoid.Animator:Destroy()
    end
    if game.Players.LocalPlayer.Character:FindFirstChild("Animate") then
        game.Players.LocalPlayer.Character:FindFirstChild("Animate"):Destroy()
    end
    local Joints = {
        ["Torso"] = game.Players.LocalPlayer.Character.HumanoidRootPart["RootJoint"],
        ["Right Arm"] = game.Players.LocalPlayer.Character.Torso["Right Shoulder"],
        ["Left Arm"] = game.Players.LocalPlayer.Character.Torso["Left Shoulder"],
        ["Head"] = game.Players.LocalPlayer.Character.Torso["Neck"],
        ["Left Leg"] = game.Players.LocalPlayer.Character.Torso["Left Hip"],
        ["Right Leg"] = game.Players.LocalPlayer.Character.Torso["Right Hip"],
        ["RootJoint"] = game.Players.LocalPlayer.Character.HumanoidRootPart["RootJoint"]
    }
    
    for _, v in pairs(PASettings.HatsBeingAnimated) do
        Joints[string.split(v, "\\\\")[1]] = Character[string.split(v, "\\\\")[1]].Handle.Motor6D
    end
    
    Global.dancing = true
    local speed = 1
    local keyframes = NeededAssets:GetKeyframes()
    for ii, frame in ipairs(keyframes) do
        if CurrentType ~= Type then
            print("breaking")
            break
        end
        local duration = keyframes[ii + 1] and keyframes[ii + 1].Time - frame.Time or task.wait(1 / 120)
        if keyframes[ii - 1] then
            task.wait(1 / FrameSpeed)
        end

        if TweenSpeed == nil or TweenSpeed == 0 then
            TweenSpeed = .1
        end
        
        if FrameSpeed == nil or FrameSpeed == 0 then
            TweenSpeed = 120
        end
        
        for i, v in ipairs(frame:GetDescendants()) do
            if Joints[v.Name] then
                if CurrentType ~= Type then
                    print("breaking")
                    break
                else
                    TweenService:Create(Joints[v.Name], TweenInfo.new(TweenSpeed), {Transform = v.CFrame}):Play()
                end
            end
        end
    end
end

	
for _,v in pairs(PASettings.Animations.Attacks.OneKeyAttack) do
    if type(v) == "table" then
        print("Found attack")
        local Attack = v
        warn(Attack.Key)
        Mouse.KeyDown:Connect(function(Key)
            if string.lower(Key) == string.lower(Attack.Key) and not Attacking then
                print("Attacking")
                local CanSprint
                if PASettings.Animations.SprintAnimation.SprintingEnabled then
                    CanSprint = true
                    PASettings.Animations.SprintAnimation.SprintingEnabled = false
                end
                
                Humanoid.WalkSpeed = Attack.AttackWalkSpeed
                Attacking = true
                task.wait()
                PlayAnimation(Attack.AnimationID, Attack.FrameSpeed, Attack.TweenSpeed, "Attacking")
                Attacking = false
                
                if CanSprint then
                    PASettings.Animations.SprintAnimation.SprintingEnabled = true
                end
                Humanoid.WalkSpeed = PASettings.WalkSpeed
            end
        end)
    else
        continue
    end
end

for _, v in pairs(PASettings.HatsBeingAnimated) do
    local Handle = Character[string.split(v, "\\\\")[1]].Handle
    Handle:BreakJoints()
    local Controller = Instance.new("Motor6D")
    Controller.Parent = Handle
    Controller.Part1 = Handle
    Controller.Part0 = Character[string.split(v, "\\\\")[2]]
end



function Methods:PlayAnimation(ID, TweenSpeed, Speed)
    if not Attacking then
        local CanSprint
    if PASettings.Animations.SprintAnimation.SprintingEnabled then
        CanSprint = true
        PASettings.Animations.SprintAnimation.SprintingEnabled = false
    end
    
    Humanoid.WalkSpeed = Speed
    Attacking = true
    task.wait()
    PlayAnimation(ID, math.huge, TweenSpeed, "Attacking")
    Attacking = false
    
    if CanSprint then
        PASettings.Animations.SprintAnimation.SprintingEnabled = true
    end
    Humanoid.WalkSpeed = PASettings.WalkSpeed
    end
end


Methods:SystemMessage("PENDULUM ANIMATOR: Script Hash is "..script:GetHash())
Methods:SystemMessage("PENDULUM ANIMATOR: Script finished loading!")
while task.wait() do
    if CurrentType == "Idle" and Humanoid.Health >= 0 and not Attacking then
        PlayAnimation(PASettings.Animations.IdleAnimation.AnimationID, PASettings.Animations.IdleAnimation.FrameSpeed, PASettings.Animations.IdleAnimation.TweenSpeed, "Idle")
    elseif CurrentType == "Sprinting" and Humanoid.Health >= 0 and Sprinting and not Attacking then
        PlayAnimation(PASettings.Animations.SprintAnimation.AnimationID, PASettings.Animations.SprintAnimation.FrameSpeed, PASettings.Animations.SprintAnimation.TweenSpeed, "Sprinting")
    elseif CurrentType == "Running" and Humanoid.Health >= 0 and not Attacking then
        PlayAnimation(PASettings.Animations.WalkAnimation.AnimationID, PASettings.Animations.WalkAnimation.FrameSpeed, PASettings.Animations.WalkAnimation.TweenSpeed, "Running")
 
    end
end
end
return Methods
