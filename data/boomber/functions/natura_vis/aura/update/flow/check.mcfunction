# Store this aura and other aura into temporary scoreboard
scoreboard players operation #bb.nv.aura.flow.self bb.calculation = #bb.nv.aura.flow.self bb.variable
scoreboard players operation #bb.nv.aura.flow.to bb.calculation = #bb.nv.aura.flow.to bb.variable

# Recalculate aura flow if there are overflow
scoreboard players operation #bb.nv.aura.flow.self bb.calculation -= #bb.nv.aura.flow bb.calculation
execute if score #bb.nv.aura.flow.self bb.calculation matches ..-1 run scoreboard players operation #bb.nv.aura.flow bb.calculation += #bb.nv.aura.flow.self bb.calculation
execute if score #bb.nv.aura.flow.self bb.calculation > #bb.nv.aura.flow.self.max bb.variable run scoreboard players operation #bb.nv.aura.flow bb.calculation = #bb.nv.aura.flow.self bb.variable
execute if score #bb.nv.aura.flow.self bb.calculation > #bb.nv.aura.flow.self.max bb.variable run scoreboard players operation #bb.nv.aura.flow bb.calculation -= #bb.nv.aura.flow.self.max bb.variable

execute if score #bb.nv.aura.flow bb.calculation > #bb.nv.aura.max_flow bb.variable run scoreboard players operation #bb.nv.aura.flow bb.calculation = #bb.nv.aura.max_flow bb.variable
execute if score #bb.nv.aura.flow bb.calculation < #bb.nv.aura.max_flow.neg bb.variable run scoreboard players operation #bb.nv.aura.flow bb.calculation = #bb.nv.aura.max_flow.neg bb.variable


scoreboard players operation #bb.nv.aura.flow.to bb.calculation += #bb.nv.aura.flow bb.calculation
execute if score #bb.nv.aura.flow.to bb.calculation matches ..-1 run scoreboard players operation #bb.nv.aura.flow bb.calculation -= #bb.nv.aura.flow.to bb.calculation
execute if score #bb.nv.aura.flow.to bb.calculation > #bb.nv.aura.flow.to.max bb.variable run scoreboard players operation #bb.nv.aura.flow bb.calculation = #bb.nv.aura.flow.to.max bb.variable
execute if score #bb.nv.aura.flow.to bb.calculation > #bb.nv.aura.flow.to.max bb.variable run scoreboard players operation #bb.nv.aura.flow bb.calculation -= #bb.nv.aura.flow.to bb.variable

execute if score #bb.nv.aura.flow bb.calculation > #bb.nv.aura.max_flow bb.variable run scoreboard players operation #bb.nv.aura.flow bb.calculation = #bb.nv.aura.max_flow bb.variable
execute if score #bb.nv.aura.flow bb.calculation < #bb.nv.aura.max_flow.neg bb.variable run scoreboard players operation #bb.nv.aura.flow bb.calculation = #bb.nv.aura.max_flow.neg bb.variable

# Check if the recalculated flow is correct or not
scoreboard players operation #bb.nv.aura.flow.self bb.calculation = #bb.nv.aura.flow.self bb.variable
scoreboard players operation #bb.nv.aura.flow.to bb.calculation = #bb.nv.aura.flow.to bb.variable
scoreboard players operation #bb.nv.aura.flow.self bb.calculation -= #bb.nv.aura.flow bb.calculation
scoreboard players operation #bb.nv.aura.flow.to bb.calculation += #bb.nv.aura.flow bb.calculation

# If there are something wrong with the recalculated flow, recalculate it again!
# Posibly create recursion
execute if score #bb.nv.aura.flow.self bb.calculation > #bb.nv.aura.flow.self.max bb.variable run function boomber:natura_vis/aura/update/flow/check
execute if score #bb.nv.aura.to.self bb.calculation > #bb.nv.aura.flow.to.max bb.variable run function boomber:natura_vis/aura/update/flow/check

# If everything is going correctly it'll reach this part