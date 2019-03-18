scoreboard players set @s bb.success 1
execute as @s run function nature_aura:block/multi_block/post/enchanting_alter
execute as @s[scores={bb.success=0}] run tag @s add nature_aura.structure.breaking
execute as @s[scores={bb.success=0}] run scoreboard players set @s bb.success 1
