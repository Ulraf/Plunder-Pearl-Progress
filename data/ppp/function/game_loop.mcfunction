function ppp:game_loop/pearl_tracker
execute as @e[type=item, limit=1, nbt={Item:{id:"minecraft:smooth_stone",count:64}}] at @s run function ppp:game_loop/pearl_generator
