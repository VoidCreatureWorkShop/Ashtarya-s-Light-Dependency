#第二行的命令替换common_trigger并添补/删除空格。 3个空格=2个英文字母或_下划线。    总长为18个字母。  0.1.0换成总的版本 x.1.0  x一般为1，如果不为1，则代表本模块曾经重置过。
#请替换作者名、0。这里的0要写 全版本号 。
#需替换名词  common_trigger 0  Rainbow_ v.0.1.0
tellraw @a[scores={module_list_BP=-1}] [{"translate":"-§7common_trigger","hoverEvent":{"action":"show_text","value":"§eby Rainbow_"}},"      ",{"translate":"v.0.1.0","hoverEvent":{"action":"show_text","value":"上次更改原本写好的内容的版本为：§e0§r\n0.1.0= 0.1.0\n0=重写版本\n1=使用版本\n0=优化版本   优化版本不影响使用。"}}]
#下面写需要的函数。
#↓——————————————————————

function vdc:module/common_trigger/event
function vdc:module/common_trigger/key




#↑——————————————————————
#
execute unless score common_trigger module_switch matches 0 run schedule function vdc:module/common_trigger/tick 1t