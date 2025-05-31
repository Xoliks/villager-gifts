say find villager
# end this function if a villager has already been found
execute if score .villager villagergifts.food_slot matches 1.. run return 0

# check every inventory slot of the villager to see if it contains food. if so, save the index of the slot
scoreboard players set .temp villagergifts.food_slot 1
data modify storage villagergifts:villager item set from entity @s Inventory[0]
function villagergifts:villager/food_list
execute if score .villager villagergifts.food_slot matches 1.. run return 0
scoreboard players set .temp villagergifts.food_slot 2
data modify storage villagergifts:villager item set from entity @s Inventory[1]
function villagergifts:villager/food_list
execute if score .villager villagergifts.food_slot matches 1.. run return 0
scoreboard players set .temp villagergifts.food_slot 3
data modify storage villagergifts:villager item set from entity @s Inventory[2]
function villagergifts:villager/food_list
execute if score .villager villagergifts.food_slot matches 1.. run return 0
scoreboard players set .temp villagergifts.food_slot 4
data modify storage villagergifts:villager item set from entity @s Inventory[3]
function villagergifts:villager/food_list
execute if score .villager villagergifts.food_slot matches 1.. run return 0
scoreboard players set .temp villagergifts.food_slot 5
data modify storage villagergifts:villager item set from entity @s Inventory[4]
function villagergifts:villager/food_list
execute if score .villager villagergifts.food_slot matches 1.. run return 0
scoreboard players set .temp villagergifts.food_slot 6
data modify storage villagergifts:villager item set from entity @s Inventory[5]
function villagergifts:villager/food_list
execute if score .villager villagergifts.food_slot matches 1.. run return 0
scoreboard players set .temp villagergifts.food_slot 7
data modify storage villagergifts:villager item set from entity @s Inventory[6]
function villagergifts:villager/food_list
execute if score .villager villagergifts.food_slot matches 1.. run return 0
scoreboard players set .temp villagergifts.food_slot 8
data modify storage villagergifts:villager item set from entity @s Inventory[7]
function villagergifts:villager/food_list
