setblock ~ ~ ~ barrier
summon armor_stand ~ ~-0.5 ~ {NoGravity:1b, Invisible:1b, Marker:1b, ArmorItems:[{}, {}, {}, {id:"minecraft:vine", Count:1b, tag:{CustomModelData:8080000}}], Tags:["nature_aura.structure.enchanting_alter.prop"]}
data merge entity @s {Invulnerable:1b, Silent:1b, Item:{id:"minecraft:air", Count:0b}}
