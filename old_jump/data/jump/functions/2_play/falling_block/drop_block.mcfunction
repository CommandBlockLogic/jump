# jump:2_play/falling_block/drop_block
# executed by players

effect give @s minecraft:weakness 1 127 true
effect give @s minecraft:mining_fatigue 1 127 true
effect give @s minecraft:mining_fatigue 1 127 true
effect give @s minecraft:saturation 1 0 true
scoreboard players operation @s random_color = @e[limit=1,sort=random,tag=random_color] random_color

# all possible events here
execute if score @s random_color matches 1 align xz positioned ~.5 ~10 ~.5 run summon minecraft:falling_block ~ ~ ~ {Time:1,BlockState:{Name:"minecraft:red_concrete"},HurtEntities:1b,DropItem:0b,FallHurtAmount:4.0f,FallHurtMax:4}
execute if score @s random_color matches 2 align xz positioned ~.5 ~10 ~.5 run summon minecraft:falling_block ~ ~ ~ {Time:1,BlockState:{Name:"minecraft:orange_concrete"},HurtEntities:1b,DropItem:0b,FallHurtAmount:4.0f,FallHurtMax:4}
execute if score @s random_color matches 3 align xz positioned ~.5 ~10 ~.5 run summon minecraft:falling_block ~ ~ ~ {Time:1,BlockState:{Name:"minecraft:yellow_concrete"},HurtEntities:1b,DropItem:0b,FallHurtAmount:4.0f,FallHurtMax:4}
execute if score @s random_color matches 4 align xz positioned ~.5 ~10 ~.5 run summon minecraft:falling_block ~ ~ ~ {Time:1,BlockState:{Name:"minecraft:lime_concrete"},HurtEntities:1b,DropItem:0b,FallHurtAmount:4.0f,FallHurtMax:4}
execute if score @s random_color matches 5 align xz positioned ~.5 ~10 ~.5 run summon minecraft:falling_block ~ ~ ~ {Time:1,BlockState:{Name:"minecraft:light_blue_concrete"},HurtEntities:1b,DropItem:0b,FallHurtAmount:4.0f,FallHurtMax:4}
execute if score @s random_color matches 6 align xz positioned ~.5 ~10 ~.5 run summon minecraft:falling_block ~ ~ ~ {Time:1,BlockState:{Name:"minecraft:blue_concrete"},HurtEntities:1b,DropItem:0b,FallHurtAmount:4.0f,FallHurtMax:4}
execute if score @s random_color matches 7 align xz positioned ~.5 ~10 ~.5 run summon minecraft:falling_block ~ ~ ~ {Time:1,BlockState:{Name:"minecraft:purple_concrete"},HurtEntities:1b,DropItem:0b,FallHurtAmount:4.0f,FallHurtMax:4}