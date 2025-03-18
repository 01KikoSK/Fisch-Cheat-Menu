-- Create a ScreenGui to hold the menu
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "FischCheatMenu"
screenGui.Parent = game.StarterGui
screenGui.ResetOnSpawn = false -- Keep the GUI even when the character respawns

-- Create a main frame for the menu
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0.2, 0, 0.3, 0) -- Size: 20% of screen width, 30% of screen height
mainFrame.Position = UDim2.new(0.05, 0, 0.1, 0) -- Position: 5% from left, 10% from top
mainFrame.AnchorPoint = Vector2.new(0, 0) -- Anchor from the top-left
mainFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
mainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
mainFrame.BorderSizePixel = 2
mainFrame.Parent = screenGui

-- Create a title for the menu
local titleLabel = Instance.new("TextLabel")
titleLabel.Name = "TitleLabel"
titleLabel.Size = UDim2.new(1, 0, 0.2, 0) -- 100% width of the frame, 20% height
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.Text = "Fisch Cheat Menu"
titleLabel.TextScaled = true
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.Parent = mainFrame

-- Create an "Auto Catch" button (functionality would need to be exploited)
local autoCatchButton = Instance.new("TextButton")
autoCatchButton.Name = "AutoCatchButton"
autoCatchButton.Size = UDim2.new(0.9, 0, 0.15, 0) -- 90% width, 15% height
autoCatchButton.Position = UDim2.new(0.05, 0, 0.25, 0) -- Positioned below the title
autoCatchButton.Text = "Auto Catch (Not Functional)"
autoCatchButton.TextColor3 = Color3.fromRGB(255, 255, 255)
autoCatchButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
autoCatchButton.Font = Enum.Font.SourceSans
autoCatchButton.TextScaled = true
autoCatchButton.Parent = mainFrame

-- Create an "Infinite Money" button (functionality would need to be exploited)
local infiniteMoneyButton = Instance.new("TextButton")
infiniteMoneyButton.Name = "InfiniteMoneyButton"
infiniteMoneyButton.Size = UDim2.new(0.9, 0, 0.15, 0)
infiniteMoneyButton.Position = UDim2.new(0.05, 0, 0.45, 0) -- Positioned below Auto Catch
infiniteMoneyButton.Text = "Infinite C$ (Not Functional)"
infiniteMoneyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
infiniteMoneyButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
infiniteMoneyButton.Font = Enum.Font.SourceSans
infiniteMoneyButton.TextScaled = true
infiniteMoneyButton.Parent = mainFrame

-- You can add more buttons or UI elements here for other potential "cheats"

-- Make the menu toggleable with a key (e.g., the Home key)
local UserInputService = game:GetService("UserInputService")
local menuVisible = false

UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent and input.KeyCode == Enum.KeyCode.Home then
        menuVisible = not menuVisible
        screenGui.Enabled = menuVisible
    end
end)

-- Initially, the menu is disabled
screenGui.Enabled = false