say set item data
data modify entity @s Item.id set from storage villagergifts.item
data modify entity @s Motion set from entity 07af498c-8da0-0cf6-07f5-3ea0ca4def95 Pos
data modify entity @s Motion[1] set value 0.3
tp @s ~ ~1 ~ 

tag @s remove villagergifts.target_item