$execute unless entity @n[type=#villager_caravan:llama,nbt={leash:{UUID:[I; $(0), $(1), $(2), $(3)]}}] run return fail

$execute at @n[type=#villager_caravan:llama,nbt={leash:{UUID:[I; $(0), $(1), $(2), $(3)]}}] run function villager_caravan:villager_ride_llama with entity @n[type=#villager_caravan:llama,nbt={leash:{UUID:[I; $(0), $(1), $(2), $(3)]}}]

# drop the lead
$data modify entity @n[type=#villager_caravan:llama,nbt={leash:{UUID:[I; $(0), $(1), $(2), $(3)]}}] leash set value [I; 0, -9999, 0]