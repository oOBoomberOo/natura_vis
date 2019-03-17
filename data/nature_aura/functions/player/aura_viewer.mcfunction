execute as @s at @s run function nature_aura:aura/io/get
execute as @e[type=armor_stand, tag=nature_aura.aura.getter] at @s as @e[type=armor_stand, tag=nature_aura.aura, distance=..1] store result score #na.aura.get.aura bb.variable run data get entity @s ArmorItems[3].tag.ucit.nature_aura.aura
execute as @e[type=armor_stand, tag=nature_aura.aura.getter] at @s as @e[type=armor_stand, tag=nature_aura.aura, distance=..1] store result score #na.aura.get.max_aura bb.variable run data get entity @s ArmorItems[3].tag.ucit.nature_aura.max_aura
execute as @e[type=armor_stand, tag=nature_aura.aura.getter] run kill @s

title @s actionbar [{"text": "Aura: ", "color": "green"}, {"score": {"name": "#na.aura.get.aura", "objective": "bb.variable"}}, {"text": ", Max Aura: ", "color": "green"}, {"score": {"name": "#na.aura.get.max_aura", "objective": "bb.variable"}}]
