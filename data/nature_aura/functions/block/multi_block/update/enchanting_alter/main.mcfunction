execute as @s if block ~ ~ ~ oak_log run function nature_aura:block/multi_block/update/enchanting_alter/setup
execute as @s[tag=nature_aura.structure.breaking] run function nature_aura:block/multi_block/update/enchanting_alter/break
execute as @s[nbt={Invulnerable:0b}] unless data entity @s Item.Count run data merge entity @s {Invulnerable:1b}
execute as @s[nbt={Invulnerable:1b}] if data entity @s Item.Count run data merge entity @s {Invulnerable:0b}