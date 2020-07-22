execute if block ~ ~ ~ crafting_table align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Tags:["system","block","machine","mic"],Marker:1,NoGravity:1,Invisible:1,Small:1}
execute if block ~ ~ ~ crafting_table run scoreboard players add MicCount_History worlddata 1
execute if block ~ ~ ~ crafting_table run scoreboard players add MicCount worlddata 1
execute if block ~ ~ ~ crafting_table run scoreboard players operation @e[limit=1,sort=nearest,tag=mic] Micid = MicCount_History worlddata
execute if block ~ ~ ~ crafting_table run scoreboard players operation @e[limit=1,sort=nearest,tag=mic] MicSeter = @s uid
execute if block ~ ~ ~ crafting_table run setblock ~ ~ ~ barrel

execute if block ~ ~ ~ air rotated as @s anchored feet positioned ^ ^ ^0.2 run function mic:core/block/find