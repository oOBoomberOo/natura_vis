execute as @s store result score #na.aura.flow.self bb.variable run data get entity @s ArmorItems[3].tag.ucit.nature_aura.aura
execute as @s store result score #na.aura.flow.self.max bb.variable run data get entity @s ArmorItems[3].tag.ucit.nature_aura.max_aura

scoreboard players operation #na.aura.flow bb.calculation = #na.aura.flow.self bb.variable
scoreboard players operation #na.aura.flow bb.calculation -= #na.aura.flow.to bb.variable

execute if score #na.aura.flow bb.calculation > #na.aura.max_flow bb.variable run scoreboard players operation #na.aura.flow bb.calculation = #na.aura.max_flow bb.variable
execute if score #na.aura.flow bb.calculation < #na.aura.max_flow.neg bb.variable run scoreboard players operation #na.aura.flow bb.calculation = #na.aura.max_flow.neg bb.variable

function nature_aura:aura/update/flow/check

execute unless score #na.aura.flow bb.calculation matches 0 run function nature_aura:aura/update/flow/calculate
scoreboard players set @s bb.success 0