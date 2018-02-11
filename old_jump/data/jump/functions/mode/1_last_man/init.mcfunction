# jump:mode/1_last_man/init
execute if score #mode CONST matches 1 run title @a[scores={playing=1}] subtitle [{"text":"请躲避掉落的方块，最后生存者胜利！","color":"green"}]
execute if score #mode CONST matches 2 run title @a[gamemode=spectator] subtitle [{"text":"苟模式","color":"green"}]

execute if score #mode CONST matches 1 run scoreboard players set #timer_mode CONST 0
execute if score #mode CONST matches 1 run scoreboard players set #msec ingame 0
execute if score #mode CONST matches 1 run scoreboard players set #sec ingame 0
execute if score #mode CONST matches 1 run scoreboard players set #min ingame 0
