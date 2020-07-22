#允许普通玩家使用GUI
scoreboard players enable @a c_GUI

#GUI
tellraw @a[scores={c_GUI=1}] ["┌—————--—————┐"]
tellraw @a[scores={c_GUI=1}] [" |calculator Alpha1.0 |"]
tellraw @a[scores={c_GUI=1}] ["├——┬——┬——┬——┤"]
tellraw @a[scores={c_GUI=1}] [" |",{"text":"Ans ","clickEvent":{"action":"run_command","value":"/trigger c_Ans set 1"}},"|",{"text":"  7  ","clickEvent":{"action":"run_command","value":"/trigger c_enter set 7"}},"|",{"text":"  8  ","clickEvent":{"action":"run_command","value":"/trigger c_enter set 8"}},"|",{"text":"  9   ","clickEvent":{"action":"run_command","value":" /trigger c_enter set 9"}},"|",{"text":"          [  0  ]","clickEvent":{"action":"run_command","value":" /trigger c_enter set 0"}}]
tellraw @a[scores={c_GUI=1}] ["├——┼——┼——┼——┤"]
tellraw @a[scores={c_GUI=1}] [" |",{"text":"  +  ","clickEvent":{"action":"run_command","value":"/trigger c_operator set 1"}},"|",{"text":"  4  ","clickEvent":{"action":"run_command","value":"/trigger c_enter set 4"}},"|",{"text":"  5  ","clickEvent":{"action":"run_command","value":"/trigger c_enter set 5"}},"|",{"text":"  6   ","clickEvent":{"action":"run_command","value":" /trigger c_enter set 6"}},"|"]
tellraw @a[scores={c_GUI=1}] ["├——┼——┼——┼——┤"]
tellraw @a[scores={c_GUI=1}] [" |",{"text":"  -  ","clickEvent":{"action":"run_command","value":"/trigger c_operator set 2"}},"|",{"text":"  1  ","clickEvent":{"action":"run_command","value":"/trigger c_enter set 1"}},"|",{"text":"  2  ","clickEvent":{"action":"run_command","value":"/trigger c_enter set 2"}},"|",{"text":"  3   ","clickEvent":{"action":"run_command","value":" /trigger c_enter set 3"}},"|"]
tellraw @a[scores={c_GUI=1}] ["├——┼——┼——┼——┤"]
tellraw @a[scores={c_GUI=1}] [" |",{"text":"  =  ","clickEvent":{"action":"run_command","value":"/trigger c_operating set 1"}},"|",{"text":"  x  ","clickEvent":{"action":"run_command","value":"/trigger c_operator set 3"}},"|",{"text":"  ÷  ","clickEvent":{"action":"run_command","value":"/trigger c_operator set 4"}},"|",{"text":"  ^   ","clickEvent":{"action":"run_command","value":" /trigger c_operator set 5"}},"|"]
tellraw @a[scores={c_GUI=1}] ["├——┴——┴——┴——┤"]
tellraw @a[scores={c_GUI=1}] [" |By Rainbow_         |"]
tellraw @a[scores={c_GUI=1}] ["└—————--—————┘"]
scoreboard players reset @a[scores={c_GUI=1}] c_GUI

#允许普通玩家修改运算数字和运算符
scoreboard players enable @a oa_1
scoreboard players enable @a oa_2
scoreboard players enable @a oa_3
scoreboard players enable @a oa_4
scoreboard players enable @a oa_5
scoreboard players enable @a oa_6
scoreboard players enable @a oa_7
scoreboard players enable @a ob_1
scoreboard players enable @a ob_2
scoreboard players enable @a ob_3
scoreboard players enable @a ob_4
scoreboard players enable @a ob_5
scoreboard players enable @a ob_6
scoreboard players enable @a ob_7
scoreboard players enable @a c_operator
scoreboard players enable @a c_enter
scoreboard players enable @a c_operating
scoreboard players enable @a c_Ans

