# jump:3_end/tick
execute if entity @e[limit=1,type=area_effect_cloud,tag=ending_game,nbt={Age:40}] run title @a actionbar ["3 秒后返回大厅"]
execute if entity @e[limit=1,type=area_effect_cloud,tag=ending_game,nbt={Age:60}] run title @a actionbar ["2 秒后返回大厅"]
execute if entity @e[limit=1,type=area_effect_cloud,tag=ending_game,nbt={Age:80}] run title @a actionbar ["1 秒后返回大厅"]
execute if entity @e[limit=1,type=area_effect_cloud,tag=ending_game,nbt={Age:100}] run title @a clear
execute if entity @e[limit=1,type=area_effect_cloud,tag=ending_game,nbt={Age:100}] run title @a reset
# tp back to lobby
execute if entity @e[limit=1,type=area_effect_cloud,tag=ending_game,nbt={Age:100}] run tp @a @e[name=lobby,limit=1]
execute if entity @e[limit=1,type=area_effect_cloud,tag=ending_game,nbt={Age:100}] run gamemode adventure @a
#close height meter
execute if entity @e[limit=1,type=area_effect_cloud,tag=ending_game,nbt={Age:100}] run scoreboard objectives setdisplay sidebar

# 5 seconds delay for them to rest
execute if entity @e[limit=1,type=area_effect_cloud,tag=ending_game,nbt={Age:100}] run title @a subtitle [{"text":"5秒后可以开始准备","color":"green"}]
execute if entity @e[limit=1,type=area_effect_cloud,tag=ending_game,nbt={Age:200}] run scoreboard players set #game_state ingame 0
