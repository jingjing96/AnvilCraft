setblock ~ ~ ~ oak_sign
data modify block ~ ~ ~ Text1 set value '[{"text":"Lv.","color":"red"},{"score":{"name":"$temp","objective":"ancInfernalLevel"},"color":"red"}," ",{"storage":"temp","nbt":"list[]","interpret":true,"separator":{"text": " "}}]'
execute if data storage temp list[0] run data modify block ~ ~ ~ Text1 append value '["",{"storage":"temp","nbt":"list[0]","interpret":true}]'
data modify entity @s CustomName set from block ~ ~ ~ Text1
setblock ~ ~ ~ air