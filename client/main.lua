local config = require 'config.client'

lib.onCache('weapon', function (weapon)
    if not weapon then
        ResetPedWeaponMovementClipset(cache.ped)
        return
    end

    local clipSet = config[weapon]
    if not clipSet then
        return
    end

    Wait(100)
    SetPedWeaponMovementClipset(cache.ped, clipSet)
end)