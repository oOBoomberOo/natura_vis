scoreboard players operation #na.aura.flow.self bb.calculation = #na.aura.flow.self bb.variable
scoreboard players operation #na.aura.flow.to bb.calculation = #na.aura.flow.to bb.variable


scoreboard players operation #na.aura.flow.self bb.calculation -= #na.aura.flow bb.calculation
execute if score #na.aura.flow.self bb.calculation matches ..-1 run scoreboard players operation #na.aura.flow bb.calculation += #na.aura.flow.self bb.calculation
execute if score #na.aura.flow.self bb.calculation > #na.aura.flow.self.max bb.variable run scoreboard players operation #na.aura.flow bb.calculation = #na.aura.flow.self bb.variable
execute if score #na.aura.flow.self bb.calculation > #na.aura.flow.self.max bb.variable run scoreboard players operation #na.aura.flow bb.calculation -= #na.aura.flow.self.max bb.variable

execute if score #na.aura.flow bb.calculation > #na.aura.max_flow bb.variable run scoreboard players operation #na.aura.flow bb.calculation = #na.aura.max_flow bb.variable
execute if score #na.aura.flow bb.calculation < #na.aura.max_flow.neg bb.variable run scoreboard players operation #na.aura.flow bb.calculation = #na.aura.max_flow.neg bb.variable


scoreboard players operation #na.aura.flow.to bb.calculation += #na.aura.flow bb.calculation
execute if score #na.aura.flow.to bb.calculation matches ..-1 run scoreboard players operation #na.aura.flow bb.calculation -= #na.aura.flow.to bb.calculation
execute if score #na.aura.flow.to bb.calculation > #na.aura.flow.to.max bb.variable run scoreboard players operation #na.aura.flow bb.calculation = #na.aura.flow.to.max bb.variable
execute if score #na.aura.flow.to bb.calculation > #na.aura.flow.to.max bb.variable run scoreboard players operation #na.aura.flow bb.calculation -= #na.aura.flow.to bb.variable

execute if score #na.aura.flow bb.calculation > #na.aura.max_flow bb.variable run scoreboard players operation #na.aura.flow bb.calculation = #na.aura.max_flow bb.variable
execute if score #na.aura.flow bb.calculation < #na.aura.max_flow.neg bb.variable run scoreboard players operation #na.aura.flow bb.calculation = #na.aura.max_flow.neg bb.variable


scoreboard players operation #na.aura.flow.self bb.calculation = #na.aura.flow.self bb.variable
scoreboard players operation #na.aura.flow.to bb.calculation = #na.aura.flow.to bb.variable
scoreboard players operation #na.aura.flow.self bb.calculation -= #na.aura.flow bb.calculation
scoreboard players operation #na.aura.flow.to bb.calculation += #na.aura.flow bb.calculation

execute if score #na.aura.flow.self bb.calculation > #na.aura.flow.self.max bb.variable run function nature_aura:aura/update/flow/check
execute if score #na.aura.to.self bb.calculation > #na.aura.flow.to.max bb.variable run function nature_aura:aura/update/flow/check
