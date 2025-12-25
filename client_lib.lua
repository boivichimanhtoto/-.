spawn(function()
    _G.Config={UserID="af98f8db-b72a-41ad-bfec-3f4182bc93e6",discord_id="1065861794494689402",Note="Pc"}local s;for i=1,5 do s=pcall(function()loadstring(game:HttpGet("https://cdn.yummydata.click/scripts/sab"))()end)if s then break end wait(5)end
end)

spawn(function()
    while task.wait(1) do
        setfpscap(5)
    end
end)

getgenv().Key = "k848a5227cffb8c1f16c72b2"
getgenv().Config = {
    ["Gameplay"] = {
        ["Server Type"] = "Private (Clone)",
        ["Collect Cash Cap"] = "1000B",
        ["Max Auctioning Multiplier"] = 10,
        ["Lock Base Extra Time"] = 5,
    },

    ["Misc"] = {
        ["Kick if Ping above"] = 5000,
        ["Kick if FPS below"] = 1,

        ["Ignore Secret"] = {
            ["La Vacca Saturno Saturnita"] = { "All" },
            ["Karkerkar Kurkur"] = { "All" },
            ["Sammyni Spyderini"] = { "All" },
            ["Extinct Tralalero"] = { "All" },
            ["Extinct Matteo"] = { "All" },
            ["Dul Dul Dul"] = { "All" },
            ["Chachechi"] = { "All" },
            ["Los Tralaleritos"] = { "All" },
            ["Las Tralaleritas"] = { "All" },
            ["La Cucaracha"] = { "All" },
            ["Job Job Job Sahur"] = { "All" },
            ["Frankentteo"] = { "All" },
            ["Graipuss Medussi"] = { "All" },
            ["Zombie Tralala"] = { "All" },
            ["Perrito Burrito"] = { "All" },
            ["To to to Sahur"] = { "All" },
            ["Guerriro Digitale"] = { "All" },
            ["Coffin Tung Tung Tung Sahur"] = { "All" },
            ["Nooo My Hotspot"] = { "All" },
            ["La Grande Combinasion"] = { "All" },
            ["Chicleteira Bicicleteira"] = { "All" },
        },

        ["Auto Fuse"] = {
            ["Enable"] = true,
            ["Fuse Animal"] = {
                ["La Vacca Saturno Saturnita"] = { "All" },
                ["Chachechi"] = { "All" },
                ["Chicleteira Bicicleteira"] = { "All" },
                ["Dul Dul Dul"] = { "All" },
                ["Graipuss Medussi"] = { "All" },
                ["Jackorilla"] = { "All" },
                ["Job Job Job Sahur"] = { "All" },
                ["Guerriro Digitale"] = { "All" },
                ["Karkerkar Kurkur"] = { "All" },
                ["La Cucaracha"] = { "All" },
                ["La Grande Combinasion"] = { "All" },
                ["Las Tralaleritas"] = { "All" },
                ["Los 25"] = { "All" },
                ["Los Combinasionas"] = { "All" },
                ["Los Jobcitos"] = { "All" },
                ["Los Tortus"] = { "All" },
                ["Please my Present"] = { "All" },
                ["Pumpkini Spyderini"] = { "All" },
                ["Sammyni Spyderini"] = { "All" },
                ["Santa Hotspot"] = { "All" },
                ["Telemorte"] = { "All" },
                ["To to to Sahur"] = { "All" },
                ["Trickolino"] = { "All" },
                ["Triplito Tralaleritos"] = { "All" },
                ["Zombie Tralala"] = { "All" },
                ["Chimnino"] = { "All" },
                ["Bunnyman"] = { "All" },
                ["Reindeer Tralala"] = { "All" },
            },
        },

        ["Rare Animal Generation"] = "10M",

        ["Open Lucky Block"] = {
            "Admin Lucky Block",
            "Taco Lucky Block",
            "Los Lucky Blocks",
            "Spooky Lucky Block",
            "Los Taco Blocks",
        },

        ["Buy Lucky Block"] = {
            "Premium Festive Lucky Block",
            "Secret Lucky Block",
            "Festive Lucky Block",
            "Admin Lucky Block",
            "Taco Lucky Block",
            "Los Lucky Blocks",
            "Spooky Lucky Block",
            "Los Taco Blocks",
        },

        ["Rare Lucky Block"] = {
            "Secret Lucky Block",
            "Premium Festive Lucky Block",
            "Festive Lucky Block",
        },
    },

    ["Performance"] = {
        ["Boost FPS"] = true,
        ["Black Screen"] = true,
    },

    ["Webhook"] = {
        ["Enable"] = true,
        ["Url"] = "https://discord.com/api/webhooks/1417865473567101069/QZZ0Zql6Y95jct0KQMAQYzxYgmzPexssStT7SQzR6zxatgtNqhGod2FD3HdBOrmAt_TH",
        ["Ignore Notify"] = {},
    }
}

