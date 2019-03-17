execute as @s run function nature_aura:aura/remove/session

execute as @s positioned ~128 ~ ~128 run function nature_aura:aura/update/check/check
execute as @s positioned ~128 ~ ~0 run function nature_aura:aura/update/check/check
execute as @s positioned ~128 ~ ~-128 run function nature_aura:aura/update/check/check
execute as @s positioned ~0 ~ ~128 run function nature_aura:aura/update/check/check
execute as @s positioned ~0 ~ ~-128 run function nature_aura:aura/update/check/check
execute as @s positioned ~-128 ~ ~-128 run function nature_aura:aura/update/check/check
execute as @s positioned ~-128 ~ ~-128 run function nature_aura:aura/update/check/check
execute as @s positioned ~-128 ~ ~-128 run function nature_aura:aura/update/check/check

execute as @s at @s run particle happy_villager ~ 100 ~ 0 200 0 0 500 force @a

execute as @s run tag @s remove nature_aura.aura.loading