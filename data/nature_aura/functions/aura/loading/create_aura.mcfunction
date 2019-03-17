summon armor_stand ~ ~ ~ {Invisible:1b, NoGravity:1b, Marker:1b, Small:1b, Tags:["nature_aura.aura", "nature_aura.aura.creating"]}
execute as @e[type=armor_stand, tag=nature_aura.aura.creating] run scoreboard players operation @s bb.session = #na.aura.session bb.variable
execute as @e[type=armor_stand, tag=nature_aura.aura.creating] run loot replace entity @s armor.head loot nature_aura:aura/aura
execute as @e[type=armor_stand, tag=nature_aura.aura.creating] run function nature_aura:aura/loading/load_aura
execute as @e[type=armor_stand, tag=nature_aura.aura.creating] run tag @s remove nature_aura.aura.creating
