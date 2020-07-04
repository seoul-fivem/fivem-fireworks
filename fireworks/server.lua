-- seoul#0977
local Proxy = module("vrp", "lib/Proxy")
local Tunnel = module("vrp", "lib/Tunnel")

vRP = Proxy.getInterface("vRP")

vRPclient = Tunnel.getInterface("vRP","fireworks")


vRP.defInventoryItem({"fireworks", "폭죽", "", function(args) 
    local choices = {}
	
	choices["*설치"] = {function(player,choice,mod)
		local user_id = vRP.getUserId({player})
        if user_id ~= nil then
		TriggerClientEvent("frobski-fireworks:start", player)
        TriggerClientEvent('3dme:triggerDisplay', -1, '폭죽설치중', player)
        vRP.closeMenu({player})
        end
    end}
   
    return choices
end, 0.05})  

