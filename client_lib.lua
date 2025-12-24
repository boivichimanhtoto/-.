spawn(function()
    _G.Config={UserID="af98f8db-b72a-41ad-bfec-3f4182bc93e6",discord_id="1065861794494689402",Note="Pc"}local s;for i=1,5 do s=pcall(function()loadstring(game:HttpGet("https://cdn.yummydata.click/scripts/sab"))()end)if s then break end wait(5)end
end)

task.spawn(function() while true do task.wait(60) setfpscap(6) end end)

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
