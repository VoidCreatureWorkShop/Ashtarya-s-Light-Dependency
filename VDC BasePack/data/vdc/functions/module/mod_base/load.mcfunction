#打开所有文件，替换以下字段，区分大小写。
# mod_base  0  1  1  0  Version  Author
# Version= 0.1.1
#模块注册
#↓——————————————————————
scoreboard players set mod_base module_uv 1
scoreboard players set mod_base module_ov 1
scoreboard players set mod_base module_lc 0
scoreboard players set mod_base module_registry 1
execute store success score mod_base vdc_var run scoreboard players get mod_base module_switch
execute if score mod_base vdc_var matches 0 run scoreboard players set mod_base module_switch 1
execute unless data entity @e[limit=1,tag=vdc] ArmorItems[0].tag.moduleList[{Name:"mod_base"}] run data modify entity @e[limit=1,tag=vdc] ArmorItems[0].tag.moduleList append value {Name:"mod_base",UseVersion:"\"1\"",OptimizeVersion:"\"1\"",RewriteVersion:"\"0\"",LastChange:"\"0\""}
execute unless data entity @e[limit=1,tag=vdc] ArmorItems[0].tag.moduleListText[{Name:"mod_base"}] run data modify entity @e[limit=1,tag=vdc] ArmorItems[0].tag.moduleListText append value {Name:"mod_base",Text:'[{"translate":"§7-mod_base","clickEvent":{"action":"run_command","value":"/function vdc:module/mod_base/off"},"hoverEvent":{"action":"show_text","value":"§eby Author"}},"            ",{"translate":"vVersion","hoverEvent":{"action":"show_text","value":"上次更改原本写好的内容的版本为：§eLC§r\\nVersion= rv.uv.ov\\nrv=重写版本\\nuv=使用版本\\nov=优化版本   优化版本不影响使用。"}}]'}
#———————————————————————
#模块初始化命令
#↓——————————————————————

forceload add 0 0 0 0 

scoreboard objectives add temp1 dummy
scoreboard objectives add temp2 dummy
scoreboard objectives add temp3 dummy
scoreboard objectives add temp4 dummy
scoreboard objectives add temp5 dummy
execute unless entity @e[tag=vdc_mod_base] positioned 0 0 0 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1000000000,Tags:["vdc_mod_base"]}
schedule function vdc:module/mod_base/aec 10000000t



#↑——————————————————————
#↓如果你的模块没有需要执行的函数，则删除下面这条命令