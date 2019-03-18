execute as @s at @s run function boomber:natura_vis/aura/io/get
tag @s remove boomber.natura_vis.structure.multi_block
scoreboard players set @s bb.success 0
execute as @s[scores={bb.success=0}] positioned ~-2 ~-2 ~-2 if score #bb.nv.aura.io.get.aura bb.variable > #bb.nv.cost.enchanting_alter bb.variable if entity @s[nbt={Item:{id:"minecraft:wheat_seeds"}, Facing:1b}] store success score @s bb.success run function boomber:natura_vis/block/multi_block/init/enchanting_alter

execute as @s[scores={bb.success=1}] run tag @s add boomber.natura_vis.structure.multi_block
execute as @s[scores={bb.success=1}] run tag @s add boomber.natura_vis.structure.animation
execute as @s[scores={bb.success=1}] run scoreboard players set @s bb.animation 0
