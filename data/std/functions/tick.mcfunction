# std:tick
execute if score #error common matches 0 if score #std common matches 0 run function #std:load
execute if score #error common matches 0 if score #std common matches 0 run function #std:check
execute if score #std common matches 0 run scoreboard players set #std common 1

execute if score #error common matches 0 run function #std:tick
