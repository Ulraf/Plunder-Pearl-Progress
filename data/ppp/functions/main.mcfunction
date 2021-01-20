execute as @a[tag=!ppp_counted] run scoreboard players add ppp_global ppp_player_count 1
execute as @a[tag=!ppp_counted] run tag @s add ppp_counted

execute as @p[scores={ppp_start=1}] run function ppp:init
execute if score ppp_global ppp_start matches 1 run function ppp:game_loop
