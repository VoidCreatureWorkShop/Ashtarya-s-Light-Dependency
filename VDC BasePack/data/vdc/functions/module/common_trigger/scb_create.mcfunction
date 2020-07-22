scoreboard objectives add key_shift minecraft.custom:minecraft.sneak_time {"text":"按键-潜行"}
scoreboard objectives add key_shift_test minecraft.custom:minecraft.sneak_time {"text":"潜行检测"}
scoreboard objectives add event_dead deathCount {"text":"事件-死亡"}
scoreboard objectives add dead deathCount {"text":"事件-死亡(简写)"}
scoreboard objectives add event_attacked minecraft.custom:minecraft.damage_dealt ["事件-造成伤害"]
scoreboard objectives add attacked minecraft.custom:minecraft.damage_dealt ["事件-造成伤害(简写)"]
scoreboard objectives add event_leave_game minecraft.custom:minecraft.leave_game ["事件-离开游戏"]
scoreboard objectives add leave minecraft.custom:minecraft.leave_game  ["事件-离开游戏（简写）"]
scoreboard objectives add event_set_ctable minecraft.used:minecraft.crafting_table ["事件-放置工作台"]
scoreboard objectives add event_openbarrel minecraft.custom:minecraft.open_barrel ["事件-打开木桶"]
scoreboard objectives add open_barrel minecraft.custom:minecraft.open_barrel ["事件-打开木桶（简写）"]

scoreboard objectives add set_barrel minecraft.used:minecraft.barrel "放置木桶"

scoreboard objectives add used_coas minecraft.used:minecraft.carrot_on_a_stick  ["使用萝卜杆"]
scoreboard objectives add using_coas_delay dummy  ["使用萝卜杆延时检测"]

scoreboard players set common_trigger scb_register 1