execute as @a[tag=!ppp_counted] run scoreboard players add ppp_global ppp_player_count 1
execute as @a[tag=!ppp_counted] run tag @s add ppp_counted

execute as @a unless score @s ppp_leave matches 0 run function ppp:welcome

execute as @a if score @s ppp_start matches 1 run scoreboard players set ppp_global ppp_start 1
execute as @a if score @s ppp_start matches 1 run scoreboard players reset @s ppp_start
execute if score ppp_global ppp_start matches 1 as @r run function ppp:init
execute if score ppp_global ppp_start matches 2 run function ppp:find_tree
execute if score ppp_global ppp_start matches 2 at 0-0-0-0-0 if block ~ ~-1 ~ #logs run function ppp:start
execute if score ppp_global ppp_start matches 3 run function ppp:game_loop
execute if score ppp_global ppp_start matches 3 run function ppp:border_bound_check
