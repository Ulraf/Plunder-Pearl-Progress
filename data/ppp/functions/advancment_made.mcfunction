scoreboard players add hcextend hce_cur_size 1
worldborder add 0.0625
title @a actionbar {"text":"Congratulations! Border Expanding!","bold":true,"color":"dark_purple"}
tellraw @a {"text":"Congratulations! Border Expanding!","bold":true,"color":"dark_purple"}

execute store result score hcextend hce_rnd run time query gametime
scoreboard players operation hcextend hce_rnd %= hcextend hce_pearl_chance
execute if score hcextend hce_rnd matches 0 run give @r ender_pearl
execute if score hcextend hce_rnd matches 0 run title @a actionbar {"text":"Found a magical teleportation orb!","bold":true,"color":"dark_purple"}
execute if score hcextend hce_rnd matches 0 run tellraw @a {"text":"Found a magical teleportation orb!","bold":true,"color":"dark_purple"}
