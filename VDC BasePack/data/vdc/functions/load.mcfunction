scoreboard objectives add module_uv dummy
scoreboard objectives add module_ov dummy
scoreboard objectives add module_lc dummy 
scoreboard objectives add module_registry dummy 
scoreboard objectives add module_switch dummy 
scoreboard objectives add module_id dummy 
scoreboard objectives add vdc_version dummy 
scoreboard objectives add vdc_var dummy 
scoreboard objectives add vdc_checkerror dummy 
scoreboard objectives add module_list_last dummy 
scoreboard objectives add scb_register dummy
scoreboard objectives add mark dummy


execute unless entity @e[tag=vdc] run summon armor_stand ~ ~ ~ {Marker:1,Small:1,Invisible:1,NoBasePlate:1,ShowArms:1,ArmorItems:[{id:"structure_void",Count:1,tag:{moduleList:[],moduleListText:[]}}],Tags:["vdc"]}