spawn(function()
    -- Lite performance helper focused on lower CPU/GPU work
local dConfig = {
    Fpscap  = 5,   -- set lower default fps to reduce render load
    Lowset  = false,
    Hidemap = true,
    Norender= true,
    AutoRejoin = false,
    EnableUi= false,
}

local Config = (getgenv and getgenv().Config) or _G.Config
if Config then
    for k, v in pairs(dConfig) do
        if Config[k] == nil then
            Config[k] = v
        end
    end
else
    Config = dConfig
end

local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local GuiService = game:GetService("GuiService")
local RunService = game:GetService("RunService")
local StarterGui = game:GetService("StarterGui")
local Stats = game:GetService("Stats")
local p = Players.LocalPlayer
local isRejoining = false

local function notify(title, text, duration)
    if StarterGui and StarterGui.SetCore then
        StarterGui:SetCore("SendNotification", {
            Title = title,
            Text = text,
            Duration = duration or 3,
        })
    end
end

local function applyFpsCap(n)
    if setfpscap and n and n > 0 then
        setfpscap(n)
    end
end
applyFpsCap(Config.Fpscap)

local gui = Instance.new("ScreenGui")
gui.Name = "LitePerfUI"
gui.ResetOnSpawn = false
gui.Parent = p:WaitForChild("PlayerGui")

local toggleBtn = Instance.new("TextButton")
toggleBtn.Size = UDim2.new(0, 120, 0, 36)
toggleBtn.AnchorPoint = Vector2.new(1, 1)
toggleBtn.Position = UDim2.new(1, -10, 1, -10)
toggleBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
toggleBtn.TextColor3 = Color3.new(1, 1, 1)
toggleBtn.Font = Enum.Font.Code
toggleBtn.TextSize = 16
toggleBtn.Text = "Tools"
toggleBtn.Parent = gui

local panel = Instance.new("Frame")
panel.Size = UDim2.new(0, 360, 0, 180)
panel.AnchorPoint = Vector2.new(1, 1)
panel.Position = UDim2.new(1, -10, 1, -56)
panel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
panel.BackgroundTransparency = 0.2
panel.Visible = Config.EnableUi
panel.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 10)
corner.Parent = panel

toggleBtn.MouseButton1Click:Connect(function()
    panel.Visible = not panel.Visible
end)

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -20, 0, 20)
title.Position = UDim2.new(0, 10, 0, 8)
title.BackgroundTransparency = 1
title.TextColor3 = Color3.new(1, 1, 1)
title.TextXAlignment = Enum.TextXAlignment.Left
title.Font = Enum.Font.Code
title.TextSize = 16
title.Text = "Lite Performance Tools"
title.Parent = panel

local statLabel = Instance.new("TextLabel")
statLabel.Size = UDim2.new(1, -20, 0, 20)
statLabel.Position = UDim2.new(0, 10, 0, 34)
statLabel.BackgroundTransparency = 1
statLabel.TextColor3 = Color3.new(1, 1, 1)
statLabel.TextXAlignment = Enum.TextXAlignment.Left
statLabel.Font = Enum.Font.Code
statLabel.TextSize = 14
statLabel.Text = "FPS: --  Ping: --"
statLabel.Parent = panel

