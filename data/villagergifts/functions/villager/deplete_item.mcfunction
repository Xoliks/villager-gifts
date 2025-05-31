say deplete item
# deplete one item from the corresponding item slot
execute if score .villager villagergifts.food_slot matches 1 run item modify entity @s villager.0 villagergifts:deplete_item
execute if score .villager villagergifts.food_slot matches 2 run item modify entity @s villager.1 villagergifts:deplete_item
execute if score .villager villagergifts.food_slot matches 3 run item modify entity @s villager.2 villagergifts:deplete_item
execute if score .villager villagergifts.food_slot matches 4 run item modify entity @s villager.3 villagergifts:deplete_item
execute if score .villager villagergifts.food_slot matches 5 run item modify entity @s villager.4 villagergifts:deplete_item
execute if score .villager villagergifts.food_slot matches 6 run item modify entity @s villager.5 villagergifts:deplete_item
execute if score .villager villagergifts.food_slot matches 7 run item modify entity @s villager.6 villagergifts:deplete_item
execute if score .villager villagergifts.food_slot matches 8 run item modify entity @s villager.7 villagergifts:deplete_item

tag @s remove villagergifts.target_villager