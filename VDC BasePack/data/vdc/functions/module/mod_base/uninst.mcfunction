#注销注册信息
scoreboard players reset mod_base module_uv 
scoreboard players reset mod_base module_ov
scoreboard players reset mod_base module_lc
scoreboard players reset mod_base module_registry
scoreboard players reset mod_base module_id
scoreboard players reset mod_base module_switch

data remove entity @e[limit=1,tag=vdc] ArmorItems[0].tag.moduleList[{Name:"mod_base"}]
data remove entity @e[limit=1,tag=vdc] ArmorItems[0].tag.moduleListText[{Name:"mod_base"}]
#在这里放置记分板、实体、Storage等的删除
#↓——————————————————————







#↑——————————————————————
#在这里提示玩家手动删除文件
#↓——————————————————————
tellraw @a ["§e[VDC] mod_base 的所有分数与注册信息都已注销"]
tellraw @a ["§e[VDC] 现在请手动删除数据包中的 mod_base 相关文件，函数的路径为 存档名/datapacks/data/VDC BP/vdc/functions/mod_base"]




#模板
#tellraw @a ["§e[VDC] "]
#↑——————————————————————