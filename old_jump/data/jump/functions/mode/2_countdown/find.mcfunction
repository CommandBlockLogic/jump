# jump:mode/2_countdown/find

# find the player with the largest maxHeight
scoreboard players set #max maxHeight 0
scoreboard players operation #max maxHeight > @a[scores={playing=1}] maxHeight
execute as @a[scores={playing=1}] if score @s maxHeight = #max maxHeight run tag @s add victory
tellraw @a [{"text":"本次的最高高度：","color":"dark_red"},{"score":{"name":"#max","objective":"maxHeight"},"color":"gold"}]
function jump:mode/2_countdown/victory
scoreboard players reset #max maxHeight