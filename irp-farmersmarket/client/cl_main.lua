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

-- Event handler for player entering a booth
RegisterNetEvent(frameworkName .. "playerEnteredBooth")  
AddEventHandler(frameworkName .. "playerEnteredBooth", function(polyZone, booth)
    local playerPed = PlayerModule.GetPlayerPed(Player)
    local boothCoords = booth.booth.coords
    local boothHeading = booth.booth.heading

    -- Check if player is near the booth
    if PlayerModule.IsEntityInZone(playerPed, polyZone, false) then
        -- Securely handle booth logic on the server side
        TriggerServerEvent(frameworkName .. "handleBoothLogic", booth)
    end
end)

-- make event for opening the market menu
RegisterNetEvent(frameworkName .. "openMarketMenu") 
AddEventHandler(frameworkName .. "openMarketMenu", function(booth)
    print("Opening market menu for booth " .. tostring(booth))
    -- Implement secure menu opening logic on the client side
end)

-- Call function to create PolyZones when resource starts
Citizen.CreateThread(function()
    createPolyZones()
end)