RegisterCommand(Config.Command, function()
    for k, v in pairs(GetGamePool('CObject')) do 
        if IsEntityAttachedToEntity(PlayerPedId(), v) then
            SetEntityAsMissionEntity(v, true, true)
            DeleteObject(v)
            DeleteEntity(v)  
        end
    end
 end)

 TriggerEvent('chat:addSuggestion', Config.HelpCommand, Config.HelpText)