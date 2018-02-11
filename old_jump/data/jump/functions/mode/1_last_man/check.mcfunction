# jump:mode/1_last_man/check

# The last survivor wins
# in mode 1 and 2
execute if score #game_state ingame matches 2 if score #mode CONST matches 1.. store result score #survivors ingame if entity @a[scores={playing=1}]
execute if score #game_state ingame matches 2 if score #mode CONST matches 1.. if score #survivors ingame matches 1 as @p[scores={playing=1}] run function jump:mode/1_last_man/victory
scoreboard players reset #survivors ingame