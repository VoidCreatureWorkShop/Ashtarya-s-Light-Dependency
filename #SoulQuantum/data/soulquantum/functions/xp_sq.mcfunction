execute store result score @s sq_player_xp run data get entity @s XpTotal
scoreboard players add @s soulquantum 1000
xp add @s -18
scoreboard players remove @s xp_to_sq 1
execute as @s[scores={xp_to_sq=1..,sq_player_xp=18..}] if score @s soulquantum < @s soulquantum_max run function soulquantum:xp_sq