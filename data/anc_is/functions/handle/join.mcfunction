execute if score $ancSingleLand ancConfig matches 0 run tag @s add non_is

execute if score $ancSingleLand ancConfig matches 0 run summon armor_stand ~ ~ ~ {Tags:["isTemp"],Invisible:true,NoGravity:1b}
execute if score $ancSingleLand ancConfig matches 0 run execute as @e[type=armor_stand,tag=isTemp] at @s run function anc_is:land/as

execute unless score $ancSingleLand ancConfig matches 0 if score @s ancUid matches 1 positioned 1000.5 64 0.5 run function anc_is:land/spawn_land
execute unless score $ancSingleLand ancConfig matches 0 run tp @s 1000.5 64 0.5 ~ ~
execute unless score $ancSingleLand ancConfig matches 0 run spreadplayers 1000.5 0.5 0 3 false @s

execute unless score $ancSingleLand ancConfig matches 0 run data modify storage anc:s3_io obj set value {}
execute unless score $ancSingleLand ancConfig matches 0 run scoreboard players operation addr tmp = @s ancUid
execute unless score $ancSingleLand ancConfig matches 0 run data modify storage anc:s3_io obj.skyland.Pos set value [1000.5d,64.0d,0.5d]
execute unless score $ancSingleLand ancConfig matches 0 run function anc:s3_io/set

scoreboard players enable @s skyland.visit
scoreboard players enable @s skyland

tag @s add ancIs
