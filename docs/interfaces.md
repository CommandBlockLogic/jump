# 接口定义
本文件定义了不同系统里的接口，及其需要做到的功能。系统作者请**务必遵从**本文件的定义，不然可能会导致严重漏洞。

除非特别说明，本文件以 `(namespace):(path)` 代表命令函数名称，`#(namespace):(path)` 代表命令函数标签，`(玩家名称).(记分板变量名)` 代表记分板假名。

## 全局
本系统提供 `std` 模块及命令范本以处理加载依赖及提供错误处理功能。

### 接口
* 数据包加载: 请使用 `#std:load` 标签
* 在xxx后加载: 请使用 `#(xxx):load` 标签
* 检查成功加载: 请使用 `#std:check` 标签 （部分模块可能依赖于别的模块，那就未必能成功加载，比如用户压根没放依赖项进去...）
* 全局高频: 请使用 `#std:tick` 标签
* 卸载系统: `(namespace):delete`
* 错误（需要停止其他系统运作）: 请设置 `error.common` 分数为 非0
    > 注意，错误能被调用其的命令函数捕获处理。
    > 中央流程控制命令函数应检测 `error.common` 分数以决定是否继续执行。

### 命令范本
> 注: `common` 记分板变量由`std`模块提供，故不需重新定义。

检测重新加载（删除之前加载）
```
execute if score #(namespace) common matches 1 run function (namespace):delete
```

声明加载
```
scoreboard players set #(namespace) common 0
```

检测记分板名冲突
```
execute store success score #(namespace) common run scoreboard objectives add (objective) dummy
execute if score #(namespace) common matches 0 run say 错误！ 记分板 (objective) 发生冲突！
execute if score #(namespace) common matches 0 run scoreboard players set #error common 1
```

加载依赖于此模块的系统
```
function #(namespace):load
```

## 系统划分
* 主系统，命名空间为 `jump`，提供一些地图的核心、不可取代的功能和流程控制。可参考设计模式部分与旧版本Jump系统。
    * 主要提供不同系统状态及通用系统，如计时系统、通用模式等。
* 地图系统，命名空间为 `jump_map`，提供针对地图的功能，如检测游戏开始、清空场地等。必须且只能加载一个。
    * `jump_map:tick`: 高频执行部分，需要在此进行开始游戏检测（玩家的`playmode`分数为`1`，而旁观者的`playmode`分数为`2`），所有玩家都有分数并且`playmode=1`的玩家数量大于等于模式需要的人数（模式marker的`misc`分数）时开始游戏（执行 `jump:load/init`）。
    * `jump_map:to_arena`: 传送玩家（`playmode`分数为`1`）到竞技场地。注意这可以是`tp`也可以是`spreadplayers`。
    * `jump_map:to_lobby`: 传送所有玩家回到大厅。
    * `jump_map:setup`: 清空场地，并把场地改为特定高度（可以用fill或结构方块等做到）。
    * 地图特定功能，如修改设置等。
* 模式系统，命名空间不限（但注意不要冲突），为游戏提供不同模式。
    * `#jump:mode/reg`: 注册模式，应生成模式marker（名字为模式名称，以供地图系统显示）、设置marker `mode_id`分数为`#mode_count.misc`，之后那假名分数应+1。并设置marker的 `misc`分数为其最少玩家数。
    * `#jump:mode/init`: 模式初始化，注意也得向玩家及旁观者显示说明（模式简介）。
    * `#jump:mode/check`: 检查当前模式下游戏是否结束。注意这需要检测`#mode.misc`来确定模式。如果该模式附带其他完结方式（如玩家达到特定高度、只有一个玩家存活、没有玩家存活等），则应在函数内调用那些模式（前面提到的都是主系统自带的）。
    * `(命名空间):delete`: 卸载模式系统（删除marker和为`#mode_count.misc`及其他`mode_id`比它高的marker分数-1）。
* 道具系统，命名空间不限（但注意不要冲突），为游戏提供不同道具。
    * `#jump:props/reg`: 注册道具，与模式系统类似，但直接使用`misc`分数即可。
    * `#jump:props/give`: 给予所有 `rnd` 分数为其道具ID的玩家道具。
    * `#jump:props/tick`: 高频执行道具系统。
        如果不用高频而是使用Advancement作为检测，则应检测当前 `#state.misc` 是否为2以决定是否执行。
    * `(命名空间):delete`: 与模式系统类似。

## 分数、假名
* `playmode`: 玩家模式，1为玩家，2为旁观者
* `height`: 玩家当前高度
* `maxHeight`: 玩家这回合最高高度
* `death`: 玩家死亡次数
* `rnd`: 随机分数（给每个玩家的）
* `mode_id`: 模式ID
* `misc`: 其他分数（主要供假名使用）
    * `#timer`: 供系统计时之用
    * `#mode`: 当前游戏模式ID
    * `#state`: 当前系统状态
        * 0为在大厅
        * 1为准备开始游戏（进入场地但还没开始掉落方块）
        * 2为游戏进行中
        * 3为游戏完结
    * `#min`, `#sec`, `#msec`: 分别对应于分钟、秒、毫秒，游戏计时系统使用。
    * `#time`: 为 `#min*3600 + #sec*60 + #msec` ，作为倒计时bossbar数值之用。
    * `#mode_count`: 模式数量
    * `#item_count`: 物品数量
    * `#height`: 玩家目标高度
    * `#item_mode`: 派发物品模式，把以下模式加起来就行了（自然，不包括`0`）。
        * `0`: 不派发物品
        * `1`: 开始时派发物品
        * `2`: 定时派发物品
        * `4`: 最高高度达到某水平派发物品
    * `#item_time`: 每多少秒派发一次物品
    * `#item_height`: 每多少格派发一次物品
