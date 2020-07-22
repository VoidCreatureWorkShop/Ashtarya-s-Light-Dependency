execute if score @s vdc_var matches 1.. run data remove entity @e[limit=1,tag=vdc] ArmorItems[0].tag.moduleListText[0]
execute if score @s vdc_var matches 1.. run scoreboard players remove @s vdc_var 1
execute if score @s vdc_var matches 1.. run function vdc:ml_page_del