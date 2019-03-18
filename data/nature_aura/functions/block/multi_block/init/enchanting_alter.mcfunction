scoreboard players set @s bb.success 1
execute as @s[scores={bb.success=1}] store success score @s bb.success if block ~1 ~0 ~1 minecraft:grass_block[snowy=false]
execute as @s[scores={bb.success=1}] store success score @s bb.success if block ~2 ~0 ~1 minecraft:grass_block[snowy=false]
execute as @s[scores={bb.success=1}] store success score @s bb.success if block ~3 ~0 ~1 minecraft:grass_block[snowy=false]
execute as @s[scores={bb.success=1}] store success score @s bb.success if block ~1 ~0 ~2 minecraft:grass_block[snowy=false]
execute as @s[scores={bb.success=1}] store success score @s bb.success if block ~2 ~0 ~2 minecraft:oak_log[axis=y]
execute as @s[scores={bb.success=1}] store success score @s bb.success if block ~3 ~0 ~2 minecraft:grass_block[snowy=false]
execute as @s[scores={bb.success=1}] store success score @s bb.success if block ~2 ~1 ~2 minecraft:oak_log[axis=y]
execute as @s[scores={bb.success=1}] store success score @s bb.success if block ~1 ~0 ~3 minecraft:grass_block[snowy=false]
execute as @s[scores={bb.success=1}] store success score @s bb.success if block ~2 ~0 ~3 minecraft:grass_block[snowy=false]
execute as @s[scores={bb.success=1}] store success score @s bb.success if block ~3 ~0 ~3 minecraft:grass_block[snowy=false]
execute as @s[scores={bb.success=1}] store success score @s bb.success if block ~2 ~0 ~0 minecraft:oak_stairs[half=bottom,waterlogged=false,shape=straight,facing=south]
execute as @s[scores={bb.success=1}] store success score @s bb.success if block ~2 ~1 ~0 minecraft:air
execute as @s[scores={bb.success=1}] store success score @s bb.success if block ~1 ~1 ~1 minecraft:blue_orchid
execute as @s[scores={bb.success=1}] store success score @s bb.success if block ~2 ~1 ~1 minecraft:air
execute as @s[scores={bb.success=1}] store success score @s bb.success if block ~3 ~1 ~1 minecraft:blue_orchid
execute as @s[scores={bb.success=1}] store success score @s bb.success if block ~0 ~0 ~2 minecraft:oak_stairs[half=bottom,waterlogged=false,shape=straight,facing=east]
execute as @s[scores={bb.success=1}] store success score @s bb.success if block ~4 ~0 ~2 minecraft:oak_stairs[half=bottom,waterlogged=false,shape=straight,facing=west]
execute as @s[scores={bb.success=1}] store success score @s bb.success if block ~0 ~1 ~2 minecraft:air
execute as @s[scores={bb.success=1}] store success score @s bb.success if block ~1 ~1 ~2 minecraft:air
execute as @s[scores={bb.success=1}] store success score @s bb.success if block ~3 ~1 ~2 minecraft:air
execute as @s[scores={bb.success=1}] store success score @s bb.success if block ~4 ~1 ~2 minecraft:air
execute as @s[scores={bb.success=1}] store success score @s bb.success if block ~1 ~1 ~3 minecraft:blue_orchid
execute as @s[scores={bb.success=1}] store success score @s bb.success if block ~2 ~1 ~3 minecraft:air
execute as @s[scores={bb.success=1}] store success score @s bb.success if block ~3 ~1 ~3 minecraft:blue_orchid
execute as @s[scores={bb.success=1}] store success score @s bb.success if block ~2 ~0 ~4 minecraft:oak_stairs[half=bottom,waterlogged=false,shape=straight,facing=north]
execute as @s[scores={bb.success=1}] store success score @s bb.success if block ~2 ~1 ~4 minecraft:air
execute as @s[scores={bb.success=1}] run tag @s add nature_aura.structure.enchanting_alter
