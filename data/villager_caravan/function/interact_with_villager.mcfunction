advancement revoke @s only villager_caravan:interact_with_villager

data modify storage villager_caravan:uuid 0 set from entity @s UUID[0]
data modify storage villager_caravan:uuid 1 set from entity @s UUID[1]
data modify storage villager_caravan:uuid 2 set from entity @s UUID[2]
data modify storage villager_caravan:uuid 3 set from entity @s UUID[3]
function villager_caravan:hand_lead_to_villager with storage villager_caravan:uuid