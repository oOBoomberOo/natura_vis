execute store success score @s bb.success as @e[type=armor_stand, tag=nature_aura.aura, distance=..1] store result score #na.aura.flow.to bb.variable run data get entity @s ArmorItems[3].tag.ucit.nature_aura.aura
execute as @e[type=armor_stand, tag=nature_aura.aura, distance=..1] store result score #na.aura.flow.to.max bb.variable run data get entity @s ArmorItems[3].tag.ucit.nature_aura.max_aura

execute as @s[scores={bb.success=1}] run function nature_aura:aura/update/flow/flow