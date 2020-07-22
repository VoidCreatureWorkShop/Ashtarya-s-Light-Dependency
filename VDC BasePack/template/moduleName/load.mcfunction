#打开所有文件，替换以下字段，区分大小写。
# moduleName  RV  UV  OV  LC  Version  Author
# Version= RV.UV.OV
#模块注册
#↓——————————————————————
scoreboard players set moduleName module_uv UV
scoreboard players set moduleName module_ov OV
scoreboard players set moduleName module_lc LC
scoreboard players set moduleName module_registry 1
execute store success score moduleName vdc_var run scoreboard players get moduleName module_switch
execute if score moduleName vdc_var matches 0 run scoreboard players set moduleName module_switch 1
execute unless data entity @e[limit=1,tag=vdc] ArmorItems[0].tag.moduleList[{Name:"moduleName"}] run data modify entity @e[limit=1,tag=vdc] ArmorItems[0].tag.moduleList append value {Name:"moduleName",UseVersion:"\"UV\"",OptimizeVersion:"\"OV\"",RewriteVersion:"\"RV\"",LastChange:"\"LC\""}
execute unless data entity @e[limit=1,tag=vdc] ArmorItems[0].tag.moduleListText[{Name:"moduleName"}] run data modify entity @e[limit=1,tag=vdc] ArmorItems[0].tag.moduleListText append value {Name:"moduleName",Text:'[{"translate":"§7-moduleName","clickEvent":{"action":"run_command","value":"/function vdc:module/moduleName/off"},"hoverEvent":{"action":"show_text","value":"§eby Author"}},"            ",{"translate":"vVersion","hoverEvent":{"action":"show_text","value":"上次更改原本写好的内容的版本为：§eLC§r\\nVersion= rv.uv.ov\\nrv=重写版本\\nuv=使用版本\\nov=优化版本   优化版本不影响使用。"}}]'}
#———————————————————————
#模块初始化命令
#↓——————————————————————







#↑——————————————————————
#当模块开关不为0时，触发循环函数
#如果你的模块没有需要循环执行的函数，则可以删除下面这条命令
#↓———————————————————————
execute unless score moduleName module_switch matches 0 run schedule function vdc:module/moduleName/tick 1t