
#难度
execute store result score difficulty worlddata run difficulty

#是否无雨-错误方案
#scoreboard players add @e[tag=rain_detector,limit=1] timer 1
#execute if score @e[tag=rain_detector,limit=1] timer matches 0 run data merge entity @e[tag=rain_detector,limit=1] {Fire:4}
#execute if score @e[tag=rain_detector,limit=1] timer matches 3 store result score rainless worlddata run data get entity @e[tag=rain_detector,limit=1] Fire
#execute if score @e[tag=rain_detector,limit=1] timer matches 3 run scoreboard players reset @e[tag=rain_detector,limit=1] time


