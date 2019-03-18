# Increase current session scoreboard and make every aura check for session
scoreboard players add #bb.nv.aura.session bb.variable 1
execute as @e[type=armor_stand, tag=boomber.natura_vis.aura] run function boomber:natura_vis/aura/remove/session
