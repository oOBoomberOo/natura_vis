# Input: #na.aura.io.add.input
execute as @s at @s run function nature_aura:aura/io/init
execute as @e[type=armor_stand, tag=nature_aura.aura.io.getter] at @s as @e[type=armor_stand, tag=nature_aura.aura, distance=..1] store result score #na.aura.io.add.aura bb.calculation run data get entity @s ArmorItems[3].tag.ucit.nature_aura.aura
execute as @e[type=armor_stand, tag=nature_aura.aura.io.getter] at @s as @e[type=armor_stand, tag=nature_aura.aura, distance=..1] store result score #na.aura.io.add.max_aura bb.calculation run data get entity @s ArmorItems[3].tag.ucit.nature_aura.max_aura

scoreboard players operation #na.aura.io.add.aura bb.calculation += #na.aura.io.add.input bb.variable
execute if score #na.aura.io.add.aura bb.calculation > #na.aura.add.max_aura bb.calculation run scoreboard players operation #na.aura.io.add.aura bb.calculation = #na.aura.io.add.max_aura bb.calculation

execute as @e[type=armor_stand, tag=nature_aura.aura.io.getter] at @s as @e[type=armor_stand, tag=nature_aura.aura, distance=..1] store result entity @s ArmorItems[3].tag.ucit.nature_aura.aura int 1 run scoreboard players get #na.aura.io.add.aura bb.calculation
execute as @e[type=armor_stand, tag=nature_aura.aura.io.getter] run kill @s
