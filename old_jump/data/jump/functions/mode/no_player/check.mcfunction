# jump:mode/no_player/check

# handle no player
execute if score #game_state ingame matches 2 unless entity @p[scores={playing=1}] run function jump:mode/no_player/process