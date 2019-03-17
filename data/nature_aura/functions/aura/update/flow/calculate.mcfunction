scoreboard players operation #na.aura.flow.self bb.calculation = #na.aura.flow.self bb.variable
scoreboard players operation #na.aura.flow.to bb.calculation = #na.aura.flow.to bb.variable

scoreboard players operation #na.aura.flow.self bb.calculation -= #na.aura.flow bb.calculation
scoreboard players operation #na.aura.flow.to bb.calculation += #na.aura.flow bb.calculation

execute as @s store result entity @s ArmorItems[3].tag.ucit.nature_aura.aura int 1 run scoreboard players operation #na.aura.flow.self bb.variable = #na.aura.flow.self bb.calculation
execute as @s store result entity @e[type=armor_stand, tag=nature_aura.aura, limit=1, distance=..1] ArmorItems[3].tag.ucit.nature_aura.aura int 1 run scoreboard players operation #na.aura.flow.to bb.variable = #na.aura.flow.to bb.calculation