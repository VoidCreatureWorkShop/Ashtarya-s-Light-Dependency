execute as @e store result score @s health run data get entity @s Health 10
execute as @e store result score @s e_maxHealth run data get entity @s Attributes[{Name:"generic.maxHealth"}].Base 10
execute as @e store result score @s e_attackDamage run data get entity @s Attributes[{Name:"generic.attackDamage"}].Base 100
execute as @e store result score @s e_movementSpeed run data get entity @s Attributes[{Name:"generic.movementSpeed"}].Base 100
execute as @e store result score @s e_followRange run data get entity @s Attributes[{Name:"generic.followRange"}].Base 
execute as @e store result score @s e_knockbackResis run data get entity @s Attributes[{Name:"generic.knockbackResistance"}].Base 100
execute as @e store result score @s e_armor run data get entity @s Attributes[{Name:"generic.armor"}].Base
execute as @e store result score @s e_armorToughness run data get entity @s Attributes[{Name:"generic.armorToughness"}].Base
execute as @e store result score @s e_attackSpeed run data get entity @s Attributes[{Name:"generic.attackSpeed"}].Base 100
execute as @e store result score @s e_jumpStrength run data get entity @s Attributes[{Name:"horse.jumpStrength"}].Base 100
execute as @e store result score @s e_flyingSpeed run data get entity @s Attributes[{Name:"generic.flyingSpeed"}].Base 100
execute as @e store result score @s e_Reinforcements run data get entity @s Attributes[{Name:"zombie.spawnReinforcements"}].Base 100
