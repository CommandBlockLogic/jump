# jump:2_play/falling_block/tick

# trigger falling block(timer)
scoreboard players add @a[gamemode=adventure,scores={playing=1}] fallingTimer 1
execute as @a[scores={fallingTimer=3..,playing=1}] at @s run function jump:2_play/falling_block/drop_block
scoreboard players set @a[scores={fallingTimer=3..,playing=1}] fallingTimer 0