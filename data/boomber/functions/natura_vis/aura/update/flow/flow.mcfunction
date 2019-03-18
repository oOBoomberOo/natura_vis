# Get current aura and max_aura of this aura
execute as @s store result score #bb.nv.aura.flow.self bb.variable run data get entity @s ArmorItems[3].tag.ucit.boomber.natura_vis.aura
execute as @s store result score #bb.nv.aura.flow.self.max bb.variable run data get entity @s ArmorItems[3].tag.ucit.boomber.natura_vis.max_aura

# Calculate aura flow by using [this aura] - [that aura]
scoreboard players operation #bb.nv.aura.flow bb.calculation = #bb.nv.aura.flow.self bb.variable
scoreboard players operation #bb.nv.aura.flow bb.calculation -= #bb.nv.aura.flow.to bb.variable

# Handle min and max flow of each aura
execute if score #bb.nv.aura.flow bb.calculation > #bb.nv.aura.max_flow bb.variable run scoreboard players operation #bb.nv.aura.flow bb.calculation = #bb.nv.aura.max_flow bb.variable
execute if score #bb.nv.aura.flow bb.calculation < #bb.nv.aura.max_flow.neg bb.variable run scoreboard players operation #bb.nv.aura.flow bb.calculation = #bb.nv.aura.max_flow.neg bb.variable

# Perform double check for the calculated aura flow
# This function check if the current flow will overflow other aura or not.
function boomber:natura_vis/aura/update/flow/check

# If the flow is not zero make aura flow to whatever direction it need to
execute unless score #bb.nv.aura.flow bb.calculation matches 0 run function boomber:natura_vis/aura/update/flow/calculate
scoreboard players set @s bb.success 0