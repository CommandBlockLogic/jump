# jump:0_lobby/display

# colorful aec custom name
# ready a1,b1,c1
execute store result score #marker_count CONST if entity @e[type=area_effect_cloud,tag=lobby_aec_ready]
execute unless score #marker_count CONST matches 1 run kill @e[type=area_effect_cloud,tag=lobby_aec_ready]
execute unless score #marker_count CONST matches 1 at @e[name=lobby_prepare,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:["lobby_aec_ready","red"],CustomNameVisible:1,CustomName:"{\"text\":\"站在玻璃上准备开始\",\"color\":\"red\"}",Duration:3}
# basically just looping the colors, resetting the age so to allow another loop
data merge entity @e[limit=1,type=area_effect_cloud,tag=lobby_aec_ready,tag=red,nbt={Age:2}] {Age:0,CustomNameVisible:1,CustomName:"{\"text\":\"站在玻璃上准备开始\",\"color\":\"gold\"}",Tags:["lobby_aec_ready","orange"]}
data merge entity @e[limit=1,type=area_effect_cloud,tag=lobby_aec_ready,tag=orange,nbt={Age:2}] {Age:0,CustomNameVisible:1,CustomName:"{\"text\":\"站在玻璃上准备开始\",\"color\":\"yellow\"}",Tags:["lobby_aec_ready","yellow"]}
data merge entity @e[limit=1,type=area_effect_cloud,tag=lobby_aec_ready,tag=yellow,nbt={Age:2}] {Age:0,CustomNameVisible:1,CustomName:"{\"text\":\"站在玻璃上准备开始\",\"color\":\"green\"}",Tags:["lobby_aec_ready","green"]}
data merge entity @e[limit=1,type=area_effect_cloud,tag=lobby_aec_ready,tag=green,nbt={Age:2}] {Age:0,CustomNameVisible:1,CustomName:"{\"text\":\"站在玻璃上准备开始\",\"color\":\"aqua\"}",Tags:["lobby_aec_ready","aqua"]}
data merge entity @e[limit=1,type=area_effect_cloud,tag=lobby_aec_ready,tag=aqua,nbt={Age:2}] {Age:0,CustomNameVisible:1,CustomName:"{\"text\":\"站在玻璃上准备开始\",\"color\":\"blue\"}",Tags:["lobby_aec_ready","blue"]}
data merge entity @e[limit=1,type=area_effect_cloud,tag=lobby_aec_ready,tag=blue,nbt={Age:2}] {Age:0,CustomNameVisible:1,CustomName:"{\"text\":\"站在玻璃上准备开始\",\"color\":\"purple\"}",Tags:["lobby_aec_ready","purple"]}
data merge entity @e[limit=1,type=area_effect_cloud,tag=lobby_aec_ready,tag=purple,nbt={Age:2}] {Age:0,CustomNameVisible:1,CustomName:"{\"text\":\"站在玻璃上准备开始\",\"color\":\"red\"}",Tags:["lobby_aec_ready","red"]}

# colorful aec
# spec game a2,b2,c2
# similar as the one before
execute store result score #marker_count CONST if entity @e[type=area_effect_cloud,tag=lobby_aec_spec1]
execute unless score #marker_count CONST matches 1 run kill @e[type=area_effect_cloud,tag=lobby_aec_spec1]
execute unless score #marker_count CONST matches 1 at @e[name=lobby_spectate,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:["lobby_aec_spec1","dark"],CustomNameVisible:1,CustomName:"{\"text\":\"站在这里准备旁观\",\"color\":\"dark_gray\"}",Duration:4}
data merge entity @e[limit=1,type=area_effect_cloud,tag=lobby_aec_spec1,tag=dark,nbt={Age:3}] {Age:0,CustomNameVisible:1,CustomName:"{\"text\":\"站在这里准备旁观\",\"color\":\"gray\"}",Tags:["lobby_aec_spec1","light"]}
data merge entity @e[limit=1,type=area_effect_cloud,tag=lobby_aec_spec1,tag=light,nbt={Age:3}] {Age:0,CustomNameVisible:1,CustomName:"{\"text\":\"站在这里准备旁观\",\"color\":\"dark_gray\"}",Tags:["lobby_aec_spec1","dark"]}