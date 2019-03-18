# Add aura to the aura where the entity is located
# Input: #bb.nv.aura.io.add.input

# Called io/init to teleport <boomber.natura_vis.aura.io.getter> to where the aura is
execute as @s at @s run function boomber:natura_vis/aura/io/init

# Store the current aura and max_aura into scoreboard
execute as @e[type=armor_stand, tag=boomber.natura_vis.aura.io.getter] at @s as @e[type=armor_stand, tag=boomber.natura_vis.aura, distance=..1] store result score #bb.nv.aura.io.add.aura bb.calculation run data get entity @s ArmorItems[3].tag.ucit.boomber.natura_vis.aura
execute as @e[type=armor_stand, tag=boomber.natura_vis.aura.io.getter] at @s as @e[type=armor_stand, tag=boomber.natura_vis.aura, distance=..1] store result score #bb.nv.aura.io.add.max_aura bb.calculation run data get entity @s ArmorItems[3].tag.ucit.boomber.natura_vis.max_aura

# Add aura to the aura scoreboard
scoreboard players operation #bb.nv.aura.io.add.aura bb.calculation += #bb.nv.aura.io.add.input bb.variable
# If current aura is greater than max_aura set it back
execute if score #bb.nv.aura.io.add.aura bb.calculation > #bb.nv.aura.add.max_aura bb.calculation run scoreboard players operation #bb.nv.aura.io.add.aura bb.calculation = #bb.nv.aura.io.add.max_aura bb.calculation

# Store aura scoreboard back to the aura
execute as @e[type=armor_stand, tag=boomber.natura_vis.aura.io.getter] at @s as @e[type=armor_stand, tag=boomber.natura_vis.aura, distance=..1] store result entity @s ArmorItems[3].tag.ucit.boomber.natura_vis.aura int 1 run scoreboard players get #bb.nv.aura.io.add.aura bb.calculation
execute as @e[type=armor_stand, tag=boomber.natura_vis.aura.io.getter] run kill @s
