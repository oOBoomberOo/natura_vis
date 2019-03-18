function boomber:natura_vis/block/multi_block/clear

setblock ~ ~ ~ oak_log[axis=y]
kill @e[tag=boomber.natura_vis.structure.enchanting_alter.prop, distance=..3]
data merge entity @s {Silent:0b, Invulnerable:0b}
