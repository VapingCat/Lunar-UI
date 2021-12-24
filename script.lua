if getgenv().LunarCortex then
	getgenv().LunarCortex()
end

local Inviter = loadstring(game:HttpGet('https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Discord%20Inviter/Source.lua'))()

local function Dragify(Frame, dragSpeed)
	local dragToggle, dragInput, dragStart, dragPos, startPos
	local dragSpeed = dragSpeed or 0.15

	local function updateInput(input)
		local Delta = input.Position - dragStart
		local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
		
		game:GetService("TweenService"):Create(Frame, TweenInfo.new(dragSpeed), {Position = Position}):Play()
	end

	Frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
			dragToggle = true
			dragStart = input.Position
			startPos = Frame.Position
			input.Changed:Connect(function()
				if (input.UserInputState == Enum.UserInputState.End) then
					dragToggle = false
				end
			end)
		end
	end)

	Frame.InputChanged:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			dragInput = input
		end
	end)

	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if (input == dragInput and dragToggle) then
			updateInput(input)
		end
	end)
end

local LunarCortex = Instance.new("ScreenGui")
local Container = Instance.new("Frame")
local W = Instance.new("TextLabel")
local S = Instance.new("TextLabel")
local D = Instance.new("TextLabel")
local Space = Instance.new("TextLabel")
local MouseButton2 = Instance.new("Frame")
local Label = Instance.new("TextLabel")
local CPS = Instance.new("TextLabel")
local MouseButton1 = Instance.new("Frame")
local Label_2 = Instance.new("TextLabel")
local CPS_2 = Instance.new("TextLabel")
local A = Instance.new("TextLabel")

Container.Name = "Keystrokes"
Container.Parent = LunarCortex
Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Container.BackgroundTransparency = 1.000
Container.BorderSizePixel = 0
Container.Position = UDim2.new(0.347826093, 0, 0.327669889, 0)
Container.Size = UDim2.new(0, 102, 0, 145)
Container.Visible = false

W.Name = "W"
W.Parent = Container
W.AnchorPoint = Vector2.new(0.5, 0)
W.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
W.BackgroundTransparency = 0.300
W.BorderSizePixel = 0
W.Position = UDim2.new(0.5, 0, 0, 0)
W.Size = UDim2.new(0, 30, 0, 30)
W.Font = Enum.Font.GothamBold
W.Text = "W"
W.TextColor3 = Color3.fromRGB(255, 92, 225)
W.TextSize = 14.000

S.Name = "S"
S.Parent = Container
S.AnchorPoint = Vector2.new(0.5, 0)
S.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
S.BackgroundTransparency = 0.300
S.BorderSizePixel = 0
S.Position = UDim2.new(0.5, 0, 0, 33)
S.Size = UDim2.new(0, 30, 0, 30)
S.Font = Enum.Font.GothamBold
S.Text = "S"
S.TextColor3 = Color3.fromRGB(255, 92, 225)
S.TextSize = 14.000

D.Name = "D"
D.Parent = Container
D.AnchorPoint = Vector2.new(1, 0)
D.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
D.BackgroundTransparency = 0.300
D.BorderSizePixel = 0
D.Position = UDim2.new(1, -2, 0, 33)
D.Size = UDim2.new(0, 30, 0, 30)
D.Font = Enum.Font.GothamBold
D.Text = "D"
D.TextColor3 = Color3.fromRGB(255, 92, 225)
D.TextSize = 14.000

Space.Name = "Space"
Space.Parent = Container
Space.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
Space.BackgroundTransparency = 0.300
Space.BorderSizePixel = 0
Space.Position = UDim2.new(0, 2, 0, 99)
Space.Size = UDim2.new(0, 98, 0, 20)
Space.Font = Enum.Font.GothamBold
Space.Text = "─"
Space.TextColor3 = Color3.fromRGB(255, 92, 225)
Space.TextSize = 30.000

MouseButton2.Name = "MouseButton2"
MouseButton2.Parent = Container
MouseButton2.AnchorPoint = Vector2.new(1, 0)
MouseButton2.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
MouseButton2.BackgroundTransparency = 0.300
MouseButton2.BorderSizePixel = 0
MouseButton2.Position = UDim2.new(1, -2, 0, 66)
MouseButton2.Size = UDim2.new(0, 47, 0, 30)

Label.Name = "Label"
Label.Parent = MouseButton2
Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label.BackgroundTransparency = 1.000
Label.Size = UDim2.new(0, 47, 0, 18)
Label.Font = Enum.Font.GothamBold
Label.Text = "RMB"
Label.TextColor3 = Color3.fromRGB(255, 92, 225)
Label.TextSize = 13.000

