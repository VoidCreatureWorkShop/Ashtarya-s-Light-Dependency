tag @s add MicTooFar

execute as @e[tag=mic,distance=..7] at @s if score @s Micid = @e[limit=1,tag=MicTooFar] Using_Micid run tag @e[limit=1,tag=MicTooFar] add MicInReach
execute unless entity @s[tag=MicInReach] at @s run function mic:core/lock/unlock

tag @s remove MicTooFar
tag @s remove MicInReach