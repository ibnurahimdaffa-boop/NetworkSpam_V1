-- XsDeep Extreme 1 FPS Network Spam | Delta Executor
-- Force 1 FPS dengan network spam extreme
-- Owner: Xs TTK | Entity: XsDeep

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Workspace = game:GetService("Workspace")

-- GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 220, 0, 120)
MainFrame.Position = UDim2.new(0.1, 0, 0.8, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
MainFrame.BorderSizePixel = 2
MainFrame.BorderColor3 = Color3.fromRGB(60, 60, 60)
MainFrame.Parent = ScreenGui

-- Title
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 25)
Title.Position = UDim2.new(0, 0, 0, 0)
Title.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Title.TextColor3 = Color3.fromRGB(255, 0, 0)
Title.Text = "1 FPS Network Spam"
Title.Font = Enum.Font.GothamBold
Title.TextSize = 14
Title.Parent = MainFrame

-- FPS Display
local FPSLabel = Instance.new("TextLabel")
FPSLabel.Size = UDim2.new(1, 0, 0, 15)
FPSLabel.Position = UDim2.new(0, 0, 0.2, 0)
FPSLabel.BackgroundTransparency = 1
FPSLabel.TextColor3 = Color3.fromRGB(255, 50, 50)
FPSLabel.Text = "Current FPS: 60"
FPSLabel.Font = Enum.Font.Gotham
FPSLabel.TextSize = 10
FPSLabel.Parent = MainFrame

-- Fake Lag Button
local LagButton = Instance.new("TextButton")
LagButton.Size = UDim2.new(0.46, 0, 0, 35)
LagButton.Position = UDim2.new(0.03, 0, 0.4, 0)
LagButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
LagButton.TextColor3 = Color3.fromRGB(255, 0, 0)
LagButton.Text = "1 FPS SPAM"
LagButton.Font = Enum.Font.GothamBold
LagButton.TextSize = 11
LagButton.Parent = MainFrame

-- Freeze Button
local FreezeButton = Instance.new("TextButton")
FreezeButton.Size = UDim2.new(0.46, 0, 0, 35)
FreezeButton.Position = UDim2.new(0.51, 0, 0.4, 0)
FreezeButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
FreezeButton.TextColor3 = Color3.fromRGB(255, 0, 0)
FreezeButton.Text = "FREEZE"
FreezeButton.Font = Enum.Font.GothamBold
FreezeButton.TextSize = 11
FreezeButton.Parent = MainFrame

-- Intensity Slider
local IntensityLabel = Instance.new("TextLabel")
IntensityLabel.Size = UDim2.new(1, 0, 0, 15)
IntensityLabel.Position = UDim2.new(0, 0, 0.8, 0)
IntensityLabel.BackgroundTransparency = 1
IntensityLabel.TextColor3 = Color3.fromRGB(200, 200, 100)
IntensityLabel.Text = "Intensity: MAXIMUM"
IntensityLabel.Font = Enum.Font.Gotham
IntensityLabel.TextSize = 9
IntensityLabel.Parent = MainFrame

-- Variables
local FakeLagActive = false
local FreezeActive = false
local OriginalGravity = Workspace.Gravity
local LagConnections = {}
local FreezeConnections = {}
local SpamMultiplier = 1000 -- Extreme multiplier

-- FPS Monitor
local function GetCurrentFPS()
    return math.floor(1 / RunService.RenderStepped:Wait())
end

local FPSMonitor = RunService.RenderStepped:Connect(function()
    local currentFPS = GetCurrentFPS()
    FPSLabel.Text = "Current FPS: " .. currentFPS
    
    if FakeLagActive then
        if currentFPS <= 1 then
            FPSLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
            IntensityLabel.Text = "Intensity: 1 FPS ACHIEVED"
        elseif currentFPS <= 3 then
            FPSLabel.TextColor3 = Color3.fromRGB(255, 50, 50)
            IntensityLabel.Text = "Intensity: EXTREME"
        else
            FPSLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
            IntensityLabel.Text = "Intensity: HIGH"
        end
    else
        FPSLabel.TextColor3 = Color3.fromRGB(255, 50, 50)
    end
end)