CPS.Name = "CPS"
CPS.Parent = MouseButton2
CPS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CPS.BackgroundTransparency = 1.000
CPS.Position = UDim2.new(0, 0, 0.400000006, 0)
CPS.Size = UDim2.new(0, 47, 0, 18)
CPS.Font = Enum.Font.GothamSemibold
CPS.Text = "0 CPS"
CPS.TextColor3 = Color3.fromRGB(226, 226, 226)
CPS.TextSize = 11.000
CPS.TextWrapped = true

MouseButton1.Name = "MouseButton1"
MouseButton1.Parent = Container
MouseButton1.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
MouseButton1.BackgroundTransparency = 0.300
MouseButton1.BorderSizePixel = 0
MouseButton1.Position = UDim2.new(0, 2, 0, 66)
MouseButton1.Size = UDim2.new(0, 47, 0, 30)

Label_2.Name = "Label"
Label_2.Parent = MouseButton1
Label_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label_2.BackgroundTransparency = 1.000
Label_2.Size = UDim2.new(0, 47, 0, 18)
Label_2.Font = Enum.Font.GothamBold
Label_2.Text = "LMB"
Label_2.TextColor3 = Color3.fromRGB(255, 92, 225)
Label_2.TextSize = 13.000

CPS_2.Name = "CPS"
CPS_2.Parent = MouseButton1
CPS_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CPS_2.BackgroundTransparency = 1.000
CPS_2.Position = UDim2.new(0, 0, 0.400000006, 0)
CPS_2.Size = UDim2.new(0, 47, 0, 18)
CPS_2.Font = Enum.Font.GothamSemibold
CPS_2.Text = "0 CPS"
CPS_2.TextColor3 = Color3.fromRGB(226, 226, 226)
CPS_2.TextSize = 11.000
CPS_2.TextWrapped = true

A.Name = "A"
A.Parent = Container
A.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
A.BackgroundTransparency = 0.300
A.BorderSizePixel = 0
A.Position = UDim2.new(0, 2, 0, 33)
A.Size = UDim2.new(0, 30, 0, 30)
A.Font = Enum.Font.GothamBold
A.Text = "A"
A.TextColor3 = Color3.fromRGB(255, 92, 225)
A.TextSize = 14.000

local UserInputService = game:GetService('UserInputService')

function lerp(start, goal, alpha)
	return start + (goal - start) * alpha
end

local tweens = {}

function tween(object, property, value)
	local TweenService = game:GetService("TweenService")
	
	for index,tween in pairs(tweens) do
		if index == object.Name then
			tween.Tween:Cancel()
			TweenService:Create(tween.Tween.Instance, TweenInfo.new(0), tween.Goal)
		end
	end

	local tweenInfo = TweenInfo.new(
		0.3
	)

	local tween = TweenService:Create(object, tweenInfo, {[property] = value})
	
	tweens[object.Name] = {Tween = tween, Goal = {[property] = value}}
	
	tween:Play()
	wait(10)
	tween:Cancel()
end

UserInputService.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.W then
		tween(W,'BackgroundColor3',Color3.fromRGB(200,200,200))
	elseif input.KeyCode == Enum.KeyCode.A then
		tween(A,'BackgroundColor3',Color3.fromRGB(200,200,200))
	elseif input.KeyCode == Enum.KeyCode.S then
		tween(S,'BackgroundColor3',Color3.fromRGB(200,200,200))
	elseif input.KeyCode == Enum.KeyCode.D then
		tween(D,'BackgroundColor3',Color3.fromRGB(200,200,200))
	elseif input.KeyCode == Enum.KeyCode.Space then
		tween(Space,'BackgroundColor3',Color3.fromRGB(200,200,200))
	elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
		tween(MouseButton1,'BackgroundColor3',Color3.fromRGB(200,200,200))
	elseif input.UserInputType == Enum.UserInputType.MouseButton2 then
		tween(MouseButton2,'BackgroundColor3',Color3.fromRGB(200,200,200))
	end
end)

UserInputService.InputEnded:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.W then
		tween(W,'BackgroundColor3',Color3.fromRGB(33,33,33))
	elseif input.KeyCode == Enum.KeyCode.A then
		tween(A,'BackgroundColor3',Color3.fromRGB(33,33,33))
	elseif input.KeyCode == Enum.KeyCode.S then
		tween(S,'BackgroundColor3',Color3.fromRGB(33,33,33))
	elseif input.KeyCode == Enum.KeyCode.D then
		tween(D,'BackgroundColor3',Color3.fromRGB(33,33,33))
	elseif input.KeyCode == Enum.KeyCode.Space then
		tween(Space,'BackgroundColor3',Color3.fromRGB(33,33,33))
	elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
		tween(MouseButton1,'BackgroundColor3',Color3.fromRGB(33,33,33))
	elseif input.UserInputType == Enum.UserInputType.MouseButton2 then
		tween(MouseButton2,'BackgroundColor3',Color3.fromRGB(33,33,33))
	end
