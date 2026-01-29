repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players and game.Players.LocalPlayer

local Players = game:GetService("Players")
local lp = Players.LocalPlayer

-- ===== ALLOWED PLACE IDS =====
local ALLOWED = {
    [100117331123089] = true,
    [7449423635] = true,
}

-- ===== Script A =====
local function runScriptA()
    -- Chờ game tải xong
repeat wait() until game:IsLoaded()

local player = game.Players.LocalPlayer

-- Hàm thực hiện chuyển Sea
local function TeleportToSea3()
    
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
end

-- Thực thi
TeleportToSea3()

    warn("[A] Script A executed (invalid PlaceId)")
end

-- ===== CHECK =====
local currentPlaceId = game.PlaceId

if not ALLOWED[currentPlaceId] then
    warn("[PLACE] Invalid PlaceId =", currentPlaceId, "-> run Script A")
    runScriptA()
else
    warn("[PLACE] Valid PlaceId =", currentPlaceId, "-> skip Script A")
end
