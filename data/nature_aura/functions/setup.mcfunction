scoreboard objectives add bb.variable dummy
scoreboard objectives add bb.calculation dummy
scoreboard objectives add bb.success dummy
scoreboard objectives add bb.animation dummy
scoreboard objectives add bb.queue.x dummy
scoreboard objectives add bb.queue.z dummy
scoreboard objectives add bb.session dummy

execute unless score #na.aura.session bb.variable matches 0.. run scoreboard players set #na.aura.session bb.variable 0

function nature_aura:constant

scoreboard players operation #na.aura.max_flow.neg bb.variable = #na.aura.max_flow bb.variable
scoreboard players operation #na.aura.max_flow.neg bb.variable *= #-1 bb.variable