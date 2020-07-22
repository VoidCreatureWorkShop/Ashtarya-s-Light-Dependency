tag @a[nbt={SelectedItem:{tag:{uid:"melody_item_crafter"}}}] add SelectedMIC
tag @a[nbt={SelectedItem:{tag:{uid:"melody_item_crafter"}}},gamemode=creative] add CSelectedMIC
tag @a[nbt={SelectedItem:{tag:{uid:"melody_item_crafter"}}},nbt=!{SelectedItem:{Count:1b}}] add SelectedMICs
tag @a[tag=SelectedMIC,nbt=!{SelectedItem:{tag:{uid:"melody_item_crafter"}}},tag=set_ctable] add set_mic
tag @a[tag=SelectedMICs,nbt={SelectedItem:{tag:{uid:"melody_item_crafter"}}},tag=set_ctable] add set_mic

execute as @a[tag=set_mic] at @s anchored eyes positioned ^ ^ ^0.1 run function mic:core/block/find
tag @a[tag=set_mic] remove set_mic
tag @a[nbt=!{SelectedItem:{tag:{uid:"melody_item_crafter"}}}] remove SelectedMIC
tag @a[tag=SelectedMICs,tag=set_ctable] remove SelectedMIC
tag @a[tag=CSelectedMIC,tag=set_ctable] remove SelectedMIC