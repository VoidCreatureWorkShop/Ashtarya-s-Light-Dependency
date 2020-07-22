tellraw @a[tag=opened_module_list,scores={module_list_last=-1}] "\n\u00a7eVDC BasePack   启动模块列表\n_____________________\n"
tellraw @s "\n\u00a7eVDC BasePack   模块列表\n_____________________\n"
function vdc:module_list_page
execute if data entity @e[limit=1,tag=vdc] ArmorItems[0].tag.moduleListText[0].Text run tellraw @s {"nbt":"ArmorItems[0].tag.moduleListText[0].Text","entity":"@e[limit=1,tag=vdc]","interpret":true}
execute if data entity @e[limit=1,tag=vdc] ArmorItems[0].tag.moduleListText[1].Text run tellraw @s {"nbt":"ArmorItems[0].tag.moduleListText[1].Text","entity":"@e[limit=1,tag=vdc]","interpret":true}
execute if data entity @e[limit=1,tag=vdc] ArmorItems[0].tag.moduleListText[2].Text run tellraw @s {"nbt":"ArmorItems[0].tag.moduleListText[2].Text","entity":"@e[limit=1,tag=vdc]","interpret":true}
execute if data entity @e[limit=1,tag=vdc] ArmorItems[0].tag.moduleListText[3].Text run tellraw @s {"nbt":"ArmorItems[0].tag.moduleListText[3].Text","entity":"@e[limit=1,tag=vdc]","interpret":true}
execute if data entity @e[limit=1,tag=vdc] ArmorItems[0].tag.moduleListText[4].Text run tellraw @s {"nbt":"ArmorItems[0].tag.moduleListText[4].Text","entity":"@e[limit=1,tag=vdc]","interpret":true}
execute if data entity @e[limit=1,tag=vdc] ArmorItems[0].tag.moduleListText[5].Text run tellraw @s {"nbt":"ArmorItems[0].tag.moduleListText[5].Text","entity":"@e[limit=1,tag=vdc]","interpret":true}
execute if data entity @e[limit=1,tag=vdc] ArmorItems[0].tag.moduleListText[6].Text run tellraw @s {"nbt":"ArmorItems[0].tag.moduleListText[6].Text","entity":"@e[limit=1,tag=vdc]","interpret":true}
execute if data entity @e[limit=1,tag=vdc] ArmorItems[0].tag.moduleListText[7].Text run tellraw @s {"nbt":"ArmorItems[0].tag.moduleListText[7].Text","entity":"@e[limit=1,tag=vdc]","interpret":true}
execute if data entity @e[limit=1,tag=vdc] ArmorItems[0].tag.moduleListText[8].Text run tellraw @s {"nbt":"ArmorItems[0].tag.moduleListText[8].Text","entity":"@e[limit=1,tag=vdc]","interpret":true}
execute if data entity @e[limit=1,tag=vdc] ArmorItems[0].tag.moduleListText[9].Text run tellraw @s {"nbt":"ArmorItems[0].tag.moduleListText[9].Text","entity":"@e[limit=1,tag=vdc]","interpret":true}
#——————————————————————————————————

#——————————————————————————————————
tellraw @s ["_____________________\n",{"text":"[上一页]   ","clickEvent":{"action":"run_command","value":"/function vdc:page_back"}},{"score":{"objective":"module_list_last","name":"*"}},{"text":"   [下一页]","clickEvent":{"action":"run_command","value":"/function vdc:page_next"}}]
execute as @s run data modify entity @e[limit=1,tag=vdc] ArmorItems[0].tag.moduleListText set from entity @e[limit=1,tag=vdc] ArmorItems[0].tag.moduleListText2