#给标签
#以下为第一个数
execute as @a[scores={c_enter=-2147483647..,c_operator=0}] run scoreboard players reset @s oa
#十万位进百万位
execute as @a[scores={c_operator=0,c_enter=-2147483647..}] run scoreboard players operation @s oa_7 = @s oa_6
execute as @a[scores={c_operator=0,c_enter=-2147483647..}] run scoreboard players operation @s oa_7 *= 10 number
#万位进十万位
execute as @a[scores={c_operator=0,c_enter=-2147483647..}] run scoreboard players operation @s oa_6 = @s oa_5
execute as @a[scores={c_operator=0,c_enter=-2147483647..}] run scoreboard players operation @s oa_6 *= 10 number
#千位进万位
execute as @a[scores={c_operator=0,c_enter=-2147483647..}] run scoreboard players operation @s oa_5 = @s oa_4
execute as @a[scores={c_operator=0,c_enter=-2147483647..}] run scoreboard players operation @s oa_5 *= 10 number
#百位进千位
execute as @a[scores={c_operator=0,c_enter=-2147483647..}] run scoreboard players operation @s oa_4 = @s oa_3
execute as @a[scores={c_operator=0,c_enter=-2147483647..}] run scoreboard players operation @s oa_4 *= 10 number
#十位进百位
execute as @a[scores={c_operator=0,c_enter=-2147483647..}] run scoreboard players operation @s oa_3 = @s oa_2
execute as @a[scores={c_operator=0,c_enter=-2147483647..}] run scoreboard players operation @s oa_3 *= 10 number
#将个位数数字进一位乘以10
execute as @a[scores={c_operator=0,c_enter=-2147483647..}] run scoreboard players operation @s oa_2 = @s oa_1
execute as @a[scores={c_operator=0,c_enter=-2147483647..}] run scoreboard players operation @s oa_2 *= 10 number
#键入值
execute as @a[scores={c_operator=0,c_enter=-2147483647..}] run scoreboard players operation @s oa_1 = @s c_enter
#结算
execute as @a[scores={c_enter=-2147483647..,c_operator=0}] run scoreboard players operation @s oa += @s oa_1
execute as @a[scores={c_enter=-2147483647..,c_operator=0}] run scoreboard players operation @s oa += @s oa_2
execute as @a[scores={c_enter=-2147483647..,c_operator=0}] run scoreboard players operation @s oa += @s oa_3
execute as @a[scores={c_enter=-2147483647..,c_operator=0}] run scoreboard players operation @s oa += @s oa_4
execute as @a[scores={c_enter=-2147483647..,c_operator=0}] run scoreboard players operation @s oa += @s oa_5
execute as @a[scores={c_enter=-2147483647..,c_operator=0}] run scoreboard players operation @s oa += @s oa_6
execute as @a[scores={c_enter=-2147483647..,c_operator=0}] run scoreboard players operation @s oa += @s oa_7
#输出提示
execute as @a[scores={c_enter=-2147483647..,c_operator=0}] run tellraw @s ["第一个数 : ",{"score":{"name":"@s","objective":"oa"}}]
#以下第二位
execute as @a[scores={c_enter=-2147483647..}] run scoreboard players reset @s ob

#十万位进百万位
execute as @a[scores={c_operator=1..,c_enter=-2147483647..}] run scoreboard players operation @s ob_7 = @s ob_6
execute as @a[scores={c_operator=1..,c_enter=-2147483647..}] run scoreboard players operation @s ob_7 *= 10 number
#万位进十万位
execute as @a[scores={c_operator=1..,c_enter=-2147483647..}] run scoreboard players operation @s ob_6 = @s ob_5
execute as @a[scores={c_operator=1..,c_enter=-2147483647..}] run scoreboard players operation @s ob_6 *= 10 number
#千位进万位
execute as @a[scores={c_operator=1..,c_enter=-2147483647..}] run scoreboard players operation @s ob_5 = @s ob_4
execute as @a[scores={c_operator=1..,c_enter=-2147483647..}] run scoreboard players operation @s ob_5 *= 10 number
#百位进千位
execute as @a[scores={c_operator=1..,c_enter=-2147483647..}] run scoreboard players operation @s ob_4 = @s ob_3
execute as @a[scores={c_operator=1..,c_enter=-2147483647..}] run scoreboard players operation @s ob_4 *= 10 number
#十位进百位
execute as @a[scores={c_operator=1..,c_enter=-2147483647..}] run scoreboard players operation @s ob_3 = @s ob_2
execute as @a[scores={c_operator=1..,c_enter=-2147483647..}] run scoreboard players operation @s ob_3 *= 10 number
#将个位数数字进一位乘以10
execute as @a[scores={c_operator=1..,c_enter=-2147483647..}] run scoreboard players operation @s ob_2 = @s ob_1
execute as @a[scores={c_operator=1..,c_enter=-2147483647..}] run scoreboard players operation @s ob_2 *= 10 number
#键入值
execute as @a[scores={c_operator=1..,c_enter=-2147483647..}] run scoreboard players operation @s ob_1 = @s c_enter
#结算
execute as @a[scores={c_enter=-2147483647..}] run scoreboard players operation @s ob += @s ob_1
execute as @a[scores={c_enter=-2147483647..}] run scoreboard players operation @s ob += @s ob_2
execute as @a[scores={c_enter=-2147483647..}] run scoreboard players operation @s ob += @s ob_3
execute as @a[scores={c_enter=-2147483647..}] run scoreboard players operation @s ob += @s ob_4
execute as @a[scores={c_enter=-2147483647..}] run scoreboard players operation @s ob += @s ob_5
execute as @a[scores={c_enter=-2147483647..}] run scoreboard players operation @s ob += @s ob_6
execute as @a[scores={c_enter=-2147483647..}] run scoreboard players operation @s ob += @s ob_7
#输出提示
execute as @a[scores={c_enter=-2147483647..,c_operator=1..}] run tellraw @s ["第二个数 : ",{"score":{"name":"@s","objective":"ob"}}]
#清空计分与tag
scoreboard players set @a[scores={c_enter=-2147483647..}] c_enter -2147483648
tag @a remove entering


