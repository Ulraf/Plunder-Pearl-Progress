scoreboard objectives add ppp_stepsize dummy
scoreboard objectives add ppp_curstep dummy
scoreboard objectives add ppp_didturn dummy

scoreboard players set ppp_global ppp_stepsize 1
scoreboard players set ppp_global ppp_curstep 0
scoreboard players set ppp_global ppp_didturn 0

execute at 0-0-0-0-0 run spreadplayers ~ ~ 100 300 false 0-0-0-0-0
tp @a 0-0-0-0-0

function ppp:find_tree/find_ground
execute at 0-0-0-0-0 if block ~ ~-1 ~ #leaves run function ppp:find_tree/find_log_below
execute at 0-0-0-0-0 unless block ~ ~-1 ~ #logs run function ppp:find_tree/loop_step

scoreboard objectives remove ppp_stepsize
scoreboard objectives remove ppp_curstep
scoreboard objectives remove ppp_didturn
