execute as @a[tag=a10tick] run scoreboard players add @s timer 1
execute as @a[tag=a10tick,scores={timer=10..}] run tag @s add a10tick_over
execute as @a[tag=a10tick_over] run scoreboard players reset @s timer
execute as @a[tag=a10tick_over] run tag @s remove a10tick
execute as @a[tag=a10tick_over] run tag @s remove a10tick_over
