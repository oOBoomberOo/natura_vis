# Subtract aura from the aura of where the entity is located
# Input: #bb.nv.aura.io.sub.input

# Called io/init to teleport <boomber.natura_vis.aura.io.getter> to where the aura is
execute as @s at @s run function boomber:natura_vis/aura/io/init
execute as @e[type=armor_stand, tag=boomber.natura_vis.aura.io.getter] at @s as @e[type=armor_stand, tag=boomber.natura_vis.aura, distance=..1] store result score #bb.nv.aura.io.sub.aura bb.calculation run data get entity @s ArmorItems[3].tag.ucit.boomber.natura_vis.aura
execute as @e[type=armor_stand, tag=boomber.natura_vis.aura.io.getter] at @s as @e[type=armor_stand, tag=boomber.natura_vis.aura, distance=..1] store result score #bb.nv.aura.io.sub.max_aura bb.calculation run data get entity @s ArmorItems[3].tag.ucit.boomber.natura_vis.max_aura

scoreboard players operation #bb.nv.aura.io.sub.aura bb.calculation -= #bb.nv.aura.io.sub.input bb.variable
execute if score #bb.nv.aura.io.sub.aura bb.calculation > #bb.nv.aura.sub.max_aura bb.calculation run scoreboard players operation #bb.nv.aura.io.sub.aura bb.calculation = #bb.nv.aura.io.sub.max_aura bb.calculation

execute as @e[type=armor_stand, tag=boomber.natura_vis.aura.io.getter] at @s as @e[type=armor_stand, tag=boomber.natura_vis.aura, distance=..1] store result entity @s ArmorItems[3].tag.ucit.boomber.natura_vis.aura int 1 run scoreboard players get #bb.nv.aura.io.sub.aura bb.calculation
execute as @e[type=armor_stand, tag=boomber.natura_vis.aura.io.getter] run kill @s
