# Check if the current position have any aura
# If there are store current aura and max_aura into scoreboard
execute store success score @s bb.success as @e[type=armor_stand, tag=boomber.natura_vis.aura, distance=..1] store result score #bb.nv.aura.flow.to bb.variable run data get entity @s ArmorItems[3].tag.ucit.boomber.natura_vis.aura
execute as @e[type=armor_stand, tag=boomber.natura_vis.aura, distance=..1] store result score #bb.nv.aura.flow.to.max bb.variable run data get entity @s ArmorItems[3].tag.ucit.boomber.natura_vis.max_aura

# If there are calculate aura flow between this aura and that aura
execute as @s[scores={bb.success=1}] run function boomber:natura_vis/aura/update/flow/flow