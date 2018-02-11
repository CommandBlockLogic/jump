# jump:load/init

# display related
execute as @a[scores={playmode=1}] at @s run playsound block.note.pling voice @s ~ ~ ~ 1 1
title @a[scores={playmode=1}] times 5 40 5
title @a[scores={playmode=1}] title [{"text":"您有五秒预备时间","color":"aqua"}]
function #jump:mode/init
function jump_map:setup
title @a actionbar ["方块将会在 5 秒后开始掉落"]
scoreboard objectives setdisplay sidebar maxHeight

# to arena, change gamemode and status
function jump_map:to_arena
gamemode adventure @a[scores={playmode=1}]
gamemode spectator @a[scores={playmode=2}]
effect give @a instant_health 6 6 true

# set timer to 5s
scoreboard players set #timer misc 100
# set state
scoreboard players set #state misc 1