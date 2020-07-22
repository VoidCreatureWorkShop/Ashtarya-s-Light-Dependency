#本数据包相关计分板

scoreboard objectives add number dummy {"text":"number"}
function minecraft:func_scb
function calculator/load

tellraw @a [{"text":"§8§l—§a通用§b开发资源整合§a数据包 §a[§b矿船§a] §f加载完毕"}]


#雨水探测器
#execute unless entity @e[tag=rain_detector] run summon armor_stand ~ 300 ~ {Marker:1,NoGravity:1,Invisible:1,Tags:["rain_detector"]}


#常用记分板
function minecraft:objectives_create/common_used 

#数据计分板

scoreboard objectives add pos_x dummy
scoreboard objectives add pos_y dummy
scoreboard objectives add pos_z dummy
scoreboard objectives add rotation_x dummy
scoreboard objectives add rotation_y dummy


#坐标及转角
scoreboard objectives add pos_x dummy {"text":"坐标X"}
scoreboard objectives add pos_y dummy {"text":"坐标Y"}
scoreboard objectives add pos_z dummy {"text":"坐标Z"}
scoreboard objectives add sight_target_x dummy {"text":"看向的目标地点X"}
scoreboard objectives add sight_target_y dummy {"text":"看向的目标地点Y"}
scoreboard objectives add sight_target_z dummy {"text":"看向的目标地点Z"}
scoreboard objectives add rotation_x dummy
scoreboard objectives add rotation_y dummy
#计时器
scoreboard objectives add timer dummy {"text":"Timer","color":"gold"}
scoreboard objectives add timer2 dummy {"text":"Timer2Line","color":"gold"}
scoreboard objectives add r10t dummy {"text":"rpeatingtimer_10tick","color":"gold"}
scoreboard objectives add r15t dummy {"text":"rpeatingtimer_15tick","color":"gold"}
scoreboard objectives add r2t dummy {"text":"rpeatingtimer_2tick","color":"gold"}
scoreboard objectives add r1s dummy {"text":"rpeatingtimer_1second","color":"gold"}
scoreboard objectives add r3s dummy {"text":"rpeatingtimer_3seconds","color":"gold"}
scoreboard objectives add r5s dummy {"text":"rpeatingtimer_5seconds","color":"gold"}
scoreboard objectives add r10s dummy {"text":"rpeatingtimer_10seconds","color":"gold"}

#存在时间
scoreboard objectives add time_tick dummy
scoreboard objectives add time_tick2 dummy
scoreboard objectives add time_second dummy
scoreboard objectives add time_second2 dummy
scoreboard objectives add time_min dummy
scoreboard objectives add time_min2 dummy
scoreboard objectives add time_gameday dummy




#scoreboard objectives add key_ minecraft.custom:minecraft. {"text":""}

#掉落物中间实体
execute unless entity @e[tag=looting_temp] run summon zombie ~ -10 ~ {Tags:["system","looting_temp"],NoAI:1,NoGravity:1,Silent:1,DeathLootTable:"minecraft:tool/loot_mainhand"}

function objectives_create/attributes


#模块启用

function minecraft:number/number1






#EE:输入
scoreboard objectives add ee_enter dummy

