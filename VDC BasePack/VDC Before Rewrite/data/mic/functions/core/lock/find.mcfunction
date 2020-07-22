tag @s remove MIC_found
#execute align xyz if entity @e[dx=1,dy=1,dz=1,tag=mic] run data merge block ~ ~ ~ {Lock:"10243769543"}
execute align xyz positioned ~ ~-0.5 ~ if entity @e[dx=1,dy=1,dz=1,tag=mic] positioned ~ ~0.5 ~ run data merge block ~ ~ ~ {Lock:"514172087"}
execute align xyz positioned ~ ~-0.5 ~ if entity @e[dx=1,dy=1,dz=1,tag=mic] positioned ~ ~0.5 ~ run scoreboard players operation @e[limit=1,sort=nearest,tag=mic] useruid = @s uid
execute align xyz positioned ~ ~-0.5 ~ if entity @e[dx=1,dy=1,dz=1,tag=mic] positioned ~ ~0.5 ~ run scoreboard players operation @s Using_Micid = @e[limit=1,sort=nearest,tag=mic] Micid

execute align xyz positioned ~ ~-0.5 ~ if entity @e[dx=1,dy=1,dz=1,tag=mic] run tag @s remove moving
execute align xyz positioned ~ ~-0.5 ~ if entity @e[dx=1,dy=1,dz=1,tag=mic] run tag @s remove rotating


execute align xyz positioned ~ ~-0.5 ~ unless entity @e[dx=1,dy=1,dz=1,tag=mic] run tag @s add MIC_found
execute align xyz positioned ~ ~-0.5 ~ if entity @e[dx=1,dy=1,dz=1,tag=mic] run say 1
execute if entity @s[distance=..7,tag=MIC_found] rotated as @s anchored feet positioned ^ ^ ^0.2 run function mic:core/lock/find