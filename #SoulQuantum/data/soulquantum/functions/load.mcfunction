#灵方
#soulquantum=灵方，战斗储备灵方 soulquantum_max目前灵方上限 soulstructure 灵魂结构（灵魂本源的上限，影响灵方上限） soulcore本源灵魂（非战斗使用 sssuperiority灵魂结构优越性（灵方上限/灵魂结构 的比值，SQ引聚速，。可强行调用本源灵方的比值等等，未来可能会作为天赋选项）
scoreboard objectives add soulquantum trigger
scoreboard objectives add soulquantum_max trigger
scoreboard objectives add soulstructure trigger
scoreboard objectives add soulcore trigger
scoreboard objectives add sssuperiority trigger



#经验转化灵方
scoreboard objectives add xp_to_sq trigger
#灵方-灵方币
scoreboard objectives add craft_sqcoin trigger

#查询
scoreboard objectives add sq_query trigger

#经验
scoreboard objectives add sq_player_xp dummy


scoreboard objectives add sq_temp dummy
scoreboard objectives add number dummy
scoreboard players set 100 number 100


tellraw @a ["<纸笠> \u00a79灵方系统已载入 \u00a7f感谢使用虚灵工坊的作品"]