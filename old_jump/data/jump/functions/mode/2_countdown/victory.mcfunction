# jump:mode/2_countdown/victory

# firstly, end the game
scoreboard players set #game_state ingame 3

# then, title to all players who is the winner.
title @a times 10 120 5
title @a title [{"text":"以下玩家爬的最高并活了下来：","color":"gold"}]
title @a subtitle [{"selector":"@a[tag=victory]","color":"dark_red"}]
tag @a remove victory
function jump:3_end/init