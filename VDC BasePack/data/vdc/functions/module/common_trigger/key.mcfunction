#shift
execute as @a unless entity @s[scores={key_shift_test=1..}] run scoreboard players reset @s key_shift
scoreboard players reset @a[scores={key_shift_test=1..}] key_shift_test
