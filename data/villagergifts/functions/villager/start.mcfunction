say start

# tag the player to be referenced later
tag @s add villagergifts.target_player

# find the closest villager within 3 blocks of the player that has food
execute as @e[type=villager,distance=..3,sort=nearest] run function villagergifts:villager/find_villager

# calculate the motion vector for the item as it should be thrown
execute at @e[type=villager,distance=..3,sort=nearest,tag=villagergifts.target_villager,limit=1] facing entity @s eyes run tp 07af498c-8da0-0cf6-07f5-3ea0ca4def95 0.0 0.0 0.0 ~ ~
execute as 07af498c-8da0-0cf6-07f5-3ea0ca4def95 at @s rotated as @s run tp @s ^ ^ ^0.3

# make the villager throw an item from their inventory
execute at @e[type=villager,distance=..3,sort=nearest,tag=villagergifts.target_villager,limit=1] run function villagergifts:villager/summon_item

# clean up temporary values
scoreboard players reset .villager villagergifts.food_slot
scoreboard players reset .temp villagergifts.food_slot
#data remove storage villagergifts:villager item
tag @s remove villagergifts.target_player