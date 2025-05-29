say mark villager
# mark the chosen villager with a tag and the correct score
tag @s add villagergifts.target_villager
execute store result score .villager villagergifts.food_slot run scoreboard players get .temp villagergifts.food_slot
