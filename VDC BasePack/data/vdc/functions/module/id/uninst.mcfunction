#注销注册信息
scoreboard players reset moduleName module_uv 
scoreboard players reset moduleName module_ov
scoreboard players reset moduleName module_lc
scoreboard players reset moduleName module_registry
scoreboard players reset moduleName module_id
scoreboard players reset moduleName module_switch

data remove entity @e[limit=1,tag=vdc] ArmorItems[0].tag.moduleList[{Name:"moduleName"}]
data remove entity @e[limit=1,tag=vdc] ArmorItems[0].tag.moduleListText[{Name:"moduleName"}]
#在这里放置记分板、实体、Storage等的删除
#↓——————————————————————







#↑——————————————————————
#在这里提示玩家手动删除文件
#↓——————————————————————
tellraw @a ["§e[VDC] moduleName 的所有分数与注册信息都已注销"]
tellraw @a ["§e[VDC] 现在请手动删除数据包中的 moduleName 相关文件，函数的路径为 存档名/datapacks/data/VDC BP/vdc/functions/moduleName"]




#模板
#tellraw @a ["§e[VDC] "]
#↑——————————————————————