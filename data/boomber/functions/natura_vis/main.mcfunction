# "Refresh rate" for some heavy calculation so the game don't use too much computation power
scoreboard players add #bb.nv.aura.frame bb.variable 1
execute if score #bb.nv.aura.frame bb.variable matches 20.. run scoreboard players set #bb.nv.aura.frame bb.variable 0

# The order of this command is importance
# Test it before upload to github
execute as @e[type=armor_stand, tag=boomber.natura_vis.aura.loading] at @s run function boomber:natura_vis/aura/update/aura
execute if score #bb.nv.aura.frame bb.variable matches 0 as @a[nbt={Dimension:0}] at @s run function boomber:natura_vis/aura/loading/player
execute as @a at @s run function boomber:natura_vis/player/player

# Handle custom block added from this datapack
function boomber:natura_vis/block/main

# Run at the very last tick to collect any garbage left from this datapack
function boomber:natura_vis/garbage_collector