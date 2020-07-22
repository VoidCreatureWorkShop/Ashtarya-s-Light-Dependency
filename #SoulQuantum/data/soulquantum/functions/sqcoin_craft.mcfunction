execute store result score @s sq_temp run clear @s iron_nugget 0
execute as @s[scores={sq_temp=4..}] run tag @s add craft_sqcoin_pass
execute as @s[tag=craft_sqcoin_pass] store success score @s sq_temp run clear @s gold_nugget 0
execute as @s[scores={sq_temp=1..},tag=craft_sqcoin_pass] run clear @s iron_nugget 4
execute as @s[scores={sq_temp=1..},tag=craft_sqcoin_pass] run clear @s iron_nugget 0
execute as @s[scores={sq_temp=1..},tag=craft_sqcoin_pass] run give @s clock{id:"soulquantumcoin",display:{Name:"{\"translate\":\"\\u00a7f灵方硬币\"}",Lore:["\" \\u00a7710.0 Unit SQ\""]}}
execute as @s[scores={sq_temp=1..},tag=craft_sqcoin_pass] run scoreboard players remove @s soulquantum 10000
tag @s remove craft_sqcoin_pass