end)

local cps = {
	['lmb'] = 0,
	['rmb'] = 0
}

game.Players.LocalPlayer:GetMouse().Button1Down:Connect(function()
	cps.lmb = cps.lmb + 1
	MouseButton1.CPS.Text = tostring(cps.lmb)..' CPS'
	
	wait(1)
	
	cps.lmb = cps.lmb - 1
	MouseButton1.CPS.Text = tostring(cps.lmb)..' CPS'
end)

game.Players.LocalPlayer:GetMouse().Button2Down:Connect(function()
	cps.rmb = cps.rmb + 1
	MouseButton2.CPS.Text = tostring(cps.rmb)..' CPS'

	wait(1)
	
	cps.rmb = cps.rmb - 1
	MouseButton2.CPS.Text = tostring(cps.rmb)..' CPS'
end)

Dragify(Container)

local BorderContainer = Instance.new("Frame")
local MainContainer = Instance.new("Frame")
local TopSection = Instance.new("Frame")
local Tabs = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local MainTab = Instance.new("TextButton")
local Selection = Instance.new("Frame")
local VisualsTab = Instance.new("TextButton")
local Selection_2 = Instance.new("Frame")
local Logo = Instance.new("Frame")
local ImageLabel = Instance.new("ImageButton")
local Container = Instance.new("Frame")
local UIPadding = Instance.new("UIPadding")
local Main = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout_2 = Instance.new("UIListLayout")
local Section = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIPadding_2 = Instance.new("UIPadding")
local Title = Instance.new("TextLabel")
local Description = Instance.new("TextLabel")
local Button = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Switch = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local UIPadding_3 = Instance.new("UIPadding")
local Visuals = Instance.new("Frame")
local ScrollingFrame_2 = Instance.new("ScrollingFrame")
local UIListLayout_3 = Instance.new("UIListLayout")
local UIPadding_5 = Instance.new("UIPadding")
local UICorner_7 = Instance.new("UICorner")

local Stats = Instance.new("Frame")
local UIListLayout_4 = Instance.new("UIListLayout")
local FPS = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Ping = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")

LunarCortex.Name = "LunarCortex"
LunarCortex.Parent = game:GetService('CoreGui')
LunarCortex.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

BorderContainer.Name = "BorderContainer"
BorderContainer.Parent = LunarCortex
BorderContainer.BackgroundColor3 = Color3.fromRGB(255, 92, 225)
BorderContainer.BorderSizePixel = 0
BorderContainer.Position = UDim2.new(0.5, 0, 0.5, 0)
BorderContainer.Size = UDim2.new(0, 258, 0, 193)
BorderContainer.AnchorPoint = Vector2.new(0.5, 0.5)

Dragify(BorderContainer)

MainContainer.Name = "MainContainer"
MainContainer.Parent = BorderContainer
MainContainer.AnchorPoint = Vector2.new(0.5, 0.5)
MainContainer.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
MainContainer.BorderSizePixel = 0
MainContainer.Position = UDim2.new(0.5, 0, 0.5, 0)
MainContainer.Size = UDim2.new(1, -2, 1, -2)

TopSection.Name = "TopSection"
TopSection.Parent = MainContainer
TopSection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TopSection.BackgroundTransparency = 1.000
TopSection.Size = UDim2.new(1, 0, 0, 30)

Tabs.Name = "Tabs"
Tabs.Parent = TopSection
Tabs.AnchorPoint = Vector2.new(1, 0)
Tabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Tabs.BackgroundTransparency = 1.000
Tabs.Position = UDim2.new(1, -10, 0, 0)
Tabs.Size = UDim2.new(1, -60, 1, 0)

UIListLayout.Parent = Tabs
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout.Padding = UDim.new(0, 5)

MainTab.Name = "MainTab"
MainTab.Parent = Tabs
MainTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainTab.BackgroundTransparency = 1.000
MainTab.Size = UDim2.new(0, 75, 0, 25)
MainTab.AutoButtonColor = false
MainTab.Font = Enum.Font.GothamSemibold
MainTab.Text = "Main"
MainTab.TextColor3 = Color3.fromRGB(255, 255, 255)
MainTab.TextSize = 14.000

