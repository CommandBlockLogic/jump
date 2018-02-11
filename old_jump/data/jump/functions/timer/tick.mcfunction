# jump:timer/tick
# Handle timer update and display for each mode
# External modules should call this function instead of increment, decrement and display function separately

# set time
execute if score #timer_mode CONST matches 0 run function jump:timer/increment
execute if score #timer_mode CONST matches 1 run function jump:timer/decrement

# display current time
function jump:timer/display