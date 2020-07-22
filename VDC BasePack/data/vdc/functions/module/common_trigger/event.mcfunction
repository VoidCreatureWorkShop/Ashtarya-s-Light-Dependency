#dead
scoreboard players reset @a[tag=dead] event_dead
scoreboard players reset @a[tag=dead] dead
tag @a[tag=dead] remove dead
tag @a[scores={event_dead=1..}] add dead

#respawn
tag @a[tag=respawn_sign] remove no_respawn
tag @a[tag=respawn_sign] remove respawn_sign
tag @a[scores={event_dead=1..}] add no_respawn
tag @e[tag=no_respawn] add respawn_sign

#attack
scoreboard players reset @a[tag=attacked] event_attacked
scoreboard players reset @a[tag=attacked] attacked
tag @a[tag=attacked] remove attacked
tag @a[scores={event_attacked=1..}] add attacked

#quit game
scoreboard players reset @a[tag=quited] event_leave_game
scoreboard players reset @a[tag=quited] leave
tag @a[tag=quited] remove quited
tag @a[scores={event_leave_game=1..}] add quited

#set crafting table
scoreboard players reset @a[tag=set_ctable] event_set_ctable
tag @a[tag=set_ctable] remove set_ctable
tag @a[scores={event_set_ctable=1..}] add set_ctable

#set barrel
scoreboard players reset @a[tag=set_barrel] set_barrel
tag @a[tag=set_barrel] remove set_barrel
tag @a[scores={set_barrel=1..}] add set_barrel

#open barrel
scoreboard players reset @a[tag=opened_barrel] event_openbarrel
scoreboard players reset @a[tag=opened_barrel] open_barrel
tag @a[tag=opened_barrel] remove opened_barrel
tag @a[scores={event_openbarrel=1..}] add opened_barrel

#use coas
scoreboard players reset @a[tag=used_coas] used_coas
tag @a[tag=used_coas] remove used_coas
tag @a[scores={used_coas=1..}] add used_coas
scoreboard players set @a[scores={used_coas=1..}] using_coas_delay 6

#use coas for long click
execute as @a unless entity @s[scores={using_coas_delay=0}] run scoreboard players reset @s used_coas
scoreboard players remove @a[scores={using_coas_delay=1..}] using_coas_delay 1
tag @a[scores={using_coas_delay=1..}] add using_coas
tag @a[scores={using_coas_delay=0}] remove using_coas