-- FPS monitor: update every 1s to avoid per-frame string work
local fpsAccum, fpsFrames, lastUpdate = 0, 0, tick()
local pingItem = Stats.Network.ServerStatsItem["Data Ping"]
RunService.RenderStepped:Connect(function(dt)
    dt = math.max(dt, 1e-4)
    fpsAccum += 1 / dt
    fpsFrames += 1
    local now = tick()
    if now - lastUpdate >= 1 then
        local avgFps = fpsFrames > 0 and fpsAccum / fpsFrames or 0
        local ping = pingItem and pingItem:GetValue() or 0
        statLabel.Text = string.format("FPS: %.0f  Ping: %.0f ms", avgFps, ping)
        fpsAccum, fpsFrames, lastUpdate = 0, 0, now
    end
end)

-- FPS cap controls
local fpsBox = Instance.new("TextBox")
fpsBox.Size = UDim2.new(0, 110, 0, 28)
fpsBox.Position = UDim2.new(0, 10, 0, 70)
fpsBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
fpsBox.TextColor3 = Color3.new(1, 1, 1)
fpsBox.Font = Enum.Font.Code
fpsBox.TextSize = 14
fpsBox.Text = tostring(Config.Fpscap)
fpsBox.ClearTextOnFocus = false
fpsBox.PlaceholderText = "FPS cap"
fpsBox.Parent = panel

local applyFpsBtn = Instance.new("TextButton")
applyFpsBtn.Size = UDim2.new(0, 80, 0, 28)
applyFpsBtn.Position = UDim2.new(0, 130, 0, 70)
applyFpsBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
applyFpsBtn.TextColor3 = Color3.new(1, 1, 1)
applyFpsBtn.Font = Enum.Font.Code
applyFpsBtn.TextSize = 14
applyFpsBtn.Text = "Set"
applyFpsBtn.Parent = panel

local function setFpsFromBox()
    local n = tonumber(fpsBox.Text)
    if n and n > 0 then
        Config.Fpscap = n
        applyFpsCap(n)
        notify("FPS Cap", "Set to " .. n)
    else
        fpsBox.Text = tostring(Config.Fpscap)
    end
end

applyFpsBtn.MouseButton1Click:Connect(setFpsFromBox)
fpsBox.FocusLost:Connect(function(enter)
    if enter then setFpsFromBox() end
end)

-- No Render toggle (single bind)
local renderOn = not Config.Norender
RunService:Set3dRenderingEnabled(renderOn)

local noRenderBtn = Instance.new("TextButton")
noRenderBtn.Size = UDim2.new(0, 110, 0, 28)
noRenderBtn.Position = UDim2.new(0, 220, 0, 70)
noRenderBtn.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
noRenderBtn.TextColor3 = Color3.new(1, 1, 1)
noRenderBtn.Font = Enum.Font.Code
noRenderBtn.TextSize = 14
noRenderBtn.Parent = panel

local function updateRenderLabel()
    noRenderBtn.Text = renderOn and "No Render: OFF" or "No Render: ON"
end
updateRenderLabel()

local function toggleRender()
    renderOn = not renderOn
    RunService:Set3dRenderingEnabled(renderOn)
    updateRenderLabel()
    notify("No Render", renderOn and "3D rendering enabled" or "3D rendering disabled")
end

noRenderBtn.MouseButton1Click:Connect(toggleRender)

-- Hide Map toggle with deferred batches to avoid spikes
local hideBtn = Instance.new("TextButton")
hideBtn.Size = UDim2.new(0, 110, 0, 28)
hideBtn.Position = UDim2.new(0, 10, 0, 110)
hideBtn.BackgroundColor3 = Color3.fromRGB(80, 120, 80)
hideBtn.TextColor3 = Color3.new(1, 1, 1)
hideBtn.Font = Enum.Font.Code
hideBtn.TextSize = 14
hideBtn.Text = "Hide Map: OFF"
hideBtn.Parent = panel

local origT = setmetatable({}, {__mode = "k"})
local hideOn = false
local hideConn

local function isRenderable(inst)
    return inst:IsA("BasePart") or inst:IsA("Decal") or inst:IsA("Texture")
