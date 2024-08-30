# summon invisible armor stand that will follow the llama around.
# the villager rides this armor stand instead of the llama so it can still follow a caravan.
# llamas with passengers don't follow caravans (bug?)
$execute at @n[type=#villager_caravan:llama,nbt={leash:$(leash)}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["villager_caravan.new_llama_tracker"],NoGravity:true,Invisible:true}

# store llama uuid on armor stand
$execute as @e[type=minecraft:armor_stand,tag=villager_caravan.new_llama_tracker] store result score @s villager_caravan.uuid_0 run data get entity @n[type=#villager_caravan:llama,nbt={leash:$(leash)}] UUID[0]
$execute as @e[type=minecraft:armor_stand,tag=villager_caravan.new_llama_tracker] store result score @s villager_caravan.uuid_1 run data get entity @n[type=#villager_caravan:llama,nbt={leash:$(leash)}] UUID[1]
$execute as @e[type=minecraft:armor_stand,tag=villager_caravan.new_llama_tracker] store result score @s villager_caravan.uuid_2 run data get entity @n[type=#villager_caravan:llama,nbt={leash:$(leash)}] UUID[2]
$execute as @e[type=minecraft:armor_stand,tag=villager_caravan.new_llama_tracker] store result score @s villager_caravan.uuid_3 run data get entity @n[type=#villager_caravan:llama,nbt={leash:$(leash)}] UUID[3]

# store llama uuid on llama
$execute as @n[type=#villager_caravan:llama,nbt={leash:$(leash)}] store result score @s villager_caravan.uuid_0 run data get entity @s UUID[0]
$execute as @n[type=#villager_caravan:llama,nbt={leash:$(leash)}] store result score @s villager_caravan.uuid_1 run data get entity @s UUID[1]
$execute as @n[type=#villager_caravan:llama,nbt={leash:$(leash)}] store result score @s villager_caravan.uuid_2 run data get entity @s UUID[2]
$execute as @n[type=#villager_caravan:llama,nbt={leash:$(leash)}] store result score @s villager_caravan.uuid_3 run data get entity @s UUID[3]

# villager rides the armor stand
$execute as @n[type=#villager_caravan:llama,nbt={leash:$(leash)}] run team join villager_caravan.no_collisions
execute as @e[type=minecraft:armor_stand,tag=villager_caravan.new_llama_tracker] run team join villager_caravan.no_collisions
ride @n[type=minecraft:villager] mount @n[type=minecraft:armor_stand,tag=villager_caravan.new_llama_tracker]

# fix the tags after setup
execute as @e[type=minecraft:armor_stand,tag=villager_caravan.new_llama_tracker] run tag @s add villager_caravan.llama_tracker
execute as @e[type=minecraft:armor_stand,tag=villager_caravan.new_llama_tracker] run tag @s remove villager_caravan.new_llama_tracker