function ppp:game_loop/pearl_tracker
execute as @e[type=item, nbt={Item:{id:"minecraft:smooth_stone", Count:64b}, OnGround:1b}] at @s run function ppp:game_loop/pearl_generator