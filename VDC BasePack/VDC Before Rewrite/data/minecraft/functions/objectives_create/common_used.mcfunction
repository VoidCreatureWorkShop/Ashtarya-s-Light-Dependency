#uid模块计分板
#这一条对应regular
scoreboard objectives add uid dummy 

#实体数据计分板
scoreboard objectives add ownerid dummy
#世界数据计分板
scoreboard objectives add worlddata dummy


execute unless score Mic_Normal SCBR matches 1.. run function mic:core/scoreboard


#变量计分板
scoreboard objectives add var_a dummy {"text":"变量a"}
scoreboard objectives add var_b dummy {"text":"变量b"}
scoreboard objectives add var_c dummy {"text":"变量c"}
scoreboard objectives add var_d dummy {"text":"变量d"}
scoreboard objectives add var_e dummy {"text":"变量e"}
scoreboard objectives add var_1 dummy {"text":"变量1"}
scoreboard objectives add var_2 dummy {"text":"变量2"}
scoreboard objectives add var_3 dummy {"text":"变量3"}
scoreboard objectives add var_4 dummy {"text":"变量4"}
scoreboard objectives add var_5 dummy {"text":"变量5"}
scoreboard objectives add var_6 dummy {"text":"变量6"}
scoreboard objectives add var_7 dummy {"text":"变量7"}

#触发器
scoreboard objectives add key_shift minecraft.custom:minecraft.sneak_time {"text":"潜行键"}
scoreboard objectives add shift minecraft.custom:minecraft.sneak_time {"text":"潜行键-简写"}
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
scoreboard objectives add used_coas minecraft.used:minecraft.carrot_on_a_stick  ["使用萝卜杆"]