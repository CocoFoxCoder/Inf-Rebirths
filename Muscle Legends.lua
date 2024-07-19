wait(0.5)
local ba = Instance.new("ScreenGui")
local ca = Instance.new("TextLabel")
local da = Instance.new("Frame")
local _b = Instance.new("TextLabel")
local ab = Instance.new("TextLabel")
local godModeButton = Instance.new("TextButton")
local infRebirthButton = Instance.new("TextButton")

ba.Parent = game.CoreGui
ba.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ca.Parent = ba
ca.Active = true
ca.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ca.BackgroundTransparency = 0.5
ca.BorderColor3 = Color3.fromRGB(1, 1, 1)
ca.BorderSizePixel = 2
ca.Draggable = true
ca.Position = UDim2.new(0.1, 0, 0.1, 0) -- Adjusted position to top-left corner
ca.Size = UDim2.new(0, 370, 0, 52)
ca.Font = Enum.Font.SourceSansSemibold
ca.Text = "Anti Afk"
ca.TextColor3 = Color3.fromRGB(255, 255, 255)
ca.TextSize = 22

da.Parent = ca
da.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
da.BackgroundTransparency = 0.5
da.BorderColor3 = Color3.fromRGB(1, 1, 1)
da.BorderSizePixel = 2
da.Position = UDim2.new(0, 0, 1, 0)
da.Size = UDim2.new(0, 370, 0, 195) -- Increased size to fit all elements

_b.Parent = da
_b.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_b.BackgroundTransparency = 0.5
_b.BorderColor3 = Color3.fromRGB(1, 1, 1)
_b.BorderSizePixel = 2
_b.Position = UDim2.new(0, 0, 0.8, 0)
_b.Size = UDim2.new(0, 370, 0, 21)
_b.Font = Enum.Font.Arial
_b.Text = "Made by luca#5432"
_b.TextColor3 = Color3.fromRGB(255, 255, 255)
_b.TextSize = 20

ab.Parent = da
ab.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ab.BackgroundTransparency = 0.5
ab.BorderColor3 = Color3.fromRGB(1, 1, 1)
ab.BorderSizePixel = 2
ab.Position = UDim2.new(0, 0, 0.15, 0)
ab.Size = UDim2.new(0, 370, 0, 44)
ab.Font = Enum.Font.ArialBold
ab.Text = "Status: Active"
ab.TextColor3 = Color3.fromRGB(255, 255, 255)
ab.TextSize = 20

godModeButton.Parent = da
godModeButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
godModeButton.BackgroundTransparency = 0.5
godModeButton.BorderColor3 = Color3.fromRGB(1, 1, 1)
godModeButton.BorderSizePixel = 2
godModeButton.Position = UDim2.new(0, 0, 0.4, 0) -- Adjusted position within the frame
godModeButton.Size = UDim2.new(0, 370, 0, 44)
godModeButton.Font = Enum.Font.ArialBold
godModeButton.Text = "God Mode"
godModeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
godModeButton.TextSize = 20

infRebirthButton.Parent = da
infRebirthButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
infRebirthButton.BackgroundTransparency = 0.5
infRebirthButton.BorderColor3 = Color3.fromRGB(1, 1, 1)
infRebirthButton.BorderSizePixel = 2
infRebirthButton.Position = UDim2.new(0, 0, 0.6, 0) -- Positioned below the God Mode button
infRebirthButton.Size = UDim2.new(0, 370, 0, 44)
infRebirthButton.Font = Enum.Font.ArialBold
infRebirthButton.Text = "Inf Rebirth"
infRebirthButton.TextColor3 = Color3.fromRGB(255, 255, 255)
infRebirthButton.TextSize = 20

local function createNotification(text)
    local notification = Instance.new("TextLabel")
    notification.Parent = ba
    notification.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    notification.BackgroundTransparency = 0.5
    notification.BorderColor3 = Color3.fromRGB(1, 1, 1)
    notification.BorderSizePixel = 2
    notification.Position = UDim2.new(0.5, -185, 0.5, -22)
    notification.Size = UDim2.new(0, 370, 0, 44)
    notification.Font = Enum.Font.ArialBold
    notification.Text = text
    notification.TextColor3 = Color3.fromRGB(255, 255, 255)
    notification.TextSize = 20
    notification.Visible = true
    wait(2)
    notification:Destroy()
end

godModeButton.MouseButton1Click:Connect(function()
    local player = game:GetService("Players").LocalPlayer
    if player and player.Character and player.Character:FindFirstChild("Humanoid") then
        player.Character.Humanoid.MaxHealth = math.huge
        player.Character.Humanoid.Health = math.huge
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Strength") then
            player.leaderstats.Strength.Value = 1e14 -- 100T
        end
        createNotification("You're now invincible!")
    end
end)

infRebirthButton.MouseButton1Click:Connect(function()
    local player = game:GetService("Players").LocalPlayer
    if player and player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Rebirths") then
        player.leaderstats.Rebirths.Value = 18980
        createNotification("Rebirths set to 18980!")
    end
end)

local bb = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
    bb:CaptureController()
    bb:ClickButton2(Vector2.new())
    ab.Text = "Roblox tried kicking you but I didn't let them!"
    wait(2)
    ab.Text = "Status: Active"
end)
