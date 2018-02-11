# jump:1_load/init

function jump:1_load/player_config
function jump:1_load/display

# mode init
function #jump:mode/init

# timer init
function jump:timer/init

# summon timer
kill @e[tag=prepare_timer]
summon area_effect_cloud ~ ~1 ~ {Tags:["prepare_timer"],Duration:101}

# set state
scoreboard players set #game_state ingame 1