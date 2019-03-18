# Summon new aura
summon armor_stand ~ ~ ~ {Invisible:1b, NoGravity:1b, Marker:1b, Small:1b, Tags:["boomber.natura_vis.aura", "boomber.natura_vis.aura.creating"]}
# Set the aura's session to current session
execute as @e[type=armor_stand, tag=boomber.natura_vis.aura.creating] run scoreboard players operation @s bb.session = #bb.nv.aura.session bb.variable
# Put aura's dataholder on its head
execute as @e[type=armor_stand, tag=boomber.natura_vis.aura.creating] run loot replace entity @s armor.head loot boomber:natura_vis/aura/aura
# Load the aura
execute as @e[type=armor_stand, tag=boomber.natura_vis.aura.creating] run function boomber:natura_vis/aura/loading/load_aura

execute as @e[type=armor_stand, tag=boomber.natura_vis.aura.creating] run tag @s remove boomber.natura_vis.aura.creating