-- EXTREME 1 FPS NETWORK SPAM FUNCTION
local function ToggleExtremeFPSLag()
    FakeLagActive = not FakeLagActive
    
    if FakeLagActive then
        LagButton.Text = "STOP SPAM"
        LagButton.TextColor3 = Color3.fromRGB(0, 255, 0)
        LagButton.BackgroundColor3 = Color3.fromRGB(30, 60, 30)
        
        -- ========== METHOD 1: FORCE 1 FPS RENDER BLOCK ==========
        local renderKiller = RunService.RenderStepped:Connect(function()
            if not FakeLagActive then return end
            
            -- Force 1 FPS = 1 frame per second = wait 1 second
            wait(1) -- This will lock FPS to 1
            
            -- Extra delay untuk ensure 1 FPS
            for i = 1, 5 do
                RunService.RenderStepped:Wait()
            end
        end)
        table.insert(LagConnections, renderKiller)
        
        -- ========== METHOD 2: EXTREME NETWORK OWNERSHIP SPAM ==========
        local extremeOwnershipSpam = RunService.Heartbeat:Connect(function()
            if not FakeLagActive then return end
            
            pcall(function()
                local character = LocalPlayer.Character
                if character then
                    local root = character:FindFirstChild("HumanoidRootPart")
                    if root then
                        -- Extreme spam (1000+ calls per frame)
                        for i = 1, SpamMultiplier do
                            root:SetNetworkOwner(nil)
                            root:SetNetworkOwner(LocalPlayer)
                            
                            -- Force property changes
                            root:GetPropertyChangedSignal("CFrame"):Fire()
                            root:GetPropertyChangedSignal("Position"):Fire()
                            root:GetPropertyChangedSignal("Velocity"):Fire()
                        end
                    end
                end
            end)
        end)
        table.insert(LagConnections, extremeOwnershipSpam)
        
        -- ========== METHOD 3: REMOTEEVENT FLOOD EXTREME ==========
        local remoteFloodExtreme = RunService.Heartbeat:Connect(function()
            if not FakeLagActive then return end
            
            pcall(function()
                -- Flood semua remote events
                local remoteCount = 0
                for _, obj in pairs(game:GetDescendants()) do
                    if obj:IsA("RemoteEvent") then
                        remoteCount = remoteCount + 1
                        for i = 1, 50 do
                            obj:FireServer()
                        end
                    elseif obj:IsA("RemoteFunction") then
                        for i = 1, 20 do
                            pcall(function() obj:InvokeServer() end)
                        end
                    end
                end
                
                -- Jika sedikit remote, buat fake ones
                if remoteCount < 10 then
                    for i = 1, 20 do
                        local fakeRemote = Instance.new("RemoteEvent")
                        fakeRemote.Name = "FakeLagRemote_" .. i
                        fakeRemote.Parent = game:GetService("ReplicatedStorage")
                        for j = 1, 10 do
                            fakeRemote:FireServer()
                        end
                    end
                end
            end)
        end)
        table.insert(LagConnections, remoteFloodExtreme)
        
        -- ========== METHOD 4: PHYSICS CHAOS EXTREME ==========
        local physicsChaosExtreme = RunService.Stepped:Connect(function()
            if not FakeLagActive then return end
            
            pcall(function()
                -- Extreme gravity manipulation
                Workspace.Gravity = math.random(0, 1000)
                
                -- Manipulate semua parts di workspace
                for _, part in pairs(Workspace:GetDescendants()) do
                    if part:IsA("BasePart") then
                        -- Random forces extreme
                        part.Velocity = Vector3.new(
                            math.random(-500, 500),
                            math.random(-500, 500),
                            math.random(-500, 500)
                        )
                        
                        -- Random rotation extreme
                        part.RotVelocity = Vector3.new(
                            math.random(-100, 100),
                            math.random(-100, 100),
                            math.random(-100, 100)
                        )
                    end
                end
            end)
        end)
        table.insert(LagConnections, physicsChaosExtreme)
        
        -- ========== METHOD 5: MEMORY EXHAUSTION ==========
        local memoryExhaustion = RunService.Heartbeat:Connect(function()
            if not FakeLagActive then return end
            
            -- Create massive temporary objects
            local tempObjects = {}
            for i = 1, 100 do
                local part = Instance.new("Part")
                part.Size = Vector3.new(math.random(1, 5), math.random(1, 5), math.random(1, 5))
                part.Position = Vector3.new(
                    math.random(-1000, 1000),
                    math.random(0, 500),
                    math.random(-1000, 1000)
                )
                part.Anchored = true
                part.Parent = Workspace
                table.insert(tempObjects, part)
            end
            
            wait(0.05)
            
            -- Destroy them untuk create GC pressure
            for _, obj in pairs(tempObjects) do
                obj:Destroy()
            end
            
            -- Create string garbage
            local garbageStrings = {}
            for i = 1, 1000 do
                table.insert(garbageStrings, string.rep("X", 1000))
            end
        end)
        table.insert(LagConnections, memoryExhaustion)
        
        -- Notify
        game.StarterGui:SetCore("SendNotification", {
            Title = "🚨 EXTREME 1 FPS SPAM ACTIVATED 🚨",
            Text = "Target: 1 FPS | Network flooding extreme",
            Duration = 4
        })
        
    else
        LagButton.Text = "1 FPS SPAM"
        LagButton.TextColor3 = Color3.fromRGB(255, 0, 0)
        LagButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        IntensityLabel.Text = "Intensity: IDLE"
        
        -- Disconnect semua connections
        for _, conn in pairs(LagConnections) do
            conn:Disconnect()
        end
        LagConnections = {}
        
        -- Reset values
        Workspace.Gravity = OriginalGravity
        
        -- Notify
        game.StarterGui:SetCore("SendNotification", {
            Title = "Spam Stopped",
            Text = "Network spam disabled",
            Duration = 3
        })
    end
