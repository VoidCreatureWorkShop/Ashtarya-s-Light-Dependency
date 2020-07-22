#需要替换以下字段
#  所需模块  使用版本    作品名	   作品命名空间
# moduleName 	UV 		workName 	namespace


scoreboard players reset workName vdc_checkerror

#模块检测
#↓____________________
	#以下为单个模块的检测
execute unless score moduleName module_uv matches UV.. unless score moduleName module_lc matches ..UV run scoreboard players add workName vdc_checkerror 1
execute unless score moduleName module_uv matches UV.. unless score moduleName module_lc matches ..UV run tellraw @a ["\u00a7c[!] workName 所需的 moduleName 版本错误或未安装"]
	#当有多个模块使用时，复制上面的命令，然后重新替换关键词后放在下面。








#↑____________________
execute unless score workName vdc_checkerror matches 1.. run function namespace:load
execute unless score workName vdc_checkerror matches 1.. run function namespace:vdc/tick