execute as @s store result score #na.aura.load.pos.x bb.calculation run data get entity @s Pos[0]
execute as @s store result score #na.aura.load.pos.z bb.calculation run data get entity @s Pos[2]

# Floor pos [x, z] down
scoreboard players operation #na.aura.load.pos.x bb.calculation /= #na.chunk bb.variable
scoreboard players operation #na.aura.load.pos.z bb.calculation /= #na.chunk bb.variable
scoreboard players operation #na.aura.load.pos.x bb.calculation *= #na.chunk bb.variable
scoreboard players operation #na.aura.load.pos.z bb.calculation *= #na.chunk bb.variable

# Set location for teleportation api
scoreboard players operation #bb.tp_api.input.target.x bb.variable = #na.aura.load.pos.x bb.calculation
scoreboard players set #bb.tp_api.input.target.y bb.variable 0
scoreboard players operation #bb.tp_api.input.target.z bb.variable = #na.aura.load.pos.z bb.calculation

# Summon temporary armor stand and teleport them to floored pos [x, z]
execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon armor_stand ~ ~ ~ {Invisible:1b, Marker:1b, NoGravity: 1b, Small:1b, Tags:["nature_aura.aura.loader"]}
execute as @e[type=armor_stand, tag=nature_aura.aura.loader] at @s run function boomber:teleportation_api/tp
execute as @e[type=armor_stand, tag=nature_aura.aura.loader] at @s run scoreboard players set @s bb.success 0


# If there is already an aura there add them to the loading queue if not create new aura
execute as @e[type=armor_stand, tag=nature_aura.aura.loader] at @s run function nature_aura:aura/loading/load_aura
execute as @e[type=armor_stand, tag=nature_aura.aura.loader, scores={bb.success=0}] at @s unless entity @e[type=armor_stand, tag=nature_aura.aura, distance=..1] run function nature_aura:aura/loading/create_aura

execute as @e[type=armor_stand, tag=nature_aura.aura.loader] run kill @s
