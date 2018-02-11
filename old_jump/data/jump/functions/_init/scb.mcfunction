# jump:_init/scb
scoreboard objectives add fallingTimer dummy 方块掉落间隔计时器
scoreboard objectives add ingame dummy 游戏进程
scoreboard objectives add playing dummy 玩家是否在进行游戏
scoreboard objectives add dieIngame deathCount 被砸史
scoreboard objectives add maxHeight dummy 攀登记录
scoreboard objectives add currentHeight dummy 目前高度
scoreboard objectives add CONST dummy 常量
scoreboard objectives add random_color dummy 随机颜色分数

scoreboard players set #game_state ingame 0