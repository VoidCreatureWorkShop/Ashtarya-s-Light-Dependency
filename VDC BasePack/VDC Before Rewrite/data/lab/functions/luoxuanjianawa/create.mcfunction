execute as @e[nbt={Item:{tag:{id:"lab/campsword",created:0b}},OnGround:1b}] at @s run setblock ~ ~ ~ minecraft:campfire
execute as @e[nbt={Item:{tag:{id:"lab/campsword",created:0b}},OnGround:1b}] at @s align xyz positioned ~0.5 ~0.25 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {ShowArms:1,Pose:{RightArm:[70.0f,0.0f,0.0f]},NoGravity:1,HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{display:{Name:"{\"text\":\"\\u00a7f\\u00a7n螺旋剑\"}",Lore:["{\"text\":\"\\u00a7f\\u00a7n\"}","{\"text\":\"\\u00a7f\\u00a7n祭祀场的营火遗失的剑。\"}","{\"text\":\"\\u00a7f\\u00a7n不能作为武器装备。\"}","{\"text\":\"\\u00a7f\\u00a7n\"}","{\"text\":\"\\u00a7f\\u00a7n刺向祭祀场的营火后，\"}","{\"text\":\"\\u00a7f\\u00a7n能够取回力量，在各个营火间传送。\"}","{\"text\":\"\\u00a7f\\u00a7n\"}","{\"text\":\"\\u00a7f\\u00a7n这把剑仅赐予被选上的余灰。\"}","{\"text\":\"\\u00a7f\\u00a7n审判者化为剑鞘，一直等待着余灰\"}"]},AttributeModifiers:[],id:"lab/campsword"},created:1b}],Invisible:1,Tags:["system","block","ds_campfire"],}
kill @e[nbt={Item:{tag:{id:"lab/campsword",created:0b}},OnGround:1b}]