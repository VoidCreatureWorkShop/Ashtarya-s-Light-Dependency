tag @s add Micdisconnect

execute as @e[tag=mic] at @s if score @s Micid = @e[limit=1,tag=Micdisconnect] Using_Micid run setblock ~ ~ ~ barrel destroy
execute as @e[tag=mic] at @s if score @s Micid = @e[limit=1,tag=Micdisconnect] Using_Micid run scoreboard players reset @s useruid
execute as @e[tag=mic] at @s if score @s Micid = @e[limit=1,tag=Micdisconnect] Using_Micid run kill @e[limit=1,sort=nearest,nbt={Item:{id:"minecraft:barrel"}}]
execute as @e[tag=mic] at @s if score @s Micid = @e[limit=1,tag=Micdisconnect] Using_Micid run kill @e[nbt={Item:{tag:{isBackGround:1b}}}]
execute as @e[tag=mic] at @s if score @s Micid = @e[limit=1,tag=Micdisconnect] Using_Micid run kill @e[nbt={Item:{tag:{isFunctionalButton:1b}}}]
execute as @e[tag=mic] at @s if score @s Micid = @e[limit=1,tag=Micdisconnect] Using_Micid run kill @e[nbt={Item:{tag:{isIllusoryItem:1b}}}]
execute as @e[tag=mic] at @s if score @s Micid = @e[limit=1,tag=Micdisconnect] Using_Micid run tp @e[type=item,distance=..1] @e[tag=Micdisconnect,limit=1]

scoreboard players reset @s Using_Micid
tag @s remove Micdisconnect