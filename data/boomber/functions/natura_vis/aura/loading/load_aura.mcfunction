# If aura's session is the same as current session load them
execute as @e[type=armor_stand, tag=boomber.natura_vis.aura, distance=..1] if score @s bb.session = #bb.nv.aura.session bb.variable run tag @s add boomber.natura_vis.aura.loading
execute if entity @e[type=armor_stand, tag=boomber.natura_vis.aura, distance=..1] run scoreboard players set @s bb.success 1