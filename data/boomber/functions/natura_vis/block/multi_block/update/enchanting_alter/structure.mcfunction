scoreboard players set @s bb.success 1
execute as @s run function boomber:natura_vis/block/multi_block/post/enchanting_alter
execute as @s[scores={bb.success=0}] run tag @s add boomber.natura_vis.structure.breaking
execute as @s[scores={bb.success=0}] run scoreboard players set @s bb.success 1
