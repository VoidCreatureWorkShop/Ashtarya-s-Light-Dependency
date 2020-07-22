#block
function mic:core/block/broke
function mic:core/block/crafting
function mic:core/block/find
function mic:core/block/setblock
function mic:core/block/setblock_mode1

#lock
function mic:core/lock/lock
execute as @a[scores={Using_Micid=1..},tag=rotating] at @s run function mic:core/lock/unlock
execute as @a at @s run function mic:core/lock/leave_unlock
