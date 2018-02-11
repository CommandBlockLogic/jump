# jump:load/tick

execute if score #timer misc matches 80 run title @a[scores={playing=1}] actionbar ["方块将会在 4 秒后开始掉落"]
execute if score #timer misc matches 60 run title @a[scores={playing=1}] actionbar ["方块将会在 3 秒后开始掉落"]
execute if score #timer misc matches 40 run title @a[scores={playing=1}] actionbar ["方块将会在 2 秒后开始掉落"]
execute if score #timer misc matches 20 run title @a[scores={playing=1}] actionbar ["方块将会在 1 秒后开始掉落"]
execute if score #timer misc matches 0 run scoreboard players set #state misc 2

scoreboard players remove #timer misc 1