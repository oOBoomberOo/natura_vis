# Get current position
execute as @s store result score #bb.nv.aura.load.pos.x bb.calculation run data get entity @s Pos[0]
execute as @s store result score #bb.nv.aura.load.pos.z bb.calculation run data get entity @s Pos[2]

# Floor pos [x, z] down
scoreboard players operation #bb.nv.aura.load.pos.x bb.calculation /= #bb.nv.chunk bb.variable
scoreboard players operation #bb.nv.aura.load.pos.z bb.calculation /= #bb.nv.chunk bb.variable
scoreboard players operation #bb.nv.aura.load.pos.x bb.calculation *= #bb.nv.chunk bb.variable
scoreboard players operation #bb.nv.aura.load.pos.z bb.calculation *= #bb.nv.chunk bb.variable

# Set location for teleportation api
scoreboard players operation #bb.tp_api.input.target.x bb.variable = #bb.nv.aura.load.pos.x bb.calculation
scoreboard players set #bb.tp_api.input.target.y bb.variable 0
scoreboard players operation #bb.tp_api.input.target.z bb.variable = #bb.nv.aura.load.pos.z bb.calculation

# Summon temporary armor stand and teleport them to floored pos [x, z]
# "align xyz positioned ~0.5 ~0.5 ~0.5" is needed because teleportation api does not handle teleportation that's less than 1 block
execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon armor_stand ~ ~ ~ {Invisible:1b, Marker:1b, NoGravity: 1b, Small:1b, Tags:["boomber.natura_vis.aura.loader"]}
execute as @e[type=armor_stand, tag=boomber.natura_vis.aura.loader] at @s run function boomber:teleportation_api/tp
execute as @e[type=armor_stand, tag=boomber.natura_vis.aura.loader] at @s run scoreboard players set @s bb.success 0


# If there is already an aura there add them to the loading queue if not create new aura
execute as @e[type=armor_stand, tag=boomber.natura_vis.aura.loader] at @s run function boomber:natura_vis/aura/loading/load_aura
execute as @e[type=armor_stand, tag=boomber.natura_vis.aura.loader, scores={bb.success=0}] at @s unless entity @e[type=armor_stand, tag=boomber.natura_vis.aura, distance=..1] run function boomber:natura_vis/aura/loading/create_aura

execute as @e[type=armor_stand, tag=boomber.natura_vis.aura.loader] run kill @s
