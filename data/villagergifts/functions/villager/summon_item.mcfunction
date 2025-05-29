say summon item

# summon an dummy item, set the data, then deplete the item from the villager's inventory
summon item 0.0 -75.0 0.0 {PickupDelay:20,Tags:["villagergifts.target_item"],Item:{id:"minecraft:bread",Count:1b}}

execute as @e[type=item,sort=nearest,tag=villagergifts.target_item,limit=1] run function villagergifts:villager/set_item_data

tag @s remove villagergifts.target_item