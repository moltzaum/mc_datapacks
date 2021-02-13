
scoreboard players operation #l0 loop_count = @s pyramid_input
scoreboard players operation #l0 loop_count -= #one integer_literal

# Delete all armor stands that are coordinates in case something went wrong
# from a previous run (command limit exceeded).
kill @e[tag=pyramid_coordinate]

# Found the maximum through some trial and error
scoreboard players set #max_size variable 113
execute if score #l0 loop_count > #max_size variable run scoreboard players set #l0 loop_count -1

execute if score #l0 loop_count < #zero integer_literal run say Make sure you set a score for pyramid_input in the range from 1 to 100
execute if score #l0 loop_count >= #zero integer_literal run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["pyramid_coordinate"]}
execute if score #l0 loop_count >= #zero integer_literal run execute as @e[tag=pyramid_coordinate] at @s run function pyramid:_buildl0
