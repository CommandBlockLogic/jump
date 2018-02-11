# jump:tick

# #state.misc stores the state of the game
# 0 for in lobby
# 1 for loading the game (waiting to start)
# 2 for the actual game
# 3 for game end

execute if score #state misc matches 0 run function jump_map:tick
execute if score #state misc matches 1 run function jump:load/tick
execute if score #state misc matches 2 run function jump:play/tick
execute if score #state misc matches 3 run function jump:end/tick