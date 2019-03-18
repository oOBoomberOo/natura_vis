execute as @s run function boomber:natura_vis/aura/remove/session

execute as @s positioned ~128 ~ ~128 run function boomber:natura_vis/aura/update/check/check
execute as @s positioned ~128 ~ ~0 run function boomber:natura_vis/aura/update/check/check
execute as @s positioned ~128 ~ ~-128 run function boomber:natura_vis/aura/update/check/check
execute as @s positioned ~0 ~ ~128 run function boomber:natura_vis/aura/update/check/check
execute as @s positioned ~0 ~ ~-128 run function boomber:natura_vis/aura/update/check/check
execute as @s positioned ~-128 ~ ~-128 run function boomber:natura_vis/aura/update/check/check
execute as @s positioned ~-128 ~ ~-128 run function boomber:natura_vis/aura/update/check/check
execute as @s positioned ~-128 ~ ~-128 run function boomber:natura_vis/aura/update/check/check

execute as @s at @s run particle happy_villager ~ 100 ~ 0 200 0 0 500 force @a

execute as @s run tag @s remove boomber.natura_vis.aura.loading