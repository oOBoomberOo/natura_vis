# Input: entity position context
execute as @s store result score #bb.nv.aura.get.x bb.calculation run data get entity @s Pos[0]
execute as @s store result score #bb.nv.aura.get.z bb.calculation run data get entity @s Pos[2]

# Floor pos [x, z] down
scoreboard players operation #bb.nv.aura.get.x bb.calculation /= #bb.nv.chunk bb.variable
scoreboard players operation #bb.nv.aura.get.z bb.calculation /= #bb.nv.chunk bb.variable
scoreboard players operation #bb.nv.aura.get.x bb.calculation *= #bb.nv.chunk bb.variable
scoreboard players operation #bb.nv.aura.get.z bb.calculation *= #bb.nv.chunk bb.variable

# Set location for teleportation api
scoreboard players operation #bb.tp_api.input.target.x bb.variable = #bb.nv.aura.get.x bb.calculation
scoreboard players set #bb.tp_api.input.target.y bb.variable 0
scoreboard players operation #bb.tp_api.input.target.z bb.variable = #bb.nv.aura.get.z bb.calculation

# Summon temporary armor stand and teleport them to floored pos [x, z]
execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon armor_stand ~ ~ ~ {Invisible:1b, Marker:1b, NoGravity: 1b, Small:1b, Tags:["boomber.natura_vis.aura.io.getter"]}
execute as @e[type=armor_stand, tag=boomber.natura_vis.aura.io.getter] at @s run function boomber:teleportation_api/tp
