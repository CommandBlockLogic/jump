# jump:tick

team join no_hitbox @a[team=!no_hitbox]
execute if entity @p if score #game_state ingame matches 0 run function jump:0_lobby/tick
execute if entity @p if score #game_state ingame matches 1 run function jump:1_load/tick
execute if entity @p if score #game_state ingame matches 2 run function jump:2_play/tick
execute if entity @p if score #game_state ingame matches 3 run function jump:3_end/tick
