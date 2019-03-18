# If the entity's session is not the same as current session kill it
execute as @s unless score @s bb.session = #bb.nv.aura.session bb.variable run kill @s