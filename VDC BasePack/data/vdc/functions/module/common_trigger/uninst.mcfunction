#注销注册信息
scoreboard players reset common_trigger module_uv 
scoreboard players reset common_trigger module_ov
scoreboard players reset common_trigger module_lc
scoreboard players reset common_trigger module_registry
scoreboard players reset common_trigger module_id
scoreboard players reset common_trigger module_switch

data remove entity @e[limit=1,tag=vdc] ArmorItems[0].tag.moduleList[{Name:"common_trigger"}]
data remove entity @e[limit=1,tag=vdc] ArmorItems[0].tag.moduleListText[{Name:"common_trigger"}]
#在这里放置记分板、实体、Storage等的删除
#↓——————————————————————








#↑——————————————————————
#在这里提示玩家手动删除文件
#↓——————————————————————
tellraw @a ["§e[VDC] common_trigger 的所有分数与注册信息都已注销"]
tellraw @a ["§e[VDC] 现在请手动删除数据包中的 common_trigger 相关文件，函数的路径为 存档名/datapacks/data/VDC BP/vdc/functions/common_trigger"]




#模板
#tellraw @a ["§e[VDC] "]
#↑——————————————————————