scoreboard objectives add ppp_x dummy
scoreboard objectives add ppp_min_x dummy
scoreboard objectives add ppp_max_x dummy
scoreboard objectives add ppp_y dummy
scoreboard objectives add ppp_min_y dummy
scoreboard objectives add ppp_max_y dummy
scoreboard objectives add ppp_z dummy
scoreboard objectives add ppp_min_z dummy
scoreboard objectives add ppp_max_z dummy

execute store result score 0-0-0-0-0 ppp_x run data get entity 0-0-0-0-0 Pos[0]
scoreboard players operation 0-0-0-0-0 ppp_min_x = 0-0-0-0-0 ppp_x
scoreboard players operation 0-0-0-0-0 ppp_min_x -= ppp_global ppp_wb_size
scoreboard players operation 0-0-0-0-0 ppp_max_x = 0-0-0-0-0 ppp_x
scoreboard players operation 0-0-0-0-0 ppp_max_x += ppp_global ppp_wb_size
execute store result score 0-0-0-0-0 ppp_z run data get entity 0-0-0-0-0 Pos[2]
scoreboard players operation 0-0-0-0-0 ppp_min_z = 0-0-0-0-0 ppp_z
scoreboard players operation 0-0-0-0-0 ppp_min_z -= ppp_global ppp_wb_size
scoreboard players operation 0-0-0-0-0 ppp_max_z = 0-0-0-0-0 ppp_z
scoreboard players operation 0-0-0-0-0 ppp_max_z += ppp_global ppp_wb_size

execute as @a store result score @s ppp_x run data get entity @s Pos[0]
execute as @a store result score @s ppp_z run data get entity @s Pos[2]

execute as @a if score @s ppp_x < 0-0-0-0-0 ppp_min_x run tag @s add ppp_outside
execute as @a[tag=!ppp_outside] if score @s ppp_x > 0-0-0-0-0 ppp_max_x run tag @s add ppp_outside
execute as @a[tag=!ppp_outside] if score @s ppp_z < 0-0-0-0-0 ppp_min_z run tag @s add ppp_outside
execute as @a[tag=!ppp_outside] if score @s ppp_z > 0-0-0-0-0 ppp_max_z run tag @s add ppp_outside

execute as @a[tag=ppp_outside] at 0-0-0-0-0 run spreadplayers ~ ~ 0 1 false @s
tag @a remove ppp_outside

scoreboard objectives remove ppp_x
scoreboard objectives remove ppp_min_x
scoreboard objectives remove ppp_max_x
scoreboard objectives remove ppp_y
scoreboard objectives remove ppp_min_y
scoreboard objectives remove ppp_max_y
scoreboard objectives remove ppp_z
scoreboard objectives remove ppp_min_z
scoreboard objectives remove ppp_max_z