Selection.Name = "Selection"
Selection.Parent = MainTab
Selection.AnchorPoint = Vector2.new(0.5, 1)
Selection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Selection.BorderSizePixel = 0
Selection.Position = UDim2.new(0.5, 0, 1, 0)
Selection.Size = UDim2.new(1, 0, 0, 1)

VisualsTab.Name = "VisualsTab"
VisualsTab.Parent = Tabs
VisualsTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VisualsTab.BackgroundTransparency = 1.000
VisualsTab.Size = UDim2.new(0, 75, 0, 25)
VisualsTab.AutoButtonColor = false
VisualsTab.Font = Enum.Font.GothamSemibold
VisualsTab.Text = "Visuals"
VisualsTab.TextColor3 = Color3.fromRGB(255, 255, 255)
VisualsTab.TextSize = 14.000

Selection_2.Name = "Selection"
Selection_2.Parent = VisualsTab
Selection_2.AnchorPoint = Vector2.new(0.5, 1)
Selection_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Selection_2.BorderSizePixel = 0
Selection_2.Position = UDim2.new(0.5, 0, 1, 0)
Selection_2.Size = UDim2.new(0, 0, 0, 1)

Logo.Name = "Logo"
Logo.Parent = TopSection
Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo.BackgroundTransparency = 1.000
Logo.Position = UDim2.new(0, 10, 0, 0)
Logo.Size = UDim2.new(0, 30, 0, 30)

ImageLabel.Parent = Logo
ImageLabel.Name = 'ImageLabel'
ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
ImageLabel.Size = UDim2.new(1, -10, 1, -10)
ImageLabel.Image = "http://www.roblox.com/asset/?id=7219714288"

ImageLabel.MouseButton1Down:Connect(function()
	Inviter.Prompt({invite = 'YNC3u8jCt5'})
end)

Container.Name = "Container"
Container.Parent = MainContainer
Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Container.BackgroundTransparency = 1.000
Container.BorderSizePixel = 0
Container.Position = UDim2.new(0, 0, 0, 30)
Container.Size = UDim2.new(1, 0, 1, -30)

UIPadding.Parent = Container
UIPadding.PaddingBottom = UDim.new(0, 5)
UIPadding.PaddingLeft = UDim.new(0, 5)
UIPadding.PaddingRight = UDim.new(0, 5)

Main.Name = "Main"
Main.Parent = Container
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BackgroundTransparency = 1.000
Main.BorderSizePixel = 0
Main.Size = UDim2.new(1, 0, 1, 0)

ScrollingFrame.Parent = Main
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Size = UDim2.new(1, 0, 1, 0)
ScrollingFrame.ScrollBarThickness = 3

UIListLayout_2.Parent = ScrollingFrame
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 5)

Section.Name = "Section"
Section.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
Section.BorderSizePixel = 0
Section.Size = UDim2.new(1, 0, 0, 50)

UICorner.Parent = Section

UIPadding_2.Parent = Section
UIPadding_2.PaddingBottom = UDim.new(0, 5)
UIPadding_2.PaddingLeft = UDim.new(0, 5)
UIPadding_2.PaddingRight = UDim.new(0, 5)
UIPadding_2.PaddingTop = UDim.new(0, 5)

Title.Name = "Title"
Title.Parent = Section
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Size = UDim2.new(1, 0, 0.5, 0)
Title.Font = Enum.Font.GothamSemibold
Title.Text = "FPS Unlocker"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 14.000
Title.TextXAlignment = Enum.TextXAlignment.Left

Description.Name = "Description"
Description.Parent = Section
Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Description.BackgroundTransparency = 1.000
Description.Position = UDim2.new(0, 0, 0.5, 0)
Description.Size = UDim2.new(1, 0, 0.5, 0)
Description.Font = Enum.Font.GothamSemibold
Description.Text = "Unlocks your FPS"
Description.TextColor3 = Color3.fromRGB(182, 182, 182)
Description.TextSize = 13.000
Description.TextXAlignment = Enum.TextXAlignment.Left
Description.TextYAlignment = Enum.TextYAlignment.Top

Button.Name = "Button"
Button.Parent = Section
Button.Active = false
Button.AnchorPoint = Vector2.new(1, 1)
Button.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Button.BorderSizePixel = 0
Button.Position = UDim2.new(1, 0, 1, 0)
Button.Selectable = false
Button.Size = UDim2.new(0, 40, 0, 20)
Button.AutoButtonColor = false
Button.Text = ""

