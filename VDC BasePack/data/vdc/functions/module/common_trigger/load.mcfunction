#打开所有文件，替换以下字段，区分大小写。
# common_trigger  0  1  1  0  0.1.1  Rainbow_
# 0.1.1= 0.1.1
#模块注册
#↓——————————————————————
scoreboard players set common_trigger module_uv 1
scoreboard players set common_trigger module_ov 1
scoreboard players set common_trigger module_lc 0
scoreboard players set common_trigger module_registry 1
execute store success score common_trigger vdc_var run scoreboard players get common_trigger module_switch
execute if score common_trigger vdc_var matches 0 run scoreboard players set common_trigger module_switch 1
execute unless data entity @e[limit=1,tag=vdc] ArmorItems[0].tag.moduleList[{Name:"common_trigger"}] run data modify entity @e[limit=1,tag=vdc] ArmorItems[0].tag.moduleList append value {Name:"common_trigger",Use0.1.1:"\"1\"",Optimize0.1.1:"\"1\"",Rewrite0.1.1:"\"0\"",LastChange:"\"0\""}
execute unless data entity @e[limit=1,tag=vdc] ArmorItems[0].tag.moduleListText[{Name:"common_trigger"}] run data modify entity @e[limit=1,tag=vdc] ArmorItems[0].tag.moduleListText append value {Name:"common_trigger",Text:'[{"translate":"§7-common_trigger","clickEvent":{"action":"run_command","value":"/function vdc:module/common_trigger/off"},"hoverEvent":{"action":"show_text","value":"§eby Rainbow_"}},"            ",{"translate":"v0.1.1","hoverEvent":{"action":"show_text","value":"上次更改原本写好的内容的版本为：§e0§r\\n0.1.1= rv.uv.ov\\nrv=重写版本\\nuv=使用版本\\nov=优化版本   优化版本不影响使用。"}}]'}
#———————————————————————
#模块初始化命令
#↓——————————————————————
execute unless score common_trigger scb_register matches 1 run function vdc:module/common_trigger/scb_create





#↑——————————————————————
#当模块开关不为0时，触发循环函数
#如果你的模块没有需要循环执行的函数，则可以删除下面这条命令
#↓———————————————————————
execute unless score common_trigger module_switch matches 0 run schedule function vdc:module/common_trigger/tick 1t