#计算
#导入上一个结果
execute as @a[scores={c_Ans=1,c_operator=0}] run scoreboard players operation @s oa = @s c_latest
execute as @a[scores={c_Ans=1,c_operator=1..}] run scoreboard players operation @s ob = @s c_latest
scoreboard players reset @a[scores={c_Ans=1}] c_Ans
#加法
execute as @a[scores={c_operating=1,c_operator=1}] run scoreboard players operation @s c_result += @s oa
execute as @a[scores={c_operating=1,c_operator=1}] run scoreboard players operation @s c_result += @s ob
#减法
execute as @a[scores={c_operating=1,c_operator=2}] run scoreboard players operation @s c_result += @s oa
execute as @a[scores={c_operating=1,c_operator=2}] run scoreboard players operation @s c_result -= @s ob
#乘法
execute as @a[scores={c_operating=1,c_operator=3}] run scoreboard players operation @s c_result += @s oa
execute as @a[scores={c_operating=1,c_operator=3}] run scoreboard players operation @s c_result *= @s ob
#除法
execute as @a[scores={c_operating=1,c_operator=4}] run scoreboard players operation @s c_result += @s oa
execute as @a[scores={c_operating=1,c_operator=4}] run scoreboard players operation @s c_result /= @s ob
#次方
execute as @a[scores={c_operating=1,c_operator=5}] run scoreboard players operation @s c_result += @s oa
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s ob -= 1 number
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s c_result *= @s oa
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s ob -= 1 number
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s c_result *= @s oa
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s ob -= 1 number
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s c_result *= @s oa
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s ob -= 1 number
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s c_result *= @s oa
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s ob -= 1 number
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s c_result *= @s oa
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s ob -= 1 number
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s c_result *= @s oa
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s ob -= 1 number
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s c_result *= @s oa
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s ob -= 1 number
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s c_result *= @s oa
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s ob -= 1 number
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s c_result *= @s oa
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s ob -= 1 number
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s c_result *= @s oa
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s ob -= 1 number
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s c_result *= @s oa
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s ob -= 1 number
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s c_result *= @s oa
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s ob -= 1 number
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s c_result *= @s oa
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s ob -= 1 number
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s c_result *= @s oa
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s ob -= 1 number
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s c_result *= @s oa
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s ob -= 1 number
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s c_result *= @s oa
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s ob -= 1 number
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s c_result *= @s oa
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s ob -= 1 number
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s c_result *= @s oa
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s ob -= 1 number
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s c_result *= @s oa
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s ob -= 1 number
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s c_result *= @s oa
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s ob -= 1 number
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s c_result *= @s oa
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s ob -= 1 number
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s c_result *= @s oa
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s ob -= 1 number
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s c_result *= @s oa
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s ob -= 1 number
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s c_result *= @s oa
execute as @a[scores={c_operating=1,c_operator=5,ob=1..}] run scoreboard players operation @s ob -= 1 number



#清空结尾
execute as @a[scores={c_operating=1}] run tellraw @s ["结果：",{"score":{"name":"@s","objective":"c_result"},"color":"yellow","bold":true}]
execute as @a[scores={c_operating=1}] run scoreboard players operation @s c_latest = @s c_result
execute as @a[scores={c_operating=1}] run scoreboard players reset @s c_result
execute as @a[scores={c_operating=1}] run scoreboard players reset @s oa
execute as @a[scores={c_operating=1}] run scoreboard players reset @s ob
execute as @a[scores={c_operating=1}] run scoreboard players reset @s oa_1
execute as @a[scores={c_operating=1}] run scoreboard players reset @s oa_2
execute as @a[scores={c_operating=1}] run scoreboard players reset @s oa_3
execute as @a[scores={c_operating=1}] run scoreboard players reset @s oa_4
execute as @a[scores={c_operating=1}] run scoreboard players reset @s oa_5
execute as @a[scores={c_operating=1}] run scoreboard players reset @s oa_6
execute as @a[scores={c_operating=1}] run scoreboard players reset @s oa_7
execute as @a[scores={c_operating=1}] run scoreboard players reset @s ob_1
execute as @a[scores={c_operating=1}] run scoreboard players reset @s ob_2
execute as @a[scores={c_operating=1}] run scoreboard players reset @s ob_3
execute as @a[scores={c_operating=1}] run scoreboard players reset @s ob_4
execute as @a[scores={c_operating=1}] run scoreboard players reset @s ob_5
execute as @a[scores={c_operating=1}] run scoreboard players reset @s ob_6
execute as @a[scores={c_operating=1}] run scoreboard players reset @s ob_7
execute as @a[scores={c_operating=1}] run scoreboard players reset @s c_operator
execute as @a[scores={c_operating=1}] run scoreboard players reset @s c_operating


