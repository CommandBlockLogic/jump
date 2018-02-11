# jump:mode/0_reach_height/check

# reach higher than 20m -> victory
# in whatever mode
execute if score #game_state ingame matches 2 as @p[scores={maxHeight=20..}] run function jump:mode/0_reach_height/victory