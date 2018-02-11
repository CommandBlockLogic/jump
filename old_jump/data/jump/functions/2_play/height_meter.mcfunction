# jump:2_play/height_meter

#init
scoreboard players add @a[scores={playing=1}] maxHeight 0

#储存玩家当前高度
execute as @a[scores={playing=1}] store result score @s currentHeight run data get entity @s Pos[1]
execute as @a[scores={playing=1}] run scoreboard players operation @s currentHeight -= @e[name=playzone_center,limit=1] CONST

#store the highest height
execute as @a[scores={playing=1}] run scoreboard players operation @s maxHeight > @s currentHeight