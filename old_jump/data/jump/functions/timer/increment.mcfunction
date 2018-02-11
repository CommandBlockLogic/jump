# jump:timer/increment
execute unless block 0 0 1 minecraft:command_block run setblock 0 0 1 command_block
scoreboard players add #msec ingame 3
execute if score #msec ingame matches 60.. run scoreboard players add #sec ingame 1
execute if score #msec ingame matches 60.. run scoreboard players set #msec ingame 0
execute if score #sec ingame matches 60.. run scoreboard players add #min ingame 1
execute if score #sec ingame matches 60.. run scoreboard players set #sec ingame 0
