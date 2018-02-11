# jump:1_load/player_config

# add score to players
clear @a
execute at @e[name=lobby,limit=1] run setworldspawn ~ ~-1 ~-1
scoreboard players set @a[tag=ready] playing 1
execute at @e[name=ingame_spawn] run spawnpoint @a[tag=ready] ~ ~ ~
# only developers need to change their mode, as others would be in adventure mode already
gamemode adventure @a[tag=ready,tag=developer]
gamemode spectator @a[tag=!ready]
tag @a[scores={playing=1}] remove ready

# tp all players that are ready to playzone.
execute at @e[name=playzone_center] run tp @a[scores={playing=1}] ~ ~ ~

# set hitbox to true
team option no_hitbox collisionRule always

effect give @a instant_health 6 6 true
