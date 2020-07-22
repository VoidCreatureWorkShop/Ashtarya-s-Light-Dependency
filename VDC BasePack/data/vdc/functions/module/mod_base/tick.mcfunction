#需要循环执行的命令。
#↓——————————————————————






#↑——————————————————————
#
execute unless score moduleName module_switch matches 0 run schedule function vdc:module/moduleName/tick 1t