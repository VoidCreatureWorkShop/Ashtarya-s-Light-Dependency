execute if data entity @s Inventory[{Count:1b,Slot:15b,id:"minecraft:ender_pearl"}] if data entity @s Inventory[{Count:1b,Slot:16b,id:"minecraft:iron_ingot"}] if data entity @s Inventory[{Count:1b,Slot:17b,id:"minecraft:iron_nugget"}] if data entity @s Inventory[{Count:1b,Slot:24b,id:"minecraft:iron_nugget"}] if data entity @s Inventory[{Count:1b,Slot:25b,id:"minecraft:iron_ingot"}] if data entity @s Inventory[{Count:1b,Slot:26b,id:"minecraft:iron_nugget"}] if data entity @s Inventory[{Count:1b,Slot:33b,id:"minecraft:charcoal"}] if data entity @s Inventory[{Count:1b,Slot:34b,id:"minecraft:gold_ingot"}] if data entity @s Inventory[{Count:1b,Slot:35b,id:"minecraft:lava_bucket"}] unless data entity @s Inventory[{Slot:23b}] run tag @s add crafting_pass

replaceitem entity @s[tag=crafting_pass] inventory.6 air
replaceitem entity @s[tag=crafting_pass] inventory.7 air
replaceitem entity @s[tag=crafting_pass] inventory.8 air
replaceitem entity @s[tag=crafting_pass] inventory.15 air
replaceitem entity @s[tag=crafting_pass] inventory.16 air
replaceitem entity @s[tag=crafting_pass] inventory.17 air
replaceitem entity @s[tag=crafting_pass] inventory.24 air
replaceitem entity @s[tag=crafting_pass] inventory.25 air
replaceitem entity @s[tag=crafting_pass] inventory.26 air

replaceitem entity @s[tag=crafting_pass] inventory.14 iron_sword{display:{Name:"{\"text\":\"\\u00a7f\\u00a7n螺旋剑\"}",Lore:["{\"text\":\"\\u00a7f\\u00a7n\"}","{\"text\":\"\\u00a7f\\u00a7n祭祀场的营火遗失的剑。\"}","{\"text\":\"\\u00a7f\\u00a7n不能作为武器装备。\"}","{\"text\":\"\\u00a7f\\u00a7n\"}","{\"text\":\"\\u00a7f\\u00a7n刺向祭祀场的营火后，\"}","{\"text\":\"\\u00a7f\\u00a7n能够取回力量，在各个营火间传送。\"}","{\"text\":\"\\u00a7f\\u00a7n\"}","{\"text\":\"\\u00a7f\\u00a7n这把剑仅赐予被选上的余灰。\"}","{\"text\":\"\\u00a7f\\u00a7n审判者化为剑鞘，一直等待着余灰\"}"]},AttributeModifiers:[],id:"lab/campsword",created:0b} 1

tag @s remove crafting_pass


