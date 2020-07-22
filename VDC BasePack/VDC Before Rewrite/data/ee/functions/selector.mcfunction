execute at @s anchored eyes positioned ^ ^ ^0.1 run function minecraft:module/sight/target_markentity
tag @e remove ee_chosen
tag @e[tag=chosen_entity] add ee_chosen
tag @e remove chosen_entity