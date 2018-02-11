# jump:1_load/tick
execute if entity @e[limit=1,type=area_effect_cloud,tag=prepare_timer,nbt={Age:20}] run title @a[scores={playing=1}] actionbar ["方块将会在 4 秒后开始掉落"]
execute if entity @e[limit=1,type=area_effect_cloud,tag=prepare_timer,nbt={Age:40}] run title @a[scores={playing=1}] actionbar ["方块将会在 3 秒后开始掉落"]
execute if entity @e[limit=1,type=area_effect_cloud,tag=prepare_timer,nbt={Age:60}] run title @a[scores={playing=1}] actionbar ["方块将会在 2 秒后开始掉落"]
execute if entity @e[limit=1,type=area_effect_cloud,tag=prepare_timer,nbt={Age:80}] run title @a[scores={playing=1}] actionbar ["方块将会在 1 秒后开始掉落"]

# change game state to 2
execute if entity @e[limit=1,type=area_effect_cloud,tag=prepare_timer,nbt={Age:100}] run scoreboard players set #game_state ingame 2
