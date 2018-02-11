# jump:0_lobby/error_detect
# tp reloggin players in last game to lobby
gamemode adventure @a[scores={playing=1}]
tp @a[scores={playing=1}] @e[name=lobby,limit=1]
scoreboard players reset @a[scores={playing=1}] playing

# tp out-range non-developer players to lobby
execute as @a[tag=!developer] at @e[name=lobby,limit=1] positioned ~-2 ~-2 ~-1 unless entity @s[distance=..10] run tag @s add out_of_range
tp @a[tag=out_of_range] @e[name=lobby,limit=1]
gamemode adventure @a[tag=out_of_range,gamemode=!adventure]
tellraw @a[tag=out_of_range] [{"text":"【警告】","color":"gold"},{"text":"游戏尚未开始，请勿离开大厅！","color":"red"}]
execute at @e[name=lobby,limit=1] run spawnpoint @a[tag=out_of_range] ~ ~-1 ~
tag @a[tag=out_of_range] remove out_of_range

# tp non-adventure players to lobby
tag @a[tag=!developer,gamemode=!adventure] add non_adv
tp @a[tag=non_adv] @e[name=lobby,limit=1]
gamemode adventure @a[tag=non_adv]
tellraw @a[tag=non_adv] [{"text":"【警告】","color":"gold"},{"text":"请勿随意更改游戏模式","color":"red"}]
tag @a[tag=non_adv] remove non_adv