# summon a marker entity at world origin to use for vector calculation shortcuts
# entity uuid: 07af498c-8da0-0cf6-07f5-3ea0ca4def95
summon marker 0 0 0 {UUID:[I;128928140,-1918890762,133512864,-900862059]}

# create the nessesary scoreboards
scoreboard objectives add villagergifts.hunger food
scoreboard objectives add villagergifts.cooldown dummy
scoreboard objectives add villagergifts.food_slot dummy

# forceload a chunk past the world border for the yellow shulker box method
# https://docs.smithed.dev/guides/yellow-shulker-box/
forceload add 3859394 29999995
execute in minecraft:the_end run forceload add 3859394 29999995
execute in minecraft:the_nether run forceload add 3859394 29999995