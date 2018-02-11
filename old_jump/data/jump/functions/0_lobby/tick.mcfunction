# jump:0_lobby/tick
# Run for every tick when the game state is 0

# lobby display and error detection
function jump:0_lobby/display
function jump:0_lobby/error_detect
# Read the command at line 32, which starts the cleanup process
function jump:0_lobby/clear_playzone

# ready & spec detect
execute as @a at @s if block ~ ~-0.5 ~ minecraft:light_gray_stained_glass run tag @e[type=area_effect_cloud,tag=lobby_aec_ready,tag=!all_ready] add all_ready

# recover their health, preventing them from PVP and mining blocks
effect give @a minecraft:weakness 1 127 true
effect give @a minecraft:mining_fatigue 1 127 true
effect give @a minecraft:instant_health 1 5 true

# game start countdown
execute unless entity @e[tag=all_ready] run kill @e[tag=start_timer,type=area_effect_cloud]
execute unless entity @e[tag=start_timer] run title @a clear
execute unless entity @e[tag=start_timer] run title @a reset
# If all ready and the #mode is set, start countdown and clear_playzone
execute as @e[tag=all_ready] if score #mode CONST matches 0..2 unless entity @e[type=area_effect_cloud,tag=start_timer] run summon area_effect_cloud ~ ~1 ~ {Tags:["start_timer"],Duration:101}
execute if entity @e[limit=1,type=area_effect_cloud,tag=start_timer,nbt={Age:1}] run title @a times 5 100 0
execute if entity @e[limit=1,type=area_effect_cloud,tag=start_timer,nbt={Age:1}] run title @a title [{"text":"游戏即将开始","color":"yellow"}]
execute if entity @e[limit=1,type=area_effect_cloud,tag=start_timer,nbt={Age:1}] run title @a subtitle [""]
execute if entity @e[limit=1,type=area_effect_cloud,tag=start_timer,nbt={Age:40}] run title @a subtitle [{"text":"3","color":"green"}]
execute if entity @e[limit=1,type=area_effect_cloud,tag=start_timer,nbt={Age:40}] at @a run playsound block.note.pling voice @p ~ ~ ~ 1 0
execute if entity @e[limit=1,type=area_effect_cloud,tag=start_timer,nbt={Age:60}] run title @a subtitle [{"text":"2","color":"yellow"}]
execute if entity @e[limit=1,type=area_effect_cloud,tag=start_timer,nbt={Age:60}] at @a run playsound block.note.pling voice @p ~ ~ ~ 1 0
execute if entity @e[limit=1,type=area_effect_cloud,tag=start_timer,nbt={Age:60}] run summon area_effect_cloud ~ ~ ~ {Tags:["clear_playzone"],Duration:31}
execute if entity @e[limit=1,type=area_effect_cloud,tag=start_timer,nbt={Age:80}] run title @a subtitle [{"text":"1","color":"red"}]
execute if entity @e[limit=1,type=area_effect_cloud,tag=start_timer,nbt={Age:80}] at @a run playsound block.note.pling voice @p ~ ~ ~ 1 0
execute if entity @e[limit=1,type=area_effect_cloud,tag=start_timer,nbt={Age:100}] run title @a clear
execute if entity @e[limit=1,type=area_effect_cloud,tag=start_timer,nbt={Age:100}] run title @a reset
execute if entity @e[limit=1,type=area_effect_cloud,tag=start_timer,nbt={Age:100}] as @a at @s if block ~ ~-0.5 ~ minecraft:light_gray_stained_glass run tag @s add ready
execute if entity @e[limit=1,type=area_effect_cloud,tag=start_timer,nbt={Age:100}] run function jump:1_load/init
