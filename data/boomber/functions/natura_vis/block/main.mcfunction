# General update of multiblock
execute as @e[type=item_frame, tag=boomber.natura_vis.structure.multi_block, tag=!boomber.natura_vis.structure.animation] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function boomber:natura_vis/block/multi_block/update

# Multiblock Structure check
# Will return boomber.natura_vis.structure.breaking
execute as @e[type=item_frame, tag=boomber.natura_vis.structure.multi_block, tag=!boomber.natura_vis.structure.animation] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function boomber:natura_vis/block/multi_block/update_structure

# Handle animation that'll be play before the multiblock is formed
execute as @e[type=item_frame, tag=boomber.natura_vis.structure.multi_block, tag=boomber.natura_vis.structure.animation] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function boomber:natura_vis/block/multi_block/animation

# Checking if an item frame is multiblock or not
execute as @e[type=item_frame, tag=!boomber.natura_vis.structure.breaking, tag=!boomber.natura_vis.structure.multi_block] if data entity @s Item.Count at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function boomber:natura_vis/block/multi_block/init
