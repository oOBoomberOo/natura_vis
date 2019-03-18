# Input: entity position context
execute as @s store result score #na.aura.get.x bb.calculation run data get entity @s Pos[0]
execute as @s store result score #na.aura.get.z bb.calculation run data get entity @s Pos[2]

# Floor pos [x, z] down
scoreboard players operation #na.aura.get.x bb.calculation /= #na.chunk bb.variable
scoreboard players operation #na.aura.get.z bb.calculation /= #na.chunk bb.variable
scoreboard players operation #na.aura.get.x bb.calculation *= #na.chunk bb.variable
scoreboard players operation #na.aura.get.z bb.calculation *= #na.chunk bb.variable

# Set location for teleportation api
scoreboard players operation #bb.tp_api.input.target.x bb.variable = #na.aura.get.x bb.calculation
scoreboard players set #bb.tp_api.input.target.y bb.variable 0
scoreboard players operation #bb.tp_api.input.target.z bb.variable = #na.aura.get.z bb.calculation

# Summon temporary armor stand and teleport them to floored pos [x, z]
execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon armor_stand ~ ~ ~ {Invisible:1b, Marker:1b, NoGravity: 1b, Small:1b, Tags:["nature_aura.aura.io.getter"]}
execute as @e[type=armor_stand, tag=nature_aura.aura.io.getter] at @s run function boomber:teleportation_api/tp


