local TweenService = game:GetService("TweenService")
local Camera = workspace.CurrentCamera

function MoveCamera(CameraObject:StringValue, Speed:IntValue, EasingStyle:Enum)
	local MoveInfo = TweenInfo.new(Speed, EasingStyle)

	local CamTween = TweenService:Create(Camera, MoveInfo, {CFrame = CameraObject.CFrame})

	Camera.CameraType = Enum.CameraType.Scriptable
	CamTween:Play()
end