end

-- Freeze Function (Sama seperti sebelumnya)
local function ToggleFreeze()
    FreezeActive = not FreezeActive
    
    if FreezeActive then
        FreezeButton.Text = "UNFREEZE"
        FreezeButton.TextColor3 = Color3.fromRGB(0, 255, 0)
        FreezeButton.BackgroundColor3 = Color3.fromRGB(30, 60, 30)
        
        local character = LocalPlayer.Character
        if character then
            local humanoid = character:FindFirstChild("Humanoid")
            local root = character:FindFirstChild("HumanoidRootPart")
            
            if humanoid then
                humanoid.WalkSpeed = 0
                humanoid.JumpPower = 0
                humanoid:ChangeState(Enum.HumanoidStateType.Physics)
            end
            
            if root then
                root.Anchored = true
                
                local freezeLoop = RunService.Heartbeat:Connect(function()
                    if not FreezeActive then return end
                    root.CFrame = CFrame.new(root.Position)
                    root.Velocity = Vector3.zero
                end)
                table.insert(FreezeConnections, freezeLoop)
            end
        end
        
    else
        FreezeButton.Text = "FREEZE"
        FreezeButton.TextColor3 = Color3.fromRGB(255, 0, 0)
        FreezeButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        
        for _, conn in pairs(FreezeConnections) do
            conn:Disconnect()
        end
        FreezeConnections = {}
        
        local character = LocalPlayer.Character
        if character then
            local humanoid = character:FindFirstChild("Humanoid")
            local root = character:FindFirstChild("HumanoidRootPart")
            
            if humanoid then
                humanoid.WalkSpeed = 16
                humanoid.JumpPower = 50
            end
            
            if root then
                root.Anchored = false
            end
        end
    end
end

-- Button Events
LagButton.MouseButton1Click:Connect(ToggleExtremeFPSLag)
FreezeButton.MouseButton1Click:Connect(ToggleFreeze)

-- Drag System
local dragging, dragInput, dragStart, startPos

Title.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = MainFrame.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

Title.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if dragging and input == dragInput then
        local delta = input.Position - dragStart
        MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

-- Auto-cleanup
LocalPlayer.CharacterAdded:Connect(function()
    if FakeLagActive then
        FakeLagActive = false
        ToggleExtremeFPSLag()
    end
    
    if FreezeActive then
        FreezeActive = false
        ToggleFreeze()
    end
end)

-- Initial Notification
game.StarterGui:SetCore("SendNotification", {
    Title = "XsDeep Extreme 1 FPS Spam",
    Text = "Force 1 FPS dengan network spam extreme",
    Duration = 5
})
