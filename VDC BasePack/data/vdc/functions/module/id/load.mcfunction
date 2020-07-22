#打开所有文件，替换以下字段，区分大小写。
# id  0  1  1  0  Version  Author
# Version= 0.1.1
#模块注册
#↓——————————————————————
scoreboard players set id module_uv 1
scoreboard players set id module_ov 1
scoreboard players set id module_lc 0
scoreboard players set id module_registry 1
execute store success score id vdc_var run scoreboard players get id module_switch
execute if score id vdc_var matches 0 run scoreboard players set id module_switch 1
execute unless data entity @e[limit=1,tag=vdc] ArmorItems[0].tag.moduleList[{Name:"id"}] run data modify entity @e[limit=1,tag=vdc] ArmorItems[0].tag.moduleList append value {Name:"id",UseVersion:"\"1\"",OptimizeVersion:"\"1\"",RewriteVersion:"\"0\"",LastChange:"\"0\""}
execute unless data entity @e[limit=1,tag=vdc] ArmorItems[0].tag.moduleListText[{Name:"id"}] run data modify entity @e[limit=1,tag=vdc] ArmorItems[0].tag.moduleListText append value {Name:"id",Text:'[{"translate":"§7-id","clickEvent":{"action":"run_command","value":"/function vdc:module/id/off"},"hoverEvent":{"action":"show_text","value":"§eby Author"}},"            ",{"translate":"vVersion","hoverEvent":{"action":"show_text","value":"上次更改原本写好的内容的版本为：§eLC§r\\nVersion= rv.uv.ov\\nrv=重写版本\\nuv=使用版本\\nov=优化版本   优化版本不影响使用。"}}]'}
#———————————————————————
#模块初始化命令
#↓——————————————————————
scoreboard objectives add uid dummy 
scoreboard objectives add uuido dummy "uuid_orderly"






#↑——————————————————————
#当模块开关不为0时，触发循环函数
#如果你的模块没有需要循环执行的函数，则可以删除下面这条命令
#↓———————————————————————
execute unless score id module_switch matches 0 run schedule function vdc:module/id/tick 1t