scoreboard objectives add bb.variable dummy
scoreboard objectives add bb.calculation dummy
scoreboard objectives add bb.success dummy
scoreboard objectives add bb.queue.x dummy
scoreboard objectives add bb.queue.z dummy
scoreboard objectives add bb.session dummy

execute unless score #na.aura.session bb.variable matches 0.. run scoreboard players set #na.aura.session bb.variable 0

scoreboard players set #-1 bb.variable -1

scoreboard players set #na.chunk bb.variable 128
scoreboard players set #na.aura.max_flow bb.variable 50

scoreboard players operation #na.aura.max_flow.neg bb.variable = #na.aura.max_flow bb.variable
scoreboard players operation #na.aura.max_flow.neg bb.variable *= #-1 bb.variable