UICorner_2.CornerRadius = UDim.new(1, 0)
UICorner_2.Parent = Button

Switch.Name = "Switch"
Switch.Parent = Button
Switch.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Switch.BorderSizePixel = 0
Switch.Size = UDim2.new(0, 20, 0, 20)

UICorner_3.CornerRadius = UDim.new(1, 0)
UICorner_3.Parent = Switch

UIPadding_3.Parent = ScrollingFrame
UIPadding_3.PaddingRight = UDim.new(0, 5)

Visuals.Name = "Main"
Visuals.Parent = Container
Visuals.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Visuals.BackgroundTransparency = 1.000
Visuals.BorderSizePixel = 0
Visuals.Size = UDim2.new(1, 0, 1, 0)
Visuals.Visible = false

ScrollingFrame_2.Parent = Visuals
ScrollingFrame_2.Active = true
ScrollingFrame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame_2.BackgroundTransparency = 1.000
ScrollingFrame_2.BorderSizePixel = 0
ScrollingFrame_2.Size = UDim2.new(1, 0, 1, 0)
ScrollingFrame_2.ScrollBarThickness = 3

UIListLayout_3.Parent = ScrollingFrame_2
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_3.Padding = UDim.new(0, 5)

UIPadding_5.Parent = ScrollingFrame_2
UIPadding_5.PaddingRight = UDim.new(0, 5)

UICorner_7.CornerRadius = UDim.new(0, 0)
UICorner_7.Parent = BorderContainer

Stats.Name = "Stats"
Stats.Parent = LunarCortex
Stats.AnchorPoint = Vector2.new(0, 1)
Stats.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Stats.BackgroundTransparency = 1.000
Stats.Position = UDim2.new(0, 5, 1, -100)
Stats.Size = UDim2.new(0, 100, 0, 100)

UIListLayout_4.Parent = Stats
UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_4.VerticalAlignment = Enum.VerticalAlignment.Bottom
UIListLayout_4.Padding = UDim.new(0, 5)

FPS.Name = "FPS"
FPS.Parent = Stats
FPS.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
FPS.BorderColor3 = Color3.fromRGB(255, 92, 225)
FPS.LayoutOrder = 1
FPS.Size = UDim2.new(0, 75, 0, 20)
FPS.Visible = false

TextLabel.Parent = FPS
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0, 10, 0, 0)
TextLabel.Size = UDim2.new(1, -10, 1, 0)
TextLabel.Font = Enum.Font.GothamSemibold
TextLabel.Text = "FPS: 60"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

Ping.Name = "Ping"
Ping.Parent = Stats
Ping.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Ping.BorderColor3 = Color3.fromRGB(255, 92, 225)
Ping.LayoutOrder = 2
Ping.Size = UDim2.new(0, 75, 0, 20)
Ping.Visible = false

TextLabel_2.Parent = Ping
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0, 10, 0, 0)
TextLabel_2.Size = UDim2.new(1, -10, 1, 0)
TextLabel_2.Font = Enum.Font.GothamSemibold
TextLabel_2.Text = "Ping: 100"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 14.000
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

local TweenService = game:GetService('TweenService')
local TextService = game:GetService('TextService')
local RunService = game:GetService('RunService')
local Lighting = game:GetService('Lighting')
local StatsService = game:GetService('Stats')

local SavedTextures, SavedMaterials = {}, {}

for _,v in pairs(workspace:GetDescendants()) do
	if v:IsA('Texture') then
		table.insert(SavedTextures, {
			Object = v,
			Parent = v.Parent
		})	
	elseif v:IsA('BasePart') then
		table.insert(SavedMaterials, {
			Object = v,
			Material = v.Material
		})
	end
end

local function ToggleTextures(value)
	if value then
		for _,v in pairs(SavedTextures) do
			v.Object.Parent = v.Parent
		end
	else
		for _,v in pairs(SavedTextures) do
			v.Object.Parent = Lighting
		end
	end
end

local function ToggleMaterials(value)
	if value then
		for _,v in pairs(SavedMaterials) do
			v.Object.Material = v.Material
		end
	else
		for _,v in pairs(SavedMaterials) do
			v.Object.Material = Enum.Material.SmoothPlastic
		end
	end
end

local Saved = {}
local SavedZoom

for _,v in pairs({'Ambient', 'Brightness', 'ColorShift_Bottom', 'ColorShift_Top', 'EnvironmentDiffuseScale', 'EnvironmentSpecularScale', 'OutdoorAmbient', 'ShadowSoftness', 'GeographicLatitude', 'ExposureCompensation'}) do
	Saved[v] = Lighting[v]
end