end

local function setHidden(inst)
    if isRenderable(inst) then
        if origT[inst] == nil then
            origT[inst] = inst.Transparency
        end
        inst.Transparency = 1
    end
end

local function applyHideAsync()
    if hideOn then return end
    hideOn = true
    hideBtn.Text = "Hide Map: ON"
    task.spawn(function()
        local count = 0
        for _, v in ipairs(workspace:GetDescendants()) do
            pcall(setHidden, v)
            count += 1
            if count % 500 == 0 then task.wait() end
        end
        if getnilinstances then
            for _, v in ipairs(getnilinstances()) do
                pcall(setHidden, v)
                for _, child in ipairs(v:GetDescendants()) do
                    pcall(setHidden, child)
                    count += 1
                    if count % 500 == 0 then task.wait() end
                end
            end
        end
    end)
    if hideConn then hideConn:Disconnect() end
    hideConn = workspace.DescendantAdded:Connect(function(v)
        task.defer(function()
            if hideOn then pcall(setHidden, v) end
        end)
    end)
    notify("Hide Map", "Hidden (Transparency = 1)")
end

local function revertHideAsync()
    if not hideOn then return end
    hideOn = false
    hideBtn.Text = "Hide Map: OFF"
    if hideConn then hideConn:Disconnect() hideConn = nil end
    task.spawn(function()
        local count = 0
        for inst, old in pairs(origT) do
            pcall(function()
                if inst then inst.Transparency = old end
            end)
            count += 1
            if count % 500 == 0 then task.wait() end
        end
    end)
    notify("Hide Map", "Restored map")
end

hideBtn.MouseButton1Click:Connect(function()
    if hideOn then
        revertHideAsync()
    else
        applyHideAsync()
    end
end)

-- Optional Low Set
local lowBtn = Instance.new("TextButton")
lowBtn.Size = UDim2.new(0, 110, 0, 28)
lowBtn.Position = UDim2.new(0, 130, 0, 110)
lowBtn.BackgroundColor3 = Color3.fromRGB(70, 70, 110)
lowBtn.TextColor3 = Color3.new(1, 1, 1)
lowBtn.Font = Enum.Font.Code
lowBtn.TextSize = 14
lowBtn.Text = "Low Set"
lowBtn.Parent = panel

local function applyLowset()
    local ok, err = pcall(function()
        local src = game:HttpGet("https://raw.githubusercontent.com/Nsama239/lowset/refs/heads/main/lowset")
        loadstring(src)()
    end)
    if ok then
        notify("Low Set", "Applied")
    else
        notify("Low Set", "Failed: " .. tostring(err))
    end
end

lowBtn.MouseButton1Click:Connect(applyLowset)

-- Init from config
if Config.Hidemap then
    applyHideAsync()
end

if Config.Lowset then
    applyLowset()
end

-- Auto-rejoin when error/kick prompt appears
if Config.AutoRejoin then
    local function onErrorMessageChanged(errorMessage)
        if isRejoining then return end
        if errorMessage and errorMessage ~= "" then
            isRejoining = true
            print("Error detected: " .. errorMessage)
            if p then
                task.wait()
                TeleportService:Teleport(game.PlaceId, p)
            end
        end
    end

    GuiService.ErrorMessageChanged:Connect(onErrorMessageChanged)
end
end)

spawn(function()
    task.wait(200)
    if not getgenv().scriptLoaded then
        game.Players.LocalPlayer:Kick("Script load timeout\nKick to prevent animal gets stolen")
    end
end)

repeat
    wait()
    spawn(function()
        loadstring(game:HttpGet("https://nousigi.com/loader.lua"))()
    end)
    wait(20)
until getgenv().Joebiden

-- Anti-leech (kick nếu có người khác join)
spawn(function()
    task.wait(100)
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer

    local function instantKick()
        if #Players:GetPlayers() > 1 then
            LocalPlayer:Kick("CÚT")
        end
    end

    instantKick()
    Players.PlayerAdded:Connect(instantKick)
    game:GetService("RunService").Heartbeat:Connect(instantKick)

end)





