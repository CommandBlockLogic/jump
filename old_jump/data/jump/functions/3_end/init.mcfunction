# jump:3_end/init

# g3 @a
gamemode spectator @a[gamemode=!spectator]
kill @e[name=ending_game]
summon minecraft:area_effect_cloud 0 0 0 {CustomName:"[\"ending_game\"]",Tags:["ending_game"],Duration:201}

scoreboard players set #game_state ingame 3

# team settings
team empty no_hitbox
team option no_hitbox collisionRule never

# reset score
scoreboard players reset * maxHeight
scoreboard players reset * playing

execute at @e[name=lobby,limit=1] run spawnpoint @a