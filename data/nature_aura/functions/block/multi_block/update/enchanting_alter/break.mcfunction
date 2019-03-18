function nature_aura:block/multi_block/clear

setblock ~ ~ ~ oak_log[axis=y]
kill @e[tag=nature_aura.structure.enchanting_alter.prop, distance=..3]
data merge entity @s {Silent:0b, Invulnerable:0b}