local Bloom = Instance.new("BloomEffect", Lighting)
Bloom.Enabled = false
Bloom.Intensity = 0.04
Bloom.Size = 1900
Bloom.Threshold = 0.915

local ColorCorrection = Instance.new("ColorCorrectionEffect", Lighting)
ColorCorrection.Enabled = false
ColorCorrection.Brightness = 0.176
ColorCorrection.Contrast = 0.39
ColorCorrection.Saturation = 0.2
ColorCorrection.TintColor = Color3.fromRGB(210, 210, 215)

local DepthOfField = Instance.new("DepthOfFieldEffect", Lighting)
DepthOfField.Enabled = false
DepthOfField.FarIntensity = 0.077
DepthOfField.FocusDistance = 21.54
DepthOfField.InFocusRadius = 20.77
DepthOfField.NearIntensity = 0.277

local SunRays = Instance.new("SunRaysEffect", Lighting)
SunRays.Enabled = false
SunRays.Intensity = 0.01
SunRays.Spread = 0.146

local function RTXOn()
	Lighting.Ambient = Color3.fromRGB(33, 33, 33)
	Lighting.Brightness = 6.67
	Lighting.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
	Lighting.ColorShift_Top = Color3.fromRGB(255, 247, 237)
	Lighting.EnvironmentDiffuseScale = 0.105
	Lighting.EnvironmentSpecularScale = 0.522
	Lighting.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
	Lighting.ShadowSoftness = 0.04
	Lighting.GeographicLatitude = -15.525
	Lighting.ExposureCompensation = 0.75

	Bloom.Enabled = true
	ColorCorrection.Enabled = true
	DepthOfField.Enabled = true
	SunRays.Enabled = true
end

local function RTXOff()
	for p,v in pairs(Saved) do
		Lighting[p] = v
	end

	Bloom.Enabled = false
	ColorCorrection.Enabled = false
	DepthOfField.Enabled = false
	SunRays.Enabled = false
end

local Transparencies = {}

local MainToggles, VisualToggles = {}, {}

local Loaded, FPS, Ping = false, 0, 0

local function AddMainToggle(data)
	table.insert(MainToggles, data)
end

local function AddVisualToggle(data)
	table.insert(VisualToggles, data)
end

local Loop = RunService.RenderStepped:Connect(function()
	FPS = FPS + 1
	
	Ping = math.floor(StatsService.PerformanceStats.Ping:GetValue() + 0.5)
	
	Stats.FPS.TextLabel.Text = 'FPS: '..FPS
	Stats.Ping.TextLabel.Text = 'Ping: '..Ping
	
	local Size = TextService:GetTextSize(Stats.FPS.TextLabel.Text, 14, Enum.Font.GothamSemibold, Vector2.new()).X + 20
	Stats.FPS.Size = UDim2.new(0, Size, 0, 20)

	local Size = TextService:GetTextSize(Stats.Ping.TextLabel.Text, 14, Enum.Font.GothamSemibold, Vector2.new()).X + 20
	Stats.Ping.Size = UDim2.new(0, Size, 0, 20)
	
	wait(1)
	FPS = FPS - 1
end)

-- Main Toggles

AddMainToggle({
	['Title'] = 'FPS Unlocker',
	['Description'] = 'Unlocks client FPS.',
	['Toggle'] = {
		['Start'] = function() 
			return setfpscap(1e6) 
		end,
		['Stop'] = function() 
			return setfpscap(60) 
		end
	}
})

AddMainToggle({
	['Title'] = 'No Textures',
	['Description'] = 'Removes client textures.',
	['Toggle'] = {
		['Start'] = function() 
			ToggleTextures(false)
		end,
		['Stop'] = function() 
			ToggleTextures(true)
		end
	}
})

AddMainToggle({
	['Title'] = 'No Materials',
	['Description'] = 'Removes client materials.',
	['Toggle'] = {
		['Start'] = function() 
			ToggleMaterials(false)
		end,
		['Stop'] = function() 
			ToggleMaterials(true)
		end
	}
})

AddMainToggle({
	['Title'] = 'Fullbright',
	['Description'] = 'Brighter visuals.',
	['Toggle'] = {
		['Start'] = function() 
			Lighting.GlobalShadows = false	
		end,
		['Stop'] = function()
			Lighting.GlobalShadows = true
		end
	}
})

