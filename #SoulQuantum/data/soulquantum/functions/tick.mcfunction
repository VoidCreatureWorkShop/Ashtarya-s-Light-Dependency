#enable区
scoreboard players enable @a xp_to_sq
scoreboard players enable @a sq_query
scoreboard players enable @a craft_sqcoin


#function区
execute as @a[scores={xp_to_sq=1..,sq_player_xp=18..}] if score @s soulquantum < @s soulquantum_max run function soulquantum:xp_sq
execute as @a[scores={craft_sqcoin=1..,soulquantum=10000..}] run function soulquantum:sqcoin_craft
execute as @a[scores={craft_sqcoin=1..,soulquantum=..10000}] run tellraw @s ["[\u00a79纸笠\u00a7r]合成灵方硬币所需的灵方不足"]
scoreboard players reset @a[scores={craft_sqcoin=1..}] craft_sqcoin
scoreboard players reset @a[scores={xp_to_sq=1..}] xp_to_sq

#默认灵魂属性设置
scoreboard players set @a[tag=!sq_setted_sqmax] soulstructure 100000
scoreboard players set @a[tag=!sq_setted_sqmax] soulcore 100000
scoreboard players set @a[tag=!sq_setted_sqmax] sssuperiority 10
scoreboard players set @a[tag=!sq_setted_sqmax] soulquantum_max 10000
scoreboard players set @a[tag=!sq_setted_sqmax] soulquantum 0
tag @a[tag=!sq_setted_sqmax] add sq_setted_sqmax
execute as @a[scores={sq_query=1..}] run function soulquantum:query

#计算灵方上限
execute as @a run function soulquantum:sqmax_cal
execute as @a if score @s soulquantum > @s soulquantum_max run scoreboard players operation @s soulquantum = @s soulquantum_max

#



execute as @a store result score @s sq_player_xp run data get entity @s XpTotal