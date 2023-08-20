local Player = PlayerPedId()

Citizen.CreateThread( function()
    while true do 

        if IsControlJustPressed(0, 56) then -- INPUT_DROP_WEAPON ( F9 )  ( Y ) 

            if GetSelectedPedWeapon(Player) == GetHashKey("WEAPON_UNARMED") then
               return
            else
                if GetSelectedPedWeapon(Player) == GetHashKey("WEAPON_BZGAS") or GetSelectedPedWeapon(Player) == GetHashKey("WEAPON_FIREEXTINGUISHER") or GetSelectedPedWeapon(Player) == GetHashKey("WEAPON_SNOWBALL") then
                    RemoveWeaponFromPed(Player, GetSelectedPedWeapon(Player))
                else 
                    SetPedDropsInventoryWeapon(Player, GetSelectedPedWeapon(Player), 0.0, 2.0, 0.0, 0)
               end
            end
            
        end

        Citizen.Wait( 0 )
    end 
end )