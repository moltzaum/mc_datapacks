
scoreboard objectives add pyramid_input trigger

# Will these scoreboard objectives clash with other datapacks? It seems like
# there would be no error if the objective already exists.
#
# The objectives created below are to make other commands human-readable. The
# "loop_count" objective will be used with player names such as #l0 or #l1,
# which operate similarly to ecx in assembly (set #l0, and it will decrement
# by one until 0). The "integer_literal" objective is used because minecraft
# does not actually allow you to use literals when applying operations. The
# context should make it clear, that the value of the player should not be
# modified. The final, "variable" objective is a free-for-all.
#
# Maybe it would be better to create an objective per function so that it acts
# like a function scope? Then, we can clean up the scoreboard and make sure
# variables do not get clobbered.
scoreboard objectives add loop_count dummy
scoreboard objectives add integer_literal dummy
scoreboard objectives add parameter dummy
scoreboard objectives add variable dummy

# Note: We use # to preface the fake player name because it is a convention to
# do so (this way, the fake player name will also not appear in the sidebar)
scoreboard players set #zero integer_literal 0
scoreboard players set #one integer_literal 1
scoreboard players set #two integer_literal 2

# The max command chain length can be increased in order to create a larger
# pyramid. However, it is safer to not increase it
# gamerule maxCommandChainLength 65536

say Loaded Pyramid Creation Datapack
