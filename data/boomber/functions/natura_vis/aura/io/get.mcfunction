# Return the current aura and max_aura
# Output: #bb.nv.aura.io.get.aura
#         #bb.nv.aura.io.get.max_aura

# Called io/init to teleport <boomber.natura_vis.aura.io.getter> to where the aura is
execute as @s at @s run function boomber:natura_vis/aura/io/init

# Store the current aura and max_aura into scoreboard
execute as @e[type=armor_stand, tag=boomber.natura_vis.aura.io.getter] at @s as @e[type=armor_stand, tag=boomber.natura_vis.aura, distance=..1] store result score #bb.nv.aura.io.get.aura bb.variable run data get entity @s ArmorItems[3].tag.ucit.boomber.natura_vis.aura
execute as @e[type=armor_stand, tag=boomber.natura_vis.aura.io.getter] at @s as @e[type=armor_stand, tag=boomber.natura_vis.aura, distance=..1] store result score #bb.nv.aura.io.get.max_aura bb.variable run data get entity @s ArmorItems[3].tag.ucit.boomber.natura_vis.max_aura

# Kill the getter
execute as @e[type=armor_stand, tag=boomber.natura_vis.aura.io.getter] run kill @s
