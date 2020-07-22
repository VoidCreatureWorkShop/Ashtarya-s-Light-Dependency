#将世界原点强制加载
execute unless entity @e[tag=world_origin_loader] run summon armor_stand ~ ~ ~ {Tags:[world_origin_loader],Marker:1,Invisible:1,NoGravity:1}
scoreboard players add w_o_l timer 1
execute if score w_o_l timer matches 199.. run spreadplayers 0 0 0 16 false @e[tag=world_origin_loader]
execute if score w_o_l timer matches 199.. run scoreboard players reset w_o_l timer

#触发器
function trigger/event
function trigger/key

#重置变量计分板
scoreboard players reset * var_a
scoreboard players reset * var_b
scoreboard players reset * var_c
scoreboard players reset * var_d
scoreboard players reset * var_e


#玩家数据模块
execute as @a unless score playerdata UMS matches 0 run function minecraft:playerdata/rotation
execute as @a unless score playerdata UMS matches 0 run function minecraft:playerdata/position



#计时器
function timer/main

#uid模块
function minecraft:uid/regular_distribute


#实体分类模块
function classify/main

#世界数据模块
function minecraft:worlddata/base

#实体数据模块-属性
function minecraft:entitydata/attributes

#MIC
execute unless score mic UMS matches 0 run function mic:core/loop

#启用模块

execute unless score chunk UMS = 0 number run function minecraft:chunk/check
execute unless score uid_regular UMS = 0 number run function minecraft:uid/regular_distribute

#启用隐藏模块
execute if score calculator UMS = 1 number run function minecraft:calculator/main
execute if score damage_tester UMS matches 1.. run function lab:damage_tester/main