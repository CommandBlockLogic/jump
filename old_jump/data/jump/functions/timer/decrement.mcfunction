# jump:timer/decrement
execute unless block 0 0 1 minecraft:command_block run setblock 0 0 1 command_block
scoreboard players remove #msec ingame 3
execute if score #msec ingame matches ..-3 run scoreboard players remove #sec ingame 1
execute if score #msec ingame matches ..-3 run scoreboard players set #msec ingame 57
execute if score #sec ingame matches ..-1 run scoreboard players remove #min ingame 1
execute if score #sec ingame matches ..-1 run scoreboard players set #sec ingame 59
