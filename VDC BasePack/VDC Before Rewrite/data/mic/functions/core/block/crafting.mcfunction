execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:iron_ingot",Count:1b,Slot:16b},{id:"minecraft:shears",Count:1b,Slot:24b},{id:"minecraft:crafting_table",Count:1b,Slot:25b},{id:"minecraft:iron_axe",Count:1b,Slot:26b},{id:"minecraft:oak_log",Count:1b,Slot:34b},]}] unless data entity @s Inventory[{Slot:15b}] unless data entity @s Inventory[{Slot:17b}] unless data entity @s Inventory[{Slot:33b}] unless data entity @s Inventory[{Slot:33b}] run tag @s add pass
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:iron_ingot",Count:1b,Slot:34b},{id:"minecraft:shears",Count:1b,Slot:24b},{id:"minecraft:crafting_table",Count:1b,Slot:25b},{id:"minecraft:iron_axe",Count:1b,Slot:26b},{id:"minecraft:oak_log",Count:1b,Slot:16b},]}] unless data entity @s Inventory[{Slot:15b}] unless data entity @s Inventory[{Slot:17b}] unless data entity @s Inventory[{Slot:33b}] unless data entity @s Inventory[{Slot:33b}] run tag @s add pass
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:iron_ingot",Count:1b,Slot:34b},{id:"minecraft:shears",Count:1b,Slot:26b},{id:"minecraft:crafting_table",Count:1b,Slot:25b},{id:"minecraft:iron_axe",Count:1b,Slot:24b},{id:"minecraft:oak_log",Count:1b,Slot:16b},]}] unless data entity @s Inventory[{Slot:15b}] unless data entity @s Inventory[{Slot:17b}] unless data entity @s Inventory[{Slot:33b}] unless data entity @s Inventory[{Slot:33b}] run tag @s add pass
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:iron_ingot",Count:1b,Slot:16b},{id:"minecraft:shears",Count:1b,Slot:26b},{id:"minecraft:crafting_table",Count:1b,Slot:25b},{id:"minecraft:iron_axe",Count:1b,Slot:24b},{id:"minecraft:oak_log",Count:1b,Slot:34b},]}] unless data entity @s Inventory[{Slot:15b}] unless data entity @s Inventory[{Slot:17b}] unless data entity @s Inventory[{Slot:33b}] unless data entity @s Inventory[{Slot:33b}] run tag @s add pass

execute as @a[tag=pass] run replaceitem entity @s inventory.7 air
execute as @a[tag=pass] run replaceitem entity @s inventory.15 air
replaceitem entity @a[tag=pass] inventory.16 minecraft:crafting_table{uid:"melody_item_crafter",display:{Name:'["\\u00a7eMIC\\u00a7f工作台"]',Lore:['["\\u00a7f旋律物品合成器"]','["\\u00a7e多功能工作台二代"]']}}
execute as @a[tag=pass] run replaceitem entity @s inventory.17 air
execute as @a[tag=pass] run replaceitem entity @s inventory.25 air

execute as @a[tag=pass] run tag @s remove pass