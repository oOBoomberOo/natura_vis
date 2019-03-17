tag @s remove nature_aura.player.aura_viewer
execute as @s[nbt={SelectedItem:{tag:{ucit:{id:"aura_guage"}}}}] run tag @s add nature_aura.player.aura_viewer

execute as @s[tag=nature_aura.player.aura_viewer] run function nature_aura:player/aura_viewer