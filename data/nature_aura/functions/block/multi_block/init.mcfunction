execute as @s at @s run function nature_aura:aura/io/get
tag @s remove nature_aura.structure.multi_block
scoreboard players set @s bb.success 0
execute as @s[scores={bb.success=0}] positioned ~-2 ~-2 ~-2 if score #na.aura.io.get.aura bb.variable > #na.cost.enchanting_alter bb.variable if entity @s[nbt={Item:{id:"minecraft:wheat_seeds"}, Facing:1b}] store success score @s bb.success run function nature_aura:block/multi_block/init/enchanting_alter

execute as @s[scores={bb.success=1}] run tag @s add nature_aura.structure.multi_block
execute as @s[scores={bb.success=1}] run tag @s add nature_aura.structure.animation
execute as @s[scores={bb.success=1}] run scoreboard players set @s bb.animation 0
