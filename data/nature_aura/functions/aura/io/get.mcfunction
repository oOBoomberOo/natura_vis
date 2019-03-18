execute as @s at @s run function nature_aura:aura/io/init
execute as @e[type=armor_stand, tag=nature_aura.aura.io.getter] at @s as @e[type=armor_stand, tag=nature_aura.aura, distance=..1] store result score #na.aura.io.get.aura bb.variable run data get entity @s ArmorItems[3].tag.ucit.nature_aura.aura
execute as @e[type=armor_stand, tag=nature_aura.aura.io.getter] at @s as @e[type=armor_stand, tag=nature_aura.aura, distance=..1] store result score #na.aura.io.get.max_aura bb.variable run data get entity @s ArmorItems[3].tag.ucit.nature_aura.max_aura
execute as @e[type=armor_stand, tag=nature_aura.aura.io.getter] run kill @s
