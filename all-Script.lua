--แกะไปเช็คก็เรืาองของมึงไม่มีดักไม่มีwebhooksหรอแกะไปเช็คก็ไม่เจอเพราะกูไม่ได้ใส่😉พวกเช็คโง่จัดคิดว่ากูจะดัก

local mapIDs = {4503309821, 16732694052, 6220960770, 9876543210}

local function loadScript(url)
    local success, result = pcall(function()
        return loadstring(game:HttpGet(url))()
    end)
    if not success then
        warn("ไม่สามารถโหลดสคริปต์ได้:", result)
        game.Players.LocalPlayer:Kick("ยังไม่ได้ทำสคริปแมพนี้คนสร้างนอนอ้วนอยู่")
    end
end

if table.find(mapIDs, game.PlaceId) then
    if game.PlaceId == 4503309821 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Scripthubl/all-Script/refs/heads/main/%E0%B8%AB%E0%B8%A5%E0%B8%AD%E0%B8%94%E0%B8%AD%E0%B8%B2%E0%B8%AB%E0%B8%B2%E0%B8%A3.lua"))()
    elseif game.PlaceId == 16732694052 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Scripthubl/all-Script/refs/heads/main/Fisch.lua"))()
    elseif game.PlaceId == 6220960770 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Scripthubl/all-Script/refs/heads/main/%E0%B9%82%E0%B8%A5%E0%B8%81%E0%B9%83%E0%B8%9A%E0%B8%A1%E0%B8%B5%E0%B8%94.lua"))()
    elseif game.PlaceId == 9876543210 then
        loadScript("https://raw.githubusercontent.com/Scripthubl/all-Script/refs/heads/main/Script987.lua"))()
    end
else
    game.Players.LocalPlayer:Kick("ยังไม่ได้ทำสคริปแมพนี้คนสร้างนอนอ้วนอยู่")
end
