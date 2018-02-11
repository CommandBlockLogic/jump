# jump:timer/init
# initialize timer display for different mode
# you have to make sure that the #timer_mode is set properly before calling this function

# kill markers left
kill @e[tag=timer_display]

# init markers
execute if score #timer_mode CONST matches 0 run summon area_effect_cloud 0 0 0 {Duration:2100000000,Tags:["timer_display"],CustomName:"[\"游戏已进行 \"]"}
execute if score #timer_mode CONST matches 1 run summon area_effect_cloud 0 0 0 {Duration:2100000000,Tags:["timer_display"],CustomName:"[\"游戏尚余 \"]"}
