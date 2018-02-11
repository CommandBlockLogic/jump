# jump:mode/0_reach_height/init

execute if score #mode CONST matches 0 if score #player_num CONST matches 1 run title @a[scores={playing=1}] subtitle [{"text":"请躲避掉落的方块，争取高度达到20格获取胜利吧！","color":"green"}]
execute if score #mode CONST matches 0 if score #player_num CONST matches 2.. run title @a[scores={playing=1}] subtitle [{"text":"请躲避掉落的方块，争取第一个高度达到20格获取胜利吧！","color":"green"}]
execute if score #mode CONST matches 2 run title @a[gamemode=spectator] subtitle [{"text":"通关模式","color":"green"}]

execute if score #mode CONST matches 0 run scoreboard players set #timer_mode CONST 0
execute if score #mode CONST matches 0 run scoreboard players set #msec ingame 0
execute if score #mode CONST matches 0 run scoreboard players set #sec ingame 0
execute if score #mode CONST matches 0 run scoreboard players set #min ingame 0
