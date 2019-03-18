# Store this aura and that aura into temporary scoreboard
scoreboard players operation #bb.nv.aura.flow.self bb.calculation = #bb.nv.aura.flow.self bb.variable
scoreboard players operation #bb.nv.aura.flow.to bb.calculation = #bb.nv.aura.flow.to bb.variable

# Calculate aura flow in those scoreboard
scoreboard players operation #bb.nv.aura.flow.self bb.calculation -= #bb.nv.aura.flow bb.calculation
scoreboard players operation #bb.nv.aura.flow.to bb.calculation += #bb.nv.aura.flow bb.calculation

# Apply aura scoreboard into the actual aura
execute as @s store result entity @s ArmorItems[3].tag.ucit.boomber.natura_vis.aura int 1 run scoreboard players operation #bb.nv.aura.flow.self bb.variable = #bb.nv.aura.flow.self bb.calculation
execute as @s store result entity @e[type=armor_stand, tag=boomber.natura_vis.aura, limit=1, distance=..1] ArmorItems[3].tag.ucit.boomber.natura_vis.aura int 1 run scoreboard players operation #bb.nv.aura.flow.to bb.variable = #bb.nv.aura.flow.to bb.calculation