# jump:mode/2_countdown/init
execute if score #mode CONST matches 2 run title @a[scores={playing=1}] subtitle [{"text":"请躲避掉落的方块，一分钟内攀登记录最高者胜利！","color":"green"}]
execute if score #mode CONST matches 2 run title @a[gamemode=spectator] subtitle [{"text":"一分钟限时","color":"green"}]

execute if score #mode CONST matches 2 run scoreboard players set #timer_mode CONST 1
execute if score #mode CONST matches 2 run scoreboard players set #msec ingame 57
execute if score #mode CONST matches 2 run scoreboard players set #sec ingame 59
execute if score #mode CONST matches 2 run scoreboard players set #min ingame 0
