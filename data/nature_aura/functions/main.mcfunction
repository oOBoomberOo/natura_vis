scoreboard players add #na.aura.frame bb.variable 1
execute if score #na.aura.frame bb.variable matches 20.. run scoreboard players set #na.aura.frame bb.variable 0

execute as @e[type=armor_stand, tag=nature_aura.aura.loading] at @s run function nature_aura:aura/update/aura
execute if score #na.aura.frame bb.variable matches 0 as @a[nbt={Dimension:0}] at @s run function nature_aura:aura/loading/player
execute as @a at @s run function nature_aura:player/player

function nature_aura:block/main
function nature_aura:garbage_collector