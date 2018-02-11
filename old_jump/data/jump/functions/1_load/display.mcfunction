# jump:1_load/display

execute as @a[scores={playing=1}] at @s run playsound block.note.pling voice @s ~ ~ ~ 1 1
execute at @e[name=ingame_spawn,limit=1] run tp @a[gamemode=spectator] ~ ~ ~ 0 70
title @a[scores={playing=1}] times 5 40 5
title @a[scores={playing=1}] title [{"text":"您有五秒预备时间","color":"aqua"}]
title @a[gamemode=spectator] title ["玩家当前模式："]

# if only one player, force MODE 0
execute store result score #player_num CONST if entity @a[scores={playing=1}]
execute if score #player_num CONST matches 1 if score #mode CONST matches 1.. run tellraw @a[scores={playing=1}] {"text":"单人时只能使用通关模式！"}
execute if score #player_num CONST matches 1 if score #mode CONST matches 1.. run clone 17 2 10 17 2 10 8 128 12
execute if score #player_num CONST matches 1 run scoreboard players set #mode CONST 0

title @a[scores={playing=1}] actionbar ["方块将会在 5 秒后开始掉落"]

#display height meter
scoreboard objectives setdisplay sidebar maxHeight
