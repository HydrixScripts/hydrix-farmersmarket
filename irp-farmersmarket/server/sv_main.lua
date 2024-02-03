-- Function to create PolyZones for each market booth
function createPolyZones()
    for _, booth in pairs(Config.Market) do
        local boothCoords = booth.booth.coords
        local boothRadius = Config.PierRadius

        local polyZone = AddCircleZone(boothCoords, boothRadius, {
            name = frameworkName .. "market_booth_" .. tostring(_),  -- Dynamically use the configured framework name
            debugPoly = Config.Debug,
            useZ = false,
        })

        -- Add event handler for when a player enters the PolyZone
        TriggerEvent(frameworkName .. "playerEnteredBooth", polyZone, booth)  
    end
end

-- Server event for handling booth logic securely
RegisterServerEvent(frameworkName .. "handleBoothLogic")
AddEventHandler(frameworkName .. "handleBoothLogic", function(booth)
    -- Handle booth logic securely on the server side
    -- implement secure logic
    print("Server handling secure booth logic for booth " .. tostring(booth))
    -- Implement secure logic here
end)