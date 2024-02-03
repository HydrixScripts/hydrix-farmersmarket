PlayerModule, EventsModule, CallbackModule, FunctionsModule = nil

-- Event handler for module dependencies
AddEventHandler('Modules/client/ready', function()
    local _Ready = false

    if not _Ready then
        _Ready = true
    end

    local frameworkName = Config.FrameworkNameStart or "mercy-"  -- Use configured framework name or default to "mercy-"

    -- Request module dependencies
    TriggerEvent('Modules/client/request-dependencies', {
        'Player',
        'Events',
        'Callback',
        'Functions',
    }, function(Succeeded)
        if not Succeeded then return end
        PlayerModule = exports[frameworkName .. 'base']:FetchModule("Player")
        EventsModule = exports[frameworkName .. 'base']:FetchModule("Events")
        CallbackModule = exports[frameworkName .. 'base']:FetchModule("Callback")
        FunctionsModule = exports[frameworkName .. 'base']:FetchModule("Functions")
    end)
end)

-- Ensure this is the correct resource name
local resourceName = GetCurrentResourceName()

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

-- Event handler for player entering a booth
RegisterNetEvent(frameworkName .. "playerEnteredBooth")  
AddEventHandler(frameworkName .. "playerEnteredBooth", function(polyZone, booth)
    local playerPed = PlayerModule.GetPlayerPed(Player)
    local boothCoords = booth.booth.coords
    local boothHeading = booth.booth.heading

    -- Check if player is near the booth
    if PlayerModule.IsEntityInZone(playerPed, polyZone, false) then
        -- Handle booth logic here
        --can use the 'booth' parameter to access booth-specific information
        print("Player entered booth!")

        --Trigger an event to open the market menu
        TriggerEvent(frameworkName .. "openMarketMenu", booth)  
    end
end)

-- Example event for opening the market menu
RegisterNetEvent(frameworkName .. "openMarketMenu") 
AddEventHandler(frameworkName .. "openMarketMenu", function(booth)
    print("Opening market menu for booth " .. tostring(booth))
    -- Implement menu opening logic
end)

-- Call the function to create PolyZones when the resource starts
Citizen.CreateThread(function()
    createPolyZones()
end)