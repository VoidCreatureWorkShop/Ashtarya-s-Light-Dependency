#珊瑚岛平台计划通用功能计分板#珊瑚岛平台计划通用功能计分板



scoreboard objectives add UGUIL dummy {"text":"通用GUI列表","color":"red"}
#可用作部分GUI的列表

scoreboard objectives add UMS dummy {"text":"通用模块控制开关","color":"red"}
#可用来控制模块的开启

scoreboard objectives add VMR dummy {"text":"原版模组注册表","color":"red"}
#可用来判定对应模组是否加载以便于触发和关闭联动模块

scoreboard objectives add NSR dummy {"text":"命名空间注册表","color":"red"}
#可用来判定对应命名空间（模块等）是否存在

scoreboard objectives add SCBR dummy {"text":"记分板注册表","color":"red"}
#可用来判定指定记分板（组）是否加载，以避免重复加载