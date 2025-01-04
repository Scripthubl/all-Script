local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local ToggleUI = Instance.new("ScreenGui")
local ToggleButton = Instance.new("TextButton")
local BackgroundImage = Instance.new("ImageLabel")
local ToggleButtonHUI = Instance.new("UICorner")


ToggleUI.Name = "ToggleUI"
ToggleUI.Parent = game.CoreGui
ToggleUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling


ToggleButton.Name = "ToggleButton"
ToggleButton.Parent = ToggleUI
ToggleButton.BackgroundColor3 = Color3.fromRGB(23, 212, 224)
ToggleButton.BackgroundTransparency = 1  -- Make background transparent
ToggleButton.BorderSizePixel = 0
ToggleButton.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
ToggleButton.Size = UDim2.new(0, 50, 0, 50)
ToggleButton.Font = Enum.Font.SourceSans
ToggleButton.Text = ""  
ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.TextSize = 14.000
ToggleButton.Draggable = true


BackgroundImage.Name = "BackgroundImage"
BackgroundImage.Parent = ToggleButton
BackgroundImage.BackgroundTransparency = 1
BackgroundImage.Size = UDim2.new(1, 0, 1, 0)  -- Cover the entire ToggleButton
BackgroundImage.Image = "rbxassetid://117742570323312"  -- Update the image ID
BackgroundImage.ImageColor3 = Color3.fromRGB(255, 255, 255)  -- Set image color if needed


ToggleButtonHUI.Parent = ToggleButton
ToggleButtonHUI.CornerRadius = UDim.new(0, 10)  -- Adjust corner radius if needed


local BackgroundImageHUI = Instance.new("UICorner")
BackgroundImageHUI.CornerRadius = UDim.new(0, 10)  -- Same radius as ToggleButton
BackgroundImageHUI.Parent = BackgroundImage


ToggleButton.MouseButton1Click:Connect(function()
    
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.LeftControl, false, game)
end)

local Window = Fluent:CreateWindow({
    Title = "PNP_HUB",
    SubTitle = "Discord.gg/",
    TabWidth = 100,
    Size = UDim2.fromOffset(480, 380),
    Acrylic = false,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
    Main = Window:AddTab({ Title = "General", Icon = "rbxassetid://15712703260" }),
}

local Options = Fluent.Options

do
end

local toggleState = false

local Toggle = Tabs.Main:AddToggle("ชื่อ", {
    Title = "AutoFarm", 
    Description = "",
    Default = false,
    Callback = function(value)
        toggleState = value

        if toggleState then
            local Players = game:GetService("Players")
            local LocalPlayer = Players.LocalPlayer

            local SandFolder
            for _, child in pairs(workspace:GetChildren()) do
                if child:FindFirstChild("SandFolder") then
                    SandFolder = child.SandFolder
                    break
                end
            end

            if SandFolder then
                while toggleState do
                    for _, obj in pairs(SandFolder:GetChildren()) do
                        for _, v in pairs(obj:GetDescendants()) do
                            if v.Name == "ProximityPrompt" then
                                if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                                    LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    wait(0.5)
                                    fireproximityprompt(v)
                                end
                            end
                        end
                    end
                    wait(1) 
                end
            else
                warn("ไม่พบ SandFolder ใน workspace")
            end
        else
            print("ปุ่มถูกปิดใช้งาน")
        end
    end
})
