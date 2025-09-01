--// Serviços
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

--// Criar GUI
local ScreenGui = Instance.new("ScreenGui", LocalPlayer:WaitForChild("PlayerGui"))
ScreenGui.Name = "SCP_HipHeight"

local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Size = UDim2.new(0, 230, 0, 120)
MainFrame.Position = UDim2.new(0.35, 0, 0.3, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.BackgroundTransparency = 0.1

-- Título
local Title = Instance.new("TextLabel", MainFrame)
Title.Size = UDim2.new(1, 0, 0, 35)
Title.Text = "⚡ SCP-173 HipHeight"
Title.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 18

-- Botão Toggle
local Button = Instance.new("TextButton", MainFrame)
Button.Size = UDim2.new(1, -20, 0, 50)
Button.Position = UDim2.new(0, 10, 0, 50)
Button.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.Font = Enum.Font.GothamBold
Button.TextSize = 18
Button.Text = "Ativar HipHeight 99"
Button.AutoButtonColor = true

--// Variável de controle
local ativo = false

--// Função para aplicar HipHeight
local function setHipHeight(valor)
    local scp = workspace:FindFirstChild("SCP-173")
    if scp and scp:FindFirstChild("Humanoid") then
        scp.Humanoid.HipHeight = valor
    end
end

--// Botão de toggle
Button.MouseButton1Click:Connect(function()
    ativo = not ativo
    if ativo then
        Button.Text = "Desativar HipHeight"
        Button.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
        setHipHeight(99)
    else
        Button.Text = "Ativar HipHeight 99"
        Button.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
        setHipHeight(0) -- valor normal
    end
end)