AddMainToggle({
	['Title'] = 'Infinite Zoom',
	['Description'] = 'Allows futher zooming.',
	['Toggle'] = {
		['Start'] = function() 
			SavedZoom = game:GetService('Players').LocalPlayer.CameraMaxZoomDistance
			game:GetService('Players').LocalPlayer.CameraMaxZoomDistance = math.huge
		end,
		['Stop'] = function()
			game:GetService('Players').LocalPlayer.CameraMaxZoomDistance = SavedZoom
		end
	}
})

AddMainToggle({
	['Title'] = 'RTX Graphics',
	['Description'] = 'Better lighting.',
	['Toggle'] = {
		['Start'] = function() 
			RTXOn()	
		end,
		['Stop'] = function() 
			RTXOff()
		end
	}
})

-- Visual Toggles

AddVisualToggle({
	['Title'] = 'FPS Display',
	['Description'] = 'Shows client FPS.',
	['Toggle'] = {
		['Start'] = function() 
			Stats.FPS.Visible = true
		end,
		['Stop'] = function() 
			Stats.FPS.Visible = false
		end
	}
})

AddVisualToggle({
	['Title'] = 'Ping Display',
	['Description'] = 'Shows client ping.',
	['Toggle'] = {
		['Start'] = function() 
			Stats.Ping.Visible = true
		end,
		['Stop'] = function() 
			Stats.Ping.Visible = false
		end
	}
})

AddVisualToggle({
	['Title'] = 'Keystrokes',
	['Description'] = 'Shows user input.',
	['Toggle'] = {
		['Start'] = function() 
			LunarCortex.Keystrokes.Visible = true
		end,
		['Stop'] = function() 
			LunarCortex.Keystrokes.Visible = false
		end
	}
})

AddVisualToggle({
	['Title'] = 'UI Translucency',
	['Description'] = 'Makes translucent UI.',
	['Toggle'] = {
		['Start'] = function() 
			BorderContainer.BackgroundTransparency = 0.9
			Stats.FPS.BackgroundTransparency = 0.4
			Stats.Ping.BackgroundTransparency = 0.4
			
			for _,Object in pairs(Transparencies) do
				for Property,Value in pairs(Object.Properties) do
					Object.Object[Property] = Value + 0.3
				end
			end
		end,
		['Stop'] = function()
			BorderContainer.BackgroundTransparency = 0
			Stats.FPS.BackgroundTransparency = 0
			Stats.Ping.BackgroundTransparency = 0
			
			for _,Object in pairs(Transparencies) do
				for Property,Value in pairs(Object.Properties) do
					Object.Object[Property] = Value
				end
			end	
		end
	}
})

for _,Data in pairs(MainToggles) do
	local Clone = Section:Clone()
	Clone.Title.Text = Data.Title
	Clone.Description.Text = Data.Description
	Clone.Parent = Main.ScrollingFrame

	Data.Value = false

	Clone.Button.MouseButton1Down:Connect(function()
		if Loaded then
			Data.Value = not Data.Value

			if Data.Value then
				pcall(coroutine.wrap(Data.Toggle.Start))

				local Info = TweenInfo.new(0.5)

				local Goal = {}
				Goal.AnchorPoint = Vector2.new(1,0)
				Goal.Position = UDim2.new(1,0,0,0)

				TweenService:Create(Clone.Button.Switch, Info, Goal):Play()

				local Goal = {}
				Goal.BackgroundColor3 = Color3.fromRGB(255, 92, 225)

				TweenService:Create(Clone.Button, Info, Goal):Play()
			else
				pcall(coroutine.wrap(Data.Toggle.Stop))
				local Info = TweenInfo.new(0.5)

				local Goal = {}
				Goal.AnchorPoint = Vector2.new(0,0)
				Goal.Position = UDim2.new(0,0,0,0)

				TweenService:Create(Clone.Button.Switch, Info, Goal):Play()

				local Goal = {}
				Goal.BackgroundColor3 = Color3.fromRGB(22, 22, 22)

				TweenService:Create(Clone.Button, Info, Goal):Play()
			end
		end
	end)
end

for _,Data in pairs(VisualToggles) do
	local Clone = Section:Clone()
	Clone.Title.Text = Data.Title
	Clone.Description.Text = Data.Description
	Clone.Parent = Visuals.ScrollingFrame

	Data.Value = false

	Clone.Button.MouseButton1Down:Connect(function()
		if Loaded then
			Data.Value = not Data.Value

			if Data.Value then
				pcall(coroutine.wrap(Data.Toggle.Start))

				local Info = TweenInfo.new(0.5)

				local Goal = {}
				Goal.AnchorPoint = Vector2.new(1,0)
				Goal.Position = UDim2.new(1,0,0,0)

				TweenService:Create(Clone.Button.Switch, Info, Goal):Play()

				local Goal = {}
				Goal.BackgroundColor3 = Color3.fromRGB(255, 92, 225)

				TweenService:Create(Clone.Button, Info, Goal):Play()
			else
				pcall(coroutine.wrap(Data.Toggle.Stop))
				local Info = TweenInfo.new(0.5)

				local Goal = {}
				Goal.AnchorPoint = Vector2.new(0,0)
				Goal.Position = UDim2.new(0,0,0,0)

				TweenService:Create(Clone.Button.Switch, Info, Goal):Play()

				local Goal = {}
				Goal.BackgroundColor3 = Color3.fromRGB(22, 22, 22)

				TweenService:Create(Clone.Button, Info, Goal):Play()
			end
		end
	end)
