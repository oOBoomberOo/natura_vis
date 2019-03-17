# Input: #na.aura.add.input
execute as @s at @s run function nature_aura:aura/io/get
execute as @e[type=armor_stand, tag=nature_aura.aura.getter] at @s as @e[type=armor_stand, tag=nature_aura.aura, distance=..1] store result score #na.aura.add.aura bb.calculation run data get entity @s ArmorItems[3].tag.ucit.nature_aura.aura
execute as @e[type=armor_stand, tag=nature_aura.aura.getter] at @s as @e[type=armor_stand, tag=nature_aura.aura, distance=..1] store result score #na.aura.add.max_aura bb.calculation run data get entity @s ArmorItems[3].tag.ucit.nature_aura.max_aura

scoreboard players operation #na.aura.add.aura bb.calculation += #na.aura.add.input bb.variable
execute if score #na.aura.add.aura bb.calculation > #na.aura.add.max_aura bb.calculation run scoreboard players operation #na.aura.add.aura bb.calculation = #na.aura.add.max_aura bb.calculation

execute as @e[type=armor_stand, tag=nature_aura.aura.getter] at @s as @e[type=armor_stand, tag=nature_aura.aura, distance=..1] store result entity @s ArmorItems[3].tag.ucit.nature_aura.aura int 1 run scoreboard players get #na.aura.add.aura bb.calculation
execute as @e[type=armor_stand, tag=nature_aura.aura.getter] run kill @s
