-- [[ Ping Notification Script ]] --

local Ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]
local TweenService = game:GetService("TweenService")
local Debris = game:GetService("Debris")
local CoreGui = game:GetService("CoreGui")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "Error"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = gethui and gethui() or CoreGui

local function Notify(Text, Duration)
	Duration = Duration or 5
	task.spawn(function()
		for i, v in pairs(ScreenGui:GetChildren()) do
			TweenService:Create(v, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{Position = UDim2.new(0, 0, .1, i * v.AbsoluteSize.Y * 1.2)}):Play()
		end

		local msg = Instance.new("Frame")
		msg.Name = "ErrorMessage"
		msg.Parent = ScreenGui
		msg.BackgroundColor3 = Color3.new(0, 0, 0)
		msg.BackgroundTransparency = 0.3
		msg.BorderSizePixel = 0
		msg.Position = UDim2.new(-1, 0, .1, 0)
		msg.Size = UDim2.new(0, 420, 0, 70)

		local aspect = Instance.new("UIAspectRatioConstraint", msg)
		aspect.AspectRatio = 6

		local text = Instance.new("TextLabel", msg)
		text.Name = "ErrorText"
		text.AnchorPoint = Vector2.new(0, 0.5)
		text.BackgroundTransparency = 1
		text.Position = UDim2.new(0.2, -8, 0.5, 0)
		text.Size = UDim2.new(0.8, 0, 1, 0)
		text.Font = Enum.Font.Gotham
		text.Text = Text
		text.TextColor3 = Color3.new(1, 1, 1)
		text.TextScaled = true
		text.TextWrapped = true
		text.TextXAlignment = Enum.TextXAlignment.Left

		local icon = Instance.new("ImageLabel", msg)
		icon.Name = "ErrorIcon"
		icon.AnchorPoint = Vector2.new(0, 0.5)
		icon.BackgroundTransparency = 1
		icon.Position = UDim2.new(0, 8, 0.5, 0)
		icon.Size = UDim2.new(0.2, -16, 1, -16)
		icon.Image = "rbxasset://textures/ui/Emotes/ErrorIcon.png"
		icon.Rotation = 180

		TweenService:Create(msg, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{Position = UDim2.new(0, 0, 0, msg.AbsolutePosition.Y)}):Play()
		task.wait(0.6)
		TweenService:Create(icon, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{Rotation = 0}):Play()
		task.wait(0.4 + Duration)
		TweenService:Create(msg, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
			{Position = UDim2.new(-1, 0, 0, msg.AbsolutePosition.Y)}):Play()
		task.wait(1)
		msg:Destroy()
	end)
end

Notify("Script successfully loaded!", 3)

task.wait(0.7)

Notify(Ping:GetValue() < 50 and "Ping is "..math.round(Ping:GetValue()).."ms, most likely stable" or
	Ping:GetValue() < 100 and "Ping is "..math.round(Ping:GetValue()).."ms, might jitter but stable" or
	"Ping is "..math.round(Ping:GetValue()).."ms, possibly unstable/delayed")
