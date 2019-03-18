# Handle general update for players

tag @s remove boomber.natura_vis.player.aura_viewer
execute as @s[nbt={SelectedItem:{tag:{ucit:{id:"aura_guage"}}}}] run tag @s add boomber.natura_vis.player.aura_viewer

execute as @s[tag=boomber.natura_vis.player.aura_viewer] run function boomber:natura_vis/player/aura_viewer