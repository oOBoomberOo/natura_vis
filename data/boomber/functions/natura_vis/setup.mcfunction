scoreboard objectives add bb.variable dummy
scoreboard objectives add bb.calculation dummy
scoreboard objectives add bb.success dummy
scoreboard objectives add bb.animation dummy
scoreboard objectives add bb.queue.x dummy
scoreboard objectives add bb.queue.z dummy
scoreboard objectives add bb.session dummy

execute unless score #bb.nv.aura.session bb.variable matches 0.. run scoreboard players set #bb.nv.aura.session bb.variable 0

function boomber:natura_vis/constant

scoreboard players operation #bb.nv.aura.max_flow.neg bb.variable = #bb.nv.aura.max_flow bb.variable
scoreboard players operation #bb.nv.aura.max_flow.neg bb.variable *= #-1 bb.variable