end

Main.ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, Main.ScrollingFrame.UIListLayout.AbsoluteContentSize.Y)
Visuals.ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, Visuals.ScrollingFrame.UIListLayout.AbsoluteContentSize.Y)

MainTab.MouseButton1Down:Connect(function()
	Main.Visible = true
	Visuals.Visible = false
	
	local Info = TweenInfo.new(0.5)

	local Goal = {}
	Goal.Size = UDim2.new(1, 0, 0, 1)

	TweenService:Create(MainTab.Selection, Info, Goal):Play()

	local Goal = {}
	Goal.Size = UDim2.new(0, 0, 0, 1)

	TweenService:Create(VisualsTab.Selection, Info, Goal):Play()
end)

VisualsTab.MouseButton1Down:Connect(function()
	Visuals.Visible = true
	Main.Visible = false
	
	local Info = TweenInfo.new(0.5)

	local Goal = {}
	Goal.Size = UDim2.new(1, 0, 0, 1)

	TweenService:Create(VisualsTab.Selection, Info, Goal):Play()

	local Goal = {}
	Goal.Size = UDim2.new(0, 0, 0, 1)

	TweenService:Create(MainTab.Selection, Info, Goal):Play()
end)

Logo.ImageLabel.MouseEnter:Connect(function()
	local Info = TweenInfo.new(0.2)

	local Goal = {}
	Goal.ImageColor3 = Color3.fromRGB(255, 162, 225)

	TweenService:Create(Logo.ImageLabel, Info, Goal):Play()
end)

Logo.ImageLabel.MouseLeave:Connect(function()
	local Info = TweenInfo.new(0.2)

	local Goal = {}
	Goal.ImageColor3 = Color3.fromRGB(255, 255, 255)

	TweenService:Create(Logo.ImageLabel, Info, Goal):Play()
end)

for _,Object in pairs(BorderContainer:GetDescendants()) do
	if Object:IsA('Frame') or Object:IsA('TextLabel') or Object:IsA('TextButton') or Object:IsA('ImageLabel') or Object:IsA('ImageButton') then
		table.insert(Transparencies, {Object = Object, Properties = {
			BackgroundTransparency = Object.BackgroundTransparency
		}})
		
		Object.BackgroundTransparency = 1
	end
	if Object:IsA('TextLabel') or Object:IsA('TextButton') then
		table.insert(Transparencies, {Object = Object, Properties = {
			TextTransparency = Object.TextTransparency,
			TextStrokeTransparency = Object.TextStrokeTransparency
		}})
		
		Object.TextTransparency = 1
		Object.TextStrokeTransparency = 1
	end
	if Object:IsA('ImageLabel') or Object:IsA('ImageButton') then
		table.insert(Transparencies, {Object = Object, Properties = {
			ImageTransparency = Object.ImageTransparency
		}})

		Object.ImageTransparency = 1
	end
end

BorderContainer.Size = UDim2.new(0, 0, 0, 0)
BorderContainer.UICorner.CornerRadius = UDim.new(1, 0)

local Goal = {}
Goal.Size = UDim2.new(0, 258, 0, 193)

TweenService:Create(BorderContainer, TweenInfo.new(1), Goal):Play()

local Goal = {}
Goal.CornerRadius = UDim.new(0, 0)

TweenService:Create(BorderContainer.UICorner, TweenInfo.new(1), Goal):Play()

wait(1)

for _,Object in pairs(Transparencies) do
	TweenService:Create(Object.Object, TweenInfo.new(0.5), Object.Properties):Play()
end

wait(0.5)

Loaded = true

getgenv().LunarCortex = function()
	Loop:Disconnect()
	LunarCortex:Destroy()

	Bloom:Destroy()
	ColorCorrection:Destroy()
	DepthOfField:Destroy()
	SunRays:Destroy()
	
	ToggleMaterials(true)
	ToggleTextures(true)
end
