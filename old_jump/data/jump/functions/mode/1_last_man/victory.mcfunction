# jump:mode/1_last_man/victory

# firstly, end the game
scoreboard players set #game_state ingame 3

# then, title to all players who is the winner.
title @a times 10 120 5
title @a title [{"selector":"@s","color":"dark_red"},{"text":" 活到了最后！","color":"gold"}]
title @a subtitle [""]

function jump:3_end/init