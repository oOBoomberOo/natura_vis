scoreboard players set @s bb.success 0
execute as @s[scores={bb.success=0}] positioned ~ ~-1 ~ store success score @s bb.success if entity @s[tag=nature_aura.structure.enchanting_alter] run function nature_aura:block/multi_block/update/enchanting_alter/main
