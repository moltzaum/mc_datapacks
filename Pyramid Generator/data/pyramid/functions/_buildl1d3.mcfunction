tp @s ~ ~ ~-1
setblock ~ ~ ~ minecraft:sandstone_stairs[facing=east] replace

# This function should be called with a loop_count set for #l1
# Recursively call this function until #l1 goes to 0
scoreboard players operation #l1 loop_count -= #one integer_literal
execute as @s at @s unless score #l1 loop_count matches 0 run function pyramid:_buildl1d3
