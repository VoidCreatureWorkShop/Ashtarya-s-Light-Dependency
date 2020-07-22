#a3s
execute as @a[tag=a3s] run scoreboard players add @s timer 1
execute as @a[tag=a3s,scores={timer=61..}] run tag @s add a3s_over
execute as @a[tag=a3s_over] run scoreboard players reset @s timer
execute as @a[tag=a3s_over] run tag @s remove a3s
execute as @a[tag=a3s_over] run tag @s remove a3s_over


#a10t 
execute as @a[tag=a10t] run scoreboard players add @s timer 1
execute as @a[tag=a10t,scores={timer=10..}] run tag @s add a10t_over
execute as @a[tag=a10t_over] run scoreboard players reset @s timer
execute as @a[tag=a10t_over] run tag @s remove a10t
execute as @a[tag=a10t_over] run tag @s remove a10t_over


#r2t
scoreboard players add @e[tag=!B2tR] r2t 1
scoreboard players reset @e[scores={r2t=2..}] r2t

#r10t
scoreboard players add @e[tag=!B10tR] r10t 1
scoreboard players reset @e[scores={r10t=10..}] r10t


#r15t
scoreboard players add @e[tag=!B15tR] r15t 1
scoreboard players reset @e[scores={r15t=15..}] r15t


#r1s
scoreboard players add @e[tag=!B10sR] r1s 1
scoreboard players reset @e[scores={r1s=200..}] r1s

#r5s
scoreboard players add @e[tag=!B10sR] r5s 1
scoreboard players reset @e[scores={r5s=200..}] r5s

#r10s
scoreboard players add @e[tag=!B10sR] r10s 1
scoreboard players reset @e[scores={r10s=200..}] r10s