# jump:mode/2_countdown/check

# the living player with the highest maxHeight score wins, when it is at mode 2 and the time is up
execute if score #game_state ingame matches 2 if score #mode CONST matches 2 if score #msec ingame matches ..2 if score #sec ingame matches 0 if score #min ingame matches 0 run function jump:mode/2_countdown/find