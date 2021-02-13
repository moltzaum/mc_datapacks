
# DEPRECATED FUNCTION

# DEBUG for the counter
# tellraw @s [{"text":"counter:"},{"score":{"name":"#l1","objective":"loop_count"}}]

execute if score #direction parameter matches 0 run tp @s ~1 ~ ~
execute if score #direction parameter matches 0 run setblock ~ ~ ~ minecraft:sandstone_stairs[facing=south] replace

execute if score #direction parameter matches 1 run tp @s ~ ~ ~1
execute if score #direction parameter matches 1 run setblock ~ ~ ~ minecraft:sandstone_stairs[facing=west] replace

execute if score #direction parameter matches 2 run tp @s ~-1 ~ ~
execute if score #direction parameter matches 2 run setblock ~ ~ ~ minecraft:sandstone_stairs[facing=north] replace

execute if score #direction parameter matches 3 run tp @s ~ ~ ~-1
execute if score #direction parameter matches 3 run setblock ~ ~ ~ minecraft:sandstone_stairs[facing=east] replace

# This function should be called with a loop_count set for #l1
# Recursively call this function until #l1 goes to 0
scoreboard players operation #l1 loop_count -= #one integer_literal
execute as @s at @s unless score #l1 loop_count matches 0 run function pyramid:_buildl1
