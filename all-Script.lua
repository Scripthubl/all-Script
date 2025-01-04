local mapIDs = {4503309821, 16732694052}  -- กำหนดค่า PlaceId ที่อนุญาต

if table.find(mapIDs, game.PlaceId) then
    if game.PlaceId == 4503309821 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Scripthubl/all-Script/refs/heads/main/%E0%B8%AB%E0%B8%A5%E0%B8%AD%E0%B8%94%E0%B8%AD%E0%B8%B2%E0%B8%AB%E0%B8%B2%E0%B8%A3.lua"))()
    elseif game.PlaceId == 16732694052 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Scripthubl/all-Script/refs/heads/main/Fisch.lua"))()
    end
else
    game.Players.LocalPlayer:Kick("คุณโดนเตะออกจากเกม")
    return
end
