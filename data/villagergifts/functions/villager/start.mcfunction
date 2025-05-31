say start

# tag the player to be referenced later
tag @s add villagergifts.target_player

# find the closest villager within 3 blocks of the player that has food
execute as @e[type=villager,distance=..3,sort=nearest] run function villagergifts:villager/find_villager

# calculate the motion vector for the item as it should be thrown
execute at @e[type=villager,distance=..3,sort=nearest,tag=villagergifts.target_villager,limit=1] facing entity @s eyes run tp 07af498c-8da0-0cf6-07f5-3ea0ca4def95 0.0 0.0 0.0 ~ ~
execute as 07af498c-8da0-0cf6-07f5-3ea0ca4def95 at @s rotated as @s run tp @s ^ ^ ^0.3

# make the villager throw an item from their inventory
# summon the item, set the data, then deplete the item from the villager's inventory
setblock 3859394 0 29999995 yellow_shulker_box
data remove block 3859394 0 29999995 Items
data modify block 3859394 0 29999995 Items insert 0 from storage villagergifts:villager item
data modify block 3859394 0 29999995 Items[0].Count set value 1

loot spawn 3859394 0 29999995 mine 3859394 0 29999995 air{drop_contents:1b}
execute positioned 3859394 0 29999995 run tag @e[type=item,sort=nearest,limit=1,distance=..1] add villagergifts.target_item

execute at @e[type=villager,distance=..3,sort=nearest,tag=villagergifts.target_villager,limit=1] as @e[type=item,sort=nearest,tag=villagergifts.target_item,limit=1,distance=0..] run function villagergifts:villager/set_item_data

execute as @e[type=villager,distance=..3,sort=nearest,tag=villagergifts.target_villager,limit=1] run function villagergifts:villager/deplete_item

# set the player's cooldown
scoreboard players set @s villagergifts.cooldown 50
execute if score .villager villagergifts.food_slot matches 1.. run scoreboard players set @s villagergifts.cooldown 600


# clean up temporary values
scoreboard players reset .villager villagergifts.food_slot
scoreboard players reset .temp villagergifts.food_slot
data remove storage villagergifts:villager item
tag @s remove villagergifts.target_player