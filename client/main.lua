local config = require 'config.client'

local REGISTER = false

lib.onCache('weapon', function (weapon)
    if not weapon then
        ResetPedWeaponMovementClipset(cache.ped)
        return
    end

    if not REGISTER then
        GiveWeaponToPed(cache.ped, joaat("weapon_petrolcan"), 0, false, true)
        RemoveWeaponFromPed(cache.ped, joaat("weapon_petrolcan"))
        REGISTER = true
    end

    local clipSet = config[weapon]
    if not clipSet then
        return
    end

    Wait(100)
    SetPedWeaponMovementClipset(cache.ped, clipSet)
end)