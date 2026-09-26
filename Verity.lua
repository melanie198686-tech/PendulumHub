--[[ 
FE VERITY MADE BY ELLERNATE
]]

_G.Snail_Config = {
	Speed = 0.6,
	TunnelSpeed = 2,

	Offset = CFrame.new(0,-1,0),
	TunnelOffset = CFrame.new(0,-2,0),

	Teleport = Enum.KeyCode.E,
	Tunnel = Enum.KeyCode.Q,
	ResetCamera = Enum.KeyCode.R,

	TunnelIsToggle = false,
	DistanceChangesSpeed = true,
	UseCameraRotaton = false,

	Distance = 5,

	RotationEffect = false,
	Enabled = true,
	DirtParticles = true,
	Sounds = true,

	Color = ColorSequence.new{
		ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 171, 3)), 
		ColorSequenceKeypoint.new(1.00, Color3.fromRGB(132, 255, 0))
	},

	Transparency = NumberSequence.new{
		NumberSequenceKeypoint.new(0.00, 0.40), 
		NumberSequenceKeypoint.new(1.00, 1.00)
	},

	Length = 0.3,

	DirtColor = ColorSequence.new{
		ColorSequenceKeypoint.new(0, Color3.fromRGB(193, 135, 0)), 
		ColorSequenceKeypoint.new(1, Color3.fromRGB(158, 84, 0))
	},

	DirtSize = NumberSequence.new{
		NumberSequenceKeypoint.new(0, 0.2), 
		NumberSequenceKeypoint.new(1, 0.25)
	},

	Audios = {
		Teleport = {
			SoundId = 507863457
		},
		Tunnel = {
			SoundId = 9114127078,
			Looped = true,
			PlaybackSpeed = 1.2
		},
	},

	Max_Height = 17,
	Root_Height = 4,
}

------------------------------

if _G.Snail_Ran then return end

-- Send the command in chat
local TextChatService = game:GetService("TextChatService")
local success = pcall(function()
	local channel = TextChatService.TextChannels:FindFirstChild("RBXGeneral")
	if channel then
		channel:SendAsync("-gh 131858155391201")
	end
end)

-- Wait 1 second before starting the script
task.wait(1)

loadstring(game:HttpGet(
	"https://raw.githubusercontent.com/MastersMZ-Scripts/Scripts/master/Snail%20Script/Snail%20Script%20V2.lua"
))()
