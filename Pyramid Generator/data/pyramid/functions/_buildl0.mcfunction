
# This function is targeted at a coordinate point, which is marked by an armor
# stand. If the execute command is not used correctly, the armor stand will not
# teleport and no new blocks will be placed. This is why @s is used, but I'm not
# sure whether or not I need both "as" and "at" when executing.
#
# If I can find a way to only use "execute as @s at @s" once, that would optimize
# the function.

# Note:
# With the current code, it is impossible to do better than a size of 113. It
# may be possible to use the schedule command to get around the command limit,
# however making that transition presents a challenge, since it would be run via
# the server instead of any entity.

# Lay row of stairs south
scoreboard players operation #l1 loop_count = #l0 loop_count
execute as @s at @s run function pyramid:_buildl1d0

# Lay row of stairs west
scoreboard players operation #l1 loop_count = #l0 loop_count
execute as @s at @s run function pyramid:_buildl1d1

# Lay row of stairs north
scoreboard players operation #l1 loop_count = #l0 loop_count
execute as @s at @s run function pyramid:_buildl1d2

# Lay row of stairs east
scoreboard players operation #l1 loop_count = #l0 loop_count
execute as @s at @s run function pyramid:_buildl1d3

# Position armor stand for the next layer!
execute as @s at @s run tp @s ~1 ~1 ~1

# TODO: Below, I should try to use "matches" instead of <, it should be possible
# to match using a range.

# This function should be called with a loop_count set for #l1
# Recursively call this function until #l1 goes to 0
# Because we are decrementing by a factor of two, we need to make sure the value doesn't become negative
scoreboard players operation #l0 loop_count -= #two integer_literal
execute as @s at @s if score #l0 loop_count matches 0 run setblock ~ ~ ~ minecraft:sandstone_slab
execute if score #l0 loop_count < #zero integer_literal run scoreboard players set #l0 loop_count 0
execute as @s at @s unless score #l0 loop_count matches 0 run function pyramid:_buildl0

# Destroy the armor stand coordinate marker
execute if score #l0 loop_count matches 0 run kill @s
