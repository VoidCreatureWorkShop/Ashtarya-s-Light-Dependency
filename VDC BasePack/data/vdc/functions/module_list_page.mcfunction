scoreboard players operation @s vdc_var = @s module_list_last
scoreboard players remove @s vdc_var 1
execute store result entity @e[limit=1,tag=vdc] ArmorItems[0].tag.CalTamp int 10 run scoreboard players get @s vdc_var
execute store result score @s vdc_var run data get entity @e[limit=1,tag=vdc] ArmorItems[0].tag.CalTamp
data modify entity @e[limit=1,tag=vdc] ArmorItems[0].tag.moduleListText2 set from entity @e[limit=1,tag=vdc] ArmorItems[0].tag.moduleListText
function vdc:ml_page_del