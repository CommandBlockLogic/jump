# jump:_init/marker
kill @e[type=!player]

summon minecraft:area_effect_cloud 8.5 129 5.5 {CustomName:"[\"lobby\"]",Duration:2100000000}
summon minecraft:area_effect_cloud 8.5 128 9.5 {CustomName:"[\"lobby_prepare\"]",Duration:2100000000}
summon minecraft:area_effect_cloud 8.5 1289 5.5 {CustomName:"[\"lobby_spectate\"]",Duration:2100000000}
summon minecraft:area_effect_cloud 7 49 -3 {CustomName:"[\"ingame_spawn\"]",Duration:2100000000}
summon minecraft:area_effect_cloud 8 4 8 {CustomName:"[\"playzone_center\"]",Duration:2100000000}

execute store result score @e[name=playzone_center,limit=1] CONST run data get entity @e[name=playzone_center,limit=1] Pos[1]

setworldspawn 8 129 5

# markers used for choosing random blocks
execute unless entity @e[type=area_effect_cloud,tag=random_color,tag=random_color1] run summon area_effect_cloud 0 0 0 {Duration:2100000000,Tags:["random_color","random_color1"]}
execute unless entity @e[type=area_effect_cloud,tag=random_color,tag=random_color2] run summon area_effect_cloud 0 0 0 {Duration:2100000000,Tags:["random_color","random_color2"]}
execute unless entity @e[type=area_effect_cloud,tag=random_color,tag=random_color3] run summon area_effect_cloud 0 0 0 {Duration:2100000000,Tags:["random_color","random_color3"]}
execute unless entity @e[type=area_effect_cloud,tag=random_color,tag=random_color4] run summon area_effect_cloud 0 0 0 {Duration:2100000000,Tags:["random_color","random_color4"]}
execute unless entity @e[type=area_effect_cloud,tag=random_color,tag=random_color5] run summon area_effect_cloud 0 0 0 {Duration:2100000000,Tags:["random_color","random_color5"]}
execute unless entity @e[type=area_effect_cloud,tag=random_color,tag=random_color6] run summon area_effect_cloud 0 0 0 {Duration:2100000000,Tags:["random_color","random_color6"]}
execute unless entity @e[type=area_effect_cloud,tag=random_color,tag=random_color7] run summon area_effect_cloud 0 0 0 {Duration:2100000000,Tags:["random_color","random_color7"]}
execute as @e[tag=random_color1,type=area_effect_cloud] unless entity @s[scores={random_color=1}] run scoreboard players set @s random_color 1
execute as @e[tag=random_color2,type=area_effect_cloud] unless entity @s[scores={random_color=2}] run scoreboard players set @s random_color 2
execute as @e[tag=random_color3,type=area_effect_cloud] unless entity @s[scores={random_color=3}] run scoreboard players set @s random_color 3
execute as @e[tag=random_color4,type=area_effect_cloud] unless entity @s[scores={random_color=4}] run scoreboard players set @s random_color 4
execute as @e[tag=random_color5,type=area_effect_cloud] unless entity @s[scores={random_color=5}] run scoreboard players set @s random_color 5
execute as @e[tag=random_color6,type=area_effect_cloud] unless entity @s[scores={random_color=6}] run scoreboard players set @s random_color 6
execute as @e[tag=random_color7,type=area_effect_cloud] unless entity @s[scores={random_color=7}] run scoreboard players set @s random_color 7