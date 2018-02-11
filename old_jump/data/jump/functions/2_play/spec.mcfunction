# jump:2_play/spec

# dead player
gamemode spectator @a[scores={dieIngame=1..}]
execute at @e[name=ingame_spawn,limit=1] run tp @a[scores={dieIngame=1..}] ~ ~ ~
scoreboard players reset @a[scores={dieIngame=1..}] dieIngame

# spec players that are not ingame.
execute as @a unless entity @s[gamemode=adventure,scores={playing=1}] run tag @s add not_ingame
gamemode spectator @a[tag=not_ingame]
scoreboard players reset @a[tag=not_ingame] playing
tag @a[tag=not_ingame] remove not_ingame