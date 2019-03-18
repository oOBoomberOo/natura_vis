# Continue checking the item frame until the conditions met
scoreboard players set @s bb.success 0
execute as @s[scores={bb.success=0}] unless score @s bb.animation matches ..-1 positioned ~ ~-1 ~ store success score @s bb.success if entity @s[tag=boomber.natura_vis.structure.enchanting_alter] run function boomber:natura_vis/block/multi_block/animation/enchanting_alter

execute as @s[scores={bb.animation=..-1}] run tag @s remove boomber.natura_vis.structure.animation
