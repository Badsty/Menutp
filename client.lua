
local display = false
RegisterNetEvent("spoody:teleport:ToggleUI")
AddEventHandler('spoody:teleport:ToggleUI', function()
    SetNuiFocus(true, true)
    SendNUIMessage({
        type = "open",
        status = true
    })
end)

RegisterNUICallback("close", function(data)
    SetDisplay(false)
end)

RegisterNUICallback("1", function(data)
    SetEntityCoords(PlayerPedId(), -948.1222, -785.1742, 15.92108, false)
    SetDisplay(false)
end)
RegisterNUICallback("2", function(data)
    SetEntityCoords(PlayerPedId(), -1026.56, -3438.643, 14.14632, false)
    SetDisplay(false)
end)
RegisterNUICallback("3", function(data)
    SetEntityCoords(PlayerPedId(), -65.34, -1814.89, 27.32, false)
    SetDisplay(false)
end)

RegisterNUICallback("4", function(data)
    SetEntityCoords(PlayerPedId(), 475.64, 848.44, 953.76, false)
    SetDisplay(false)
end)
RegisterNUICallback("5", function(data)
    SetEntityCoords(PlayerPedId(),-65.34, -1814.89, 27.32, false)
    SetDisplay(false)
end)
RegisterNUICallback("6", function(data)
    SetEntityCoords(PlayerPedId(), 220.3563, -2548.673, 6.196056, false)
    SetDisplay(false)
end)

RegisterNUICallback("7", function(data)
    SetEntityCoords(PlayerPedId(), 220.3563, -2548.673, 6.196056, false)
    SetDisplay(false)
end)
RegisterNUICallback("8", function(data)
    SetEntityCoords(PlayerPedId(), 220.3563, -2548.673, 6.196056, false)
    SetDisplay(false)
end)
RegisterNUICallback("9", function(data)
    SetEntityCoords(PlayerPedId(), 220.3563, -2548.673, 6.196056, false)
    SetDisplay(false)
end)


function SetDisplay(bool)
    display = bool
    SetNuiFocus(bool, bool)
    SendNUIMessage({
        type = "open",
        status = bool
    })
end
        
   CreateThread(function()
    while true do
        Wait(100)

    RegisterCommand('tpmenu', function()
		TriggerEvent("spoody:teleport:ToggleUI")
    end)
     
    RegisterKeyMapping('tpmenu', 'TP Menu', 'keyboard', 'F11')
    end
end)

--RegisterCommand('tpmenu', function()
	--TriggerEvent("spoody:teleport:ToggleUI")
--end)